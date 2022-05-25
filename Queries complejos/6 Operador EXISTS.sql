#Este operador sirve para evaluar una condicion que va a ser evaluada en el subquerie

#1)Cuales vendedores no vendieron

#RECORDAR: que una manera de hacerla es como 
SELECT *
FROM datosana.empleados e
WHERE e.ID_empleado NOT IN (
	SELECT DISTINCT v.venta_empleado
    FROM datosana.ventas v
);
#pero esto es en una lista corta en donde se busca,
SELECT DISTINCT venta_empleado
    FROM datosana.ventas;
#que pasa, si la lista no es corta, y tenemos un querie muy muy grande, entonces usamos el operador EXISTS
SELECT *
FROM datosana.empleados e
WHERE NOT EXISTS (
	SELECT v.venta_empleado
    FROM datosana.ventas v 
    WHERE v.venta_empleado = e.ID_empleado
);

#a) Podemos ver tambien, los que SI vendieron
SELECT *
FROM datosana.empleados e
WHERE EXISTS (
	SELECT v.venta_empleado
    FROM datosana.ventas v 
    WHERE v.venta_empleado = e.ID_empleado
);

 


