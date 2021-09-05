CREATE TABLE `empleado` (
  `idempleado` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  `Activo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idempleado`));

INSERT INTO empleado (Nombre, Activo) VALUES ('Juan martínez', 'Si');
INSERT INTO empleado (Nombre, Activo) VALUES ('Pedro Polanía', 'Si');
INSERT INTO empleado (Nombre, Activo) VALUES ('Eduardo Domínguez', 'No');
INSERT INTO empleado (Nombre, Activo) VALUES ('Teresa Díaz', 'Sí');
INSERT INTO empleado (Nombre, Activo) VALUES ('Diego García', 'No');
INSERT INTO empleado (Nombre, Activo) VALUES ('Camilo Hurtado', 'Sí');