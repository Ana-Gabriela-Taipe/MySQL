#Querie secundario nos va a entregar un resultado que puede ser usado por el querie primario.
#Puede haber varios subqueries dentro del querie principal.

select * from datosana.empleados;

#a) Quiero todos los empleados que sean mayores en edad al promedio de edad de todos

#Vemos cual es el promedio de Edad
	SELECT AVG(Edad) 
	FROM datosana.empleados;

#Vemos cuales son los empleados buscados
	SELECT * 
	FROM datosana.empleados
	WHERE Edad > (
		SELECT AVG(Edad) 
		FROM datosana.empleados
	);
