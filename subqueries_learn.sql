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
SELECT `customer`,`Mode of Payment` FROM sales_invoice_datasets1 ORDER BY `Mode of Payment`;



 SELECT AVG(`Grand Total`) from sales_invoice_datasets1;
 SELECT *
 , (case WHEN `Grand Total`>(SELECT AVG(`Grand Total`) FROM sales_invoice_datasets1)
 then `Grand Total`
 else null
 end) as remarks
 FROM sales_invoice_datasets1 

 SELECT * 
 FROM customer_data;

 SELECT DISTINCT `Customer` FROM sales_invoice_datasets1;;
 INSERT INTO books
 VALUES(100, Sexorcised, 2);

 SELECT MIN(`Grand Total`) FROM sales_invoice_datasets1;
SELECT 
      CASE 
        WHEN `Grand Total` < 0 THEN 'low'
        WHEN `Grand Total` BETWEEN 0 AND 250000 THEN 'medium'
        WHEN `Grand Total` > 250000 THEN 'highest'
        ELSE  'unknown'
      END AS Grand_Total
      , COUNT(*)
      FROM sales_invoice_datasets1
      GROUP BY 1;

      SELECT `Customer`,
         COUNT (
            CASE WHEN `Grand Total` > 250000 THEN 1 ELSE NULL END) as below_average
      FROM sales_invoice_datasets1
       GROUP BY `Customer`;
       SELECT *
       FROM sales_invoice_datasets1
       ORDER BY 'Grand total' DESC
       LIMIT 3;
       SELECT MAX('Grand Total')
       FROM sales_invoice_datasets1;
       --Non-Correlated subqueries on a single table; flightsImagine you’d like to know how many flights there are on average, for all Fridays in a given month from the flights table.
SELECT a.dep_month,
       a.dep_day_of_week,
       AVG(a.flight_count) AS average_flights
  FROM (
        SELECT dep_month,
              dep_day_of_week,dep_date,
               COUNT(*) AS flight_count
          FROM flights
         GROUP BY 1,2,3
       ) a
 GROUP BY 1,2
 ORDER BY 1,2;
 --Non-correlated subqueries on multiple tables
 SELECT * 
FROM flights 
WHERE origin in (
    SELECT code 
    FROM airports 
    WHERE city = 'LOS ANGELES');

    --Correlated subquery:find the list of all flights whose distance is above average for their carrier.
    SELECT id
FROM flights AS f
WHERE distance > (
 SELECT AVG(distance)
 FROM flights
 WHERE carrier = f.carrier);
 --Increment
 SELECT carrier, id,
    (SELECT COUNT(*)
FROM flights f
WHERE f.id < flights.id
AND f.carrier=flights.carrier) + 1
 AS flight_sequence_number
FROM flights;

