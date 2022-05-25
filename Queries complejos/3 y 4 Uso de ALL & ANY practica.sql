#Usando ALL nos permite simplificar nuestras consultas y crear subqueries al iterar en todos los registros

#Genera una vista para entregar el informe que contenga:
select * from a2practica.ventas;
select * from a2practica.producto;

#1)Todas las ventas superiores a la venta más cara de una oficina
#Oficina lo encontramos en la tabla "producto" con el ID_producto = 2

#a)Vemos la venta mas cara de una oficina: maximo
SELECT MAX(Venta) FROM a2practica.ventas WHERE ID_producto=2;
	#max de ventas es 2888325

#b)Seleccionamos la ventas
SELECT *
FROM a2practica.ventas						#Todas las ventas
WHERE Venta > ALL (							#que sean mayores a las ventas de oficina
	SELECT Venta							#Este select vota una lista 			
    FROM a2practica.ventas					#con todos los resultados de las ventas de oficina
    WHERE ID_producto =2
);

#2)Cualquier venta mayor al de una oficina
SELECT *
FROM a2practica.ventas						#Todas las ventas
WHERE Venta > ANY (							#que sean mayores a CUALQUIER venta de la oficina | se puede usar tambien SOME
	SELECT Venta							#Este select vota una lista 			
    FROM a2practica.ventas					#con todos los resultados de las ventas de oficina
    WHERE ID_producto =2
);



