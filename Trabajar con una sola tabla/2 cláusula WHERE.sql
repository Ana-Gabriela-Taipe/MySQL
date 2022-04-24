select * from ventas;

#1)Traer todas las ventas de la zona 2
select * from ventas where ID_Zona=2;

#2)Todos las ventas mayores a 2,000,000
select * from ventas where venta>2000000;

#3)Todos los productos que sean del cliente 7
select ID_producto, ID_Cliente from ventas where ID_Cliente=7;

#4)Trae toda la venta que sean menores a 1,000,000
select * from ventas where venta<1000000;
