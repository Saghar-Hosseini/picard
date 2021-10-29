SELECT DISTINCT T2.emp_fname ,  T3.prof_high_degree FROM CLASS AS T1 JOIN employee AS T2 ON T1.prof_num  =  T2.emp_num JOIN professor AS T3 ON T2.emp_num  =  T3.emp_num JOIN department AS T4 ON T4.dept_code  =  T3.dept_code WHERE T4.dept_name  =  'Computer Info. Systems'	college_1
SELECT DISTINCT Registration_Date ,  Election_Cycle FROM VOTING_RECORD	voter_2
SELECT DISTINCT product_name FROM products ORDER BY product_name	tracking_orders
SELECT title FROM film WHERE LENGTH  >  100 OR rating  =  'PG' EXCEPT SELECT title FROM film WHERE replacement_cost  >  200	sakila_1
SELECT name FROM races ORDER BY date DESC LIMIT 1	formula_1
SELECT T1.title ,  T1.film_id FROM film AS T1 JOIN inventory AS T2 ON T1.film_id  =  T2.film_id GROUP BY T1.film_id ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT T1.customer_name FROM customers AS T1 JOIN orders AS T2 JOIN order_items AS T3 JOIN products AS T4 ON T1.customer_id = T2.customer_id AND T2.order_id = T3.order_id AND T3.product_id = T4.product_id WHERE T4.product_name = "food" GROUP BY T1.customer_id HAVING count(*)  >=  1	tracking_orders
SELECT count(*) FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID  =  T2.facID WHERE T1.fname  =  "Mark" AND T1.lname  =  "Giuliano"	activity_1
SELECT phone ,  postal_code FROM address WHERE address  =  '1031 Daugavpils Parkway'	sakila_1
SELECT count(*) ,  dept_code FROM student GROUP BY dept_code	college_1
SELECT Major FROM STUDENT WHERE Sex  =  "F" GROUP BY major ORDER BY count(*) DESC LIMIT 1	voter_2
SELECT T1.driverid ,  T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds DESC LIMIT 1	formula_1
SELECT T2.StuID FROM Faculty AS T1 JOIN Student AS T2 ON T1.FacID  =  T2.advisor WHERE T1.rank  =  "Professor"	activity_1
SELECT count(*) FROM entrepreneur	entrepreneur
SELECT t3.headquartered_city FROM store AS t1 JOIN store_district AS t2 ON t1.store_id  =  t2.store_id JOIN district AS t3 ON t2.district_id  =  t3.district_id GROUP BY t3.headquartered_city ORDER BY count(*) DESC LIMIT 1	store_product
SELECT T1.name ,  count(*) FROM camera_lens AS T1 JOIN photos AS T2 ON T1.id  =  T2.camera_lens_id GROUP BY T1.id ORDER BY count(*)	mountain_photos
SELECT count(*) FROM user_profiles	twitter_1
SELECT T2.country FROM city AS T1 JOIN country AS T2 ON T1.country_id  =  T2.country_id GROUP BY T2.country_id HAVING count(*)  >=  3	sakila_1
SELECT T4.dept_name FROM CLASS AS T1 JOIN enroll AS T2 ON T1.class_code  =  T2.class_code JOIN course AS T3 ON T1.crs_code  =  T3.crs_code JOIN department AS T4 ON T3.dept_code  =  T4.dept_code GROUP BY T3.dept_code ORDER BY count(*) DESC LIMIT 1	college_1
SELECT district_name FROM district WHERE city_area  >  10 OR City_Population  >  100000	store_product
SELECT avg(T2.fastestlapspeed) FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2008 AND T1.name = "Monaco Grand Prix"	formula_1
SELECT sum(T1.crs_credit) ,  T1.dept_code FROM course AS T1 JOIN CLASS AS T2 ON T1.crs_code  =  T2.crs_code GROUP BY T1.dept_code	college_1
SELECT crs_credit ,  crs_description FROM course WHERE crs_code  =  'QM-261'	college_1
SELECT DISTINCT name FROM races ORDER BY name DESC	formula_1
SELECT count(DISTINCT dept_name) FROM department	college_1
SELECT building FROM Faculty WHERE rank  =  "Professor" GROUP BY building HAVING count(*)  >=  10	activity_1
SELECT T1.cust_name ,  T1.acc_type FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id  =  T2.cust_id GROUP BY T1.cust_name HAVING sum(T2.amount)  >  5000	loan_1
SELECT sum(no_of_customers) FROM bank WHERE city  =  'New York City'	loan_1
SELECT name FROM races WHERE YEAR BETWEEN 2009 AND 2011	formula_1
SELECT T1.artist_name ,  count(*) FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name GROUP BY T2.artist_name ORDER BY count(*) DESC LIMIT 3	music_1
SELECT Investor FROM entrepreneur GROUP BY Investor HAVING COUNT(*)  >=  2	entrepreneur
SELECT campusfee FROM campuses AS T1 JOIN csu_fees AS T2 ON T1.id  =  t2.campus WHERE t1.campus  =  "San Francisco State University" AND T2.year  =  1996	csu_1
SELECT t1.manufacturer_id ,  t1.num_of_shops FROM manufacturer AS t1 JOIN furniture_manufacte AS t2 ON t1.manufacturer_id  =  t2.manufacturer_id ORDER BY t2.Price_in_Dollar DESC LIMIT 1	manufacturer
SELECT T1.stu_lname FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num  =  T2.stu_num WHERE T2.enroll_grade  =  'A' AND T2.class_code  =  10018	college_1
SELECT avg(followers) FROM user_profiles WHERE UID IN (SELECT UID FROM tweets)	twitter_1
SELECT T1.customer_id FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1	tracking_orders
SELECT emp_fname ,  emp_lname FROM employee ORDER BY emp_dob LIMIT 1	college_1
SELECT order_id ,  customer_id FROM orders ORDER BY date_order_placed LIMIT 1	tracking_orders
SELECT T2.fname ,  T2.lname FROM Faculty AS T1 JOIN Student AS T2 ON T1.FacID  =  T2.advisor WHERE T1.fname  =  "Michael" AND T1.lname  =  "Goodrich"	activity_1
SELECT t3.name FROM furniture AS t1 JOIN furniture_manufacte AS t2 ON t1.Furniture_ID  =  t2.Furniture_ID JOIN manufacturer AS t3 ON t2.manufacturer_id  =  t3.manufacturer_id WHERE t1.num_of_component  <  6 INTERSECT SELECT t3.name FROM furniture AS t1 JOIN furniture_manufacte AS t2 ON t1.Furniture_ID  =  t2.Furniture_ID JOIN manufacturer AS t3 ON t2.manufacturer_id  =  t3.manufacturer_id WHERE t1.num_of_component  >  10	manufacturer
SELECT payment_date FROM payment WHERE amount  >  10 UNION SELECT T1.payment_date FROM payment AS T1 JOIN staff AS T2 ON T1.staff_id  =  T2.staff_id WHERE T2.first_name  =  'Elsa'	sakila_1
SELECT avg(rating) ,  avg(resolution) FROM song WHERE languages  =  "bangla"	music_1
SELECT circuitid ,  LOCATION FROM circuits WHERE country = "France" OR country = "Belgium"	formula_1
SELECT Fname FROM STUDENT WHERE Age  >  22	voter_2
SELECT T1.country FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name GROUP BY T2.artist_name ORDER BY count(*) LIMIT 1	music_1
SELECT T1.stuid FROM participates_in AS T1 JOIN activity AS T2 ON T2.actid  =  T2.actid WHERE T2.activity_name  =  'Canoeing' INTERSECT SELECT T1.stuid FROM participates_in AS T1 JOIN activity AS T2 ON T2.actid  =  T2.actid WHERE T2.activity_name  =  'Kayaking'	activity_1
SELECT count(*) FROM professor WHERE prof_high_degree  =  'Ph.D.' OR prof_high_degree  =  'MA'	college_1
SELECT first_name ,  last_name FROM actor GROUP BY first_name ,  last_name ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT DISTINCT T1.LName FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  PRESIDENT_Vote INTERSECT SELECT DISTINCT LName FROM STUDENT WHERE Advisor  =  "8741"	voter_2
SELECT sum(amount) ,  T1.bname FROM bank AS T1 JOIN loan AS T2 ON T1.branch_id  =  T2.branch_id GROUP BY T1.bname	loan_1
SELECT count(*) FROM member WHERE address != 'Hartford'	coffee_shop
SELECT T1.name FROM category AS T1 JOIN film_category AS T2 ON T1.category_id  =  T2.category_id JOIN film AS T3 ON T2.film_id  =  T3.film_id WHERE T3.title  =  'HUNGER ROOF'	sakila_1
SELECT Investor FROM entrepreneur WHERE Money_Requested  >  140000 INTERSECT SELECT Investor FROM entrepreneur WHERE Money_Requested  <  120000	entrepreneur
SELECT DISTINCT T1.forename FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid WHERE T2.position = 1 AND T2.wins = 1 AND T2.points > 20	formula_1
SELECT T1.campus ,  sum(T2.degrees) FROM campuses AS T1 JOIN degrees AS T2 ON T1.id  =  T2.campus WHERE T1.county  =  "Orange" AND T2.year  >=  2000 GROUP BY T1.campus	csu_1
SELECT order_id FROM shipments WHERE shipment_tracking_number = "3452"	tracking_orders
SELECT membership_card FROM member WHERE address  =  'Hartford' INTERSECT SELECT membership_card FROM member WHERE address  =  'Waterbury'	coffee_shop
SELECT DISTINCT order_id FROM orders ORDER BY date_order_placed	tracking_orders
SELECT T2.address FROM staff AS T1 JOIN address AS T2 ON T1.address_id  =  T2.address_id WHERE T1.first_name  =  'Elsa'	sakila_1
SELECT T2.Name FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID	entrepreneur
SELECT T1.country FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name WHERE T1.gender  =  "Female" AND T2.languages  =  "bangla"	music_1
SELECT T1.title ,  T2.inventory_id FROM film AS T1 JOIN inventory AS T2 ON T1.film_id  =  T2.film_id JOIN rental AS T3 ON T2.inventory_id  =  T3.inventory_id GROUP BY T2.inventory_id ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id  =  T2.cust_id WHERE loan_type  =  'Mortgages' INTERSECT SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id  =  T2.cust_id WHERE loan_type  =  'Auto'	loan_1
SELECT T4.crs_description ,  T4.crs_credit FROM CLASS AS T1 JOIN enroll AS T2 ON T1.class_code  =  T2.class_code JOIN student AS T3 ON T3.stu_num  =  T2.stu_num JOIN course AS T4 ON T4.crs_code  =  T1.crs_code WHERE T3.stu_lname  =  'Smithson'	college_1
SELECT max(Age) FROM STUDENT	voter_2
SELECT T2.city ,  count(*) ,  T1.city_id FROM address AS T1 JOIN city AS T2 ON T1.city_id  =  T2.city_id GROUP BY T1.city_id ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT T2.faculty FROM campuses AS T1 JOIN faculty AS T2 ON T1.id  =  t2.campus JOIN degrees AS T3 ON T1.id  =  t3.campus AND t2.year  =  t3.year WHERE t2.year  =  2002 ORDER BY t3.degrees DESC LIMIT 1	csu_1
SELECT campus FROM campuses WHERE LOCATION  =  "Chico"	csu_1
SELECT stu_fname ,  stu_lname ,  stu_gpa FROM student WHERE stu_gpa  >  3 ORDER BY stu_dob DESC LIMIT 1	college_1
SELECT count(*) FROM stadium	swimming
SELECT T3.dept_name  ,  T2.prof_office FROM employee AS T1 JOIN professor AS T2 ON T1.emp_num  =  T2.emp_num JOIN department AS T3 ON T2.dept_code  =  T3.dept_code WHERE T1.emp_lname  =  'Heffington'	college_1
SELECT t1.campusfee FROM csu_fees AS t1 JOIN campuses AS t2 ON t1.campus  =  t2.id WHERE t2.campus  =  "San Francisco State University" AND t1.year  =  2000	csu_1
SELECT DISTINCT order_id FROM orders ORDER BY date_order_placed	tracking_orders
SELECT f_id FROM song WHERE resolution  >  (SELECT max(resolution) FROM song WHERE rating  <  8)	music_1
SELECT DISTINCT T1.EMP_FNAME ,  T1.EMP_DOB FROM employee AS T1 JOIN CLASS AS T2 ON T1.EMP_NUM  =  T2.PROF_NUM WHERE CRS_CODE  =  "ACCT-211"	college_1
SELECT t3.headquartered_city ,  count(*) FROM store AS t1 JOIN store_district AS t2 ON t1.store_id  =  t2.store_id JOIN district AS t3 ON t2.district_id  =  t3.district_id GROUP BY t3.headquartered_city	store_product
SELECT DISTINCT directed_by FROM film	cinema
SELECT payment_date FROM payment ORDER BY payment_date ASC LIMIT 1	sakila_1
SELECT meter_200 ,  meter_300 FROM swimmer WHERE nationality  =  'Australia'	swimming
SELECT DISTINCT T1.customer_details FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status = "On Road"	tracking_orders
SELECT T1.artist_name FROM song AS T1 JOIN files AS T2 ON T1.f_id  =  T2.f_id ORDER BY T2.duration LIMIT 1	music_1
SELECT song_name FROM song WHERE languages  =  "english"	music_1
SELECT DISTINCT building FROM Faculty	activity_1
SELECT T1.date_order_placed FROM orders AS T1 JOIN shipments AS T2 ON T1.order_id = T2.order_id WHERE T2.shipment_tracking_number = 3452	tracking_orders
SELECT Major FROM STUDENT WHERE Sex  =  "M"	voter_2
SELECT T1.gender ,  T1.artist_name FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name ORDER BY T2.resolution LIMIT 1	music_1
SELECT t3.headquartered_city ,  count(*) FROM store AS t1 JOIN store_district AS t2 ON t1.store_id  =  t2.store_id JOIN district AS t3 ON t2.district_id  =  t3.district_id GROUP BY t3.headquartered_city	store_product
SELECT T2.first_name ,  T2.last_name ,  T2.actor_id FROM film_actor AS T1 JOIN actor AS T2 ON T1.actor_id  =  T2.actor_id GROUP BY T2.actor_id ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT DISTINCT T1.forename FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid WHERE T2.position = 1 AND T2.wins = 1	formula_1
SELECT title FROM film WHERE special_features LIKE '%Deleted Scenes%'	sakila_1
SELECT degrees FROM campuses AS T1 JOIN degrees AS T2 ON t1.id  =  t2.campus WHERE t1.campus  =  "San Jose State University" AND t2.year  =  2000	csu_1
SELECT T2.bname FROM loan AS T1 JOIN bank AS T2 ON T1.branch_id  =  T2.branch_id JOIN customer AS T3 ON T1.cust_id  =  T3.cust_id WHERE T3.credit_score  <  100 GROUP BY T2.bname ORDER BY sum(T1.amount) DESC LIMIT 1	loan_1
SELECT DISTINCT artist_name FROM artist WHERE country  =  "Bangladesh" EXCEPT SELECT DISTINCT artist_name FROM song WHERE rating  >  7	music_1
SELECT T1.surname ,  T1.driverid FROM drivers AS T1 JOIN pitstops AS T2 ON T1.driverid  =  T2.driverid GROUP BY T1.driverid HAVING count(*)  =  11 INTERSECT SELECT T1.surname ,  T1.driverid FROM drivers AS T1 JOIN results AS T2 ON T1.driverid  =  T2.driverid GROUP BY T1.driverid HAVING count(*)  >  5	formula_1
SELECT count(DISTINCT last_name) FROM actor	sakila_1
SELECT avg(credit_score) FROM customer WHERE cust_id NOT IN (SELECT cust_id FROM loan)	loan_1
SELECT Name FROM People ORDER BY Weight ASC	entrepreneur
SELECT Name FROM phone ORDER BY Price ASC	phone_market
SELECT cust_name FROM customer EXCEPT SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id  =  T2.cust_id WHERE T2.loan_type  =  'Mortgages'	loan_1
SELECT DISTINCT T1.LName FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  PRESIDENT_Vote EXCEPT SELECT DISTINCT LName FROM STUDENT WHERE Advisor  =  "2192"	voter_2
SELECT emp_jobcode ,  count(*) FROM employee GROUP BY emp_jobcode ORDER BY count(*) DESC LIMIT 1	college_1
SELECT DISTINCT driverid ,  STOP FROM pitstops WHERE duration  <  (SELECT max(duration) FROM pitstops WHERE raceid  =  841)	formula_1
SELECT T3.stu_fname FROM CLASS AS T1 JOIN enroll AS T2 ON T1.class_code  =  T2.class_code JOIN student AS T3 ON T2.stu_num  =  T3.stu_num WHERE T1.crs_code  =  'ACCT-211'	college_1
SELECT count(*) FROM employee AS T1 JOIN CLASS AS T2 ON T1.EMP_NUM  =  T2.PROF_NUM WHERE T1.EMP_LNAME  =  'Graztevski'	college_1
SELECT count(*) FROM professor WHERE prof_high_degree  =  'Ph.D.'	college_1
SELECT T2.song_name FROM files AS T1 JOIN song AS T2 ON T1.f_id  =  T2.f_id WHERE T1.formats  =  "mp3" INTERSECT SELECT song_name FROM song WHERE resolution  <  1000	music_1
SELECT T1.campus FROM campuses AS t1 JOIN enrollments AS t2 ON t1.id  =  t2.campus WHERE t2.year  =  1956 AND totalenrollment_ay  >  400 AND FTE_AY  >  200	csu_1
SELECT name FROM event ORDER BY YEAR DESC LIMIT 1	swimming
SELECT avg(capacity) FROM stadium WHERE opening_year  =  2005	swimming
SELECT T1.rank ,  count(*) FROM Faculty AS T1 JOIN Student AS T2 ON T1.FacID  =  T2.advisor GROUP BY T1.rank	activity_1
SELECT order_item_id FROM order_items WHERE product_id = 11	tracking_orders
SELECT song_name FROM song WHERE genre_is  =  "modern" OR languages  =  "english"	music_1
SELECT count(*) ,  constructorid FROM constructorStandings GROUP BY constructorid	formula_1
SELECT avg(T1.Age) FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  SECRETARY_Vote WHERE T1.Sex  =  "F" AND T2.Election_Cycle  =  "Spring"	voter_2
SELECT FacID FROM Faculty WHERE Sex  =  'M'	activity_1
SELECT sum(t1.undergraduate) FROM discipline_enrollments AS t1 JOIN campuses AS t2 ON t1.campus  =  t2.id WHERE t1.year  =  2004 AND t2.campus  =  "San Jose State University"	csu_1
SELECT max(Age) ,  min(Age) FROM STUDENT WHERE Major  =  600	voter_2
SELECT address ,  num_of_staff FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM happy_hour)	coffee_shop
SELECT T3.brand FROM mountain AS T1 JOIN photos AS T2 ON T1.id  =  T2.mountain_id JOIN camera_lens AS T3 ON T2.camera_lens_id  =  T3.id WHERE T1.range  =  'Toubkal Atlas' INTERSECT SELECT T3.brand FROM mountain AS T1 JOIN photos AS T2 ON T1.id  =  T2.mountain_id JOIN camera_lens AS T3 ON T2.camera_lens_id  =  T3.id WHERE T1.range  =  'Lasta Massif'	mountain_photos
SELECT avg(Money_Requested) FROM entrepreneur	entrepreneur
SELECT max_page_size FROM product GROUP BY max_page_size ORDER BY count(*) DESC LIMIT 1	store_product
SELECT T4.dept_name FROM CLASS AS T1 JOIN enroll AS T2 ON T1.class_code  =  T2.class_code JOIN course AS T3 ON T1.crs_code  =  T3.crs_code JOIN department AS T4 ON T3.dept_code  =  T4.dept_code GROUP BY T3.dept_code ORDER BY count(*) DESC LIMIT 1	college_1
SELECT avg(no_of_customers) FROM bank	loan_1
SELECT Party ,  COUNT(*) FROM people GROUP BY Party	debate
SELECT T1.stu_fname FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num  =  T2.stu_num JOIN CLASS AS T3 ON T2.class_code  =  T3.class_code JOIN course AS T4 ON T3.crs_code  =  T4.crs_code JOIN department AS T5 ON T5.dept_code  =  T4.dept_code WHERE T5.dept_name  =  'Accounting' INTERSECT SELECT T1.stu_fname FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num  =  T2.stu_num JOIN CLASS AS T3 ON T2.class_code  =  T3.class_code JOIN course AS T4 ON T3.crs_code  =  T4.crs_code JOIN department AS T5 ON T5.dept_code  =  T4.dept_code WHERE T5.dept_name  =  'Computer Info. Systems'	college_1
SELECT max(num_of_shops) ,  avg(Num_of_Factories) FROM manufacturer WHERE open_year  <  1990	manufacturer
SELECT sum(city_population) FROM district ORDER BY city_area DESC LIMIT 3	store_product
SELECT DISTINCT T1.Fname FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  T2.CLASS_Senator_VOTE	voter_2
SELECT T1.artist_name ,  T1.country FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name WHERE T2.song_name LIKE "%love%"	music_1
SELECT cust_name FROM customer WHERE credit_score  <  (SELECT avg(credit_score) FROM customer)	loan_1
SELECT faculty FROM faculty AS T1 JOIN campuses AS T2 ON T1.campus  =  T2.id WHERE T1.year  =  2002 AND T2.campus  =  "Long Beach State University"	csu_1
SELECT count(DISTINCT rating) FROM film	sakila_1
SELECT DISTINCT T1.EMP_FNAME ,  T1.EMP_DOB FROM employee AS T1 JOIN CLASS AS T2 ON T1.EMP_NUM  =  T2.PROF_NUM WHERE CRS_CODE  =  "ACCT-211"	college_1
SELECT cust_name FROM customer ORDER BY acc_bal	loan_1
SELECT product FROM product WHERE max_page_size  =  "A4" OR pages_per_minute_color  <  5	store_product
SELECT T1.customer_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1	tracking_orders
SELECT DISTINCT T1.cust_name ,  T1.credit_score FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id  =  T2.cust_id	loan_1
SELECT avg(Num_of_Factories) FROM manufacturer WHERE num_of_shops  >  20	manufacturer
SELECT avg(T2.fastestlapspeed) FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2008 AND T1.name = "Monaco Grand Prix"	formula_1
SELECT address FROM shop ORDER BY open_year	coffee_shop
SELECT f_id FROM files ORDER BY duration DESC LIMIT 1	music_1
SELECT DISTINCT T1.driverid ,  T1.nationality FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.milliseconds >  100000	formula_1
SELECT name FROM circuits WHERE country = "UK" OR country = "Malaysia"	formula_1
SELECT T2.faculty FROM campuses AS T1 JOIN faculty AS T2 ON T1.id  =  t2.campus JOIN degrees AS T3 ON T1.id  =  t3.campus AND t2.year  =  t3.year WHERE t2.year  =  2001 ORDER BY t3.degrees LIMIT 1	csu_1
SELECT T1.bname ,  T1.city FROM bank AS T1 JOIN loan AS T2 ON T1.branch_id  =  T2.branch_id WHERE T2.loan_type  =  'Business'	loan_1
SELECT T1.driverid ,  T1.forename ,  count(*) FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid GROUP BY T1.driverid HAVING count(*)  >=  2	formula_1
SELECT count(*) FROM CLASS AS T1 JOIN enroll AS T2 ON T1.class_code  =  T2.class_code JOIN course AS T3 ON T1.crs_code  =  T3.crs_code JOIN department AS T4 ON T3.dept_code  =  T4.dept_code WHERE T4.dept_name  =  'Accounting'	college_1
SELECT T1.emp_lname ,  T1.emp_hiredate FROM employee AS T1 JOIN professor AS T2 ON T1.emp_num  =  T2.emp_num WHERE T2.prof_office  =  'DRE 102'	college_1
SELECT T2.song_name FROM files AS T1 JOIN song AS T2 ON T1.f_id  =  T2.f_id WHERE T1.duration LIKE "4:%" UNION SELECT song_name FROM song WHERE languages  =  "english"	music_1
SELECT T2.emp_fname ,  T4.prof_office ,  T3.crs_description FROM CLASS AS T1 JOIN employee AS T2 ON T1.prof_num  =  T2.emp_num JOIN course AS T3 ON T1.crs_code  =  T3.crs_code JOIN professor AS T4 ON T2.emp_num  =  T4.emp_num	college_1
SELECT T2.name ,  T1.category_id ,  count(*) FROM film_category AS T1 JOIN category AS T2 ON T1.category_id  =  T2.category_id GROUP BY T1.category_id	sakila_1
SELECT count(*) ,  dept_code FROM CLASS AS T1 JOIN course AS T2 ON T1.crs_code  =  T2.crs_code GROUP BY dept_code	college_1
SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id  =  T2.cust_id GROUP BY T1.cust_name ORDER BY sum(T2.amount) DESC LIMIT 1	loan_1
SELECT avg(T2.rating) FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name WHERE T1.gender  =  "Female"	music_1
SELECT DISTINCT artist_name FROM song WHERE languages  =  "english" EXCEPT SELECT DISTINCT artist_name FROM song WHERE rating  >  8	music_1
SELECT crs_credit ,  crs_description FROM course WHERE crs_code  =  'CIS-220'	college_1
SELECT count(*) FROM Faculty WHERE Sex  =  'F' AND Rank  =  "Professor"	activity_1
SELECT song_name FROM song WHERE rating  <   (SELECT min(rating) FROM song WHERE languages  =  'english')	music_1
SELECT Fname ,  Lname ,  phone FROM Faculty WHERE Sex  =  'F'	activity_1
SELECT T2.faculty FROM campuses AS T1 JOIN faculty AS T2 ON T1.id  =  t2.campus JOIN degrees AS T3 ON T1.id  =  t3.campus AND t2.year  =  t3.year WHERE t2.year  =  2001 ORDER BY t3.degrees LIMIT 1	csu_1
SELECT avg(rating) ,  languages FROM song GROUP BY languages	music_1
SELECT count(DISTINCT class_code) FROM CLASS	college_1
SELECT campus FROM campuses WHERE county  =  "Los Angeles"	csu_1
SELECT name FROM stadium WHERE capacity  <  (SELECT avg(capacity) FROM stadium)	swimming
SELECT T1.activity_name FROM Activity AS T1 JOIN Faculty_participates_in AS T2 ON T1.actID  =  T2.actID GROUP BY T1.actID ORDER BY count(*) DESC LIMIT 1	activity_1
SELECT T2.Name FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID WHERE T1.Investor != "Rachel Elnaugh"	entrepreneur
SELECT count(*) FROM Faculty WHERE Rank  =  "Professor" AND building  =  "NEB"	activity_1
SELECT  T1.fname ,  T1.lname FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID  =  T2.facID GROUP BY T1.FacID ORDER BY count(*) DESC LIMIT 1	activity_1
SELECT Carrier FROM phone WHERE Memory_in_G  <  32 INTERSECT SELECT Carrier FROM phone WHERE Memory_in_G  >  64	phone_market
SELECT T1.first_name ,  T1.last_name FROM customer AS T1 JOIN rental AS T2 ON T1.customer_id  =  T2.customer_id ORDER BY T2.rental_date ASC LIMIT 1	sakila_1
SELECT DISTINCT T1.LName FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  PRESIDENT_Vote INTERSECT SELECT DISTINCT LName FROM STUDENT WHERE Advisor  =  "8741"	voter_2
SELECT lname FROM faculty WHERE rank  =  'Professor' EXCEPT SELECT DISTINCT T1.lname FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID  =  T2.facID JOIN activity AS T3 ON T2.actid  =  T2.actid WHERE T3.activity_name  =  'Canoeing' OR T3.activity_name  =  'Kayaking'	activity_1
SELECT count(*) FROM film WHERE title LIKE "%Dummy%"	cinema
SELECT DISTINCT President_Vote ,  VICE_President_Vote FROM VOTING_RECORD	voter_2
SELECT campus FROM campuses WHERE YEAR  =  1958	csu_1
SELECT count(DISTINCT T1.injury) FROM injury_accident AS T1 JOIN game AS T2 ON T1.game_id  =  T2.id WHERE T2.season  >  2010	game_injury
SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id  =  T2.cust_id WHERE amount  >  3000	loan_1
SELECT artist_name FROM artist WHERE country  =  "UK" AND gender  =  "Male"	music_1
SELECT order_id FROM orders ORDER BY date_order_placed DESC LIMIT 1	tracking_orders
SELECT max(Age) ,  min(Age) FROM STUDENT WHERE Major  =  600	voter_2
SELECT count(*) FROM Activity	activity_1
SELECT g_name ,  rating FROM genre ORDER BY g_name	music_1
SELECT T1.name FROM user_profiles AS T1 JOIN tweets AS T2 ON T1.uid  =  T2.uid GROUP BY T2.uid HAVING count(*)  >  1	twitter_1
SELECT count(*) ,  t1.name FROM manufacturer AS t1 JOIN furniture_manufacte AS t2 ON t1.manufacturer_id  =  t2.manufacturer_id GROUP BY t1.manufacturer_id	manufacturer
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "Australian Grand Prix" AND YEAR = 2009	formula_1
SELECT T2.dept_name FROM course AS T1 JOIN department AS T2 ON T1.dept_code  =  T2.dept_code WHERE T1.crs_description LIKE '%Statistics%'	college_1
SELECT T2.emp_fname ,  T1.prof_office FROM professor AS T1 JOIN employee AS T2 ON T1.emp_num  =  T2.emp_num ORDER BY T2.emp_fname	college_1
SELECT count(*) FROM store	sakila_1
SELECT first_name FROM actor GROUP BY first_name ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT product FROM product WHERE product LIKE "%Scanner%"	store_product
SELECT count(DISTINCT SOURCE) FROM injury_accident	game_injury
SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id  =  T2.cust_id WHERE amount  >  3000	loan_1
SELECT name FROM circuits WHERE country = "UK" OR country = "Malaysia"	formula_1
SELECT count(*) FROM department AS T1 JOIN course AS T2 ON T1.dept_code  =  T2.dept_code WHERE dept_name  =  "Computer Info. Systems"	college_1
SELECT name FROM races WHERE TIME > "12:00:00" OR TIME < "09:00:00"	formula_1
SELECT T1.name FROM constructors AS T1 JOIN constructorstandings AS T2 ON T1.constructorid = T2.constructorid WHERE T1.nationality = "Japanese" AND T2.points > 5	formula_1
SELECT sum(t1.undergraduate) FROM discipline_enrollments AS t1 JOIN campuses AS t2 ON t1.campus  =  t2.id WHERE t1.year  =  2004 AND t2.campus  =  "San Jose State University"	csu_1
SELECT count(*) FROM campuses	csu_1
SELECT T1.driverid ,  T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds DESC LIMIT 1	formula_1
SELECT Advisor FROM STUDENT GROUP BY Advisor HAVING count(*)  >  2	voter_2
SELECT count(*) FROM customer WHERE active = '1'	sakila_1
SELECT name FROM races WHERE YEAR BETWEEN 2009 AND 2011	formula_1
SELECT T3.stu_fname FROM CLASS AS T1 JOIN enroll AS T2 ON T1.class_code  =  T2.class_code JOIN student AS T3 ON T2.stu_num  =  T3.stu_num WHERE T1.crs_code  =  'ACCT-211'	college_1
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM entrepreneur)	entrepreneur
SELECT song_name FROM song ORDER BY resolution	music_1
SELECT avg(campusfee) FROM csu_fees WHERE YEAR  =  2005	csu_1
SELECT count(*) FROM campuses WHERE county  =  "Los Angeles"	csu_1
SELECT T2.date_order_placed FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T1.customer_name = "Jeramie"	tracking_orders
SELECT DISTINCT T1.Fname ,  T1.LName FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  T2.President_VOTE WHERE T1.sex  =  "F"	voter_2
SELECT sum(t1.graduate) FROM discipline_enrollments AS t1 JOIN campuses AS t2 ON t1.campus  =  t2.id WHERE t1.year  =  2004 AND t2.campus  =  "San Francisco State University"	csu_1
SELECT max_page_size FROM product GROUP BY max_page_size HAVING count(*)  >  3	store_product
SELECT artist_name FROM artist WHERE country  =  "UK" AND gender  =  "Male"	music_1
SELECT TYPE ,  count(*) FROM store GROUP BY TYPE	store_product
SELECT name FROM stadium ORDER BY capacity DESC LIMIT 1	swimming
SELECT DISTINCT T1.lname FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID  =  T2.facID JOIN activity AS T3 ON T2.actid  =  T2.actid WHERE T3.activity_name  =  'Canoeing' OR T3.activity_name  =  'Kayaking'	activity_1
SELECT order_id FROM shipments WHERE shipment_date > "2000-01-01"	tracking_orders
SELECT DISTINCT T1.Fname ,  T1.LName FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  T2.VICE_President_VOTE WHERE T1.age  =  18	voter_2
SELECT T2.dept_name ,  T2.dept_address ,  count(*) FROM student AS T1 JOIN department AS T2 ON T1.dept_code  =  T2.dept_code GROUP BY T1.dept_code ORDER BY count(*) DESC LIMIT 3	college_1
SELECT DISTINCT Registration_Date ,  Election_Cycle FROM VOTING_RECORD	voter_2
SELECT T2.Weight FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Money_Requested DESC	entrepreneur
SELECT f_id FROM files WHERE formats  =  "mp3"	music_1
SELECT campus FROM campuses WHERE LOCATION  =  "Chico"	csu_1
SELECT avg(T2.rating) FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name WHERE T1.gender  =  "Female"	music_1
SELECT DISTINCT song_name FROM song WHERE resolution  >  (SELECT min(resolution) FROM song WHERE languages  =  "english")	music_1
SELECT avg(num_of_staff) ,  avg(score) FROM shop	coffee_shop
SELECT count(*) FROM professor AS T1 JOIN department AS T2 ON T1.dept_code  =  T2.dept_code WHERE T2.dept_name  =  'Accounting' OR T2.dept_name  =  'Biology'	college_1
SELECT T1.first_name ,  T1.last_name ,  T1.staff_id FROM staff AS T1 JOIN payment AS T2 ON T1.staff_id  =  T2.staff_id GROUP BY T1.staff_id ORDER BY count(*) ASC LIMIT 1	sakila_1
SELECT t1.store_name FROM store AS t1 JOIN store_district AS t2 ON t1.store_id  =  t2.store_id WHERE district_id  =  (SELECT district_id FROM district ORDER BY city_population DESC LIMIT 1)	store_product
SELECT count(*) FROM inventory WHERE store_id  =  1	sakila_1
SELECT T2.emp_fname ,  T4.prof_office ,  T3.crs_description ,  T5.dept_name FROM CLASS AS T1 JOIN employee AS T2 ON T1.prof_num  =  T2.emp_num JOIN course AS T3 ON T1.crs_code  =  T3.crs_code JOIN professor AS T4 ON T2.emp_num  =  T4.emp_num JOIN department AS T5 ON T4.dept_code  =  T5.dept_code	college_1
SELECT f_id FROM files WHERE formats  =  "mp4" UNION SELECT f_id FROM song WHERE resolution  >  720	music_1
SELECT T2.dept_name FROM professor AS T1 JOIN department AS T2 ON T1.dept_code  =  T2.dept_code GROUP BY T1.dept_code ORDER BY count(*) LIMIT 1	college_1
SELECT T1.customer_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status = "On Road" INTERSECT SELECT T1.customer_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status = "Shipped"	tracking_orders
SELECT stu_fname ,  stu_lname ,  stu_gpa FROM student WHERE stu_gpa  >  3 ORDER BY stu_dob DESC LIMIT 1	college_1
SELECT max(T2.fastestlapspeed) ,  T1.name ,  T1.year FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year > 2014 GROUP BY T1.name ORDER BY T1.year	formula_1
SELECT T1.driverid ,  T1.forename ,  T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE POSITION  =  '1' GROUP BY T1.driverid HAVING count(*)  >=  2	formula_1
SELECT T3.activity_name FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID  =  T2.facID JOIN Activity AS T3 ON T3.actid  =  T2.actid WHERE T1.fname  =  "Mark" AND T1.lname  =  "Giuliano"	activity_1
SELECT open_year ,  name FROM manufacturer ORDER BY num_of_shops DESC LIMIT 1	manufacturer
SELECT T2.order_id ,  T2.order_status FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T1.customer_name = "Jeramie"	tracking_orders
SELECT T2.first_name ,  T2.last_name FROM film_actor AS T1 JOIN actor AS T2 ON T1.actor_id  =  T2.actor_id GROUP BY T2.actor_id HAVING count(*)  >  30	sakila_1
SELECT DISTINCT T1.Age FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  T2.Secretary_Vote WHERE T2.Election_Cycle  =  "Fall"	voter_2
SELECT T1.emp_fname ,  T2.prof_office FROM employee AS T1 JOIN professor AS T2 ON T1.emp_num  =  T2.emp_num JOIN department AS T3 ON T3.dept_code  =  T2.dept_code WHERE T3.dept_name  =  'History' AND T2.prof_high_degree  =  'Ph.D.'	college_1
SELECT count(*) FROM professor WHERE prof_high_degree  =  'Ph.D.' OR prof_high_degree  =  'MA'	college_1
SELECT T1.forename ,  T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds LIMIT 1	formula_1
SELECT count(DISTINCT acc_type) FROM customer	loan_1
SELECT T2.customer_name FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id HAVING count(*)  <=  2	tracking_orders
SELECT name ,  Num_of_Component FROM furniture ORDER BY market_rate LIMIT 1	manufacturer
SELECT phone ,  postal_code FROM address WHERE address  =  '1031 Daugavpils Parkway'	sakila_1
SELECT campus FROM campuses WHERE county  =  "Los Angeles" AND YEAR  >  1950	csu_1
SELECT T1.campus FROM campuses AS T1 JOIN faculty AS T2 ON T1.id  =  T2.campus WHERE T2.year  =  2003 ORDER BY T2.faculty DESC LIMIT 1	csu_1
SELECT Name FROM people WHERE People_id NOT IN (SELECT Affirmative FROM debate_people)	debate
SELECT count(*) FROM city AS T1 JOIN country AS T2 ON T1.country_id  =  T2.country_id WHERE T2.country  =  'Australia'	sakila_1
SELECT T2.StuID FROM Faculty AS T1 JOIN Student AS T2 ON T1.FacID  =  T2.advisor WHERE T1.rank  =  "Professor"	activity_1
SELECT order_id FROM shipments WHERE shipment_date  =  (SELECT max(shipment_date) FROM shipments)	tracking_orders
SELECT T3.product_name ,  count(*) FROM orders AS T1 JOIN order_items AS T2 JOIN products AS T3 ON T1.order_id = T2.order_id AND T2.product_id = T3.product_id GROUP BY T3.product_id	tracking_orders
SELECT T1.fname ,  T1.lname FROM Faculty AS T1 JOIN Student AS T2 ON T1.FacID  =  T2.advisor WHERE T2.fname  =  "Linda" AND T2.lname  =  "Smith"	activity_1
SELECT count(*) FROM files WHERE duration LIKE "4:%"	music_1
SELECT T1.name FROM category AS T1 JOIN film_category AS T2 ON T1.category_id  =  T2.category_id JOIN film AS T3 ON T2.film_id  =  T3.film_id WHERE T3.title  =  'HUNGER ROOF'	sakila_1
SELECT name ,  height ,  prominence FROM mountain WHERE range != 'Aberdare Range'	mountain_photos
SELECT avg(acc_bal) ,  acc_type FROM customer WHERE credit_score  <  50 GROUP BY acc_type	loan_1
SELECT invoice_number FROM invoices WHERE invoice_date < "1989-09-03" OR invoice_date > "2007-12-25"	tracking_orders
SELECT count(*) FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  Class_Senator_Vote WHERE T1.Sex  =  "M" AND T2.Election_Cycle  =  "Fall"	voter_2
SELECT district_name FROM district ORDER BY city_population DESC LIMIT 1	store_product
SELECT name FROM member WHERE address  =  'Harford' OR address  =  'Waterbury'	coffee_shop
SELECT campus FROM campuses WHERE YEAR  =  1958	csu_1
SELECT name ,  LOCATION FROM cinema ORDER BY capacity DESC LIMIT 1	cinema
SELECT T2.title ,  T2.film_id ,  T2.description FROM film_actor AS T1 JOIN film AS T2 ON T1.film_id  =  T2.film_id GROUP BY T2.film_id ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT T2.address FROM store AS T1 JOIN address AS T2 ON T1.address_id  =  T2.address_id WHERE store_id  =  1	sakila_1
SELECT T1.date ,  T2.player FROM game AS T1 JOIN injury_accident AS T2 ON T1.id  =  T2.game_id ORDER BY T1.season DESC	game_injury
SELECT name ,  email FROM user_profiles WHERE name LIKE '%Swift%'	twitter_1
SELECT T1.id ,  T1.name FROM stadium AS T1 JOIN game AS T2 ON T1.id  =  T2.stadium_id JOIN injury_accident AS T3 ON T2.id  =  T3.game_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1	game_injury
SELECT rank ,  Fname ,  Lname FROM Faculty	activity_1
SELECT song_name ,  releasedate FROM song ORDER BY releasedate DESC LIMIT 1	music_1
SELECT song_name FROM song WHERE rating  <  (SELECT max(rating) FROM song WHERE genre_is  =  "blues")	music_1
SELECT Advisor FROM STUDENT WHERE city_code  =  "BAL"	voter_2
SELECT Investor ,  COUNT(*) FROM entrepreneur GROUP BY Investor	entrepreneur
SELECT T2.first_name ,  T2.last_name FROM film_actor AS T1 JOIN actor AS T2 ON T1.actor_id  =  T2.actor_id GROUP BY T2.actor_id HAVING count(*)  >  30	sakila_1
SELECT activity_name FROM Activity	activity_1
SELECT DISTINCT T1.bname FROM bank AS T1 JOIN loan AS T2 ON T1.branch_id  =  T2.branch_id	loan_1
SELECT campus FROM campuses WHERE YEAR  >=  1935 AND YEAR  <=  1939	csu_1
SELECT store_id FROM inventory GROUP BY store_id ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT t1.name FROM swimmer AS t1 JOIN record AS t2 ON t1.id  =  t2.swimmer_id GROUP BY t2.swimmer_id ORDER BY count(*) DESC LIMIT 1	swimming
SELECT t1.campusfee FROM csu_fees AS t1 JOIN campuses AS t2 ON t1.campus  =  t2.id WHERE t2.campus  =  "San Jose State University" AND t1.year  =  2000	csu_1
SELECT Company ,  Investor FROM entrepreneur	entrepreneur
SELECT T1.artist_name FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name WHERE T2.languages  =  "bangla" GROUP BY T2.artist_name ORDER BY count(*) DESC LIMIT 3	music_1
SELECT avg(T2.stu_gpa) FROM enroll AS T1 JOIN student AS T2 ON T1.stu_num  =  T2.stu_num JOIN CLASS AS T3 ON T1.class_code  =  T3.class_code WHERE T3.crs_code  =  'ACCT-211'	college_1
SELECT T2.dept_name ,  T2.dept_address FROM student AS T1 JOIN department AS T2 ON T1.dept_code  =  T2.dept_code GROUP BY T1.dept_code ORDER BY count(*) DESC LIMIT 1	college_1
SELECT count(DISTINCT dept_name) ,  school_code FROM department GROUP BY school_code HAVING count(DISTINCT dept_name)  <  5	college_1
SELECT title FROM film WHERE LENGTH  >  100 OR rating  =  'PG' EXCEPT SELECT title FROM film WHERE replacement_cost  >  200	sakila_1
SELECT T2.emp_fname ,  T1.crs_code FROM CLASS AS T1 JOIN employee AS T2 ON T1.prof_num  =  T2.emp_num	college_1
SELECT artist_name FROM song WHERE resolution  >  500 GROUP BY languages ORDER BY count(*) DESC LIMIT 1	music_1
SELECT T1.campus FROM campuses AS t1 JOIN faculty AS t2 ON t1.id  =  t2.campus WHERE t2.faculty  >=  600 AND t2.faculty  <=  1000 AND T1.year  =  2004	csu_1
SELECT T1.customer_name FROM customers AS T1 JOIN orders AS T2 JOIN order_items AS T3 JOIN products AS T4 ON T1.customer_id = T2.customer_id AND T2.order_id = T3.order_id AND T3.product_id = T4.product_id WHERE T3.order_item_status = "Cancel" AND T4.product_name = "food" GROUP BY T1.customer_id HAVING count(*)  >=  1	tracking_orders
SELECT country FROM stadium WHERE capacity  >  60000 INTERSECT SELECT country FROM stadium WHERE capacity  <  50000	swimming
SELECT fname ,  lname FROM Faculty WHERE Rank  =  "Instructor"	activity_1
SELECT address FROM member EXCEPT SELECT address FROM member WHERE Membership_card  =  'Black'	coffee_shop
SELECT T1.artist_name FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name WHERE T2.languages  =  "bangla" GROUP BY T2.artist_name ORDER BY count(*) DESC LIMIT 3	music_1
SELECT count(DISTINCT language_id) FROM film	sakila_1
SELECT count(DISTINCT PROF_NUM) FROM CLASS WHERE CRS_CODE  =  "ACCT-211"	college_1
SELECT name ,  openning_year ,  capacity FROM cinema	cinema
SELECT bname FROM bank WHERE state  =  'New York'	loan_1
SELECT Carrier ,  COUNT(*) FROM phone GROUP BY Carrier	phone_market
SELECT DISTINCT rank FROM Faculty	activity_1
SELECT T2.dept_name ,  T2.dept_address ,  count(*) FROM student AS T1 JOIN department AS T2 ON T1.dept_code  =  T2.dept_code GROUP BY T1.dept_code ORDER BY count(*) DESC LIMIT 3	college_1
SELECT cust_name FROM customer EXCEPT SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id  =  T2.cust_id WHERE T2.loan_type  =  'Mortgages'	loan_1
SELECT first_name ,  last_name FROM actor GROUP BY first_name ,  last_name ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT T2.Weight FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Money_Requested DESC	entrepreneur
SELECT stu_fname ,  stu_gpa FROM student WHERE stu_gpa  <  (SELECT avg(stu_gpa) FROM student)	college_1
SELECT T3.dept_name FROM course AS T1 JOIN CLASS AS T2 ON T1.crs_code  =  T2.crs_code JOIN department AS T3 ON T1.dept_code  =  T3.dept_code GROUP BY T1.dept_code ORDER BY sum(T1.crs_credit) DESC LIMIT 1	college_1
SELECT count(*) ,  T1.school_code FROM department AS T1 JOIN professor AS T2 ON T1.dept_code  =  T2.dept_code GROUP BY T1.school_code	college_1
SELECT name FROM user_profiles ORDER BY followers DESC LIMIT 5	twitter_1
SELECT campus FROM degrees GROUP BY campus ORDER BY sum(degrees) DESC LIMIT 1	csu_1
SELECT T2.emp_fname ,  T4.prof_office ,  T3.crs_description FROM CLASS AS T1 JOIN employee AS T2 ON T1.prof_num  =  T2.emp_num JOIN course AS T3 ON T1.crs_code  =  T3.crs_code JOIN professor AS T4 ON T2.emp_num  =  T4.emp_num	college_1
SELECT brand ,  name FROM camera_lens ORDER BY max_aperture DESC	mountain_photos
SELECT DISTINCT T1.artist_name ,  T1.country FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name WHERE T2.rating  >  9	music_1
SELECT count(*) ,  T3.school_code FROM CLASS AS T1 JOIN course AS T2 ON T1.crs_code  =  T2.crs_code JOIN department AS T3 ON T2.dept_code  =  T3.dept_code GROUP BY T3.school_code	college_1
SELECT count(DISTINCT dept_address) FROM department WHERE school_code  =  'BUS'	college_1
SELECT T3.product_name ,  count(*) FROM orders AS T1 JOIN order_items AS T2 JOIN products AS T3 ON T1.order_id = T2.order_id AND T2.product_id = T3.product_id GROUP BY T3.product_id	tracking_orders
SELECT avg(credit_score) FROM customer WHERE cust_id NOT IN (SELECT cust_id FROM loan)	loan_1
SELECT LName FROM STUDENT WHERE Major  =  50	voter_2
SELECT max(height) ,  avg(height) FROM mountain	mountain_photos
SELECT order_id FROM orders ORDER BY date_order_placed DESC LIMIT 1	tracking_orders
SELECT T2.Name ,  sum(T1.Num_of_stock) FROM phone_market AS T1 JOIN phone AS T2 ON T1.Phone_ID  =  T2.Phone_ID GROUP BY T2.Name	phone_market
SELECT f_id ,  genre_is ,  artist_name FROM song WHERE languages  =   "english" ORDER BY rating	music_1
SELECT T1.campus ,  sum(T2.degrees) FROM campuses AS T1 JOIN degrees AS T2 ON T1.id  =  T2.campus WHERE T2.year  >=  1998 AND T2.year  <=  2002 GROUP BY T1.campus	csu_1
SELECT FacID FROM Faculty_participates_in INTERSECT SELECT advisor FROM Student	activity_1
SELECT count(DISTINCT dept_name) ,  school_code FROM department GROUP BY school_code	college_1
SELECT Company ,  Investor FROM entrepreneur	entrepreneur
SELECT T2.address FROM store AS T1 JOIN address AS T2 ON T1.address_id  =  T2.address_id WHERE store_id  =  1	sakila_1
SELECT Investor FROM entrepreneur GROUP BY Investor ORDER BY COUNT(*) DESC LIMIT 1	entrepreneur
SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id  =  T2.cust_id GROUP BY T1.cust_name HAVING count(*)  >  1	loan_1
SELECT Advisor ,  count(*) FROM STUDENT GROUP BY Advisor	voter_2
SELECT TYPE ,  count(*) FROM store GROUP BY TYPE	store_product
SELECT title ,  film_id FROM film WHERE rental_rate  =  0.99 INTERSECT SELECT T1.title ,  T1.film_id FROM film AS T1 JOIN inventory AS T2 ON T1.film_id  =  T2.film_id GROUP BY T1.film_id HAVING count(*)  <  3	sakila_1
SELECT T2.dept_name ,  T1.dept_code FROM professor AS T1 JOIN department AS T2 ON T1.dept_code  =  T2.dept_code WHERE T1.prof_high_degree  =  'Ph.D.' GROUP BY T1.dept_code ORDER BY count(*) DESC LIMIT 1	college_1
SELECT city ,  state FROM bank WHERE bname  =  'morningside'	loan_1
SELECT cust_name ,  acc_bal FROM customer WHERE cust_name LIKE '%a%'	loan_1
SELECT sum(no_of_customers) FROM bank WHERE city  =  'New York City'	loan_1
SELECT DISTINCT name FROM races WHERE YEAR BETWEEN 2014 AND 2017	formula_1
SELECT campus FROM campuses WHERE county  =  "Los Angeles"	csu_1
SELECT count(*) ,  gender FROM artist GROUP BY gender	music_1
SELECT count(DISTINCT T2.camera_lens_id) FROM mountain AS T1 JOIN photos AS T2 ON T1.id  =  T2.mountain_id WHERE T1.country  =  'Ethiopia'	mountain_photos
SELECT t3.District_name FROM store AS t1 JOIN store_district AS t2 ON t1.store_id  =  t2.store_id JOIN district AS t3 ON t2.district_id  =  t3.district_id WHERE t1.Type  =  "City Mall" INTERSECT SELECT t3.District_name FROM store AS t1 JOIN store_district AS t2 ON t1.store_id  =  t2.store_id JOIN district AS t3 ON t2.district_id  =  t3.district_id WHERE t1.Type  =  "Village Store"	store_product
SELECT avg(T2.fastestlapspeed) ,  T1.name ,  T1.year FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year > 2014 GROUP BY T1.name ORDER BY T1.year	formula_1
SELECT sum(t1.graduate) FROM discipline_enrollments AS t1 JOIN campuses AS t2 ON t1.campus  =  t2.id WHERE t1.year  =  2004 AND t2.campus  =  "San Francisco State University"	csu_1
SELECT count(DISTINCT President_Vote) FROM VOTING_RECORD	voter_2
SELECT T1.season FROM game AS T1 JOIN injury_accident AS T2 ON T1.id  =  T2.game_id WHERE T2.player  =  'Walter Samuel'	game_injury
SELECT avg(rating) ,  avg(resolution) FROM song WHERE languages  =  "bangla"	music_1
SELECT avg(credit_score) FROM customer WHERE cust_id IN (SELECT cust_id FROM loan)	loan_1
SELECT Carrier FROM phone ORDER BY Price DESC LIMIT 1	phone_market
SELECT artist_name FROM artist WHERE country  =  "UK" INTERSECT SELECT artist_name FROM song WHERE languages  =  "english"	music_1
SELECT rank FROM Faculty GROUP BY rank ORDER BY count(*) ASC LIMIT 1	activity_1
SELECT formats FROM files GROUP BY formats ORDER BY COUNT (*) DESC LIMIT 1	music_1
SELECT DISTINCT T1.Fname ,  T1.LName FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  T2.President_VOTE WHERE T1.sex  =  "F"	voter_2
SELECT MONTH FROM happy_hour GROUP BY MONTH HAVING count(*)  >  2	coffee_shop
SELECT song_name FROM song ORDER BY resolution	music_1
SELECT T1.id ,  T1.name FROM stadium AS T1 JOIN game AS T2 ON T1.id  =  T2.stadium_id JOIN injury_accident AS T3 ON T2.id  =  T3.game_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1	game_injury
SELECT LOCATION ,  count(*) FROM cinema GROUP BY LOCATION	cinema
SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id  =  T2.cust_id GROUP BY T1.cust_name HAVING count(*)  >  1	loan_1
SELECT count(*) FROM cinema	cinema
SELECT name FROM races WHERE YEAR = 2017	formula_1
SELECT T2.name FROM film AS T1 JOIN LANGUAGE AS T2 ON T1.language_id  =  T2.language_id WHERE T1.title  =  'AIRPORT POLLOCK'	sakila_1
SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id  =  T2.cust_id WHERE loan_type  =  'Mortgages' INTERSECT SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id  =  T2.cust_id WHERE loan_type  =  'Auto'	loan_1
SELECT count(*) FROM campuses WHERE county  =  "Los Angeles"	csu_1
SELECT T2.faculty FROM campuses AS T1 JOIN faculty AS T2 ON T1.id  =  t2.campus JOIN degrees AS T3 ON T1.id  =  t3.campus AND t2.year  =  t3.year WHERE t2.year  =  2002 ORDER BY t3.degrees DESC LIMIT 1	csu_1
SELECT DISTINCT song_name FROM song WHERE resolution  >  (SELECT min(resolution) FROM song WHERE languages  =  "english")	music_1
SELECT T3.activity_name FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID  =  T2.facID JOIN Activity AS T3 ON T3.actid  =  T2.actid WHERE T1.fname  =  "Mark" AND T1.lname  =  "Giuliano"	activity_1
SELECT T1.first_name ,  T1.last_name ,  T1.staff_id FROM staff AS T1 JOIN payment AS T2 ON T1.staff_id  =  T2.staff_id GROUP BY T1.staff_id ORDER BY count(*) ASC LIMIT 1	sakila_1
SELECT T2.Name FROM phone_market AS T1 JOIN phone AS T2 ON T1.Phone_ID  =  T2.Phone_ID GROUP BY T2.Name HAVING sum(T1.Num_of_stock)  >=  2000 ORDER BY sum(T1.Num_of_stock) DESC	phone_market
SELECT Name FROM phone WHERE Carrier  =  "Sprint" OR Carrier  =  "TMobile"	phone_market
SELECT district FROM address GROUP BY district HAVING count(*)  >=  2	sakila_1
SELECT T3.Name FROM phone_market AS T1 JOIN market AS T2 ON T1.Market_ID  =  T2.Market_ID JOIN phone AS T3 ON T1.Phone_ID  =  T3.Phone_ID WHERE T2.Num_of_shops  >  50	phone_market
SELECT Date FROM game ORDER BY home_team DESC	game_injury
SELECT Major FROM STUDENT GROUP BY Major HAVING COUNT(*)  <  3	voter_2
SELECT sex ,  count(*) FROM Faculty WHERE rank  =  "AsstProf" GROUP BY sex	activity_1
SELECT T1.artist_name FROM song AS T1 JOIN files AS T2 ON T1.f_id  =  T2.f_id ORDER BY T2.duration LIMIT 1	music_1
SELECT DISTINCT invoice_details FROM invoices WHERE invoice_date < "1989-09-03" OR invoice_date > "2007-12-25"	tracking_orders
SELECT Date FROM debate WHERE Num_of_Audience  >  150	debate
SELECT state ,  acc_type ,  credit_score FROM customer WHERE no_of_loans  =  0	loan_1
SELECT count(DISTINCT crs_code) FROM CLASS	college_1
SELECT T1.campus FROM campuses AS T1 JOIN faculty AS T2 ON T1.id  =  T2.campus WHERE T2.year  =  2002 AND faculty  >  (SELECT max(faculty) FROM campuses AS T1 JOIN faculty AS T2 ON T1.id  =  T2.campus WHERE T2.year  =  2002 AND T1.county  =  "Orange")	csu_1
SELECT count(*) ,  T3.product_id FROM orders AS T1 JOIN order_items AS T2 JOIN products AS T3 ON T1.order_id = T2.order_id AND T2.product_id = T3.product_id GROUP BY T3.product_id	tracking_orders
SELECT count(*) FROM game WHERE season  >  2007	game_injury
SELECT sum(faculty) FROM faculty WHERE YEAR  =  2002	csu_1
SELECT f_id FROM files ORDER BY duration DESC LIMIT 1	music_1
SELECT t3.headquartered_city FROM store AS t1 JOIN store_district AS t2 ON t1.store_id  =  t2.store_id JOIN district AS t3 ON t2.district_id  =  t3.district_id WHERE t1.store_name  =  "Blackville"	store_product
SELECT city_code FROM STUDENT GROUP BY city_code ORDER BY count(*) DESC LIMIT 1	voter_2
SELECT count(*) FROM debate	debate
SELECT stu_fname ,  stu_gpa FROM student WHERE stu_gpa  <  (SELECT avg(stu_gpa) FROM student)	college_1
SELECT count(*) ,  class_room FROM CLASS GROUP BY class_room HAVING count(*)  >=  2	college_1
SELECT T2.f1 FROM user_profiles AS T1 JOIN follows AS T2 ON T1.uid  =  T2.f2 WHERE T1.name  =  "Mary" OR T1.name  =  "Susan"	twitter_1
SELECT t1.name FROM stadium AS t1 JOIN event AS t2 ON t1.id  =  t2.stadium_id GROUP BY t2.stadium_id ORDER BY count(*) DESC LIMIT 1	swimming
SELECT DISTINCT T1.Fname ,  T1.LName FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  T2.VICE_President_VOTE WHERE T1.age  =  18	voter_2
SELECT name ,  open_year FROM manufacturer WHERE num_of_shops  >  10 OR Num_of_Factories  <  10	manufacturer
SELECT DISTINCT T1.Advisor FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  T2.Treasurer_Vote WHERE T2.Election_Cycle  =  "Spring"	voter_2
SELECT DISTINCT T1.Major FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  T2.Treasurer_Vote	voter_2
SELECT count(*) ,  nationality FROM constructors GROUP BY nationality	formula_1
SELECT t1.name FROM swimmer AS t1 JOIN record AS t2 ON t1.id  =  t2.swimmer_id WHERE RESULT  =  'Win' INTERSECT SELECT t1.name FROM swimmer AS t1 JOIN record AS t2 ON t1.id  =  t2.swimmer_id WHERE RESULT  =  'Loss'	swimming
SELECT name ,  followers FROM user_profiles ORDER BY followers DESC	twitter_1
SELECT DISTINCT forename FROM drivers ORDER BY forename ASC	formula_1
SELECT name ,  LOCATION FROM cinema WHERE capacity  >  (SELECT avg(capacity) FROM cinema)	cinema
SELECT avg(T1.Age) FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  SECRETARY_Vote WHERE T1.Sex  =  "F" AND T2.Election_Cycle  =  "Spring"	voter_2
SELECT YEAR FROM degrees GROUP BY YEAR ORDER BY sum(degrees) DESC LIMIT 1	csu_1
SELECT min(T1.duration) ,  min(T2.rating) ,  T2.genre_is FROM files AS T1 JOIN song AS T2 ON T1.f_id  =  T2.f_id GROUP BY T2.genre_is ORDER BY T2.genre_is	music_1
SELECT DISTINCT T1.name FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.country = "Spain" AND T1.year > 2000	formula_1
SELECT avg(T1.duration) FROM files AS T1 JOIN song AS T2 ON T1.f_id  =  T2.f_id WHERE T1.formats  =  "mp3" AND T2.resolution   <  800	music_1
SELECT T1.activity_name ,  count(*) FROM Activity AS T1 JOIN Faculty_participates_in AS T2 ON T1.actID  =  T2.actID GROUP BY T1.actID	activity_1
SELECT max_page_size FROM product GROUP BY max_page_size ORDER BY count(*) DESC LIMIT 1	store_product
SELECT DISTINCT T1.Fname FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  T2.VICE_PRESIDENT_Vote EXCEPT SELECT DISTINCT Fname FROM STUDENT WHERE city_code  =  "PIT"	voter_2
SELECT DISTINCT Carrier FROM phone WHERE Memory_in_G  >  32	phone_market
SELECT DISTINCT PRESIDENT_Vote FROM VOTING_RECORD WHERE Registration_Date  =  "08/30/2015"	voter_2
SELECT count(DISTINCT President_Vote) FROM VOTING_RECORD	voter_2
SELECT T1.FacID ,  count(*) FROM Faculty AS T1 JOIN Student AS T2 ON T1.FacID  =  T2.advisor GROUP BY T1.FacID	activity_1
SELECT count(*) FROM STUDENT	voter_2
SELECT store_id FROM customer GROUP BY store_id ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT cust_name FROM customer WHERE acc_type  =  'saving' INTERSECT SELECT cust_name FROM customer WHERE acc_type  =  'checking'	loan_1
SELECT max(stu_gpa) ,  avg(stu_gpa) ,  min(stu_gpa) ,  dept_code FROM student GROUP BY dept_code	college_1
SELECT title ,  directed_by FROM film WHERE film_id NOT IN (SELECT film_id FROM schedule)	cinema
SELECT count(*) FROM inventory WHERE store_id  =  1	sakila_1
SELECT sum(T1.Money_Requested) FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID WHERE T2.Height  >  1.85	entrepreneur
SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id  =  T2.cust_id GROUP BY T1.cust_name ORDER BY sum(T2.amount) DESC LIMIT 1	loan_1
SELECT count(*) ,  crs_code FROM CLASS GROUP BY crs_code	college_1
SELECT T1.activity_name ,  count(*) FROM Activity AS T1 JOIN Faculty_participates_in AS T2 ON T1.actID  =  T2.actID GROUP BY T1.actID	activity_1
SELECT T1.fname ,  T1.lname FROM Faculty AS T1 JOIN Student AS T2 ON T1.FacID  =  T2.advisor WHERE T2.fname  =  "Linda" AND T2.lname  =  "Smith"	activity_1
SELECT DISTINCT T1.customer_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status = "Packing"	tracking_orders
SELECT f_id FROM files WHERE formats  =  "mp4" INTERSECT SELECT f_id FROM song WHERE resolution  <  1000	music_1
SELECT T2.Date_of_Birth FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID WHERE T1.Investor  =  "Simon Woodroffe" OR T1.Investor  =  "Peter Jones"	entrepreneur
SELECT sum(stu_hrs) ,  dept_code FROM student GROUP BY dept_code	college_1
SELECT amount FROM payment ORDER BY amount DESC LIMIT 1	sakila_1
SELECT T4.crs_description ,  T4.crs_credit FROM CLASS AS T1 JOIN enroll AS T2 ON T1.class_code  =  T2.class_code JOIN student AS T3 ON T3.stu_num  =  T2.stu_num JOIN course AS T4 ON T4.crs_code  =  T1.crs_code WHERE T3.stu_lname  =  'Smithson'	college_1
SELECT count(*) ,  T3.product_id FROM orders AS T1 JOIN order_items AS T2 JOIN products AS T3 ON T1.order_id = T2.order_id AND T2.product_id = T3.product_id GROUP BY T3.product_id	tracking_orders
SELECT player ,  number_of_matches ,  SOURCE FROM injury_accident WHERE injury != 'Knee problem'	game_injury
SELECT count(DISTINCT driverId) FROM results WHERE raceId NOT IN( SELECT raceId FROM races WHERE YEAR != 2009 )	formula_1
SELECT T2.Name ,  T1.Company FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Money_Requested	entrepreneur
SELECT LOCATION FROM cinema WHERE openning_year  >=  2010 GROUP BY LOCATION ORDER BY count(*) DESC LIMIT 1	cinema
SELECT campus FROM campuses WHERE county  =  "Los Angeles"	csu_1
SELECT degrees FROM campuses AS T1 JOIN degrees AS T2 ON t1.id  =  t2.campus WHERE t1.campus  =  "San Jose State University" AND t2.year  =  2000	csu_1
SELECT Investor FROM entrepreneur GROUP BY Investor HAVING COUNT(*)  >=  2	entrepreneur
SELECT sum(city_population) FROM district WHERE city_area  >  (SELECT avg(city_area) FROM district)	store_product
SELECT DISTINCT artist_name FROM song WHERE languages  =  "english" EXCEPT SELECT DISTINCT artist_name FROM song WHERE rating  >  8	music_1
SELECT artist_name FROM artist WHERE country  =  "UK" INTERSECT SELECT T1.artist_name FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name WHERE T2.languages  =  "english"	music_1
SELECT sum(crs_credit) ,  dept_code FROM course GROUP BY dept_code	college_1
SELECT sum(T1.crs_credit) ,  T1.dept_code FROM course AS T1 JOIN CLASS AS T2 ON T1.crs_code  =  T2.crs_code GROUP BY T1.dept_code	college_1
SELECT T1.customer_name FROM customers AS T1 JOIN orders AS T2 JOIN order_items AS T3 JOIN products AS T4 ON T1.customer_id = T2.customer_id AND T2.order_id = T3.order_id AND T3.product_id = T4.product_id WHERE T4.product_name = "food" GROUP BY T1.customer_id HAVING count(*)  >=  1	tracking_orders
SELECT T2.emp_fname FROM CLASS AS T1 JOIN employee AS T2 ON T1.prof_num  =  T2.emp_num GROUP BY T1.prof_num HAVING count(*)  >  1	college_1
SELECT count(*) FROM professor AS T1 JOIN department AS T2 ON T1.dept_code  =  T2.dept_code WHERE DEPT_NAME  =  "Accounting"	college_1
SELECT name FROM swimmer ORDER BY meter_100	swimming
SELECT title ,  directed_by FROM film	cinema
SELECT T2.Name FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T2.Weight DESC LIMIT 1	entrepreneur
SELECT t1.store_name FROM store AS t1 JOIN store_district AS t2 ON t1.store_id  =  t2.store_id JOIN district AS t3 ON t2.district_id  =  t3.district_id WHERE t3.district_name  =  "Khanewal District"	store_product
SELECT T2.name FROM game AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.id JOIN injury_accident AS T3 ON T1.id  =  T3.game_id WHERE T3.player  =  'Walter Samuel' INTERSECT SELECT T2.name FROM game AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.id JOIN injury_accident AS T3 ON T1.id  =  T3.game_id WHERE T3.player  =  'Thiago Motta'	game_injury
SELECT T1.duration ,  T1.file_size ,  T1.formats FROM files AS T1 JOIN song AS T2 ON T1.f_id  =  T2.f_id WHERE T2.genre_is  =  "pop" ORDER BY T2.song_name	music_1
SELECT T1.campus FROM campuses AS T1 JOIN faculty AS T2 ON T1.id  =  T2.campus WHERE T2.year  =  2003 ORDER BY T2.faculty DESC LIMIT 1	csu_1
SELECT emp_fname ,  emp_lname FROM employee ORDER BY emp_dob LIMIT 1	college_1
SELECT count(DISTINCT FacID) FROM Faculty_participates_in	activity_1
SELECT amount FROM payment ORDER BY amount DESC LIMIT 1	sakila_1
SELECT DISTINCT invoice_details FROM invoices WHERE invoice_date < "1989-09-03" OR invoice_date > "2007-12-25"	tracking_orders
SELECT building FROM Faculty GROUP BY building ORDER BY count(*) DESC LIMIT 1	activity_1
SELECT Fname ,  Lname ,  phone FROM Faculty WHERE Sex  =  'F'	activity_1
SELECT T1.artist_name ,  T1.country FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name WHERE T2.resolution  >  900 GROUP BY T2.artist_name HAVING count(*)  >=  1	music_1
SELECT forename ,  surname FROM drivers WHERE nationality = "German"	formula_1
SELECT f_id FROM files WHERE formats  =  "mp4" UNION SELECT f_id FROM song WHERE resolution  >  720	music_1
SELECT T3.forename ,  T3.surname FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T1.name = "Australian Grand Prix" EXCEPT SELECT T3.forename ,  T3.surname FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T1.name = "Chinese Grand Prix"	formula_1
SELECT T1.customer_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1	tracking_orders
SELECT T1.crs_code FROM CLASS AS T1 JOIN enroll AS T2 ON T1.class_code  =  T2.class_code JOIN student AS T3 ON T3.stu_num  =  T2.stu_num WHERE T3.stu_lname  =  'Smithson'	college_1
SELECT Num_of_Component ,  name FROM furniture WHERE Num_of_Component  >  10	manufacturer
SELECT campusfee FROM campuses AS T1 JOIN csu_fees AS T2 ON T1.id  =  t2.campus WHERE t1.campus  =  "San Francisco State University" AND T2.year  =  1996	csu_1
SELECT languages FROM song GROUP BY languages ORDER BY count(*) DESC LIMIT 1	music_1
SELECT T1.lname FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID  =  T2.facID JOIN activity AS T3 ON T2.actid  =  T2.actid WHERE T3.activity_name  =  'Canoeing' INTERSECT SELECT T1.lname FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID  =  T2.facID JOIN activity AS T3 ON T2.actid  =  T2.actid WHERE T3.activity_name  =  'Kayaking'	activity_1
SELECT T1.customer_id FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status = "On Road" INTERSECT SELECT T1.customer_id FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status = "Shipped"	tracking_orders
SELECT Investor ,  COUNT(*) FROM entrepreneur GROUP BY Investor	entrepreneur
SELECT Carrier FROM phone GROUP BY Carrier ORDER BY COUNT(*) DESC LIMIT 1	phone_market
SELECT T1.crs_code FROM CLASS AS T1 JOIN enroll AS T2 ON T1.class_code  =  T2.class_code JOIN student AS T3 ON T3.stu_num  =  T2.stu_num WHERE T3.stu_lname  =  'Smithson'	college_1
SELECT t3.headquartered_city FROM store AS t1 JOIN store_district AS t2 ON t1.store_id  =  t2.store_id JOIN district AS t3 ON t2.district_id  =  t3.district_id WHERE t1.store_name  =  "Blackville"	store_product
SELECT T1.fname ,  T1.lname FROM Faculty AS T1 JOIN Student AS T2 ON T1.FacID  =  T2.advisor GROUP BY T1.FacID ORDER BY count(*) DESC LIMIT 1	activity_1
SELECT f_id ,  genre_is ,  artist_name FROM song WHERE languages  =   "english" ORDER BY rating	music_1
SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id  =  T2.cust_id GROUP BY T1.cust_name ORDER BY sum(T2.amount)	loan_1
SELECT T1.title ,  T2.inventory_id FROM film AS T1 JOIN inventory AS T2 ON T1.film_id  =  T2.film_id JOIN rental AS T3 ON T2.inventory_id  =  T3.inventory_id GROUP BY T2.inventory_id ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT count(DISTINCT brand) FROM camera_lens	mountain_photos
SELECT t1.name ,  t2.price_in_dollar FROM furniture AS t1 JOIN furniture_manufacte AS t2 ON t1.Furniture_ID  =  t2.Furniture_ID	manufacturer
SELECT district_name FROM district ORDER BY city_population DESC LIMIT 1	store_product
SELECT avg(T2.fastestlapspeed) ,  T1.name ,  T1.year FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year > 2014 GROUP BY T1.name ORDER BY T1.year	formula_1
SELECT T1.name ,  count(*) FROM user_profiles AS T1 JOIN tweets AS T2 ON T1.uid  =  T2.uid GROUP BY T2.uid HAVING count(*)  >  1	twitter_1
SELECT count(*) ,  formats FROM files GROUP BY formats	music_1
SELECT song_name FROM song WHERE languages  =  "english"	music_1
SELECT rank ,  count(*) FROM Faculty GROUP BY rank	activity_1
SELECT DISTINCT T1.forename ,  T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.milliseconds < 93000	formula_1
SELECT T2.dept_name FROM course AS T1 JOIN department AS T2 ON T1.dept_code  =  T2.dept_code WHERE T1.crs_description LIKE '%Statistics%'	college_1
SELECT DISTINCT T1.first_name ,  T1.last_name FROM staff AS T1 JOIN rental AS T2 ON T1.staff_id  =  T2.staff_id JOIN customer AS T3 ON T2.customer_id  =  T3.customer_id WHERE T3.first_name  =  'APRIL' AND T3.last_name  =  'BURNS'	sakila_1
SELECT t1.product FROM product AS t1 JOIN store_product AS t2 ON t1.product_id  =  t2.product_id JOIN store AS t3 ON t2.store_id  =  t3.store_id WHERE t3.store_name  =  "Miramichi"	store_product
SELECT DISTINCT name FROM races ORDER BY name DESC	formula_1
SELECT Membership_card FROM member GROUP BY Membership_card HAVING count(*)  >  5	coffee_shop
SELECT dept_address FROM department WHERE dept_name  =  'History'	college_1
SELECT emp_jobcode ,  count(*) FROM employee GROUP BY emp_jobcode ORDER BY count(*) DESC LIMIT 1	college_1
SELECT T1.artist_name ,  T1.country FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name ORDER BY T2.rating DESC LIMIT 3	music_1
SELECT count(*) FROM campuses	csu_1
SELECT count(*) FROM bank	loan_1
SELECT count(DISTINCT dept_name) ,  school_code FROM department GROUP BY school_code HAVING count(DISTINCT dept_name)  <  5	college_1
SELECT T1.stu_fname ,  T1.stu_lname FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num  =  T2.stu_num WHERE T2.enroll_grade  =  'C' OR T2.enroll_grade  =  'A'	college_1
SELECT T2.directed_by FROM schedule AS T1 JOIN film AS T2 ON T1.film_id  =  T2.film_id GROUP BY T2.directed_by ORDER BY sum(T1.show_times_per_day) DESC LIMIT 1	cinema
SELECT max(T2.fastestlapspeed) FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2008 AND T1.name = "Monaco Grand Prix"	formula_1
SELECT avg(no_of_customers) FROM bank WHERE state  =  'Utah'	loan_1
SELECT T1.fname ,  T1.lname FROM Student AS T1 JOIN Participates_in AS T2 ON T1.StuID  =  T2.StuID GROUP BY T1.StuID ORDER BY count(*) DESC LIMIT 1	activity_1
SELECT max(T2.fastestlapspeed) FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2008 AND T1.name = "Monaco Grand Prix"	formula_1
SELECT artist_name FROM artist WHERE country  =  "UK" INTERSECT SELECT T1.artist_name FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name WHERE T2.languages  =  "english"	music_1
SELECT sum(T1.Money_Requested) FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID WHERE T2.Height  >  1.85	entrepreneur
SELECT T2.dept_name FROM student AS T1 JOIN department AS T2 ON T1.dept_code  =  T2.dept_code ORDER BY stu_gpa LIMIT 1	college_1
SELECT Major FROM STUDENT GROUP BY major ORDER BY count(*) DESC LIMIT 1	voter_2
SELECT Weight FROM people ORDER BY Height ASC LIMIT 1	entrepreneur
SELECT shop_id ,  address FROM shop WHERE score  <  (SELECT avg(score) FROM shop)	coffee_shop
SELECT payment_date FROM payment ORDER BY payment_date ASC LIMIT 1	sakila_1
SELECT DISTINCT LOCATION FROM cinema	cinema
SELECT T1.customer_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.date_order_placed >= "2009-01-01" AND T2.date_order_placed <= "2010-01-01"	tracking_orders
SELECT avg(Age) FROM STUDENT WHERE Sex  =  "F"	voter_2
SELECT name ,  openning_year FROM cinema ORDER BY openning_year DESC	cinema
SELECT dept_name FROM department ORDER BY dept_name	college_1
SELECT nationality ,  count(*) FROM swimmer GROUP BY nationality HAVING count(*)  >  1	swimming
SELECT count(DISTINCT dept_address) ,  school_code FROM department GROUP BY school_code	college_1
SELECT T2.emp_fname ,  T3.crs_description FROM CLASS AS T1 JOIN employee AS T2 ON T1.prof_num  =  T2.emp_num JOIN course AS T3 ON T1.crs_code  =  T3.crs_code	college_1
SELECT T2.dept_name ,  T1.dept_code FROM professor AS T1 JOIN department AS T2 ON T1.dept_code  =  T2.dept_code WHERE T1.prof_high_degree  =  'Ph.D.' GROUP BY T1.dept_code ORDER BY count(*) DESC LIMIT 1	college_1
SELECT count(*) FROM follows GROUP BY f1	twitter_1
SELECT DISTINCT stu_fname FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num  =  T2.stu_num WHERE enroll_grade  =  'C'	college_1
SELECT avg(T2.stu_gpa) FROM enroll AS T1 JOIN student AS T2 ON T1.stu_num  =  T2.stu_num JOIN CLASS AS T3 ON T1.class_code  =  T3.class_code WHERE T3.crs_code  =  'ACCT-211'	college_1
SELECT sum(market_rate) FROM furniture ORDER BY market_rate DESC LIMIT 2	manufacturer
SELECT DISTINCT stu_fname FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num  =  T2.stu_num WHERE enroll_grade  =  'C'	college_1
SELECT title ,  rental_rate FROM film ORDER BY rental_rate DESC LIMIT 1	sakila_1
SELECT T2.Name ,  COUNT(*) FROM debate_people AS T1 JOIN people AS T2 ON T1.Affirmative  =  T2.People_ID GROUP BY T2.Name	debate
SELECT Market_Rate ,  name FROM furniture WHERE Furniture_ID NOT IN (SELECT Furniture_ID FROM furniture_manufacte)	manufacturer
SELECT FacID FROM Faculty_participates_in INTERSECT SELECT advisor FROM Student	activity_1
SELECT DISTINCT President_Vote ,  VICE_President_Vote FROM VOTING_RECORD	voter_2
SELECT T1.name FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.country = "Spain" AND T1.year > 2017	formula_1
SELECT campus FROM campuses WHERE county  =  "Los Angeles" AND YEAR  >  1950	csu_1
SELECT T3.Name FROM debate_people AS T1 JOIN debate AS T2 ON T1.Debate_ID  =  T2.Debate_ID JOIN people AS T3 ON T1.Affirmative  =  T3.People_ID WHERE T2.Num_of_Audience  >  200	debate
SELECT Advisor FROM STUDENT GROUP BY Advisor HAVING COUNT(*)  >  2	voter_2
SELECT T2.name FROM film AS T1 JOIN LANGUAGE AS T2 ON T1.language_id  =  T2.language_id WHERE T1.title  =  'AIRPORT POLLOCK'	sakila_1
SELECT DISTINCT T1.artist_name ,  T1.country FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name WHERE T2.rating  >  9	music_1
SELECT sum(num_of_component) FROM furniture	manufacturer
SELECT t1.name ,  t1.capacity FROM stadium AS t1 JOIN event AS t2 ON t1.id  =  t2.stadium_id WHERE t2.name  =  'World Junior'	swimming
SELECT DISTINCT T1.lname FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID  =  T2.facID JOIN activity AS T3 ON T2.actid  =  T2.actid WHERE T3.activity_name  =  'Canoeing' OR T3.activity_name  =  'Kayaking'	activity_1
SELECT count(*) FROM phone	phone_market
SELECT f_id FROM song WHERE resolution  >  (SELECT max(resolution) FROM song WHERE rating  <  8)	music_1
SELECT count(*) FROM csu_fees WHERE campusfee  >  (SELECT avg(campusfee) FROM csu_fees)	csu_1
SELECT building FROM Faculty GROUP BY building ORDER BY count(*) DESC LIMIT 1	activity_1
SELECT T2.Name FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID	entrepreneur
SELECT max(Age) FROM STUDENT	voter_2
SELECT title ,  directed_by FROM film	cinema
SELECT class_code FROM CLASS WHERE class_room  =  'KLR209'	college_1
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "Australian Grand Prix" AND YEAR = 2009	formula_1
SELECT LOCATION FROM cinema WHERE capacity  >  300 GROUP BY LOCATION HAVING count(*)  >=  2	cinema
SELECT avg(credit_score) FROM customer WHERE cust_id IN (SELECT cust_id FROM loan)	loan_1
SELECT count(*) FROM artist WHERE country  =  "Bangladesh"	music_1
SELECT count(*) ,  formats FROM files GROUP BY formats	music_1
SELECT cust_name FROM customer ORDER BY acc_bal	loan_1
SELECT T3.EMP_FNAME ,  T3.EMP_LNAME FROM professor AS T1 JOIN department AS T2 ON T1.dept_code  =  T2.dept_code JOIN employee AS T3 ON T1.EMP_NUM  =  T3.EMP_NUM WHERE DEPT_NAME  =  "Biology"	college_1
SELECT name ,  manufacturer_id FROM manufacturer ORDER BY open_year	manufacturer
SELECT count(*) FROM files WHERE duration LIKE "4:%"	music_1
SELECT order_id FROM shipments WHERE shipment_date  =  (SELECT max(shipment_date) FROM shipments)	tracking_orders
SELECT T1.customer_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.date_order_placed >= "2009-01-01" AND T2.date_order_placed <= "2010-01-01"	tracking_orders
SELECT count(*) FROM professor AS T1 JOIN department AS T2 ON T1.dept_code  =  T2.dept_code WHERE T2.dept_name  =  'Accounting' OR T2.dept_name  =  'Biology'	college_1
SELECT T2.f1 FROM user_profiles AS T1 JOIN follows AS T2 ON T1.uid  =  T2.f2 WHERE T1.name  =  "Mary" INTERSECT SELECT T2.f1 FROM user_profiles AS T1 JOIN follows AS T2 ON T1.uid  =  T2.f2 WHERE T1.name  =  "Susan"	twitter_1
SELECT DISTINCT T1.first_name ,  T1.last_name FROM staff AS T1 JOIN rental AS T2 ON T1.staff_id  =  T2.staff_id JOIN customer AS T3 ON T2.customer_id  =  T3.customer_id WHERE T3.first_name  =  'APRIL' AND T3.last_name  =  'BURNS'	sakila_1
SELECT T1.emp_fname FROM employee AS T1 JOIN CLASS AS T2 ON T1.emp_num  =  T2.prof_num WHERE crs_code  =  'CIS-220' INTERSECT SELECT T1.emp_fname FROM employee AS T1 JOIN CLASS AS T2 ON T1.emp_num  =  T2.prof_num WHERE crs_code  =  'QM-261'	college_1
SELECT building FROM Faculty WHERE rank  =  "Professor" GROUP BY building HAVING count(*)  >=  10	activity_1
SELECT DISTINCT T1.Major FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  T2.Treasurer_Vote	voter_2
SELECT t1.name ,  t1.nationality FROM swimmer AS t1 JOIN record AS t2 ON t1.id  =  t2.swimmer_id WHERE RESULT  =  'Win' GROUP BY t2.swimmer_id HAVING count(*)  >  1	swimming
SELECT name FROM camera_lens WHERE name LIKE "%Digital%"	mountain_photos
SELECT season ,  home_team ,  away_team FROM game	game_injury
SELECT text FROM tweets ORDER BY createdate	twitter_1
SELECT DISTINCT T1.file_size ,  T1.formats FROM files AS T1 JOIN song AS T2 ON T1.f_id  =  T2.f_id WHERE T2.resolution  <  800	music_1
SELECT name FROM user_profiles WHERE email LIKE '%superstar%' OR email LIKE '%edu%'	twitter_1
SELECT T1.artist_name ,  count(*) FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name WHERE T2.languages  =  "english" GROUP BY T2.artist_name HAVING count(*)  >=  1	music_1
SELECT artist_name FROM song WHERE resolution  >  500 GROUP BY languages ORDER BY count(*) DESC LIMIT 1	music_1
SELECT T2.emp_fname FROM CLASS AS T1 JOIN employee AS T2 ON T1.prof_num  =  T2.emp_num GROUP BY T1.prof_num HAVING count(*)  >  1	college_1
SELECT avg(capacity) ,  min(capacity) ,  max(capacity) FROM cinema WHERE openning_year  >=  2011	cinema
SELECT t4.name FROM swimmer AS t1 JOIN record AS t2 ON t1.id  =  t2.swimmer_id JOIN event AS t3 ON t2.event_id  =  t3.id JOIN stadium AS t4 ON t4.id  =  t3.stadium_id WHERE t1.nationality  =  'Australia'	swimming
SELECT DISTINCT T1.name FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.country = "Spain" AND T1.year > 2000	formula_1
SELECT DISTINCT directed_by FROM film	cinema
SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id  =  T2.cust_id GROUP BY T1.cust_name ORDER BY sum(T2.amount)	loan_1
SELECT cust_name FROM customer WHERE acc_type  =  'saving' INTERSECT SELECT cust_name FROM customer WHERE acc_type  =  'checking'	loan_1
SELECT avg(pages_per_minute_color) FROM product	store_product
SELECT count(DISTINCT last_name) FROM actor	sakila_1
SELECT count(DISTINCT dept_address) FROM department WHERE school_code  =  'BUS'	college_1
SELECT order_item_id FROM order_items WHERE product_id = 11	tracking_orders
SELECT DISTINCT T1.customer_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status = "Packing"	tracking_orders
SELECT name ,  email FROM user_profiles WHERE followers  >  1000	twitter_1
SELECT title FROM film WHERE special_features LIKE '%Deleted Scenes%'	sakila_1
SELECT Investor FROM entrepreneur GROUP BY Investor ORDER BY COUNT(*) DESC LIMIT 1	entrepreneur
SELECT T2.emp_fname ,  T1.crs_code FROM CLASS AS T1 JOIN employee AS T2 ON T1.prof_num  =  T2.emp_num	college_1
SELECT T2.dept_name ,  avg(T1.stu_gpa) FROM student AS T1 JOIN department AS T2 ON T1.dept_code  =  T2.dept_code GROUP BY T1.dept_code ORDER BY avg(T1.stu_gpa) DESC LIMIT 1	college_1
SELECT t1.campusfee FROM csu_fees AS t1 JOIN campuses AS t2 ON t1.campus  =  t2.id WHERE t2.campus  =  "San Francisco State University" AND t1.year  =  2000	csu_1
SELECT count(*) ,  T1.school_code FROM department AS T1 JOIN professor AS T2 ON T1.dept_code  =  T2.dept_code GROUP BY T1.school_code	college_1
SELECT country ,  count(*) FROM stadium GROUP BY country	swimming
SELECT count(DISTINCT nationality) FROM swimmer	swimming
SELECT LOCATION FROM cinema WHERE capacity  >  300 GROUP BY LOCATION HAVING count(*)  >  1	cinema
SELECT T1.school_code FROM department AS T1 JOIN professor AS T2 ON T1.dept_code  =  T2.dept_code GROUP BY T1.school_code ORDER BY count(*) LIMIT 1	college_1
SELECT faculty FROM faculty AS T1 JOIN campuses AS T2 ON T1.campus  =  T2.id WHERE T1.year  =  2004 AND T2.campus  =  "San Francisco State University"	csu_1
SELECT count(*) ,  gender FROM artist GROUP BY gender	music_1
SELECT T3.Name ,  T2.Date ,  T2.Venue FROM debate_people AS T1 JOIN debate AS T2 ON T1.Debate_ID  =  T2.Debate_ID JOIN people AS T3 ON T1.Affirmative  =  T3.People_ID	debate
SELECT T2.emp_fname ,  T1.prof_office FROM professor AS T1 JOIN employee AS T2 ON T1.emp_num  =  T2.emp_num ORDER BY T2.emp_fname	college_1
SELECT DISTINCT rank FROM Faculty	activity_1
SELECT name ,  average_attendance ,  total_attendance FROM stadium EXCEPT SELECT T2.name ,  T2.average_attendance ,  T2.total_attendance FROM game AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.id JOIN injury_accident AS T3 ON T1.id  =  T3.game_id	game_injury
SELECT count(*) FROM employee AS T1 JOIN CLASS AS T2 ON T1.EMP_NUM  =  T2.PROF_NUM WHERE T1.EMP_LNAME  =  'Graztevski'	college_1
SELECT T1.artist_name ,  count(*) FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name GROUP BY T2.artist_name ORDER BY count(*) DESC LIMIT 3	music_1
SELECT count(DISTINCT class_section) FROM CLASS WHERE crs_code  =  'ACCT-211'	college_1
SELECT FacID FROM Faculty WHERE Sex  =  'M'	activity_1
SELECT LOCATION FROM cinema EXCEPT SELECT LOCATION FROM cinema WHERE capacity  >  800	cinema
SELECT campusfee FROM campuses AS T1 JOIN csu_fees AS T2 ON T1.id  =  t2.campus WHERE t1.campus  =  "San Jose State University" AND T2.year  =  1996	csu_1
SELECT FacID FROM Faculty EXCEPT SELECT FacID FROM Faculty_participates_in	activity_1
SELECT Name FROM phone WHERE Phone_id NOT IN (SELECT Phone_ID FROM phone_market)	phone_market
SELECT T1.bname FROM bank AS T1 JOIN loan AS T2 ON T1.branch_id  =  T2.branch_id GROUP BY T1.bname ORDER BY sum(T2.amount) DESC LIMIT 1	loan_1
SELECT campusfee FROM campuses AS T1 JOIN csu_fees AS T2 ON T1.id  =  t2.campus WHERE t1.campus  =  "San Jose State University" AND T2.year  =  1996	csu_1
SELECT sum(amount) ,  T1.bname FROM bank AS T1 JOIN loan AS T2 ON T1.branch_id  =  T2.branch_id GROUP BY T1.bname	loan_1
SELECT product FROM product WHERE max_page_size  =  "A4" AND pages_per_minute_color  <  5	store_product
SELECT sum(T2.amount) FROM bank AS T1 JOIN loan AS T2 ON T1.branch_id  =  T2.branch_id WHERE T1.state  =  'New York'	loan_1
SELECT count(DISTINCT UID) FROM tweets	twitter_1
SELECT T1.rank ,  count(*) FROM Faculty AS T1 JOIN Student AS T2 ON T1.FacID  =  T2.advisor GROUP BY T1.rank	activity_1
SELECT rank ,  sex ,  count(*) FROM Faculty GROUP BY rank ,  sex	activity_1
SELECT title FROM film WHERE rating  =  'R'	sakila_1
SELECT T1.order_id FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id ORDER BY count(*) DESC LIMIT 1	tracking_orders
SELECT campus FROM degrees GROUP BY campus ORDER BY sum(degrees) DESC LIMIT 1	csu_1
SELECT Major FROM STUDENT WHERE Sex  =  "M"	voter_2
SELECT Major FROM STUDENT WHERE Sex  =  "F" GROUP BY major ORDER BY count(*) DESC LIMIT 1	voter_2
SELECT sum(acc_bal) FROM customer WHERE state  =  'Utah' OR state  =  'Texas'	loan_1
SELECT payment_date FROM payment WHERE amount  >  10 UNION SELECT T1.payment_date FROM payment AS T1 JOIN staff AS T2 ON T1.staff_id  =  T2.staff_id WHERE T2.first_name  =  'Elsa'	sakila_1
SELECT T1.id ,  T1.name FROM mountain AS T1 JOIN photos AS T2 ON T1.id  =  T2.mountain_id WHERE T1.height  >  4000	mountain_photos
SELECT T1.FacID ,  count(*) FROM Faculty AS T1 JOIN Student AS T2 ON T1.FacID  =  T2.advisor GROUP BY T1.FacID	activity_1
SELECT T1.bname ,  T1.city FROM bank AS T1 JOIN loan AS T2 ON T1.branch_id  =  T2.branch_id WHERE T2.loan_type  =  'Business'	loan_1
SELECT FacID FROM Faculty EXCEPT SELECT advisor FROM Student	activity_1
SELECT dept_address FROM department WHERE dept_name  =  'History'	college_1
SELECT count(*) FROM VOTING_RECORD	voter_2
SELECT count(*) ,  T3.school_code FROM CLASS AS T1 JOIN course AS T2 ON T1.crs_code  =  T2.crs_code JOIN department AS T3 ON T2.dept_code  =  T3.dept_code GROUP BY T3.school_code	college_1
SELECT count(*) ,  dept_code FROM professor WHERE prof_high_degree  =  'Ph.D.' GROUP BY dept_code	college_1
SELECT sum(city_population) FROM district WHERE city_area  >  (SELECT avg(city_area) FROM district)	store_product
SELECT T1.first_name ,  T1.last_name ,  T1.customer_id FROM customer AS T1 JOIN payment AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id ORDER BY sum(amount) ASC LIMIT 1	sakila_1
SELECT name FROM races WHERE TIME > "12:00:00" OR TIME < "09:00:00"	formula_1
SELECT dept_name FROM department ORDER BY dept_name	college_1
SELECT average_attendance FROM stadium WHERE capacity_percentage  >  100	game_injury
SELECT count(DISTINCT city) FROM bank	loan_1
SELECT T1.emp_fname FROM employee AS T1 JOIN professor AS T2 ON T1.emp_num  =  T2.emp_num JOIN department AS T3 ON T2.dept_code  =  T3.dept_code WHERE T3.dept_name  =  'History' EXCEPT SELECT T4.emp_fname FROM employee AS T4 JOIN CLASS AS T5 ON T4.emp_num  =  T5.prof_num	college_1
SELECT max(T1.duration) ,  max(T2.resolution) ,  T2.languages FROM files AS T1 JOIN song AS T2 ON T1.f_id  =  T2.f_id GROUP BY T2.languages ORDER BY T2.languages	music_1
SELECT T2.city ,  count(*) ,  T1.city_id FROM address AS T1 JOIN city AS T2 ON T1.city_id  =  T2.city_id GROUP BY T1.city_id ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT count(DISTINCT dept_name) FROM department	college_1
SELECT sum(acc_bal) ,  state FROM customer WHERE credit_score  >  100 GROUP BY state	loan_1
SELECT product FROM product WHERE product != (SELECT max_page_size FROM product GROUP BY max_page_size ORDER BY count(*) DESC LIMIT 1)	store_product
SELECT T1.driverid ,  count(*) FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid GROUP BY T1.driverid HAVING count(*)  <=  30	formula_1
SELECT building ,  count(*) FROM Faculty GROUP BY building	activity_1
SELECT address FROM member WHERE age  <  30 INTERSECT SELECT address FROM member WHERE age  >  40	coffee_shop
SELECT T1.country FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name WHERE T1.gender  =  "Female" AND T2.languages  =  "bangla"	music_1
SELECT stu_gpa ,  stu_phone ,  stu_fname FROM student ORDER BY stu_gpa DESC LIMIT 5	college_1
SELECT count(DISTINCT state) FROM bank	loan_1
SELECT name FROM races WHERE YEAR = 2017	formula_1
SELECT max(followers) ,  sum(followers) FROM user_profiles	twitter_1
SELECT DISTINCT name FROM races WHERE YEAR BETWEEN 2014 AND 2017	formula_1
SELECT name ,  member_id FROM member WHERE Membership_card  =  'Black' OR age  <  30	coffee_shop
SELECT T1.stu_fname ,  T1.stu_lname FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num  =  T2.stu_num WHERE T2.enroll_grade  =  'C' OR T2.enroll_grade  =  'A'	college_1
SELECT directed_by ,  count(*) FROM film GROUP BY directed_by	cinema
SELECT T3.EMP_FNAME ,  T3.EMP_LNAME FROM professor AS T1 JOIN department AS T2 ON T1.dept_code  =  T2.dept_code JOIN employee AS T3 ON T1.EMP_NUM  =  T3.EMP_NUM WHERE DEPT_NAME  =  "Biology"	college_1
SELECT T2.title ,  max(T1.price) FROM schedule AS T1 JOIN film AS T2 ON T1.film_id  =  T2.film_id GROUP BY T1.film_id	cinema
SELECT T1.activity_name FROM Activity AS T1 JOIN Participates_in AS T2 ON T1.actID  =  T2.actID GROUP BY T1.actID ORDER BY count(*) DESC LIMIT 1	activity_1
SELECT Investor FROM entrepreneur WHERE Money_Requested  >  140000 INTERSECT SELECT Investor FROM entrepreneur WHERE Money_Requested  <  120000	entrepreneur
SELECT T1.stu_fname FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num  =  T2.stu_num JOIN CLASS AS T3 ON T2.class_code  =  T3.class_code WHERE T3.crs_code  =  'ACCT-211' AND T1.stu_lname LIKE 'S%'	college_1
SELECT avg(T1.Age) FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  SECRETARY_Vote WHERE T1.city_code  =  "NYC" AND T2.Election_Cycle  =  "Spring"	voter_2
SELECT T2.first_name ,  T2.last_name ,  T2.actor_id FROM film_actor AS T1 JOIN actor AS T2 ON T1.actor_id  =  T2.actor_id GROUP BY T2.actor_id ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT max(T2.resolution) ,  min(T2.resolution) FROM files AS T1 JOIN song AS T2 ON T1.f_id  =  T2.f_id WHERE T1.duration LIKE "3:%"	music_1
SELECT T2.bname FROM loan AS T1 JOIN bank AS T2 ON T1.branch_id  =  T2.branch_id JOIN customer AS T3 ON T1.cust_id  =  T3.cust_id WHERE T3.credit_score  <  100	loan_1
SELECT name ,  furniture_id FROM furniture ORDER BY market_rate DESC LIMIT 1	manufacturer
SELECT f_id FROM song WHERE resolution  >  (SELECT avg(resolution) FROM song WHERE genre_is  =  "modern")	music_1
SELECT DISTINCT driverid ,  STOP FROM pitstops WHERE duration  <  (SELECT max(duration) FROM pitstops WHERE raceid  =  841)	formula_1
SELECT T1.name FROM constructors AS T1 JOIN constructorstandings AS T2 ON T1.constructorid = T2.constructorid WHERE T1.nationality = "Japanese" AND T2.points > 5	formula_1
SELECT T1.emp_fname FROM employee AS T1 JOIN professor AS T2 ON T1.emp_num  =  T2.emp_num JOIN department AS T3 ON T2.dept_code  =  T3.dept_code WHERE T3.dept_name  =  'History' EXCEPT SELECT T4.emp_fname FROM employee AS T4 JOIN CLASS AS T5 ON T4.emp_num  =  T5.prof_num	college_1
SELECT count(*) FROM employee	college_1
SELECT count(*) FROM csu_fees WHERE campusfee  >  (SELECT avg(campusfee) FROM csu_fees)	csu_1
SELECT g_name ,  rating FROM genre ORDER BY g_name	music_1
SELECT name FROM stadium WHERE id NOT IN (SELECT stadium_id FROM event)	swimming
SELECT YEAR FROM degrees GROUP BY YEAR ORDER BY sum(degrees) DESC LIMIT 1	csu_1
SELECT count(*) FROM film WHERE title LIKE "%Dummy%"	cinema
SELECT T1.season ,  T2.name FROM game AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.id JOIN injury_accident AS T3 ON T1.id  =  T3.game_id WHERE T3.injury  =  'Foot injury' OR T3.injury  =  'Knee problem'	game_injury
SELECT DISTINCT building FROM Faculty	activity_1
SELECT count(*) FROM camera_lens WHERE focal_length_mm  >  15	mountain_photos
SELECT city_code FROM STUDENT GROUP BY city_code ORDER BY count(*) DESC LIMIT 1	voter_2
SELECT avg(campusfee) FROM csu_fees WHERE YEAR  =  2005	csu_1
SELECT T1.emp_lname ,  T2.prof_office FROM employee AS T1 JOIN professor AS T2 ON T1.emp_num  =  T2.emp_num JOIN department AS T3 ON T2.dept_code  =  T3.dept_code WHERE T3.dept_name  =  'History'	college_1
SELECT country FROM stadium GROUP BY country HAVING count(*)  <=  3	swimming
SELECT T1.artist_name ,  T1.country FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name ORDER BY T2.rating DESC LIMIT 3	music_1
SELECT cust_name FROM customer WHERE credit_score  <  (SELECT avg(credit_score) FROM customer)	loan_1
SELECT Name FROM People ORDER BY Weight ASC	entrepreneur
SELECT T3.stu_fname FROM CLASS AS T1 JOIN enroll AS T2 ON T1.class_code  =  T2.class_code JOIN student AS T3 ON T2.stu_num  =  T3.stu_num WHERE T1.crs_code  =  'ACCT-211' AND T2.enroll_grade  =  'C'	college_1
SELECT DISTINCT T2.product_id FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id WHERE T1.date_order_placed >= "1975-01-01" AND T1.date_order_placed <= "1976-01-01"	tracking_orders
SELECT T1.customer_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1	tracking_orders
SELECT T1.FacID FROM Faculty AS T1 JOIN Student AS T2 ON T1.FacID  =  T2.advisor GROUP BY T1.FacID HAVING count(*)  >=  2	activity_1
SELECT invoice_number FROM invoices WHERE invoice_date < "1989-09-03" OR invoice_date > "2007-12-25"	tracking_orders
SELECT sum(amount) FROM payment	sakila_1
SELECT t1.store_name FROM store AS t1 JOIN store_district AS t2 ON t1.store_id  =  t2.store_id JOIN district AS t3 ON t2.district_id  =  t3.district_id WHERE t3.district_name  =  "Khanewal District"	store_product
SELECT cust_name ,  acc_bal FROM customer WHERE cust_name LIKE '%a%'	loan_1
SELECT T1.activity_name FROM Activity AS T1 JOIN Participates_in AS T2 ON T1.actID  =  T2.actID GROUP BY T1.actID ORDER BY count(*) DESC LIMIT 1	activity_1
SELECT T2.driverid ,  T3.forename FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid  =  T3.driverid WHERE T1.name = "Australian Grand Prix" INTERSECT SELECT T2.driverid ,  T3.forename FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid  =  T3.driverid WHERE T1.name = "Chinese Grand Prix"	formula_1
SELECT campus FROM campuses WHERE YEAR  <  1800	csu_1
SELECT cust_name FROM customer ORDER BY credit_score LIMIT 1	loan_1
SELECT T2.emp_fname ,  T4.prof_office ,  T3.crs_description ,  T5.dept_name FROM CLASS AS T1 JOIN employee AS T2 ON T1.prof_num  =  T2.emp_num JOIN course AS T3 ON T1.crs_code  =  T3.crs_code JOIN professor AS T4 ON T2.emp_num  =  T4.emp_num JOIN department AS T5 ON T4.dept_code  =  T5.dept_code	college_1
SELECT t1.product FROM product AS t1 JOIN store_product AS t2 ON t1.product_id  =  t2.product_id JOIN store AS t3 ON t2.store_id  =  t3.store_id WHERE t3.store_name  =  "Miramichi"	store_product
SELECT avg(Age) FROM STUDENT WHERE Sex  =  "F"	voter_2
SELECT Election_Cycle ,  count(*) FROM VOTING_RECORD GROUP BY Election_Cycle	voter_2
SELECT sum(T2.amount) FROM bank AS T1 JOIN loan AS T2 ON T1.branch_id  =  T2.branch_id WHERE T1.state  =  'New York'	loan_1
SELECT sum(crs_credit) ,  dept_code FROM course GROUP BY dept_code	college_1
SELECT avg(Money_Requested) FROM entrepreneur	entrepreneur
SELECT T1.first_name ,  T1.last_name FROM customer AS T1 JOIN rental AS T2 ON T1.customer_id  =  T2.customer_id ORDER BY T2.rental_date ASC LIMIT 1	sakila_1
SELECT emp_fname FROM employee WHERE emp_jobcode  =  'PROF' ORDER BY emp_dob	college_1
SELECT Major FROM STUDENT GROUP BY Major HAVING COUNT(*)  <  3	voter_2
SELECT DISTINCT PRESIDENT_Vote FROM VOTING_RECORD WHERE Registration_Date  =  "08/30/2015"	voter_2
SELECT name FROM stadium WHERE name LIKE "%Bank%"	game_injury
SELECT count(DISTINCT school_code) FROM department	college_1
SELECT count(*) FROM tweets	twitter_1
SELECT T1.customer_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status = "On Road" INTERSECT SELECT T1.customer_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status = "Shipped"	tracking_orders
SELECT f_id FROM song WHERE resolution  >  (SELECT avg(resolution) FROM song WHERE genre_is  =  "modern")	music_1
SELECT DISTINCT LOCATION FROM cinema	cinema
SELECT T1.driverid ,  T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid  =  T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.year > 2010 GROUP BY T1.driverid ORDER BY count(*) DESC LIMIT 1	formula_1
SELECT count(*) FROM cinema	cinema
SELECT max(T2.fastestlapspeed) ,  T1.name ,  T1.year FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year > 2014 GROUP BY T1.name ORDER BY T1.year	formula_1
SELECT T1.activity_name FROM Activity AS T1 JOIN Faculty_participates_in AS T2 ON T1.actID  =  T2.actID GROUP BY T1.actID ORDER BY count(*) DESC LIMIT 1	activity_1
SELECT T1.date_order_placed FROM orders AS T1 JOIN shipments AS T2 ON T1.order_id = T2.order_id WHERE T2.invoice_number = 10	tracking_orders
SELECT count(*) FROM Faculty	activity_1
SELECT T2.emp_fname ,  T3.crs_description FROM CLASS AS T1 JOIN employee AS T2 ON T1.prof_num  =  T2.emp_num JOIN course AS T3 ON T1.crs_code  =  T3.crs_code	college_1
SELECT T2.song_name FROM files AS T1 JOIN song AS T2 ON T1.f_id  =  T2.f_id WHERE T1.duration LIKE "4:%" UNION SELECT song_name FROM song WHERE languages  =  "english"	music_1
SELECT DISTINCT T1.file_size ,  T1.formats FROM files AS T1 JOIN song AS T2 ON T1.f_id  =  T2.f_id WHERE T2.resolution  <  800	music_1
SELECT forename ,  surname FROM drivers WHERE nationality = "German"	formula_1
SELECT languages FROM song GROUP BY languages ORDER BY count(*) DESC LIMIT 1	music_1
SELECT count(*) FROM city AS T1 JOIN country AS T2 ON T1.country_id  =  T2.country_id WHERE T2.country  =  'Australia'	sakila_1
SELECT T1.name ,  T1.partitionid FROM user_profiles AS T1 JOIN tweets AS T2 ON T1.uid  =  T2.uid GROUP BY T2.uid HAVING count(*)  <  2	twitter_1
SELECT T1.school_code FROM department AS T1 JOIN professor AS T2 ON T1.dept_code  =  T2.dept_code GROUP BY T1.school_code ORDER BY count(*) LIMIT 1	college_1
SELECT Fname FROM STUDENT WHERE Age  >  22	voter_2
SELECT t3.headquartered_city FROM store AS t1 JOIN store_district AS t2 ON t1.store_id  =  t2.store_id JOIN district AS t3 ON t2.district_id  =  t3.district_id GROUP BY t3.headquartered_city ORDER BY count(*) DESC LIMIT 1	store_product
SELECT T2.name ,  T2.year FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T3.forename = "Lewis"	formula_1
SELECT T1.emp_fname ,  T2.prof_office FROM employee AS T1 JOIN professor AS T2 ON T1.emp_num  =  T2.emp_num JOIN department AS T3 ON T3.dept_code  =  T2.dept_code WHERE T3.dept_name  =  'History' AND T2.prof_high_degree  =  'Ph.D.'	college_1
SELECT DISTINCT T1.cust_name ,  T1.credit_score FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id  =  T2.cust_id	loan_1
SELECT avg(campusfee) FROM csu_fees WHERE YEAR  =  1996	csu_1
SELECT DISTINCT T1.Advisor FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  T2.Treasurer_Vote WHERE T2.Election_Cycle  =  "Spring"	voter_2
SELECT T2.country FROM city AS T1 JOIN country AS T2 ON T1.country_id  =  T2.country_id GROUP BY T2.country_id HAVING count(*)  >=  3	sakila_1
SELECT first_name FROM actor GROUP BY first_name ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT T3.Name ,  T2.District FROM phone_market AS T1 JOIN market AS T2 ON T1.Market_ID  =  T2.Market_ID JOIN phone AS T3 ON T1.Phone_ID  =  T3.Phone_ID ORDER BY T2.Ranking	phone_market
SELECT count(*) FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  Class_Senator_Vote WHERE T1.Sex  =  "M" AND T2.Election_Cycle  =  "Fall"	voter_2
SELECT min(T1.duration) ,  min(T2.rating) ,  T2.genre_is FROM files AS T1 JOIN song AS T2 ON T1.f_id  =  T2.f_id GROUP BY T2.genre_is ORDER BY T2.genre_is	music_1
SELECT campus FROM campuses WHERE county  =  "Los Angeles"	csu_1
SELECT Weight FROM people ORDER BY Height ASC LIMIT 1	entrepreneur
SELECT  T1.fname ,  T1.lname FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID  =  T2.facID GROUP BY T1.FacID ORDER BY count(*) DESC LIMIT 1	activity_1
SELECT T2.emp_fname ,  T1.prof_office FROM professor AS T1 JOIN employee AS T2 ON T1.emp_num  =  T2.emp_num JOIN department AS T3 ON T1.dept_code  =  T3.dept_code WHERE T3.dept_name  =  'History' AND T1.prof_high_degree != 'Ph.D.'	college_1
SELECT DISTINCT Secretary_Vote FROM VOTING_RECORD WHERE ELECTION_CYCLE  =  "Fall"	voter_2
SELECT T2.Name FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T2.Weight DESC LIMIT 1	entrepreneur
SELECT T2.title ,  T2.film_id ,  T2.description FROM film_actor AS T1 JOIN film AS T2 ON T1.film_id  =  T2.film_id GROUP BY T2.film_id ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT t1.name FROM furniture AS t1 JOIN furniture_manufacte AS t2 ON t1.Furniture_ID  =  t2.Furniture_ID WHERE t2.Price_in_Dollar  <  (SELECT max(Price_in_Dollar) FROM furniture_manufacte)	manufacturer
SELECT Date ,  Venue FROM debate	debate
SELECT degrees FROM campuses AS T1 JOIN degrees AS T2 ON t1.id  =  t2.campus WHERE t1.campus  =  "San Francisco State University" AND t2.year  =  2001	csu_1
SELECT emp_fname FROM employee WHERE emp_jobcode  =  'PROF' EXCEPT SELECT T1.emp_fname FROM employee AS T1 JOIN CLASS AS T2 ON T1.emp_num  =  T2.prof_num	college_1
SELECT T2.name ,  T1.category_id ,  count(*) FROM film_category AS T1 JOIN category AS T2 ON T1.category_id  =  T2.category_id GROUP BY T1.category_id	sakila_1
SELECT count(*) FROM CLASS AS T1 JOIN enroll AS T2 ON T1.class_code  =  T2.class_code WHERE T1.crs_code  =  'ACCT-211'	college_1
SELECT  T1.fname ,  T1.lname ,  count(*) ,  T1.FacID FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID  =  T2.facID GROUP BY T1.FacID	activity_1
SELECT text FROM tweets WHERE text LIKE '%intern%'	twitter_1
SELECT T1.customer_id FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status = "On Road" INTERSECT SELECT T1.customer_id FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status = "Shipped"	tracking_orders
SELECT DISTINCT T1.driverid ,  T1.nationality FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.milliseconds >  100000	formula_1
SELECT emp_fname FROM employee WHERE emp_jobcode  =  'PROF' EXCEPT SELECT T1.emp_fname FROM employee AS T1 JOIN CLASS AS T2 ON T1.emp_num  =  T2.prof_num	college_1
SELECT District_name ,  City_Population FROM district WHERE City_Population BETWEEN 200000 AND 2000000	store_product
SELECT DISTINCT T1.forename FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid WHERE T2.position = 1 AND T2.wins = 1	formula_1
SELECT Company FROM entrepreneur ORDER BY Money_Requested DESC	entrepreneur
SELECT T2.Name FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID WHERE T1.Investor != "Rachel Elnaugh"	entrepreneur
SELECT T1.gender ,  T1.artist_name FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name ORDER BY T2.resolution LIMIT 1	music_1
SELECT avg(acc_bal) ,  acc_type FROM customer WHERE credit_score  <  50 GROUP BY acc_type	loan_1
SELECT count(*) ,  nationality FROM constructors GROUP BY nationality	formula_1
SELECT cust_name ,  acc_type ,  acc_bal FROM customer ORDER BY credit_score DESC LIMIT 1	loan_1
SELECT count(DISTINCT rating) FROM film	sakila_1
SELECT rank ,  Fname ,  Lname FROM Faculty	activity_1
SELECT T2.name ,  T2.year FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T3.forename = "Lewis"	formula_1
SELECT DISTINCT T2.emp_fname ,  T3.prof_high_degree FROM CLASS AS T1 JOIN employee AS T2 ON T1.prof_num  =  T2.emp_num JOIN professor AS T3 ON T2.emp_num  =  T3.emp_num JOIN department AS T4 ON T4.dept_code  =  T3.dept_code WHERE T4.dept_name  =  'Computer Info. Systems'	college_1
SELECT T2.emp_fname ,  T1.prof_office FROM professor AS T1 JOIN employee AS T2 ON T1.emp_num  =  T2.emp_num JOIN department AS T3 ON T1.dept_code  =  T3.dept_code WHERE T3.dept_name  =  'History' AND T1.prof_high_degree != 'Ph.D.'	college_1
SELECT sum(no_of_customers) FROM bank	loan_1
SELECT count(*) FROM csu_fees WHERE campusfee  >  (SELECT avg(campusfee) FROM csu_fees)	csu_1
SELECT T1.campus FROM campuses AS T1 JOIN faculty AS T2 ON T1.id  =  T2.campus WHERE T2.year  =  2002 AND faculty  >  (SELECT max(faculty) FROM campuses AS T1 JOIN faculty AS T2 ON T1.id  =  T2.campus WHERE T2.year  =  2002 AND T1.county  =  "Orange")	csu_1
SELECT sex ,  count(*) FROM Faculty WHERE rank  =  "AsstProf" GROUP BY sex	activity_1
SELECT store_id FROM customer GROUP BY store_id ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT avg(prominence) FROM mountain WHERE country  =  'Morocco'	mountain_photos
SELECT T1.emp_lname ,  T2.prof_office FROM employee AS T1 JOIN professor AS T2 ON T1.emp_num  =  T2.emp_num JOIN department AS T3 ON T2.dept_code  =  T3.dept_code WHERE T3.dept_name  =  'History'	college_1
SELECT DISTINCT Venue FROM debate	debate
SELECT T1.stuid FROM participates_in AS T1 JOIN activity AS T2 ON T2.actid  =  T2.actid WHERE T2.activity_name  =  'Canoeing' INTERSECT SELECT T1.stuid FROM participates_in AS T1 JOIN activity AS T2 ON T2.actid  =  T2.actid WHERE T2.activity_name  =  'Kayaking'	activity_1
SELECT campus FROM campuses WHERE YEAR  <  1800	csu_1
SELECT district_name FROM district WHERE city_area  >  10 OR City_Population  >  100000	store_product
SELECT T2.customer_name ,  count(*) FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id HAVING count(*)  >=  2	tracking_orders
SELECT name FROM event ORDER BY YEAR DESC	swimming
SELECT bname FROM bank ORDER BY no_of_customers DESC LIMIT 1	loan_1
SELECT campus FROM campuses WHERE LOCATION  =  "Northridge" AND county  =  "Los Angeles" UNION SELECT campus FROM campuses WHERE LOCATION  =  "San Francisco" AND county  =  "San Francisco"	csu_1
SELECT district_name FROM district ORDER BY city_area ASC LIMIT 1	store_product
SELECT count(DISTINCT class_section) FROM CLASS WHERE crs_code  =  'ACCT-211'	college_1
SELECT T2.dept_name FROM student AS T1 JOIN department AS T2 ON T1.dept_code  =  T2.dept_code ORDER BY stu_gpa LIMIT 1	college_1
SELECT T3.dept_name  ,  T2.prof_office FROM employee AS T1 JOIN professor AS T2 ON T1.emp_num  =  T2.emp_num JOIN department AS T3 ON T2.dept_code  =  T3.dept_code WHERE T1.emp_lname  =  'Heffington'	college_1
SELECT t1.campusfee FROM csu_fees AS t1 JOIN campuses AS t2 ON t1.campus  =  t2.id WHERE t2.campus  =  "San Jose State University" AND t1.year  =  2000	csu_1
SELECT T3.stu_fname FROM CLASS AS T1 JOIN enroll AS T2 ON T1.class_code  =  T2.class_code JOIN student AS T3 ON T2.stu_num  =  T3.stu_num WHERE T1.crs_code  =  'ACCT-211' AND T2.enroll_grade  =  'C'	college_1
SELECT Advisor FROM STUDENT WHERE city_code  =  "BAL"	voter_2
SELECT DISTINCT forename FROM drivers ORDER BY forename ASC	formula_1
SELECT T1.lname FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID  =  T2.facID JOIN activity AS T3 ON T2.actid  =  T2.actid WHERE T3.activity_name  =  'Canoeing' INTERSECT SELECT T1.lname FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID  =  T2.facID JOIN activity AS T3 ON T2.actid  =  T2.actid WHERE T3.activity_name  =  'Kayaking'	activity_1
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Participates_in	activity_1
SELECT avg(no_of_customers) FROM bank	loan_1
SELECT title FROM film WHERE rating  =  'R'	sakila_1
SELECT DISTINCT T1.Age FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  T2.Secretary_Vote WHERE T2.Election_Cycle  =  "Fall"	voter_2
SELECT T1.date_order_placed FROM orders AS T1 JOIN shipments AS T2 ON T1.order_id = T2.order_id WHERE T2.invoice_number = 10	tracking_orders
SELECT T1.first_name ,  T1.last_name ,  T1.customer_id FROM customer AS T1 JOIN payment AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id ORDER BY sum(amount) ASC LIMIT 1	sakila_1
SELECT T1.stu_lname FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num  =  T2.stu_num WHERE T2.enroll_grade  =  'A' AND T2.class_code  =  10018	college_1
SELECT count(*) FROM address WHERE district  =  'California'	sakila_1
SELECT T2.driverid ,  T3.forename FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid  =  T3.driverid WHERE T1.name = "Australian Grand Prix" INTERSECT SELECT T2.driverid ,  T3.forename FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid  =  T3.driverid WHERE T1.name = "Chinese Grand Prix"	formula_1
SELECT T2.title ,  max(T1.price) FROM schedule AS T1 JOIN film AS T2 ON T1.film_id  =  T2.film_id GROUP BY T1.film_id	cinema
SELECT campus FROM campuses WHERE YEAR  >=  1935 AND YEAR  <=  1939	csu_1
SELECT T3.name ,  T2.title ,  T1.date ,  T1.price FROM schedule AS T1 JOIN film AS T2 ON T1.film_id  =  T2.film_id JOIN cinema AS T3 ON T1.cinema_id  =  T3.cinema_id	cinema
SELECT T1.artist_name ,  T1.country FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name WHERE T2.resolution  >  900 GROUP BY T2.artist_name HAVING count(*)  >=  1	music_1
SELECT DISTINCT driverid ,  STOP FROM pitstops WHERE duration  >  (SELECT min(duration) FROM pitstops WHERE raceid  =  841)	formula_1
SELECT T1.driverid ,  count(*) FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid GROUP BY T1.driverid HAVING count(*)  <=  30	formula_1
SELECT T1.stu_fname FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num  =  T2.stu_num GROUP BY T2.stu_num HAVING count(*)  =  1	college_1
SELECT sum(acc_bal) ,  state FROM customer WHERE credit_score  >  100 GROUP BY state	loan_1
SELECT Memory_in_G ,  Carrier FROM phone	phone_market
SELECT T2.date_order_placed FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T1.customer_name = "Jeramie"	tracking_orders
SELECT T1.forename ,  T1.surname ,  T1.driverid FROM drivers AS T1 JOIN pitstops AS T2 ON T1.driverid  =  T2.driverid GROUP BY T1.driverid HAVING count(*)  >  8 UNION SELECT T1.forename ,  T1.surname ,  T1.driverid FROM drivers AS T1 JOIN results AS T2 ON T1.driverid  =  T2.driverid GROUP BY T1.driverid HAVING count(*)  >  5	formula_1
SELECT T1.customer_id FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1	tracking_orders
SELECT rank ,  sex ,  count(*) FROM Faculty GROUP BY rank ,  sex	activity_1
SELECT T1.customer_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1	tracking_orders
SELECT T2.song_name FROM files AS T1 JOIN song AS T2 ON T1.f_id  =  T2.f_id WHERE T1.formats  =  "mp3" INTERSECT SELECT song_name FROM song WHERE resolution  <  1000	music_1
SELECT count(*) ,  dept_code FROM student GROUP BY dept_code	college_1
SELECT T2.emp_fname ,  T1.class_room FROM CLASS AS T1 JOIN employee AS T2 ON T1.prof_num  =  T2.emp_num JOIN professor AS T3 ON T2.emp_num  =  T3.emp_num JOIN department AS T4 ON T4.dept_code  =  T3.dept_code WHERE T4.dept_name  =  'Accounting'	college_1
SELECT rank FROM Faculty GROUP BY rank ORDER BY count(*) ASC LIMIT 1	activity_1
SELECT T1.artist_name ,  T1.gender FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name WHERE T2.releasedate LIKE "%Mar%"	music_1
SELECT FacID FROM Faculty EXCEPT SELECT FacID FROM Faculty_participates_in	activity_1
SELECT count(*) ,  class_room FROM CLASS GROUP BY class_room HAVING count(*)  >=  2	college_1
SELECT stu_gpa ,  stu_phone ,  stu_fname FROM student ORDER BY stu_gpa DESC LIMIT 5	college_1
SELECT T1.country FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name GROUP BY T2.artist_name ORDER BY count(*) LIMIT 1	music_1
SELECT first_name FROM customer WHERE customer_id NOT IN( SELECT customer_id FROM rental WHERE rental_date  >  '2005-08-23 02:06:01' )	sakila_1
SELECT LOCATION FROM cinema WHERE capacity  >  300 GROUP BY LOCATION HAVING count(*)  >=  2	cinema
SELECT district_name FROM district ORDER BY city_area ASC LIMIT 1	store_product
SELECT DISTINCT artist_name FROM artist WHERE country  =  "Bangladesh" EXCEPT SELECT DISTINCT artist_name FROM song WHERE rating  >  7	music_1
SELECT T2.emp_fname ,  T1.class_room FROM CLASS AS T1 JOIN employee AS T2 ON T1.prof_num  =  T2.emp_num JOIN professor AS T3 ON T2.emp_num  =  T3.emp_num JOIN department AS T4 ON T4.dept_code  =  T3.dept_code WHERE T4.dept_name  =  'Accounting'	college_1
SELECT count(*) FROM Faculty	activity_1
SELECT T1.artist_name ,  count(*) FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name WHERE T2.languages  =  "english" GROUP BY T2.artist_name HAVING count(*)  >=  1	music_1
SELECT sum(city_population) FROM district ORDER BY city_area DESC LIMIT 3	store_product
SELECT state FROM bank GROUP BY state ORDER BY sum(no_of_customers) DESC LIMIT 1	loan_1
SELECT T1.name FROM camera_lens AS T1 JOIN photos AS T2 ON T2.camera_lens_id  =  T1.id WHERE T1.brand  =  'Sigma' OR T1.brand  =  'Olympus'	mountain_photos
SELECT count(*) FROM Faculty WHERE Rank  =  "Professor" AND building  =  "NEB"	activity_1
SELECT T1.stu_fname FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num  =  T2.stu_num GROUP BY T2.stu_num HAVING count(*)  =  1	college_1
SELECT T1.cust_name ,  T1.acc_type FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id  =  T2.cust_id GROUP BY T1.cust_name HAVING sum(T2.amount)  >  5000	loan_1
SELECT DISTINCT T2.product_id FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id WHERE T1.date_order_placed >= "1975-01-01" AND T1.date_order_placed <= "1976-01-01"	tracking_orders
SELECT count(*) FROM artist WHERE country  =  "Bangladesh"	music_1
SELECT * FROM swimmer	swimming
SELECT Party FROM people GROUP BY Party ORDER BY COUNT(*) DESC LIMIT 1	debate
SELECT T1.artist_name ,  T1.country FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name WHERE T2.song_name LIKE "%love%"	music_1
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM entrepreneur)	entrepreneur
SELECT T2.address ,  T1.email FROM customer AS T1 JOIN address AS T2 ON T2.address_id  =  T1.address_id WHERE T1.first_name  =  'LINDA'	sakila_1
SELECT max(home_games) ,  min(home_games) ,  avg(home_games) FROM stadium	game_injury
SELECT T1.driverid ,  T1.forename ,  count(*) FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid GROUP BY T1.driverid HAVING count(*)  >=  2	formula_1
SELECT state ,  acc_type ,  credit_score FROM customer WHERE no_of_loans  =  0	loan_1
SELECT count(*) FROM stadium WHERE country != 'Russia'	swimming
SELECT T1.id ,  count(*) FROM stadium AS T1 JOIN game AS T2 ON T1.id  =  T2.stadium_id GROUP BY T1.id	game_injury
SELECT T2.dept_name FROM professor AS T1 JOIN department AS T2 ON T1.dept_code  =  T2.dept_code GROUP BY T1.dept_code ORDER BY count(*) LIMIT 1	college_1
SELECT song_name FROM song WHERE rating  <  (SELECT max(rating) FROM song WHERE genre_is  =  "blues")	music_1
SELECT District_name ,  City_Population FROM district WHERE City_Population BETWEEN 200000 AND 2000000	store_product
SELECT crs_credit ,  crs_description FROM course WHERE crs_code  =  'QM-261'	college_1
SELECT StuID FROM Participates_in INTERSECT SELECT StuID FROM Student WHERE age  <  20	activity_1
SELECT Major FROM STUDENT GROUP BY major ORDER BY count(*) DESC LIMIT 1	voter_2
SELECT T2.Name ,  T1.Company FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Money_Requested	entrepreneur
SELECT fname ,  lname FROM Faculty WHERE Rank  =  "Instructor"	activity_1
SELECT shop_id ,  count(*) FROM happy_hour GROUP BY shop_id ORDER BY count(*) DESC LIMIT 1	coffee_shop
SELECT DISTINCT T1.forename FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid WHERE T2.position = 1 AND T2.wins = 1 AND T2.points > 20	formula_1
SELECT sum(faculty) FROM faculty WHERE YEAR  =  2002	csu_1
SELECT count(*) ,  dept_code FROM professor WHERE prof_high_degree  =  'Ph.D.' GROUP BY dept_code	college_1
SELECT count(DISTINCT acc_type) FROM customer	loan_1
SELECT T1.stu_fname ,  T1.stu_lname ,  T4.crs_description FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num  =  T2.stu_num JOIN CLASS AS T3 ON T2.class_code  =  T3.class_code JOIN course AS T4 ON T3.crs_code  =  T4.crs_code	college_1
SELECT song_name FROM song WHERE rating  <   (SELECT min(rating) FROM song WHERE languages  =  'english')	music_1
SELECT phone ,  room ,  building FROM Faculty WHERE Fname  =  "Jerry" AND Lname  =  "Prince"	activity_1
SELECT cust_name FROM customer EXCEPT SELECT cust_name FROM customer WHERE acc_type  =  'saving'	loan_1
SELECT Name FROM  people WHERE Age  =  35 OR Age  =  36	debate
SELECT count(*) FROM professor WHERE prof_high_degree  =  'Ph.D.'	college_1
SELECT avg(followers) FROM user_profiles WHERE UID NOT IN (SELECT UID FROM tweets)	twitter_1
SELECT Venue FROM debate ORDER BY Num_of_Audience ASC	debate
SELECT max(T1.duration) ,  max(T2.resolution) ,  T2.languages FROM files AS T1 JOIN song AS T2 ON T1.f_id  =  T2.f_id GROUP BY T2.languages ORDER BY T2.languages	music_1
SELECT T1.date_order_placed FROM orders AS T1 JOIN shipments AS T2 ON T1.order_id = T2.order_id WHERE T2.shipment_tracking_number = 3452	tracking_orders
SELECT DISTINCT District_name FROM district ORDER BY city_area DESC	store_product
SELECT t1.name FROM swimmer AS t1 JOIN record AS t2 ON t1.id  =  t2.swimmer_id WHERE RESULT  =  'Win'	swimming
SELECT circuitid ,  LOCATION FROM circuits WHERE country = "France" OR country = "Belgium"	formula_1
SELECT DISTINCT T1.LName FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  T2.CLASS_President_VOTE	voter_2
SELECT faculty FROM faculty AS T1 JOIN campuses AS T2 ON T1.campus  =  T2.id WHERE T1.year  =  2002 AND T2.campus  =  "Long Beach State University"	csu_1
SELECT name FROM races ORDER BY date DESC LIMIT 1	formula_1
SELECT campus FROM campuses WHERE LOCATION  =  "Northridge" AND county  =  "Los Angeles" UNION SELECT campus FROM campuses WHERE LOCATION  =  "San Francisco" AND county  =  "San Francisco"	csu_1
SELECT FacID FROM Faculty EXCEPT SELECT advisor FROM Student	activity_1
SELECT DISTINCT T1.Fname FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  T2.VICE_PRESIDENT_Vote EXCEPT SELECT DISTINCT Fname FROM STUDENT WHERE city_code  =  "PIT"	voter_2
SELECT count(*) FROM follows	twitter_1
SELECT DISTINCT District_name FROM district ORDER BY city_area DESC	store_product
SELECT song_name FROM song WHERE genre_is  =  "modern" OR languages  =  "english"	music_1
SELECT sum(no_of_customers) FROM bank	loan_1
SELECT count(*) ,  constructorid FROM constructorStandings GROUP BY constructorid	formula_1
SELECT count(*) FROM member WHERE Membership_card  =  'Black'	coffee_shop
SELECT T2.dept_name ,  avg(T1.stu_gpa) FROM student AS T1 JOIN department AS T2 ON T1.dept_code  =  T2.dept_code GROUP BY T1.dept_code ORDER BY avg(T1.stu_gpa) DESC LIMIT 1	college_1
SELECT Party FROM people ORDER BY Age ASC LIMIT 1	debate
SELECT T1.stu_fname FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num  =  T2.stu_num JOIN CLASS AS T3 ON T2.class_code  =  T3.class_code JOIN course AS T4 ON T3.crs_code  =  T4.crs_code JOIN department AS T5 ON T5.dept_code  =  T4.dept_code WHERE T5.dept_name  =  'Accounting' INTERSECT SELECT T1.stu_fname FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num  =  T2.stu_num JOIN CLASS AS T3 ON T2.class_code  =  T3.class_code JOIN course AS T4 ON T3.crs_code  =  T4.crs_code JOIN department AS T5 ON T5.dept_code  =  T4.dept_code WHERE T5.dept_name  =  'Computer Info. Systems'	college_1
SELECT emp_fname FROM employee WHERE emp_jobcode  =  'PROF' ORDER BY emp_dob	college_1
SELECT order_id FROM shipments WHERE shipment_date > "2000-01-01"	tracking_orders
SELECT store_id FROM inventory GROUP BY store_id ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT count(*) FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  Class_Senator_Vote WHERE T1.city_code  =  "NYC" AND T2.Election_Cycle  =  "Spring"	voter_2
SELECT T1.name FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.country = "Spain" AND T1.year > 2017	formula_1
SELECT T1.id ,  T1.score ,  T1.date FROM game AS T1 JOIN injury_accident AS T2 ON T2.game_id  =  T1.id GROUP BY T1.id HAVING count(*)  >=  2	game_injury
SELECT T1.campus ,  sum(T2.degrees) FROM campuses AS T1 JOIN degrees AS T2 ON T1.id  =  T2.campus WHERE T1.county  =  "Orange" AND T2.year  >=  2000 GROUP BY T1.campus	csu_1
SELECT count(DISTINCT crs_code) FROM CLASS	college_1
SELECT state FROM bank GROUP BY state ORDER BY sum(no_of_customers) DESC LIMIT 1	loan_1
SELECT T2.address FROM staff AS T1 JOIN address AS T2 ON T1.address_id  =  T2.address_id WHERE T1.first_name  =  'Elsa'	sakila_1
SELECT count(*) FROM VOTING_RECORD	voter_2
SELECT T3.Name ,  T2.District FROM phone_market AS T1 JOIN market AS T2 ON T1.Market_ID  =  T2.Market_ID JOIN phone AS T3 ON T1.Phone_ID  =  T3.Phone_ID	phone_market
SELECT max(stu_gpa) ,  avg(stu_gpa) ,  min(stu_gpa) ,  dept_code FROM student GROUP BY dept_code	college_1
SELECT count(*) FROM game WHERE id NOT IN ( SELECT game_id FROM injury_accident )	game_injury
SELECT cust_name ,  acc_type ,  acc_bal FROM customer ORDER BY credit_score DESC LIMIT 1	loan_1
SELECT T2.name FROM photos AS T1 JOIN camera_lens AS T2 ON T1.camera_lens_id  =  T2.id GROUP BY T2.id ORDER BY count(*) DESC LIMIT 1	mountain_photos
SELECT cust_name FROM customer EXCEPT SELECT cust_name FROM customer WHERE acc_type  =  'saving'	loan_1
SELECT title ,  film_id FROM film WHERE rental_rate  =  0.99 INTERSECT SELECT T1.title ,  T1.film_id FROM film AS T1 JOIN inventory AS T2 ON T1.film_id  =  T2.film_id GROUP BY T1.film_id HAVING count(*)  <  3	sakila_1
SELECT bname FROM bank ORDER BY no_of_customers DESC LIMIT 1	loan_1
SELECT T2.order_id ,  T2.order_status FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T1.customer_name = "Jeramie"	tracking_orders
SELECT cust_name FROM customer ORDER BY credit_score LIMIT 1	loan_1
SELECT T1.forename ,  T1.surname ,  T1.driverid FROM drivers AS T1 JOIN pitstops AS T2 ON T1.driverid  =  T2.driverid GROUP BY T1.driverid HAVING count(*)  >  8 UNION SELECT T1.forename ,  T1.surname ,  T1.driverid FROM drivers AS T1 JOIN results AS T2 ON T1.driverid  =  T2.driverid GROUP BY T1.driverid HAVING count(*)  >  5	formula_1
SELECT title ,  rental_rate FROM film ORDER BY rental_rate DESC LIMIT 1	sakila_1
SELECT partitionid FROM user_profiles WHERE name  =  'Iron Man'	twitter_1
SELECT  T1.fname ,  T1.lname ,  count(*) ,  T1.FacID FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID  =  T2.facID GROUP BY T1.FacID	activity_1
SELECT Election_Cycle ,  count(*) FROM VOTING_RECORD GROUP BY Election_Cycle	voter_2
SELECT sum(acc_bal) FROM customer WHERE state  =  'Utah' OR state  =  'Texas'	loan_1
SELECT count(*) FROM CLASS AS T1 JOIN enroll AS T2 ON T1.class_code  =  T2.class_code JOIN course AS T3 ON T1.crs_code  =  T3.crs_code JOIN department AS T4 ON T3.dept_code  =  T4.dept_code WHERE T4.dept_name  =  'Accounting'	college_1
SELECT sum(amount) FROM payment	sakila_1
SELECT name FROM user_profiles ORDER BY followers DESC LIMIT 1	twitter_1
SELECT count(*) FROM bank	loan_1
SELECT Advisor ,  count(*) FROM STUDENT GROUP BY Advisor	voter_2
SELECT T1.fname ,  T1.lname FROM Faculty AS T1 JOIN Student AS T2 ON T1.FacID  =  T2.advisor GROUP BY T1.FacID ORDER BY count(*) DESC LIMIT 1	activity_1
SELECT class_code FROM CLASS WHERE class_room  =  'KLR209'	college_1
SELECT T1.artist_name ,  T1.gender FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name WHERE T2.releasedate LIKE "%Mar%"	music_1
SELECT country FROM stadium GROUP BY country ORDER BY count(*) DESC LIMIT 1	swimming
SELECT product FROM product WHERE product != (SELECT max_page_size FROM product GROUP BY max_page_size ORDER BY count(*) DESC LIMIT 1)	store_product
SELECT count(*) FROM CLASS AS T1 JOIN enroll AS T2 ON T1.class_code  =  T2.class_code WHERE T1.crs_code  =  'ACCT-211'	college_1
SELECT name ,  date FROM races ORDER BY date DESC LIMIT 1	formula_1
SELECT count(DISTINCT Company) FROM entrepreneur	entrepreneur
SELECT T1.stu_fname FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num  =  T2.stu_num JOIN CLASS AS T3 ON T2.class_code  =  T3.class_code WHERE T3.crs_code  =  'ACCT-211' AND T1.stu_lname LIKE 'S%'	college_1
SELECT f_id FROM files WHERE formats  =  "mp3"	music_1
SELECT T1.title ,  T1.film_id FROM film AS T1 JOIN inventory AS T2 ON T1.film_id  =  T2.film_id GROUP BY T1.film_id ORDER BY count(*) DESC LIMIT 1	sakila_1
SELECT product FROM product WHERE max_page_size  =  "A4" AND pages_per_minute_color  <  5	store_product
SELECT DISTINCT T1.LName FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  T2.CLASS_President_VOTE	voter_2
SELECT avg(campusfee) FROM csu_fees WHERE YEAR  =  1996	csu_1
SELECT count(DISTINCT Company) FROM entrepreneur	entrepreneur
SELECT LOCATION FROM cinema WHERE openning_year  =  2010 INTERSECT SELECT LOCATION FROM cinema WHERE openning_year  =  2011	cinema
SELECT count(DISTINCT class_code) FROM CLASS	college_1
SELECT email FROM user_profiles WHERE name  =  'Mary'	twitter_1
SELECT phone ,  room ,  building FROM Faculty WHERE Fname  =  "Jerry" AND Lname  =  "Prince"	activity_1
SELECT T2.Name FROM debate_people AS T1 JOIN people AS T2 ON T1.Negative  =  T2.People_ID GROUP BY T2.Name HAVING COUNT(*)  >=  2	debate
SELECT product FROM product WHERE product LIKE "%Scanner%"	store_product
SELECT T2.bname FROM loan AS T1 JOIN bank AS T2 ON T1.branch_id  =  T2.branch_id JOIN customer AS T3 ON T1.cust_id  =  T3.cust_id WHERE T3.credit_score  <  100 GROUP BY T2.bname ORDER BY sum(T1.amount) DESC LIMIT 1	loan_1
SELECT T1.forename ,  T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds LIMIT 1	formula_1
SELECT Advisor FROM STUDENT GROUP BY Advisor HAVING count(*)  >  2	voter_2
SELECT count(*) FROM STUDENT	voter_2
SELECT lname FROM faculty WHERE rank  =  'Professor' EXCEPT SELECT DISTINCT T1.lname FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID  =  T2.facID JOIN activity AS T3 ON T2.actid  =  T2.actid WHERE T3.activity_name  =  'Canoeing' OR T3.activity_name  =  'Kayaking'	activity_1
SELECT T1.campus FROM campuses AS t1 JOIN enrollments AS t2 ON t1.id  =  t2.campus WHERE t2.year  =  1956 AND totalenrollment_ay  >  400 AND FTE_AY  >  200	csu_1
SELECT StuID FROM Participates_in INTERSECT SELECT StuID FROM Student WHERE age  <  20	activity_1
SELECT T2.fname ,  T2.lname FROM Faculty AS T1 JOIN Student AS T2 ON T1.FacID  =  T2.advisor WHERE T1.fname  =  "Michael" AND T1.lname  =  "Goodrich"	activity_1
SELECT Advisor FROM STUDENT GROUP BY Advisor HAVING COUNT(*)  >  2	voter_2
SELECT count(DISTINCT school_code) FROM department	college_1
SELECT count(*) FROM store	sakila_1
SELECT count(DISTINCT city) FROM bank	loan_1
SELECT DISTINCT T1.bname FROM bank AS T1 JOIN loan AS T2 ON T1.branch_id  =  T2.branch_id	loan_1
SELECT count(*) FROM department AS T1 JOIN course AS T2 ON T1.dept_code  =  T2.dept_code WHERE dept_name  =  "Computer Info. Systems"	college_1
SELECT t3.District_name FROM store AS t1 JOIN store_district AS t2 ON t1.store_id  =  t2.store_id JOIN district AS t3 ON t2.district_id  =  t3.district_id WHERE t1.Type  =  "City Mall" INTERSECT SELECT t3.District_name FROM store AS t1 JOIN store_district AS t2 ON t1.store_id  =  t2.store_id JOIN district AS t3 ON t2.district_id  =  t3.district_id WHERE t1.Type  =  "Village Store"	store_product
SELECT count(*) ,  address FROM member GROUP BY address	coffee_shop
SELECT T1.campus FROM campuses AS t1 JOIN faculty AS t2 ON t1.id  =  t2.campus WHERE t2.faculty  >=  600 AND t2.faculty  <=  1000 AND T1.year  =  2004	csu_1
SELECT order_id ,  customer_id FROM orders ORDER BY date_order_placed LIMIT 1	tracking_orders
SELECT DISTINCT driverid ,  STOP FROM pitstops WHERE duration  >  (SELECT min(duration) FROM pitstops WHERE raceid  =  841)	formula_1
SELECT T1.name FROM user_profiles AS T1 JOIN follows AS T2 ON T1.uid  =  T2.f1 GROUP BY T2.f1 HAVING count(*)  >  (SELECT count(*) FROM user_profiles AS T1 JOIN follows AS T2 ON T1.uid  =  T2.f1 WHERE T1.name  =  'Tyler Swift')	twitter_1
SELECT DISTINCT T1.LName FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  PRESIDENT_Vote EXCEPT SELECT DISTINCT LName FROM STUDENT WHERE Advisor  =  "2192"	voter_2
SELECT T2.name ,  sum(T1.show_times_per_day) FROM schedule AS T1 JOIN cinema AS T2 ON T1.cinema_id  =  T2.cinema_id GROUP BY T1.cinema_id	cinema
SELECT T1.Company FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T2.Height DESC LIMIT 1	entrepreneur
SELECT count(*) FROM Faculty WHERE Sex  =  'F' AND Rank  =  "Professor"	activity_1
SELECT T2.customer_name ,  count(*) FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id HAVING count(*)  >=  2	tracking_orders
SELECT count(DISTINCT city) FROM stadium WHERE opening_year  <  2006	swimming
SELECT count(*) FROM camera_lens WHERE id NOT IN ( SELECT camera_lens_id FROM photos )	mountain_photos
SELECT t3.name FROM record AS t1 JOIN event AS t2 ON t1.event_id  =  t2.id JOIN stadium AS t3 ON t3.id  =  t2.stadium_id GROUP BY t2.stadium_id ORDER BY count(*) DESC LIMIT 1	swimming
SELECT district FROM address GROUP BY district HAVING count(*)  >=  2	sakila_1
SELECT order_id FROM shipments WHERE shipment_tracking_number = "3452"	tracking_orders
SELECT T3.forename ,  T3.surname FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T1.name = "Australian Grand Prix" EXCEPT SELECT T3.forename ,  T3.surname FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T1.name = "Chinese Grand Prix"	formula_1
SELECT T1.name ,  T1.email FROM user_profiles AS T1 JOIN follows AS T2 ON T1.uid  =  T2.f1 GROUP BY T2.f1 HAVING count(*)  >  1	twitter_1
SELECT T1.bname FROM bank AS T1 JOIN loan AS T2 ON T1.branch_id  =  T2.branch_id GROUP BY T1.bname ORDER BY sum(T2.amount) DESC LIMIT 1	loan_1
SELECT count(*) FROM event	swimming
SELECT T3.Name ,  T2.Date ,  T2.Venue FROM debate_people AS T1 JOIN debate AS T2 ON T1.Debate_ID  =  T2.Debate_ID JOIN people AS T3 ON T1.Negative  =  T3.People_ID ORDER BY T3.Name ASC	debate
SELECT T1.FacID FROM Faculty AS T1 JOIN Student AS T2 ON T1.FacID  =  T2.advisor GROUP BY T1.FacID HAVING count(*)  >=  2	activity_1
SELECT T1.driverid ,  T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid  =  T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.year > 2010 GROUP BY T1.driverid ORDER BY count(*) DESC LIMIT 1	formula_1
SELECT T1.emp_fname FROM employee AS T1 JOIN CLASS AS T2 ON T1.emp_num  =  T2.prof_num WHERE crs_code  =  'CIS-220' INTERSECT SELECT T1.emp_fname FROM employee AS T1 JOIN CLASS AS T2 ON T1.emp_num  =  T2.prof_num WHERE crs_code  =  'QM-261'	college_1
SELECT T1.driverid ,  T1.forename ,  T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE POSITION  =  '1' GROUP BY T1.driverid HAVING count(*)  >=  2	formula_1
SELECT count(DISTINCT FacID) FROM Faculty_participates_in	activity_1
SELECT activity_name FROM Activity	activity_1
SELECT degrees FROM campuses AS T1 JOIN degrees AS T2 ON t1.id  =  t2.campus WHERE t1.campus  =  "San Francisco State University" AND t2.year  =  2001	csu_1
SELECT building ,  count(*) FROM Faculty GROUP BY building	activity_1
SELECT count(*) FROM address WHERE district  =  'California'	sakila_1
SELECT count(*) FROM Activity	activity_1
SELECT rank ,  count(*) FROM Faculty GROUP BY rank	activity_1
SELECT f_id FROM files WHERE formats  =  "mp4" INTERSECT SELECT f_id FROM song WHERE resolution  <  1000	music_1
SELECT id ,  color ,  name FROM photos	mountain_photos
SELECT count(DISTINCT dept_address) ,  school_code FROM department GROUP BY school_code	college_1
SELECT LOCATION FROM cinema WHERE capacity  >  300 GROUP BY LOCATION HAVING count(*)  >  1	cinema
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Participates_in	activity_1
SELECT T1.driverid ,  T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid GROUP BY T1.driverid ORDER BY count(*) DESC LIMIT 1	formula_1
SELECT T1.id ,  T1.name FROM mountain AS T1 JOIN photos AS T2 ON T1.id  =  T2.mountain_id GROUP BY T1.id HAVING count(*)  >=  2	mountain_photos
SELECT count(DISTINCT PROF_NUM) FROM CLASS WHERE CRS_CODE  =  "ACCT-211"	college_1
SELECT avg(T1.duration) FROM files AS T1 JOIN song AS T2 ON T1.f_id  =  T2.f_id WHERE T1.formats  =  "mp3" AND T2.resolution   <  800	music_1
SELECT Company FROM entrepreneur ORDER BY Money_Requested DESC	entrepreneur
SELECT DISTINCT T1.customer_details FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status = "On Road"	tracking_orders
SELECT count(DISTINCT driverId) FROM results WHERE raceId NOT IN( SELECT raceId FROM races WHERE YEAR != 2009 )	formula_1
SELECT T3.dept_name FROM course AS T1 JOIN CLASS AS T2 ON T1.crs_code  =  T2.crs_code JOIN department AS T3 ON T1.dept_code  =  T3.dept_code GROUP BY T1.dept_code ORDER BY sum(T1.crs_credit) DESC LIMIT 1	college_1
SELECT count(*) FROM entrepreneur	entrepreneur
SELECT DISTINCT T1.Fname FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  T2.CLASS_Senator_VOTE	voter_2
SELECT T1.driverid ,  T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid GROUP BY T1.driverid ORDER BY count(*) DESC LIMIT 1	formula_1
SELECT product FROM product WHERE max_page_size  =  "A4" OR pages_per_minute_color  <  5	store_product
SELECT LName FROM STUDENT WHERE Major  =  50	voter_2
SELECT count(DISTINCT state) FROM bank	loan_1
SELECT T2.customer_name FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id HAVING count(*)  <=  2	tracking_orders
SELECT sum(stu_hrs) ,  dept_code FROM student GROUP BY dept_code	college_1
SELECT count(*) FROM employee	college_1
SELECT count(DISTINCT language_id) FROM film	sakila_1
SELECT T1.customer_name FROM customers AS T1 JOIN orders AS T2 JOIN order_items AS T3 JOIN products AS T4 ON T1.customer_id = T2.customer_id AND T2.order_id = T3.order_id AND T3.product_id = T4.product_id WHERE T3.order_item_status = "Cancel" AND T4.product_name = "food" GROUP BY T1.customer_id HAVING count(*)  >=  1	tracking_orders
SELECT MONTH FROM happy_hour GROUP BY MONTH ORDER BY count(*) DESC LIMIT 1	coffee_shop
SELECT T1.fname ,  T1.lname FROM Student AS T1 JOIN Participates_in AS T2 ON T1.StuID  =  T2.StuID GROUP BY T1.StuID ORDER BY count(*) DESC LIMIT 1	activity_1
SELECT T1.surname ,  T1.driverid FROM drivers AS T1 JOIN pitstops AS T2 ON T1.driverid  =  T2.driverid GROUP BY T1.driverid HAVING count(*)  =  11 INTERSECT SELECT T1.surname ,  T1.driverid FROM drivers AS T1 JOIN results AS T2 ON T1.driverid  =  T2.driverid GROUP BY T1.driverid HAVING count(*)  >  5	formula_1
SELECT T1.Company FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T2.Height DESC LIMIT 1	entrepreneur
SELECT school_code FROM department WHERE dept_name  =  "Accounting"	college_1
SELECT t1.name FROM swimmer AS t1 JOIN record AS t2 ON t1.id  =  t2.swimmer_id GROUP BY t2.swimmer_id HAVING count(*)  >=  2	swimming
SELECT school_code FROM department WHERE dept_name  =  "Accounting"	college_1
SELECT T2.bname FROM loan AS T1 JOIN bank AS T2 ON T1.branch_id  =  T2.branch_id JOIN customer AS T3 ON T1.cust_id  =  T3.cust_id WHERE T3.credit_score  <  100	loan_1
SELECT avg(pages_per_minute_color) FROM product	store_product
SELECT max_page_size FROM product GROUP BY max_page_size HAVING count(*)  >  3	store_product
SELECT T1.stu_fname ,  T1.stu_lname ,  T4.crs_description FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num  =  T2.stu_num JOIN CLASS AS T3 ON T2.class_code  =  T3.class_code JOIN course AS T4 ON T3.crs_code  =  T4.crs_code	college_1
SELECT crs_credit ,  crs_description FROM course WHERE crs_code  =  'CIS-220'	college_1
SELECT city ,  state FROM bank WHERE bname  =  'morningside'	loan_1
SELECT t1.store_name FROM store AS t1 JOIN store_district AS t2 ON t1.store_id  =  t2.store_id WHERE district_id  =  (SELECT district_id FROM district ORDER BY city_population DESC LIMIT 1)	store_product
SELECT first_name FROM customer WHERE customer_id NOT IN( SELECT customer_id FROM rental WHERE rental_date  >  '2005-08-23 02:06:01' )	sakila_1
SELECT DISTINCT Secretary_Vote FROM VOTING_RECORD WHERE ELECTION_CYCLE  =  "Fall"	voter_2
SELECT t1.address ,  t1.shop_id FROM shop AS t1 JOIN happy_hour AS t2 ON t1.shop_id  =  t2.shop_id WHERE MONTH  =  'May'	coffee_shop
SELECT T1.duration ,  T1.file_size ,  T1.formats FROM files AS T1 JOIN song AS T2 ON T1.f_id  =  T2.f_id WHERE T2.genre_is  =  "pop" ORDER BY T2.song_name	music_1
SELECT avg(no_of_customers) FROM bank WHERE state  =  'Utah'	loan_1
SELECT max(T2.resolution) ,  min(T2.resolution) FROM files AS T1 JOIN song AS T2 ON T1.f_id  =  T2.f_id WHERE T1.duration LIKE "3:%"	music_1
SELECT song_name ,  releasedate FROM song ORDER BY releasedate DESC LIMIT 1	music_1
SELECT count(*) FROM professor AS T1 JOIN department AS T2 ON T1.dept_code  =  T2.dept_code WHERE DEPT_NAME  =  "Accounting"	college_1
SELECT T1.name ,  count(*) FROM user_profiles AS T1 JOIN tweets AS T2 ON T1.uid  =  T2.uid GROUP BY T2.uid	twitter_1
SELECT country FROM stadium EXCEPT SELECT country FROM stadium WHERE opening_year  >  2006	swimming
SELECT T1.campus ,  sum(T2.degrees) FROM campuses AS T1 JOIN degrees AS T2 ON T1.id  =  T2.campus WHERE T2.year  >=  1998 AND T2.year  <=  2002 GROUP BY T1.campus	csu_1
SELECT artist_name FROM artist WHERE country  =  "UK" INTERSECT SELECT artist_name FROM song WHERE languages  =  "english"	music_1
SELECT count(*) ,  crs_code FROM CLASS GROUP BY crs_code	college_1
SELECT faculty FROM faculty AS T1 JOIN campuses AS T2 ON T1.campus  =  T2.id WHERE T1.year  =  2004 AND T2.campus  =  "San Francisco State University"	csu_1
SELECT Time_of_purchase ,  age ,  address FROM member ORDER BY Time_of_purchase	coffee_shop
SELECT name FROM swimmer WHERE id NOT IN (SELECT swimmer_id FROM record)	swimming
SELECT avg(rating) ,  languages FROM song GROUP BY languages	music_1
SELECT bname FROM bank WHERE state  =  'New York'	loan_1
SELECT T2.dept_name ,  T2.dept_address FROM student AS T1 JOIN department AS T2 ON T1.dept_code  =  T2.dept_code GROUP BY T1.dept_code ORDER BY count(*) DESC LIMIT 1	college_1
SELECT T2.Date_of_Birth FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID WHERE T1.Investor  =  "Simon Woodroffe" OR T1.Investor  =  "Peter Jones"	entrepreneur
SELECT count(*) ,  dept_code FROM CLASS AS T1 JOIN course AS T2 ON T1.crs_code  =  T2.crs_code GROUP BY dept_code	college_1
SELECT count(DISTINCT dept_name) ,  school_code FROM department GROUP BY school_code	college_1
SELECT name ,  email FROM user_profiles ORDER BY followers LIMIT 1	twitter_1
SELECT name ,  prominence FROM mountain EXCEPT SELECT T1.name ,  T1.prominence FROM mountain AS T1 JOIN photos AS T2 ON T1.id  =  T2.mountain_id JOIN camera_lens AS T3 ON T2.camera_lens_id  =  T3.id WHERE T3.brand  =  'Sigma'	mountain_photos
SELECT name ,  date FROM races ORDER BY date DESC LIMIT 1	formula_1
SELECT count(*) FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  Class_Senator_Vote WHERE T1.city_code  =  "NYC" AND T2.Election_Cycle  =  "Spring"	voter_2
SELECT T1.emp_lname ,  T1.emp_hiredate FROM employee AS T1 JOIN professor AS T2 ON T1.emp_num  =  T2.emp_num WHERE T2.prof_office  =  'DRE 102'	college_1
SELECT T2.address ,  T1.email FROM customer AS T1 JOIN address AS T2 ON T2.address_id  =  T1.address_id WHERE T1.first_name  =  'LINDA'	sakila_1
SELECT avg(T1.Age) FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  SECRETARY_Vote WHERE T1.city_code  =  "NYC" AND T2.Election_Cycle  =  "Spring"	voter_2
SELECT count(*) FROM csu_fees WHERE campusfee  >  (SELECT avg(campusfee) FROM csu_fees)	csu_1
SELECT count(*) FROM customer WHERE active = '1'	sakila_1
SELECT DISTINCT T1.forename ,  T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.milliseconds < 93000	formula_1
SELECT DISTINCT product_name FROM products ORDER BY product_name	tracking_orders
SELECT formats FROM files GROUP BY formats ORDER BY COUNT (*) DESC LIMIT 1	music_1
SELECT T1.order_id FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id ORDER BY count(*) DESC LIMIT 1	tracking_orders
SELECT count(*) FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID  =  T2.facID WHERE T1.fname  =  "Mark" AND T1.lname  =  "Giuliano"	activity_1
