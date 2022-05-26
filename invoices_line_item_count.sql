Provide a query that shows all Invoices. The resultant table should include:
InvoiceId
The total number of line items on each invoice

SELECT i.InvoiceId,
        COUNT(il.InvoiceLineId) AS LineItemTotal
FROM Invoice AS i 
JOIN InvoiceLine AS il 
    ON i.InvoiceId = il.InvoiceId
GROUP BY i.InvoiceId;