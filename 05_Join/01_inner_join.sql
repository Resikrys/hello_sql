-- INNER JOIN: comando per relacionar les dades comuns de dues taules --> retorna files comunes de dues taules

-- *** Datos tabla users y tabla dni --> relacion 1:1 ***

SELECT * FROM users 
INNER JOIN dni
ON users.user_id = dni.user_id;

-- També el podem escriure com JOIN
SELECT * FROM users 
JOIN dni
ON users.user_id = dni.user_id;

-- Podemos combinar comandos
SELECT * FROM users 
JOIN dni
ON users.user_id = dni.user_id
ORDER BY name ASC;

SELECT name, dni_number FROM users 
JOIN dni
ON users.user_id = dni.user_id
ORDER BY age DESC;

-- *** Datos tablas users y companies --> relacion 1:N ***

SELECT * FROM users
JOIN companies
ON users.company_id = companies.company_id;

SELECT * FROM companies
JOIN users
ON companies.company_id = users.company_id;

SELECT companies.name, users.name FROM companies
JOIN users
ON companies.company_id = users.company_id;

-- *** Datos de 3 tablas (las dos tablas relacionadas + la tabla intermedia --> users, languages, users_languages) --> relacion N:M ***

SELECT * 
FROM users_languages
JOIN users ON users_languages.user_id = users.user_id
JOIN languages ON users_languages.language_id = languages.language_id;

SELECT users.name, languages.name 
FROM users_languages
JOIN users ON users_languages.user_id = users.user_id
JOIN languages ON users_languages.language_id = languages.language_id;

-- Podem cambiar l'ordre i el resultat no s'altera
SELECT users.name, languages.name 
FROM users
JOIN users_languages ON users.user_id = users_languages.user_id
JOIN languages ON users_languages.language_id = languages.language_id;