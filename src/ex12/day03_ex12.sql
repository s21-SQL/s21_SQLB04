SELECT * 
FROM person_order
ORDER BY id;

INSERT INTO person_order (id, person_id, menu_id, order_date)
SELECT
    (SELECT MAX(id) FROM person_order) + spisok.num AS id,
    person.id AS person_id,
    menu.id AS menu_id,
    DATE '2022-02-25' AS order_date
FROM person 
JOIN menu ON menu.pizza_name = 'greek pizza'
JOIN (
    SELECT GENERATE_SERIES(1, (SELECT COUNT(*) FROM person)) AS num
) AS spisok
ON spisok.num = person.id;


SELECT * 
FROM person_order
ORDER BY id;