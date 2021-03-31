# ************************************************************
# Sequel Pro SQL dump
# Version 5446
#
# https://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.33)
# Database: collectionDB
# Generation Time: 2021-03-29 15:00:14 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table collection_table
# ------------------------------------------------------------

DROP TABLE IF EXISTS `collection_table`;

CREATE TABLE `collection_table` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(60) DEFAULT '',
  `release` date DEFAULT NULL,
  `reason` varchar(400) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `collection_table` WRITE;
/*!40000 ALTER TABLE `collection_table` DISABLE KEYS */;

INSERT INTO `collection_table` (`id`, `title`, `release`, `reason`)
VALUES
	(1,'No Man\'s Sky','2016-08-09','Overpriced and under-delivered despite promises of specific content.'),
	(2,'Fallout 76','2018-11-14','Buggy and broken to the point of putting users at risk and then flooded with extortionately priced micro-transactions.'),
	(3,'Overkill\'s Walking dead','2018-11-06','First new IP in years, gameplay generally underwhelming.'),
	(4,'Anthem','2019-02-22','Connection issues, limited content, bugs and altogether overshadowed by other games released around the same time.'),
	(5,'Mass Effect Andromeda','2017-03-21','VERY buggy, unrelatable characters, previous games shared great success and so alot more was expected.'),
	(6,'Watchdogs','2014-05-27','Promises of revolutionary graphics not even close to fulfilled, gameplay becomes a slog with some game breaking bugs that can corrupt the save data file.'),
	(7,'Evolve','2015-02-10','A fun party game for an hour or two but not enough content to warrant returning after a week especially dissapointing when considering the original price tag ($59.99).'),
	(8,'Sonic the Hedgehog (2006)','2006-11-14','A sonic game, therefor a great deal of hype surrounded this release, the game itself however had graphic quality of a game from the 90\'s and the gameplay was generally not fun especially with long load times/screens between levels.'),
	(9,'Wolfenstein: Young blood','2019-07-25','A fun idea for the Wolfenstein series where two sisters head off against certain \'dark forces\' however the characters came across as too \'quirky\' and some players were displeased by the developers trying to push an agenda onto the franchise.'),
	(10,'Dawn of War III','2017-04-27','A long awaited title which returned to it\'s original games origins in many aspects though failing where it came to new design choices and mechanics.');

/*!40000 ALTER TABLE `collection_table` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
