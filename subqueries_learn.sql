SELECT * FROM rookery.sales_invoice_datasets1;
USE rookery;
SELECT COUNT(*) AS NUMBERS FROM sales_invoice_datasets1;
SELECT DISTINCT `ID`FROM sales_invoice_datasets1;

SELECT * FROM rookery.sales_invoice_datasets1;
SELECT avg(`Grand Total`) FROM sales_invoice_datasets1;
SELECT *
FROM sales_invoice_datasets1 f
join (SELECT avg(`Grand Total`) grand FROM sales_invoice_datasets1) avg_grand
on f.`Grand Total` > avg_grand.grand;
Select distinct ID from sales_invoice_datasets1;