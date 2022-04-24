select * from clientes;

#1)Tenemos un cliente que no tiene teléfono, necesitamos identificarlo para poder actualizar la base de datos, qué cliente es?
select * from clientes where Telefono is null;