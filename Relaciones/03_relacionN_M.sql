-- RELACION N:M

-- Tabla 1: developers
CREATE TABLE developers (
    developer_id int AUTO_INCREMENT PRIMARY KEY,
    name varchar(100),
    age int,
    email varchar(50),
    created date
);

-- Tabla 2: lenguajes programación
CREATE TABLE languages(
    language_id int AUTO_INCREMENT PRIMARY KEY,
    name varchar(100) NOT NULL
);

-- Crear tabla intermedia (tabla 3 --> developers_languages)
CREATE TABLE developers_languages (
    developers_languages_id int AUTO_INCREMENT PRIMARY KEY,
    developer_id int,
    language_id int,
    FOREIGN KEY(developer_id) REFERENCES developers(developer_id),
    FOREIGN KEY(language_id) REFERENCES languages(language_id),
    UNIQUE (developer_id, language_id)
);