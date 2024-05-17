-- INSERT: comando per realitzar inserts dins la taula --> Puc especificar els camps als que sí posaré valors (la resta seran nulls)
-- Si hi ha valors repes, t'avisa i salta error (si és primaryKey)
INSERT INTO users (user_id, name, surname) VALUES (7, 'María', 'López')

-- Si tenim camp ID autoincremental no caldrà afegir el valor
INSERT INTO users (name, surname) VALUES ('Paco', 'Flores');

-- No cal seguir l'ordre de la taula --> si no està repe s'afegirà i es col·locarà a on tocaria en l'ordre de la taula
INSERT INTO users (name, surname) VALUES ('Elle', 'Merma');