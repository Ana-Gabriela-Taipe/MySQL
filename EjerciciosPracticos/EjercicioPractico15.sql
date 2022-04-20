
#1)Consulta la tabla rental de la base de datos sakila.
select*from sakila.rental;

#2)Filtra la información donde staff_id no sea 1, customer_id sea mayor a 250 y inventory_id sea menor de 100.
select*from sakila.rental where not (staff_id = 1) and customer_id >250 and inventory_id>100;

#Otra forma:
	select * from sakila.rental
	where not staff_id = 1
	and customer_id > 250
	and inventory_id < 100;

