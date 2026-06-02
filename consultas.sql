
--Registrar un resultado de un partido (Sebastian):

update juega_un
set goles = 2
where id_partido = 1 and rol = 'local';

update juega_un
set goles = 1
where id_partido = 1 and rol = 'visitante';



--Contabilizar la cantidad de usuarios, agrupados por pais (Sebastian):

select pais, count(*) as cantidad_usuarios_por_pais
from usuarios
group by pais
order by cantidad_usuarios_por_pais desc;


-- Eliminar un torneo de (Sebastian, igual esta la agarre para sumar alguna mas):

delete
from torneos
where nombre_torneo = 'Libertadores';

delete
from torneos
where nombre_torneo = 'Copa Argentina'