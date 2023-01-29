INSERT INTO pokemon
(species_id, pokemon_name, `level`, gender, shiny)
VALUES((SELECT species.species_id FROM species WHERE species.species_name = 'Charmander'), 'Charmander', 5, 'MALE', 0);

INSERT INTO pokemon
(species_id, pokemon_name, `level`, gender, shiny)
VALUES((SELECT species.species_id FROM species WHERE species.species_name = 'Weedle'), 'Weedle', 6, 'MALE', 1);

INSERT INTO pokemon
(species_id, pokemon_name, `level`, gender, shiny)
VALUES((SELECT species.species_id FROM species WHERE species.species_name = 'Bulbasaur'), 'Leafy', 12, 'FEMALE', 0);

INSERT INTO pokemon
(species_id, pokemon_name, `level`, gender, shiny)
VALUES((SELECT species.species_id FROM species WHERE species.species_name = 'Charmander'), 'Charred', 11, 'MALE', 0);

INSERT INTO pokemon
(species_id, pokemon_name, `level`, gender, shiny)
VALUES((SELECT species.species_id FROM species WHERE species.species_name = 'Dratini'), 'Dratini', 5, 'FEMALE', 1);

INSERT INTO pokemon
(species_id, pokemon_name, `level`, gender, shiny)
VALUES((SELECT species.species_id FROM species WHERE species.species_name = 'Abra'), 'Abra', 5, 'MALE', 0);
