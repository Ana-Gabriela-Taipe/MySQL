#Me da el TOTAL o SUBTOTALES de valores que tenga.

#a) Total de las ventas
SELECT 
	ID_local,
    SUM(venta) AS Venta_Total
FROM datosana.ventas
GROUP BY ID_local WITH ROLLUP;

#b) SubTotal de las ventas por ID de local
SELECT 
	ID_local,
    clave_producto,
    SUM(venta) AS Venta_Total
FROM datosana.ventas
GROUP BY ID_local, clave_producto WITH ROLLUP;
