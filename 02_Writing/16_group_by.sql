--GROUP BY: agrupa files que tenen els mateixos valors (en files resum) --> cal establir un criteri
SELECT MAX(age) FROM users GROUP BY age;
SELECT COUNT(age) FROM users GROUP BY age;

-- Podem aplicar filtres i combinar altres comandos per establir filtres més concrets
SELECT COUNT(age) FROM users GROUP BY age ORDER BY age;
SELECT COUNT(age) FROM users WHERE age > 15 GROUP BY age ORDER BY age ASC;
