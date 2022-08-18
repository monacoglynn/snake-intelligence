DROP DATABASE IF EXISTS snake_db;
CREATE DATABASE snake_db;

USE snake_db;

CREATE TABLE animal (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL
);

CREATE TABLE species (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    animal_id INT,
    FOREIGN KEY (animal_id)
    REFERENCES animal(id)
    ON DELETE SET NULL
);

CREATE TABLE pet (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    species_id INT,
    FOREIGN KEY (species_id)
    REFERENCES species(id)
    ON DELETE SET NULL
);