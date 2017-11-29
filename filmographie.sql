-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 29 nov. 2017 à 15:04
-- Version du serveur :  10.1.28-MariaDB
-- Version de PHP :  7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `filmographie`
--

-- --------------------------------------------------------

--
-- Structure de la table `acteurs`
--

CREATE TABLE `acteurs` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `id_Film` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `acteurs`
--

INSERT INTO `acteurs` (`id`, `first_name`, `last_name`, `country`, `id_Film`) VALUES
(1, 'Liam', 'Neeson', 'Royaume uni', NULL),
(2, 'Ben', 'Kingsley', 'Royaume uni', NULL),
(3, 'Ralph', 'Fiennes', 'Royaume uni', NULL),
(4, 'Robin', 'Williams', 'USA', NULL),
(5, 'Ethan', 'Hawke', 'USA', NULL),
(6, 'Robert Sean', 'Leonard', 'USA', NULL),
(7, 'Chris', 'Sarandon', 'USA', NULL),
(8, 'Danny', 'Elfman', 'USA', NULL),
(9, 'Catherine', 'O\'hara', 'USA', NULL),
(10, 'Victor', 'Lanoux', 'France', NULL),
(11, 'Thierry', 'Frémont', 'France', NULL),
(12, 'Nadia', 'Farès', 'France', NULL),
(13, 'Russell ', 'Crowe', 'Américain', NULL),
(14, 'Joaquin', 'Phoenix', 'Américain', NULL),
(15, 'Connie', 'Nielsen', 'Américaine', NULL),
(16, 'Oliver', 'Reed', 'Britannique', NULL),
(17, 'Richard', 'Harris', 'Irlandais', NULL),
(18, 'Derek', 'Jacobi', 'Britannique', NULL),
(19, 'David', 'Hemmings', 'Britannique', NULL),
(20, 'Djimon', 'Hounsou', 'Béninois', NULL),
(21, 'Gerard', 'Butler', 'Britannique', NULL),
(22, 'Lena', 'Headey', 'Britannique', NULL),
(23, 'Rodrigo', 'Santoro', 'brésilien', NULL),
(24, 'George', 'Clooney', 'Américain', NULL),
(25, 'Brad', 'Pitt', 'Américain', NULL),
(26, 'Matt', 'Damon', 'Américain', NULL),
(27, 'Andy ', 'Garcia', 'Britannique', NULL),
(28, 'Don', 'Cheadle', 'Américain', NULL),
(29, 'Bernie', 'Mac', 'Américain', NULL),
(30, 'Julia', 'Roberts', 'Américaine', NULL),
(31, 'Kate', 'Beckinsale', 'UK', NULL),
(32, 'Scott', 'Speedman', 'Canada', NULL),
(33, 'Bill', 'Nighy', 'UK', NULL),
(34, 'Graham', 'McTavish', 'UK', NULL),
(35, 'Vanessa', 'Branch', 'USA', NULL),
(36, 'Steven', 'Blum', 'USA', NULL),
(37, 'Gillian', 'Anderson', 'USA', NULL),
(38, 'Claire', 'Danes', 'USA', NULL),
(39, 'Billy', 'Crudup', 'USA', NULL),
(40, 'John', 'Travolta', 'USA', NULL),
(41, 'Samuel', 'L. Jackson', 'USA', NULL),
(42, 'Bruce', 'Willis', 'USA', NULL),
(43, 'Uma', 'Thurman', 'USA', NULL),
(44, 'Lucy', 'Liu', 'USA', NULL),
(45, 'Daryl', 'Hannah', 'USA', NULL),
(46, 'David', 'Carradine', 'USA', NULL),
(47, 'francis', 'jonson', 'MARS', NULL),
(48, 'Kurt', 'Russell', 'USA', NULL),
(49, 'Zoë', 'Bell', 'NZ', NULL),
(50, 'Rosario', 'Dawson', 'USA', NULL),
(51, 'Vanessa', 'Ferlito', 'USA', NULL),
(52, 'Sydney Tamiia', 'Poitier', 'USA', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

CREATE TABLE `film` (
  `id` int(11) NOT NULL,
  `film_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `annee` year(4) DEFAULT NULL,
  `realisateur` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `synopsi` text COLLATE utf8_bin NOT NULL,
  `picture` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `film`
--

INSERT INTO `film` (`id`, `film_name`, `annee`, `realisateur`, `synopsi`, `picture`) VALUES
(1, 'La liste de schindler', 1993, 'Steven Spielberg', ' Cracovie, durant la Seconde Guerre mondiale, les soldats allemands forcent les juifs etre parques dans le ghetto de Cracovie. Oskar Schindler est un industriel allemand, membre du parti nazi.', 'https://images-na.ssl-images-amazon.com/images/I/51FATPKMF4L.jpg'),
(2, 'Danse avec les loups', 1990, 'Kevin Costner', 'Le jeune lieutenant John Dunbar est envoye un poste de reconnaissance dans les immenses plaines du Dakota pendant la guerre de Secession. Il rencontre au cours de l\'une de ses missions de reconnaissance le peuple sioux.', 'https://images-na.ssl-images-amazon.com/images/I/517NEFVKGRL.jpg'),
(3, 'La ligne verte', 1999, 'Frank Darabont', 'En 1935, Paul Edgecombe est gardien-chef au penitencier de Cold Mountain en Louisiane, au bloc E, surnomme la ligne verte, ou sont detenus les condamne a la chaise electrique. Un jour, un nouveau detenu arrive. Il s\'agit de John Coffey, un colosse, condamne pour le viol et le meurtre de deux soeurs.', 'http://fr.web.img3.acsta.net/r_x_600/newsv7/15/08/17/17/00/4245350.jpg'),
(4, 'Le cercle des poètes disparus', 1990, 'Peter Weir', 'Todd Anderson, un garçon plutôt timide, est envoyé dans la prestigieuse académie de Welton, réputée pour être l\'une des plus fermes et austres des etats-Unis, l o son frre avait connu de brillantes tudes. C\'est dans cette universit qu\'il va faire la rencontre d\'un professeur de lettres anglaises plutôt étrange, Mr Keating, qui les encourage à toujours refuser l\'ordre établi. Les cours de Mr Keating vont bouleverser la vie de l\'étudiant réservé et de ses amis...', 'http://www.aproposdecriture.com/wp-content/uploads/2014/02/le-cercle-des-poetes-disparus-10283_L.gif'),
(5, 'Les démons de Jésus', 1997, 'Bernie Bonvoisin', 'Les aventures de la famille Jacob, quelques mois avant celle de Mai 68, composée d\'un pere alcoolique, d\'une mère au foyer, de deux frres arnaqueurs, d\'un autre intello, du dernier qui se demande pourquoi il va a l\'cole et enfin d\'une sur trop belle pour eux.', 'http://external-images.premiere.fr/var/premiere/storage/images/racine/film/les-demons-de-jesus-149087/1832037-80-fre-FR/Les-Demons-De-Jesus.jpg'),
(6, 'L\'Etrange Noël de Mr Jack', 1994, 'Tim Burton', ' A revoir', 'http://p2.storage.canalblog.com/23/26/631435/116496295_o.jpg'),
(7, 'Gladiator', 2000, 'Ridley Scott', 'Le général romain Maximus est le plus fidèle soutien de l\'empereur Marc Aurèle, qu\'il a conduit de victoire en victoire avec une bravoure et un dévouement exemplaires. Jaloux du prestige de Maximus, et plus encore de l\'amour que lui voue l\'empereur, le fils de MarcAurèle, Commode, s\'arroge brutalement le pouvoir, puis ordonne l\'arrestation du général et son exécution. Maximus échappe à ses assassins mais ne peut empêcher le massacre de sa famille. Capturé par un marchand d\'esclaves, il devient gladiateur et prépare sa vengeance. ', 'http://www.premiere.fr/sites/default/files/styles/vignette_376_x_500/public/externals/7ead9e370402a8ef23238b46ee008f0b.jpg?itok=rj-1HR5S'),
(8, '300', 2006, 'Zack Snyder', 'Adapté du roman graphique de Frank Miller, 300 est un récit épique de la Bataille des Thermopyles, qui opposa en l\'an - 480 le roi Léonidas et 300 soldats spartiates à Xerxès et l\'immense armée perse. Face à un invincible ennemi, les 300 déployèrent jusqu\'à leur dernier souffle un courage surhumain ; leur vaillance et leur héroïque sacrifice inspirèrent toute la Grèce à se dresser contre la Perse, posant ainsi les premières pierres de la démocratie. ', 'https://images-na.ssl-images-amazon.com/images/I/51sqdeqXO-L.jpg'),
(9, 'ocean\'s twelve', 2004, 'Steven Soderbergh', 'Trois ans ont passé depuis le braquage historique du casino Bellagio de Las Vegas. Depuis, Danny Ocean et ses associés se sont dispersés dans la nature avec l\'intention de mener une existence honnête.\r\nRemarié à Tess, ce dernier joue \"profil bas\" jusqu\'au jour où l\'un de ses anciens complices la balance à Terry Benedict. Le propriétaire du Bellagio n\'y va pas par quatre chemins : la bande doit, sous peine de mort, lui restituer le magot.\r\nEt ce n\'est qu\'un début, car quelqu\'un d\'autre s\'intéresse de très près aux agissements passé et présents de la bande des onze... ', 'https://static.rogerebert.com/uploads/movie/movie_poster/oceans-twelve-2004/large_4irBEiDC7SpYBuw5z1c7oLfF0EI.jpg'),
(10, 'Underworld', 2003, 'Len  Wiseman', 'Depuis des siecles, deux races immortelles et legendaires les lycans (plus connu sous le nom de loup-garous) et les vampires se livrent un conflit sans merci a l\'insu du regard des humains.', 'https://upload.wikimedia.org/wikipedia/en/5/5a/Underworld2evolution.jpg'),
(11, 'Dante\'s Inferno', 2010, 'Victor Cook', 'Ce film s\'inspire de La Divine Comedie, celebre poeme italien du XIVeme siecle, ecrit par Dante Alighieri. Le heros de ce film va descendre dans les cercles de l\'enfer afin de retrouver Beatrice, sa bien-aimee.', 'http://www.figures.com/forums/attachment.php?attachmentid=3138&d=1265669313'),
(12, 'Princesse Mononoke', 1997, 'Hayao Miyazaki', 'Ashitaka, le prince de la tribu des Emishis, un peuple reclus au nord de Honsh?, est frappe d\'une malediction apres avoir tue Nago, un dieu sanglier devenu demon: son bras est anime d\'une force surnaturelle mais est ronge par l\'entite demoniaque. La chamane du village le dit condamne a mourir et lui conseille de quitter le village afin d\'aller chercher a l\'ouest la cause de la colere de la nature et l\'espoir de trouver la raison de sa malediction.', 'https://images-na.ssl-images-amazon.com/images/I/51FK7ZVNP4L.jpg'),
(13, 'pulp fiction', 1994, 'quentin tarantino', 'Dans un café restaurant de Los Angeles, dans la matinée, un couple de jeunes braqueurs, Pumpkin (appelé Ringo par Jules) et Yolanda (Tim Roth et Amanda Plummer), discutent des risques que comporte leur activité. Ils se décident finalement à attaquer le lieu, afin de pouvoir dévaliser à la fois l\'établissement et les clients.Deux truands, Jules Winnfield (Samuel L. Jackson) et son ami Vincent Vega (John Travolta), qui revient d\'Amsterdam, ont pour mission de récupérer une mallette au contenu mystérieux et de la rapporter à Marsellus Wallace (Ving Rhames), leur patron. Avant de commencer leur affaire, ils discutent de tout et de rien (les différences entre la vie en Europe et aux États-Unis, les hamburgers, le massage des pieds…) et Vincent confie à Jules que Marsellus l\'a chargé de tenir compagnie à sa femme Mia (Uma Thurman) pour une soirée. Ils interrompent ensuite le petit déjeuner de petits escrocs, Brett (Frank Whaley) et Roger (Burr Steers), qui ont vraisemblablement essayé de doubler Marsellus. Ils récupèrent la mallette et, comme à son habitude, Jules cite un passage de la Bible (qui serait dans le livre d\'Ézéchiel) avant de tuer Brett', 'https://images-na.ssl-images-amazon.com/images/I/51WG6GXWSCL._SY445_.jpg'),
(14, 'kill bill', 2003, 'quentin tarantino', 'Dans la petite chapelle de Two Pines perdue au milieu du désert, à El Paso (Texas), alors que se déroule la répétition d\'une cérémonie de mariage, des assassins surgissent et tirent impitoyablement et sans raison apparente sur toutes les personnes présentes. La Mariée, qui est enceinte, survit à ses blessures mais sombre dans le coma. Toutefois, la Mariée n\'est pas une personne ordinaire. Autrefois tueuse à gages dans une organisation secrète, Détachement International des Vipères Assassines, elle est une combattante hors pair. Sortant du coma quatre années plus tard, elle n\'a plus qu\'un seul but, se venger de ses anciens complices, dans lesquels elle a reconnu les assassins de Two Pines, et surtout, tuer Bill, leur chef, qui est également le père de l\'enfant qu\'elle portait et qu\'elle croit avoir perdu à la suite de l\'attaque dans la chapelle.', 'https://images-na.ssl-images-amazon.com/images/I/5166N0K16QL._SY445_.jpg'),
(15, 'death proof', 2007, 'quentin tarantino', 'À Austin, trois amies, Arlene, Shanna et « Jungle » Julia, la disc jockey d\'une radio locale, font une virée nocturne dans un bar. Elles ignorent qu\'elles sont étroitement surveillées par Stuntman Mike (Kurt Russell), un ancien cascadeur psychopathe, qui sillonne les routes en tuant les femmes qu\'il trouve sur son chemin. Pour cela il a une méthode bien particulière : il se sert uniquement de sa voiture. Quand les filles quittent le bar, Stuntman Mike fait de même en acceptant de raccompagner chez elle Pam, une autre consommatrice. Il lui vante les mérites de sa voiture, une Chevrolet Nova qui, selon lui, « protège de la mort », avant d\'ajouter plus tard qu\'il faut en être le conducteur pour bénéficier de cet avantage. Pam comprend trop tard à quel genre d\'individu elle a affaire et est tuée, la tête écrasée sur le tableau de bord, lorsque Stuntman Mike freine brutalement alors qu\'il roulait à grande vitesse. Il rattrape ensuite le véhicule des trois jeunes femmes, rejointes par une de leurs amies, et provoque une collision qui leur est fatale à toutes les quatre, Stuntman Mike s\'en tirant avec quelques fractures grâce à son véhicule renforcé.Quatorze mois plus tard, Stuntman Mike, désormais dans le Tennessee et au volant d\'une Dodge Charger, compte récidiver et repère quatre nouvelles victimes potentielles. Ces quatre jeunes femmes, Lee, Abernathy, Kim et Zoë, travaillent sur le tournage d\'un film, les deux dernières en tant que cascadeuses, détail que Stuntman Mike ignore. Zoë et Kim, accompagnées d\'Abernathy, partent essayer une Dodge Challenger et Stuntman Mike se lance alors à leur poursuite. À l\'issue de celle-ci, Zoë, qui était sur le capot de la Challenger, est éjectée et Kim tire sur Stuntman Mike, le blessant à l\'épaule. Stuntman Mike prend alors la fuite mais Zoë revient miraculeusement indemne et les filles se lancent à leur tour à sa poursuite. Elles finissent par provoquer une collision et la voiture de Stuntman Mike part en tonneaux. L\'ancien cascadeur, qui a le bras cassé, est tiré hors de son véhicule par les filles, qui lui infligent une sévère correction. Stuntman Mike s\'effondre au sol, inconscient, et Abernathy l\'achève avec un coup de pied descendant dans la tête.', 'https://images-na.ssl-images-amazon.com/images/I/911WcX6DgtL._SY445_.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `film_acteurs`
--

CREATE TABLE `film_acteurs` (
  `id` int(11) NOT NULL,
  `id_acteurs` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `film_genre`
--

CREATE TABLE `film_genre` (
  `id` int(11) NOT NULL,
  `id_genre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `film_genre`
--

INSERT INTO `film_genre` (`id`, `id_genre`) VALUES
(3, 2);

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `genre` varchar(25) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `genre`
--

INSERT INTO `genre` (`id`, `genre`) VALUES
(1, 'Historique'),
(2, 'Drame Guerre'),
(3, 'Biopic'),
(4, 'Western'),
(5, 'Fantastique'),
(6, 'Policier'),
(7, 'fantastique'),
(8, 'comedie'),
(9, 'comedie dramatique'),
(10, 'Péplum'),
(11, 'Aventure'),
(12, 'Drame'),
(13, 'Action'),
(14, 'Guerre'),
(15, 'Historique'),
(16, 'Comédie'),
(17, 'Policier'),
(18, 'Thriller'),
(19, 'fantasy'),
(20, 'animation'),
(21, 'Film d\'action'),
(22, 'Thriller'),
(23, 'Film de gangsters'),
(24, 'Comédie noire');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `acteurs`
--
ALTER TABLE `acteurs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_Acteurs_id_Film` (`id_Film`);

--
-- Index pour la table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `film_genre`
--
ALTER TABLE `film_genre`
  ADD PRIMARY KEY (`id`,`id_genre`),
  ADD KEY `FK_relation1_id_genre` (`id_genre`);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `acteurs`
--
ALTER TABLE `acteurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT pour la table `film`
--
ALTER TABLE `film`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `acteurs`
--
ALTER TABLE `acteurs`
  ADD CONSTRAINT `FK_Acteurs_id_Film` FOREIGN KEY (`id_Film`) REFERENCES `film` (`id`);

--
-- Contraintes pour la table `film_genre`
--
ALTER TABLE `film_genre`
  ADD CONSTRAINT `FK_relation1_id` FOREIGN KEY (`id`) REFERENCES `film` (`id`),
  ADD CONSTRAINT `FK_relation1_id_genre` FOREIGN KEY (`id_genre`) REFERENCES `genre` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
