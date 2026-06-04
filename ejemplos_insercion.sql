--INSERCIONES PARA TABLAS ENTIDADES
--inserciones para tabla: usuarios
insert into usuarios(DNI, nombre, fecha_nacimiento, email, pais) values
(45111222, 'Jose Rios', '2004-05-05', 'jrios@gmail.com', 'Argentina'),
(32874165, 'Maria Cruz', '1999-06-04', 'mgcruz1999@hotmail.com', 'Uruguay'),
(38999123, 'Carlos Gómez', '1998-11-30', 'cgomez98@hotmail.com', 'Argentina'),
(45778111, 'Ana Pereira', '2002-07-25', 'anapereira02@yahoo.com', 'Brasil'),
(37222456, 'Santiago López', '2000-01-09', 'slopez2000@gmail.com', 'Paraguay'),
(46655987, 'Valentina Torres', '2003-09-18', 'valetorres03@gmail.com', 'Uruguay'),
(35566789, 'Martín Silva', '1997-02-22', 'msilva97@hotmail.com', 'Argentina'),
(47899112, 'Camila Duarte', '2005-12-05', 'camidu05@gmail.com', 'Venezuela'),
(36211478, 'Javier Morales', '1999-08-14', 'jmorales99@gmail.com', 'Perú');

--Inseciones para tabla: pronosticos_deportivos
--necesito modificar igual esto para cuando esten los ejemplos de insercion de usuarios
insert into pronosticos_deportivos(nro_pronostico, pronostico_resultado, DNI) values
('1','Gana local', '45111222'),
('2','Gana local', '45111333'),
('3','Empate', '45111444'),
('4','Gana visitante', '45111555'),
('5','Gana local', '45111666'),
('6','Empate', '45111777'),
('7','Gana visitante', '45111888'),
('8','Gana local', '45111999'),
('9','Gana visitante', '45222111'),
('10','Empate', '45222333');


-- Inserciones para la tabla: partidos

-- Partidos del Torneo de Primera A 2026
INSERT INTO partidos (id_partido, fecha, nombre_torneo) VALUES 
(1, '2026-05-10', 'Torneo de Primera A 2026'),
(2, '2026-05-17', 'Torneo de Primera A 2026'),
(3, '2026-05-24', 'Torneo de Primera A 2026'),
(4, '2026-05-31', 'Torneo de Primera A 2026'),
(5, '2026-06-07', 'Torneo de Primera A 2026'),
(6, '2026-06-14', 'Torneo de Primera A 2026'),
(7, '2026-06-21', 'Torneo de Primera A 2026'),
(8, '2026-06-28', 'Torneo de Primera A 2026'),
(9, '2026-07-05', 'Torneo de Primera A 2026'),
(10, '2026-07-12', 'Torneo de Primera A 2026');

-- Partidos de la Copa Libertadores 2026
INSERT INTO partidos (id_partido, fecha, nombre_torneo) VALUES 
(11, '2026-05-12', 'Copa Libertadores 2026'),
(12, '2026-05-14', 'Copa Libertadores 2026'),
(13, '2026-05-19', 'Copa Libertadores 2026'),
(14, '2026-05-21', 'Copa Libertadores 2026'),
(15, '2026-05-26', 'Copa Libertadores 2026'),
(16, '2026-05-28', 'Copa Libertadores 2026'),
(17, '2026-06-02', 'Copa Libertadores 2026'),
(18, '2026-06-04', 'Copa Libertadores 2026'),
(19, '2026-06-09', 'Copa Libertadores 2026'),
(20, '2026-06-11', 'Copa Libertadores 2026');

-- Partidos de Brasileirao (Campeonato Brasileiro Serie A 2026)
INSERT INTO partidos (id_partido, fecha, nombre_torneo) VALUES
(21, '2026-05-10', 'Campeonato Brasileiro Serie A 2026'),
(22, '2026-05-17', 'Campeonato Brasileiro Serie A 2026'),
(23, '2026-05-24', 'Campeonato Brasileiro Serie A 2026'),
(24, '2026-05-31', 'Campeonato Brasileiro Serie A 2026'),
(25, '2026-06-07', 'Campeonato Brasileiro Serie A 2026'),
(26, '2026-06-14', 'Campeonato Brasileiro Serie A 2026');

-- Torneo uruguayo (Campeonato Uruguayo 2026)
INSERT INTO partidos (id_partido, fecha, nombre_torneo) VALUES
(27, '2026-05-09', 'Campeonato Uruguayo 2026'),
(28, '2026-05-16', 'Campeonato Uruguayo 2026'),
(29, '2026-05-23', 'Campeonato Uruguayo 2026'),
(30, '2026-05-30', 'Campeonato Uruguayo 2026');

-- Torneo chileno (Primera Division de Chile 2026)
INSERT INTO partidos (id_partido, fecha, nombre_torneo) VALUES
(31, '2026-05-10', 'Primera Division de Chile 2026'),
(32, '2026-05-17', 'Primera Division de Chile 2026'),
(33, '2026-05-24', 'Primera Division de Chile 2026'),
(34, '2026-05-31', 'Primera Division de Chile 2026');

-- Torneo paraguayo (Primera Division de Paraguay 2026)
INSERT INTO partidos (id_partido, fecha, nombre_torneo) VALUES
(35, '2026-05-09', 'Primera Division de Paraguay 2026'),
(36, '2026-05-16', 'Primera Division de Paraguay 2026'),
(37, '2026-05-23', 'Primera Division de Paraguay 2026'),
(38, '2026-05-30', 'Primera Division de Paraguay 2026');

-- Torneo español (La Liga 2026)
INSERT INTO partidos (id_partido, fecha, nombre_torneo) VALUES
(39, '2026-05-03', 'La Liga 2026'),
(40, '2026-05-10', 'La Liga 2026'),
(41, '2026-05-17', 'La Liga 2026'),
(42, '2026-05-24', 'La Liga 2026'),
(43, '2026-05-31', 'La Liga 2026'),
(44, '2026-06-07', 'La Liga 2026');


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


-- Partidos de la Copa Libertadores 2026

--Partido 11
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('River Plate', 'Argentina', 11, 1, 'Local'),
('Flamengo', 'Brasil', 11, 1, 'Visitante');

--Partido 12
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES 
('Palmeiras', 'Brasil', 12, 4, 'Local'),
('Peñarol', 'Uruguay', 12, 0, 'Visitante');

--Partido 13
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES 
('Flamengo', 'Brasil', 13, 1, 'Local'),
('Palmeiras', 'Brasil', 13, 2, 'Visitante');

-- Partido 14
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Nacional', 'Uruguay', 14, 1, 'Local'),
('Boca Juniors', 'Argentina', 14, 2, 'Visitante');

-- Partido 15
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Olimpia', 'Paraguay', 15, 2, 'Local'),
('Cruzeiro', 'Brasil', 15, 1, 'Visitante');

-- Partido 16
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Colo-Colo', 'Chile', 16, 0, 'Local'),
('Sao Paulo', 'Brasil', 16, 2, 'Visitante');

-- Partido 17
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Peñarol', 'Uruguay', 17, 1, 'Local'),
('Independiente', 'Argentina', 17, 1, 'Visitante');

-- Partido 18
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Cerro Porteño', 'Paraguay', 18, 0, 'Local'),
('River Plate', 'Argentina', 18, 2, 'Visitante');

-- Partido 19
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Universidad de Chile', 'Chile', 19, 2, 'Local'),
('Santos', 'Brasil', 19, 1, 'Visitante');

-- Partido 20
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Libertad', 'Paraguay', 20, 1, 'Local'),
('Gremio', 'Brasil', 20, 3, 'Visitante');


--Partidos de Brasileirao

-- Partido 21
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Flamengo', 'Brasil', 21, 3, 'Local'),
('Palmeiras', 'Brasil', 21, 2, 'Visitante');

-- Partido 22
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Sao Paulo', 'Brasil', 22, 1, 'Local'),
('Santos', 'Brasil', 22, 1, 'Visitante');

-- Partido 23
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Gremio', 'Brasil', 23, 2, 'Local'),
('Cruzeiro', 'Brasil', 23, 0, 'Visitante');

-- Partido 24
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Palmeiras', 'Brasil', 24, 0, 'Local'),
('Sao Paulo', 'Brasil', 24, 0, 'Visitante');

-- Partido 25
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Santos', 'Brasil', 25, 1, 'Local'),
('Flamengo', 'Brasil', 25, 2, 'Visitante');

-- Partido 26
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Cruzeiro', 'Brasil', 26, 2, 'Local'),
('Gremio', 'Brasil', 26, 1, 'Visitante');


--Partidos Campeonato Uruguayo

-- Partido 27
INSERT INTO juega_un (nombre_equipo, pais, id_partido,打goles, rol) VALUES
('Peñarol', 'Uruguay', 27, 2, 'Local'),
('Nacional', 'Uruguay', 27, 1, 'Visitante');

-- Partido 28
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Defensor Sporting', 'Uruguay', 28, 0, 'Local'),
('Danubio', 'Uruguay', 28, 2, 'Visitante');

-- Partido 29
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Nacional', 'Uruguay', 29, 3, 'Local'),
('Defensor Sporting', 'Uruguay', 29, 1, 'Visitante');

-- Partido 30
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Danubio', 'Uruguay', 30, 1, 'Local'),
('Peñarol', 'Uruguay', 30, 1, 'Visitante');


--Partidos de torneo Chileno

-- Partido 31
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Colo-Colo', 'Chile', 31, 1, 'Local'),
('Universidad de Chile', 'Chile', 31, 1, 'Visitante');

-- Partido 32
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Universidad Catolica', 'Chile', 32, 3, 'Local'),
('Cobreloa', 'Chile', 32, 0, 'Visitante');

-- Partido 33
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Universidad de Chile', 'Chile', 33, 2, 'Local'),
('Universidad Catolica', 'Chile', 33, 1, 'Visitante');

-- Partido 34
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Cobreloa', 'Chile', 34, 0, 'Local'),
('Colo-Colo', 'Chile', 34, 2, 'Visitante');

--Partidos de torneo Paraguayo

-- Partido 35
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Olimpia', 'Paraguay', 35, 1, 'Local'),
('Cerro Porteño', 'Paraguay', 35, 0, 'Visitante');

-- Partido 36
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Libertad', 'Paraguay', 36, 2, 'Local'),
('Nacional', 'Paraguay', 36, 2, 'Visitante');

-- Partido 37
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Cerro Porteño', 'Paraguay', 37, 1, 'Local'),
('Libertad', 'Paraguay', 37, 3, 'Visitante');

-- Partido 38
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Nacional', 'Paraguay', 38, 0, 'Local'),
('Olimpia', 'Paraguay', 38, 0, 'Visitante');


--Partidos de Liga Española

-- Partido 39
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Real Madrid', 'España', 39, 3, 'Local'),
('Barcelona', 'España', 39, 2, 'Visitante');

-- Partido 40
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Atletico de Madrid', 'España', 40, 1, 'Local'),
('Sevilla', 'España', 40, 0, 'Visitante');

-- Partido 41
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Real Betis', 'España', 41, 2, 'Local'),
('Athletic Club', 'España', 41, 1, 'Visitante');

-- Partido 42
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Barcelona', 'España', 42, 4, 'Local'),
('Atletico de Madrid', 'España', 42, 2, 'Visitante');

-- Partido 43
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Sevilla', 'España', 43, 1, 'Local'),
('Real Betis', 'España', 43, 1, 'Visitante');

-- Partido 44
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES
('Athletic Club', 'España', 44, 2, 'Local'),
('Real Madrid', 'España', 44, 0, 'Visitante');


-- INSERCIONES pronosticos_partidos

INSERT INTO pronosticos_partidos(nro_pronostico, id_partido) VALUES
(1, 1),   -- Pronóstico 1 asociado al Partido 1 (Torneo Primera A)
(2, 2),   -- Pronóstico 2 asociado al Partido 2 (Torneo Primera A)
(3, 3),   -- Pronóstico 3 asociado al Partido 3 (Torneo Primera A)
(4, 7),   -- Pronóstico 4 asociado al Partido 7 (Torneo Primera A)
(5, 11),  -- Pronóstico 5 asociado al Partido 11 (Copa Libertadores)
(6, 12),  -- Pronóstico 6 asociado al Partido 12 (Copa Libertadores)
(7, 13),  -- Pronóstico 7 asociado al Partido 13 (Copa Libertadores)
(8, 14),  -- Pronóstico 8 asociado al Partido 14 (Copa Libertadores)
(9, 21),  -- Pronóstico 9 asociado al Partido 21 (Brasileirao)
(10, 22), -- Pronóstico 10 asociado al Partido 22 (Brasileirao)
(11, 23), -- Pronóstico 11 asociado al Partido 23 (Brasileirao)
(12, 27), -- Pronóstico 12 asociado al Partido 27 (Torneo Uruguayo)
(13, 28), -- Pronóstico 13 asociado al Partido 28 (Torneo Uruguayo)
(14, 31), -- Pronóstico 14 asociado al Partido 31 (Torneo Chileno)
(15, 32), -- Pronóstico 15 asociado al Partido 32 (Torneo Chileno)
(16, 35), -- Pronóstico 16 asociado al Partido 35 (Torneo Paraguayo)
(17, 36), -- Pronóstico 17 asociado al Partido 36 (Torneo Paraguayo)
(18, 39), -- Pronóstico 18 asociado al Partido 39 (La Liga)
(19, 40), -- Pronóstico 19 asociado al Partido 40 (La Liga)
(20, 42); -- Pronóstico 20 asociado al Partido 42 (La Liga)

