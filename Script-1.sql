SELECT *
FROM actor;

select first_name, last_name from actor;

select first_name, last_name
from actor
where first_name = 'Nick' and last_name = 'Wahlberg';

select first_name, last_name
from actor
where first_name like 'Nick';

select first_name, last_name
from actor
where first_name Like 'N%';

select first_name, last_name
from actor
where first_name Like 'N______';


select * from payment;

select payment_id, amount
from payment
where amount >= 7.99
order by amount;

select payment_id, amount 
from payment
where amount < 2.99
order by amount desc;

 select payment_id, amount
 from payment
 where amount between 2.99 and 7.99
 order by amount;

select payment_id, amount 
from payment
where amount <> 0.00
order by amount;


select customer_id, sum(amount) as "customer_total" 
from payment
group by customer_id;

select customer_id, count(customer_id) as "Payments_made" 
from payment
group by customer_id;

select avg(amount) as "average payment" from payment;

select min(amount) from payment where amount > 7.99;

select customer_id
from payment
group by customer_id 
having count(customer_id) > 10;




