SELECT
cats.name,
toys.name
FROM cats JOIN toys on cats.id=toys.cat_id
WHERE cats.name="Garfield";


SELECT name FROM toys
WHERE toys.cat_id = (SELECT id FROM cats WHERE name = "Garfield");

INSERT INTO toys (name, cat_id)
VALUES  (
    "Pepperoni",
    (SELECT id FROM cats WHERE name="Garfield"));



INSERT INTO toys (name, cat_id)
SELECT "Cat Bed" , id FROM cats WHERE birth_year <2013;



INSERT INTO cats_backup
SELECT * FROM cats;

INSERT INTO toys_backup
SELECT * FROM toys;
