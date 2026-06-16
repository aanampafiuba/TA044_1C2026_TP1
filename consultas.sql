--Registrar un usuario (Santiago)
INSERT INTO usuarios(DNI, nombre, fecha_nacimiento, email, pais)
VALUES (40876543, 'Agustin Romero',
        '2000-09-14', 'agustin.romero@email.com',
        'Argentina');

--Registrar un torneo. (nazareno)
INSERT INTO torneos (nombre_torneo, pais, fecha_inicio, fecha_final) 
VALUES ('Torneo Clausura 2026', 'Argentina', '2026-08-01', '2026-12-15');

--Registrar un equipo. (jesus)

insert into equipos(nombre_equipo, pais, estadio) values
('River Plate', 'Argentina', 'Mas Monumental');

--Registrar un resultado de un partido (Sebastian):

update juega_un
set goles = 2
where id_partido = 1 and rol = 'local';

update juega_un
set goles = 1
where id_partido = 1 and rol = 'visitante';

-- Listar todos los usuarios de la aplicación. ( nazareno )
SELECT DNI, nombre, fecha_nacimiento, email, pais
FROM usuarios;

--Contabilizar la cantidad de usuarios, agrupados por pais (Sebastian):

select pais, count(*) as cantidad_usuarios_por_pais
from usuarios
group by pais
order by cantidad_usuarios_por_pais desc;

--Actualizar el nombre de un torneo (Santiago)
UPDATE torneos
SET nombre_torneo = 'Federal A'
WHERE nombre_torneo = 'Argentino A'

-- Eliminar un torneo de (Sebastian, igual esta la agarre para sumar alguna mas):

delete
from torneos
where nombre_torneo = 'Libertadores';

delete
from torneos
where nombre_torneo = 'Copa Argentina'