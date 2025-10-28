
    SELECT *
    FROM person_order;

INSERT INTO person_order (id, person_id, menu_id, order_date)
VALUES (
    (SELECT MAX(id) +1 FROM person_order), 
    (SELECT id FROM person WHERE name = 'Denis'),
    (SELECT id FROM menu WHERE pizza_name = 'Sicilian pizza'), 
    '2024-02-24' );

    INSERT INTO person_order (id, person_id, menu_id, order_date)
VALUES (
    (SELECT MAX(id) +1 FROM person_order), 
    (SELECT id FROM person WHERE name = 'Irina'),
    (SELECT id FROM menu WHERE pizza_name = 'Sicilian pizza'), 
    '2024-02-24' );

SELECT *
FROM person_order;

SELECT person_order.id, person.name, menu.pizza_name, person_order.order_date
FROM person_order
JOIN person ON person.id=person_order.person_id
JOIN menu ON person_order.menu_id=menu.id;