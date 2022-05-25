Provide a query that shows the total number of invoices per country.
HINT: GROUP BY

SELECT c.Country,
COUNT(c.Country) AS InvoiceCount
FROM Invoice AS i 
JOIN Customer AS c 
    ON i.CustomerId = c.CustomerId
GROUP BY c.Country