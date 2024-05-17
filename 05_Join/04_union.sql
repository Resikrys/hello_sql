-- FULL JOIN / FULL OUTER JOIN (UNION): es queda amb totes les dades --> conceptualment no existeix en sql (hauríem de fer un join complet). Es el JOIN menos usado

-- Traer todo lo que tengo en Tabla 1 + todo lo que tengo en Tabla 2 --> UNION (hi ha d'haver connexió entre les taules)
SELECT user_id FROM users
UNION
SELECT user_id FROM dni;

-- EJEMPLO UNION + alias
SELECT users.user_id AS u_user_id, dni.user_id AS d_user_id
FROM users
LEFT JOIN
    dni
ON  users.user_id = dni.user_id
UNION
SELECT users.user_id AS u_user_id, dni.user_id AS d_user_id
FROM users
RIGHT JOIN
    dni
ON  users.user_id = dni.user_id;

-- EJEMPLO con SELECT * 
SELECT *
FROM users
LEFT JOIN
    dni
ON  users.user_id = dni.user_id
UNION
SELECT *
FROM users
RIGHT JOIN
    dni
ON  users.user_id = dni.user_id;

/*
-- *** Podría hacer esto pero no es práctico *** --
SELECT * users
JOIN dni;

-- *** Esto es incorrecto!! *** --
SELECT * users
FULL JOIN dni
ON users.user_id = dni.dni_id;
*/