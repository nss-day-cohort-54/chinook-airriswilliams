Provide a query that shows each Invoice line item, with the name of the track that was purchased.

SELECT i.InvoiceLineId, i.TrackId, t.name
FROM InvoiceLine AS i 
JOIN Track AS t 
ON i.TrackId = t.TrackId