/*
- NOT: negació (retornarà tot el que no contingui el que hem especificat) --> !
- AND: a més a més (per concatenar més d'un criteri) --> &&
- OR: o --> ||
*/
SELECT * FROM users WHERE NOT email = 'example@example.com';

SELECT * FROM users WHERE NOT email = 'example@example.com' AND age = 15;

SELECT * FROM users WHERE NOT email = 'example@example.com' OR age = 15;