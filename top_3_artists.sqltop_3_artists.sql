Provide a query that shows the top 3 best selling artists.

SELECT a.Name, SUM(il.TrackId) BestSellingArtist
FROM Artist AS a 
JOIN Album AS al 
ON al.ArtistId = a.ArtistId
JOIN InvoiceLine AS il  
ON il.TrackId = t.TrackId
JOIN Track t 
ON al.AlbumId = t.AlbumId
GROUP BY a.Name
ORDER BY BestSellingArtist DESC
LIMIT 3