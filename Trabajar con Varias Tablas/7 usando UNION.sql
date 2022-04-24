#UNION := para usar UNION puede ser con la misma tabla o con una diferente, ten en cuenta que tienen que tener la MISMA CANTIDAD de 
#columnas.

#Genera 2 consultas y únelas para lograr:

#1)Una vista con clientes que tengan la calificación “A” y “B”
select * from a2practica.clientes where Clasificacion_credito = 'A' or Clasificacion_credito = 'B';

select*from a2practica.clientes where Clasificacion_credito = 'A'
union
select*from a2practica.clientes where Clasificacion_credito = 'B';

#2)Lista de vendedores que estén casados y sean mayores de 50 años con los vendedores solteros y menores de 30
select * from a2practica.vendedores where Estado_Civil = 'Casado' and Edad > 50
union
select * from a2practica.vendedores where Estado_Civil = 'Soltero' and Edad < 30;


#OBSERVACION: si quieremos algo en específico en vez de *, tomar la misma cantidad de variables tanto en el select de arriba como 
#en el select de abajo.