SELECT COUNT(id) FROM cats;


SELECT name, birth_year FROM cats
WHERE birth_year = (SELECT MIN(birth_year) FROM cats)
OR birth_year= (SELECT MAX(birth_year) FROM cats);


--# toys per cat

SELECT cats.name, COUNT(toys.id) FROM cats
LEFT JOIN toys ON cats.id=toys.cat_id
GROUP BY cats.id;



SELECT cats.name, COUNT(toys.id) as num_toys FROM cats
LEFT JOIN toys ON cats.id=toys.cat_id
GROUP BY cats.id
HAVING num_toys >= 2;
