-- MySQL Workbench Synchronization
-- Generated: 2021-07-23 11:00
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: gabri

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE SCHEMA IF NOT EXISTS `tecpuc1b` DEFAULT CHARACTER SET utf8 ;

CREATE TABLE IF NOT EXISTS `tecpuc1b`.`alunos` (
  `idalunos` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(145) NULL DEFAULT NULL,
  `matricula` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idalunos`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `tecpuc1b`.`alunos_turmas` (
  `alunos_idalunos` INT(11) NOT NULL,
  `turmas_idturmas` INT(11) NOT NULL,
  INDEX `fk_alunos_turmas_alunos1_idx` (`alunos_idalunos` ASC) VISIBLE,
  INDEX `fk_alunos_turmas_turmas1_idx` (`turmas_idturmas` ASC) VISIBLE,
  CONSTRAINT `fk_alunos_turmas_alunos1`
    FOREIGN KEY (`alunos_idalunos`)
    REFERENCES `tecpuc1b`.`alunos` (`idalunos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_alunos_turmas_turmas1`
    FOREIGN KEY (`turmas_idturmas`)
    REFERENCES `tecpuc1b`.`turmas` (`idturmas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `tecpuc1b`.`turmas` (
  `idturmas` INT(11) NOT NULL AUTO_INCREMENT,
  `turno` VARCHAR(45) NULL DEFAULT NULL,
  `ano` VARCHAR(45) NULL DEFAULT NULL,
  `serie` VARCHAR(45) NULL DEFAULT NULL,
  `curso` VARCHAR(45) NULL DEFAULT NULL,
  `turma` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idturmas`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;