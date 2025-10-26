SELECT pizza_name, price, pizzeria.name AS pizzeria_name FROM menu 
LEFT JOIN pizzeria  ON pizzeria.id = menu.pizzeria_id
wHERE menu.id IN 
(SELECT id AS menu_id FROM menu
WHERE id NOT IN 
(SELECT menu_id FROM person_order))
ORDER BY  menu.pizza_name, menu.price;