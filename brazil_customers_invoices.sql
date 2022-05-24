SELECT c.FirstName, c.LastName, i.InvoiceId, i.InvoiceDate, i.BillingCountry
FROM Customer AS c 
JOIN Invoice AS i 
on i.CustomerId = c.CustomerId
WHERE BillingCountry = "Brazil"