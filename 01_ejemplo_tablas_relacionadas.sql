-- EJEMPLO DE TABLAS RELACIONADAS

/*
Tabla 1: usuarios // Relaciones: dni(1:1), compañias(1:N), lenguajes(N:M)
Tabla 2: lenguajes de programación
Tabla 3:usuarios_lenguajes
Tabla 4: dni
Tabla 5: compañías
*/

-- PASO 1: Crear tablas y relaciones
CREATE TABLE users (
    user_id int AUTO_INCREMENT PRIMARY KEY,
    name varchar(100),
    age int,
    email varchar(50),
    created date,
    ADD CONSTRAINT fk_companies,
    FOREIGN KEY(company_id) REFERENCES companies(company_id)
);

CREATE TABLE languages(
    language_id int AUTO_INCREMENT PRIMARY KEY,
    name varchar(100) NOT NULL
);

CREATE TABLE users_languages (
    user_languages_id int AUTO_INCREMENT PRIMARY KEY NOT NULL,
    user_id int NOT NULL,
    language_id int NOT NULL,
    FOREIGN KEY(user_id) REFERENCES users(user_id),
    FOREIGN KEY(language_id) REFERENCES languages(language_id),
    UNIQUE (user_id, language_id)
);

CREATE TABLE dni (
    dni_id int AUTO AUTO_INCREMENT PRIMARY KEY,
    dni_number int NOT NULL,
    user_id int,
    UNIQUE(dni_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id)
);

CREATE TABLE companies (
    company_id int AUTO AUTO_INCREMENT PRIMAY KEY,
    company_name varchar(100) NOT NULL
);


-- PASO 2: añadir datos a las tablas
-- Users
INSERT INTO users (user_id, name, surname) VALUES (1, 'Yue', 'Yang');
INSERT INTO users (user_id, name, surname) VALUES (2, 'Happy', 'Hope');
INSERT INTO users (user_id, name, surname) VALUES (4, 'Ace', 'Roux');

-- Dni
INSERT INTO dni (dni_number, user_id) VALUES (11111111, 1);
INSERT INTO dni (dni_number, user_id) VALUES (22222222, 2);
INSERT INTO dni (dni_number, user_id) VALUES (33333333);

-- Compañías
INSERT INTO (company_id, company_name) VALUES ('Google');
INSERT INTO dni (user_id) VALUES ('Apple');
INSERT INTO dni (user_id) VALUES ('MoureDev');

-- Lenguajes
INSERT INTO (name) VALUES ('Javascript');
INSERT INTO (name) VALUES ('Python');
INSERT INTO (name) VALUES ('PHP');
INSERT INTO (name) VALUES ('C#');
INSERT INTO (name) VALUES ('Kotlin');

-- Usuarios_lenguajes --> relacion N:M
INSERT INTO users_languages (user_id, language_id) VALUES (1, 1);
INSERT INTO users_languages (user_id, language_id) VALUES (1, 2);
INSERT INTO users_languages (user_id, language_id) VALUES (1, 5);
INSERT INTO users_languages (user_id, language_id) VALUES (2, 4);
INSERT INTO users_languages (user_id, language_id) VALUES (4, 3);
INSERT INTO users_languages (user_id, language_id) VALUES (4, 2);


-- PASO 3: Actualizar columnas de las tablas relacionadas
-- Users (company_id)
UPDATE users SET company_id = 1 WHERE user_id = 1;
UPDATE users SET company_id = 2 WHERE user_id = 2;
UPDATE users SET company_id = 3 WHERE user_id = 4;

-- PASO 4: JOIN (comando que ens relacionarà les dades de dues o més taules)