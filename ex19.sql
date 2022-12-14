SELECT dateRep,SUM(cases) OVER (ORDER BY year,month,dateRep ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW),
SUM(deaths) OVER (ORDER BY year,month,dateRep ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)
FROM dataset
WHERE geoId = 'UK'
GROUP BY dateRep
ORDER BY year,month,dateRep;
