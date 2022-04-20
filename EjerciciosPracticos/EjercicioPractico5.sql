
#1)Consulta la tabla payment de la base de datos sakila.
select*from sakila.payment;

#2)¿Cuál es la cantidad mas baja y mas alta de la columna amount?
select amount,
max(amount),
min(amount)
from sakila.payment;

#COMPACTA TODAS LAS INTRUCCIONES ANTERIORES
select distinct amount from sakila.payment order by amount asc