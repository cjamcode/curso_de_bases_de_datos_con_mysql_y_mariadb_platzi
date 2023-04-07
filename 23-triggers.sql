USE metro_cdmx;

-- Un trigger es una funcion que se ejecuta cuando ocurre un evento

CREATE TRIGGER update_updated_at_field
BEFORE UPDATE 
ON `lines`
FOR EACH ROW 
SET NEW.updated_at = NOW();
