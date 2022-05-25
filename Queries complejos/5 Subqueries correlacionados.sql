#Son subqueries que se evaluan por cada fila procesada por el querie principal

#1) Quiero las ventas que son mayores al promedio de ventas por local
select * from datosana.ventas;

#a)Vemos cuales son el promedio de ventas por local
SELECT
	ID_local,
	AVG(venta)
FROM datosana.ventas
GROUP BY ID_local;

#b)Vemos que ventas son mayores al promedio por ID_local
SELECT *
FROM datosana.ventas v
WHERE v.venta >(
	SELECT AVG(venta) 					#sin v.venta, porque no vale
    FROM datosana.ventas
    WHERE ID_local = v.ID_local			#puede tener v.ID_local, pero para que se entienda mejor
);