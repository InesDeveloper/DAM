SELECT

pantallax,
MIN(pantallax) AS numero

FROM logs
WHERE

pantallax > 400
GROUP BY anio