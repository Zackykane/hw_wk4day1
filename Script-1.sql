--SELECT *
--FROM actor;
--
--select first_name, last_name from actor;
--
--select first_name, last_name
--from actor
--where first_name = 'Nick' and last_name = 'Wahlberg';
--
--select first_name, last_name
--from actor
--where first_name like 'Nick';
--
--select first_name, last_name
--from actor
--where first_name Like 'N%';
--
--select first_name, last_name
--from actor
--where first_name Like 'N______';
--
--
--select * from payment;
--
--select payment_id, amount
--from payment
--where amount >= 7.99
--order by amount;
--
--select payment_id, amount 
--from payment
--where amount < 2.99
--order by amount desc;
--
-- select payment_id, amount
-- from payment
-- where amount between 2.99 and 7.99
-- order by amount;
--
--select payment_id, amount 
--from payment
--where amount <> 0.00
--order by amount;
--
--
--select customer_id, sum(amount) as "customer_total" 
--from payment
--group by customer_id;
--
--select customer_id, count(customer_id) as "Payments_made" 
--from payment
--group by customer_id;
--
--select avg(amount) as "average payment" from payment;
--
--select min(amount) from payment where amount > 7.99;
--
--select customer_id
--from payment
--group by customer_id 
--having count(customer_id) > 10;


--homework

SELECT *  
FROM actor
WHERE last_name ='Wahlberg';

SELECT *
FROM payment 
WHERE amount between 3.99 and 5.99;

SELECT film_id , count(*) AS "Total Copies" 
FROM inventory  
GROUP BY film_id;

SELECT first_name, last_name
FROM customer
WHERE last_name ='William';

SELECT staff_id , count(*) AS "Rentals Sold" 
FROM rental  
GROUP BY staff_id;

SELECT count(district) AS "Total Districts"
FROM address;

SELECT film_id , count(*) AS "Total Actors" 
FROM film_actor
GROUP BY film_id;

SELECT count(last_name) AS "Total With Last Name ending in 'es'" 
FROM customer
WHERE last_name LIKE '%es';

SELECT amount 
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount  HAVING count(amount) > 250;

SELECT count(DISTINCT rating) AS "Total rating categories" 
FROM film;

SELECT rating, count(rating) AS "Total movies for rating" 
FROM film
GROUP BY rating;





