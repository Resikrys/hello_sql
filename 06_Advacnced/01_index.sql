-- INDEX: elemento que se puede crear en una base de datos (como el índice de páginas de un libro) --> indexar la tabla (estructura de una base de datos que permite al sistema de gestión -mySQL- encontrar los datos de esa tabla mucho más rápido)
/* 
*** PRIMARY INDEX: vinculados con la Primary Key de la tabla
*** UNIQUE INDEX: asegura que dos filas de la tabla no tengan valores duplicados
*** ÍNDICES COMPUESTOS: permiten que se utilicen dos o más columnas

Por qué hay que crear índices y cuando?
Crear índices hace que la tabla pese más (tiene un espacio adicional) y nos ayuda a que cuando hagamos consultas sobre estos datos los resultados serán devueltos antes.
por el contrario, cuando escribamos datos en esas tablas, la escritura va a ser más lenta (cada vez que se introduzcan datos se tendrá que regenerar el índice)
*/

-- *** EJEMPLO: vamos a añadir un índice en el campo 'nombre' a nuestra tabla 'users' --> idx_(+ nom) ***
CREATE INDEX idx_name ON users(name);

-- Podemos crear índices con campos únicos
CREATE UNIQUE INDEX idx_name ON users(name);

-- Podemos concatenar campos en el índice
CREATE INDEX idx_name ON users(name, surname);

-- *** Qué pasará ahora? Accederá mucho más rápido a la tupla que hemos demandado ***
SELECT * FROM users WHERE name = 'Brais';

-- *** Podemos borrar el índice ***
DROP INDEX idx_name ON users;