# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.17)
# Database: birms_ocds
# Generation Time: 2017-08-02 10:06:08 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table planning
# ------------------------------------------------------------

DROP TABLE IF EXISTS `planning`;

CREATE TABLE `planning` (
  `tblid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ocid` varchar(50) DEFAULT NULL,
  `id` varchar(50) DEFAULT NULL,
  `planning/budget/id` varchar(50) DEFAULT NULL,
  `planning/budget/description` varchar(50) DEFAULT NULL,
  `planning/budget/amount/amount` varchar(50) DEFAULT NULL,
  `planning/budget/amount/currency` varchar(5) DEFAULT NULL,
  `planning/budget/project` varchar(11) DEFAULT NULL,
  `planning/budget/projectID` varchar(50) DEFAULT NULL,
  `planning/budget/uri` varchar(50) DEFAULT NULL,
  `planning/rationale` varchar(50) DEFAULT NULL,
  `last_updated` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tblid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `planning` WRITE;
/*!40000 ALTER TABLE `planning` DISABLE KEYS */;

INSERT INTO `planning` (`tblid`, `ocid`, `id`, `planning/budget/id`, `planning/budget/description`, `planning/budget/amount/amount`, `planning/budget/amount/currency`, `planning/budget/project`, `planning/budget/projectID`, `planning/budget/uri`, `planning/rationale`, `last_updated`)
VALUES
	(2,'ocds-prefix+autoid',NULL,'MAK-4636584','APBD','45','IDR',NULL,NULL,NULL,'Deskripsi','2017-08-01T10:39:57Z'),
	(3,'ocds-prefix+autoid',NULL,'MAK-3684539','APBD','567','IDR',NULL,NULL,NULL,'Deskripsi','2017-08-01T10:41:21Z'),
	(4,'ocds-prefix+autoid',NULL,'MAK-3741410','APBD','100','IDR',NULL,NULL,NULL,'Deskripsi','2017-08-01T10:42:36Z'),
	(5,'ocds-prefix+autoid',NULL,'MAK-3741410','APBD','100','IDR',NULL,NULL,NULL,'Deskripsi','2017-08-01T10:43:47Z'),
	(6,'ocds-prefix+autoid',NULL,NULL,'APBD','10000','IDR',NULL,NULL,NULL,'Deskripsi','2017-08-01T12:09:03Z'),
	(7,'ocds-prefix+autoid',NULL,'MAK-3687636','APBD','100','IDR',NULL,NULL,NULL,'Deskripsi','2017-08-01T14:03:09Z'),
	(8,'ocds-prefix+autoid',NULL,'MAK-12345567',NULL,'500','IDR',NULL,NULL,NULL,'Deskripsi','2017-08-01T14:03:37Z');

/*!40000 ALTER TABLE `planning` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
