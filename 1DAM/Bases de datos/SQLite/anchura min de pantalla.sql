SELECT

pantallax,
MIN(pantallax) AS numero

FROM logs
WHERE
anio = 2016
AND
pantallax > 400