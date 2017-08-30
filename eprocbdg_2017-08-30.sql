# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.6.28)
# Database: eprocbdg
# Generation Time: 2017-08-30 05:20:18 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table perusahaan
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perusahaan`;

CREATE TABLE `perusahaan` (
  `id` int(11) NOT NULL,
  `npwp` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `kekayaan_bersih` decimal(10,2) NOT NULL,
  `cp` varchar(255) NOT NULL,
  `cp_hp` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `pertanyaan` varchar(255) NOT NULL,
  `jawaban` varchar(255) NOT NULL,
  `waktu_aktivasi` datetime NOT NULL,
  `kota` varchar(255) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `state` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tperusahaan
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tperusahaan`;

CREATE TABLE `tperusahaan` (
  `perusahaanID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `npwp` varchar(20) NOT NULL,
  `namaperusahaan` varchar(255) NOT NULL,
  `cabang` char(1) DEFAULT '0',
  `alamatperusahaan` varchar(255) NOT NULL,
  `kota` varchar(128) NOT NULL,
  `telepon` varchar(128) DEFAULT NULL,
  `kekayaanbersih` decimal(12,0) NOT NULL,
  `fax` varchar(128) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `contactperson` varchar(255) DEFAULT NULL,
  `hp` varchar(128) DEFAULT NULL,
  `stat` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `createdby` varchar(255) NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  `verified` datetime DEFAULT NULL,
  `verifiedby` varchar(255) DEFAULT NULL,
  `verifiedip` varchar(15) DEFAULT NULL,
  `ffoto` varchar(128) DEFAULT NULL,
  `fsiup` varchar(128) DEFAULT NULL,
  `fnpwp` varchar(128) DEFAULT NULL,
  `ftpp` varchar(128) DEFAULT NULL,
  `ahliopen` datetime DEFAULT NULL,
  PRIMARY KEY (`perusahaanID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tperusahaan_direksi
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tperusahaan_direksi`;

CREATE TABLE `tperusahaan_direksi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `perusahaan_id` int(11) NOT NULL,
  `no` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `npwp` varchar(255) NOT NULL,
  `ktp` varchar(128) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `penanggung_jawab` varchar(255) NOT NULL,
  `state` tinyint(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
