-- Table variations and set operators
SELECT A1,A2,...,An
FROM R1,R2,...,Rn -table variables
WHERE Condition
Set operators  - Union, Intersect, Except
SELECT CONCAT(formal_title, '. ', name_first, SPACE(1), name_last) AS Birder,
CONCAT(common_name, ' - ', birds.scientific_name) AS Bird,
time_seen AS 'When Spotted'
FROM birdwatchers.bird_sightings
JOIN birdwatchers.humans USING(human_id)
JOIN rookery.birds USING(bird_id)
GROUP BY human_id DESC
LIMIT 4;
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