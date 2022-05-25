What are the respective total sales for each of those years?
HINT: SUM

SELECT SUM (Total)
FROM Invoice
WHERE InvoiceDate LIKE  '%2009%';

SELECT SUM (Total)
FROM Invoice
WHERE InvoiceDate LIKE  '%2011%'