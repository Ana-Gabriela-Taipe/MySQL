#A partir de una seleccion con Funciones de Agragación, el operador HAVING nos permite hacer OTRA condicional

SELECT 
	ID_local,
    SUM(venta) as Venta_Total#'Venta Total'
FROM datosana.ventas
WHERE clave_producto='pzz'
GROUP BY ID_local
HAVING Venta_Total > 1500; 
	#Como tenia como respuesta 1|4628, 2|1535, 3|1501, 4|1444, me eliminará el último porque no supera 1500 en ventas