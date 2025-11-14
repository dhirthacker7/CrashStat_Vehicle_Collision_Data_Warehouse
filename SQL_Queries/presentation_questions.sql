-- Q1) How many accidents occurred in New York, Austin, and Chicago? What is the accident count by city?
SELECT 
    city,
    COUNT(*) AS total_accidents
FROM fct_accident
WHERE city IN ('NewYork', 'Austin', 'Chicago')
GROUP BY city;

-- Q2) Which streets have the most accidents in each city? What are the top 3 most dangerous streets per city?
SELECT TOP 3
    f.city,
    l.Street_Name,
    COUNT(*) AS total_accidents
FROM fct_accident f
JOIN dim_Location l ON f.Location_SK = l.Location_SK
WHERE f.city IN ('NewYork', 'Austin', 'Chicago')
GROUP BY f.city, l.Street_Name
ORDER BY f.city, total_accidents DESC;

-- Q3) Which city has the most total injuries? How do injury totals compare across New York, Austin, and Chicago?
SELECT 
    f.city, 
    sum(f.tot_injury_count) AS total_injuries
FROM fct_accident f
JOIN dim_Location l ON f.Location_SK = l.Location_SK
WHERE f.city IN ('NewYork', 'Austin', 'Chicago')
GROUP BY f.city
ORDER BY total_injuries DESC;

-- Q4) What's the pedestrian injury-to-death ratio by city? Show me pedestrian involvement statistics for each city
SELECT 
    city,
    AVG(CASE WHEN pedestrian_death_count <> 0 THEN CAST(pedestrain_injury_count AS FLOAT) / pedestrian_death_count ELSE NULL END) AS pedestrian_involvement_ratio,
    SUM(pedestrain_injury_count) AS total_pedestrians_injuries,
    SUM(pedestrian_death_count) AS total_pedestrians_involved
FROM fct_Accident
GROUP BY city;

