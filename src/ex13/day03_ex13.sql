SELECT * FROM person_order ORDER BY id;
SELECT * FROM menu ORDER BY id;

DELETE FROM person_order
WHERE order_date = '2022-02-25';
DELETE FROM menu
WHERE pizza_name LIKE 'greek pizza';

SELECT * FROM person_order ORDER BY id;
SELECT * FROM menu ORDER BY id;