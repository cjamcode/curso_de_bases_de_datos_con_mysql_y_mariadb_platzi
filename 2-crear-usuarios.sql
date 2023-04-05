--  Crear usuarios a la base de datos

CREATE USER 'nombre_usuario'@'host' IDENTIFIED BY 'contraseña'

-- Privilegios para el usuario

GRANT ALL PRIVILEGES ON * . * TO 'usuario'@'host';
FLUSH PRIVILEGES;