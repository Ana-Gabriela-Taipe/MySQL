
#1)Selecciona tu esquema de practica con USE
Use 1trabajarunasolatabla;

#2)Aplica un SELECT y obtén todas las columnas con * de ventas
select * from ventas;

#3)Usa SELECT para traer las columnas de ID_zona, venta y ID_cliente
select ID_Zona, Venta, ID_cliente from ventas;

#4)Con SELECT trae ahora solo venta y dale otro nombre con AS a la columna
select venta AS Ingresos from ventas;

#5)Obtén una columna que te muestre la venta + IVA (16%) y nómbrala diferente 
select (venta * 0.16) AS VentasIVA from ventas;
