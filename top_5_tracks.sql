Provide a query that shows the top 5 most purchased tracks over all.

SELECT t.Name, SUM(il.TrackId) MostSold
FROM InvoiceLine AS il 
JOIN Track AS t 
ON il.TrackId = T.TrackId
JOIN Invoice AS i 
ON i.InvoiceId = il.InvoiceId
GROUP BY t.Name
ORDER BY MostSold DESC
LIMIT 5