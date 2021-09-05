CREATE TABLE `registro` (
	idregistro INT NOT NULL AUTO_INCREMENT,
	fecha DATETIME NOT NULL,
    idmantenimiento INT NOT NULL, 
	idempleado INT NOT NULL,
    FOREIGN KEY (idmantenimiento)
        REFERENCES mantenimiento(idmantenimiento),
	FOREIGN KEY (idempleado)
        REFERENCES empleado(idempleado) ON DELETE CASCADE,
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