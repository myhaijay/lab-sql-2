-- 1 - Select all the actors with the first name ‘Scarlett’
select * from actor
where first_name = "Scarlett";

-- 2 - Select all the actors with the last name ‘Johansson’
select * from actor
where last_name = "Johansson";

-- 3 - How many films (movies) are available for rent?
select distinct count(film_id) from film;

-- 4 - How many films have been rented?
select count(rental_id) from rental;

-- 5 - What is the shortest and longest rental period?
select min(rental_duration) as shortest, max(rental_duration) 
as longest from film;

-- 6 - What are the shortest and longest movie duration? Name the values max_duration and min_duration.
select min(length) as min_duration, max(length) 
as max_duration from film;

-- 7 - What's the average movie duration?
select avg(length) as average_duration from film;

-- 8 - What's the average movie duration expressed in format (hours, minutes)?
 select avg(length), CONCAT(FLOOR(avg(length)/60),'h ',MOD(avg(length),60),'m') as HourMinutes from film;

-- 9 - How many movies longer than 3 hours?
select count(film_id) as movies from film
where length > 180;

-- 10 - Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
select concat(first_name, ' ', upper(last_name), ' - ') as Name, lower(email) as Email from staff;


-- 11 - What's the length of the longest film title?
select title, CONCAT(FLOOR(max(length)/60),'h ',MOD(max(length),60),'m') as Duration from film;