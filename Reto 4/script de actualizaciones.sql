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