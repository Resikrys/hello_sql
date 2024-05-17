-- ALIAS: per establir alias (quan obtenim les dades, intentem donar-li un nom diferent)
-- Exemple 1: init_date obté l'alias 'Fecha de programación
SELECT name, init_date AS 'Fecha de inicio de programación' FROM users WHERE age BETWEEN 20 AND 30;

-- Podem escriure-ho amb cometes simples o cometes dobles
SELECT name, init_date AS "Fecha de inicio de programación" FROM users WHERE name = "Brais";

-- CONCAT: nos permite concatenar atributos, campos o cadenas 
SELECT CONCAT(name,', ', surname) FROM users;
SELECT CONCAT('Nombre: ', name,' , Apellidos: ', surname) AS 'Nombre completo' FROM users;