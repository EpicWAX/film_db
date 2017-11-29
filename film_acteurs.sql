-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 29 nov. 2017 à 15:59
-- Version du serveur :  5.7.19
-- Version de PHP :  5.6.31

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
-- Structure de la table `film_acteurs`
--

DROP TABLE IF EXISTS `film_acteurs`;
CREATE TABLE IF NOT EXISTS `film_acteurs` (
  `id` int(11) NOT NULL,
  `id_acteurs` int(11) NOT NULL,
  KEY `id` (`id`),
  KEY `id_acteurs` (`id_acteurs`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `film_acteurs`
--

INSERT INTO `film_acteurs` (`id`, `id_acteurs`) VALUES
(8, 27),
(1, 1),
(1, 2),
(1, 3),
(7, 13),
(7, 14),
(7, 15),
(7, 16),
(7, 17),
(7, 18),
(7, 19),
(7, 20),
(8, 21),
(8, 22),
(8, 23),
(9, 24),
(9, 22),
(8, 21),
(8, 22),
(8, 23),
(9, 24),
(9, 22);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `film_acteurs`
--
ALTER TABLE `film_acteurs`
  ADD CONSTRAINT `id_acteur` FOREIGN KEY (`id_acteurs`) REFERENCES `acteurs` (`id`),
  ADD CONSTRAINT `id_film` FOREIGN KEY (`id`) REFERENCES `film` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
