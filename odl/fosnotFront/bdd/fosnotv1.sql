-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 04 jan. 2023 à 14:37
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";
SET AUTOCOMMIT = 0;
START TRANSACTION;

---------------------------------------
DROP DATABASE IF EXISTS fosnotv1;
CREATE DATABASE fosnotv1
  DEFAULT CHARACTER_SET utf8mb4
  COLLATE utf8mb4_general_ci;
  USE fosnotv1;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `fosnotv1`
--

-- --------------------------------------------------------

--
-- Structure de la table `education`
--

DROP TABLE IF EXISTS `education`;
CREATE TABLE IF NOT EXISTS `education` (
  `edu_id` int(11) NOT NULL AUTO_INCREMENT,
  `edu_title` varchar(50) NOT NULL,
  `edu_category` varchar(50) NOT NULL,
  `edu_type` varchar(50) NOT NULL,
  `edu_duration` varchar(50) NOT NULL,
  `edu_description` varchar(200) NOT NULL,
  `edu_price` decimal(5,2) NOT NULL,
  PRIMARY KEY (`edu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `education`
--

INSERT INTO `education` (`edu_id`, `edu_title`, `edu_category`, `edu_type`, `edu_duration`, `edu_description`, `edu_price`) VALUES
(1, 'Cour d’éveil et d’initiation au solfège pour les 5', 'solfège', 'collectif', '1 heure', 'Dans ce cours les enfants apprennent la base des rythmes les notes et les accords.\r\n\r\nCours assuré par : jean Leminou', '45.00'),
(2, 'Cour de solfège à partir de 7-8 ans', 'solfège', 'collectif', '1 heure', 'Dans ce cours les enfants apprennent comment lire une partition la rythmique et les théorie musicales.\r\n\r\nCours assuré par : Micheal Tirioc', '42.00'),
(3, 'Cour d’instrument à partir de 7-8 ans', 'instrument', 'collectif', '30 minutes', 'Dans ce cours les enfants apprennent comment lire une partition la rythmique et les théorie musicales.\r\n\r\nCours assuré par : Micheal Tirioc', '45.00'),
(4, 'Cour d’instrument pour les adultes', 'solfège', 'individuel', '1h30', 'Dans ce cours les adultes travaille leur instuments dans la bonne humeur. Cette classe participe à des concerts (voire Manifestation).\r\n\r\nCours assuré par : Cécile Molineux', '45.00'),
(5, 'Classe d’orchestre à partir de 2 ans de pratique', 'instrument', 'collectif', '45 minutes 0 1 heure', 'Dans ce cours les enfants font de la pratique d’instrument ensemble. Cette classe participe à des concerts (voire Manifestation).\r\n\r\nCours assuré par : Arneau Marlo', '45.00');

-- --------------------------------------------------------

--
-- Structure de la table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `eve_id` int(11) NOT NULL AUTO_INCREMENT,
  `eve_title` varchar(50) NOT NULL,
  `eve_date` date NOT NULL,
  `eve_type` varchar(50) NOT NULL,
  `eve_description` varchar(200) NOT NULL,
  `eve_directory` varchar(100) NOT NULL,
  PRIMARY KEY (`eve_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `events`
--

INSERT INTO `events` (`eve_id`, `eve_title`, `eve_date`, `eve_type`, `eve_description`, `eve_directory`) VALUES
(1, 'Bourse aux vetements', '2021-04-17', 'past', 'description', 'evenPass01.jpg'),
(2, 'Auditions - portes ouvertes', '2021-05-15', 'past', 'description', 'evenPass02.jpg'),
(3, 'Bourse aux vetements', '2021-10-16', 'past', 'description', 'evenPass03.jpg'),
(4, 'Fetes de Noel', '2021-12-23', 'past', 'description', 'evenPass04.jpg'),
(5, 'Bourse aux vetements', '2022-04-16', 'past', 'description', 'evenPass05.jpg'),
(6, 'Auditions - portes ouvertes', '2022-05-14', 'past', 'description', 'evenPass06.jpg'),
(7, 'Bourse aux vetements', '2022-10-15', 'past', 'description', 'evenPass07.jpg'),
(8, 'Fetes de Noel', '2022-12-24', 'futur', 'description', 'evenFutur01.jpg'),
(9, 'Bourse aux vetements', '2023-04-15', 'futur', 'description', 'evenFutur02.jpg'),
(10, 'Auditions - portes ouvertes', '2023-05-20', 'futur', 'description', 'evenFutur03.jpg'),
(11, 'Bourse aux vetements', '2023-10-14', 'futur', 'description', 'evenFuture04.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `instruments`
--

DROP TABLE IF EXISTS `instruments`;
CREATE TABLE IF NOT EXISTS `instruments` (
  `ins_id` int(11) NOT NULL AUTO_INCREMENT,
  `ins_name` varchar(50) NOT NULL,
  `ins_description` varchar(200) NOT NULL,
  `ins_picture` varchar(50) NOT NULL,
  PRIMARY KEY (`ins_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `instruments`
--

INSERT INTO `instruments` (`ins_id`, `ins_name`, `ins_description`, `ins_picture`) VALUES
(1, 'Batterie', 'Une batterie est un instrument de musique qui, la plupart du temps, est utilisé comme base rythmique (en conjonction avec la guitare basse, on parle de section rythmique).</br>Elle peut être jouée pou', 'licencefosnotimagesinstrumentsins_01.jpg'),
(2, 'Clarinette', 'La clarinette (du provençal clarin désignant un hautbois) est un instrument de musique à vent de la famille des bois caractérisé par son anche simple et sa perce quasi cylindrique. Elle aurait été cré', 'licencefosnotimagesinstrumentsins_02.jpg'),
(3, 'Cor d’harmonie', 'Le cor d’harmonie est un instrument à vent de la famille des cuivres. C’est la version moderne du cor à pistons inventé au xixe siècle sur la base du cor naturel.</br>Il est caractérisé par son embouc', 'licencefosnotimagesinstrumentsins_03.jpg'),
(4, 'Flûte traversière', 'La flûte traversière est un instrument à vent de la famille des bois. La flûte traversière partage avec les instruments de la famille des flûtes la méthode de production du son : l’air soufflé est mis', 'licencefosnotimagesinstrumentsins_04.jpg'),
(5, 'Hautbois', 'Le terme « hautbois » désigne tout instrument à anche double mise directement dans la bouche ou enfermée dans une « capsule » (tube recouvrant l’anche, comme l’alboka basque), mise en vibration par le', 'licencefosnotimagesinstrumentsins_05.jpg'),
(6, 'Piano', 'Le piano est un instrument de musique polyphonique, à clavier, de la famille des cordes frappées. Il se présente sous deux formes : v-piano droit, avec les cordes verticales ; </br>-piano à queue, ave', 'licencefosnotimagesinstrumentsins_06.jpg'),
(7, 'Saxophone', 'Le saxophone est un instrument de musique à vent, appartenant à la famille des bois. Il a été inventé par le Belge Adolphe Sax et breveté à Paris le 21 mars 1846. </br>Il ne doit pas être confondu ave', 'licencefosnotimagesinstrumentsins_07.jpg'),
(8, 'Trompette', 'La trompette est un instrument de musique à vent de la famille des cuivres clairs. Elle est fabriquée dans un tube de 1,50 m de long comme le cornet. Le métal utilisé pour fabriquer la trompette est s', 'licencefosnotimagesinstrumentsins_08.jpg'),
(9, 'Orchestre', 'Un orchestre est un ensemble de musiciens instrumentistes réunis pour l’exécution d’une œuvre musicale. Le nombre et la combinaison des interprètes dépendent du compositeur, de l’époque et du genre du', 'licencefosnotimagesinstrumentsins_98.jpg'),
(10, 'Solfège', 'Le solfège désigne une méthode d’apprentissage de la musique faite d’exercices de lecture et d’audition musicales. Dans la pratique, cette méthode est centrée sur l’apprentissage du système de notatio', 'licencefosnotimagesinstrumentsins_99.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `managment`
--

DROP TABLE IF EXISTS `managment`;
CREATE TABLE IF NOT EXISTS `managment` (
  `man_id` int(11) NOT NULL AUTO_INCREMENT,
  `man_fname` varchar(50) NOT NULL,
  `man_lname` varchar(50) NOT NULL,
  `man_position` varchar(50) NOT NULL,
  `man_description` varchar(200) NOT NULL,
  `man_picture` varchar(50) NOT NULL,
  PRIMARY KEY (`man_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `managment`
--

INSERT INTO `managment` (`man_id`, `man_fname`, `man_lname`, `man_position`, `man_description`, `man_picture`) VALUES
(1, 'Catherine', 'Hébert', 'Présidente', 'Présidente de l’association Fosnot depuis 2015, je me dévoue pour que notre école diffuse un enseignement de qualité.', 'presidente.jpg'),
(2, 'Alexandre', 'Trésorier', 'Trésorie', 'Trésorier de Fosnot depuis 2014, je suis celle qui garantis la bonne gestion financière et de la bonne utilisation des fonds de l’association.', 'tresorier.jpg'),
(3, 'Danielle', 'Maillard', 'Directrice', 'Directrice depuis 2012, j’ai la charge de la bonne marche de l’association et de veiller au respect des objectif opérationnels.', 'directrice.jpg'),
(4, 'Nathalie', 'Roussel', 'Vice-présidente', 'Devenue Vice-Présidente en 2017, je suis chargé d’assister la Présidente dans la réalisation de ses missions.', 'vicePresident.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `organisation`
--

DROP TABLE IF EXISTS `organisation`;
CREATE TABLE IF NOT EXISTS `organisation` (
  `org_id` int(11) NOT NULL AUTO_INCREMENT,
  `org_name` varchar(100) NOT NULL,
  `org_adress` varchar(100) NOT NULL,
  `org_postal_code` smallint(6) NOT NULL,
  `org_city` varchar(50) DEFAULT NULL,
  `org_country` varchar(50) DEFAULT NULL,
  `org_phone` smallint(10) NOT NULL,
  `org_email` varchar(50) NOT NULL,
  `org_description` text NOT NULL,
  PRIMARY KEY (`org_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `organisation`
--

INSERT INTO `organisation` (`org_id`, `org_name`, `org_adress`, `org_postal_code`, `org_city`, `org_country`, `org_phone`, `org_email`, `org_description`) VALUES
(1, 'Ecole de musique fosnot', '234 avenue de colmar', 32767, 'Strasbourg', 'France', 32767, 'info@fosnot.fr', 'L’école de musique (association loi 1901) a fêté ses 50 ans d’existence en 2018.</br>Nos formons des élèves, jeunes et adultes, à la pratique d’un instrument avec pour objectif de recruter de futurs musiciens pour l’Harmonie de votre village.</br>Nous employons 7 professeurs par l’intermédiaire d’un groupement d’employeurs.</br>En moyenne 40 élèves fréquentent notre école chaque année.</br>Nous sommes subventionnée par le Conseil Départemental et M2a, et fiancée par les participations aux manifestations et cours.\r\n</br>\r\n</br>');

-- --------------------------------------------------------

--
-- Structure de la table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
CREATE TABLE IF NOT EXISTS `teachers` (
  `tea_id` int(11) NOT NULL AUTO_INCREMENT,
  `tea_fname` varchar(50) NOT NULL,
  `tea_lname` varchar(50) NOT NULL,
  `tea_description` varchar(200) NOT NULL,
  `tea_picture` varchar(50) NOT NULL,
  PRIMARY KEY (`tea_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `teachers`
--

INSERT INTO `teachers` (`tea_id`, `tea_fname`, `tea_lname`, `tea_description`, `tea_picture`) VALUES
(1, 'Sean', 'Ortis', 'J’ai pratiqué beaucoup d’instrument à percussion, et j’ai enseigné la batterie dans plusieurs écoles.J’ai rejoins Fosnot en 2013.', 'professeur1.jpg'),
(2, 'Adrien', 'Fauré', 'Je joue du cor d’harmonie depuis mon plus jeune âge. Je suis professeur à Fosnot depuis 2018.', 'professeur2.jpg'),
(3, 'Anne', 'Delmas', 'Je pratique la flute traversière depuis mon enfance, et j’ai voulue partager ma passion avec d’autre. J’enseigne à Fosnot de puis 2014.', 'professeur3.jpg'),
(4, 'Laurent', 'Martel', 'Je suis professeur de piano depuis 2005. J’ai intégré Fosnot en 2009 et enseigne aux élèves jeunes ou âgées.', 'professeur4.jpg'),
(5, 'Manon', 'Meyer', 'J’enseigne le saxophone depuis 2005 et j’ enseigne aussi le solfège. J’ai intégré Fosnot en 2017.', 'professeur5.jpg'),
(6, 'Rachel', 'Rhonda', 'Je suis professeure de hautbois depuis 2016. J’ai intégré l’équipe de professeurs en 2018.', 'professeur6.jpg'),
(7, 'Thibault', 'Rodrigues', 'Je suis professeur de clarinette et de trompette à Fosnot depuis 2016. Je pratique aussi d’autres instruments (violon, piano)', 'professeur7.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `teaches`
--

DROP TABLE IF EXISTS `teaches`;
CREATE TABLE IF NOT EXISTS `teaches` (
  `tea_id` int(11) NOT NULL,
  `ins_id` int(11) NOT NULL,
  PRIMARY KEY (`tea_id`,`ins_id`),
  KEY `teaches_ibfk_2` (`ins_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `teaches`
--

INSERT INTO `teaches` (`tea_id`, `ins_id`) VALUES
(1, 1),
(1, 10),
(2, 3),
(3, 4),
(4, 6),
(4, 9),
(5, 7),
(6, 5),
(7, 2),
(7, 8);

-- --------------------------------------------------------

--
-- Structure de la table `themes`
--

DROP TABLE IF EXISTS `themes`;
CREATE TABLE IF NOT EXISTS `themes` (
  `the_id` int(11) NOT NULL AUTO_INCREMENT,
  `the_name` varchar(50) NOT NULL,
  PRIMARY KEY (`the_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `themes`
--

INSERT INTO `themes` (`the_id`, `the_name`) VALUES
(1, 'Association'),
(2, 'Enseignement'),
(3, 'Evenements'),
(4, 'Infos & Contact');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `use_id` int(11) NOT NULL AUTO_INCREMENT,
  `use_login` varchar(50) NOT NULL,
  `use_passw` varchar(50) NOT NULL,
  `use_fname` varchar(50) NOT NULL,
  `use_lname` varchar(50) NOT NULL,
  PRIMARY KEY (`use_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`use_id`, `use_login`, `use_passw`, `use_fname`, `use_lname`) VALUES
(1, 'admin', 'fosnot123*', 'Thuc', 'Fairfax');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
