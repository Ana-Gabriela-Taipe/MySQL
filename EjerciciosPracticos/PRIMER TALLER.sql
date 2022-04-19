#PRIMER TALLER

#1. Mostrar mas informacion de las peliculas rentadas

#a)Vemos la informacion de todas las peliculas rentadas
select * from sakila.rental;

#b)Vemos la informacion de inventario
select * from sakila.inventory;

#c)Vemos la informacion de las peliculas
select * from sakila.film;

#e) Luego de hacer la union: seleccionamos las columnas de nuestro interes
select
R.rental_id,
F.title as Título,
R.rental_date as 'Fecha de renta'

#d)Unimos: Rentas, Inventario y Peliculas
#select * from sakila.rental R
from sakila.rental R
left join sakila.inventory I on (R.inventory_id = I.inventory_id)
left join sakila.film F on (I.film_id=I.film_id)





