SELECT
anio AS 'año actual',
COUNT(anio) AS 'numero de visitas en este año'
FROM logs
GROUP BY anio
ORDER BY anio DESC
