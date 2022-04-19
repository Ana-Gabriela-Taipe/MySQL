#SEGUNDO TALLER

select*from sakila.inventory;
select*from sakila.film;
select*from sakila.rental;

#1.Mostrar el total de rentas que han tenido las peliculas del inventario
#2.Mostrar el ID de la pelicula, su titulo y el idioma

#a)Vemos toda la información
select*from sakila.inventory I
left join sakila.film F on (I.film_id=F.film_id)
left join sakila.rental R on (I.inventory_id=R.inventory_id)
left join sakila.language L on (F.language_id=L.language_id);

#COMENTARIO: usamos solo Left Join porque queremos mantener la informacion de todo el inventario, sin eliminar nada. 

#b)Agrupamos la informacción, eliminando así la información repetida
select
distinct F.film_id as ID,
F.title as TITULO,
L.name as IDIOMA, 
count(R.rental_id) as RENTAS
from sakila.inventory I
left join sakila.film F on (I.film_id=F.film_id)
left join sakila.rental R on (I.inventory_id=R.inventory_id)
left join sakila.language L on (F.language_id=L.language_id)
group by 1,2,3; #1:= ID, #2:=TITULO , #3:= IDIOMA




