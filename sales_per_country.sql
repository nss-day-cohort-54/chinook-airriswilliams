Provide a query that shows the total sales per country.

SELECT i.BillingCountry,
SUM(i.Total)
FROM Invoice AS i 
GROUP BY i.BillingCountry
