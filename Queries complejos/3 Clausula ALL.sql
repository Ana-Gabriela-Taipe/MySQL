#Encontrar todas las ventas mayores a la venta del local 2

select * from datosana.ventas;


#a) Vemos las ventas del ID_local = 2
select venta
from datosana.ventas
where ID_local = 2;

#b)Vemos la venta maxima del ID_local = 2
select max(venta)
from datosana.ventas
where ID_local = 2;

#c)Hacemos los queries para comparar con el maximo de ID_local = 2
	SELECT *
    FROM datosana.ventas
    WHERE venta > (
		select max(venta)
		from datosana.ventas
		where ID_local = 2
    );

#d)Hacemos los queries para comparar con TODOS los valores del ID_local = 2
	SELECT *
    FROM datosana.ventas
    WHERE venta > ALL(				#ALL se va a comparar linea por linea, es decir, el valor de venta vs los tres valores
		select venta
		from datosana.ventas
		where ID_local = 2
    );
    
#OBSERVACION: ambos resultados son lo mismo
