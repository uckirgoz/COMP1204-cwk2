SELECT countriesAndTerritories,SUM(cases)*100/popData2018 populationPercentageCases, SUM(deaths)*100/popData2018 populationPercentageDeaths FROM dataset
GROUP BY countriesAndTerritories;