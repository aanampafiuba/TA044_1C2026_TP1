create table pronosticos_deportivos(nro_pronostico int not null ,
                                   pronostico_resultado varchar(32) check ( pronostico_resultado in ('Gana local', 'Gana visitante', 'Empate')),
                                   DNI int not null,
                                    primary key(nro_pronostico),
                                    foreign key (DNI) references usuarios(DNI));

CREATE TABLE juega_un (
    nombre_equipo VARCHAR(100),
    pais VARCHAR(50),
    id_partido INT,
    goles INT NOT NULL,
    rol VARCHAR(20) NOT NULL,
    CONSTRAINT pk_juega_un PRIMARY KEY (nombre_equipo, pais, id_partido),
    CONSTRAINT fk_juega_un_equipos FOREIGN KEY (nombre_equipo, pais) REFERENCES equipos(nombre_equipo, pais),
    CONSTRAINT fk_juega_un_partidos FOREIGN KEY (id_partido) REFERENCES partidos(id_partido),
    CONSTRAINT chk_juega_un_goles CHECK (goles >= 0), [cite: 39]
    CONSTRAINT chk_juega_un_rol CHECK (rol IN ('Local', 'Visitante'))
);