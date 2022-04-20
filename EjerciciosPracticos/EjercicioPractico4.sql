SELECT * FROM sakila.customer;

#1)Consulta store_id, first_name y last_name de la tabla customer de la base de datos sakila.
select store_id, first_name, last_name from sakila.customer;

#2)Cambia el nombre de las columnas store_id, first_name y last_name a Tienda, Nombre y Apellido respectivamente.
select store_id as Tienda from sakila.customer;
select first_name as Nombre from sakila.customer;
select last_name as Apellido from sakila.customer;

#3)Ordena de manera descendente la columna Apellido
select last_name from sakila.customer order by last_name DESC;

#COMPACTA TODAS LAS INTRUCCIONES ANTERIORES
select store_id as Tienda, first_name as Nombre, last_name as Apellido
from sakila.customer
order by Apellido desc;