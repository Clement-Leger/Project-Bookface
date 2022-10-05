-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 05 oct. 2022 à 17:30
-- Version du serveur :  8.0.30
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `searchbar01`
--

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `members`
--

DROP TABLE IF EXISTS `members`;
CREATE TABLE IF NOT EXISTS `members` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `members`
--

INSERT INTO `members` (`id`, `firstname`, `lastname`, `created_at`, `updated_at`) VALUES
(1, 'Mathilde', 'Hickle', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(2, 'Kylee', 'Dare', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(3, 'Hector', 'Padberg', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(4, 'Zakary', 'Quigley', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(5, 'Hassie', 'Lakin', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(6, 'Lisandro', 'Morissette', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(7, 'Christelle', 'Schuster', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(8, 'Armani', 'Nikolaus', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(9, 'Elton', 'Carroll', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(10, 'Bernadette', 'Orn', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(11, 'Maggie', 'Ebert', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(12, 'Lempi', 'Boehm', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(13, 'Herminio', 'Carroll', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(14, 'D\'angelo', 'Pfeffer', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(15, 'Karson', 'Johns', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(16, 'Lessie', 'Lind', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(17, 'Chad', 'Stiedemann', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(18, 'Seth', 'Grady', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(19, 'Heath', 'Johnston', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(20, 'Kamron', 'Conroy', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(21, 'Madyson', 'Little', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(22, 'Grant', 'Ferry', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(23, 'Kenna', 'Ritchie', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(24, 'Emerald', 'Weissnat', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(25, 'Treva', 'Cartwright', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(26, 'Javonte', 'Boyle', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(27, 'Bria', 'Farrell', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(28, 'Miles', 'Cruickshank', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(29, 'Pearlie', 'Schneider', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(30, 'Roosevelt', 'Medhurst', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(31, 'Corine', 'Bahringer', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(32, 'Dariana', 'Friesen', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(33, 'Madalyn', 'Reichert', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(34, 'Giovanna', 'Watsica', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(35, 'Joshua', 'Murray', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(36, 'Irma', 'Schmidt', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(37, 'Maegan', 'Cummerata', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(38, 'Rene', 'Ryan', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(39, 'Richard', 'Thompson', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(40, 'Linnea', 'Krajcik', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(41, 'Itzel', 'Batz', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(42, 'Sage', 'Jenkins', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(43, 'Novella', 'Hirthe', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(44, 'Logan', 'Bernhard', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(45, 'Conor', 'Reynolds', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(46, 'Clemmie', 'Fahey', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(47, 'Chelsey', 'Langworth', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(48, 'Donna', 'Luettgen', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(49, 'Hollie', 'Leannon', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(50, 'Clementine', 'Pacocha', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(51, 'Sanford', 'Romaguera', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(52, 'Lisandro', 'Kreiger', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(53, 'Diana', 'Effertz', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(54, 'Cindy', 'Hane', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(55, 'Liam', 'Waelchi', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(56, 'Ted', 'Berge', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(57, 'Alison', 'Kuphal', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(58, 'Sabina', 'Blick', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(59, 'Laney', 'Spencer', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(60, 'Augustus', 'Mayert', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(61, 'Wilber', 'Spinka', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(62, 'Deontae', 'Gorczany', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(63, 'Connor', 'Mohr', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(64, 'Makayla', 'Hirthe', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(65, 'Abigale', 'Bartoletti', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(66, 'Alize', 'Schulist', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(67, 'Jane', 'Fahey', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(68, 'Ashlee', 'Bogisich', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(69, 'Ivory', 'Keebler', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(70, 'Dagmar', 'Auer', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(71, 'Isaac', 'Bednar', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(72, 'Gerald', 'Torp', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(73, 'Magali', 'McDermott', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(74, 'Ransom', 'Collins', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(75, 'Aubrey', 'Windler', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(76, 'Terrance', 'Adams', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(77, 'Bella', 'Johnston', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(78, 'Katrine', 'Glover', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(79, 'Norene', 'Balistreri', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(80, 'Baby', 'Kris', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(81, 'Rachelle', 'Morissette', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(82, 'Leopoldo', 'Cronin', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(83, 'Dominique', 'Kuhlman', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(84, 'Mac', 'McGlynn', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(85, 'Frances', 'Crist', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(86, 'Korey', 'Daniel', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(87, 'Junius', 'Miller', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(88, 'Noemie', 'Wehner', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(89, 'Milan', 'Littel', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(90, 'Harley', 'Torphy', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(91, 'Zack', 'McKenzie', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(92, 'Hollie', 'Wyman', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(93, 'Hyman', 'Russel', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(94, 'Marion', 'Herzog', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(95, 'Berenice', 'Little', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(96, 'Monserrate', 'Wisoky', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(97, 'Sebastian', 'Ortiz', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(98, 'Gerry', 'Schuppe', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(99, 'Nichole', 'Huels', '2022-10-05 14:04:09', '2022-10-05 14:04:09'),
(100, 'Linnie', 'Daugherty', '2022-10-05 14:04:09', '2022-10-05 14:04:09');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_10_05_113719_create_members_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
