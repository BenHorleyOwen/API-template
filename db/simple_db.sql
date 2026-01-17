SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema simple_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `simple_db` DEFAULT CHARACTER SET utf8 ;
USE `simple_db` ;

-- -----------------------------------------------------
-- Table `simple_db`.`user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `simple_db`.`user` ;

CREATE TABLE IF NOT EXISTS `simple_db`.`user` (
  `id_user` CHAR(36) NOT NULL,
  `username` VARCHAR(14) NOT NULL,
  `date_joined` DATETIME NULL,
  PRIMARY KEY (`id_user`))
ENGINE = InnoDB;
