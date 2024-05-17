-- STORED PROCEDURES: és com una query que acabem guardant a favoritos
-- *** PROCEDIMIENTO sin parámetros ***
-- PAS 1: crear y guardar el procedimiento almacenado
DELIMITER //
CREATE PROCEDURE p_all_users()
BEGIN
    SELECT * FROM users;
END//

-- PAS 2: executar el stored procedure
CALL p_all_users();

-- *** PEOCEDIMIENTO con parámetros *** --> indicamos qué será e parámetro y dónde tiene que filtrarlo (param: age_param / filtrando el campo age)
DELIMITER //
CREATE PROCEDURE p_age_users(IN age_param int)
BEGIN
    SELECT * FROM users WHERE age = age_param;
END//

CALL p_age_users(30);

/*
-- *** Como eliminar un procedimiento (este ejemplo es incorrecto y no funciona así que queremos eliminarlo)
-- ERROR: age es tanto el nombre del parámetro como el nombre del atributo/campo y eso da como resultado, error. 
DELIMITER //
CREATE PROCEDURE p_age_users(IN age int)
BEGIN
    SELECT * FROM users WHERE ager = age; --> Aquí estamos diciendo que el campo age de una fila es = al propio campo age (por eso da error)
END//

-- Hacer el call indicándole un parámetro asignado previamente
CALL p_age_users(30);

-- Eliminar el procedure
DROP PROCEDURE p_age_users;
*/