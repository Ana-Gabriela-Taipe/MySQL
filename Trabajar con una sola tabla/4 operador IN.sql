select * from ventas;

#1)Obtén las ventas de la zona del 1 al 4
select * from ventas where ID_Zona in (1,2,3,4);
	#como hay muchas entradas, no se puede visualizar todos los ID_Zona 

#2)Obtén las ventas que haya realizado el consumidor 6,7, 8 y 9.
select * from ventas where ID_Cliente in (6,7,8,9);

#3)Obtén las ventas que NO sean del vendedor 15, 21 y 35.
select * from ventas where NOT ID_Vendedor in (15,21,35);

