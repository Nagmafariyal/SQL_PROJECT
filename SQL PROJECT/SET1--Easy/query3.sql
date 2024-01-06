Q3.What are top 3 values of total Invoices?

select billing_country,total from Invoice
order by total desc
limit 3

