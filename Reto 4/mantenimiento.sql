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