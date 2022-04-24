#Using:= permite hacer las funciones del JOIN cuando las columnas que quiero unir tienen el mismo nombre. 
#Se usa en vez del ON.

#Genera una vista con la descripción: 

select * from a2practica.vendedores;
select * from a2practica.clientes;
SELECT * FROM a2practica.producto;
SELECT * FROM a2practica.zona;

#1)Venta con el cliente y zona
select v.Venta, c.Nombre as Nombre_cliente, z.Zona
from a2practica.ventas v
join a2practica.clientes c
	USING(ID_Cliente) 
join a2practica.zona z
	USING(ID_zona);

#2)Venta con vendedor y producto
select v.Venta, d.Nombre as Nombre_vendedor, p.Producto
from a2practica.ventas v
join a2practica.vendedores d
	USING(ID_Vendedor) 
join a2practica.producto p
	USING(ID_producto);

