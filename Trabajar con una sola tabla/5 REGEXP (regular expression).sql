select * from vendedor;

#1)Obtén los apellidos del personal de ventas que termine en “ez”
select ID_Vendedor, Apellido from vendedor where Apellido like '%ez';
select ID_Vendedor, Apellido from vendedor where Apellido regexp 'ez$'; 
	#RECEXP
    #^ para que inicie
    #$ para que termine

#2)Agrega la columna de nombre para tener las 2 columnas, nombre y apellidos
select ID_Vendedor, Nombre, Apellido  from vendedor where Apellido like '%ez';

#3)Crea una consulta para tener los apellidos que terminen en “ez” o inicien en “sa”
select Apellido from  vendedor where Apellido like '%ez' AND Apellido like'sa%';
select Apellido from  vendedor where Apellido regexp'ez$' AND Apellido regexp '^sa';

#OBSERVACION: nunca olvidar que con AND y OR, se debe llamar nuevamente a la variable a condicionar, si no SQL solo lee la
#             primera instrucción.
 
 