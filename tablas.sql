--Tablas de Entidades--
create table usuarios(
    DNI int,
    nombre varchar(32) not null,
    fecha_nacimiento date,
    email varchar(100) not null unique,
    pais varchar(32) not null,
    primary key (DNI)
);

create table pronosticos_deportivos(
  nro_pronostico int not null ,
  pronostico_resultado varchar(32) check ( pronostico_resultado in ('Gana local', 'Gana visitante', 'Empate')),
  DNI int not null,
  primary key(nro_pronostico),
  foreign key (DNI) references usuarios(DNI) on delete cascade on delete update
);

CREATE TABLE torneos(
    nombre_torneo VARCHAR(100) NOT NULL
    ,pais VARCHAR(100) NOT NULL
    ,fecha_inicio DATE NOT NULL
    ,fecha_final DATE NOT NULL
    ,PRIMARY KEY(nombre_torneo)
);

CREATE TABLE partidos (
    id_partido INT,
    fecha DATE NOT NULL,
    nombre_torneo VARCHAR(100) NOT NULL,
    CONSTRAINT pk_partidos PRIMARY KEY (id_partido),
    CONSTRAINT fk_partidos_torneos FOREIGN KEY (nombre_torneo) REFERENCES torneos(nombre_torneo) on delete cascade
);


CREATE TABLE equipos(
    nombre_equipo VARCHAR(100) NOT NULL,
    pais VARCHAR(50) NOT NULL,
    estadio VARCHAR(100) NOT NULL UNIQUE,
    PRIMARY KEY (nombre_equipo, pais)
);


--Tablas de relaciones--

CREATE TABLE juega_un (
    nombre_equipo VARCHAR(100) NOT NULL,
    pais VARCHAR(50) NOT NULL,
    id_partido INT,
    goles INT NOT NULL,
    rol VARCHAR(20) NOT NULL,
    CONSTRAINT pk_juega_un PRIMARY KEY (nombre_equipo, pais, id_partido),
    CONSTRAINT fk_juega_un_equipos FOREIGN KEY (nombre_equipo, pais) REFERENCES equipos(nombre_equipo, pais) on delete cascade ,
    CONSTRAINT fk_juega_un_partidos FOREIGN KEY (id_partido) REFERENCES partidos(id_partido) on delete cascade ,
    CONSTRAINT chk_juega_un_goles CHECK (goles >= 0),
    CONSTRAINT chk_juega_un_rol CHECK (rol IN ('Local', 'Visitante'))
);

create table pronosticos_partidos(
    nro_pronostico int not null,
    id_partido int not null,
    primary key (nro_pronostico,id_partido),
    foreign key (nro_pronostico) references pronosticos_deportivos(nro_pronostico) on delete cascade,
    foreign key (id_partido) references partidos(id_partido) on delete cascade
);