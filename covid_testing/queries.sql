-- use the covid databases
USE covid;

-- inspect the table and row number
SELECT *
FROM covid_testing
LIMIT 1;

SELECT COUNT(*)
FROM covid_testing;

-- identify the earliest and latest date
SELECT 
	MIN(date) AS 'earliest_date',
    MAX(date) AS 'latest_date'
FROM covid.covid_testing;

-- find the top 10 countries with the highest total cases on the latest date
SELECT iso_code, total_cases
FROM covid_testing
WHERE date = (SELECT MAX(date) FROM covid_testing)
ORDER BY total_cases DESC
LIMIT 10;

-- filter the dataset to include all records from the top 10 countries
-- covering the entire period up to the latest date
WITH top_ten_countries AS (
    SELECT iso_code
    FROM covid_testing
    WHERE date = (SELECT MAX(date) FROM covid_testing)
    ORDER BY total_cases DESC
    LIMIT 10
)
SELECT *
FROM covid_testing
WHERE iso_code IN (SELECT iso_code FROM top_ten_countries)
  AND date <= (SELECT MAX(date) FROM covid_testing);


