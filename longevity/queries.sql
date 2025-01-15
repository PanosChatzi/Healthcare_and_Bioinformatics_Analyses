-- use the longevity database
USE longevity;

-- filter for only significant associations
SELECT *
FROM longevity
WHERE association = 'significant'
LIMIT 1;

-- filter for significant associations and genes that
-- have been studied in at least two populations
SELECT DISTINCT l1.*
FROM longevity l1
JOIN longevity l2
ON l1.gene = l2.gene
AND l1.population <> l2.population
WHERE l1.association = 'significant'
ORDER BY l1.id;

-- export the data in .csv for further analysis in python
SELECT DISTINCT l1.*
FROM longevity l1
JOIN longevity l2
ON l1.gene = l2.gene
AND l1.population <> l2.population
WHERE l1.association = 'significant'
ORDER BY l1.id
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/longevity_filtered.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';
