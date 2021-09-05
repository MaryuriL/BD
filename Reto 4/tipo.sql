CREATE TABLE `tipo` (
  `idtipo` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (idtipo)
  );
INSERT INTO tipo (idtipo, nombre) VALUES ('1', 'Preventivo');
INSERT INTO tipo (idtipo, nombre) VALUES ('2', 'Correctivo');
INSERT INTO tipo (idtipo, nombre) VALUES ('3', 'Interno');
INSERT INTO tipo (idtipo, nombre) VALUES ('4', 'Externo');