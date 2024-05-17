/*
**** Deploy de base de datos SQL / Proveedores ****

--POSTGRESQL
Vercel --> permite alojar un postgreSQL de forma gratuita --> https://vercel.com
supabase --> Plataforma que ofrece de diferentes servicios-->  https://supabase.com

-- mySQL
raiola --> podemos alquilar un servidor --> https://mouredev.link/raiola

-- Proveedores gratuitos
PlanetScale --> plataforma que se dedica a darnos un serverless de mySQL --> https://planetscale.com --> pide tarjeta pero tiene plan 100% gratuito (para evitar estafas)
clevercloud --> servicio que nos permite alojar bases de datos como mySQL --> https://clever-cloud.com

**** Replicando la BD en cleverCloud ****
Creamos cuenta
Create an application + addon 'mySQL' --> select service (free) + server (france) --> BS creada y visualizamos las credenciales que nos ha generado
Cargar los datos de nuestra BD (existen servicios para conectar o replicar, etc) --> MECANISMO CLÁSICO: ir a nuestra BD de mySQL y pulsar la opción EXPORT DATA (dump data & structure + stored procedures/events/triggers) --> save as (script sql)
    --> en PHPmyadmin (dentro del editor gráfico) --> seleccionar base de datos + importar + el fichero generado anteriormente

Cosas a tener en cuenta
--> Los privilegios (revisar bien los triggers, etc para evitar fallos // Realizar modificaciones necesarias en el archivo)
--> Tener en cuenta que ahora hay otros datos de conexión (al generarse la nueva BD)

*/