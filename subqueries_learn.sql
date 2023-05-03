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

SELECT * FROM sales_invoice_datasets1;
SELECT invoice_date,sum(`Grand Total`) FROM sales_invoice_datasets1 GROUP BY invoice_date; 

SELECT year(invoice_date) AS Years, week(invoice_date) AS week_start_date, SUM(`Grand Total`) AS total_sales
FROM sales_invoice_datasets1 GROUP BY week_start_date, Years ORDER BY week_start_date;
SELECT DISTINCT `Customer` FROM sales_invoice_datasets1;
SELECT `Customer`,SUM (`Grand Total`) FROM sales_invoice_datasets1 GROUP BY `Customer` ORDER BY (SUM(`Grand Total`))DESC;
SELECT `Customer`, SUM(`Grand Total`) AS total_grand
FROM sales_invoice_datasets1
GROUP BY `Customer`;
