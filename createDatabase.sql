-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema univespers
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema univespers
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `univespers` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema univespers
-- -----------------------------------------------------
USE `univespers` ;

-- -----------------------------------------------------
-- Table `univespers`.`Polo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `univespers`.`Polo` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(256) NOT NULL,
  `localidade` VARCHAR(90) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `univespers`.`Curso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `univespers`.`Curso` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(256) NOT NULL,
  `sugerido` TINYINT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `univespers`.`Estudante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `univespers`.`Estudante` (
  `id` INT NOT NULL,
  `polo_id` INT NOT NULL,
  `curso_id` INT NOT NULL,
  `uuid` BINARY(16) NOT NULL DEFAULT (UUID_TO_BIN(UUID())),
  `nome` VARCHAR(256) NOT NULL,
  `email_institucional` VARCHAR(256) NULL,
  `telefone` VARCHAR(256) NULL,
  `tem_whatsapp` TINYINT NULL,
  `descricao` VARCHAR(400) NULL,
  PRIMARY KEY (`id`, `curso_id`, `polo_id`),
  INDEX `fk_Estudante_Polo_idx` (`polo_id` ASC) VISIBLE,
  INDEX `fk_Estudante_Curso1_idx` (`curso_id` ASC) VISIBLE,
  CONSTRAINT `fk_Estudante_Polo`
    FOREIGN KEY (`polo_id`)
    REFERENCES `univespers`.`Polo` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Estudante_Curso1`
    FOREIGN KEY (`curso_id`)
    REFERENCES `univespers`.`Curso` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `univespers`.`ConfirmacaoToken`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `univespers`.`ConfirmacaoToken` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `uuid` BINARY(16) NOT NULL DEFAULT (UUID_TO_BIN(UUID())),
  `criacao_data` DATETIME NOT NULL DEFAULT (NOW()),
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `univespers`.`Habilidade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `univespers`.`Habilidade` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(256) NOT NULL,
  `sugerido` TINYINT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `univespers`.`AreaDeInteresse`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `univespers`.`AreaDeInteresse` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(256) NOT NULL,
  `sugerido` TINYINT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `univespers`.`Estudante_Habilidade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `univespers`.`Estudante_Habilidade` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `habilidade_id` INT NOT NULL,
  `estudante_id` INT NOT NULL,
  PRIMARY KEY (`id`, `habilidade_id`, `estudante_id`),
  INDEX `fk_Estudante_Habilidade_Habilidade1_idx` (`habilidade_id` ASC) VISIBLE,
  INDEX `fk_Estudante_Habilidade_Estudante1_idx` (`estudante_id` ASC) VISIBLE,
  CONSTRAINT `fk_Estudante_Habilidade_Habilidade1`
    FOREIGN KEY (`habilidade_id`)
    REFERENCES `univespers`.`Habilidade` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Estudante_Habilidade_Estudante1`
    FOREIGN KEY (`estudante_id`)
    REFERENCES `univespers`.`Estudante` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `univespers`.`Estudante_AreaDeInteresse`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `univespers`.`Estudante_AreaDeInteresse` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `area_de_interesse_id` INT NOT NULL,
  `estudante_id` INT NOT NULL,
  PRIMARY KEY (`id`, `area_de_interesse_id`, `estudante_id`),
  INDEX `fk_Estudante_AreaDeInteresse_AreaDeInteresse1_idx` (`area_de_interesse_id` ASC) VISIBLE,
  INDEX `fk_Estudante_AreaDeInteresse_Estudante1_idx` (`estudante_id` ASC) VISIBLE,
  CONSTRAINT `fk_Estudante_AreaDeInteresse_AreaDeInteresse1`
    FOREIGN KEY (`area_de_interesse_id`)
    REFERENCES `univespers`.`AreaDeInteresse` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Estudante_AreaDeInteresse_Estudante1`
    FOREIGN KEY (`estudante_id`)
    REFERENCES `univespers`.`Estudante` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `univespers`.`EstudanteContato`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `univespers`.`EstudanteContato` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `estudante_id` INT NOT NULL,
  `nome` VARCHAR(256) NOT NULL,
  `url` VARCHAR(2083) NOT NULL,
  PRIMARY KEY (`id`, `estudante_id`),
  INDEX `fk_EstudanteContato_Estudante1_idx` (`estudante_id` ASC) VISIBLE,
  CONSTRAINT `fk_EstudanteContato_Estudante1`
    FOREIGN KEY (`estudante_id`)
    REFERENCES `univespers`.`Estudante` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `univespers`.`Autorizacao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `univespers`.`Autorizacao` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `tipo` VARCHAR(45) NOT NULL,
  `validade` BIGINT(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `univespers`.`Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `univespers`.`Usuario` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `autorizacao_id` INT NOT NULL,
  `estudante_id` INT NOT NULL,
  `email_hash` VARCHAR(128) NOT NULL,
  `senha_hash` VARCHAR(128) NOT NULL,
  PRIMARY KEY (`id`, `autorizacao_id`, `estudante_id`),
  INDEX `fk_Usuario_Autorizacao1_idx` (`autorizacao_id` ASC) VISIBLE,
  INDEX `fk_Usuario_Estudante1_idx` (`estudante_id` ASC) VISIBLE,
  CONSTRAINT `fk_Usuario_Autorizacao1`
    FOREIGN KEY (`autorizacao_id`)
    REFERENCES `univespers`.`Autorizacao` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Usuario_Estudante1`
    FOREIGN KEY (`estudante_id`)
    REFERENCES `univespers`.`Estudante` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `univespers`.`Token`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `univespers`.`Token` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `usuario_id` INT NOT NULL,
  `uuid` BINARY(16) NOT NULL DEFAULT (UUID_TO_BIN(UUID())),
  `criacao_data` DATETIME NOT NULL DEFAULT (NOW()),
  PRIMARY KEY (`id`, `usuario_id`),
  INDEX `fk_Token_Usuario1_idx` (`usuario_id` ASC) VISIBLE,
  CONSTRAINT `fk_Token_Usuario1`
    FOREIGN KEY (`usuario_id`)
    REFERENCES `univespers`.`Usuario` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
