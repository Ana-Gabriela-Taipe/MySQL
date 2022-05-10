#El uso de SUM() nos permite obtener un resumen de datos al tener un nivel de agregación de suma, recuerda los demás:
	#MAX()
	#MIN()
	#AVG()
	#COUNT()
#Es importante seleccionar las columnas necesarias para mostrar la información que nos interesa


#Tienes que entregar un informe por cliente donde entregues la siguiente información:
SELECT * FROM a2practica.clientes;
SELECT * FROM a2practica.pagos;
SELECT * FROM a2practica.ventas;

#a)Cuál cliente realizó la compra máxima en el año 2018?
SELECT 
	MAX(Venta) AS 'Venta o Compra Máxima',
    c.Nombre AS 'Nombre Cliente',
    v.Fecha_venta
FROM a2practica.ventas v
JOIN a2practica.clientes c
	ON v.ID_Cliente = c.ID_Cliente
WHERE v.Fecha_venta BETWEEN '2018-01-01' AND '2018-12-31';

#b)Cuál fue el pago menor que recibimos en 2018?
SELECT 
	MIN(Pago) AS 'Pago mínimo',
    ID_pago,
    Fecha_pago
FROM a2practica.pagos
WHERE Fecha_pago BETWEEN '2018-01-01' AND '2018-12-31';

#c)Cuántas ventas hubo en el 2ndo semestre de 2018?
SELECT 
	COUNT(Venta) AS 'Ventas 2ndo semestre 2018'#,
    #Fecha_venta
FROM a2practica.ventas
WHERE Fecha_venta BETWEEN '2018-07-01' AND '2018-12-31'; 


