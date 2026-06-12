CREATE ROLE administrador;

GRANT ALL PRIVILEGES ON SCHEMA profutbol TO administrador;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA profutbol TO administrador;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA profutbol TO administrador; -- Por si usan campos serial/autoincrementales


CREATE ROLE usuario_comun;

GRANT USAGE ON SCHEMA profutbol TO usuario_comun;
GRANT SELECT ON profutbol.partidos TO usuario_comun;
GRANT SELECT ON profutbol.equipos TO usuario_comun;
GRANT SELECT ON profutbol.juega_un TO usuario_comun;
GRANT SELECT ON profutbol.torneos TO usuario_comun;
GRANT SELECT, INSERT, UPDATE, DELETE ON profutbol.pronosticos_deportivos TO usuario_comun;
GRANT SELECT, INSERT, UPDATE, DELETE ON profutbol.pronosticos_partidos TO usuario_comun;
GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA profutbol TO usuario_comun;