SELECT Sum(Total) AS TotalSales, YEAR(InvoiceDate) AS Year 
FROM Invoice 
WHERE YEAR(InvoiceDate) = 2009 OR YEAR(InvoiceDate) = 2011
GROUP BY YEAR(InvoiceDate)


