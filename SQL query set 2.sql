                      Set 2 - Moderate Questions
					  
Q.1 Write query to return the email, first name, last name, & Genre of all Rock Music 
listeners. Return your list ordered alphabetically by email starting with a ?

select Distinct email, first_name, last_name from customer c
join invoice i on i.customer_id=c.customer_id
join invoice_line il on il.invoice_id=i.invoice_id
where track_id in
(
  select track_id from track t
  join genre g on g.genre_id=t.genre_id
  where g.name like 'Rock'
)
order by email;



Q.2 Lets invite the artists who have written the most rock music in our dataset. Write a 
query that returns the Artist name and total track count of the top 10 rock bands ?

select a.artist_id, a.name, count(a.artist_id) as total_tracks from  track t
join album al on al.album_id=t.album_id
join artist a on a.artist_id=al.artist_id
join genre g on g.genre_id=t.genre_id
where g.name like 'Rock'
group by a.artist_id
order by total_tracks desc
limit 10;



Q.3 Return all the track names that have a song length longer than the average song 
length. Return the Name and Milliseconds for each track. Order by the song length 
with the longest songs listed first ?

select name, milliseconds from track
where milliseconds > 
(
	select avg(milliseconds) from track
)
order by milliseconds desc;






























