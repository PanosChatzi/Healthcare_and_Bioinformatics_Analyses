-- use the drugage database
USE drugage;

-- check number of rows imported
SELECT COUNT(*)
FROM drugage;

-- filter for 'Drosophila melanogaster'
SELECT COUNT(*)
FROM drugage
WHERE species = 'Drosophila melanogaster'
LIMIT 1;

-- include only compounds with maximum lifespan change greater than 10%
SELECT *
FROM drugage
WHERE species = 'Drosophila melanogaster'
	AND max_lifespan_change > 10
LIMIT 10;

-- include only statistically significant findings
SELECT *
FROM drugage
WHERE species = 'Drosophila melanogaster'
	AND max_lifespan_change > 10
    AND significance = 'S'
LIMIT 10;

-- include only male and female sex
SELECT *
FROM drugage
WHERE species = 'Drosophila melanogaster'
	AND max_lifespan_change > 10
    AND significance = 'S'
    AND gender IN ('Male', 'Female')
LIMIT 10;

-- filter for dosage less than or equal to 5%
SELECT COUNT(*)
FROM drugage
WHERE species = 'Drosophila melanogaster'
	AND max_lifespan_change > 10
    AND significance = 'S'
    AND gender IN ('Male', 'Female')
    AND dosage <= '5%'
LIMIT 1;

SELECT *
FROM drugage
WHERE species = 'Drosophila melanogaster'
	AND max_lifespan_change > 10
    AND significance = 'S'
    AND gender IN ('Male', 'Female')
    AND dosage <= '5%';