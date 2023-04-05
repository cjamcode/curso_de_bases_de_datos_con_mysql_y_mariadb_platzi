USE metro_cdmx;

-- Truncate reinicia los campos AUTO_INCREMENT
TRUNCATE TABLE `stations_delete`;

INSERT INTO `stations_delete` (name) VALUES
("Lázaro Cárdens"), -- Lázaro Cárdenas
("Ferería"), -- Ferrería 
("Pnttlán"), -- Pantitlán
("Tauga"), -- Tacuba
("MartínCrrera"), -- Martín Carrera
("Santa Anita"),
("Villa de Aragón");