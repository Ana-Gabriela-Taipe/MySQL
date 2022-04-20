
#1)Consulta la tabla city de la base de datos sakila.
select*from sakila.city;

#2)Filtra la información donde city sea Chiayi, Dongying, Fukuyama y Kilis.
select*from sakila.city where city in('Chiayi','Dongying','Fukuyama','Kilis');

