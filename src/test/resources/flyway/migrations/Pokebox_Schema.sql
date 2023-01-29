DROP TABLE IF EXISTS pokemon;

DROP TABLE IF EXISTS species_type;

DROP TABLE IF EXISTS type;

DROP TABLE IF EXISTS species;

CREATE TABLE species (
  species_id INT AUTO_INCREMENT NOT NULL,
  species_name VARCHAR(128) NOT NULL,
  dex_number INT NOT NULL,
  description TEXT,
  PRIMARY KEY (species_id)
);

CREATE TABLE type (
  type_id INT AUTO_INCREMENT NOT NULL,
  type_name VARCHAR(128) NOT NULL,
  PRIMARY KEY (type_id)
);

CREATE TABLE species_type (
  species_id INT NOT NULL,
  type_id INT NOT NULL,
  FOREIGN KEY (species_id) REFERENCES species(species_id) ON DELETE CASCADE,
  FOREIGN KEY (type_id) REFERENCES type(type_id) ON DELETE CASCADE,
  UNIQUE KEY (species_id, type_id)
);

CREATE TABLE pokemon (
  pokemon_id INT AUTO_INCREMENT NOT NULL,
  species_id INT NOT NULL,
  pokemon_name VARCHAR(128) NOT NULL,
  level INT NOT NULL,
  gender ENUM('male','female','none') NOT NULL,
  shiny BOOLEAN NOT null,
  PRIMARY KEY (pokemon_id),
  FOREIGN KEY (species_id) REFERENCES species(species_id) ON DELETE CASCADE
);