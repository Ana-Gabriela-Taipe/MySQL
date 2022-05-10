#El uso conjunto de JOINs, UNIONs, GROUPs y funciones nos darán ese dato que queremos lograr
#Ventaja de usar SQL es que puedes procesar millones de registros y hacer cálculos con la información necesaria

#CLIENTE MOROSO:  Un cliente moroso es aquel que no cumple con el plazo de pago otorgado o pactado. Estos retrasos
#				  en los pagos pueden afectar el flujo de efectivo de tu empresa a tal grado que afectan el funcionamiento comercial.


#Generando datos importantes
select * from a2practica.ventas WHERE ID_venta=1; #ID_Venta, Fecha_venta, ID_producto, ID_zona, Venta, ID_Vendedor, ID_Cliente
	#NOTAR que solo hay UNA venta
select * from a2practica.pagos WHERE ID_venta=1; #ID_pago, ID_venta, Fecha_pago, Pago 
	#NOTAR que hay MUCHOS pagos
select * from a2practica.clientes; #ID_Cliente, Nombre, Direccion, Pais, Telefono, Clasificacion_credito

#a)Dame la lista de los clientes morosos
SELECT 
	c.ID_Cliente,
    c.Nombre,
	v.ID_Venta,
    v.Fecha_venta,
    p.ID_pago,
    p.Fecha_pago,
    v.Venta,
    SUM(p.Pago),
    v.Venta-SUM(p.Pago) AS 'Mora'
FROM a2practica.pagos p 
JOIN a2practica.ventas v 
	ON v.ID_Venta = p.ID_venta
JOIN a2practica.clientes c
	ON v.ID_Cliente = c.ID_Cliente
GROUP BY v.ID_Venta, c.ID_Cliente
HAVING Mora > 0;
#ORDER BY c.ID_Cliente ASC;
