-- RELACION 1:1 --> Para relacionar las tablas tengo que guardar el identificador de la otra tabla dentro de la que estoy trabajando (FOREIGN KEYuser_id --> Tabla users)
CREATE TABLE dni (
    dni_id int AUTO AUTO_INCREMENT PRIMARY KEY,
    dni_number int NOT NULL,
    user_id int,
    UNIQUE(dni_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id)
);