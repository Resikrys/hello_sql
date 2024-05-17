-- CREATE TABLE: les taules tenen restriccions
CREATE TABLE personas (
    id int,
    name varchar (100),
    age int,
    email varchar (50),
    created date
);

-- Les taules tenen constraints/restriccions (EXEMPLES de les més habituales: NOT NULL)
CREATE TABLE personas2 (
    id int NOT NULL,
    name varchar (100) NOT NULL,
    age int,
    email varchar (50),
    created date
);

-- Les taules tenen constraints/restriccions (EXEMPLES de les més habituales: UNIQUE)
CREATE TABLE personas3 (
    id int NOT NULL,
    name varchar (100) NOT NULL,
    age int,
    email varchar (50),
    created datetime,
    UNIQUE (id)
);

-- Les taules tenen constraints/restriccions (EXEMPLES de les més habituales: PRIMARY KEY) --> dada necessària quan volem relacionar taules entre elles (clave principal de la tabla)
CREATE TABLE personas4 (
    id int NOT NULL,
    name varchar (100) NOT NULL,
    age int,
    email varchar (50),
    created datetime,
    UNIQUE (id),
    PRIMARY KEY(id)
);

-- Les taules tenen constraints/restriccions (EXEMPLES de les més habituales: CHECK --> a la hora de guardar li podem indicar un criteri --> exemple: guardar usuaris > 18 anys)
CREATE TABLE personas5 (
  id int NOT NULL,
    name varchar (100) NOT NULL,
    age int,
    email varchar (50),
    created datetime,
    UNIQUE (id),
    PRIMARY KEY(id),
    CHECK(age>=18)
);

-- Les taules tenen constraints/restriccions (EXEMPLES de les més habituales: DEFAULT --> current_timestamp intenta agafar la data i la hora)
CREATE TABLE personas6 (
  id int NOT NULL,
    name varchar (100) NOT NULL,
    age int,
    email varchar (50),
    created datetime DEFAULT CURRENT_TIMESTAMP(),
    UNIQUE (id),
    PRIMARY KEY(id),
    CHECK(age>=18)
);

-- Les taules tenen constraints/restriccions (EXEMPLES de les més habituales: AUTO_INCREMENT --> agafarà l'últim número i sumarà un)
CREATE TABLE personas7 (
    id int NOT NULL AUTO_INCREMENT,
    name varchar (100) NOT NULL,
    age int,
    email varchar (50),
    created datetime DEFAULT CURRENT_TIMESTAMP(),
    UNIQUE (id),
    PRIMARY KEY(id),
    CHECK(age>=18)
);

