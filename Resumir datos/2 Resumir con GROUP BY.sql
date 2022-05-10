#El uso de GROUP BY te permite agrupar algún nivel de agregación en base a otra columna

#Genera una vista para entregar el informe que contenga:
select * from a2practica.ventas;
select * from a2practica.vendedores;
select * from a2practica.producto;
select * from a2practica.clientes;

#a)Las ventas por vendedor
SELECT
	v.ID_Vendedor,
	SUM(v.Venta) AS 'Ventas',
    ve.Nombre,
    ve.Apellido
FROM a2practica.ventas v
JOIN a2practica.vendedores ve
	ON v.ID_Vendedor=ve.ID_Vendedor
GROUP BY ve.ID_Vendedor;

#b)Ventas por producto
SELECT
	p.ID_producto,
	SUM(v.Venta) AS 'Ventas',
    p.Producto
FROM a2practica.ventas v
JOIN a2practica.producto p
	ON v.ID_producto = p.ID_Producto
GROUP BY p.ID_Producto;

#c)Resumen de compras por cliente en 2017
SELECT 
	SUM(v.Venta) AS 'Ventas Totales',
    c.Nombre
FROM a2practica.ventas v
JOIN a2practica.clientes c
	ON v.ID_Cliente = c.ID_Cliente
WHERE v.Fecha_venta BETWEEN '2017-01-01' AND '2017-12-31'
GROUP BY c.ID_Cliente;
    