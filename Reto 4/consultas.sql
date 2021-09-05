-- 2.3   Consulta de registros:
--          Consultar de forma descendente, el nombre de las áreas por su número de secciones.
SELECT 'query 1';
SELECT nombre, Númerodesecciones
FROM area
ORDER BY Númerodesecciones DESC;
--          Consultar los nombres de los mantenimientos, donde su tipo de mantenimiento corresponda a: ‘Correctivo’ y se hayan ejecutado en el área de: ‘Acabados’. Mostrarlos de forma descendente.
SELECT 'query 2';
SELECT * FROM mantenimiento
INNER JOIN ejecutar
ON mantenimiento.idmantenimiento = ejecutar.idmantenimiento
INNER JOIN  area
ON  ejecutar.idarea = area.idarea
INNER JOIN tipo
ON mantenimiento.idtipo = tipo.idtipo
WHERE tipo.nombre = 'Correctivo' AND area.nombre = 'Acabados'
ORDER BY mantenimiento.nombre DESC;
--          Consultar por fecha, el nombre del suministro y la fecha de realización de los registros de mantenimiento realizadas por el empleado " Eduardo Domínguez " y ordene por la fecha de mayor a menor.
SELECT 'query 3';
SELECT * from empleado
INNER JOIN registro
on empleado.idempleado = registro.idempleado
INNER JOIN mantenimiento
on registro.idmantenimiento = mantenimiento.idmantenimiento
WHERE empleado.nombre ='Eduardo Domínguez'
ORDER BY registro.fecha DESC;
-- Visualizar ordenada y alfabéticamente, los nombres de las áreas que ejecutan mantenimientos de empleados que no están activos. No mostrar valores repetidos.

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