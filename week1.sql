/* Assignment: SQL Select and Aggregations
Please use the tables in the flights database. Your deliverable should include the SQL queries that you write in support of your conclusions.
1. Which destination in the flights database is the furthest distance away, based on information in the flights table. Show the SQL query(s) that support your conclusion.
*/
SELECT DISTINCT dest, distance, origin, carrier, flight AS 'furthest distance' 
FROM flights WHERE distance IN (select max(distance) from flights);

/*What are the different numbers of engines in the planes table? For each number of engines, which aircraft have the most number of seats? Show the SQL statement(s) that support your result.
*/
SELECT engines, MAX(seats) FROM planes GROUP by engines ORDER by max(seats) DESC;

/*Show the total number of flights.*/
SELECT COUNT(*) flights FROM planes;

/*Show the total number of flights by airline (carrier) */
SELECT carrier, COUNT(*) FROM flights GROUP BY carrier;

/*Show all of the airlines, ordered by number of flights in descending order */
SELECT carrier, COUNT(*) FROM flights GROUP BY carrier ORDER BY COUNT(*) DESC;

/*Show only the top 5 airlines, by number of flights, ordered by number of flights in descending order.*/
SELECT carrier, COUNT(*) FROM flights GROUP by carrier ORDER BY COUNT(*) DESC LIMIT 5;

/*Show only the top 5 airlines, by number of flights of distance 1,000 miles or greater, ordered by number of flights in descending order.*/
SELECT carrier, COUNT(*) AS FlightCount FROM flights WHERE (distance >=1000) GROUP BY carrier ORDER BY FlightCount DESC LIMIT 5;

/*Create a question that (a) uses data from the flights database, and (b) requires aggregation to answer it, and write down both the question, and the query that answers the question.*/
/*What is the average distance of flights from carrier AA */
SELECT carrier, AVG(distance) FROM flights WHERE carrier='AA';

 