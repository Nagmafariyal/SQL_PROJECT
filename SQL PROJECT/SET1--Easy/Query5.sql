-- Q5.who is the best customer? The customer who has spent the most money will be declared the best customer.
-- write a query that returns the person who has spent the most money.
SELECT customer.customer_id, first_name, last_name, SUM(invoice.total) AS total
FROM customer
JOIN invoice ON invoice.customer_id = customer.customer_id
GROUP BY customer.customer_id, first_name, last_name
ORDER BY total DESC
LIMIT 1;


