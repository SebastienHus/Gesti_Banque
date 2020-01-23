-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3308
-- Généré le :  jeu. 23 jan. 2020 à 11:16
-- Version du serveur :  8.0.18
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gestibankv2`
--

-- --------------------------------------------------------

--
-- Structure de la table `adresse`
--

DROP TABLE IF EXISTS `adresse`;
CREATE TABLE IF NOT EXISTS `adresse` (
  `IdAdresse` int(11) NOT NULL AUTO_INCREMENT,
  `numero` varchar(255) NOT NULL,
  `complement` varchar(255) NOT NULL,
  `ville` varchar(255) NOT NULL,
  `codePostal` varchar(255) NOT NULL,
  `rue` varchar(255) NOT NULL,
  PRIMARY KEY (`IdAdresse`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `affectationhisto`
--

DROP TABLE IF EXISTS `affectationhisto`;
CREATE TABLE IF NOT EXISTS `affectationhisto` (
  `idAffectation` int(11) NOT NULL,
  `idDemande` int(11) NOT NULL,
  `idAdmin` int(11) NOT NULL,
  `idAgent` int(11) NOT NULL,
  PRIMARY KEY (`idAffectation`),
  KEY `ct4` (`idAdmin`),
  KEY `ct5` (`idAgent`),
  KEY `ct6` (`idDemande`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

DROP TABLE IF EXISTS `compte`;
CREATE TABLE IF NOT EXISTS `compte` (
  `IdCompte` int(11) NOT NULL AUTO_INCREMENT,
  `numCompte` varchar(255) NOT NULL,
  `solde` float NOT NULL,
  `IdClient` int(11) NOT NULL,
  `dateCreation` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `rib` varchar(255) NOT NULL,
  `tauxAGIOS` float NOT NULL,
  `autorisationDecouvert` tinyint(1) NOT NULL,
  `plafondDecouvert` float NOT NULL,
  `tauxInterets` float NOT NULL,
  `seuilMinRemu` float NOT NULL,
  PRIMARY KEY (`IdCompte`),
  KEY `cts13` (`IdClient`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `demande`
--

DROP TABLE IF EXISTS `demande`;
CREATE TABLE IF NOT EXISTS `demande` (
  `IDDemande` int(11) NOT NULL AUTO_INCREMENT,
  `id_client` int(11) NOT NULL,
  `dateCreation` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`IDDemande`),
  KEY `cts11` (`id_client`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `justificatif`
--

DROP TABLE IF EXISTS `justificatif`;
CREATE TABLE IF NOT EXISTS `justificatif` (
  `IdJustificatif` int(11) NOT NULL AUTO_INCREMENT,
  `justificatif` longblob NOT NULL,
  `IDDemande` int(11) NOT NULL,
  PRIMARY KEY (`IdJustificatif`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `notification`
--

DROP TABLE IF EXISTS `notification`;
CREATE TABLE IF NOT EXISTS `notification` (
  `IdNotification` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(255) NOT NULL,
  `dateNotification` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `idAgent` int(11) NOT NULL,
  `idClient` int(11) NOT NULL,
  `idTransaction` int(11) NOT NULL,
  PRIMARY KEY (`IdNotification`),
  KEY `cts8` (`idClient`),
  KEY `cts9` (`idAgent`),
  KEY `cts10` (`idTransaction`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `IdRole` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(255) NOT NULL,
  PRIMARY KEY (`IdRole`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
CREATE TABLE IF NOT EXISTS `transaction` (
  `IdTransaction` int(11) NOT NULL AUTO_INCREMENT,
  `numCompte` int(11) NOT NULL,
  `numTransaction` int(11) NOT NULL,
  `dateEmission` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `typeTransaction` varchar(255) NOT NULL,
  `idVirement` int(11) NOT NULL,
  PRIMARY KEY (`IdTransaction`),
  KEY `cts15` (`numCompte`),
  KEY `cts16` (`idVirement`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telephone` int(11) NOT NULL,
  `IdRole` int(11) NOT NULL,
  `matricule` varchar(255) NOT NULL,
  `idNotification` int(11) NOT NULL,
  `idBoss` int(11) NOT NULL,
  `idVisaVis` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `cst1` (`IdRole`),
  KEY `ct2` (`idBoss`),
  KEY `ct3` (`idVisaVis`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `virement`
--

DROP TABLE IF EXISTS `virement`;
CREATE TABLE IF NOT EXISTS `virement` (
  `IdVirement` int(11) NOT NULL AUTO_INCREMENT,
  `numCompteDeb` int(11) NOT NULL,
  `numCompteCred` int(11) NOT NULL,
  PRIMARY KEY (`IdVirement`),
  KEY `cts17` (`numCompteDeb`),
  KEY `cts18` (`numCompteCred`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
