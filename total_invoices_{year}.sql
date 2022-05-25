-- How many Invoices were there in 2009 and 2011?
-- HINT: COUNT

SELECT COUNT (InvoiceId)
FROM Invoice
WHERE InvoiceDate LIKE  '%2009%';

SELECT COUNT (InvoiceId)
FROM Invoice
WHERE InvoiceDate LIKE  '%2011%'