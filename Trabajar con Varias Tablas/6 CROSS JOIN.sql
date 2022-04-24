#CROSS JOIN:= permite crear combinaciones posibles entre tablas, existe la forma implícita usando el nombre de las tablas en FROM

#Genera una vista para traer todas las combinaciones de: 

select * from a2practica.producto;
select * from a2practica.clientes;

#1)Nombre de productos y nombre de clientes
select p.Producto, c.Nombre as Nombre_cliente
from a2practica.producto p
cross join a2practica.clientes c;

#Por forma implicita usando el nombre de las tablas en FROM, se refiere a:
	#from a2practica.producto p, a2practica.clientes c;