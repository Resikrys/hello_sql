# Conexiones BD --> como leer la BD desde el código (se puede hacer con cualquier lenguaje)
# CONNECTOR:

import mysql.connector;

# config = {
#     "host": "mysql-5707.dinaserver.com",
#     "port": "3306",
#     "database": "moure_test",
#     "user": "mouredev_read",
#     "password": "mouredev_pass"
# }

config = {
    "host": "127.0.0.1",
    "port": "3306",
    "database": "hello_mysql",
    "user": "root",
    "password": "root1234"
}

connection = mysql.connector.connect(**config)
cursor = connection.cursor()

# Tenemos que importar los datos de la BD
query = 'SELECT * FROM users'
cursor.exeute(query)
result = cursor.fetchall()

for row in result:
    print(row)

cursor.close()
connection.close()

# SQL Injcetion: una de las formas más comunes en las que un atacante se puede hacer con datos de nuestra BD --> Tenemos que llevarlo todo a un entorno más seguro
import mysql.connector;

def print_user(user)

config = {
    "host": "127.0.0.1",
    "port": "3306",
    "database": "hello_mysql",
    "user": "root",
    "password": "root1234"
}

connection = mysql.connector.connect(**config)
cursor = connection.cursor()

query = "SELECT * FROM users WHERE name='" + user + "';"
cursor.exeute(query)
result = cursor.fetchall()

for row in result:
    print(row)

cursor.close()
connection.close()

# Que podria pasar si en lugar de printar un nombre alguien decide hacer algo como esto?? --> estamos dando libertad al usuario para concatenar lo que le de la gana
# print_user("Ace")
print_user("'; UPDATE users SET age = '21'WHERE user_id = 1; --")

# *** Cómo resolverlo? *** Securizando los datos --> %s (parámetro de tipo string) --> asegurar que las querys están pasando parámetros y no cadenas de texto
# [...]

query = "SELECT * FROM users WHERE name=%s"
cursor.exeute(query, (user,))
result = cursor.fetchall()

# [...]

# **** Como connectar la BD local al servidor remoto ****
# [...]

# config = {
#     "host": "hdsgfhdshf54654fsddf/services/clever-cloud.com"
#     "port": "3306",
#     "database": "gdsfggfgsfgsdjfvasmutwe",
#     "user": "hgsdfhsjfh5454dfsg",
#     "password": "dsfghsdfg87563fsdfs"
# }

# [...]