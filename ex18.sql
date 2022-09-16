SELECT countriesAndTerritories,SUM(deaths)*100/SUM(cases) deathPercentageForTotalCases FROM dataset
GROUP BY countriesAndTerritories
ORDER BY deathPercentageForTotalCases DESC LIMIT 10;