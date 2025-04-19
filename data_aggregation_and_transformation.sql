use sakila;
select max(length) as max_duration,min(length) as min_duration from sakila.film;
select concat(floor(avg(length)/60),'hours', round(avg(length)%60),'minutes') as avg_duration from sakila.film;
select datediff(max(rental_date),min(rental_date)) as opearting_days from sakila.rental;
select rental_id,rental_date,monthname(rental_date) as rental_month,dayname(rental_date) as rental_weekday from sakila.rental limit 20;
select rental_id,rental_date, case when ndayofweek(rental_date) in (1,7) then 'weekend' else 'workday' end as day_type from sakila.rebtal;
select title,ifnull(rental_duration,'not available') as rental_duration from sakila.film order by title asc;
select count(*) as total_films from sakila.films;
select rating,count(*) as number_of_films from sakila.fim group by rating;
select rating,count(*) as number_of_films from sakila.fim group by rating ORDER BY number_of_films desc;
select rating, round(avg(length), 2) as mean_duration_minutes from sakila.film group by rating having avg(length)>120 order by mean_duration_minutes desc;



