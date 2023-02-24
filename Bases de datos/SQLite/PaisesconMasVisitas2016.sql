SELECT

extra3 AS 'pais',
COUNT(extra3) AS 'numero'

FROM logs

WHERE
anio = 2016
AND extra3 !=''
GROUP BY extra3
ORDER BY numero DESC
