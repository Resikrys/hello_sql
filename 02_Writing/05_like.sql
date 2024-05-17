-- LIKE: filtrar segons un contingut concret dins el valor ('gmail@.com')
SELECT * FROM users WHERE email LIKE 'gmail.com';

-- Utilitzarem % per indicar que el contingut target del LIKE ha d'estar contingut al principi, al final o entremig del valor especificat
SELECT * FROM users WHERE email LIKE 'sara%';

SELECT * FROM users WHERE email LIKE '%@%';