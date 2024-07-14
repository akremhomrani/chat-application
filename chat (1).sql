-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 14 juil. 2024 à 03:48
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `chat`
--

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `Incoming_msg_id` int(11) NOT NULL,
  `Outgoing_msg_id` int(11) NOT NULL,
  `msg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`msg_id`, `Incoming_msg_id`, `Outgoing_msg_id`, `msg`) VALUES
(1, 10, 1677622517, 'ahla'),
(2, 10, 1677622517, 'labes'),
(3, 10, 1677622517, 'ahla'),
(4, 10, 1677622517, 'ahla'),
(5, 10, 1677622517, 'hi'),
(6, 10, 1677622517, 'hi'),
(7, 10, 1677622517, 'meow'),
(8, 1677622517, 1157055847, 'fsdfsdf'),
(9, 370934989, 1157055847, 'hfghfg'),
(10, 370934989, 1157055847, 'fdsfsf'),
(11, 1677622517, 1157055847, 'gdfgdfg'),
(12, 1677622517, 1157055847, 'fsdfsd'),
(13, 10, 1157055847, 'salem'),
(14, 10, 1157055847, 'dsdsdqs');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `unique_id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`user_id`, `unique_id`, `fname`, `lname`, `password`, `img`, `status`, `email`) VALUES
(1, 11225, 'Akrem', 'Homrani', 'akrem1234', '1714505033emna.png', 'Active now', 'ami@gmail.com'),
(8, 10, 'akrem', 'homrani2', 'akrem1234', '1714505033emna.png', 'Offline now', 'akr3m.homrani@gmail.com');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
