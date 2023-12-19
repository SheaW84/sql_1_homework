-- First query, we will select all records from the actor able
 SELECT * FROM actor 
 
 
-- Query for first_nam and last_name in the actor table
 SELECT first_name, last_name
 FROM actor;

-- query for a first_name that equals Nick using the WHERE clause
SELECT first_name,last_name 
FROM actor 
WHERE first_name LIKE 'Nick';

--Query for all first_name data that starts with a j using Like and WHERE clauses and a wildcard
SELECT first_name, actor_id
FROM actor 
WHERE first_name LIKE 'J%';

--Query for first_name data that starts with K and has 2 letters after K again using LIKE and WHERE cluases and the underscore
SELECT first_name, actor_id
FROM actor 
WHERE first_name like'K__'; --two underscores

--Query for all firs_name data that starts with a K and ends with 'th'
--We will use the LIKE and WHERE clauses using both wildcard and the underscore
SELECT first_name, last_name, actor_id
FROM actor 
WHERE first_name LIKE 'K%__th';


--Comparing Operators
-->, <, >=, <=, <>

--Explore data with select all query so that we can change into a new table
SELECT * FROM payment

--Query for data that shows customers who paid an amount GREATER than $2
SELECT customer_id, amount
FROM payment
WHERE amount > 2.00;

--Query for data that shows customers who paid an amount less than 7.99
SELECT customer_id, amount
FROM payment
WHERE amount < 7.99;

--Query for less than or eqaul to 7.99
SELECT customer_id, amount
FROM payment
WHERE amount <= 7.99;

--Query for greater than or eqaul to 2.00
SELECT customer_id, amount
FROM payment
WHERE amount >= 2.00;

--Query for data that shows customers who paid an amount not equal to 0.00 ordered in DESCENDING order
SELECT customer_id, amount
FROM payment
WHERE amount <> 0.00
ORDER BY amount DESC; 

--SQL Aggregate functions! Sum, Avg, COunt, Min, MAx
--Query to Display the sum of amounts paid that are greater than 5.99
SELECT sum(amount)
FROM payment
WHERE amount > 5.99;

--Query to display the averaege of amounts paid greater than 5.00
SELECT avg(amount)
FROM payment
WHERE amount > 5.99;

--Query to display the count of amount paid greater than 5.99
SELECT count(amount) FROM payment WHERE amount > 5.99;

--Query to display the count of DISTINCT amounts paid greater than 5.99
SELECT count(DISTINCT amount)
FROM payment
WHERE amount > 5.99;

--Query to display the min amount greater than 7.99
SELECT min(amount) AS min_num_payments
FROM payment 
WHERE amount > 7.99;

--QUery to display max amount greater than 7.99
SELECT max(amount) AS max_num_payments
FROM payment 
WHERE amount > 7.99;

-- Demo of groupby
SELECT amount
FROM payment
WHERE amount = 7.99;

-- Query to display different amounts grouped by together
-- and count the amounts
SELECT amount, count(amount)
FROM payment
GROUP BY amount
ORDER BY amount;

-- Query to display customer ids with the summed amounts for each ciustomer id
SELECT customer_id, sum(amount)
FROM payment
GROUP BY customer_id 
ORDER BY customer_id DESC;












