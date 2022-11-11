-- Intro to GroupBy
select a3, avg(length(a3)) from bank.district
group by a3;

select * from bank.district
where length(a3) = (select max(length(a3)) from bank.district);


-- distinct
select A3 from bank.district;
select distinct A3 from bank.district;

-- in
select * from bank.order
where k_symbol in ('leasing', 'pojistne');

select * from bank.account
where district_id in (1,2,3,4,5);

-- between
select *,
case
when k_symbol = 'SIPO' then 'a'
when k_symbol = 'LEASING' then 'b'
else 'c'
end as 'abc'
from bank.order
where 
case
when k_symbol = 'SIPO' then 'a'
when k_symbol = 'LEASING' then 'b'
else 'c'
end
between 'a' and 'b';

select * from bank.loan
where amount - payments between 1000 and 10000;

-- like
select * from bank.district
where A3 like 'north%';

select * from bank.district
where A3 like '%boh%';

select * from bank.district
where a3 like 'north_M%';
-- This would return all the results for 'north  Moravia', 'northMoravia', northMiami'

-- regex
select * from bank.district
where a3 regexp 'north';

select * from bank.order
where k_symbol regexp 's';

select * from bank.order
where k_symbol regexp '^s'; -- starts with

select * from bank.order
where k_symbol regexp 'o$'; -- ends with

select distinct k_symbol from bank.order
where k_symbol regexp 'ip|is'; -- one or another (ip or is)

select * from bank.district
where a2 regexp 'cesk[ey]';

select * from bank.district
where a2 regexp '^ch';