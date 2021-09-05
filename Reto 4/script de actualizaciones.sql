 -- el script de actualizaciones
 -- Actualizar a 750 los minutos base del mantenimiento: Reparación de equipos
UPDATE mantenimiento
SET minutosbase = '750'
WHERE idmantenimiento = '5';
-- Actualizar el tipo (de mantenimiento) del mantenimiento: ‘Ajustes de maquinaria y equipos’ a Correctivo
UPDATE mantenimiento
SET idtipo = '2'
WHERE idmantenimiento = '1';
-- Modificar el registro de ejecución (ejecutar) del mantenimiento: ‘Montaje eléctrico’ para que quede asociado al área: Acabados
UPDATE ejecutar
SET idarea = '2'
WHERE idmantenimiento = '9';
-- Eliminar los registros de mantenimiento del empleado:  Camilo Hurtado.
DELETE FROM empleado 
WHERE idempleado='6';