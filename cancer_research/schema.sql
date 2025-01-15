USE cancer;

CREATE TABLE cancer_data (
    county VARCHAR(255) NOT NULL,
    fips INT NOT NULL,
    met_objective VARCHAR(50) NOT NULL,
    age_adjusted_death_rate FLOAT NOT NULL,
    lower_confidence_interval_death_rate FLOAT NOT NULL,
    upper_confidence_interval_death_rate FLOAT NOT NULL,
    average_deaths_per_year FLOAT NOT NULL,
    recent_trend VARCHAR(50) NOT NULL,
    recent_5year_trend_death_rates FLOAT NOT NULL,
    lower_confidence_interval_trend FLOAT NOT NULL,
    upper_confidence_interval_trend FLOAT NOT NULL,
    PRIMARY KEY (fips)
);
