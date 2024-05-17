-- TRIGGERS: disparador --> instruccions que s'executen automàticament quan ocorre un event en una taula

-- *** EXEMPLE: quan un usuari canvii de email, l'email antic es guardarà en una altra taulade BD ***
CREATE TABLE email_history (
    email_history_id varchar(100) AUTO_INCREMENT PRIMARY KEY NOT NULL,
    user_id int NOT NULL,
    email varchar(100) NULL
);

-- *** Crear el trigger --> before/after --> insert/update/delete --> en tabla ***
CREATE TRIGGER tg_email
AFTER UPDATE ON users
FOR EACH ROW
BEGIN
    IF OLD.email <> NEW.email THEN
        INSERT INTO email_history(user_id, email)
        VALUES (OLD.user_id, OLD.email);
    END IF;
END;

delimiter;

-- Testeando el trigger --> funciona correctament
UPDATE users SET email = 'example@trigger.com' WHERE user_id = 4;

-- *** Com eliminar un trigger ***
DROP TRIGGER email_history;