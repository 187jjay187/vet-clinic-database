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