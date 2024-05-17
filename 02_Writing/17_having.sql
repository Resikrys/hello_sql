-- HAVING: clau que s'utilitza quan la calu no pot utilitzar funcions agregades?? // És una restricció
SELECT * FROM users HAVING age > 20;

-- HAVING: una limitació sobre una pròpia columna que nosaltres estem afegint (sobre una tupla)
SELECT COUNT(age) FROM users HAVING COUNT(age) > 4;

-- HAVING + GROUP BY (s'utilitza bastant)
