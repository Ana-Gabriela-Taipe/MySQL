#EXISTS me permite evaluar si un valor existe en otro query al evaluar únicamente si alguna condición se cumple o no

#Buscaremos a todos los vendedores que no vendieron usando EXISTS y el uso de un query correlacionado:
select * from a2practica.ventas;
select * from a2practica.vendedores;

#1)Todos los vendedores que no han vendido nada
SELECT *
FROM a2practica.vendedores ve
WHERE NOT EXISTS (
	SELECT v.ID_Vendedor
    FROM a2practica.ventas v
    WHERE ve.ID_Vendedor = v.ID_Vendedor
);
