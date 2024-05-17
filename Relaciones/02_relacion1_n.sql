-- RELACION 1:N

-- Tabla 1: empresas
CREATE TABLE companies (
    company_id int AUTO AUTO_INCREMENT PRIMAY KEY,
    company_name varchar(100) NOT NULL
);

-- Tabla 2: empleados
CREATE TABLE empleados (
    id int,
    name varchar(100),
    age int,
    email varchar(50),
    created date
);

-- Modificar tabla empleados para añadir la foreign key (company_id)
ALTER TABLE empleados
ADD company_id int;

-- Modificar EL TIPO DE DATO del nuevo campo de la tabla empleados para crear la clave foranea
ALTER TABLE empleados
ADD CONSTRAINT fk_companies
FOREIGN KEY(company_id) REFERENCES companies(company_id);

/*
Ja tenim la nostra relación 1:N --> 1 compañía puede tener muchos empleados
*/