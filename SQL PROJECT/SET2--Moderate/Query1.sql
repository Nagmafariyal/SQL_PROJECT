-- Q1.Write query to return the email,first name, last name , & genre of all rock music listeners. return your list ordered alphabetically 
-- by email starting with A

select first_name,last_name,email from customer
join invoice on customer.customer_id= invoice.customer_id
join invoice_line on invoice.invoice_id=invoice_line.invoice_id
where track_id in(
	select track_id from track
	join genre on track.genre_id=genre.genre_id
	where genre.name like 'Rock'
)
order by email;
