-- Provide a query that shows the customers and employees associated with each invoice. The resultant table should include:
-- Invoice Total
-- Customer Name
-- Customer Country
-- Sale Agent full name

SELECT Total,
        CCountry,
        CFirstName,
        CLastName,
        e.FirstName as EFirstName,
        e.LastName as ELastName
FROM
(
    SELECT i.InvoiceId,
           i.Total,
           c.Country as CCountry,
           c.FirstName as CFirstName,
           c.LastName as CLastName,
           c.SupportRepId

    FROM Invoice as i 
    JOIN Customer as c 
    ON i.CustomerId = c.CustomerId
)
JOIN Employee AS e 
ON SupportRepId = e.EmployeeId;