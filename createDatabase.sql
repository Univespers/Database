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
CREATE SCHEMA IF NOT EXISTS `univespers` ;
USE `univespers` ;

-- -----------------------------------------------------
-- Table `univespers`.`Polo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `univespers`.`Polo` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(256) NOT NULL,
  `localidade` VARCHAR(90) NOT NULL,
  `distribuicaoRegional` VARCHAR(20) NOT NULL,
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
  `email_hash` VARCHAR(128) NOT NULL,
  `senha_hash` VARCHAR(128) NOT NULL,
  PRIMARY KEY (`id`, `autorizacao_id`),
  INDEX `fk_Usuario_Autorizacao1_idx` (`autorizacao_id` ASC) VISIBLE,
  CONSTRAINT `fk_Usuario_Autorizacao1`
    FOREIGN KEY (`autorizacao_id`)
    REFERENCES `univespers`.`Autorizacao` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `univespers`.`Estudante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `univespers`.`Estudante` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `polo_id` INT NULL,
  `curso_id` INT NULL,
  `usuario_id` INT NOT NULL,
  `uuid` BINARY(16) NOT NULL DEFAULT (UUID_TO_BIN(UUID())),
  `nome` VARCHAR(256) NOT NULL,
  `email_institucional` VARCHAR(256) NULL,
  `telefone` VARCHAR(256) NULL,
  `tem_whatsapp` TINYINT NULL,
  `descricao` VARCHAR(400) NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Estudante_Polo_idx` (`polo_id` ASC) VISIBLE,
  INDEX `fk_Estudante_Curso1_idx` (`curso_id` ASC) VISIBLE,
  INDEX `fk_Estudante_Usuario1_idx` (`usuario_id` ASC) VISIBLE,
  CONSTRAINT `fk_Estudante_Polo`
    FOREIGN KEY (`polo_id`)
    REFERENCES `univespers`.`Polo` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Estudante_Curso1`
    FOREIGN KEY (`curso_id`)
    REFERENCES `univespers`.`Curso` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Estudante_Usuario1`
    FOREIGN KEY (`usuario_id`)
    REFERENCES `univespers`.`Usuario` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `univespers`.`ConfirmacaoToken`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `univespers`.`ConfirmacaoToken` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `uuid` BINARY(16) NOT NULL DEFAULT (UUID_TO_BIN(UUID())),
  `criacao_data` DATETIME NOT NULL DEFAULT NOW(),
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
-- Table `univespers`.`Token`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `univespers`.`Token` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `usuario_id` INT NOT NULL,
  `uuid` BINARY(16) NOT NULL DEFAULT (UUID_TO_BIN(UUID())),
  `criacao_data` DATETIME NOT NULL DEFAULT NOW(),
  PRIMARY KEY (`id`, `usuario_id`),
  INDEX `fk_Token_Usuario1_idx` (`usuario_id` ASC) VISIBLE,
  CONSTRAINT `fk_Token_Usuario1`
    FOREIGN KEY (`usuario_id`)
    REFERENCES `univespers`.`Usuario` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `univespers` ;

-- -----------------------------------------------------
-- procedure GetAutorizacoes
-- -----------------------------------------------------

DELIMITER $$
USE `univespers`$$
CREATE PROCEDURE `GetAutorizacoes` ()
BEGIN
	SELECT
		tipo as "tipo",
		validade as "validade"
        FROM Autorizacao;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure NovaConfirmacao
-- -----------------------------------------------------

DELIMITER $$
USE `univespers`$$
CREATE PROCEDURE `NovaConfirmacao` ()
BEGIN
	INSERT INTO ConfirmacaoToken () VALUES ();
    SELECT
		BIN_TO_UUID(uuid) as "uuid",
        criacao_data as "criacao_data"
        FROM ConfirmacaoToken
        ORDER BY id DESC LIMIT 1;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure CheckConfirmacao
-- -----------------------------------------------------

DELIMITER $$
USE `univespers`$$
CREATE PROCEDURE `CheckConfirmacao` (uuid VARCHAR(36))
BEGIN
	IF EXISTS (SELECT * FROM ConfirmacaoToken AS ct WHERE BIN_TO_UUID(ct.uuid) = uuid) THEN
		SELECT "ok" as "response";
	ELSE
		SELECT "not_found" as "response";
	END IF;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure EsquecerConfirmacao
-- -----------------------------------------------------

DELIMITER $$
USE `univespers`$$
CREATE PROCEDURE `EsquecerConfirmacao` (uuid VARCHAR(36))
BEGIN
	DECLARE cTokenId INT;
	SELECT id INTO cTokenId
		FROM ConfirmacaoToken AS ct WHERE BIN_TO_UUID(ct.uuid) = uuid
        LIMIT 1;
    -- Checa confirmação
	IF NOT cTokenId IS NULL THEN
		DELETE FROM ConfirmacaoToken AS ct WHERE ct.id = cTokenId;
		SELECT "ok" as "response";
	ELSE
		SELECT "not_found" as "response";
	END IF;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure NovoUsuario
-- -----------------------------------------------------

DELIMITER $$
USE `univespers`$$
CREATE PROCEDURE `NovoUsuario` (emailHash VARCHAR(128), senhaHash VARCHAR(128), autorizacaoTipo VARCHAR(45))
BEGIN
	-- Checa se tipo existe
	IF EXISTS (SELECT * FROM Autorizacao WHERE tipo = autorizacaoTipo) THEN
		-- Checa se usuário não existe
		IF NOT EXISTS (SELECT * FROM Usuario WHERE email_hash = emailHash) THEN
			INSERT INTO Usuario (email_hash, senha_hash, autorizacao_id) VALUES (emailHash, senhaHash, (
				SELECT id FROM Autorizacao WHERE tipo = autorizacaoTipo
            ));
			SELECT "ok" AS "response";
		ELSE
			-- Usuário existe
			SELECT "already_exists" AS "response";
		END IF;
	ELSE
		-- Tipo inválido
		SELECT "not_found" AS "response";
	END IF;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure Login
-- -----------------------------------------------------

DELIMITER $$
USE `univespers`$$
CREATE PROCEDURE `Login` (emailHash VARCHAR(128), senhaHash VARCHAR(128))
BEGIN
	DECLARE usuarioId INT;

	SELECT id INTO usuarioId
		FROM Usuario AS u
		WHERE u.email_hash = emailHash AND u.senha_hash = senhaHash
        LIMIT 1;
    -- Checa usuário
	IF NOT usuarioId IS NULL THEN
		-- Cria Token e o retorna
		INSERT INTO Token (usuario_id) VALUES (usuarioId);
		SELECT
			BIN_TO_UUID(uuid) as "uuid",
            a.tipo AS "tipo",
			a.validade AS "validade"
			FROM (SELECT * FROM Usuario WHERE id = usuarioId) AS u
			INNER JOIN Autorizacao AS a ON u.autorizacao_id = a.id
			INNER JOIN Token AS t ON t.usuario_id = u.id
			ORDER BY t.id DESC
			LIMIT 1;
    ELSE
		-- Usuário não existe
		SELECT "not_found" AS "response";
    END IF;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure CheckToken
-- -----------------------------------------------------

DELIMITER $$
USE `univespers`$$
CREATE PROCEDURE `CheckToken` (uuid VARCHAR(36))
BEGIN
	DECLARE response VARCHAR(20);
	DECLARE validade BIGINT(20);
    
    CALL _CheckToken(uuid, response, validade);
	SELECT
		response AS "response",
		validade AS "validade";
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure Logout
-- -----------------------------------------------------

DELIMITER $$
USE `univespers`$$
CREATE PROCEDURE `Logout` (uuid VARCHAR(36))
BEGIN
	DECLARE tokenId INT;
	SELECT id INTO tokenId
		FROM Token AS t WHERE BIN_TO_UUID(t.uuid) = uuid
        LIMIT 1;
    -- Checa token
	IF NOT tokenId IS NULL THEN
		DELETE FROM Token AS t WHERE t.id = tokenId;
		SELECT "ok" as "response";
	ELSE
		SELECT "not_found" as "response";
	END IF;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure PesquisarPolos
-- -----------------------------------------------------

DELIMITER $$
USE `univespers`$$
CREATE PROCEDURE `PesquisarPolos` (termo VARCHAR(128))
BEGIN
	SELECT
		nome AS "nome",
		localidade AS "localidade"
        FROM Polo WHERE nome LIKE CONCAT("%", termo, "%");
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure NovoEstudante
-- -----------------------------------------------------

DELIMITER $$
USE `univespers`$$
CREATE PROCEDURE `NovoEstudante` (tokenUUID VARCHAR(36), nome VARCHAR(256), emailInstitucional VARCHAR(256), poloNome VARCHAR(256), cursoNome VARCHAR(256))
BEGIN
	DECLARE response VARCHAR(20);
	DECLARE validade BIGINT(20);
    
	DECLARE tokenId INT;
	DECLARE usuarioId INT;
	DECLARE poloId INT;
	DECLARE cursoId INT;
    
    -- Checa token
    CALL _CheckToken(tokenUUID, response, validade);
    IF (response = "ok") THEN
		CALL _GetToken(tokenUUID, tokenId);
		CALL _GetUsuario(tokenId, usuarioId);
		CALL _GetPolo(poloNome, poloId);
		CALL _GetCurso(cursoNome, cursoId);
        IF NOT (SELECT * FROM Estudante AS e WHERE e.usuario_id = usuario_id) IS NULL THEN
			INSERT INTO Estudante (
				polo_id, curso_id, usuario_id,
				nome, email_institucional
			) VALUES (
				poloId, cursoId, usuarioId,
				nome, emailInstitucional
			);
			SELECT "ok" AS "response";
		ELSE
			-- Estudante já existe
			SELECT "already_exists" AS "response";
		END IF;
	ELSE
		-- Token expirado/não encontrado
		SELECT response AS "response";
	END IF;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure _CheckToken
-- -----------------------------------------------------

DELIMITER $$
USE `univespers`$$
CREATE PROCEDURE `_CheckToken` (IN uuid VARCHAR(36), OUT response VARCHAR(20), OUT validade BIGINT(20))
BEGIN
	DECLARE tokenId INT;
	DECLARE usuarioId INT;
	DECLARE tokenValidade DATETIME;

	CALL _GetToken(uuid, tokenId);
    -- Checa token
	IF NOT tokenId IS NULL THEN
		CALL _GetUsuario(tokenId, usuarioId);
		-- Checa usuário
		IF NOT usuarioId IS NULL THEN
			-- Checa validade de token
			SELECT DATE_ADD(t.criacao_data, INTERVAL (a.validade / 1000) SECOND) INTO tokenValidade
				FROM (SELECT * FROM Usuario WHERE id = usuarioId) AS u
				INNER JOIN Autorizacao AS a ON u.autorizacao_id = a.id
				INNER JOIN Token AS t ON t.usuario_id = u.id AND t.id = tokenId
				LIMIT 1;
			IF (tokenValidade > NOW()) THEN
				SELECT "ok" INTO response;
				SELECT ((UNIX_TIMESTAMP(tokenValidade) * 1000) - (UNIX_TIMESTAMP(NOW()) * 1000)) INTO validade;
			ELSE
				-- Token expirado
				SELECT "expired" INTO response;
				SELECT -1 INTO validade;
			END IF;
		ELSE
			-- Usuário não existe
			SELECT "not_found" INTO response;
			SELECT -1 INTO validade;
		END IF;
    ELSE
		-- Token não existe
		SELECT "not_found" INTO response;
		SELECT -1 INTO validade;
    END IF;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure _GetToken
-- -----------------------------------------------------

DELIMITER $$
USE `univespers`$$
CREATE PROCEDURE `_GetToken` (IN uuid VARCHAR(36), OUT id INT)
BEGIN
	SELECT t.id INTO id
		FROM Token AS t WHERE BIN_TO_UUID(t.uuid) = uuid
        LIMIT 1;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure _GetUsuario
-- -----------------------------------------------------

DELIMITER $$
USE `univespers`$$
CREATE PROCEDURE `_GetUsuario` (IN tokenId INT, OUT usuarioId INT)
BEGIN
	SELECT u.id INTO usuarioId
		FROM (SELECT * FROM Token WHERE id = tokenId) AS t
		INNER JOIN Usuario AS u ON t.usuario_id = u.id
		LIMIT 1;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure _GetPolo
-- -----------------------------------------------------

DELIMITER $$
USE `univespers`$$
CREATE PROCEDURE `_GetPolo` (IN nome VARCHAR(256), OUT id INT)
BEGIN
	SELECT p.id INTO id
		FROM Polo AS p WHERE p.nome = nome
        LIMIT 1;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure _GetCurso
-- -----------------------------------------------------

DELIMITER $$
USE `univespers`$$
CREATE PROCEDURE `_GetCurso` (IN nome VARCHAR(256), OUT id INT)
BEGIN
	SELECT c.id INTO id
		FROM Curso AS c WHERE c.nome = nome
        LIMIT 1;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure PesquisarColegas
-- -----------------------------------------------------

DELIMITER $$
USE `univespers`$$
CREATE PROCEDURE `PesquisarColegas` (termo VARCHAR(256), pagina INT, quantidade INT)
BEGIN
	DECLARE totalColegas INT;
    
	SELECT COUNT(*) INTO totalColegas FROM Estudante AS e
		INNER JOIN Polo AS p ON e.polo_id = p.id
		INNER JOIN Curso AS c ON e.curso_id = c.id
		WHERE 
			e.nome LIKE CONCAT("%", termo, "%")
			OR p.nome LIKE CONCAT("%", termo, "%")
			OR c.nome LIKE CONCAT("%", termo, "%");
    
	SELECT
		BIN_TO_UUID(e.uuid) AS "uuid",
		e.nome AS "nome",
		p.nome AS "polo",
		c.nome AS "curso",
        totalColegas AS "total"
		FROM Estudante AS e
		INNER JOIN Polo AS p ON e.polo_id = p.id
		INNER JOIN Curso AS c ON e.curso_id = c.id
		WHERE 
			e.nome LIKE CONCAT("%", termo, "%")
			OR p.nome LIKE CONCAT("%", termo, "%")
			OR c.nome LIKE CONCAT("%", termo, "%")
		LIMIT quantidade
		OFFSET pagina;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure GetColega
-- -----------------------------------------------------

DELIMITER $$
USE `univespers`$$
CREATE PROCEDURE `GetColega` (uuid VARCHAR(36))
BEGIN
	SELECT
		BIN_TO_UUID(e.uuid) AS "uuid",
		e.nome AS "nome",
		p.nome AS "polo",
		c.nome AS "curso"
		FROM Estudante AS e
		INNER JOIN Polo AS p ON e.polo_id = p.id
		INNER JOIN Curso AS c ON e.curso_id = c.id
		WHERE BIN_TO_UUID(e.uuid) = uuid;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure GetColegaDetalhes
-- -----------------------------------------------------

DELIMITER $$
USE `univespers`$$
CREATE PROCEDURE `GetColegaDetalhes` (uuid VARCHAR(36))
BEGIN
	SELECT
		BIN_TO_UUID(e.uuid) AS "uuid",
		e.nome AS "nome",
		p.nome AS "polo",
		c.nome AS "curso",
		e.telefone AS "telefone",
		e.temWhatsapp AS "temWhatsapp"
		FROM Estudante AS e
		INNER JOIN Polo AS p ON e.polo_id = p.id
		INNER JOIN Curso AS c ON e.curso_id = c.id
		WHERE BIN_TO_UUID(e.uuid) = uuid;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure GetColegaContatos
-- -----------------------------------------------------

DELIMITER $$
USE `univespers`$$
CREATE PROCEDURE `GetColegaContatos` (uuid VARCHAR(36))
BEGIN
	SELECT
		c.nome AS "nome",
		c.url AS "link"
		FROM Estudante AS e
		INNER JOIN Contato AS c ON c.estudante_id = e.id
		WHERE BIN_TO_UUID(e.uuid) = uuid;
END$$

DELIMITER ;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
