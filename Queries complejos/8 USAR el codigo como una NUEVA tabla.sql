
#1)Que tan alejadas estan las ventas del promedio GENERAL de ventas (como para dar un bono)
select * from datosana.ventas;

#a)Veamos que ventas son
SELECT 
	ventas_id,
    venta,
    (SELECT AVG(venta) FROM datosana.ventas) AS Promedio_General, 		#esto es lo que me permite tener los valores desglosados
    venta - (SELECT Promedio_General) AS '¿ Bono?'						#notar que se pone SELECT para llamar a la NUEVA variable
FROM datosana.ventas
ORDER BY ventas_id ASC;

#b)Cuales son las ventas ID que van a recibir el bono
SELECT *
FROM (SELECT 
	ventas_id,
    venta,
    (SELECT AVG(venta) FROM datosana.ventas) AS Promedio_General, 		
    venta - (SELECT Promedio_General) AS 'Bono'						
FROM datosana.ventas
ORDER BY ventas_id ASC
) AS Venta_Promedio														#es importante NOMBRARLA a la NUEVA "tabla"
WHERE Bono > 1; 
