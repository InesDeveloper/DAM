SELECT
anio AS 'año actual',
mes AS 'mes actual',
COUNT(anio) AS 'numero de visitas en este año'

FROM logs

WHERE anio=2016

GROUP BY anio,mes
ORDER BY anio,mes ASC