CREATE DATABASE monsters;  

CREATE USER 'hunters'@'localhost' IDENTIFIED BY 'Sl4y3r!';

GRANT ALL ON monsters.* TO 'hunters'@'localhost';

USE monsters;

CREATE TABLE classifications (
	id INT auto_increment,
	classificationName VARCHAR(255) NOT NULL,
	createdAt DATETIME DEFAULT NOW(),
	updatedAt DATETIME DEFAULT NOW() ON UPDATE NOW(),
	deletedAt DATETIME,
	PRIMARY KEY(id)
);

CREATE TABLE monsters (
	id INT auto_increment,
	monsterName VARCHAR(255) NOT NULL,
  element ENUM(Fire, Water, ), 
  classificationId INT(),
  generationId INT(),
	createdAt DATETIME DEFAULT NOW(),
	updatedAt DATETIME DEFAULT NOW() ON UPDATE NOW(),
	deletedAt DATETIME,
	PRIMARY KEY(id)
  FOREIGN KEY (classificationId) REFERENCES classifications(id),
  FOREIGN KEY (generationId) REFERENCES generations(id),
);
    
CREATE TABLE elements (
	id INT auto_increment,
	elementType VARCHAR(255) NOT NULL,
	createdAt DATETIME DEFAULT NOW(),
	updatedAt DATETIME DEFAULT NOW() ON UPDATE NOW(),
	deletedAt DATETIME,
	PRIMARY KEY(id)
);
    
CREATE TABLE habitats (
	id INT auto_increment,
	habitatName VARCHAR(255) NOT NULL,
	createdAt DATETIME DEFAULT NOW(),
	updatedAt DATETIME DEFAULT NOW() ON UPDATE NOW(),
	deletedAt DATETIME,
	PRIMARY KEY(id)
);

CREATE TABLE generations (
	id INT auto_increment,
	generationName VARCHAR(255) NOT NULL,
	createdAt DATETIME DEFAULT NOW(),
	updatedAt DATETIME DEFAULT NOW() ON UPDATE NOW(),
	deletedAt DATETIME,
	PRIMARY KEY(id)
);
    
CREATE TABLE genreNovels (
	id INT auto_increment,
	genreId INT,
	novelId INT,
	createdAt DATETIME DEFAULT NOW(),
	updatedAt DATETIME DEFAULT NOW() ON UPDATE NOW(),
	deletedAt DATETIME,
	PRIMARY KEY(id),
	FOREIGN KEY (genreId) REFERENCES monsters(id),
	FOREIGN KEY (novelId) REFERENCES elements(id)
);
    
INSERT INTO classifications (classificationName) VALUES ("Amphibians");
INSERT INTO classifications (classificationName) VALUES ("Bird Wyverns");
INSERT INTO classifications (classificationName) VALUES ("Brute Wyverns");
INSERT INTO classifications (classificationName) VALUES ("Fanged Beasts");
INSERT INTO classifications (classificationName) VALUES ("Fanged Wyverns");
INSERT INTO classifications (classificationName) VALUES ("Flying Wyverns");
INSERT INTO classifications (classificationName) VALUES ("Leviathans");
INSERT INTO classifications (classificationName) VALUES ("Piscine Wyverns");
INSERT INTO classifications (classificationName) VALUES ("Temnocerans");
INSERT INTO classifications (classificationName) VALUES ("Elder Dragons");

INSERT INTO monsters (monsterName, element, classificationId, generationId) VALUES ("Aknosom", "Fire", 2, 5);
INSERT INTO monsters (monsterName, element, classificationId, generationId) VALUES ("Almudron", "Water", 7, 5);
INSERT INTO monsters (monsterName, element, classificationId, generationId) VALUES ("Anjanath", "Fire", 3, 5);
INSERT INTO monsters (monsterName, element, classificationId, generationId) VALUES ("Arzuros", "None", 4, 3);
INSERT INTO monsters (monsterName, element, classificationId, generationId) VALUES ("Apex Azuros", "None", 4, 5);
INSERT INTO monsters (monsterName, element, classificationId, generationId) VALUES ("Barioth", "Ice", 6, 3);
INSERT INTO monsters (monsterName, element, classificationId, generationId) VALUES ("Barroth", "Water", 3, 3);
INSERT INTO monsters (monsterName, element, classificationId, generationId) VALUES ("Bazelgeuse", "Fire", 6, 5);
INSERT INTO monsters (monsterName, element, classificationId, generationId) VALUES ("Basarios", "Fire", 6, 1);
INSERT INTO monsters (monsterName, element, classificationId, generationId) VALUES ("Bishaten", "None", 4, 5);
INSERT INTO monsters (monsterName, element, classificationId, generationId) VALUES ("Chameleos", "None", 10, 2);
INSERT INTO monsters (monsterName, element, classificationId, generationId) VALUES ("Diablos", "None", 6, 1);
INSERT INTO monsters (monsterName, element, classificationId, generationId) VALUES ("Apex Diablos", "None", 6, 5);
INSERT INTO monsters (monsterName, element, classificationId, generationId) VALUES ("Goss Harag", "Ice", 4, 5);
INSERT INTO monsters (monsterName, element, classificationId, generationId) VALUES ("Great Baggi", "None", 2, 3);
INSERT INTO monsters (monsterName, element, classificationId, generationId) VALUES ("Great Izuchi", "None", 2, 5);
INSERT INTO monsters (monsterName, element, classificationId, generationId) VALUES ("Great Wroggi", "None", 2, 3);
INSERT INTO monsters (monsterName, element, classificationId, generationId) VALUES ("Jyuratodus", "Water", 8, 5);
INSERT INTO monsters (monsterName, element, classificationId, generationId) VALUES ("Khezu", "Thunder", 6, 1);
INSERT INTO monsters (monsterName, element, classificationId, generationId) VALUES ("Kulu-Ya-Ku", "None", 2, 5);
INSERT INTO monsters (monsterName, element, classificationId, generationId) VALUES ("Kushala Daora", "Dragon", 10, 2);
INSERT INTO monsters (monsterName, element, classificationId, generationId) VALUES ("Lagombi", "Ice", 4, 3);
INSERT INTO monsters (monsterName, element, classificationId, generationId) VALUES ("Magnamalo", "None", 5, 5);
INSERT INTO monsters (monsterName, element, classificationId, generationId) VALUES ("Mizutsune", "Water", 7, 4);
INSERT INTO monsters (monsterName, element, classificationId, generationId) VALUES ("Apex Mizutsune", "Water", 7, 5);
INSERT INTO monsters (monsterName, element, classificationId, generationId) VALUES ("Nargacuga", "None", 6, 2);
INSERT INTO monsters (monsterName, element, classificationId, generationId) VALUES ("Pukei-Pukei", "None", 2, 5);
INSERT INTO monsters (monsterName, element, classificationId, generationId) VALUES ("Rajang", "Thunder", 4, 2);
INSERT INTO monsters (monsterName, element, classificationId, generationId) VALUES ("Rakna-Kadaki", "Fire", 9, 5);
INSERT INTO monsters (monsterName, element, classificationId, generationId) VALUES ("Rathalos", "Fire", 6, 1);
INSERT INTO monsters (monsterName, element, classificationId, generationId) VALUES ("Apex Rathalos", "Fire", 6, 5);
INSERT INTO monsters (monsterName, element, classificationId, generationId) VALUES ("Rathian", "Fire", 6, 1);
INSERT INTO monsters (monsterName, element, classificationId, generationId) VALUES ("Apex Rathian", "Fire", 6, 5);
INSERT INTO monsters (monsterName, element, classificationId, generationId) VALUES ("Royal Ludroth", "Water", 7, 3);
INSERT INTO monsters (monsterName, element, classificationId, generationId) VALUES ("Somnacanth", "None", 7, 5);
INSERT INTO monsters (monsterName, element, classificationId, generationId) VALUES ("Teostra", "Fire", 10, 2);
INSERT INTO monsters (monsterName, element, classificationId, generationId) VALUES ("Tetranadon", "Water", 1, 5);
INSERT INTO monsters (monsterName, element, classificationId, generationId) VALUES ("Thunder Serpent Narwa", "Thunder", 10, 5);
INSERT INTO monsters (monsterName, element, classificationId, generationId) VALUES ("Narwa the Allmother", "Thunder", 10, 5);
INSERT INTO monsters (monsterName, element, classificationId, generationId) VALUES ("Tigrex", "None", 6, 2);
INSERT INTO monsters (monsterName, element, classificationId, generationId) VALUES ("Tobi-Kadachi", "Thunder", 5, 5);
INSERT INTO monsters (monsterName, element, classificationId, generationId) VALUES ("Crimson Glow Valstrax", "Dragon", 10, 5);
INSERT INTO monsters (monsterName, element, classificationId, generationId) VALUES ("Volvidon", "None", 4, 3);
INSERT INTO monsters (monsterName, element, classificationId, generationId) VALUES ("Wind Serpent Ibushi", "Dragon", 10, 5);
INSERT INTO monsters (monsterName, element, classificationId, generationId) VALUES ("Zinogre", "Thunder", 5, 3);
INSERT INTO monsters (monsterName, element, classificationId, generationId) VALUES ("Apex Zinogre", "Thunder", 5, 5);

INSERT INTO elements (elementType) VALUES ("Fire");
INSERT INTO elements (elementType) VALUES ("Water");
INSERT INTO elements (elementType) VALUES ("None");
INSERT INTO elements (elementType) VALUES ("Ice");
INSERT INTO elements (elementType) VALUES ("Thunder");
INSERT INTO elements (elementType) VALUES ("Dragon");

INSERT INTO habitats (habitatName) VALUES ("Shrine Ruins");
INSERT INTO habitats (habitatName) VALUES ("Frost Islands");
INSERT INTO habitats (habitatName) VALUES ("Red Stronghold");
INSERT INTO habitats (habitatName) VALUES ("Sandy Plains");
INSERT INTO habitats (habitatName) VALUES ("Flooded Forest");
INSERT INTO habitats (habitatName) VALUES ("Lava Caverns");
INSERT INTO habitats (habitatName) VALUES ("Coral Palace");
INSERT INTO habitats (habitatName) VALUES ("Infernal Springs");

INSERT INTO generations (generationName) VALUES ("First");
INSERT INTO generations (generationName) VALUES ("Second");
INSERT INTO generations (generationName) VALUES ("Third");
INSERT INTO generations (generationName) VALUES ("Fourth");
INSERT INTO generations (generationName) VALUES ("Fifth");

INSERT INTO genreNovels (NovelId, genreId) VALUES (6, 1);
INSERT INTO genreNovels (NovelId, genreId) VALUES (6, 13);
INSERT INTO genreNovels (NovelId, genreId) VALUES (12, 1);
INSERT INTO genreNovels (NovelId, genreId) VALUES (12, 2);
INSERT INTO genreNovels (NovelId, genreId) VALUES (12, 4);
INSERT INTO genreNovels (NovelId, genreId) VALUES (12, 3);
INSERT INTO genreNovels (NovelId, genreId) VALUES (4, 1);
INSERT INTO genreNovels (NovelId, genreId) VALUES (4, 10);
INSERT INTO genreNovels (NovelId, genreId) VALUES (4, 11);
INSERT INTO genreNovels (NovelId, genreId) VALUES (10, 1);
INSERT INTO genreNovels (NovelId, genreId) VALUES (10, 10);
INSERT INTO genreNovels (NovelId, genreId) VALUES (10, 11);
INSERT INTO genreNovels (NovelId, genreId) VALUES (10, 12);
INSERT INTO genreNovels (NovelId, genreId) VALUES (7, 1);
INSERT INTO genreNovels (NovelId, genreId) VALUES (7, 2);
INSERT INTO genreNovels (NovelId, genreId) VALUES (15, 1);
INSERT INTO genreNovels (NovelId, genreId) VALUES (15, 2);
INSERT INTO genreNovels (NovelId, genreId) VALUES (15, 8);
INSERT INTO genreNovels (NovelId, genreId) VALUES (15, 9);
INSERT INTO genreNovels (NovelId, genreId) VALUES (1, 1);
INSERT INTO genreNovels (NovelId, genreId) VALUES (1, 2);
INSERT INTO genreNovels (NovelId, genreId) VALUES (8, 1);
INSERT INTO genreNovels (NovelId, genreId) VALUES (8, 2);
INSERT INTO genreNovels (NovelId, genreId) VALUES (8, 6);
INSERT INTO genreNovels (NovelId, genreId) VALUES (8, 7);
INSERT INTO genreNovels (NovelId, genreId) VALUES (9, 1);
INSERT INTO genreNovels (NovelId, genreId) VALUES (9, 13);
INSERT INTO genreNovels (NovelId, genreId) VALUES (9, 14);
INSERT INTO genreNovels (NovelId, genreId) VALUES (9, 15);
INSERT INTO genreNovels (NovelId, genreId) VALUES (11, 1);
INSERT INTO genreNovels (NovelId, genreId) VALUES (11, 13);
INSERT INTO genreNovels (NovelId, genreId) VALUES (11, 16);
INSERT INTO genreNovels (NovelId, genreId) VALUES (11, 10);
INSERT INTO genreNovels (NovelId, genreId) VALUES (3, 1);
INSERT INTO genreNovels (NovelId, genreId) VALUES (3, 9);
INSERT INTO genreNovels (NovelId, genreId) VALUES (3, 13);
INSERT INTO genreNovels (NovelId, genreId) VALUES (5, 1);
INSERT INTO genreNovels (NovelId, genreId) VALUES (5, 16);
INSERT INTO genreNovels (NovelId, genreId) VALUES (5, 17);
INSERT INTO genreNovels (NovelId, genreId) VALUES (2, 1);
INSERT INTO genreNovels (NovelId, genreId) VALUES (2, 16);
INSERT INTO genreNovels (NovelId, genreId) VALUES (2, 17);
INSERT INTO genreNovels (NovelId, genreId) VALUES (13, 1);
INSERT INTO genreNovels (NovelId, genreId) VALUES (13, 16);
INSERT INTO genreNovels (NovelId, genreId) VALUES (13, 18);
INSERT INTO genreNovels (NovelId, genreId) VALUES (14, 1);
INSERT INTO genreNovels (NovelId, genreId) VALUES (14, 2);
INSERT INTO genreNovels (NovelId, genreId) VALUES (14, 5);