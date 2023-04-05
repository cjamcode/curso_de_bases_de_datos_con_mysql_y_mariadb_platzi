USE metro_cdmx;

-- Seleccionar todo
SELECT * FROM `lines`;

-- Filtrar por colmnas
SELECT id, name, color FROM `lines`;

-- Operaciones matematicas con select
SELECT (2+2);

SELECT (2+2) AS RESULTADO;

SELECT AVG(year) AS PROMEDIO FROM `trains`;

-- Juntar tablas

SELECT 
`lines`.`name` AS LINEAS, 
`trains`.`serial_number` AS TRENES FROM `lines`
INNER JOIN `trains`
ON `lines`.`id` = `trains`.`line_id`;