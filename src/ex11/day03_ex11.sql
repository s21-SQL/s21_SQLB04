SELECT * 
FROM menu
ORDER BY id;

UPDATE menu
SET price = CAST( price * 0.9 AS INT)
WHERE pizza_name = 'greek pizza';

SELECT * 
FROM menu
ORDER BY id;