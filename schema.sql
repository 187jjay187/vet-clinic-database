/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id BIGINT NOT NULL PRIMARY KEY,
    name VARCHAR (100),
    date_of_birth DATE,
    escape_attempts INT,
    neutered BOOLEAN,
    weight_kg DECIMAL
);

ALTER TABLE animals ADD COLUMN species VARCHAR(200);
-- create table owners 
CREATE TABLE owners(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    full_name VARCHAR(250),
    age INT
);
-- create table owners
CREATE TABLE species(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(250)
);

ALTER TABLE animals DROP id;
ALTER TABLE animals ADD id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY;

ALTER TABLE animals DROP COLUMN species;
-- add species column
ALTER TABLE animals ADD species_id INT;
-- add OWNER_ID column
 ALTER TABLE animals ADD owner_id INT;
-- add constraint to species_id primary key
 ALTER TABLE animals ADD CONSTRAINT fk_species_table FOREIGN KEY(species_id) REFERENCES species(id);
 -- add constraint to owner-id primary key
ALTER TABLE animals ADD CONSTRAINT fk_owner_table FOREIGN KEY(owner_id) REFERENCES owners(id);
