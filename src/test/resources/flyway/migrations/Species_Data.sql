-- Types --
INSERT INTO type (type_id, type_name) VALUES (1, 'Normal');
INSERT INTO type (type_id, type_name) VALUES (2, 'Fire');
INSERT INTO type (type_id, type_name) VALUES (3, 'Water');
INSERT INTO type (type_id, type_name) VALUES (4, 'Grass');
INSERT INTO type (type_id, type_name) VALUES (5, 'Electric');
INSERT INTO type (type_id, type_name) VALUES (6, 'Ice');
INSERT INTO type (type_id, type_name) VALUES (7, 'Fighting');
INSERT INTO type (type_id, type_name) VALUES (8, 'Poison');
INSERT INTO type (type_id, type_name) VALUES (9, 'Ground');
INSERT INTO type (type_id, type_name) VALUES (10, 'Flying');
INSERT INTO type (type_id, type_name) VALUES (11, 'Psychic');
INSERT INTO type (type_id, type_name) VALUES (12, 'Bug');
INSERT INTO type (type_id, type_name) VALUES (13, 'Rock');
INSERT INTO type (type_id, type_name) VALUES (14, 'Ghost');
INSERT INTO type (type_id, type_name) VALUES (15, 'Dragon');

-- Species --
INSERT INTO species (species_name, dex_number, description) 
VALUES ('Bulbasaur', 1, 'A strange seed was planted on its back at birth. The plant sprouts and grows with this Pokemon');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 4);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 8);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Charmander', 4, 'Obviously prefers hot places. When it rains, steam is said to spout from the tip of its tail.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 2);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Squirtle', 7, 'After birth, its back swells and hardens into a shell. Powerfully sprays foam from its mouth.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 3);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Caterpie', 10, 'Its short feet are tipped with suction pads that enable it to tirelessly climb slopes and walls.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 12);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Weedle', 13, 'Often found in forests, eating leaves. It has a sharp venomous stinger on its head.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 12);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 8);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Pidgey', 16, 'A common sight in forests and woods. It flaps its wings at ground level to kick up blinding sand.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 1);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 10);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Pikachu', 25, 'When several of these Pokemon gather, their electricity could build and cause lightning storms.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 5);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Sandshrew', 27, 'Burrows deep underground in arid locations far from water. It only emerges to hunt for food.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 9);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Clefairy', 35, 'Its magical and cute appeal has many admirers. It is rare and found only in certain areas.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 1);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Mankey', 56, 'Extremely quick to anger. It could be docile one moment then thrashing away the next instant.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 7);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Abra', 63, 'Using its ability to read minds, it will identify impending danger and Teleport to safety.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 11);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Cloyster', 91, 'When attacked, it launches its horns in quick volleys. Its innards have never been seen.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 3);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 6);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Gastly', 92, 'Almost invisible, this gaseous Pokemon cloaks the target and puts it to sleep without notice.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 14);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 8);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Dratini', 147, 'Long considered a mythical Pokemon until recently when a small colony was found living underwater.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 15);

