SELECT
hora AS 'hora del día',
COUNT(hora) AS 'número de visitas'

FROM logs

WHERE anio=2016
GROUP BY hora
ORDER BY COUNT(hora)DESC