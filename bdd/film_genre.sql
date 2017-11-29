-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 29 nov. 2017 à 15:57
-- Version du serveur :  5.7.19
-- Version de PHP :  7.1.9

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
-- Structure de la table `film_genre`
--

DROP TABLE IF EXISTS `film_genre`;
CREATE TABLE IF NOT EXISTS `film_genre` (
  `id` int(11) NOT NULL,
  `id_genre` int(11) NOT NULL,
  PRIMARY KEY (`id`,`id_genre`),
  KEY `FK_relation1_id_genre` (`id_genre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `film_genre`
--

INSERT INTO `film_genre` (`id`, `id_genre`) VALUES
(1, 1),
(3, 2),
(1, 3),
(2, 4),
(3, 5),
(6, 5),
(10, 5),
(3, 6),
(9, 6),
(5, 8),
(9, 8),
(15, 8),
(4, 9),
(10, 9),
(7, 10),
(8, 10),
(7, 11),
(1, 12),
(7, 12),
(14, 12),
(15, 12),
(7, 13),
(10, 13),
(14, 13),
(1, 14),
(13, 17),
(9, 18),
(13, 18),
(14, 18),
(15, 18),
(11, 19),
(12, 20),
(10, 24);

--
-- Contraintes pour les tables déchargées
--

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
