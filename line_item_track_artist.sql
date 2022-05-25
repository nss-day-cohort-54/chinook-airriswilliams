Provide a query that shows each Invoice line item, with the name of the track that was purchase, and the name of the artist.

SELECT i.InvoiceLineId, i.TrackId, t.name, ar.name
FROM InvoiceLine AS i 
JOIN Track AS t 
    ON i.TrackId = t.TrackId
JOIN Album a 
    ON a.AlbumId = t.AlbumId
JOIN Artist ar 
    ON ar.ArtistId = A.ArtistId
