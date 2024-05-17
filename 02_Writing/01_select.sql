-- SELECT: ens permet seleccionar un camp

-- SELECT ALL (*) --> selecciona totes les dades de la taula users (FROM users)
SELECT * FROM users;

/* SELECT columna/atribut 
Podem seleccionar un sol atribut (name)
Podem seleccionar més d'un atribut separant per comes (user_id, name)
*/
SELECT name FROM users;
SELECT user_id, name FROM users;