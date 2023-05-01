# Pruebas_Reto
--------------------------------------------------------------------------------
1.
En los ordenadores de clase para unir la bbdd con java todos los dias
Descargar ojdbc8 y añadirla a la libreria con click derecho y añadir jar/folder => https://www.oracle.com/es/database/technologies/appdev/jdbc-downloads.html
Venir aquí :  C:\oraclexe\app\oracle\product\11.2.0\server\network\ADMIN y abrir listener.ora

Cambiar el archivo listener.ora --- > El localhost de nuestro ordenador por "127.0.0.1"

Conectar como "sys as sysdba" y poner esto :
alter system set LOCAL_LISTENER='(ADDRESS=(PROTOCOL=TCP)(HOST=127.0.0.1)(PORT=1521))' scope=both;

alter system register;
--------------------------------------------------------------------------------
