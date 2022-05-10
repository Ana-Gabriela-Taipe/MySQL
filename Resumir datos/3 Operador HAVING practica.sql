#Con HAVING logramos tener otro filtro que aplica a funciones de agregación en donde WHERE no puede ser usado. 
#Recuarda el orden:
	#SELECT
	#FROM
	#WHERE
	#GROUP BY
	#HAVING
	#ORDER BY

#Tomando en cuenta el ejercicio anterior: 
select * from a2practica.ventas;
select * from a2practica.clientes;

#a)Resumen de compras por cliente en 2017 que hayan sido mayores a 119 millones
SELECT 
	c.ID_Cliente,
    c.Nombre,
    SUM(v.Venta) AS 'Compras_Totales',
    v.Fecha_venta, 
    COUNT(v.Venta)
FROM a2practica.ventas v
JOIN a2practica.clientes c
	ON v.ID_Cliente = c.ID_Cliente
WHERE v.Fecha_venta BETWEEN '2017-01-01' AND '2017-12-31'
GROUP BY c.ID_Cliente
HAVING Compras_Totales > 119000000; 
	#NOTAR: que en HAVING el nombre de la variable debe ir sin '' porque sino, no le reconoce.

