#Imagina que vas a prerarar un análisis de ventas, tienes que entregar 2 columnas por vista con la descripción de: 
	#Ventas por cliente
	#Ventas por zona
	#Ventas por vendedor
	#Ventas por producto
   
select * from a2practica.ventas;
select * from a2practica.clientes;
select * from a2practica.zona;
select * from a2practica.vendedores;
select * from a2practica.producto;
   
#a)Ventas por cliente
select c.ID_Cliente, c.Nombre, v.Venta
from a2practica.ventas v   
join a2practica.clientes c
	on v.ID_Cliente = c.ID_Cliente;

#b)Ventas por zona
select z.Zona, v.Venta, v.ID_Venta 
from a2practica.ventas v 
join a2practica.zona z
	on v.ID_Zona = z.ID_zona;

#c)Ventas por vendedor
select d.ID_Vendedor, d.Nombre, d.Apellido, v.Venta
from a2practica.ventas v   
join a2practica.vendedores d
	on v.ID_Vendedor = d.ID_Vendedor;


#d)Ventas por producto
select p.ID_Producto, p.Producto, v.Venta
from a2practica.ventas v 
join a2practica.producto p
	on p.ID_Producto = v.ID_Producto;
