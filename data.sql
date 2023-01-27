/* Populate database with sample data. */

INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('1', 'Agumon', date '2020-02-03', 0, 'true', 10.23);

INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('2', 'Gabumon', date '2018-11-15', 2, 'true', 8);

INSERT INTO animals (is, name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES('3', 'Pikachu', date '2021-1-7', 1, 'false', 15.04);

INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES('4', 'Devimon', date '2017-05-12', 5, 'true', 11);

INSERT INTO  animals(id, name, date_of_birth, escape_attempts, neutered , weight_kg)
VALUES('5', 'Charmander', 'Feb 08 2020', 0, false, 11),
('6', 'Plantmon', 'Nov 15 2021', 2, true, 5.7),
('7', 'Squirtle', 'Apr 02 1993', 3, false, 12.13),
('8', 'Angemon', 'Jun 12 2005', 1, true, 45), 
('9', 'Boarmon', 'Jun 07 2005', 7, true, 20.4),
('10', 'Blossom', 'Oct 13 1998', 3, true, 17),
('11', 'Ditto', 'May 14 2022', 4, true, 22);

-- data to be inserted into owners table
INSERT INTO  owners(full_name, age)
VALUES('Sam Smith ', 34),
('Jennifer Orwell', 19 ),
('Bob', 45 ),
('Melody Pond', 77 ),
('Dean Winchester', 14 ),
('Jodie Whittaker', 38 );
-- data to be inserted for species
INSERT INTO  species(name) VALUES('Pokemon'), ('Digimon');
-- Modify the inserted animals so it includes the species_id value
UPDATE animals SET species_id = (SELECT id FROM species WHERE name = 'Digimon') WHERE name LIKE '%mon';

UPDATE animals SET species_id = (SELECT id FROM species WHERE name = 'Pokemon') WHERE name NOT LIKE '%mon';
-- Modify your inserted animals to include owner information (owner_id)
UPDATE animals SET owner_id = 1 WHERE name = 'Agumon';
UPDATE animals SET owner_id = 2 WHERE name = 'Gabumon' OR name = 'Pikachu';
UPDATE animals SET owner_id = 3 WHERE name = 'Devimon' OR name = 'Plantmon';
UPDATE animals SET owner_id = 4 WHERE name = 'Charmander' OR name = 'Squirtle' OR name = 'Blossom';
UPDATE animals SET owner_id = 5 WHERE name = 'Angemon' OR name = 'Boarmon';