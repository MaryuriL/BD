CREATE SCHEMA reto_4;
USE reto_4;
CREATE TABLE `tipo` (
  `idtipo` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (idtipo)
  );  
INSERT INTO tipo (idtipo, nombre) VALUES ('1', 'Preventivo');
INSERT INTO tipo (idtipo, nombre) VALUES ('2', 'Correctivo');
INSERT INTO tipo (idtipo, nombre) VALUES ('3', 'Interno');
INSERT INTO tipo (idtipo, nombre) VALUES ('4', 'Externo');
CREATE TABLE `mantenimiento` (
	idmantenimiento INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nombre VARCHAR(60) NOT NULL,
	minutosbase INT NOT NULL,
    idtipo INT NOT NULL, 
	FOREIGN KEY (idtipo)
        REFERENCES tipo(idtipo)
  );
INSERT INTO mantenimiento (nombre, minutosbase, idtipo) VALUES ('Ajustes de maquinaria y equipos', '120', '1');
INSERT INTO mantenimiento (nombre, minutosbase, idtipo) VALUES ('Limpieza','130','2'); -- error
INSERT INTO mantenimiento (nombre, minutosbase, idtipo) VALUES ('Análisis de las averías', '90','2');
INSERT INTO mantenimiento (nombre, minutosbase, idtipo) VALUES ('Cambio de piezas', '240','2');
INSERT INTO mantenimiento (nombre, minutosbase, idtipo) VALUES ('Reparación de equipos', '90','3');
INSERT INTO mantenimiento (nombre, minutosbase, idtipo) VALUES ('Instalación componentes', '200','3');
INSERT INTO mantenimiento (nombre, minutosbase, idtipo) VALUES ('Desmonte bandas', '400','2'); -- error
INSERT INTO mantenimiento (nombre, minutosbase, idtipo) VALUES ('Calibración máquinas', '180','4');
INSERT INTO mantenimiento (nombre, minutosbase, idtipo) VALUES ('Montaje eléctrico', '160','4');
INSERT INTO mantenimiento (nombre, minutosbase, idtipo) VALUES ('Visita onPremise', '320','4');
CREATE TABLE `area` (
  `idarea` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `Númerodesecciones` INT NOT NULL,
  PRIMARY KEY (`idarea`)
  );
INSERT INTO area (nombre, Númerodesecciones)  VALUES ('Acabados', '2');
INSERT INTO area (nombre, Númerodesecciones)  VALUES ('Montaje', '5');
INSERT INTO area (nombre, Númerodesecciones)  VALUES ('Perfilado', '8');
INSERT INTO area (nombre, Númerodesecciones)  VALUES ('Producción', '2');
CREATE TABLE `ejecutar` (
	idarea INT NOT NULL, 
	idmantenimiento INT NOT NULL,
    FOREIGN KEY (idmantenimiento)
        REFERENCES mantenimiento(idmantenimiento),
    FOREIGN KEY (idarea)
        REFERENCES area(idarea)
);  
INSERT INTO ejecutar (idmantenimiento, idarea) VALUES ('1', '2');
INSERT INTO ejecutar (idmantenimiento, idarea) VALUES ('1', '2');  
INSERT INTO ejecutar (idmantenimiento, idarea) VALUES ('10', '4');                              
INSERT INTO ejecutar (idmantenimiento, idarea) VALUES ('9', '3');                          
INSERT INTO ejecutar (idmantenimiento, idarea) VALUES ('7', '1');                                       
INSERT INTO ejecutar (idmantenimiento, idarea) VALUES ('7', '4');                                   
INSERT INTO ejecutar (idmantenimiento, idarea) VALUES ('6', '1');               
INSERT INTO ejecutar (idmantenimiento, idarea) VALUES ('4', '4');                                        
INSERT INTO ejecutar (idmantenimiento, idarea) VALUES ('4', '2');                           
INSERT INTO ejecutar (idmantenimiento, idarea) VALUES ('2', '1'); -- error                                              
INSERT INTO ejecutar (idmantenimiento, idarea) VALUES ('2', '4');                                                             
INSERT INTO ejecutar (idmantenimiento, idarea) VALUES ('8', '2');                                         
INSERT INTO ejecutar (idmantenimiento, idarea) VALUES ('3', '4');                   
INSERT INTO ejecutar (idmantenimiento, idarea) VALUES ('5', '1');          
INSERT INTO ejecutar (idmantenimiento, idarea) VALUES ('6', '3');
CREATE TABLE `empleado` (
  `idempleado` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  `Activo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idempleado`)
  );
INSERT INTO empleado (Nombre, Activo) VALUES ('Juan martínez', 'Si');
INSERT INTO empleado (Nombre, Activo) VALUES ('Pedro Polanía', 'Si');
INSERT INTO empleado (Nombre, Activo) VALUES ('Eduardo Domínguez', 'No');
INSERT INTO empleado (Nombre, Activo) VALUES ('Teresa Díaz', 'Sí');
INSERT INTO empleado (Nombre, Activo) VALUES ('Diego García', 'No');
INSERT INTO empleado (Nombre, Activo) VALUES ('Camilo Hurtado', 'Sí');
  CREATE TABLE `registro` (
	idregistro INT NOT NULL AUTO_INCREMENT,
	fecha DATETIME NOT NULL,
    idmantenimiento INT NOT NULL, 
	idempleado INT NOT NULL,
    FOREIGN KEY (idmantenimiento)
        REFERENCES mantenimiento(idmantenimiento),
	FOREIGN KEY (idempleado)
        REFERENCES empleado(idempleado) ON DELETE CASCADE,
  PRIMARY KEY (`idregistro`)
  );
INSERT INTO registro (idmantenimiento, idempleado, fecha) VALUES ('1', '1', '2019-11-29 00:00:00');
INSERT INTO registro (idmantenimiento, idempleado, fecha) VALUES ('3', '3', '2021-06-01 00:00:00');
INSERT INTO registro (idmantenimiento, idempleado, fecha) VALUES ('4', '6', '2013-08-10 00:00:00');
INSERT INTO registro (idmantenimiento, idempleado, fecha) VALUES ('5', '5', '2018-07-12 00:00:00');
INSERT INTO registro (idmantenimiento, idempleado, fecha) VALUES ('2', '4', '2020-12-01 00:00:00');
INSERT INTO registro (idmantenimiento, idempleado, fecha) VALUES ('8', '1', '2012-03-20 00:00:00');
INSERT INTO registro (idmantenimiento, idempleado, fecha) VALUES ('6', '1', '2020-11-22 00:00:00');
INSERT INTO registro (idmantenimiento, idempleado, fecha) VALUES ('7', '4', '2019-06-15 00:00:00');
INSERT INTO registro (idmantenimiento, idempleado, fecha) VALUES ('10', '2', '2020-07-11 00:00:00');
INSERT INTO registro (idmantenimiento, idempleado, fecha) VALUES ('9', '2', '2014-05-19 00:00:00');
INSERT INTO registro (idmantenimiento, idempleado, fecha) VALUES ('1', '5', '2019-08-17 00:00:00');
INSERT INTO registro (idmantenimiento, idempleado, fecha) VALUES ('2', '4', '2021-07-12 00:00:00');
UPDATE mantenimiento
SET minutosbase = '750'
WHERE idmantenimiento = '5';
UPDATE mantenimiento
SET idtipo = '2'
WHERE idmantenimiento = '1';
UPDATE ejecutar
SET idarea = '2'
WHERE idmantenimiento = '9';
DELETE FROM empleado 
WHERE idempleado='6';
SELECT 'query 1';
SELECT nombre
FROM area
ORDER BY Númerodesecciones DESC;
SELECT 'query 2';
SELECT mantenimiento.nombre FROM mantenimiento
INNER JOIN ejecutar
ON mantenimiento.idmantenimiento = ejecutar.idmantenimiento
INNER JOIN  area
ON  ejecutar.idarea = area.idarea
INNER JOIN tipo
ON mantenimiento.idtipo = tipo.idtipo
WHERE tipo.nombre = 'Correctivo' AND area.nombre = 'Acabados'
ORDER BY mantenimiento.nombre;
SELECT 'query 3';
SELECT mantenimiento.nombre, registro.fecha, empleado.nombre from empleado
INNER JOIN registro
on empleado.idempleado = registro.idempleado
INNER JOIN mantenimiento
on registro.idmantenimiento = mantenimiento.idmantenimiento
WHERE empleado.nombre ='Eduardo Domínguez'
ORDER BY registro.fecha DESC;
SELECT 'query 4';
SELECT DISTINCT area.nombre FROM ejecutar
INNER JOIN area
ON ejecutar.idarea = area.idarea
INNER JOIN mantenimiento
ON ejecutar.idmantenimiento = mantenimiento.idmantenimiento
INNER JOIN registro
ON mantenimiento.idmantenimiento = registro.idmantenimiento
INNER JOIN empleado
ON registro.idempleado = empleado.idempleado
WHERE empleado.activo = 'No'
ORDER BY area.nombre;