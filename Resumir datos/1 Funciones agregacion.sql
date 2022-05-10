#Las funciones de agragación, permiten resumir en una fila la información de una tabla, en este caso de la tabla "ventas"

SELECT * FROM datosana.ventas;

SELECT
	MAX(venta) as 'Maximo de Ventas',
    MIN(venta) as 'Minimo de Ventas',
    AVG(venta) as 'Promedio de Ventas',
    SUM(venta) as 'Suma de Ventas',
    COUNT(DISTINCT venta) as 'Número de Ventas'
FROM datosana.ventas;