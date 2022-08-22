-- Create table for melons
CREATE TABLE melons (
  id SERIAL PRIMARY KEY,
  melon_type VARCHAR(30),
  name VARCHAR(30),
  price FLOAT,
  seedless BOOLEAN
);


-- add entry to table
INSERT INTO melons (melon_type, name, price, seedless)
	VALUES ('Musk', 'Honeydew', 1, False);


-- adds two more melons to table
INSERT INTO melons (melon_type, name, price, seedless)
	VALUES ('Hybrid', 'Crenshaw', 2, False);
  

INSERT INTO melons (melon_type, name, price, seedless)
	VALUES ('Hybrid', 'Crane', 2.5, False);


INSERT INTO melons (melon_type, name, price, seedless)
	VALUES ('Hybrid', 'Crenshaw', 2, False);
  

INSERT INTO melons (melon_type, name, price, seedless)
	VALUES ('Hybrid', 'Crane', 2.5, False);


INSERT INTO melons (melon_type, name, price, seedless)
VALUES ('Musk', 'Casaba', 2.5, False),
        ('Musk', 'Cantaloupe', 0.99, False),
        ('Musk', 'Persian Melon', 3, False),
        ('Musk', 'Christmas Melon', 5.5, False),
        ('Musk', 'Armenian Cucumber', 4.5, False),
        ('Hybrid', 'Galia', 3.75, False),
        ('Winter', 'Winter Melon', 0.99, True),
        ('Musk', 'Canary', 1.5, False),
        ('Musk', 'Hami', 2.75, True),
        ('Watermelon', 'Densuke', 250, False),
        ('Watermelon', 'Ali Baba', 2.5, False),
        ('Watermelon', 'Ancient', 3, False),
        ('Watermelon', 'Arkansas Black', 4, False),
        ('Watermelon', 'Dixie Queen', 2, False),
        ('Watermelon', 'Blacktail Mountain', 2.75, True),
        ('Watermelon', 'Carolina Cross 180', 4.25, False),
        ('Watermelon', 'Charleston Gray', 2, False),
        ('Watermelon', 'Chris Cross', 2.5, False),
        ('Watermelon', 'Desert King', 2, False),
        ('Watermelon', 'Congo', 2, False),
        ('Watermelon', 'Crimson Sweet', 1.75, False);


-- pulls everything from table (verifying they were added)
SELECT * FROM melons;


-- pulls just name and price from table
SELECT name, price FROM melons;


-- pulls specifically seedless watermelons from the table
SELECT name FROM melons
WHERE melon_type = 'Watermelon'
AND seedless = True;


-- pulls out the different types of melons we have
SELECT melon_type
FROM melons
GROUP BY melon_type;


-- pulls out the different types of melons and their average price
SELECT melon_type, AVG(price)
FROM melons
GROUP BY melon_type;


-- pulls out the different types of melons and how many we have
SELECT melon_type, COUNT(*)
FROM melons
GROUP BY melon_type;


-- pulls all seedless melons, how many seedless there are, and their average price
SELECT seedless, COUNT(seedless), AVG(price)
FROM melons
GROUP BY seedless;


-- pulls our max price
SELECT MAX(price) FROM melons;


-- sorts everything from table by price
SELECT * FROM melons
ORDER BY price DESC;


-- pulls each melon type in table and tells us how many of each type
SELECT melon_type, COUNT(*)
FROM melons
GROUP BY melon_type;
ORDER BY COUNT(*);


-- pulls everything that isn't 'Watermelon' type (with <>, alternatively !=)
SELECT * FROM melons
WHERE melon_type <> 'Watermelon'
ORDER BY name;


-- skip the first 10 things, return the rest
SELECT * melons
OFFSET 10;


-- skip the first 10 things, return the rest, but limit the number of items returned
SELECT * melons
OFFSET 10
LIMIT 5;


-- changes all melons of type 'Musk' to seedless
UPDATE melons
SET seedless = True
WHERE melon_type = 'Musk';


-- deletes first two melons in table
DELETE FROM melons
WHERE id < 3;