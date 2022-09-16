SELECT dateRep,continentExp,SUM(cases) totalCases, SUM(deaths) totalDeaths FROM dataset 
GROUP BY dateRep,continentExp
ORDER BY continentExp,year,month,dateRep;