Which sales agent made the most in sales over all?

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
GROUP BY e.EmployeeId
)


