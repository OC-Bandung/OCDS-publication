# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.6.28)
# Database: 2016_birms_prime
# Generation Time: 2017-08-30 05:17:37 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table tbl_application
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_application`;

CREATE TABLE `tbl_application` (
  `appID` int(11) NOT NULL AUTO_INCREMENT,
  `appcode` varchar(2) CHARACTER SET latin1 DEFAULT NULL,
  `appname` varchar(64) CHARACTER SET latin1 DEFAULT NULL,
  `appdescription` text CHARACTER SET latin1,
  `appurl` varchar(128) CHARACTER SET latin1 DEFAULT NULL,
  `isactive` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`appID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tbl_group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_group`;

CREATE TABLE `tbl_group` (
  `oID` int(11) NOT NULL AUTO_INCREMENT,
  `grpID` int(11) NOT NULL,
  `appID` int(11) NOT NULL,
  `groupname` varchar(128) CHARACTER SET latin1 NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `isactive` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`oID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tbl_instansi
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_instansi`;

CREATE TABLE `tbl_instansi` (
  `instansiID` int(11) NOT NULL AUTO_INCREMENT,
  `instansicategoryID` int(11) NOT NULL,
  `nama` varchar(255) CHARACTER SET latin1 NOT NULL,
  `isactive` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdip` varchar(15) CHARACTER SET latin1 NOT NULL,
  `createdby` varchar(128) CHARACTER SET latin1 NOT NULL,
  `updated` datetime NOT NULL,
  `updatedip` varchar(15) CHARACTER SET latin1 NOT NULL,
  `updatedby` varchar(255) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`instansiID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tbl_instansicategory
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_instansicategory`;

CREATE TABLE `tbl_instansicategory` (
  `instansicategoryID` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET latin1 NOT NULL,
  `isactive` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdip` varchar(15) CHARACTER SET latin1 NOT NULL,
  `createdby` varchar(128) CHARACTER SET latin1 NOT NULL,
  `updated` datetime NOT NULL,
  `updatedip` varchar(15) CHARACTER SET latin1 NOT NULL,
  `updatedby` varchar(255) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`instansicategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tbl_setting
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_setting`;

CREATE TABLE `tbl_setting` (
  `settid` int(11) NOT NULL AUTO_INCREMENT,
  `fieldname` varchar(64) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `content` text CHARACTER SET latin1,
  PRIMARY KEY (`settid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tbl_skpd
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_skpd`;

CREATE TABLE `tbl_skpd` (
  `skpdID` int(11) NOT NULL AUTO_INCREMENT,
  `instansiID` int(11) NOT NULL,
  `kode` varchar(10) CHARACTER SET latin1 NOT NULL,
  `unitID` varchar(10) CHARACTER SET latin1 NOT NULL,
  `satker` int(11) DEFAULT NULL COMMENT 'Satker sirup',
  `nama` varchar(255) CHARACTER SET latin1 NOT NULL,
  `singkatan` varchar(128) CHARACTER SET latin1 NOT NULL,
  `alamat` varchar(255) CHARACTER SET latin1 NOT NULL,
  `telepon` varchar(255) CHARACTER SET latin1 NOT NULL,
  `email` varchar(128) CHARACTER SET latin1 NOT NULL,
  `isactive` tinyint(4) NOT NULL,
  `isparent` tinyint(4) DEFAULT NULL COMMENT 'Has bidang?',
  `isrup` tinyint(4) DEFAULT NULL COMMENT 'Has RUP?',
  `created` datetime NOT NULL,
  `createdip` varchar(15) CHARACTER SET latin1 NOT NULL,
  `createdby` varchar(128) CHARACTER SET latin1 NOT NULL,
  `updated` datetime NOT NULL,
  `updatedip` varchar(15) CHARACTER SET latin1 NOT NULL,
  `updatedby` varchar(255) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`skpdID`),
  KEY `instansi` (`instansiID`),
  KEY `unit` (`unitID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tbl_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_user`;

CREATE TABLE `tbl_user` (
  `usrID` int(11) NOT NULL AUTO_INCREMENT,
  `eproc_usrID` int(11) DEFAULT NULL,
  `spse_usrID` int(11) DEFAULT NULL,
  `usrname` varchar(128) CHARACTER SET latin1 NOT NULL,
  `pwd` varchar(128) CHARACTER SET latin1 NOT NULL,
  `defaultpwd` varchar(128) CHARACTER SET latin1 NOT NULL,
  `email` varchar(128) CHARACTER SET latin1 NOT NULL,
  `isactive` tinyint(4) NOT NULL DEFAULT '1',
  `lastvisit` datetime DEFAULT NULL,
  `identitytype` int(11) NOT NULL,
  `identity_no` varchar(18) CHARACTER SET latin1 DEFAULT NULL,
  `fullname` varchar(128) CHARACTER SET latin1 NOT NULL,
  `address` varchar(255) CHARACTER SET latin1 NOT NULL,
  `phone` varchar(128) CHARACTER SET latin1 DEFAULT NULL,
  `mobile` varchar(128) CHARACTER SET latin1 DEFAULT NULL,
  `forgotpwdquestion` varchar(64) CHARACTER SET latin1 DEFAULT NULL,
  `forgotpwdanswer` varchar(64) CHARACTER SET latin1 DEFAULT NULL,
  `note` text CHARACTER SET latin1,
  `avatar` varchar(128) DEFAULT NULL,
  `skpdID` int(11) NOT NULL,
  `perusahaanID` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `createdip` varchar(15) CHARACTER SET latin1 NOT NULL,
  `createdby` varchar(128) CHARACTER SET latin1 NOT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedip` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `updatedby` varchar(128) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`usrID`),
  KEY `skpdID` (`skpdID`),
  KEY `perusahaanID` (`perusahaanID`),
  KEY `usrname` (`usrname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tr_usergroup
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tr_usergroup`;

CREATE TABLE `tr_usergroup` (
  `usrID` int(11) NOT NULL,
  `grpID` int(11) NOT NULL,
  `appID` int(11) NOT NULL,
  PRIMARY KEY (`usrID`,`grpID`,`appID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
