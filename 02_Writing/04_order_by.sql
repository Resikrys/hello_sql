-- ORDER BY: per ordenar el que retorna (a partir d'un criteri/camp)
SELECT * FROM users ORDER BY age;

-- Podem ordenar de forma ascendent o descendent (ASC, DESC)
SELECT * FROM users ORDER BY age ASC;
SELECT * FROM users ORDER BY age DESC;

-- Podem combinar statements com WHERE + ORDER BY (per filtrar les dades i ordenar-les segons un criteri)
SELECT * FROM users WHERE email = 'example@example.com' ORDER BY age;