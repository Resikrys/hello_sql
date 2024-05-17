-- LIMIT: per limitar els resultats al número especificat
SELECT * FROM users LIMIT 3;

-- També es pot aplicar en resultats de statements combinats
SELECT * FROM users WHERE NOT email = 'example@example.com' OR age = 15 LIMIT 2;