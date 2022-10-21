-- HW3

-- Exercise1: Do the same with speed. If speed is NULL or speed < 100 create a “LOW SPEED” category, otherwise, mark as “HIGH SPEED”. Use IF instead of CASE!
SELECT aircraft, airline, speed, 
	IF (speed IS NULL OR speed < 100, 'LOW SPEED', 'HIGH SPEED')
AS speed_category 
FROM birdstrikes 
ORDER BY speed_category;

-- Exercise2: How many distinct ‘aircraft’ we have in the database?
SELECT COUNT(DISTINCT aircraft) FROM birdstrikes;
-- 3

-- Exercise3: What was the lowest speed of aircrafts starting with ‘H’
SELECT MIN(speed) FROM birdstrikes WHERE aircraft LIKE 'H%';
-- 9

-- Exercise4: Which phase_of_flight has the least of incidents?
SELECT phase_of_flight, COUNT(*) AS count FROM birdstrikes GROUP BY phase_of_flight ORDER BY count ASC LIMIT 1;
-- Taxi 2

-- Exercise5: What is the rounded highest average cost by phase_of_flight?
SELECT phase_of_flight, ROUND(AVG(cost)) as avg_cost  FROM birdstrikes GROUP BY phase_of_flight ORDER BY avg_cost DESC LIMIT 1;
-- 54673

-- Exercise6: What the highest AVG speed of the states with names less than 5 characters?
SELECT state, (AVG(speed)) as Avg_speed FROM birdstrikes WHERE length(state) <'5' GROUP BY state ORDER BY Avg_Speed DESC Limit 1;
-- 2862.5
