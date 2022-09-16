PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: R1
CREATE TABLE R1(
    dateRep VARCHAR,
    geoId VARCHAR,
    day INT,
    month INT,
    year INT,
    PRIMARY KEY (dateRep,geoId),
    FOREIGN KEY (dateRep,geoId)
        REFERENCES R2 (dateRep,geoId)
);

-- Table: R2
CREATE TABLE R2(
    dateRep VARCHAR,
    geoId VARCHAR,
    cases INT,
    deaths INT,
    PRIMARY KEY (dateRep,geoId),
    FOREIGN KEY (geoId)
        REFERENCES R3 (geoId)
);

-- Table: R3
CREATE TABLE R3(
    geoId VARCHAR,
    countriesAndTerritories VARHCAR,
    PRIMARY KEY (geoId),
    FOREIGN KEY (countriesAndTerritories)
        REFERENCES R4(countriesAndTerritories)
);

-- Table: R4
CREATE TABLE R4(
    countriesAndTerritories VARCHAR,
    countryterritoryCode VARCHAR,
    popData2018 VARCHAR,
    continentExp VARCHAR,
    PRIMARY KEY (countriesAndTerritories)
);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
