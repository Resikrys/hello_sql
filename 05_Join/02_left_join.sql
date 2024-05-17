-- LEFT JOIN / LEFT OUTER JOIN: se queda con los datos de la primera tabla (la de la izquierda)

-- Tabla users y dni
SELECT * FROM users
LEFT JOIN dni
ON users.user_id = dni.dni_id;

-- Left join ens porta totes les dades de la taula de la esquera (tots els noms dels usuaris registrats) i omple amb 'null' els dni que no estan registrats
SELECT name, dni_number FROM users
LEFT JOIN dni
ON users.user_id = dni.dni_id;

-- Si posem les dades al revés obtindrem menys resultats perquè portarà tots els dnis registrats (taula de la esquerra) i els usuaris registrats relacionats (amb 'nul' els que no estiguin registrats) --> i ens faltaven molts registres de dni
SELECT name, dni_number FROM dni
LEFT JOIN users
ON users.user_id = dni.dni_id;

-- Ejemplo relacion N:M
SELECT users.name, languages.name 
FROM users
LEFT JOIN users_languages ON users.user_id = users_languages.user_id
LEFT JOIN languages ON users_languages.language_id = languages.language_id;

-- Si combino LEFT JOIn + JOIN acabamos restringiendo el LEFT JOIN porque lo deshacemos
SELECT users.name, languages.name 
FROM users
LEFT JOIN users_languages ON users.user_id = users_languages.user_id
JOIN languages ON users_languages.language_id = languages.language_id;