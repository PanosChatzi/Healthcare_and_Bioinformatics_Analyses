CREATE TABLE covid_testing (
    iso_code VARCHAR(10) NOT NULL,
    location VARCHAR(100) NOT NULL,
    date DATE NOT NULL,
    total_cases INT NOT NULL,
    new_cases INT NOT NULL,
    total_deaths INT NOT NULL,
    new_deaths INT NOT NULL,
    total_cases_per_million FLOAT NOT NULL,
    new_cases_per_million FLOAT NOT NULL,
    total_deaths_per_million FLOAT NOT NULL,
    new_deaths_per_million FLOAT NOT NULL
);