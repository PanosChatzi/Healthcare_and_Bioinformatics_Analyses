CREATE DATABASE `longevity`;

USE longevity;

CREATE TABLE longevity (
    id INT AUTO_INCREMENT PRIMARY KEY,
    association ENUM('non-significant', 'significant'),
    population VARCHAR(100) NOT NULL,
    variant VARCHAR(100),
    gene VARCHAR(100) NOT NULL,
    pubMed INT NOT NULL
);

SHOW VARIABLES LIKE "secure_file_priv";

LOAD DATA INFILE '/var/lib/mysql-files/longevity.csv'
INTO TABLE longevity
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;