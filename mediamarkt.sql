-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 02 nov. 2026 à 18:45
-- Version du serveur : 8.4.7
-- Version de PHP : 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mediamarkt`
--

-- --------------------------------------------------------

--
-- Structure de la table `smartphones`
--

DROP TABLE IF EXISTS `smartphones`;
CREATE TABLE IF NOT EXISTS `smartphones` (
  `id_smartphones` int NOT NULL AUTO_INCREMENT,
  `nom_de_smartphone` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `marque_de_smartphone` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `date_de_sortie` date NOT NULL,
  PRIMARY KEY (`id_smartphones`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `smartphones`
--

INSERT INTO `smartphones` (`id_smartphones`, `nom_de_smartphone`, `marque_de_smartphone`, `date_de_sortie`) VALUES
(1, 'iPhone 17 Pro', 'Apple', '2025-09-19'),
(2, 'Galaxy S25 Ultra', 'Samsung', '2025-01-22'),
(3, 'Pixel 10 Pro', 'Google', '2025-08-28');

-- --------------------------------------------------------

--
-- Structure de la table `tvs`
--

DROP TABLE IF EXISTS `tvs`;
CREATE TABLE IF NOT EXISTS `tvs` (
  `id_tvs` int NOT NULL AUTO_INCREMENT,
  `nom_de_tv` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `marque_de_tv` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `taille` decimal(20,2) NOT NULL,
  PRIMARY KEY (`id_tvs`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tvs`
--

INSERT INTO `tvs` (`id_tvs`, `nom_de_tv`, `marque_de_tv`, `taille`) VALUES
(1, 'OLED C5 65\"', 'LG', 65.00),
(2, 'QN90F Series 65\"', 'Samsung', 65.00),
(3, 'Bravia 8 Series 55\"', 'Sony', 55.00);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

DROP TABLE IF EXISTS `utilisateurs`;
CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `id_utilisateurs` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `prenom` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `age` int NOT NULL,
  `date_de_naissance` date NOT NULL,
  `adresse` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_utilisateurs`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id_utilisateurs`, `nom`, `prenom`, `age`, `date_de_naissance`, `adresse`, `email`) VALUES
(1, 'Dupont', 'Marie', 28, '1998-03-15', '12 rue de la Paix, 1000 Bruxelles', 'marie.dupont@email.be'),
(2, 'Martin', 'Lucas', 35, '1991-07-22', '45 avenue Louise, 1050 Ixelles', 'lucas.martin@email.be'),
(3, 'Bernard', 'Sophie', 22, '2004-11-08', '8 place de la Monnaie, 1000 Bruxelles', 'sophie.bernard@email.be');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
