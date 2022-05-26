Provide a query that shows the most purchased track(s) of 2013.

SELECT t.Name, SUM(il.TrackId) SoldTracks
FROM InvoiceLine AS il 
JOIN Track AS t 
ON il.TrackId = T.TrackId
JOIN Invoice AS i 
ON i.InvoiceId = il.InvoiceId
WHERE i.InvoiceDate LIKE "%2013%"
GROUP BY t.Name
ORDER BY SoldTracks DESC