select * from datosana.ingredientes;

#Actualizamos los algunos datos ya existentes
UPDATE datosana.ingredientes i
SET i.precio_porcion = 7, clave_ingrediente = 'pin'
WHERE ingredientes_id = 5;
select * from datosana.ingredientes;