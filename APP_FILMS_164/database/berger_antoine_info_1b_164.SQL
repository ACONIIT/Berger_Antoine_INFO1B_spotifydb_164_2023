-- OM 2021.02.17
-- FICHIER MYSQL POUR FAIRE FONCTIONNER LES EXEMPLES
-- DE REQUETES MYSQL
-- Database: berger_antoine_info_1b_164

-- Destruction de la BD si elle existe.
-- Pour être certain d'avoir la dernière version des données

DROP DATABASE IF EXISTS berger_antoine_info_1b_164;

-- Création d'un nouvelle base de donnée

CREATE DATABASE IF NOT EXISTS berger_antoine_info_1b_164;

-- Utilisation de cette base de donnée

USE berger_antoine_info_1b_164;
-- --------------------------------------------------------
-- --------------------------------------------------------
-- Hôte :                        localhost
-- Version du serveur:           5.1.72-community - MySQL Community Server (GPL)
-- SE du serveur:                Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Export de la structure de la base pour berger_antoine_info_1b_164
DROP DATABASE IF EXISTS `berger_antoine_info_1b_164`;
CREATE DATABASE IF NOT EXISTS `berger_antoine_info_1b_164` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `berger_antoine_info_1b_164`;

-- Export de la structure de la table berger_antoine_info_1b_164. t_artiste
DROP TABLE IF EXISTS `t_artiste`;
CREATE TABLE IF NOT EXISTS `t_artiste` (
  `id_artiste` int(11) NOT NULL AUTO_INCREMENT,
  `nom_artiste` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_artiste`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Export de données de la table berger_antoine_info_1b_164.t_artiste : ~9 rows (environ)
/*!40000 ALTER TABLE `t_artiste` DISABLE KEYS */;
INSERT INTO `t_artiste` (`id_artiste`, `nom_artiste`) VALUES
	(1, 'Freeze Corleone'),
	(2, 'Damso'),
	(3, 'Josman'),
	(4, 'Ajna'),
	(5, 'Yvnnis'),
	(6, 'Alpha Wann'),
	(7, 'La feve'),
	(8, 'Luther'),
	(9, 'Luv Resval');
/*!40000 ALTER TABLE `t_artiste` ENABLE KEYS */;

-- Export de la structure de la table berger_antoine_info_1b_164. t_artiste_avoir_son
DROP TABLE IF EXISTS `t_artiste_avoir_son`;
CREATE TABLE IF NOT EXISTS `t_artiste_avoir_son` (
  `id_artiste_avoir_son` int(11) NOT NULL AUTO_INCREMENT,
  `fk_artiste` int(11) DEFAULT NULL,
  `fk_son` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_artiste_avoir_son`),
  KEY `FK_t_artiste_avoir_son_t_artiste` (`fk_artiste`),
  KEY `FK_t_artiste_avoir_son_t_son` (`fk_son`),
  CONSTRAINT `FK_t_artiste_avoir_son_t_artiste` FOREIGN KEY (`fk_artiste`) REFERENCES `t_artiste` (`id_artiste`),
  CONSTRAINT `FK_t_artiste_avoir_son_t_son` FOREIGN KEY (`fk_son`) REFERENCES `t_son` (`id_titre_son`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table berger_antoine_info_1b_164.t_artiste_avoir_son : ~0 rows (environ)
/*!40000 ALTER TABLE `t_artiste_avoir_son` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_artiste_avoir_son` ENABLE KEYS */;

-- Export de la structure de la table berger_antoine_info_1b_164. t_mail
DROP TABLE IF EXISTS `t_mail`;
CREATE TABLE IF NOT EXISTS `t_mail` (
  `id_mail` int(11) NOT NULL AUTO_INCREMENT,
  `nom_mail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_mail`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table berger_antoine_info_1b_164.t_mail : ~0 rows (environ)
/*!40000 ALTER TABLE `t_mail` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_mail` ENABLE KEYS */;

-- Export de la structure de la table berger_antoine_info_1b_164. t_personne
DROP TABLE IF EXISTS `t_personne`;
CREATE TABLE IF NOT EXISTS `t_personne` (
  `id_t_personne` int(11) NOT NULL AUTO_INCREMENT,
  `nom_pers` varchar(50) DEFAULT NULL,
  `prenom_pers` varchar(50) DEFAULT NULL,
  `date_naiss_pers` date DEFAULT NULL,
  `pays_origine_pers` varchar(50) DEFAULT NULL,
  `sexe_pers` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_t_personne`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table berger_antoine_info_1b_164.t_personne : ~0 rows (environ)
/*!40000 ALTER TABLE `t_personne` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_personne` ENABLE KEYS */;

-- Export de la structure de la table berger_antoine_info_1b_164. t_personne_avoir_artiste
DROP TABLE IF EXISTS `t_personne_avoir_artiste`;
CREATE TABLE IF NOT EXISTS `t_personne_avoir_artiste` (
  `id_personne_avoir_artiste` int(11) NOT NULL,
  `fk_personne` int(11) DEFAULT NULL,
  `fk_artiste` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_personne_avoir_artiste`),
  KEY `FK_t_personne_avoir_artiste_t_personne` (`fk_personne`),
  KEY `FK_t_personne_avoir_artiste_t_artiste` (`fk_artiste`),
  CONSTRAINT `FK_t_personne_avoir_artiste_t_artiste` FOREIGN KEY (`fk_artiste`) REFERENCES `t_artiste` (`id_artiste`),
  CONSTRAINT `FK_t_personne_avoir_artiste_t_personne` FOREIGN KEY (`fk_personne`) REFERENCES `t_personne` (`id_t_personne`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table berger_antoine_info_1b_164.t_personne_avoir_artiste : ~0 rows (environ)
/*!40000 ALTER TABLE `t_personne_avoir_artiste` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_personne_avoir_artiste` ENABLE KEYS */;

-- Export de la structure de la table berger_antoine_info_1b_164. t_personne_avoir_mail
DROP TABLE IF EXISTS `t_personne_avoir_mail`;
CREATE TABLE IF NOT EXISTS `t_personne_avoir_mail` (
  `id_personne_avoir_mail` int(11) NOT NULL AUTO_INCREMENT,
  `fk_personne` int(11) DEFAULT NULL,
  `fk_mail` int(11) DEFAULT NULL,
  `date_mail` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_personne_avoir_mail`),
  KEY `FK_t_personne_avoir_mail_t_personne` (`fk_personne`),
  KEY `FK_t_personne_avoir_mail_t_mail` (`fk_mail`),
  CONSTRAINT `FK_t_personne_avoir_mail_t_mail` FOREIGN KEY (`fk_mail`) REFERENCES `t_mail` (`id_mail`),
  CONSTRAINT `FK_t_personne_avoir_mail_t_personne` FOREIGN KEY (`fk_personne`) REFERENCES `t_personne` (`id_t_personne`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table berger_antoine_info_1b_164.t_personne_avoir_mail : ~0 rows (environ)
/*!40000 ALTER TABLE `t_personne_avoir_mail` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_personne_avoir_mail` ENABLE KEYS */;

-- Export de la structure de la table berger_antoine_info_1b_164. t_son
DROP TABLE IF EXISTS `t_son`;
CREATE TABLE IF NOT EXISTS `t_son` (
  `id_titre_son` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(50) DEFAULT NULL,
  `album` varchar(50) DEFAULT NULL,
  `artiste` varchar(50) DEFAULT NULL,
  `durée` time DEFAULT NULL,
  PRIMARY KEY (`id_titre_son`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table berger_antoine_info_1b_164.t_son : ~0 rows (environ)
/*!40000 ALTER TABLE `t_son` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_son` ENABLE KEYS */;

-- Export de la structure de la table berger_antoine_info_1b_164. t_son_avoir_tags
DROP TABLE IF EXISTS `t_son_avoir_tags`;
CREATE TABLE IF NOT EXISTS `t_son_avoir_tags` (
  `id_son_avoir_tags` int(11) NOT NULL AUTO_INCREMENT,
  `fk_son` int(11) NOT NULL DEFAULT '0',
  `fk_tags` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_son_avoir_tags`),
  KEY `FK_t_son_avoir_tags_t_son` (`fk_son`),
  KEY `FK_t_son_avoir_tags_t_tags` (`fk_tags`),
  CONSTRAINT `FK_t_son_avoir_tags_t_tags` FOREIGN KEY (`fk_tags`) REFERENCES `t_tags` (`id_tags`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table berger_antoine_info_1b_164.t_son_avoir_tags : ~0 rows (environ)
/*!40000 ALTER TABLE `t_son_avoir_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_son_avoir_tags` ENABLE KEYS */;

-- Export de la structure de la table berger_antoine_info_1b_164. t_tags
DROP TABLE IF EXISTS `t_tags`;
CREATE TABLE IF NOT EXISTS `t_tags` (
  `id_tags` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_tags`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Export de données de la table berger_antoine_info_1b_164.t_tags : ~4 rows (environ)
/*!40000 ALTER TABLE `t_tags` DISABLE KEYS */;
INSERT INTO `t_tags` (`id_tags`, `tag`) VALUES
	(1, 'drill'),
	(2, 'trap'),
	(3, 'hpop'),
	(4, 'jersey');
/*!40000 ALTER TABLE `t_tags` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
