-- ALTER: modificarcamps d'una taula
/*
CREATE TABLE personas9 (
    id int NOT NULL AUTO_INCREMENT,
    name varchar (100) NOT NULL,
    age int,
    email varchar (50),
    created datetime DEFAULT CURRENT_TIMESTAMP(),
    UNIQUE (id),
    PRIMARY KEY(id),
    CHECK(age>=18)
);
*/

-- ADD: afegir camp (surname)
ALTER TABLE personas9
ADD surname varchar(150);

-- RENAME COLUMN: modificar el nom del camp
ALTER TABLE personas9
RENAME COLUMN surname TO description;

-- RENAME COLUMN: modificar el camp
ALTER TABLE personas9
MODIFY COLUMN description varchar(250);

-- DROP COLUMN: eliminar el camp
ALTER TABLE personas9
DROP COLUMN description;