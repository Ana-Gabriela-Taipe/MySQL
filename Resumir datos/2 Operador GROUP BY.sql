
select * from datosana.ventas;

#a)Agrupar el total de ventas por ID de local
SELECT 
	Id_local,
    SUM(venta) as 'Ventas Totales'
FROM datosana.ventas
GROUP BY ID_local;

#Notar que la suma total de todas las ventas era 21081 = 9528+3460+5099+3227

#b)Agrupar las ventas mayores a 1000 por ID de local
SELECT 
	Id_local,
    SUM(venta) as 'Ventas Totales'
FROM datosana.ventas
WHERE venta > 1000
GROUP BY ID_local;

#c)Agrupar el total de ventas por ID de local de pizzas 'pzz'
SELECT
	ID_local,
    SUM(venta) as 'Ventas Totales'
FROM datosana.ventas
WHERE clave_producto='pzz'
GROUP BY ID_local;
#ORDER BY ID_local DESC;
