use 1trabajarunasolatabla;
select * from ventas;

#1)Traer todas las ventas mayores o iguales a 1,500,000 en zona 2
select * from ventas where Venta >= 1500000 AND ID_Zona=2;

#2)Todos las ventas menores a 500,000 en la zona 2 que sean del vendedor 2
select *from ventas where Venta < 500000 and ID_Zona=2 and ID_Vendedor=2;

#3)Todas las ventas mayores a 999,999 o que sean del vendedor 13
select * from ventas where Venta > 999999 OR ID_Vendedor=13;

#4)Trae toda la venta que NO sea del cliente 10
select * from ventas where NOT ID_Cliente =10;
