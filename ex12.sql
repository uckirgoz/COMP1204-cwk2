PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

INSERT INTO R1 (dateRep,geoId,day,month,year)
SELECT DISTINCT dateRep,geoId,day,month,year FROM dataset;

INSERT INTO R2 (dateRep,geoId,cases,deaths)
SELECT DISTINCT dateRep,geoId,cases,deaths FROM dataset;

INSERT INTO R3 (geoId,countriesAndTerritories)
SELECT DISTINCT geoId,countriesAndTerritories FROM dataset;

INSERT INTO R4 (countriesAndTerritories,countryterritoryCode,popData2018,continentExp)
SELECT DISTINCT countriesAndTerritories,countryterritoryCode,popData2018,continentExp FROM dataset;

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;