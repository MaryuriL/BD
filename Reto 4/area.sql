CREATE TABLE `area` (
  `idarea` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `Númerodesecciones` INT NOT NULL,
  PRIMARY KEY (`idarea`));
  
INSERT INTO area (nombre, Númerodesecciones)  VALUES ('Acabados', '2');
INSERT INTO area (nombre, Númerodesecciones)  VALUES ('Montaje', '5');
INSERT INTO area (nombre, Númerodesecciones)  VALUES ('Perfilado', '8');
INSERT INTO area (nombre, Númerodesecciones)  VALUES ('Producción', '2');