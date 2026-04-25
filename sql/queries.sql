-- Create Database
CREATE DATABASE running_analysis;

USE running_analysis;

-- Create table
CREATE TABLE weekly_data (
    year INT,
    week INT,
    distance FLOAT,
    pace_min_per_km FLOAT,
    elevation_per_km FLOAT
);	

-- Average pace by year
SELECT
    year,
    AVG(pace_min_per_km) AS avg_pace
FROM weekly_data
GROUP BY year
ORDER BY year;

-- Average distance by year
SELECT
    year,
    AVG(distance) AS avg_distance
FROM weekly_data
GROUP BY year
ORDER BY year;

-- Best year based on lowest average pace
SELECT
    year,
    AVG(pace_min_per_km) AS avg_pace
FROM weekly_data
GROUP BY year
ORDER BY avg_pace ASC
LIMIT 1;