use sakila;

select rating from film;
select release_year from film;

select * from film
where title regexp 'ARMAGEDDON';

select * from film
where title regexp 'APOLLO';

select * from film
where title regexp 'APOLLO$';

select * from film
where title regexp 'DATE';

select * from film
order by length(title) desc
limit 10;

select * from film
order by length desc
limit 10;

select count(*) from film
where special_features regexp "Behind the Scenes";

select * from film
group by title
order by release_year asc;