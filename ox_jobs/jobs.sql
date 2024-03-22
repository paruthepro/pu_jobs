-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.11.2-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table ox_core_fd3761.ox_groups
CREATE TABLE IF NOT EXISTS `ox_groups` (
  `name` varchar(20) NOT NULL,
  `label` varchar(50) NOT NULL,
  `grades` longtext NOT NULL,
  `hasAccount` tinyint(1) NOT NULL DEFAULT 0,
  `adminGrade` tinyint(3) unsigned NOT NULL DEFAULT json_length(`grades`),
  `colour` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table ox_core_fd3761.ox_groups: ~16 rows (approximately)
DELETE FROM `ox_groups`;
INSERT INTO `ox_groups` (`name`, `label`, `grades`, `hasAccount`, `adminGrade`, `colour`) VALUES
	('burgershot', 'Burgershot', '["Burger Flipper", "Supervisor", "Manager", "Owner"]', 0, 3, NULL),
	('gunshop', 'Guns N Roses', '[]', 0, 0, NULL),
	('hornys', 'Hornys Restaurant', '["Burger Flipper", "Supervisor", "Manager", "Owner"]', 0, 3, NULL),
	('mechanic', 'Bennys Automotive', '[]', 0, 0, NULL),
	('pizzathis', 'Pizza This', '["Pizza Maker", "Supervisor", "Manager", "Owner"]', 0, 3, NULL),
	('tunershop', 'Imports and Customs', '[]', 0, 0, NULL),
	('upnatom', 'Up N Atom', '["Fryer Attendant", "Supervisor", "Manager", "Owner"]', 0, 3, NULL),
	('uwucafe', 'UwU Cat Cafe', '["Cupcake Maker", "Supervisor", "Manager", "Owner"]', 0, 3, NULL),
	('vunicorn', 'Vanilla Unicorn', '[]', 0, 0, NULL),
	('weedshop', 'HighLyfe', '[]', 0, 0, NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
