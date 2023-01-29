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
VALUES ('Ivysaur', 2, 'When the bulb on its back grows large, it appears to lose the ability to stand on its hind legs.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 4);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 8);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Venusaur', 3, 'The plant blooms when it is absorbing solar energy. It stays on the move to seek sunlight.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 4);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 8);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Charmander', 4, 'Obviously prefers hot places. When it rains, steam is said to spout from the tip of its tail.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 2);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Charmeleon', 5, 'When it swings its burning tail, it elevates the temperature to unbearably high levels.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 2);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Charizard', 6, 'Spits fire that is hot enough to melt boulders. Known to cause forest fires unintentionally.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 2);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 10);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Squirtle', 7, 'After birth, its back swells and hardens into a shell. Powerfully sprays foam from its mouth.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 3);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Wartortle', 8, 'Often hides in water to stalk unwary prey. For swimming fast, it moves its ears to maintain balance.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 3);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Blastoise', 9, 'A brutal Pokemon with pressurized water jets on its shell. They are used for high speed tackles.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 3);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Caterpie', 10, 'Its short feet are tipped with suction pads that enable it to tirelessly climb slopes and walls.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 12);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Metapod', 11, 'This Pokemon is vulnerable to attack while its shell is soft, exposing its weak and tender body.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 12);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Butterfree', 12, ' In battle, it flaps its wings at high speed to release highly toxic dust into the air.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 12);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 10);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Weedle', 13, 'Often found in forests, eating leaves. It has a sharp venomous stinger on its head.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 12);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 8);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Kakuna', 14, 'Almost incapable of moving, this Pokemon can only harden its shell to protect itself from predators.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 12);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 8);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Beedrill', 15, 'Flies at high speed and attacks using its large venomous stingers on its forelegs and tail.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 12);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 8);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Pidgey', 16, 'A common sight in forests and woods. It flaps its wings at ground level to kick up blinding sand.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 1);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 10);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Pidgeotto', 17, 'Very protective of its sprawling territorial area, this Pokemon will fiercely peck at any intruder.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 1);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 10);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Pidgeot', 18, 'When hunting, it skims the surface of water at high speed to pick off unwary prey such as Magikarp.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 1);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 10);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Rattata', 19, 'Bites anything when it attacks. Small and very quick, it is a common sight in many places.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 1);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Raticate', 20, 'It uses its whiskers to maintain its balance. It apparently slows down if they are cut off.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 1);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Spearow', 21, 'Eats bugs in grassy areas. It has to flap its short wings at high speed to stay airborne.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 1);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 10);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Fearow', 22, 'With its huge and magnificent wings, it can keep aloft without ever having to land for rest.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 1);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 10);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Ekans', 23, 'Moves silently and stealthily. Eats the eggs of birds, such as Pidgey and Spearow, whole.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 8);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Arbok', 24, 'It is rumored that the ferocious warning markings on its belly differ from area to area.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 8);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Pikachu', 25, 'When several of these Pokemon gather, their electricity could build and cause lightning storms.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 5);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Raichu', 26, 'Its long tail serves as a ground to protect itself from its own high voltage power.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 5);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Sandshrew', 27, 'Burrows deep underground in arid locations far from water. It only emerges to hunt for food.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 9);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Sandslash', 28, 'Curls up into a spiny ball when threatened. It can roll while curled up to attack or escape.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 9);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Nidoran', 29, 'Although small, its venomous barbs render this Pokemon dangerous. The female has smaller horns.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 8);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Nidorina', 30, 'The females horn develops slowly. Prefers physical attacks such as clawing and biting.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 8);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Nidoqueen', 31, 'Its hard scales provide strong protection. It uses its hefty bulk to execute powerful moves.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 8);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 9);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Nidoran', 32, 'Stiffens its ears to sense danger. The larger its horns, the more powerful its secreted venom.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 8);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Nidorino', 33, 'An aggressive Pokemon that is quick to attack. The horn on its head secretes a powerful venom.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 8);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Nidoking', 34, ' It uses its powerful tail in battle to smash, constrict, then break the preys bones.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 8);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 9);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Clefairy', 35, 'Its magical and cute appeal has many admirers. It is rare and found only in certain areas.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 1);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Clefable', 36, 'A timid fairy Pokemon that is rarely seen. It will run and hide the moment it senses people.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 1);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Vulpix', 37, 'At the time of birth, it has just one tail. The tail splits from its tip as it grows older.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 2);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Ninetales', 38, 'Very smart and very vengeful. Grabbing one of its many tails could result in a 1000-year curse.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 2);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Jigglypuff', 39, 'When its huge eyes light up, it sings a mysteriously soothing melody that lulls its enemies to sleep.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 1);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Wigglytuff', 40, 'The body is soft and rubbery. When angered, it will suck in air and inflate itself to an enormous size.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 1);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Zubat', 41, 'Forms colonies in perpetually dark places. Uses ultrasonic waves to identify and approach targets.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 8);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 10);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Golbat', 42, 'Once it strikes, it will not stop draining energy from the victim even if it gets too heavy to fly.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 8);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 10);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Oddish', 43, 'During the day, it keeps its face buried in the ground. At night, it wanders around sowing its seeds.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 4);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 8);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Gloom', 44, 'The fluid that oozes from its mouth isnt drool. It is a nectar that is used to attract prey.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 4);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 8);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Vileplume', 45, 'The larger its petals, the more toxic pollen it contains. Its big head is heavy and hard to hold up.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 4);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 8);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Paras', 46, 'Burrows to suck tree roots. The mushrooms on its back grow by drawing nutrients from the bug host.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 12);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 4);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Parasect', 47, 'A host-parasite pair in which the parasite mushroom has taken over the host bug. Prefers damp places.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 12);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 4);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Venonat', 48, 'Lives in the shadows of tall trees where it eats insects. It is attracted by light at night.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 12);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 8);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Venomoth', 49, 'The dust-like scales covering its wings are color coded to indicate the kinds of poison it has.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 12);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 8);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Diglett', 50, 'Lives about one yard underground where it feeds on plant roots. It sometimes appears above ground.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 9);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Dugtrio', 51, 'A team of Diglett triplets. It triggers huge earthquakes by burrowing 60 miles underground.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 9);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Meowth', 52, 'Adores circular objects. Wanders the streets on a nightly basis to look for dropped loose change.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 1);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Persian', 53, 'Although its fur has many admirers, it is tough to raise as a pet because of its fickle meanness.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 1);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Psyduck', 54, 'While lulling its enemies with its vacant look, this wily Pokemon will use psychokinetic powers.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 3);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Golduck', 55, 'Often seen swimming elegantly by lake shores. It is often mistaken for the Japanese monster, Kappa.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 3);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Mankey', 56, 'Extremely quick to anger. It could be docile one moment then thrashing away the next instant.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 7);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Primeape', 57, 'Always furious and tenacious to boot. It will not abandon chasing its quarry until it is caught.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 7);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Growlithe', 58, 'Very protective of its territory. It will bark and bite to repel intruders from its space.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 2);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Arcanine', 59, 'A Pokemon that has been admired since the past for its beauty. It runs agilely as if on wings.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 2);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Poliwag', 60, 'Its newly grown legs prevent it from running. It appears to prefer swimming than trying to stand.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 3);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Poliwhirl', 61, 'Capable of living in or out of water. When out of water, it sweats to keep its body slimy.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 3);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Poliwrath', 62, 'An adept swimmer at both the front crawl and breast stroke. Easily overtakes the best human swimmers.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 3);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 7);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Abra', 63, 'Using its ability to read minds, it will identify impending danger and Teleport to safety.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 11);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Kadabra', 64, 'It emits special alpha waves from its body that induce headaches just by being close by.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 11);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Alakazam', 65, 'Its brain can outperform a super-computer. Its intelligence quotient is said to be 5,000.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 11);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Machop', 66, 'Loves to build its muscles. It trains in all styles of martial arts to become even stronger.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 7);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Machoke', 67, 'Its muscular body is so powerful, it must wear a power save belt to be able to regulate its motions.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 7);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Machamp', 68, 'Using its heavy muscles, it throws powerful punches that can send the victim clear over the horizon.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 7);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Bellsprout', 69, 'A carnivorous Pokemon that traps and eats bugs. It uses its root feet to soak up needed moisture.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 4);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 8);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Weepinbell', 70, ' It spits out PoisonPowder to immobilize the enemy and then finishes it with a spray of Acid.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 4);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 8);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Victreebel', 71, 'Said to live in huge colonies deep in jungles, although no one has ever returned from there.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 4);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 8);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Tentacool', 72, 'Drifts in shallow seas. Anglers who hook them by accident are often punished by its stinging acid.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 3);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 8);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Tentacruel', 73, 'The tentacles are normally kept short. On hunts, they are extended to ensnare and immobilize prey.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 3);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 8);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Geodude', 74, 'Found in fields and mountains. Mistaking them for boulders, people often step or trip on them.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 13);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 9);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Graveler', 75, 'Rolls down slopes to move. It rolls over any obstacle without slowing or changing its direction.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 13);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 9);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Golem', 76, '  Its boulder-like body is extremely hard. It can easily withstand dynamite blasts without damage.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 13);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 9);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Ponyta', 77, 'Its hooves are 10 times harder than diamonds. It can trample anything completely flat in little time.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 2);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Rapidash', 78, 'Very competitive, this Pokemon will chase anything that moves fast in the hopes of racing it.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 2);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Slowpoke', 79, 'Incredibly slow and dopey. It takes 5 seconds for it to feel pain when under attack.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 3);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 11);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Slowbro', 80, 'The Shellder that is latched onto Slowpokes tail is said to feed on the hosts left over scraps.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 3);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 11);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Magnemite', 81, 'Uses anti-gravity to stay suspended. Appears without warning and uses Thunder Wave and similar moves.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 5);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Magneton', 82, 'Formed by several Magnemites linked together. They frequently appear when sunspots flare up.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 5);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Farfetchd', 83, 'The sprig of green onions it holds is its weapon. It is used much like a metal sword.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 1);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 10);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Doduo', 84, 'A bird that makes up for its poor flying with its fast foot speed. Leaves giant footprints.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 1);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 10);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Dodrio', 85, 'Uses its three brains to execute complex plans. While two heads sleep, one head stays awake.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 1);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 10);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Seel', 86, 'The protruding horn on its head is very hard. It is used for bashing through thick ice.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 3);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 6);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Dewgong', 87, 'Stores thermal energy in its body. Swims at a steady 8 knots even in intensely cold waters.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 3);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 6);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Grimer', 88, 'Appears in filthy areas. Thrives by sucking up polluted sludge that is pumped out of factories.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 8);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Muk', 89, 'Thickly covered with a filthy, vile sludge. It is so toxic, even its footprints contain poison.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 8);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Shellder', 90, 'Its hard shell repels any kind of attack. It is vulnerable only when its shell is open.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 3);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 6);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Cloyster', 91, 'When attacked, it launches its horns in quick volleys. Its innards have never been seen.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 3);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 6);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Gastly', 92, 'Almost invisible, this gaseous Pokemon cloaks the target and puts it to sleep without notice.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 14);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 8);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Haunter', 93, 'Because of its ability to slip through block walls, it is said to be from another dimension.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 14);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 8);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Gengar', 94, 'Under a full moon, this Pokemon likes to mimic the shadows of people and laugh at their fright.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 14);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 8);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Onix', 95, 'As it grows, the stone portions of its body harden to become similar to a diamond, but colored black.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 13);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 9);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Drowzee', 96, 'Puts enemies to sleep then eats their dreams. Occasionally gets sick from eating bad dreams.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 1);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Hypno', 97, 'When it locks eyes with an enemy, it will use a mix of PSI moves such as Hypnosis and Confusion.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 11);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Krabby', 98, 'Its pincers are not only powerful weapons, they are used for balance when walking sideways.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 3);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Kingler', 99, 'The large pincer has 10000 hp of crushing power. However, its huge size makes it unwieldy to use.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 3);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Voltorb', 100, 'Usually found in power plants. Easily mistaken for a Poke Ball, they have zapped many people.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 5);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Electrode', 101, ' It stores electric energy under very high pressure. It often explodes with little or no provocation.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 5);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Exeggcute', 102, 'Often mistaken for eggs. When disturbed, they quickly gather and attack in swarms.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 4);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 11);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Exeggutor', 103, 'Legend has it that on rare occasions, one of its heads will drop off and continue on as an Exeggcute.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 4);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 11);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Cubone', 104, 'Because it never removes its skull helmet, no one has ever seen this Pokémons real face.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 9);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Marowak', 105, 'The bone it holds is its key weapon. It throws the bone skillfully like a boomerang to KO targets.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 9);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Hitmonlee', 106, 'When in a hurry, its legs lengthen progressively. It runs smoothly with extra long, loping strides.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 7);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Hitmonchan', 107, 'While apparently doing nothing, it fires punches in lightning fast volleys that are impossible to see.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 7);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Lickitung', 108, 'Its tongue can be extended like a chameleons. It leaves a tingling sensation when it licks enemies.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 1);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Koffing', 109, 'Because it stores several kinds of toxic gases in its body, it is prone to exploding without warning.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 8);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Weezing', 110, 'Where two kinds of poison gases meet, 2 Koffings can fuse into a Weezing over many years.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 8);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Rhyhorn', 111, 'Its massive bones are 1000 times harder than human bones. It can easily knock a trailer flying.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 13);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 9);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Rhydon', 112, 'Protected by an armor-like hide, it is capable of living in molten lava of 3,600 degrees.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 13);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 9);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Chansey', 113, 'A rare and elusive Pokemon that is said to bring happiness to those who manage to get it.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 1);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Tangela', 114, 'The whole body is swathed with wide vines that are similar to seaweed. Its vines shake as it walks.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 4);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Kangaskhan', 115, 'The infant rarely ventures out of its mothers protective pouch until it is 3 years old.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 1);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Horsea', 116, 'Known to shoot down flying bugs with precision blasts of ink from the surface of the water.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 3);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Seadra', 117, 'Capable of swimming backwards by rapidly flapping its wing-like pectoral fins and stout tail.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 3);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Goldeen', 118, 'Its tail fin billows like an elegant ballroom dress, giving it the nickname of the Water Queen.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 3);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Seaking', 119, 'In the autumn spawning season, they can be seen swimming powerfully up rivers and creeks.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 3);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Staryu', 120, 'An enigmatic Pokemon that can effortlessly regenerate any appendage it loses in battle.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 3);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Starmie', 121, 'Its central core glows with the seven colors of the rainbow. Some people value the core as a gem.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 3);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 11);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Mr. Mime', 122, 'If interrupted while it is miming, it will slap around the offender with its broad hands.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 11);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Scyther', 123, 'With ninja-like agility and speed, it can create the illusion that there is more than one.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 12);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 10);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Jynx', 124, 'It seductively wiggles its hips as it walks. It can cause people to dance in unison with it.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 6);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 11);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Electabuzz', 125, 'Normally found near power plants, they can wander away and cause major blackouts in cities.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 5);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Magmar', 126, 'Its body always burns with an orange glow that enables it to hide perfectly among flames.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 2);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Pinsir', 127, 'If it fails to crush the victim in its pincers, it will swing it around and toss it hard.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 12);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Tauros', 128, 'When it targets an enemy, it charges furiously while whipping its body with its long tails.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 1);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Magikarp', 129, 'In the distant past, it was somewhat stronger than the horribly weak descendants that exist today.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 3);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Gyarados', 130, 'Rarely seen in the wild. Huge and vicious, it is capable of destroying entire cities in a rage.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 3);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 10);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Lapras', 131, 'A Pokemon that has been overhunted almost to extinction. It can ferry people across the water.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 3);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 6);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Ditto', 132, 'Capable of copying an enemys genetic code to instantly transform itself into a duplicate of the enemy.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 1);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Eevee', 133, 'Its genetic code is irregular. It may mutate if it is exposed to radiation from Evolution stones.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 1);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Vaporeon', 134, 'Lives close to water. Its long tail is ridged with a fin which is often mistaken for a mermaids.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 3);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Jolteon', 135, 'It accumulates negative ions in the atmosphere to blast out 10000-volt lightning bolts.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 5);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Flareon', 136, 'When storing thermal energy in its body, its temperature could soar to over 1600 degrees.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 2);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Porygon', 137, 'A Pokemon that consists entirely of programming code. Capable of moving freely in cyberspace.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 1);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Omanyte', 138, 'Although long extinct, in rare cases, it can be genetically resurrected from fossils.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 3);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 13);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Omastar', 139, 'A prehistoric Pokemon that died out when its heavy shell made it impossible to catch prey.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 3);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 13);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Kabuto', 140, 'A Pokemon that was resurrected from a fossil found in what was once the ocean floor eons ago.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 3);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 13);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Kabutops', 141, 'Its sleek shape is perfect for swimming. It slashes prey with its claws and drains the body fluids.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 3);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 13);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Aerodactyl', 142, 'A ferocious, prehistoric Pokemon that goes for the enemys throat with its serrated saw-like fangs.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 13);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 10);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Snorlax', 143, 'Very lazy. Just eats and sleeps. As its rotund bulk builds, it becomes steadily more slothful.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 1);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Articuno', 144, 'A legendary bird Pokemon that is said to appear to doomed people who are lost in icy mountains.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 6);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 10);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Zapdos', 145, 'A legendary bird Pokemon that is said to appear from clouds while dropping enormous lightning bolts.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 5);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 10);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Moltres', 146, 'Known as the legendary bird of fire. Every flap of its wings creates a dazzling flash of flames.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 2);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 10);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Dratini', 147, 'Long considered a mythical Pokemon until recently when a small colony was found living underwater.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 15);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Dragonair', 148, 'A mystical Pokemon that exudes a gentle aura. Has the ability to change climate conditions.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 15);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Dragonite', 149, 'An extremely rarely seen marine Pokemon. Its intelligence is said to match that of humans.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 15);
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 10);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Mewtwo', 150, 'It was created by a scientist after years of horrific gene splicing and DNA engineering experiments.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 11);

INSERT INTO species (species_name, dex_number, description) 
VALUES ('Mew', 151, 'So rare that it is still said to be a mirage by many experts. Only a few people have seen it worldwide.');
INSERT INTO species_type (species_id, type_id) VALUES (last_insert_id(), 11);