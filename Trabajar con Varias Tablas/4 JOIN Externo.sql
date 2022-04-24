#Encontrar al vendedor que no ha vendido nada
select*from a2practica.vendedores;
select*from a2practica.ventas;

select v.Venta, d.Nombre
from a2practica.ventas v
right join a2practica.vendedores d 
	on v.ID_Vendedor = d.ID_Vendedor
order by Venta; #por defecto me vota todos los valores de menor a mayor

#OBSERVACION: #no es left join, porque Ventas es el conjunto A, entonces estaria uniendo los valores del cojunto B a los valores
#de A, debería ser entonces al revés, ya que con right unos los valores de A a los de B sea que tenga valores A o no. 