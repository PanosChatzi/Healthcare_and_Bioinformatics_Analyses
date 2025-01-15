-- use the cancer research database
USE cancer;

SELECT COUNT(*)
FROM cancer_data;

-- Use a CTE to filter the data. The goal is to select counties with an
-- age-adjusted death rate greater than 50 and a recent trend that is either 'stable', 'rising' or 'falling'.
WITH cancer_cte AS (
    SELECT 
        county,
        fips,
        met_objective,
        age_adjusted_death_rate,
        lower_confidence_interval_death_rate,
        upper_confidence_interval_death_rate,
        average_deaths_per_year,
        recent_trend,
        recent_5year_trend_death_rates,
        lower_confidence_interval_trend,
        upper_confidence_interval_trend
    FROM cancer_data
    WHERE age_adjusted_death_rate > 50
		AND recent_trend IN ('stable', 'rising', 'falling')
)
SELECT *
FROM cancer_cte;

