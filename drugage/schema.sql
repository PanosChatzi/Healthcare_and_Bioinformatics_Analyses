USE drugage;

CREATE TABLE drugage (
    compound_name VARCHAR(255) NOT NULL,
    cas_number VARCHAR(100) NOT NULL,
    species VARCHAR(150) NOT NULL,
    strain VARCHAR(150) NOT NULL,
    dosage VARCHAR(100) NOT NULL,
    avg_lifespan_change DECIMAL(10, 5) NOT NULL,
    max_lifespan_change DECIMAL(10, 5) NOT NULL,
    gender VARCHAR(100) NOT NULL,
    significance VARCHAR(50) NOT NULL,
    pubmed_id INT NOT NULL
);