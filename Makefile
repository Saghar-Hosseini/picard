GIT_HEAD_REF := $(shell git rev-parse HEAD)

BASE_IMAGE := pytorch/pytorch:1.9.0-cuda10.2-cudnn7-devel

DEV_IMAGE_NAME := text-to-sql-dev
TRAIN_IMAGE_NAME := text-to-sql-train-base
EVAL_IMAGE_NAME := text-to-sql-eval
ML_TRAIN_IMAGE_NAME := text-to-sql-train_multilingual

BUILDKIT_IMAGE := tscholak/text-to-sql-buildkit:buildx-stable-1
BUILDKIT_BUILDER ?= buildx-local

.PHONY: init-buildkit
init-buildkit:
	docker buildx create \
		--name buildx-local \
		--driver docker-container \
		--driver-opt image=$(BUILDKIT_IMAGE),network=host \
		--use

.PHONY: del-buildkit
del-buildkit:
	docker buildx rm buildx-local

.PHONY: build-thrift-code
build-thrift-code:
	thrift1 --gen mstch_cpp2 picard.thrift
	thrift1 --gen mstch_py3 picard.thrift
	cd gen-py3 && python setup.py build_ext --inplace

.PHONY: build-picard-deps
build-picard-deps:
	cabal update
	thrift-compiler --hs --use-hash-map --use-hash-set --gen-prefix gen-hs -o . picard.thrift
	patch -p 1 -N -d third_party/hsthrift < ./fb-util-cabal.patch || true
	cd third_party/hsthrift \
		&& make THRIFT_COMPILE=thrift-compiler thrift-cpp thrift-hs
	cabal build --only-dependencies lib:picard

.PHONY: build-picard
build-picard:
	cabal install --overwrite-policy=always --install-method=copy exe:picard

.PHONY: build-dev-image
build-dev-image:
	ssh-add
	docker buildx build \
		--builder $(BUILDKIT_BUILDER) \
		--ssh default=$(SSH_AUTH_SOCK) \
		-f Dockerfile \
		--tag tscholak/$(DEV_IMAGE_NAME):$(GIT_HEAD_REF) \
		--tag tscholak/$(DEV_IMAGE_NAME):cache \
		--tag tscholak/$(DEV_IMAGE_NAME):devcontainer \
		--build-arg BASE_IMAGE=$(BASE_IMAGE) \
		--target dev \
		--cache-from type=registry,ref=tscholak/$(DEV_IMAGE_NAME):cache \
		--cache-to type=inline \
		--push \
		git@github.com:Saghar-Hosseini/picard#$(GIT_HEAD_REF)

.PHONY: pull-dev-image
pull-dev-image:
	docker pull tscholak/$(DEV_IMAGE_NAME):$(GIT_HEAD_REF)

.PHONY: build-train-image
build-train-image:
	ssh-add
	docker buildx build \
		--builder $(BUILDKIT_BUILDER) \
		--ssh default=$(SSH_AUTH_SOCK) \
		-f Dockerfile \
		--tag saghar/$(TRAIN_IMAGE_NAME):$(GIT_HEAD_REF) \
		--tag saghar/$(TRAIN_IMAGE_NAME):cache \
		--build-arg BASE_IMAGE=$(BASE_IMAGE) \
		--target train \
		--cache-from type=registry,ref=tscholak/text-to-sql-train:cache \
		--cache-to type=inline \
		--load \
		git@github.com:Saghar-Hosseini/picard#$(GIT_HEAD_REF)
	docker push saghar/$(TRAIN_IMAGE_NAME):$(GIT_HEAD_REF)      
.PHONY: pull-train-image
pull-train-image:
	docker pull saghar/$(TRAIN_IMAGE_NAME):$(GIT_HEAD_REF)

.PHONY: build-eval-image
build-eval-image:
	ssh-add
	docker buildx build \
		--builder $(BUILDKIT_BUILDER) \
		--ssh default=$(SSH_AUTH_SOCK) \
		-f Dockerfile \
		--tag tscholak/$(EVAL_IMAGE_NAME):$(GIT_HEAD_REF) \
		--tag tscholak/$(EVAL_IMAGE_NAME):cache \
		--build-arg BASE_IMAGE=$(BASE_IMAGE) \
		--target eval \
		--cache-from type=registry,ref=tscholak/$(EVAL_IMAGE_NAME):cache \
		--cache-to type=inline \
		--push \
		git@github.com:Saghar-Hosseini/picard#$(GIT_HEAD_REF)

.PHONY: pull-eval-image
pull-eval-image:
	docker pull tscholak/$(EVAL_IMAGE_NAME):$(GIT_HEAD_REF)

.PHONY: train
train: pull-train-image
	mkdir -p -m 777 train
	mkdir -p -m 777 transformers_cache
	mkdir -p -m 777 wandb
	chmod 777 transformers_cache
	docker run \
		-it \
		--rm \
		--user 13011:13011 \
                --env WANDB_API_KEY=ba9a337172ac789152f26bf879116dfaaa3b6c5a \
		-v type=bind,source=$(PWD)/train,target=/train \
		-v type=bind,source=$(PWD)/transformers_cache,target=/transformers_cache \
		-v type=bind,source=$(PWD)/configs,target=/app/configs \
		-v type=bind,source=$(PWD)/wandb,target=/app/wandb \
            -v type=bind,source=$(PWD)/seq2seq/datasets,target=/app/seq2seq/datasets \
		saghar/$(TRAIN_IMAGE_NAME):$(GIT_HEAD_REF) \
		/bin/bash -c "python seq2seq/run_seq2seq.py configs/train.json"

.PHONY: train_cosql
train_cosql: pull-train-image
	mkdir -p -m 777 train
	mkdir -p -m 777 transformers_cache
	mkdir -p -m 777 wandb
	docker run \
		-it \
		--rm \
		--user 13011:13011 \
		-v type=bind,source=$(PWD)/train,target=/train \
		-v type=bind,source=$(PWD)/transformers_cache,target=/transformers_cache \
		-v type=bind,source=$(PWD)/configs,target=/app/configs \
		-v type=bind,source=$(PWD)/wandb,target=/app/wandb \
		tscholak/$(TRAIN_IMAGE_NAME):$(GIT_HEAD_REF) \
		/bin/bash -c "python seq2seq/run_seq2seq.py configs/train_cosql.json"

.PHONY: eval
eval: pull-eval-image
	mkdir -p -m 777 eval
	mkdir -p -m 777 transformers_cache
	mkdir -p -m 777 wandb
	docker run \
		-it \
		--rm \
		--user 13011:13011 \
		--mount type=bind,source=$(PWD)/eval,target=/eval \
		--mount type=bind,source=$(PWD)/transformers_cache,target=/transformers_cache \
		--mount type=bind,source=$(PWD)/configs,target=/app/configs \
		--mount type=bind,source=$(PWD)/wandb,target=/app/wandb \
		tscholak/$(EVAL_IMAGE_NAME):$(GIT_HEAD_REF) \
		/bin/bash -c "python seq2seq/run_seq2seq.py configs/eval.json"

.PHONY: eval_cosql
eval_cosql: pull-eval-image
	mkdir -p -m 777 eval
	mkdir -p -m 777 transformers_cache
	mkdir -p -m 777 wandb
	docker run \
		-it \
		--rm \
		--user 13011:13011 \
		--mount type=bind,source=$(PWD)/eval,target=/eval \
		--mount type=bind,source=$(PWD)/transformers_cache,target=/transformers_cache \
		--mount type=bind,source=$(PWD)/configs,target=/app/configs \
		--mount type=bind,source=$(PWD)/wandb,target=/app/wandb \
		tscholak/$(EVAL_IMAGE_NAME):$(GIT_HEAD_REF) \
		/bin/bash -c "python seq2seq/run_seq2seq.py configs/eval_cosql.json"

.PHONY: serve
serve: pull-eval-image
	mkdir -p -m 777 database
	mkdir -p -m 777 transformers_cache
	docker run \
		-it \
		--rm \
		--user 13011:13011 \
		-p 8000:8000 \
		--mount type=bind,source=$(PWD)/database,target=/database \
		--mount type=bind,source=$(PWD)/transformers_cache,target=/transformers_cache \
		--mount type=bind,source=$(PWD)/configs,target=/app/configs \
		tscholak/$(EVAL_IMAGE_NAME):$(GIT_HEAD_REF) \
		/bin/bash -c "python seq2seq/serve_seq2seq.py configs/serve.json"
