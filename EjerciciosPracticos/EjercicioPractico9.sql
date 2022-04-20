select * from sakila.film;

#1)Consulta description, release_year de la tabla film de la base de datos sakila.
select description, release_year from sakila.film;

#2)Filtra la información donde title sea IMPACT ALADDIN
select *from sakila.film where title='IMPACT ALADDIN';

#COMBINE LAS ANTERIORES INSTRUCCIONES
select description, release_year  from sakila.film where title = 'IMPACT ALADDIN';