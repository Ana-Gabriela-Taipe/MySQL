
#1)Consulta la tabla payment de la base de datos sakila.
select *from sakila.payment;


#2)Filtra la información donde customer_id sea igual a 36, amount sea mayor a 0.99 y staff_id sea igual a 1.
select*from sakila.payment where customer_id=36 AND amount > 0.99 AND staff_id=1;


