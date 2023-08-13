                Set 1 - Easy Questions

Q.1 who is the senior most employee based on job title ?

select * from employee
order by levels desc
limit 1;


Q.2 Which countries have the most invoices ?

select count(*) as c, billing_country from invoice
group by billing_country
order by c desc; 


Q.3 What are top 3 values of total invoices ?

select total from invoice
order by total desc
limit 3;



Q.4 Which city has the best customers? We would like to throw a promotional Music 
Festival in the city we made the most money. Write a query that returns one city that 
has the highest sum of invoice totals. Return both the city name & sum of all 
invoice totals ?

select billing_city, sum(total) as s from invoice
group by billing_city
order by s desc
limit 1;



Q.5 Who is the best customer? The customer who has spent the most money will be 
declared the best customer. Write a query that returns the person who has spent 
the most money ?

select customer.customer_id, customer.first_name, customer.last_name, 
sum(invoice.total) as Total
from customer
join invoice on customer.customer_id=invoice.customer_id
group by customer.customer_id
order by Total desc
limit 1;










