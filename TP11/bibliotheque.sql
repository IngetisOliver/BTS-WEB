-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Mar 05 Décembre 2023 à 14:34
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `bibliotheque`
--

-- --------------------------------------------------------

--
-- Structure de la table `adherents`
--

CREATE TABLE IF NOT EXISTS `adherents` (
  `Id_Adherent` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(50) NOT NULL,
  `Prenom` varchar(50) NOT NULL,
  `Date_naissance` date NOT NULL,
  `Date_adhesion` date NOT NULL,
  `Adresse` varchar(50) NOT NULL,
  `Num_tel` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  PRIMARY KEY (`Id_Adherent`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `adherents`
--

INSERT INTO `adherents` (`Id_Adherent`, `Nom`, `Prenom`, `Date_naissance`, `Date_adhesion`, `Adresse`, `Num_tel`, `mail`) VALUES
(1, 'Lefevre', 'Hugo', '2005-12-19', '2007-12-19', '82 rue de l''Aigle', '0644626885', 'h@gmail.com'),
(2, 'Moreau', 'Marion', '2006-12-12', '2011-12-14', '61 Rue du Palais', '0644626883', 'm@gmail.com'),
(3, 'Dupont', 'Sophie', '2006-12-13', '2007-12-19', '82 rue de l''Aigle', '0644626885', 's@gmail.com'),
(4, 'Martin', 'Alexandre', '2004-12-28', '2008-12-10', '61 Rue du Palais', '0644626883', 'a@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `auteurs`
--

CREATE TABLE IF NOT EXISTS `auteurs` (
  `ID_Auteur` varchar(50) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Prenom` varchar(50) NOT NULL,
  `Date_naissance` date NOT NULL,
  PRIMARY KEY (`ID_Auteur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `auteurs`
--

INSERT INTO `auteurs` (`ID_Auteur`, `Nom`, `Prenom`, `Date_naissance`) VALUES
('1', 'Dubois', 'Camille', '1998-04-15'),
('2', 'Martin', 'Gabriel', '2004-12-14'),
('3', 'Sanchez', 'Elena', '2005-12-22'),
('4', 'Lambert', 'Lea', '1999-12-30');

-- --------------------------------------------------------

--
-- Structure de la table `emprunts`
--

CREATE TABLE IF NOT EXISTS `emprunts` (
  `Id_emprunt` int(11) NOT NULL AUTO_INCREMENT,
  `Date_emprunt` date NOT NULL,
  `Duree` int(11) NOT NULL,
  `Id_Adherent` int(11) NOT NULL,
  `Reference_livre` varchar(50) NOT NULL,
  PRIMARY KEY (`Id_emprunt`),
  KEY `Id_Adherent` (`Id_Adherent`,`Reference_livre`),
  KEY `Reference_livre` (`Reference_livre`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `emprunts`
--

INSERT INTO `emprunts` (`Id_emprunt`, `Date_emprunt`, `Duree`, `Id_Adherent`, `Reference_livre`) VALUES
(1, '2007-12-18', 120, 3, '15'),
(2, '2005-12-07', 60, 4, '14'),
(3, '1999-12-22', 120, 2, '12'),
(4, '1999-12-27', 360, 1, '13');

-- --------------------------------------------------------

--
-- Structure de la table `livres`
--

CREATE TABLE IF NOT EXISTS `livres` (
  `Reference_livre` varchar(50) NOT NULL,
  `Nbre_pages` int(11) NOT NULL,
  `ID_Auteur` varchar(50) NOT NULL,
  `Date_publication` date NOT NULL,
  `Genre` varchar(50) NOT NULL,
  `Disponibilité` tinyint(1) NOT NULL,
  `Nbre_emprunts` int(11) NOT NULL,
  `Etat` varchar(50) NOT NULL,
  `Nbre_exemplaire` int(11) NOT NULL,
  PRIMARY KEY (`Reference_livre`),
  KEY `ID_Auteur` (`ID_Auteur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `livres`
--

INSERT INTO `livres` (`Reference_livre`, `Nbre_pages`, `ID_Auteur`, `Date_publication`, `Genre`, `Disponibilité`, `Nbre_emprunts`, `Etat`, `Nbre_exemplaire`) VALUES
('12', 56, '1', '1998-12-19', 'Fanstasy', 0, 2, 'neuf', 3),
('13', 100, '2', '2000-12-14', 'Sciences', 0, 5, 'abime', 3),
('14', 123, '3', '2006-12-08', 'Fanstasy', 0, 5, 'neuf', 8),
('15', 241, '4', '2000-12-15', 'Sciences', 0, 6, 'neuf', 6);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `emprunts`
--
ALTER TABLE `emprunts`
  ADD CONSTRAINT `emprunts_ibfk_2` FOREIGN KEY (`Id_Adherent`) REFERENCES `adherents` (`Id_Adherent`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `emprunts_ibfk_1` FOREIGN KEY (`Reference_livre`) REFERENCES `livres` (`Reference_livre`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `livres`
--
ALTER TABLE `livres`
  ADD CONSTRAINT `livres_ibfk_1` FOREIGN KEY (`ID_Auteur`) REFERENCES `auteurs` (`ID_Auteur`) ON DELETE CASCADE ON UPDATE CASCADE;
