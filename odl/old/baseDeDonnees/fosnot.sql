-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 07 déc. 2022 à 13:00
-- Version du serveur : 8.0.30
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `fosnot.fr`
--

-- --------------------------------------------------------

--
-- Structure de la table `organisation`
--

DROP TABLE IF EXISTS `organisation`;
CREATE TABLE IF NOT EXISTS `organisation` (
  `org_id` int NOT NULL AUTO_INCREMENT,
  `org_name` varchar(100) NOT NULL,
  `org_adress` varchar(100) NOT NULL,
  `org_postal_code` SMALLINT(6) NOT NULL,
  `org_city` varchar(50),
  `org_country` varchar(50),
  `org_phone` SMALLINT(10) NOT NULL,
  `org_email` varchar(50) NOT NULL,
  `org_description` text NOT NULL,
  PRIMARY KEY (`org_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `organisation`
--

INSERT INTO `organisation` (`org_id`, `org_name`, `org_adress`, `org_postal_code`, `org_city`, `org_country`, `org_phone`, `org_email`, `org_description`) VALUES
(1, 'Ecole de musique fosnot', '234 avenue de colmar', 67100, 'Strasbourg', 'France', '0368672000', 'info@fosnot.fr', 'L’école de musique (association loi 1901) a fêté ses 50 ans d’existence en 2018.</br>Nos formons des élèves, jeunes et adultes, à la pratique d’un instrument avec pour objectif de recruter de futurs musiciens pour l’Harmonie de votre village.</br>Nous employons 7 professeurs par l’intermédiaire d’un groupement d’employeurs.</br>En moyenne 40 élèves fréquentent notre école chaque année.</br>Nous sommes subventionnée par le Conseil Départemental et M2a, et fiancée par les participations aux manifestations et cours.</br>');

-- --------------------------------------------------------

--
-- Structure de la table `themes`
--

DROP TABLE IF EXISTS `themes`;
CREATE TABLE IF NOT EXISTS `themes` (
  `the_id` int NOT NULL AUTO_INCREMENT,
  `the_name` varchar(50) NOT NULL,
  PRIMARY KEY (`the_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Structure de la table `managment`
--

DROP TABLE IF EXISTS `managment`;
CREATE TABLE IF NOT EXISTS `managment` (
  `man_id` int NOT NULL AUTO_INCREMENT,
  `man_fname` varchar(50) NOT NULL,
  `man_lname` varchar(50) NOT NULL,
  `man_position` varchar(50) NOT NULL,
  `man_description` varchar(200) NOT NULL,
  `man_picture` varchar(50) NOT NULL,
  PRIMARY KEY (`man_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `managment`
--

INSERT INTO `managment` (`man_id`, `man_fname`, `man_lname`, `man_position`, `man_description`, `man_picture`) VALUES
(1, 'Catherine', 'Hébert', 'Présidente', 'Présidente de l’association Fosnot depuis 2015, je me dévoue pour que notre école diffuse un enseignement de qualité.', 'licence\fosnot\images\managment\man_01.jpg'),
(2, 'Alexandre', 'Trésorier', 'Trésorie', 'Trésorier de Fosnot depuis 2014, je suis celle qui garantis la bonne gestion financière et de la bonne utilisation des fonds de l’association.', 'licence\fosnot\images\managment\man_02.jpg'),
(3, 'Danielle', 'Maillard', 'Directrice', 'Directrice depuis 2012, j’ai la charge de la bonne marche de l’association et de veiller au respect des objectif opérationnels.', 'licence\fosnot\images\managment\man_03.jpg'),
(4, 'Nathalie', 'Roussel', 'Vice-présidente', 'Devenue Vice-Présidente en 2017, je suis chargé d’assister la Présidente dans la réalisation de ses missions.', 'licence\fosnot\images\managment\man_04.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
CREATE TABLE IF NOT EXISTS `teachers` (
  `tea_id` int NOT NULL AUTO_INCREMENT,
  `tea_fname` varchar(50) NOT NULL,
  `tea_lname` varchar(50) NOT NULL,
  `tea_description` varchar(200) NOT NULL,
  `tea_picture` varchar(50) NOT NULL,
  PRIMARY KEY (`tea_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `teachers`
--

INSERT INTO `teachers` (`tea_id`, `tea_fname`, `tea_lname`, `tea_description`, `tea_picture`) VALUES
(1, 'Sean', 'Ortis', 'J’ai pratiqué beaucoup d’instrument à percussion, et j’ai enseigné la batterie dans plusieurs écoles.J’ai rejoins Fosnot en 2013.', 'licence\fosnot\images\teachers\tea_01.jpg'),
(2, 'Adrien', 'Fauré', 'Je joue du cor d’harmonie depuis mon plus jeune âge. Je suis professeur à Fosnot depuis 2018.', 'licence\fosnot\images\teachers\tea_02.jpg'),
(3, 'Anne', 'Delmas', 'Je pratique la flute traversière depuis mon enfance, et j’ai voulue partager ma passion avec d’autre. J’enseigne à Fosnot de puis 2014.', 'licence\fosnot\images\teachers\tea_03.jpg'),
(4, 'Laurent', 'Martel', 'Je suis professeur de piano depuis 2005. J’ai intégré Fosnot en 2009 et enseigne aux élèves jeunes ou âgées.', 'licence\fosnot\images\teachers\tea_04.jpg'),
(5, 'Manon', 'Meyer', 'J’enseigne le saxophone depuis 2005 et j’ enseigne aussi le solfège. J’ai intégré Fosnot en 2017.', 'licence\fosnot\images\teachers\tea_05.jpg'),
(6, 'Rachel', 'Rhonda', 'Je suis professeure de hautbois depuis 2016. J’ai intégré l’équipe de professeurs en 2018.', 'licence\fosnot\images\teachers\tea_06.jpg'),
(7, 'Thibault', 'Rodrigues', 'Je suis professeur de clarinette et de trompette à Fosnot depuis 2016. Je pratique aussi d’autres instruments (violon, piano)', 'licence\fosnot\images\teachers\tea_07.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `instruments`
--

DROP TABLE IF EXISTS `instruments`;
CREATE TABLE IF NOT EXISTS `instruments` (
  `ins_id` int NOT NULL AUTO_INCREMENT,
  `ins_name` varchar(50) NOT NULL,
  `ins_description` varchar(200) NOT NULL,
  `ins_picture` varchar(50) NOT NULL,
  PRIMARY KEY (`ins_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `instruments`
--

INSERT INTO `instruments` (`ins_id`, `ins_name`, `ins_description`, `ins_picture`) VALUES
(1, 'Batterie', 'Une batterie est un instrument de musique qui, la plupart du temps, est utilisé comme base rythmique (en conjonction avec la guitare basse, on parle de section rythmique).</br>Elle peut être jouée pour tous types de musiques, du jazz au heavy métal en passant par la soul, les musiques funky, le disco... </br>', 'licence\fosnot\images\instruments\ins_01.jpg'),
(2, 'Clarinette', 'La clarinette (du provençal clarin désignant un hautbois) est un instrument de musique à vent de la famille des bois caractérisé par son anche simple et sa perce quasi cylindrique. Elle aurait été créée vers 1690 par Johann Christoph Denner (1655-1707) à Nuremberg sur la base d’un instrument à anche simple plus ancien : le « chalumeau ». La clarinette soprano (en si♭) est le modèle le plus commun.</br>La perce cylindrique de la clarinette la distingue du hautbois et du saxophone, tous deux à perce conique, et lui confère une aptitude au quintoiement note. Son timbre chaud dans le registre grave, peut s’avérer extrêmement brillant voire perçant dans l’aigu.</br>De tous les instruments à vent de sa famille, la clarinette possède la plus grande tessiture avec trois octaves plus une sixte mineure, soit 45 notes en tout2,3. Elle se décline en une famille d’instruments presque tous transpositeurs, depuis la clarinette contrebasse jusqu’à la clarinette piccolo, couvrant ainsi toute l’étendue d’un orchestre symphonique. À l’exception des percussions, la clarinette est l’instrument qui possède la plus grande famille.</br>Cet instrument est utilisé dans la musique classique et traditionnelle ainsi qu’en jazz et en musique contemporaine. Parmi les compositions célèbres pour clarinette, on peut citer le Concerto pour clarinette de Mozart.</br>Le musicien instrumentiste qui joue de la clarinette est appelé un clarinettiste.', 'licence\fosnot\images\instruments\ins_02.jpg'),
(3, 'Cor d’harmonie', 'Le cor d’harmonie est un instrument à vent de la famille des cuivres. C’est la version moderne du cor à pistons inventé au xixe siècle sur la base du cor naturel.</br>Il est caractérisé par son embouchure, sa perce conique qui lui confère un son doux et riche en harmoniques, son large pavillon et un ensemble de pistons permettant à l’exécutant de modifier instantanément la longueur, et donc l’accord, de l’instrument.</br>Le musicien qui joue du cor est un corniste (à ne pas confondre avec le cornettiste qui joue du cornet à piston ou le choriste qui fait partie d’une chorale).</br>Le cor moderne ou cor d’harmonie est présent dans les orchestres symphoniques, de nombreux ensembles de musique de chambre et dans les orchestres d’harmonie ; il est par ailleurs souvent sollicité dans les musiques de films de toutes sortes, pour les dessins animés et les bruitages. Il est utilisé plus rarement dans le jazz.</br>L’embouchure du cor est de petite taille et de forme intérieure conique, différente de celles de la trompette et du trombone qui sont hémisphériques et plus larges. Cette forme conique se retrouve tout le long du tube jusqu’au niveau du pavillon, tout comme le sont le cornet à piston ou les saxhorns. Cette perce donne de la douceur au son, contrairement à la perce cylindrique des cuivres comme la trompette, qui produit un son plus brillant.</br>Le corniste produit les notes de la gamme par vibration des lèvres sur l’embouchure. Sa main gauche active trois ou quatre palettes (ou plus rarement pistons), pour changer la hauteur du son. La main droite est placée dans le pavillon pour soutenir l’instrument. Elle permet également d’arrondir le son, d’en corriger la hauteur ou d’effectuer des sons bouchés. L’instrumentiste peut aussi être amené à utiliser une sourdine placée dans le pavillon pour obtenir un timbre plus sourd, mais pas forcément dans le but d’atténuer le son.', 'licence\fosnot\images\instruments\ins_03.jpg'),
(4, 'Flûte traversière', 'La flûte traversière est un instrument à vent de la famille des bois. La flûte traversière partage avec les instruments de la famille des flûtes la méthode de production du son : l’air soufflé est mis en vibration par un biseau disposé à l’embouchure. Son fonctionnement est toutefois assez différent de celui des flûtes à bec et est plus proche de celui de la quena et plus largement des flûtes à encoche, instruments pour lesquels c’est le musicien qui conduit l’air au biseau.</br>Contrairement à la flûte de Pan, la flûte traversière ne comprend qu’un seul tuyau.', 'licence\fosnot\images\instruments\ins_04.jpg'),
(5, 'Hautbois', 'Le terme « hautbois » désigne tout instrument à anche double mise directement dans la bouche ou enfermée dans une « capsule » (tube recouvrant l’anche, comme l’alboka basque), mise en vibration par le souffle. Parfois, les lèvres s’appuient sur une pirouette – anneau de cuir, d’os ou de métal fixé au milieu du bocal (tube sur lequel est ligaturée l’anche), dans le cas du jeu avec le souffle continu, afin que les lèvres du joueur puissent s’appuyer. En occident et dans le monde arabo-musulman, les hautbois sont de perce conique et l’instrument octavie quand le son est forcé, tandis que le hautbois à perce cylindrique comme le duduk du Caucase, le hichiriki japonais (et la clarinette qui est à anche simple) quintoient. Le corps de l’instrument est en os (voire en ivoire pour certains aulos et tibia), en corne (le pavillon et parfois la partie proche de la bouche), en roseau, en bois, en matière synthétique, plus rarement en métal. Le timbre peut être extrêmement sonore ou au contraire très doux : une diversité qui n’a d’égale que la grande variété des instruments issus des différentes civilisations et des nombreuses cultures dans lesquelles il est encore utilisé actuellement.', 'licence\fosnot\images\instruments\ins_05.jpg'),
(6, 'Piano', 'Le piano est un instrument de musique polyphonique, à clavier, de la famille des cordes frappées. Il se présente sous deux formes : v-piano droit, avec les cordes verticales ; </br>-piano à queue, avec les cordes horizontales. </br>Il existe également des pianos numériques là où aucune corde n’est présente mais uniquement des hauts-parleurs. </br>Le nom de l’instrument provient d’une abréviation de piano-forte, son ancêtre du xviiie siècle, décrit par Scipione Maffei comme un « gravecembalo col piano e forte », c’est-à-dire un clavicorde ayant la possibilité de nuancer en intensité le son directement par la frappe des touches. Jouer progressivement de la nuance piano (doucement) à la nuance forte (fort) n’est pas possible avec des instruments comme le clavecin, l’épinette ou l’orgue. </br>En français, le nom de « piano-forte » est réservé aux instruments anciens, assez différents du piano moderne. L’appellation « piano », courante en anglais et dans les langues latines hormis l’italien où il se nomme toujours pianoforte, varie d’une langue européenne à l’autre. </br>Dans les langues germaniques on l’a d’abord appelé Hammerklavier (spécification inscrite par Beethoven en tête de sa sonate op. 106 : Grosse Sonate für das Hammerklavier c’est-à-dire Grande sonate pour « clavier à marteaux ») d’où est resté en usage l’abréviation Klavier. L’allemand distingue toutefois Flügel, abréviation de l’ancien Hammerflügel (aile à marteaux) nommant le piano à queue. Il existe également d’autres locutions, comme zongora en hongrois, ou encore en russe (de l’italien fortepiano, autre appellation) pour le nom générique, (« royal ») pour le piano à queue, (pianino : petit piano en italien) pour le piano droit qu’on appelle aussi, de manière plus formelle, (piano vertical, comme en espagnol), etc', 'licence\fosnot\images\instruments\ins_06.jpg'),
(7, 'Saxophone', 'Le saxophone est un instrument de musique à vent, appartenant à la famille des bois. Il a été inventé par le Belge Adolphe Sax et breveté à Paris le 21 mars 1846. </br>Il ne doit pas être confondu avec le saxhorn, de la famille des cuivres, mis au point, lui aussi, par Adolphe Sax. Le saxophone est généralement en laiton, bien qu’il en existe certains en cuivre, en argent, en plastique ou plaqués en or.', 'licence\fosnot\images\instruments\ins_07.jpg'),
(8, 'Trompette', 'La trompette est un instrument de musique à vent de la famille des cuivres clairs. Elle est fabriquée dans un tube de 1,50 m de long comme le cornet. Le métal utilisé pour fabriquer la trompette est surtout le laiton (en moyenne 70 % de la trompette est fabriquée avec du laiton). Pour en jouer, on utilise souvent 3 pistons (parfois 4 dans la piccolo) ainsi que de l’air (colonne d’air).', 'licence\fosnot\images\instruments\ins_08.jpg'),
(9, 'Orchestre', 'Un orchestre est un ensemble de musiciens instrumentistes réunis pour l’exécution d’une œuvre musicale. Le nombre et la combinaison des interprètes dépendent du compositeur, de l’époque et du genre du répertoire abordé. Le plus souvent, il est dirigé par un chef d’orchestre. </br>Suivant les familles d’instruments de musique qui le composent (cordes, bois, cuivres et percussions), l’orchestre peut prendre des formes multiples comme en musique classique, le grand orchestre symphonique (les quatre familles réunies), l’orchestre d’harmonie (bois, cuivres et percussions), la fanfare (cuivres, saxophones et percussions), le bagad (bois et percussions) ou le simple orchestre à cordes.', 'licence\fosnot\images\instruments\ins_98.jpg'),
(10, 'Solfège', 'Le solfège désigne une méthode d’apprentissage de la musique faite d’exercices de lecture et d’audition musicales. Dans la pratique, cette méthode est centrée sur l’apprentissage du système de notation et constitue la base de l’éducation musicale dans la musique occidentale. <br>En 1977 en France, le terme solfège a été remplacé par le terme formation musicale (FM) dans les conservatoires, changement qui a accompagné une réforme de l’apprentissage du solfège en France fondée sur l’idée que « partir de la musique pour en découvrir le langage et ses techniques est plus formateur qu’une étude analytique abstraite, élément par élément, desséchante par définition dont l’usage démontre qu’elle tourne souvent le dos au but à atteindre : la connaissance et l’apprentissage de la musique » (Ministère de la culture, texte de la réforme du solfège, 1977).<br>Le solfège sert à la pratique du chant ou d’un instrument, l’étude théorique des œuvres musicales et la composition. L’interprétation d’une partition tout particulièrement passe par la lecture à vue, l’écoute intérieure, la reproduction des hauteurs et la réalisation des rythmes, des nuances et des modes de jeu. Dans la théorie, le solfège étudie les dimensions rythmiques, mélodiques et harmoniques.', 'licence\fosnot\images\instruments\ins_99.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `teaches`
--

DROP TABLE IF EXISTS `teaches`;
CREATE TABLE IF NOT EXISTS `teaches` (
  `tea_id` int NOT NULL,
  `ins_id` int NOT NULL,
  PRIMARY KEY (`tea_id`, `ins_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `instruments`
--

INSERT INTO `teaches` (`tea_id`, `ins_id`) VALUES
(1, 1),
(2, 3),
(3, 4),
(4, 6),
(5, 7),
(6, 5),
(7, 2),
(7, 8),
(4, 9),
(1, 10);

-- --------------------------------------------------------

--
-- Structure de la table `education`
--

DROP TABLE IF EXISTS `education`;
CREATE TABLE IF NOT EXISTS `education` (
  `edu_id` int NOT NULL AUTO_INCREMENT,
  `edu_title` varchar(50) NOT NULL,
  `edu_category` varchar(50) NOT NULL,
  `edu_type` varchar(50) NOT NULL,
  `edu_duration` varchar(50) NOT NULL,
  `edu_description` varchar(200) NOT NULL,
  `edu_price`  DECIMAL(5,2) NOT NULL,
  PRIMARY KEY (`edu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `education`
--
INSERT INTO `education` (`edu_id`, `edu_title`, `edu_category`, `edu_type`, `edu_duration`, `edu_description`, `edu_price`) VALUES
(1, 'Cour d’éveil et d’initiation au solfège pour les 5-7 ans', 'solfège', 'collectif', '1 heure', '', 45.0),
(2, 'Cour de solfège à partir de 7-8 ans', 'solfège', 'collectif', '1 heure', '', 45.0),
(3, 'Cour d’instrument à partir de 7-8 ans', 'instrument', 'collectif', '30 minutes', '', 45.0),
(4, 'Cour d’instrument pour les adultes', 'solfège', 'individuel', '1h30', '', 45.0),
(5, 'Classe d’orchestre à partir de 2 ans de pratique', 'instrument', 'collectif', '45 minutes 0 1 heure', '', 45.0);


-- --------------------------------------------------------

--
-- Structure de la table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `eve_id` int NOT NULL AUTO_INCREMENT,
  `eve_title` varchar(50) NOT NULL,
  `eve_date` DATE NOT NULL,
  `eve_type` varchar(50) NOT NULL,
  `eve_description` varchar(200) NOT NULL,
  `eve_directory`  varchar(100) NOT NULL,
  PRIMARY KEY (`eve_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `events`
--
INSERT INTO `events` (`eve_id`, `eve_title`, `eve_date`, `eve_type`, `eve_description`, `eve_directory`) VALUES
(1, 'Bourse aux vetements', '2021-04-17', 'past', 'description', 'licence\fosnot\images\events\20210417'),
(2, 'Auditions - portes ouvertes', '2021-05-15', 'past', 'description', 'licence\fosnot\images\events\20210515'),
(3, 'Bourse aux vetements', '2021-10-16', 'past', 'description', 'licence\fosnot\images\events\20211016'),
(4, 'Fetes de Noel', '2021-12-23', 'past', 'description', 'licence\fosnot\images\events\20211223'),
(5, 'Bourse aux vetements', '2022-04-16', 'past', 'description', 'licence\fosnot\images\events\20220416'),
(6, 'Auditions - portes ouvertes', '2022-05-14', 'past', 'description', 'licence\fosnot\images\events\20220514'),
(7, 'Bourse aux vetements', '2022-10-15', 'past', 'description', 'licence\fosnot\images\events\20221015'),
(8, 'Fetes de Noel', '2022-12-24', 'futur', 'description', 'licence\fosnot\images\events\20221224'),
(9, 'Bourse aux vetements', '2023-04-15', 'futur', 'description', 'licence\fosnot\images\events\20230415'),
(10, 'Auditions - portes ouvertes', '2023-05-20', 'futur', 'description', 'licence\fosnot\images\events\20230520'),
(11, 'Bourse aux vetements', '2023-10-14', 'futur', 'description', 'licence\fosnot\images\events\20231014');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `use_id` int NOT NULL AUTO_INCREMENT,
  `use_login` varchar(50) NOT NULL,
  `use_passw` varchar(50) NOT NULL,
  `use_fname` varchar(50) NOT NULL,
  `use_lname` varchar(50) NOT NULL,
  PRIMARY KEY (`use_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`use_id`, `use_login`, `use_passw`, `use_fname`, `use_lname`) VALUES
(1, 'Patrick Fairfax', 'Pat', 'Patrick', 'Fairfax');


--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `teaches`
--
ALTER TABLE `teaches`
  ADD CONSTRAINT `teaches_ibfk_1` FOREIGN KEY (`tea_id`) REFERENCES `teachers` (`tea_id`),
  ADD CONSTRAINT `teaches_ibfk_2` FOREIGN KEY (`ins_id`) REFERENCES `instruments` (`ins_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
