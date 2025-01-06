-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 26 déc. 2024 à 15:15
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bioviz`
--

-- --------------------------------------------------------

--
-- Structure de la table `action`
--

CREATE TABLE `action` (
  `id_action` int(11) NOT NULL,
  `nom_action` varchar(255) DEFAULT NULL,
  `groupe_cible` varchar(255) DEFAULT NULL,
  `cible_principal` varchar(255) DEFAULT NULL,
  `id_traitement` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `action`
--

INSERT INTO `action` (`id_action`, `nom_action`, `groupe_cible`, `cible_principal`, `id_traitement`) VALUES
(1, 'Ingestion', 'Lépidoptere', 'Noctuelles', NULL),
(2, 'Parasitisme', 'Hémiptère', 'Aleurodes', NULL),
(3, 'Antagonisme et stimulateur de défense des plantes', 'Ascomycete', 'Botrytis cinerea', NULL),
(4, 'Parasitoide', 'Pucerons', 'Pucerons', NULL),
(5, 'Confusion sexuelle', 'Lépidoptere', 'Carpocapse', NULL),
(6, 'Fongicides sytémique vis-à-vis des oomycètes', 'Oomycètes', 'Mildiou', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `application`
--

CREATE TABLE `application` (
  `id_application` int(11) NOT NULL,
  `stade_application` varchar(255) DEFAULT NULL,
  `nombre_application` varchar(255) DEFAULT NULL,
  `dose_application` varchar(255) DEFAULT NULL,
  `id_traitement` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `application`
--

INSERT INTO `application` (`id_application`, `stade_application`, `nombre_application`, `dose_application`, `id_traitement`) VALUES
(1, 'Traitement à piègeages (phéromones)', '', '', NULL),
(2, 'Application répétées', '', '', NULL),
(3, 'En cas de pression modérée', '', '', NULL),
(4, '', 'Installation au printemps', '', NULL),
(5, '', '', '', NULL),
(6, '', '', '', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cultures`
--

CREATE TABLE `cultures` (
  `id_culture` int(11) NOT NULL,
  `nom_culture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `cultures`
--

INSERT INTO `cultures` (`id_culture`, `nom_culture`) VALUES
(1, 'Tomate'),
(2, 'Cultures d/été'),
(3, 'Laitue'),
(4, 'Cultures d/été'),
(5, 'Artichaut'),
(6, 'Pommier');

-- --------------------------------------------------------

--
-- Structure de la table `famille_methode`
--

CREATE TABLE `famille_methode` (
  `id_methode` int(11) NOT NULL,
  `nom_famille` varchar(255) DEFAULT NULL,
  `nom_methode` varchar(255) DEFAULT NULL,
  `sous_famille` varchar(255) DEFAULT NULL,
  `niveau_satisfaction` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `famille_methode`
--

INSERT INTO `famille_methode` (`id_methode`, `nom_famille`, `nom_methode`, `sous_famille`, `niveau_satisfaction`) VALUES
(1, 'micro-organismes', 'Bacillus thuringiensis', 'preparation bacterienne', 'Aucun Avis Emis'),
(2, 'micro-organismes', 'Lecanicillium muscarium', 'Préparation fongique', 'Bon'),
(3, 'micro-organismes', 'bacillus subbtilis', 'Préparation bacterienne', 'Mitigé'),
(4, 'macro-organismes', 'Hyménoptères parasitoïdes', 'Insectes parasitoïdes', 'Mitigé'),
(5, 'Médiateurs chimiques', 'Phéromone lépidoptères ', 'Phéromones', 'Bon'),
(6, 'Substances naturelles', 'Phosphonates de potassium ', 'Préparation bactérienne', 'Bon');

-- --------------------------------------------------------

--
-- Structure de la table `pleine_terre_ou_abri`
--

CREATE TABLE `pleine_terre_ou_abri` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `periode_experimentaion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `pleine_terre_ou_abri`
--

INSERT INTO `pleine_terre_ou_abri` (`id`, `nom`, `periode_experimentaion`) VALUES
(1, 'sous-abri', '2013-2018'),
(2, 'sous-abri', '2013-2018'),
(3, 'sous-abri', '2013-2018'),
(4, 'Plein-chanmps', '2012-2017'),
(5, 'Plein-chanmps', '2005-2015'),
(6, 'Plein-chanmps', '2012-2013');

-- --------------------------------------------------------

--
-- Structure de la table `projet`
--

CREATE TABLE `projet` (
  `id_projet` int(11) NOT NULL,
  `nom_projet` varchar(255) DEFAULT NULL,
  `site_experimental` varchar(255) DEFAULT NULL,
  `code_postal` varchar(20) DEFAULT NULL,
  `periode_experimentation` varchar(255) DEFAULT NULL,
  `nom_systeme` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `projet`
--

INSERT INTO `projet` (`id_projet`, `nom_projet`, `site_experimental`, `code_postal`, `periode_experimentation`, `nom_systeme`) VALUES
(1, '4SYSLEG', 'Domaine Expérimental Alénya-Roussillon', '66200', '2013-2018', 'DivAB'),
(2, '4SYSLEG', 'Domaine Expérimental Alénya-Roussillon', '66200', '2013-2018', 'DivAB'),
(3, '4SYSLEG', 'Domaine Expérimental Alénya-Roussillon', '66200', '2013-2018', 'DivRed'),
(4, 'GEDUBAT', 'CTIFL Carquefou', '44470', '2012-2017', 'M1E Diversification'),
(5, 'BioREco', 'INRAE Gotheron', '26320', '2005-2015', 'BIO Ariane'),
(6, 'BREIZLEG', 'SECL-Terre d/essais', '22740', '2012-2013', 'Rotation 1 - 50% intrants');

-- --------------------------------------------------------

--
-- Structure de la table `types`
--

CREATE TABLE `types` (
  `id_type` int(11) NOT NULL,
  `filiere` varchar(255) DEFAULT NULL,
  `id_culture` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `types`
--

INSERT INTO `types` (`id_type`, `filiere`, `id_culture`) VALUES
(1, 'Legumes', 1),
(2, 'Legumes', 2),
(3, 'Legumes', 3),
(4, 'Legumes', 4),
(5, 'Arboriculture', 5),
(6, 'Légumes', 6);

-- --------------------------------------------------------

--
-- Structure de la table `type_traitement`
--

CREATE TABLE `type_traitement` (
  `id_traitement` int(11) NOT NULL,
  `nom_traitement` varchar(255) DEFAULT NULL,
  `partie_traitee` varchar(255) DEFAULT NULL,
  `id_methode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `type_traitement`
--

INSERT INTO `type_traitement` (`id_traitement`, `nom_traitement`, `partie_traitee`, `id_methode`) VALUES
(1, 'Insecticides', 'Aerienne', 1),
(2, 'Insecticides', 'Aerienne', 2),
(3, 'Fongicides', 'Aerienne', 3),
(4, 'Insecticides', 'Aerienne', 4),
(5, 'Insecticides', 'Aérienne', 5),
(6, 'Fongicides', 'Aérienne', 6);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `action`
--
ALTER TABLE `action`
  ADD PRIMARY KEY (`id_action`),
  ADD KEY `id_traitement` (`id_traitement`);

--
-- Index pour la table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`id_application`),
  ADD KEY `id_traitement` (`id_traitement`);

--
-- Index pour la table `cultures`
--
ALTER TABLE `cultures`
  ADD PRIMARY KEY (`id_culture`);

--
-- Index pour la table `famille_methode`
--
ALTER TABLE `famille_methode`
  ADD PRIMARY KEY (`id_methode`);

--
-- Index pour la table `pleine_terre_ou_abri`
--
ALTER TABLE `pleine_terre_ou_abri`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `projet`
--
ALTER TABLE `projet`
  ADD PRIMARY KEY (`id_projet`);

--
-- Index pour la table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id_type`),
  ADD KEY `id_culture` (`id_culture`);

--
-- Index pour la table `type_traitement`
--
ALTER TABLE `type_traitement`
  ADD PRIMARY KEY (`id_traitement`),
  ADD KEY `id_methode` (`id_methode`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `action`
--
ALTER TABLE `action`
  MODIFY `id_action` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `application`
--
ALTER TABLE `application`
  MODIFY `id_application` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `cultures`
--
ALTER TABLE `cultures`
  MODIFY `id_culture` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `famille_methode`
--
ALTER TABLE `famille_methode`
  MODIFY `id_methode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `pleine_terre_ou_abri`
--
ALTER TABLE `pleine_terre_ou_abri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `projet`
--
ALTER TABLE `projet`
  MODIFY `id_projet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `types`
--
ALTER TABLE `types`
  MODIFY `id_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `type_traitement`
--
ALTER TABLE `type_traitement`
  MODIFY `id_traitement` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `action`
--
ALTER TABLE `action`
  ADD CONSTRAINT `action_ibfk_1` FOREIGN KEY (`id_traitement`) REFERENCES `type_traitement` (`id_traitement`);

--
-- Contraintes pour la table `application`
--
ALTER TABLE `application`
  ADD CONSTRAINT `application_ibfk_1` FOREIGN KEY (`id_traitement`) REFERENCES `type_traitement` (`id_traitement`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
