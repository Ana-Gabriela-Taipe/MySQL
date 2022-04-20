
#1)Consulta la tabla film_text de la base de datos sakila.
select * from sakila.film_text;

#2)Filtra la información donde title  sea ZORRO ARK, VIRGIN DAISY, UNITED PILOT
select*from sakila.film_text where title in ('ZORRO ARK','VIRGIN DAISY','UNITED PILOT');

