select * from datosana.ventas;
select * from datosana.venta_detalle;

#OBJETIVO: cuando se alimente la tabla "ventas" alimentar la tabla "venta_detalle" también.

#a)Vemos que la tabla "ventas" tiene 22 registros
	#En la información de la tabla "ventas", vemos que "ventas_id" tiene seleccionado "AI := auto incremental", esto quiere decir 
    #que atomáticamente va a incrementar, en este caso al #23.
    #Las columnas que necesito incrementar son las "NN := not null" excepto "ventas_id" que tiene seleccionado "AI" 
INSERT INTO datosana.ventas(ID_local, clave_producto, venta) 
VALUES(2,"pzz",233);
select * from datosana.ventas;

INSERT INTO datosana.venta_detalle
VALUES(LAST_INSERT_ID(),"Llevar");
	#LAST_INSERT_ID() := trae el ultimo ID que se insertó 
select * from datosana.venta_detalle;

