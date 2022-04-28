select * from datosana.ingredientes;

#OBSERVACION: si ejecutamos solamenta la linea "DELETE FROM nombre_tabla" se borrara esa tabla, y todas las manipulaciones que se
#le haya hecho, entonces tendríamos que volver a subir esa tabla a través de Excel.

#Para borrar fila
DELETE FROM datosana.ingredientes i 
WHERE i.ingredientes_id = 4;
select * from datosana.ingredientes; #veo que en efecto se ha borrado toda la fila con ese ID

#Para borrar multiples filas
DELETE FROM datosana.ingredientes i
WHERE i.ingredientes_id BETWEEN 2 AND 5;
select * from datosana.ingredientes; #veo que en efecto se han borrado las filas con esos IDs