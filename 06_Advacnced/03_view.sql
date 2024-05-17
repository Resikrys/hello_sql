-- VIEW: representació virtual d'una o més taules --> igual que amb l'index, la vista s'haura de regenerar cada cop que s'actualitzen les dades de la taula (petita penalització)
-- Se utilizan solo si consultamos esos datos continuamente (como los índices)

-- EXEMPLE: volem crear una vista de la edat i els usuaris (que mostri els <18)
CREATE VIEW v_adult_users AS
SELECT name, age
FROM users
WHERE age >= 18;

-- Com consultar la vista?
SELECT * FROM v_adult_users;

-- Com eliminar una vista
DROP VIEW v_adult_users;