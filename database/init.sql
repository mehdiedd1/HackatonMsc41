DROP DATABASE IF EXISTS `Datasets`;

CREATE DATABASE IF NOT EXISTS `Datasets`;
CREATE DATABASE IF NOT EXISTS `MetabaseDB`;

USE `Datasets`;

CREATE TABLE IF NOT EXISTS `Campagne2023` (
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `campagne` VARCHAR(10) NOT NULL,
    `date` DATE NOT NULL,
    `variable` VARCHAR(64) NOT NULL,
    `valeur` INT NOT NULL,
    `cible` INT NOT NULL
);

CREATE TABLE IF NOT EXISTS `Couverture2023` (
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `region` VARCHAR(64) NOT NULL,
    `code` INT NOT NULL,
    `variable` VARCHAR(64) NOT NULL,
    `groupe` VARCHAR(64) NOT NULL,
    `valeur` INT NOT NULL
);

CREATE TABLE IF NOT EXISTS `DosesActes2023` (
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `campagne` VARCHAR(10) NOT NULL,
    `date` DATE NOT NULL,
    `jour` INT NOT NULL,
    `variable` VARCHAR(64) NOT NULL,
    `groupe` VARCHAR(64) NOT NULL,
    `valeur` INT NOT NULL
);

CREATE TABLE IF NOT EXISTS `Regions` (
    `code` INT NOT NULL PRIMARY KEY,
    `nom` VARCHAR(64)
);

CREATE TABLE IF NOT EXISTS `dfCov` (
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `region` VARCHAR(64) NOT NULL,
    `grippe_moins_65_risque` DOUBLE,
    `grippe_plus_65` DOUBLE,
    `grippe_65_74` DOUBLE,
    `grippe_plus_75` DOUBLE,
    `grippe_residents_ehpad` DOUBLE,
    `grippe_pro_ehpad` DOUBLE
);

CREATE TABLE IF NOT EXISTS `dfIqvia` (
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `annee` INT NOT NULL,
    `mois` INT NOT NULL,
    `variable` VARCHAR(64) NOT NULL,
    `groupe` VARCHAR(64) NOT NULL,
    `valeur` INT NOT NULL
);

CREATE TABLE IF NOT EXISTS `dfUrg` (
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `annee` INT NOT NULL,
    `mois` INT NOT NULL,
    `region` VARCHAR(64) NOT NULL,
    `age` VARCHAR(64) NOT NULL,
    `taux_urg_grippe` DOUBLE,
    `taux_hosp_grippe` DOUBLE,
    `taux_sos_med_grippe` DOUBLE
);

LOAD DATA LOCAL INFILE '/datasets/campagne-2023.csv'
INTO TABLE `Campagne2023`
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS
(campagne,date,variable,valeur,cible);

LOAD DATA LOCAL INFILE '/datasets/couverture-2023.csv'
INTO TABLE `Couverture2023`
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS
(region,code,variable,groupe,valeur);

LOAD DATA LOCAL INFILE '/datasets/doses-actes-2023.csv'
INTO TABLE `DosesActes2023`
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS
(campagne,date,jour,variable,groupe,valeur);

LOAD DATA LOCAL INFILE '/datasets/v_region_2025.csv'
INTO TABLE `Regions`
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS
(code, @dummy, @dummy, @dummy, nom, @dummy);

LOAD DATA LOCAL INFILE '/datasets/df_cov.csv'
INTO TABLE `dfCov`
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS
(region,grippe_moins_65_risque,grippe_plus_65,grippe_65_74,grippe_plus_75,grippe_residents_ehpad,grippe_pro_ehpad);

LOAD DATA LOCAL INFILE '/datasets/df_iqvia_month.csv'
INTO TABLE `dfIqvia`
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS
(annee,mois,variable,groupe,valeur);

LOAD DATA LOCAL INFILE '/datasets/df_urg_month.csv'
INTO TABLE `dfUrg`
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS
(annee,mois,region,age,taux_urg_grippe,taux_hosp_grippe,taux_sos_med_grippe);