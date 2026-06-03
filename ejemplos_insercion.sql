--Inseciones para tabla pronosticos_deportivos

insert into pronosticos_deportivos
values ('1','Gana local', '45111222'),
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