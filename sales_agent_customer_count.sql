Provide a query that shows how many customers are assigned to each employee. The resultant table should include:
Employee full name
Total number of customers assigned to each employee (even if it's zero)

SELECT e.FirstName || " " || e.LastName AS FullName,
CASE WHEN COUNT(c.SupportRepId) ISNULL THEN 0
    WHEN COUNT(c.SupportRepId) >= 0 THEN COUNT(c.SupportRepId) END AS CustomersAssigned
FROM Employee AS e 
LEFT JOIN Customer AS c 
ON c.SupportRepId = e.EmployeeId
GROUP BY e.EmployeeId 