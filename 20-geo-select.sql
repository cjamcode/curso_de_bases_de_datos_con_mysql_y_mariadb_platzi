USE metro_cdmx;

-- Se calcula en metros
SELECT
ST_Distance_Sphere(
    POINT(-99.14912224, 19.42729875),
    POINT(-99.13303971, 19.42543703)
) AS distance;

-- Se calcula en kilometros
SELECT
ST_Distance_Sphere(
    POINT(-99.14912224, 19.42729875),
    POINT(-99.13303971, 19.42543703)
) /1000 AS distance;


-- Medir distancia entre puntos 
SELECT
ST_Distance_Sphere(
    (SELECT `locations`.`location` FROM `locations` WHERE `locations`.`id` = (
        SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = 'Lázaro Cárdenas'
    ) ),
    (SELECT `locations`.`location` FROM `locations` WHERE `locations`.`id` = (
        SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = 'Ferrería'
    ) )
) AS distance;

-- Medir dstancia usando JOIN

SELECT 
ST_Distance_Sphere(
    (SELECT `locations`.`location` 
    FROM `locations` INNER JOIN `stations` ON `stations`.`id` = `locations`.`station_id`
    WHERE `stations`.`name` = 'Balderas'),
    (SELECT `locations`.`location` 
    FROM `locations` INNER JOIN `stations` ON `stations`.`id` = `locations`.`station_id`
    WHERE `stations`.`name` = 'Pino Suarez')
) / 1000 AS Distance;
