
#1)Consulta la tabla payment de la base de datos sakila.
select*from sakila.payment;

#2)Filtra la información donde amount sea mayor a 0.99.
select distinct amount from	sakila.payment where amount>0.99;

#COMBINE LAS ANTERIORES INSTRUCCIONES
select * from sakila.payment where amount > 0.99