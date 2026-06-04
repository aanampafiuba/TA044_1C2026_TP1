create table pronosticos_deportivos(nro_pronostico int not null ,
                                   pronostico_resultado varchar(32) check ( pronostico_resultado in ('Gana local', 'Gana visitante', 'Empate')),
                                   DNI int not null,
                                    primary key(nro_pronostico),
                                    foreign key (DNI) references usuarios(DNI));

CREATE TABLE partidos (
    id_partido INT,
    fecha DATE NOT NULL,
    nombre_torneo VARCHAR(100) NOT NULL,
    CONSTRAINT pk_partidos PRIMARY KEY (id_partido),
    CONSTRAINT fk_partidos_torneos FOREIGN KEY (nombre_torneo) REFERENCES torneos(nombre_torneo)
);

CREATE TABLE equipos(nombre_equipo VARCHAR(100),
                     pais VARCHAR(50),
                     estadio VARCHAR(100),
                     PRIMARY KEY (nombre_equipo, pais)
                    );
