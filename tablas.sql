-- Restricciones en DOMAIN

create domain pais_valido as varchar(50)
    check (value in ('Argentina', 'Brasil', 'Chile', 'Uruguay', 'Paraguay'));

create domain dni_valido as int
    check (value between 1000000 and 99999999);

create domain email_valido as varchar(100)
    check (
        value like '%@gmail.com' or
        value like '%@yahoo.com' or
        value like '%@hotmail.com' or
        value like '%@outlook.com'
    );

-- Creación de tablas con cambios realizados

/*
Usuarios:
    - usa un dni valido que entre dentro del rango genérico
    - cumple restriccion de pais que exige el tp
    - fecha de nacimiento asegura que no sea la fecha actual
    - cumple dominio de email
Ventajas:
    - Cuando cambie la forma de usar el dni lo cambio desde el domain sin entrar directo.
    - Lo mismo aplica para los demas campos que usan domain
*/
create table usuarios(
    DNI dni_valido not null,
    nombre varchar(32) not null,
    fecha_nacimiento date not null check (fecha_nacimiento <= CURRENT_DATE),
    email email_valido NOT NULL unique,
    pais pais_valido not null,
    primary key (DNI)
);

/*
Torneos:
    - el pais se valida con el domain establecido
    - se valida que fecha final sea despues de la fecha inicio
*/
CREATE TABLE torneos(
    nombre_torneo VARCHAR(100) NOT NULL
    ,pais pais_valido NOT NULL
    ,fecha_inicio DATE NOT NULL
    ,fecha_final DATE NOT NULL
    ,PRIMARY KEY(nombre_torneo)
    ,CONSTRAINT chk_fechas_torneo CHECK (fecha_inicio < fecha_final)
);

/*
Partidos:
    - El id es autoincremental
    - Se podría hacer que la fecha corresponda dentro de los limites del torneo
        pero es mas extenso. Un trigger medio complejo para lo que pide la catedra
    - Agrego CASCADE por si se modifica el nombre del torneo
*/

CREATE TABLE partidos (
    id_partido INT GENERATED ALWAYS AS IDENTITY,
    fecha DATE NOT NULL,
    nombre_torneo VARCHAR(100) NOT NULL,
    CONSTRAINT pk_partidos PRIMARY KEY (id_partido),
    CONSTRAINT fk_partidos_torneos FOREIGN KEY (nombre_torneo)
        REFERENCES torneos(nombre_torneo)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);


/*
Equipos:
    - Valido el pais con el domain
*/

CREATE TABLE equipos(
    nombre_equipo VARCHAR(100) NOT NULL,
    pais pais_valido NOT NULL,
    estadio VARCHAR(100) NOT NULL UNIQUE,
    PRIMARY KEY (nombre_equipo, pais)
);

/*
Pronostico Deportivo:
    - Id asemeja a los otros ids subrrogados
    - El pronostico es autoincremental
    - Dni validado por domain
*/
create table pronosticos_deportivos(
  id_pronostico int generated always as identity,
  DNI dni_valido not null,
  primary key(id_pronostico),
  foreign key (DNI) references usuarios(DNI) on delete cascade
);


-- Relaciones

/*
Pronostico partido:
    - agrego el campo de resultado para que sea mas logico
*/

create table pronosticos_partidos(
    id_pronostico int not null,
    id_partido int not null,
    pronostico_resultado varchar(32) check ( pronostico_resultado in ('Gana local', 'Gana visitante', 'Empate')),
    primary key (id_pronostico,id_partido),
    foreign key (id_pronostico) references pronosticos_deportivos(id_pronostico) on delete cascade,
    foreign key (id_partido) references partidos(id_partido) on delete cascade
);


/*
Juega un:
    - Modifico el pais valido con domain
    - Agrego UPDATE ON CASCADE por si el nombre del equipo cambia
*/
CREATE TABLE juega_un (
    nombre_equipo VARCHAR(100) NOT NULL,
    pais pais_valido NOT NULL,
    id_partido INT,
    goles INT NOT NULL,
    rol VARCHAR(20) NOT NULL,
    CONSTRAINT pk_juega_un PRIMARY KEY (nombre_equipo, pais, id_partido),
    CONSTRAINT fk_juega_un_equipos FOREIGN KEY (nombre_equipo, pais) REFERENCES equipos(nombre_equipo, pais) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_juega_un_partidos FOREIGN KEY (id_partido) REFERENCES partidos(id_partido) ON DELETE CASCADE,
    CONSTRAINT chk_juega_un_goles CHECK (goles >= 0),
    CONSTRAINT chk_juega_un_rol CHECK (rol IN ('Local', 'Visitante'))
);
