DROP schema reto_4;
CREATE SCHEMA reto_4;
USE reto_4;

-- DROP TABLE IF  EXISTS tipo;
-- DROP TABLE IF  EXISTS mantenimiento;
-- DROP TABLE IF  EXISTS area;
-- DROP TABLE IF  EXISTS ejecutar;
-- DROP TABLE IF  EXISTS empleado;
-- DROP TABLE IF  EXISTS registro;

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
INSERT INTO mantenimiento (nombre, minutosbase, idtipo) VALUES ('Limpieza','130','1');
INSERT INTO mantenimiento (nombre, minutosbase, idtipo) VALUES ('Análisis de las averías', '90','2');
INSERT INTO mantenimiento (nombre, minutosbase, idtipo) VALUES ('Cambio de piezas', '240','2');
INSERT INTO mantenimiento (nombre, minutosbase, idtipo) VALUES ('Reparación de equipos', '90','3');
INSERT INTO mantenimiento (nombre, minutosbase, idtipo) VALUES ('Instalación componentes', '200','3');
INSERT INTO mantenimiento (nombre, minutosbase, idtipo) VALUES ('Desmonte bandas', '400','3');
INSERT INTO mantenimiento (nombre, minutosbase, idtipo) VALUES ('Calibración máquinas', '180','4');
INSERT INTO mantenimiento (nombre, minutosbase, idtipo) VALUES ('Montaje eléctrico', '160','4');
INSERT INTO mantenimiento (nombre, minutosbase, idtipo) VALUES ('Visita onPremise', '320','4');

CREATE TABLE `area` (
  `idarea` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `Númerodesecciones` INT NOT NULL,
  PRIMARY KEY (`idarea`));
  
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
INSERT INTO ejecutar (idmantenimiento, idarea) VALUES ('2', '3');                                                 
INSERT INTO ejecutar (idmantenimiento, idarea) VALUES ('2', '4');                                                             
INSERT INTO ejecutar (idmantenimiento, idarea) VALUES ('8', '2');                                         
INSERT INTO ejecutar (idmantenimiento, idarea) VALUES ('3', '4');                   
INSERT INTO ejecutar (idmantenimiento, idarea) VALUES ('5', '1');          
INSERT INTO ejecutar (idmantenimiento, idarea) VALUES ('6', '3');

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

  CREATE TABLE `registro` (
	idregistro INT NOT NULL AUTO_INCREMENT,
	fecha DATETIME NOT NULL,
    idmantenimiento INT NOT NULL, 
	idempleado INT NOT NULL,
    FOREIGN KEY (idmantenimiento)
        REFERENCES mantenimiento(idmantenimiento),
	FOREIGN KEY (idempleado)
        REFERENCES empleado(idempleado),
  PRIMARY KEY (`idregistro`));
  
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
  
-- el script de actualizaciones
  
-- 2.2   Actualización de registros:

--          Actualizar a 750 los minutos base del mantenimiento: Reparación de equipos


--          Actualizar el tipo (de mantenimiento) del mantenimiento: ‘Ajustes de maquinaria y equipos’ a Correctivo

--          Modificar el registro de ejecución (ejecutar) del mantenimiento: ‘Montaje eléctrico’ para que quede asociado al área: Acabados

--          Eliminar los registros de mantenimiento del empleado:  Camilo Hurtado.



-- 2.3   Consulta de registros:

--          Consultar de forma descendente, el nombre de las áreas por su número de secciones.
SELECT 'query 1';
SELECT
	nombre, 
    Númerodesecciones
FROM
	area
ORDER BY
	Númerodesecciones DESC;


--          Consultar los nombres de los mantenimientos, donde su tipo de mantenimiento corresponda a: ‘Correctivo’ y se hayan ejecutado en el área de: ‘Acabados’. Mostrarlos de forma descendente.
SELECT 'query 2';
SELECT
	*
FROM
	mantenimiento
LEFT JOIN tipo
ON mantenimiento.idtipo = tipo.idtipo;
--          Consultar por fecha, el nombre del suministro y la fecha de realización de los registros de mantenimiento realizadas por el empleado " Eduardo Domínguez " y ordene por la fecha de mayor a menor.

--          Visualizar ordenada y alfabéticamente, los nombres de las áreas que ejecutan mantenimientos de empleados que no están activos. No mostrar valores repetidos.

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
WHERE empleado.esactivo = 'No'
ORDER BY area.nombre;