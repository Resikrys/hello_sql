/*
TIPOS DE RELACIONES CON TABLAS SQL

01. RELACIONES 1:1

Tabla 1 (usuarios) --> user1 (Luis), user2 (Anna), user3 (Miki)
Tabla 2 (dnis) --> id1(dni1), id2(dni2), id3(dni3)
Cada element de la taula 1 només pot estar relacionat amb un sol element de la taula 2 --> Luis solo puede estar relacionado con id1 --> S'estableixen entre una PrimaryKey i una clave forania
Exemple: Clave primaria (userId --> tabla1) i clave foranea (dni --> Tabla2)

02. RELACIÓN 1:N (uno a varios)

Tabla1 (company) 
Tabla2 (empleados)
Relacion --> 1 company puede tener muchos empleados

03. RELACION N:N

Tabla 1 (diferentes registros --> programadores --> id1_dev1, id2_dev2, id3_dev3)
Tabla 2 (lenguajes de programación --> id1_lang1, id2_lang2, id3_lang3)
Taula3 (intermitja --> dev1-lang1, lang3 / dev2-lang2 / dev3-lang1, lang2)
Per modelar aquest tipus de relacions s'acostuma a fer servir uan taula intermitja on es guarden les relacions entre les dues taules 

04. AUTOREFERENCIA (relacion dentro de una propia tabla)

Tabla personas (p1, p2, p3, p4 // p4-[es la jefa])
Podríamos establecer que p4 es la jefa de p1, p2 y p3

*/