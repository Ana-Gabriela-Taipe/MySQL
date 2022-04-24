#Genera una vista con la descripción que contenga: 
select * from a2practica.ventas;
select * from a2practica.vendedores;
select * from a2practica.clientes;
SELECT * FROM a2practica.producto;
SELECT * FROM a2practica.zona;

#1)Información de venta por vendedor y cliente. 
select v.Venta, d.Nombre as Nombre_vendedor, d.Apellido as Apellido_vendedor, c.Nombre as Nombre_cliente
from a2practica.ventas v
join a2practica.vendedores d
	on v.ID_Vendedor = d.ID_Vendedor
join a2practica.clientes c
	on v.ID_Cliente = c.ID_Cliente;

#2)Otra para la venta por cliente y zona y producto
select v.Venta, c.Nombre as Nombre_cliente, z.Zona, p.Producto
from a2practica.ventas v
join a2practica.clientes c
	on v.ID_Cliente = c.ID_Cliente
join a2practica.zona z
	on v.ID_Zona = z.ID_zona
join a2practica.producto p
	on v.ID_producto = p.ID_Producto;
    
#OBSERVACION: notar que TODO estamos uniendo por el identificador, no por el nombre de la columna que quiero que aparezca.
