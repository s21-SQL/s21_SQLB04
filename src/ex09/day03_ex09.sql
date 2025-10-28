

INSERT INTO person_visits (id,  person_id, pizzeria_id, visit_date)
VALUES (
    (SELECT MAX(id) + 1 FROM person_visits),
    (SELECT id FROM person WHERE name = 'Denis'),
     (SELECT id FROM pizzeria WHERE name = 'Dominos'),
    '2022-02-24');
INSERT INTO person_visits (id,  person_id, pizzeria_id, visit_date)
VALUES (
    (SELECT MAX(id) + 1 FROM person_visits),
    (SELECT id FROM person WHERE name = 'Irina'),
     (SELECT id FROM pizzeria WHERE name = 'Dominos'),
    '2022-02-24');

SELECT person_visits.id, person.name, pizzeria.name, person_visits.visit_date
FROM person_visits 
JOIN person ON person.id=person_visits.person_id
JOIN pizzeria ON person_visits.pizzeria_id=pizzeria.id
WHERE person_visits.id>17;