--Registrar un torneo.
INSERT INTO torneos (nombre_torneo, pais, fecha_inicio, fecha_final)
VALUES ('Torneo Clausura 2026', 'Argentina', '2026-08-01', '2026-12-15');

--Registrar un equipo

INSERT INTO equipos(nombre_equipo, pais, estadio) VALUES
('River Plate', 'Argentina', 'Más Monumental');

-- Registrar un pronostico deportivo
WITH pronostico_del_usuario AS
(
    INSERT INTO pronosticos_deportivos (dni)
    VALUES (81333442)
    RETURNING id_pronostico
)
INSERT INTO pronosticos_partidos(id_pronostico, id_partido,pronostico_resultado)
SELECT id_pronostico, datos.id_partido, datos.pronostico_resultado
FROM pronostico_del_usuario
JOIN (VALUES
    (17,'Empate')
    ,(18,'Gana visitante')
    ,(19, 'Gana local')
    ,(20, 'Empate')
    ) AS datos(id_partido, pronostico_resultado) ON TRUE;


--Registrar un resultado de un partido
   -- Asumiendo que los equipos existen en la tabla Equipos
   -- Y que fue asignada la fecha del partido
INSERT INTO juega_un(nombre_equipo, pais, id_partido, goles, rol)
VALUES ('Velez Sarsfield','Argentina','9','1','Local');

INSERT INTO juega_un(nombre_equipo,pais,id_partido,goles,rol)
VALUES ('River Plate','Argentina','9','0','Visitante');


-- Listar todos los usuarios de la aplicación
SELECT DNI, nombre, apellido, fecha_nacimiento, email, pais
FROM usuarios;

--  Listar los resultados de todos los partidos del torneo

SELECT nombre_torneo, id_partido, resultado_real
FROM resultados_partidos
WHERE nombre_torneo = 'Torneo de Primera A 2026';

-- Listar los aciertos por usuario
SELECT u.dni, u.email, pp.pronostico_resultado as pronostico_usuario, rp.resultado_real as resultado_Real
FROM usuarios u
JOIN pronosticos_deportivos pd ON u.dni = pd.dni
JOIN pronosticos_partidos pp ON pp.id_pronostico = pd.id_pronostico
JOIN resultados_partidos rp on rp.id_partido = pp.id_partido
WHERE rp.resultado_real = pp.pronostico_resultado;

--Contabilizar la cantidad de usuarios, agrupados por pais
select pais, count(*) as cantidad_usuarios_por_pais
from usuarios
group by pais
order by cantidad_usuarios_por_pais desc;

-- Actualizar el nombre de un torneo
UPDATE torneos
SET nombre_torneo = 'Brasileiro 2026'
WHERE nombre_torneo = 'Campeonato Brasileiro Serie A 2026';

-- Eliminar un torneo
delete
from torneos
where nombre_torneo = 'Copa Argentina';


--Desregistrar a un usuario de la aplicación
INSERT INTO usuarios(DNI, nombre, apellido, fecha_nacimiento, email, pais)
VALUES (75888999, 'Don', 'Ramon', '1924-07-02', 'donramon@gmail.com', 'Argentina');

DELETE
FROM usuarios
WHERE DNI = 75888999;


-- Mostrar los torneos más populares basandose
-- en la cantidad de usuarios
-- pronosticadores que posee dicho torneo.

select p.nombre_torneo, count(pd.dni) AS pronosticos_realizados
from pronosticos_partidos pp
join pronosticos_deportivos pd on pp.id_pronostico = pd.id_pronostico
join partidos p on p.id_partido = pp.id_partido
join usuarios u on u.dni = pd.dni
group by nombre_torneo
order by count(pd.dni) desc;



