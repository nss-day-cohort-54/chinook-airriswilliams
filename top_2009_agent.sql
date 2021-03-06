Which sales agent made the most in sales in 2009?

HINT: Use the MAX function on a subquery.

SELECT MAX(TotalSales) AS Topsales,
FullName
FROM (
SELECT e.FirstName || " " || e.LastName AS FullName,
sum(i.Total) AS TotalSales
FROM Employee as e 
JOIN Customer as c 
ON e.EmployeeId = c.SupportRepId
JOIN Invoice as i 
ON c.CustomerId = i.CustomerId
WHERE i.InvoiceDate LIKE '%2009%'
GROUP BY e.EmployeeId
)