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