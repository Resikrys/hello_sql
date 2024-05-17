-- IN: permet filtrar en base a un límit de dades conegudes (+ eficient que concatenar condicionals)
SELECT * FROM users WHERE name IN ('Brais');
/*
Per definir cadenes de text en sql sempre s'utilitza 'comilla simple' i dóna igual si ho fas en minúscules o en majúscules
*/
SELECT * FROM users WHERE name IN ('Brais', 'sara');
