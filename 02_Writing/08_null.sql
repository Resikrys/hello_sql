-- NULL: filtrado con comando de tipo null (2 variacions)
SELECT * FROM users;
-- Exemple 1: vull obtenir tots els usuaris que tenen email null
SELECT * FROM users WHERE email IS NULL;
-- Exemple 2: vull obtenir tots els usuaris que sí tenen email
SELECT * FROM users WHERE email IS NOT NULL;
-- Exemple 3: combinant condicions
SELECT * FROM users WHERE email IS NOT NULL AND age = 15;

-- IFNULL: funcions nul·les que serveixen per controlar dades nul·les --> posarem un valor per defecte a les dades nul·les (en aquest cas li donem el valor de 0 --> Si age is null, valor = 0)
SELECT name, surname, IFNULL(age, 0) FROM users;
SELECT name, surname, IFNULL(age, 0) AS age FROM users;

-- ISNULL: intenta filtrar el camp que li indiquem