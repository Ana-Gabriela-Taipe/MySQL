#El uso del subqueries en SELECT nos permite crear cálculos y vistas con queries correlacionados

#Crea un subquery en SELECT para:

#1)Obtener el % que representa cada venta del total por cliente
select * from a2practica.ventas;
select * from a2practica.clientes;

#a)Vemos el total de ventas por cliente
SELECT * 
FROM a2practica.ventas
GROUP BY ID_Cliente;

#b)Vemos el total de ventas
SELECT
	SUM(Venta)
FROM a2practica.ventas;

#c)Obtenemos el porcentaje
SELECT
	ID_Cliente,
    ID_Venta,
	((Venta) / SUM(Venta))*100 AS Porcentaje
FROM a2practica.ventas
GROUP BY ID_Cliente;

#OTRA FORMA
SELECT
	ID_Cliente,
    ID_venta,
    (SELECT SUM(Venta) FROM a2practica.ventas WHERE ID_Cliente=v.ID_Cliente ) AS Total,
    Venta,
    Venta / (SELECT SUM(Venta) FROM a2practica.ventas WHERE ID_Cliente=v.ID_Cliente )*100 AS Porcentaje
FROM a2practica.ventas v
GROUP BY ID_Cliente;
    
    
    
    

