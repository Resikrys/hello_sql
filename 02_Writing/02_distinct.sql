-- DISTINCT: ens permet seleccionar els diferents camps únics.

/* DISTINCT ALL (*) --> retorna tots els camps únics (si estàn repetits, només un cop).
DISTINCT camp --> retorna les dades filtrades (només un cop) --> Si hi ha dos age = 15 només obtindrem el primer
*/
SELECT DISTINCT * FROM users;

SELECT DISTINCT age FROM users;