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

-- IF NOT EXISTS ( SELECT NULL FROM `Campagne2023` ) THEN
    LOAD DATA LOCAL INFILE '/datasets/campagne-2023.csv'
    INTO TABLE `Campagne2023`
    FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS
    (campagne,date,variable,valeur,cible);
-- END IF;

-- IF NOT EXISTS ( SELECT NULL FROM `Couverture2023` ) THEN
    LOAD DATA LOCAL INFILE '/datasets/couverture-2023.csv'
    INTO TABLE `Couverture2023`
    FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS
    (region,code,variable,groupe,valeur);
-- END IF;

-- IF NOT EXISTS ( SELECT NULL FROM `DosesActes2023` ) THEN
    LOAD DATA LOCAL INFILE '/datasets/doses-actes-2023.csv'
    INTO TABLE `DosesActes2023`
    FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS
    (campagne,date,jour,variable,groupe,valeur);
-- END IF;