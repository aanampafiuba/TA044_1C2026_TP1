--INSERCIONES PARA TABLAS ENTIDADES

--Inseciones para tabla pronosticos_deportivos

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

--agregue 10 ejemplos basicos, igual el campo del DNI deberia tener sentido
--con los ejemplos de insercion de la tabla usuarios

-- Inserciones para la tabla: partidos

-- Partidos del Torneo de Primera A 2026
INSERT INTO partidos (id_partido, fecha, nombre_torneo) VALUES 
(1, '2026-05-10', 'Torneo de Primera A 2026'),
(2, '2026-05-17', 'Torneo de Primera A 2026'),
(3, '2026-05-24', 'Torneo de Primera A 2026');

-- Partidos de la Copa Libertadores 2026
INSERT INTO partidos (id_partido, fecha, nombre_torneo) VALUES 
(4, '2026-05-12', 'Copa Libertadores 2026'),
(5, '2026-05-14', 'Copa Libertadores 2026'),
(6, '2026-05-19', 'Copa Libertadores 2026');


-- Insercion de equipos

INSERT INTO equipos(nombre_equipo, pais, estadio)
VALUES ('Boca Juniors', 'Argentina', 'Alberto J. Armando'),
       ('River Plate', 'Argentina', 'Mas Monumental'),
       ('Independiente', 'Argentina', 'Estadio Libertadores de America - Ricardo Enrique Bochini'),
       ('Racing Club', 'Argentina', 'Estadio Presidente Peron'),
       ('San Lorenzo', 'Argentina', 'Estadio Pedro Bidegain'),
       ('Nacional', 'Uruguay', 'Estadio Gran Parque Central'),
       ('Nacional', 'Paraguay', 'Estadio Arsenio Erico'),
       ('Peñarol', 'Uruguay', 'Estadio Campeon del Siglo'),
       ('Colo-Colo', 'Chile', 'Estadio Monumental David Arellano'),
       ('Universidad de Chile', 'Chile', 'Estadio Nacional Julio Martinez Pradanos');




--INSERCIONES PARA TABLAS RELACIONES

-- Inserciones para la tabla: juega_un

-- Partidos del Torneo de Primera A 2026
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES 
('River Plate', 'Argentina', 1, 2, 'Local'),
('Boca Juniors', 'Argentina', 1, 1, 'Visitante');

INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES 
('Racing Club', 'Argentina', 2, 0, 'Local'),
('San Lorenzo', 'Argentina', 2, 0, 'Visitante');

INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES 
('Boca Juniors', 'Argentina', 3, 3, 'Local'),
('Racing Club', 'Argentina', 3, 2, 'Visitante');

-- Partidos de la Copa Libertadores 2026
INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES 
('River Plate', 'Argentina', 4, 1, 'Local'),
('Flamengo', 'Brasil', 4, 1, 'Visitante');

INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES 
('Palmeiras', 'Brasil', 5, 4, 'Local'),
('Peñarol', 'Uruguay', 5, 0, 'Visitante');

INSERT INTO juega_un (nombre_equipo, pais, id_partido, goles, rol) VALUES 
('Flamengo', 'Brasil', 6, 1, 'Local'),
('Palmeiras', 'Brasil', 6, 2, 'Visitante');


