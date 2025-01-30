INSERT INTO public.incidencias (id,carretera,causa,fechahora,cod_nivel,pk_inicial,pk_final,poblacion,cod_provincia,cod_sentido,tipo_incidencia)
	VALUES (
	300
	, 'A-70'
	, 'RETENCIÓN / CONGESTIÓN'
	, '2023-02-21 19:03:00'
	, (select n.codigo from niveles n where n.nivel = 'AMARILLO')
	,33
	,28
	,'MAITINO'
	,(select p.codigo from provincias p where p.nombre = 'Alicante/Alacant')
	,(select s.codigo from sentidos s where s.sentido = 'DECRECIENTE DE LA KILOMETRICA')
	,(select tp.codigo from tiposincidencia tp where tp.tipo = 'CONO')
);
