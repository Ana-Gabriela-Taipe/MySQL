#La tabla "ana_ventas" no tiene valores, vamos a llenar la tabla con los valores de la tabla "ventas".

INSERT INTO datosana.ana_ventas
SELECT * FROM datosana.ventas v
WHERE v.venta > 1000;