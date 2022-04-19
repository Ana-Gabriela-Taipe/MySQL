#TERCER TALLER

#1.Mostrar cuanto han gastado los clientes en rentas y el total de sus rentas

#a)Consultamos la información
select*from sakila.customer;
select*from sakila.payment;

#b)Unimos la información
select*from sakila.customer C
left join sakila.payment P on (C.customer_id=P.customer_id);

#c)Agrupamos la informacción, eliminando así la información repetida
select
distinct C.first_name as NOMBRE,
C.last_name as APELLIDO,
C.email as email,
sum(P.amount) as 'Total de Costo',
count(P.rental_id) as 'Total de Rentas'
from sakila.customer C
left join sakila.payment P on (C.customer_id=P.customer_id)
group by 1,2,3;

#d)Mejoramos la presentación y ordenamos para ver quien es nuestro mejor cliente
select
P.customer_id,
concat(C.first_name,' ',C.last_name) as Nombre,
C.email as email,
sum(P.amount) as 'Total gastando',
count(P.rental_id) as 'Total rentas'
from sakila.customer C
left join sakila.payment P on (C.customer_id=P.customer_id)
group by 1,2,3
order by 4 desc

#Vemos que Karl Seal es nuestro mejor cliente.