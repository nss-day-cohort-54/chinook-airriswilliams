Which country's customers spent the most?
HINT: Use the MAX function on a subquery.

SELECT Country, MAX(mycount) Count
FROM (
SELECT i.BillingCountry Country, SUM(i.Total) mycount
FROM Invoice AS i 
group by i.BillingCountry
)