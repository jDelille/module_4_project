-- =|=================
--    Artist Table
-- ===================

insert into artist (
	name
)
values (
	'Tom'
),(
	'Tim'
),(
  'Todd'
);


select name from artist
order by name asc
limit 5;

-- =|=================
--   Employee Table
-- ===================

select first_name, last_name, city from employee
where city = 'Calgary';


select * from employee
where reports_to = 2;


select count(*) from employee
where city = 'Lethbridge';

-- =|=================
--    Invoice Table
-- ===================

select count(8) from invoice
where billing_country = 'USA';

select max(total) from invoice;

select min(total) from invoice;

select total from invoice
where total > 5.00;

select count(total) from invoice
where total < 5.00;

select sum(total) from invoice;

-- =|=================
--   Various Tables
-- ===================

select *
from invoice i
join invoice_line il 
on il.invoice_id = i.invoice_id
where il.unit_price > 0.99;

select i.invoice_date, c.first_name, c.last_name, i.total 
from invoice i 
join customer c
on i.customer_id = c.customer_id;

select c.first_name as c_first_name, c.last_name as c_last_name, e.first_name as e_first_name, e.last_name as e_last_name
from customer c
join employee e 
on c.support_rep_id = e.employee_id;

select album.title, artist.name
from album
join artist
on album.artist_id = artist.artist_id

-- =|=================
--   Extra Credit
-- ===================

select * from artist
order by name desc
limit 10;

