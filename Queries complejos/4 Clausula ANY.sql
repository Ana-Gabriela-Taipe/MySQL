#H#Hacemos los queries para comparar con CUALQUIERA de los valores del ID_local = 2
	SELECT *
    FROM datosana.ventas
    WHERE venta > ANY(				#ALL se va a comparar linea por linea, es decir, el valor de venta vs los tres valores
		select venta
		from datosana.ventas
		where ID_local = 2
    );
    
#OBSERVACION: como compara con cualquiera de los 3 valores, lo logico es que el MINIMO de los valores es con el cual comparar.