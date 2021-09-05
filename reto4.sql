CREATE SCHEMA reto_4;
USE reto_4;

DROP TABLE IF  EXISTS tipo;
DROP TABLE IF  EXISTS mantenimiento;
DROP TABLE IF  EXISTS area;
DROP TABLE IF  EXISTS ejecutar;
DROP TABLE IF  EXISTS empleado;
DROP TABLE IF  EXISTS registro;

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
  `idmantenimiento` INT PRIMARY KEY,
  `nombre` VARCHAR(45) NOT NULL,
  `minutosbase` INT NOT NULL,
  `tipo` VARCHAR(45) NOT NULL
  );

INSERT INTO mantenimiento (idmantenimiento, nombre, minutosbase, tipo) VALUES ('1','Ajustes de maquinaria y equipos', '120', 'Preventivo');

CREATE TABLE `area` (
  `idarea` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `Númerodesecciones` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idarea`));

CREATE TABLE `ejecutar` (
  `idejecutar` INT NOT NULL,
  `mantenimiento` VARCHAR(45) NOT NULL,
  `Tipo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idejecutar`));

CREATE TABLE `empleado` (
  `idempleado` INT NOT NULL,
  `Nombre` VARCHAR(45) NOT NULL,
  `Activo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idempleado`));
  
  CREATE TABLE `reto_4`.`registro` (
  `idregistro` INT NOT NULL,
  `mantenimiento` VARCHAR(45) NOT NULL,
  `Empleado` VARCHAR(45) NOT NULL,
  `Fecha` DATETIME NOT NULL,
  PRIMARY KEY (`idregistro`));