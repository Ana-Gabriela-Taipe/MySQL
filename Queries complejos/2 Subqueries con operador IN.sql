

#1)Cuales ventas no fueron hechas por los empleados
select * from datosana.empleados;
select * from datosana.ventas;

#a)Vemos cuantos ID de empleados hay
SELECT COUNT(DISTINCT ID_empleado)
FROM datosana.empleados;
		#Respuesta: hay 11 empleados

#b)Vemos los empleados que NO esten en la lista de la variable "venta_empleado"
SELECT * 									#COUNT(DISTINCT ID_empleado) hay 8 empleados que estan en la lista
FROM datosana.empleados						#traeme todos los empleados que 
WHERE ID_empleado NOT IN (					#NO esten 
	SELECT DISTINCT venta_empleado			#en la variable "venta_empleado"
	FROM datosana.ventas					#de la tabla de ventas
);
    
#OTRA FORMA:
    
SELECT *
FROM datosana.empleados e
LEFT JOIN datosana.ventas v
	ON v.venta_empleado = e.ID_empleado
WHERE v.venta_empleado IS NULL;
