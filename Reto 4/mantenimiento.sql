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