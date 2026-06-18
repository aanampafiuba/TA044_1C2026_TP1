--INSERCIONES PARA TABLAS ENTIDADES

--inserciones para tabla: usuarios
insert into usuarios(DNI, nombre, apellido, fecha_nacimiento, email, pais) values
(45111222, 'Jose', 'Rios', '2004-05-05', 'jrios@gmail.com', 'Argentina'),
(32874165, 'Maria', 'Cruz', '1999-06-04', 'mgcruz1999@hotmail.com', 'Uruguay'),
(38999123, 'Carlos', 'Gómez', '1998-11-30', 'cgomez98@hotmail.com', 'Argentina'),
(45778111, 'Ana', 'Pereira', '2002-07-25', 'anapereira02@yahoo.com', 'Brasil'),
(37222456, 'Santiago', 'López', '2000-01-09', 'slopez2000@gmail.com', 'Paraguay'),
(46655987, 'Valentina', 'Torres', '2003-09-18', 'valetorres03@gmail.com', 'Uruguay'),
(35566789, 'Martín', 'Silva', '1997-02-22', 'msilva97@hotmail.com', 'Argentina'),
(47899112, 'Camila', 'Duarte', '2005-12-05', 'camidu05@gmail.com', 'Venezuela'),
(36211478, 'Javier', 'Morales', '1999-08-14', 'jmorales99@gmail.com', 'Perú');

INSERT INTO historial_ingresos (DNI) VALUES (45111222);

INSERT INTO historial_ingresos (DNI) VALUES
(32874165),
(38999123),
(45778111),
(37222456);

--otra forma de insertar:
INSERT INTO historial_ingresos (DNI, fecha_hora) VALUES
(45111222, '2026-06-10 09:30:00'),
(45111222, '2026-06-11 15:45:22'),
(45111222, '2026-06-12 21:00:05'),

(32874165, '2026-06-12 10:15:00'),
(32874165, '2026-06-14 18:20:40'),

(38999123, '2026-06-15 08:00:00'),
(38999123, '2026-06-15 20:30:15');



INSERT INTO torneos (nombre_torneo, pais, fecha_inicio, fecha_final) VALUES
('Torneo de Primera A 2026', 'Argentina', '2026-05-10', '2026-07-12'),
('Campeonato Brasileiro Serie A 2026', 'Brasil', '2026-05-10', '2026-06-14'),
('Campeonato Uruguayo 2026', 'Uruguay', '2026-05-09', '2026-05-30'),
('Primera Division de Chile 2026', 'Chile', '2026-05-10', '2026-05-31'),
('Primera Division de Paraguay 2026', 'Paraguay', '2026-05-09', '2026-05-30'),
('La Liga 2026', 'España', '2026-05-03', '2026-06-07');


-- Inserciones para la tabla: partidos
-- Se quita el id_partido porque ahora es GENERATED ALWAYS AS IDENTITY
-- Los ids se generarán del 1 al 34 en orden

-- Partidos del Torneo de Primera A 2026
INSERT INTO partidos (fecha, nombre_torneo) VALUES 
('2026-05-10', 'Torneo de Primera A 2026'),
('2026-05-17', 'Torneo de Primera A 2026'),
('2026-05-24', 'Torneo de Primera A 2026'),
('2026-05-31', 'Torneo de Primera A 2026'),
('2026-06-07', 'Torneo de Primera A 2026'),
('2026-06-14', 'Torneo de Primera A 2026'),
('2026-06-21', 'Torneo de Primera A 2026'),
('2026-06-28', 'Torneo de Primera A 2026'),
('2026-07-05', 'Torneo de Primera A 2026'),
('2026-07-12', 'Torneo de Primera A 2026');

-- Partidos de Brasileirao (Campeonato Brasileiro Serie A 2026)
INSERT INTO partidos (fecha, nombre_torneo) VALUES
('2026-05-10', 'Campeonato Brasileiro Serie A 2026'),
('2026-05-17', 'Campeonato Brasileiro Serie A 2026'),
('2026-05-24', 'Campeonato Brasileiro Serie A 2026'),
('2026-05-31', 'Campeonato Brasileiro Serie A 2026'),
('2026-06-07', 'Campeonato Brasileiro Serie A 2026'),
('2026-06-14', 'Campeonato Brasileiro Serie A 2026');

-- Torneo uruguayo (Campeonato Uruguayo 2026)
INSERT INTO partidos (fecha, nombre_torneo) VALUES
('2026-05-09', 'Campeonato Uruguayo 2026'),
('2026-05-16', 'Campeonato Uruguayo 2026'),
('2026-05-23', 'Campeonato Uruguayo 2026'),
('2026-05-30', 'Campeonato Uruguayo 2026');

-- Torneo chileno (Primera Division de Chile 2026)
INSERT INTO partidos (fecha, nombre_torneo) VALUES
('2026-05-10', 'Primera Division de Chile 2026'),
('2026-05-17', 'Primera Division de Chile 2026'),
('2026-05-24', 'Primera Division de Chile 2026'),
('2026-05-31', 'Primera Division de Chile 2026');

-- Torneo paraguayo (Primera Division de Paraguay 2026)
INSERT INTO partidos (fecha, nombre_torneo) VALUES
('2026-05-09', 'Primera Division de Paraguay 2026'),
('2026-05-16', 'Primera Division de Paraguay 2026'),
('2026-05-23', 'Primera Division de Paraguay 2026'),
('2026-05-30', 'Primera Division de Paraguay 2026');

-- Torneo español (La Liga 2026)
INSERT INTO partidos (fecha, nombre_torneo) VALUES
('2026-05-03', 'La Liga 2026'),
('2026-05-10', 'La Liga 2026'),
('2026-05-17', 'La Liga 2026'),
('2026-05-24', 'La Liga 2026'),
('2026-05-31', 'La Liga 2026'),
('2026-06-07', 'La Liga 2026');


-- Insercion de equipos

INSERT INTO equipos(nombre_equipo, pais, estadio)
VALUES ('Boca Juniors', 'Argentina', 'Alberto J. Armando'),
       ('River Plate', 'Argentina', 'Mas Monumental'),
       ('Independiente', 'Argentina', 'Estadio Libertadores de America - Ricardo Enrique Bochini'),
       ('Racing Club', 'Argentina', 'Estadio Presidente Peron'),
       ('San Lorenzo', 'Argentina', 'Estadio Pedro Bidegain'),
       ('Estudiantes de La Plata', 'Argentina', 'Estadio Jorge Luis Hirschi'),
       ('Gimnasia y Esgrima La Plata', 'Argentina', 'Estadio Juan Carmelo Zerillo'),
       ('Rosario Central', 'Argentina', 'Estadio Gigante de Arroyito'),
       ('Newells Old Boys', 'Argentina', 'Estadio Marcelo Bielsa'),
       ('Velez Sarsfield', 'Argentina', 'Estadio Jose Amalfitani'),

       ('Nacional', 'Uruguay', 'Estadio Gran Parque Central'),
       ('Peñarol', 'Uruguay', 'Estadio Campeon del Siglo'),
       ('Defensor Sporting', 'Uruguay', 'Estadio Luis Franzini'),
       ('Danubio', 'Uruguay', 'Estadio Maria Mincheff de Lazaroff'),

       ('Nacional', 'Paraguay', 'Estadio Arsenio Erico'),
       ('Olimpia', 'Paraguay', 'Estadio Osvaldo Dominguez Dibb'),
       ('Cerro Porteño', 'Paraguay', 'Estadio General Pablo Rojas'),
       ('Libertad', 'Paraguay', 'Estadio Tigo La Huerta'),

       ('Colo-Colo', 'Chile', 'Estadio Monumental David Arellano'),
       ('Universidad de Chile', 'Chile', 'Estadio Nacional Julio Martinez Pradanos'),
       ('Universidad Catolica', 'Chile', 'Estadio San Carlos de Apoquindo'),
       ('Cobreloa', 'Chile', 'Estadio Zorros del Desierto'),

       ('Flamengo', 'Brasil', 'Estadio Maracana'),
       ('Palmeiras', 'Brasil', 'Estadio Allianz Parque'),
       ('Sao Paulo', 'Brasil', 'Estadio MorumBIS'),
       ('Santos', 'Brasil', 'Estadio Urbano Caldeira'),
       ('Gremio', 'Brasil', 'Estadio Arena do Gremio'),
       ('Cruzeiro', 'Brasil', 'Estadio Mineirao'),

       ('Real Madrid', 'España', 'Estadio Santiago Bernabeu'),
       ('Barcelona', 'España', 'Estadio Spotify Camp Nou'),
       ('Atletico de Madrid', 'España', 'Estadio Civitas Metropolitano'),
       ('Sevilla', 'España', 'Estadio Ramon Sanchez-Pizjuan'),
       ('Real Betis', 'España', 'Estadio Benito Villamarin'),
       ('Athletic Club', 'España', 'Estadio San Mames');


--INSERCIONES PARA TABLAS RELACIONES

-- Inserciones para la tabla: juega_un

-- Partidos del Torneo de Primera A 2026
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
-- Partido 1: River vs Boca
('River Plate', 'Argentina', 1, 2, 'Local'),
('Boca Juniors', 'Argentina', 1, 1, 'Visitante');

-- Partido 2: Racing vs San lorenzo
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES 
('Racing Club', 'Argentina', 2, 0, 'Local'),
('San Lorenzo', 'Argentina', 2, 0, 'Visitante');

-- Partido 3: boca vs racing
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES 
('Boca Juniors', 'Argentina', 3, 3, 'Local'),
('Racing Club', 'Argentina', 3, 2, 'Visitante');

-- Partido 4: Independiente vs San Lorenzo
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Independiente', 'Argentina', 4, 1, 'Local'),
('San Lorenzo', 'Argentina', 4, 0, 'Visitante');

-- Partido 5: Racing Club vs River Plate
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Racing Club', 'Argentina', 5, 2, 'Local'),
('River Plate', 'Argentina', 5, 2, 'Visitante');

-- Partido 6: Estudiantes de La Plata vs Gimnasia y Esgrima La Plata
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Estudiantes de La Plata', 'Argentina', 6, 1, 'Local'),
('Gimnasia y Esgrima La Plata', 'Argentina', 6, 3, 'Visitante');

-- Partido 7: Rosario Central vs Newells Old Boys
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Rosario Central', 'Argentina', 7, 0, 'Local'),
('Newells Old Boys', 'Argentina', 7, 0, 'Visitante');

-- Partido 8: Racing vs Newells Old Boys
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Racing Club', 'Argentina', 8, 3, 'Local'),
('Newells Old Boys', 'Argentina', 8, 0, 'Visitante');

-- Partido 9: Velez vs River Plate
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Velez Sarsfield', 'Argentina', 9, 1, 'Local'),
('River Plate', 'Argentina', 9, 0, 'Visitante');

-- Partido 10: Independiente vs Racing Club
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Independiente', 'Argentina', 10, 0, 'Local'),
('Racing Club', 'Argentina', 10, 0, 'Visitante');

--Partidos de Brasileirao

-- Partido 11
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Flamengo', 'Brasil', 11, 3, 'Local'),
('Palmeiras', 'Brasil', 11, 2, 'Visitante');

-- Partido 12
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Sao Paulo', 'Brasil', 12, 1, 'Local'),
('Santos', 'Brasil', 12, 1, 'Visitante');

-- Partido 13
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Gremio', 'Brasil', 13, 2, 'Local'),
('Cruzeiro', 'Brasil', 13, 0, 'Visitante');

-- Partido 14
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Palmeiras', 'Brasil', 14, 0, 'Local'),
('Sao Paulo', 'Brasil', 14, 0, 'Visitante');

-- Partido 15
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Santos', 'Brasil', 15, 1, 'Local'),
('Flamengo', 'Brasil', 15, 2, 'Visitante');

-- Partido 16
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Cruzeiro', 'Brasil', 16, 2, 'Local'),
('Gremio', 'Brasil', 16, 1, 'Visitante');


--Partidos Campeonato Uruguayo

-- Partido 17
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Peñarol', 'Uruguay', 17, 2, 'Local'),
('Nacional', 'Uruguay', 17, 1, 'Visitante');

-- Partido 18
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Defensor Sporting', 'Uruguay', 18, 0, 'Local'),
('Danubio', 'Uruguay', 18, 2, 'Visitante');

-- Partido 19
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Nacional', 'Uruguay', 19, 3, 'Local'),
('Defensor Sporting', 'Uruguay', 19, 1, 'Visitante');

-- Partido 20
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Danubio', 'Uruguay', 20, 1, 'Local'),
('Peñarol', 'Uruguay', 20, 1, 'Visitante');


--Partidos de torneo Chileno

-- Partido 21
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Colo-Colo', 'Chile', 21, 1, 'Local'),
('Universidad de Chile', 'Chile', 21, 1, 'Visitante');

-- Partido 22
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Universidad Catolica', 'Chile', 22, 3, 'Local'),
('Cobreloa', 'Chile', 22, 0, 'Visitante');

-- Partido 23
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Universidad de Chile', 'Chile', 23, 2, 'Local'),
('Universidad Catolica', 'Chile', 23, 1, 'Visitante');

-- Partido 24
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Cobreloa', 'Chile', 24, 0, 'Local'),
('Colo-Colo', 'Chile', 24, 2, 'Visitante');

--Partidos de torneo Paraguayo

-- Partido 25
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Olimpia', 'Paraguay', 25, 1, 'Local'),
('Cerro Porteño', 'Paraguay', 25, 0, 'Visitante');

-- Partido 26
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Libertad', 'Paraguay', 26, 2, 'Local'),
('Nacional', 'Paraguay', 26, 2, 'Visitante');

-- Partido 27
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Cerro Porteño', 'Paraguay', 27, 1, 'Local'),
('Libertad', 'Paraguay', 27, 3, 'Visitante');

-- Partido 28
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Nacional', 'Paraguay', 28, 0, 'Local'),
('Olimpia', 'Paraguay', 28, 0, 'Visitante');


--Partidos de Liga Española

-- Partido 29
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Real Madrid', 'España', 29, 3, 'Local'),
('Barcelona', 'España', 29, 2, 'Visitante');

-- Partido 30
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Atletico de Madrid', 'España', 30, 1, 'Local'),
('Sevilla', 'España', 30, 0, 'Visitante');

-- Partido 31
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Real Betis', 'España', 31, 2, 'Local'),
('Athletic Club', 'España', 31, 1, 'Visitante');

-- Partido 32
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Barcelona', 'España', 32, 4, 'Local'),
('Atletico de Madrid', 'España', 32, 2, 'Visitante');

-- Partido 33
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Sevilla', 'España', 33, 1, 'Local'),
('Real Betis', 'España', 33, 1, 'Visitante');

-- Partido 34
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Athletic Club', 'España', 34, 2, 'Local'),
('Real Madrid', 'España', 34, 0, 'Visitante');


-- INSERCIONES pronosticos_partidos

WITH pronostico_del_usuario AS (
  INSERT INTO pronosticos_deportivos (dni)
  VALUES (45111222)
  RETURNING id_pronostico
)
INSERT INTO pronosticos_partidos (id_pronostico, id_partido, pronostico_resultado)
SELECT id_pronostico, datos.id_partido, datos.pronostico_resultado
FROM pronostico_del_usuario
JOIN (
  VALUES
    (29, 'Gana local'),
    (30, 'Empate'),
    (31, 'Gana visitante'),
    (32, 'Gana local'),
    (33, 'Empate'),
    (34, 'Gana visitante')
) AS datos(id_partido, pronostico_resultado)
ON TRUE;


WITH pronostico_del_usuario AS (
  INSERT INTO pronosticos_deportivos (dni)
  VALUES (32874165)
  RETURNING id_pronostico
)
INSERT INTO pronosticos_partidos (id_pronostico, id_partido, pronostico_resultado)
SELECT id_pronostico, datos.id_partido, datos.pronostico_resultado
FROM pronostico_del_usuario
JOIN (
  VALUES
    (29, 'Gana visitante'),
    (30, 'Gana local'),
    (31, 'Empate'),
    (32, 'Gana visitante'),
    (33, 'Gana local'),
    (34, 'Empate')
) AS datos(id_partido, pronostico_resultado)
ON TRUE;


WITH pronostico_del_usuario AS (
  INSERT INTO pronosticos_deportivos (dni)
  VALUES (38999123)
  RETURNING id_pronostico
)
INSERT INTO pronosticos_partidos (id_pronostico, id_partido, pronostico_resultado)
SELECT id_pronostico, datos.id_partido, datos.pronostico_resultado
FROM pronostico_del_usuario
JOIN (
  VALUES
    (29, 'Empate'),
    (30, 'Gana visitante'),
    (31, 'Gana local'),
    (32, 'Empate'),
    (33, 'Gana visitante'),
    (34, 'Gana local')
) AS datos(id_partido, pronostico_resultado)
ON TRUE;



WITH pronostico_del_usuario AS (
  INSERT INTO pronosticos_deportivos (dni)
  VALUES (45778111)
  RETURNING id_pronostico
)
INSERT INTO pronosticos_partidos (id_pronostico, id_partido, pronostico_resultado)
SELECT id_pronostico, datos.id_partido, datos.pronostico_resultado
FROM pronostico_del_usuario
JOIN (
  VALUES
    (17, 'Gana local'),
    (18, 'Empate'),
    (19, 'Gana visitante'),
    (20, 'Gana local')
) AS datos(id_partido, pronostico_resultado)
ON TRUE;


WITH pronostico_del_usuario AS (
  INSERT INTO pronosticos_deportivos (dni)
  VALUES (37222456)
  RETURNING id_pronostico
)
INSERT INTO pronosticos_partidos (id_pronostico, id_partido, pronostico_resultado)
SELECT id_pronostico, datos.id_partido, datos.pronostico_resultado
FROM pronostico_del_usuario
JOIN (
  VALUES
    (17, 'Empate'),
    (18, 'Gana visitante'),
    (19, 'Gana local'),
    (20, 'Empate')
) AS datos(id_partido, pronostico_resultado)
ON TRUE;


WITH pronostico_del_usuario AS (
  INSERT INTO pronosticos_deportivos (dni)
  VALUES (46655987)
  RETURNING id_pronostico
)
INSERT INTO pronosticos_partidos (id_pronostico, id_partido, pronostico_resultado)
SELECT id_pronostico, datos.id_partido, datos.pronostico_resultado
FROM pronostico_del_usuario
JOIN (
  VALUES
    (17, 'Gana visitante'),
    (18, 'Gana local'),
    (19, 'Empate'),
    (20, 'Gana visitante')
) AS datos(id_partido, pronostico_resultado)
ON TRUE;



WITH pronostico_del_usuario AS (
  INSERT INTO pronosticos_deportivos (dni)
  VALUES (35566789)
  RETURNING id_pronostico
)
INSERT INTO pronosticos_partidos (id_pronostico, id_partido, pronostico_resultado)
SELECT id_pronostico, datos.id_partido, datos.pronostico_resultado
FROM pronostico_del_usuario
JOIN (
  VALUES
    (25, 'Gana local'),
    (26, 'Gana visitante'),
    (27, 'Empate'),
    (28, 'Gana local')
) AS datos(id_partido, pronostico_resultado)
ON TRUE;


WITH pronostico_del_usuario AS (
  INSERT INTO pronosticos_deportivos (dni)
  VALUES (47899112)
  RETURNING id_pronostico
)
INSERT INTO pronosticos_partidos (id_pronostico, id_partido, pronostico_resultado)
SELECT id_pronostico, datos.id_partido, datos.pronostico_resultado
FROM pronostico_del_usuario
JOIN (
  VALUES
    (25, 'Empate'),
    (26, 'Gana local'),
    (27, 'Gana visitante'),
    (28, 'Empate')
) AS datos(id_partido, pronostico_resultado)
ON TRUE;


WITH pronostico_del_usuario AS (
  INSERT INTO pronosticos_deportivos (dni)
  VALUES (36211478)
  RETURNING id_pronostico
)
INSERT INTO pronosticos_partidos (id_pronostico, id_partido, pronostico_resultado)
SELECT id_pronostico, datos.id_partido, datos.pronostico_resultado
FROM pronostico_del_usuario
JOIN (
  VALUES
    (25, 'Gana visitante'),
    (26, 'Empate'),
    (27, 'Gana local'),
    (28, 'Gana visitante')
) AS datos(id_partido, pronostico_resultado)
ON TRUE;

WITH pronostico_del_usuario AS (
  INSERT INTO pronosticos_deportivos (dni)
  VALUES (45111222)
  RETURNING id_pronostico
)
INSERT INTO pronosticos_partidos (id_pronostico, id_partido, pronostico_resultado)
SELECT id_pronostico, datos.id_partido, datos.pronostico_resultado
FROM pronostico_del_usuario
JOIN (
  VALUES
    (1, 'Gana visitante'),
    (2, 'Gana local'),
    (3, 'Empate'),
    (4, 'Gana visitante'),
    (5, 'Gana local'),
    (6, 'Empate'),
    (7, 'Gana visitante'),
    (8, 'Gana local'),
    (9, 'Empate'),
    (10, 'Gana visitante')
) AS datos(id_partido, pronostico_resultado)
ON TRUE;


WITH pronostico_del_usuario AS (
  INSERT INTO pronosticos_deportivos (dni)
  VALUES (32874165)
  RETURNING id_pronostico
)
INSERT INTO pronosticos_partidos (id_pronostico, id_partido, pronostico_resultado)
SELECT id_pronostico, datos.id_partido, datos.pronostico_resultado
FROM pronostico_del_usuario
JOIN (
  VALUES
    (1, 'Empate'),
    (2, 'Gana visitante'),
    (3, 'Gana local'),
    (4, 'Empate'),
    (5, 'Gana visitante'),
    (6, 'Gana local'),
    (7, 'Empate'),
    (8, 'Gana visitante'),
    (9, 'Gana local'),
    (10, 'Empate')
) AS datos(id_partido, pronostico_resultado)
ON TRUE;



WITH pronostico_del_usuario AS (
  INSERT INTO pronosticos_deportivos (dni)
  VALUES (38999123)
  RETURNING id_pronostico
)
INSERT INTO pronosticos_partidos (id_pronostico, id_partido, pronostico_resultado)
SELECT id_pronostico, datos.id_partido, datos.pronostico_resultado
FROM pronostico_del_usuario
JOIN (
  VALUES
    (11, 'Gana local'),
    (12, 'Empate'),
    (13, 'Gana visitante'),
    (14, 'Gana local'),
    (15, 'Empate'),
    (16, 'Gana visitante')
) AS datos(id_partido, pronostico_resultado)
ON TRUE;


WITH pronostico_del_usuario AS (
  INSERT INTO pronosticos_deportivos (dni)
  VALUES (45778111)
  RETURNING id_pronostico
)
INSERT INTO pronosticos_partidos (id_pronostico, id_partido, pronostico_resultado)
SELECT id_pronostico, datos.id_partido, datos.pronostico_resultado
FROM pronostico_del_usuario
JOIN (
  VALUES
    (11, 'Gana visitante'),
    (12, 'Gana local'),
    (13, 'Empate'),
    (14, 'Gana visitante'),
    (15, 'Gana local'),
    (16, 'Empate')
) AS datos(id_partido, pronostico_resultado)
ON TRUE;


WITH pronostico_del_usuario AS (
  INSERT INTO pronosticos_deportivos (dni)
  VALUES (37222456)
  RETURNING id_pronostico
)
INSERT INTO pronosticos_partidos (id_pronostico, id_partido, pronostico_resultado)
SELECT id_pronostico, datos.id_partido, datos.pronostico_resultado
FROM pronostico_del_usuario
JOIN (
  VALUES
    (11, 'Empate'),
    (12, 'Gana visitante'),
    (13, 'Gana local'),
    (14, 'Empate'),
    (15, 'Gana visitante'),
    (16, 'Gana local')
) AS datos(id_partido, pronostico_resultado)
ON TRUE;



WITH pronostico_del_usuario AS (
  INSERT INTO pronosticos_deportivos (dni)
  VALUES (46655987)
  RETURNING id_pronostico
)
INSERT INTO pronosticos_partidos (id_pronostico, id_partido, pronostico_resultado)
SELECT id_pronostico, datos.id_partido, datos.pronostico_resultado
FROM pronostico_del_usuario
JOIN (
  VALUES
    (21, 'Gana local'),
    (22, 'Empate'),
    (23, 'Gana visitante'),
    (24, 'Gana local')
) AS datos(id_partido, pronostico_resultado)
ON TRUE;


WITH pronostico_del_usuario AS (
  INSERT INTO pronosticos_deportivos (dni)
  VALUES (35566789)
  RETURNING id_pronostico
)
INSERT INTO pronosticos_partidos (id_pronostico, id_partido, pronostico_resultado)
SELECT id_pronostico, datos.id_partido, datos.pronostico_resultado
FROM pronostico_del_usuario
JOIN (
  VALUES
    (21, 'Empate'),
    (22, 'Gana visitante'),
    (23, 'Gana local'),
    (24, 'Empate')
) AS datos(id_partido, pronostico_resultado)
ON TRUE;


WITH pronostico_del_usuario AS (
  INSERT INTO pronosticos_deportivos (dni)
  VALUES (47899112)
  RETURNING id_pronostico
)
INSERT INTO pronosticos_partidos (id_pronostico, id_partido, pronostico_resultado)
SELECT id_pronostico, datos.id_partido, datos.pronostico_resultado
FROM pronostico_del_usuario
JOIN (
  VALUES
    (21, 'Gana visitante'),
    (22, 'Gana local'),
    (23, 'Empate'),
    (24, 'Gana visitante')
) AS datos(id_partido, pronostico_resultado)
ON TRUE;

