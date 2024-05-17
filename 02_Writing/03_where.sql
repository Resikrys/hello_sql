-- WHERE: filtrem/limitem els criteris de búsqueda (CONDICIÓ)
-- SELECT ALL + criteri de búsqueda
SELECT * FROM users WHERE age = 15;

-- SELECT camp concret + criteri de búsqueda
SELECT name FROM users WHERE age = 15;

-- Podem combinar statements: SELECT camp concret + DISTINCT (primera troballa) + criteri de búsqueda
SELECT DISTINCT name FROM users WHERE age = 15;
SELECT DISTINCT age FROM users WHERE age = 15;