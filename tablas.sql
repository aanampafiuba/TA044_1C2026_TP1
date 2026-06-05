create table pronosticos_deportivos(nro_pronostico int not null ,
                                   pronostico_resultado varchar(32) check ( pronostico_resultado in ('Gana local', 'Gana visitante', 'Empate')),
                                   DNI int not null,
                                    primary key(nro_pronostico),
                                    foreign key (DNI) references usuarios(DNI));
