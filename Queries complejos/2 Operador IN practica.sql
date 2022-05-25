#Los subqueries se pueden añadir en diferentes lugares de la consulta, es importante entender bien tus bases de datos y usar las columnas 
#de identificadores

#Crea un subquery para generar una vista con:
select * from a2practica.ventas;  #ID_Venta, Fecha_venta, ID_producto, ID_Zona, Venta, ID_Vendedor, ID_Cliente
select * from a2practica.vendedores; #ID_Vendedor, Nombre, Apellido, Telefono, Estado_Civil, Edad, Salario, ID_supervisor
select * from a2practica.producto; #ID_Producto, Producto
select * from a2practica.clientes; #ID_Cliente, Nombre, Direccion, Pais, Telefono, Clasificacion_credito

#1)Los vendedores que no vendieron en 2018
SELECT *
FROM a2practica.vendedores
WHERE ID_Vendedor NOT IN (
	SELECT DISTINCT ID_Vendedor
    FROM a2practica.ventas
    WHERE Fecha_venta BETWEEN '2018-01-01' AND '2018-12-31'					#NOTAR que la fecha inicia desde el año NO desde el día
);

#2)Productos que no se vendieron en marzo del 2017
SELECT *
FROM a2practica.producto
WHERE ID_Producto NOT IN (
	SELECT DISTINCT ID_Producto
    FROM a2practica.ventas
    WHERE Fecha_venta BETWEEN '2017-03-01' AND '2017-03-31'
);

#3)Clientes que compraron propiedas de remates Bancarios en el primer cuarto de 2016

#Primera Forma:
SELECT *
FROM a2practica.clientes
WHERE ID_Cliente IN (
	SELECT DISTINCT ID_Cliente
    FROM a2practica.ventas
    WHERE ID_producto = 7 AND Fecha_venta BETWEEN '2016-01-01' AND '2016-03-31'
);

#Segunda Forma: si no tenemos el ID_Producto, podemos filtrarlo por el nombre, es decir, p.Producto = 'Remates'
SELECT *
FROM a2practica.clientes
WHERE ID_Cliente IN (
	SELECT DISTINCT v.ID_Cliente
    FROM a2practica.ventas v
    JOIN a2practica.producto p USING (ID_producto)					#usamos USING en vez de ON v.ID_producto = p.ID_Producto
    WHERE p.ID_producto = 7 AND v.Fecha_venta BETWEEN '2016-01-01' AND '2016-03-31'
);



