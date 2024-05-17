/*
-- *** TRANSACCIONES ***

TRANSACCIÓN es algo que se está ejecutando en bloque y asegura que lo que nosotros queremos ejecutar solo se ejecute en el caso que nosotros consideremos que se ha hecho bien esa ejecución. --> commit

Por ejemplo, estoy comprobando transacciones de una cuenta del banco que no puede tener transferencias negativas y veo que hay un valor no válido (negativo). ¿Qué puedo hacer?
ROLLBACK: volver o devolver la base de datos a antes de que se ejecutara esa transacción.

*/

START TRANSACTION
commit
ROLLBACK

/*
-- *** CONCURRENCIA ***
CONCURRENCIA: cuando varios usuarios intentan hacer lo  mismo en una misma base de datos --> mecanismos de concurrencia (administración de BD)
Las BD permiten configurar reglas de concurrencia --> por ejemplo: dos usuarios no pueden modificar a la vez el campo X (se bloquea la tabla y cuando el user1 termina se ejecuta lo que haga user2 --> interbloqueo)
Lecturas sucias: puedo lee la BD pero no modificar los campos
*/