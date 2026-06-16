
--Registrar un torneo. (nazareno)
INSERT INTO torneos (nombre_torneo, pais, fecha_inicio, fecha_final) 
VALUES ('Torneo Clausura 2026', 'Argentina', '2026-08-01', '2026-12-15');

-- Listar todos los usuarios de la aplicación. ( nazareno )
SELECT DNI, nombre, fecha_nacimiento, email, pais
FROM usuarios;

--Registrar un resultado de un partido (Sebastian):
UPDATE juega_un
SET goles = 2
WHERE id_partido = 1 AND rol = 'Local';

UPDATE juega_un
SET goles = 1
WHERE id_partido = 1 AND rol = 'Visitante';

--Contabilizar la cantidad de usuarios, agrupados por pais (Sebastian):
select pais, count(*) as cantidad_usuarios_por_pais
from usuarios
group by pais
order by cantidad_usuarios_por_pais desc;

-- Eliminar un torneo de (Sebastian):
delete
from torneos
where nombre_torneo = 'Copa Argentina';


--Desregistrar a un usuario de la aplicación (dar un ejemplo). (Sebastian)
INSERT INTO usuarios(DNI, nombre, fecha_nacimiento, email, pais)
VALUES (75888999, 'Don Ramon', '1924-07-02', 'donramon@gmail.com', 'Argentina');

DELETE
FROM usuarios
WHERE DNI = 75888999;


