-- CASE: llençar una lògica concreta en funció d'una condició. Afegir una coma després del SELECT. Afegir sempre una alias (si no ens posarà la condició a la columna)
-- Exemple 1: Creem un case que estableixi si és major d'edat o si és menor d'edat
SELECT *,
CASE
    WHEN age >= 17 THEN ' Es mayor de edad'
    ELSE  'Es menor de edad'
END AS agetext
FROM users;

-- S'esta establint lògica booleana de la següent manera
SELECT *,
CASE
    WHEN age >= 17 THEN True
    ELSE  False
END AS agetext
FROM users;

-- Podem combinar condicions per afegir lògica extra
SELECT *,
CASE
    WHEN age > 18 THEN ' Es mayor de edad'
    WHERE age = 18 'Acab de cumplir la mayoría de edad'
    ELSE  'Es menor de edad'
END AS ¿Es mayor de edad?
FROM users;
