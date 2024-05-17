-- RIGHT JOIN / RIGHT OUTER JOIN: casi igual que el left join (mismo concepto pero tabla de la derecha)
SELECT * FROM users
RIGHT JOIN dni
ON users.user_id = dni.dni_id;

-- Right join ens porta totes les dades de la taula de la dreta (tots els noms dels usuaris registrats) i omple amb 'null' els dni que no estan registrats
SELECT name, dni_number FROM users
RIGHT JOIN dni
ON users.user_id = dni.dni_id;

-- Si posem les dades al revés obtindrem menys resultats perquè portarà tots els dnis registrats (taula de la dreta) i els usuaris registrats relacionats (amb 'nul' els que no estiguin registrats) --> i ens faltaven molts registres de dni
SELECT name, dni_number FROM dni
RIGHT JOIN users
ON users.user_id = dni.dni_id;

-- Ejemplo relacion N:M
SELECT users.name, languages.name 
FROM users
RIGHT JOIN users_languages ON users.user_id = users_languages.user_id
RIGHT JOIN languages ON users_languages.language_id = languages.language_id;
