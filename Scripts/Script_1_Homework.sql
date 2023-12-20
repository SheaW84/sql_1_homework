--1. How many actors are there with the last name ‘Wahlberg’?
SELECT count(last_name)
FROM actor 
WHERE last_name LIKE 'Wahlberg';

--2. How many payments were made between $3.99 and $5.99?
SELECT count(amount)
FROM payment 
WHERE amount > 3.99 AND amount <=5.99;

--3. What film does the store have the most of? (search in inventory)
SELECT film_id, count(film_id)
FROM inventory
GROUP BY film_id
ORDER BY count(film_id) DESC;

--4. How many customers have the last name ‘William’?
SELECT count(last_name)
FROM customer
WHERE last_name LIKE 'William%';


--5. What store employee (get the id) sold the most rentals?
SELECT * FROM rental

SELECT staff_id, count(staff_id)
FROM rental
GROUP BY staff_id 
ORDER BY count(staff_id) DESC;

--6. How many different district names are there?
SELECT count(DISTINCT district)
FROM address


--7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT film_id,  count(actor_id)
FROM film_actor
GROUP BY film_id 
ORDER BY count(actor_id) DESC;

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT last_name 
FROM customer 
WHERE last_name LIKE '%es';


--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)
SELECT customer_id, amount, count(amount)
FROM payment 
WHERE customer_id >= 380 AND customer_id <=430 
GROUP BY customer_id, amount
HAVING count(amount) > 250;

--10. Within the film table, how many rating categories are there? And what rating has the most
--movies total?

SELECT DISTINCT rating, count(title)
FROM film
GROUP BY rating
ORDER BY count(title)DESC;


