use bank;

# Activity 1

select distinct type from card;

select * from trans;

select * from trans
where date between '930101' and '930115';

select * from loan
where status = 'C' or status = 'D'; # 'C' or 'D' are for running loans

select distinct * from district
where A2 like 'K%';

select distinct * from district
where A2 like '%K';

# Activity 2

select * from bank.district
where a3 like 'north%M%';

select * from bank.district
where a3 like 'north_M%';

select * from bank.district
where a2 regexp 'ch[e-r]';

select * from bank.district
where a2 regexp '^CH';

select * from trans
order by type asc;

select * from trans
order by k_symbol asc;

select amount, balance, bank, trans_id from trans
order by date asc;

#Activity 3

#Activity 4

insert into bank.loan
values (8000,8000000,930705,96396,12,8033.0,'C');

delete from bank.account where account_id = 11382;