-- pregunta sql 1 
select DISTINCT 
	v.persona_id,
	p.name 
from 
	vehiculo v
	inner join persona p 
		on v.persona_id = p.id 
where 
	v.tipo = 'tipo 1'
;	


-- pregunta sql 2
select 
	e.nombre, 
	p.name, 
	v.descripcion, 
	v.tipo 
from 
	empresa e 
	inner join persona p on e.id = p.empresa_id 
	inner join vehiculo v on p.id = v.persona_id
;

-- pregunta sql 3
select 
	p.name 
from 
	empresa e 
	inner join persona p on e.id = p.empresa_id
where 
	e.id = 3
	and p.estado  = 'estado 1'
;


-- pregunta sql 4
select
	p.id,
	p.name, 
	p.estado 
from persona p;


-- pregunta sql 5
select 
	e.id,
	p.name, 
	(
		select count(*) 
		from vehiculo v 
		where v.persona_id = p.id
	) as cantidad_vehiculo
from 
	empresa e 
	inner join persona p on e.id = p.empresa_id
order by 1, 2
;

-- pregunta sql 6
select 
	e.nombre, 
	p.name, 
	v.descripcion
from 
	empresa e 
	inner join persona p on e.id = p.empresa_id 
	inner join vehiculo v on p.id = v.persona_id
