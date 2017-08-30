# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.6.28)
# Database: 2016_birms_eproject_planning
# Generation Time: 2017-08-30 05:16:10 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table tbl_bidang
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_bidang`;

CREATE TABLE `tbl_bidang` (
  `bidangID` int(1) NOT NULL AUTO_INCREMENT,
  `skpdID` int(4) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `isactive` tinyint(4) NOT NULL,
  PRIMARY KEY (`bidangID`),
  KEY `skpdID` (`skpdID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tbl_jenis
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_jenis`;

CREATE TABLE `tbl_jenis` (
  `jenisID` tinyint(1) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  PRIMARY KEY (`jenisID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tbl_kegiatan
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_kegiatan`;

CREATE TABLE `tbl_kegiatan` (
  `kegiatanID` int(11) NOT NULL AUTO_INCREMENT,
  `programID` int(11) NOT NULL,
  `skpdID` int(11) NOT NULL,
  `unitID` varchar(16) CHARACTER SET latin1 NOT NULL,
  `kodeprogram` varchar(18) NOT NULL,
  `kodekegiatan` varchar(33) NOT NULL,
  `namakegiatan` varchar(255) CHARACTER SET latin1 NOT NULL,
  `bidangID` int(11) NOT NULL,
  `anggaran` decimal(12,0) NOT NULL,
  `tahun` int(11) NOT NULL,
  `sumberdanaID` int(11) NOT NULL,
  `lokasi` text,
  `usrname` varchar(128) DEFAULT NULL,
  `verify` tinyint(4) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `createdby` varchar(64) NOT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedip` varchar(15) DEFAULT NULL,
  `updatedby` varchar(64) DEFAULT NULL,
  `verified` datetime DEFAULT NULL,
  `verifiedip` varchar(14) DEFAULT NULL,
  `verifiedby` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`kegiatanID`),
  KEY `programID` (`programID`),
  KEY `skpdID` (`skpdID`),
  KEY `unitID` (`unitID`),
  KEY `sumberdanaID` (`sumberdanaID`),
  KEY `kodeprogram` (`kodeprogram`),
  KEY `kodekegiatan` (`kodekegiatan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tbl_kelompok
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_kelompok`;

CREATE TABLE `tbl_kelompok` (
  `kelompokID` int(11) NOT NULL AUTO_INCREMENT,
  `instansiID` int(11) NOT NULL,
  `skpdID` int(11) NOT NULL,
  `nama` varchar(255) CHARACTER SET latin1 NOT NULL,
  `suratperintah` varchar(255) CHARACTER SET latin1 NOT NULL,
  `isactive` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdip` varchar(15) CHARACTER SET latin1 NOT NULL,
  `createdby` varchar(128) CHARACTER SET latin1 NOT NULL,
  `updated` datetime NOT NULL,
  `updatedip` varchar(15) CHARACTER SET latin1 NOT NULL,
  `updatedby` varchar(255) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`kelompokID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tbl_kelompokanggota
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_kelompokanggota`;

CREATE TABLE `tbl_kelompokanggota` (
  `kelanggotaID` int(11) NOT NULL AUTO_INCREMENT,
  `kelompokID` int(11) NOT NULL,
  `usrID` int(11) NOT NULL,
  `jabatanID` int(11) NOT NULL,
  `isactive` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdip` varchar(15) CHARACTER SET latin1 NOT NULL,
  `createdby` varchar(128) CHARACTER SET latin1 NOT NULL,
  `updated` datetime NOT NULL,
  `updatedip` varchar(15) CHARACTER SET latin1 NOT NULL,
  `updatedby` varchar(255) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`kelanggotaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tbl_kelompokjabatan
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_kelompokjabatan`;

CREATE TABLE `tbl_kelompokjabatan` (
  `jabatanID` int(11) NOT NULL AUTO_INCREMENT,
  `jabatan` varchar(255) CHARACTER SET latin1 NOT NULL,
  `isactive` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`jabatanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tbl_kelpenerima
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_kelpenerima`;

CREATE TABLE `tbl_kelpenerima` (
  `kelpenerimaID` int(11) NOT NULL AUTO_INCREMENT,
  `instansiID` int(11) NOT NULL,
  `skpdID` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `suratperintah` varchar(255) NOT NULL,
  `isactive` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `createdby` varchar(128) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  PRIMARY KEY (`kelpenerimaID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tbl_kelpenerimaanggota
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_kelpenerimaanggota`;

CREATE TABLE `tbl_kelpenerimaanggota` (
  `kelanggotaID` int(11) NOT NULL AUTO_INCREMENT,
  `kelpenerimaID` int(11) NOT NULL,
  `usrID` int(11) NOT NULL,
  `jabatanID` int(11) NOT NULL,
  `isactive` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `createdby` varchar(128) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  PRIMARY KEY (`kelanggotaID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tbl_metode
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_metode`;

CREATE TABLE `tbl_metode` (
  `metodeID` tinyint(2) NOT NULL AUTO_INCREMENT,
  `jenisID` tinyint(1) NOT NULL,
  `nama` varchar(64) NOT NULL,
  `pengadaan` tinyint(4) DEFAULT '0' COMMENT '1: Lelang/Seleksi, 2: Penunjukan Langsung/Pengadaan Langsung, 3: Pembelian Secara Elektronik',
  PRIMARY KEY (`metodeID`),
  KEY `jenisID` (`jenisID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tbl_pekerjaan
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_pekerjaan`;

CREATE TABLE `tbl_pekerjaan` (
  `pekerjaanID` int(11) NOT NULL AUTO_INCREMENT,
  `kegiatanID` int(11) NOT NULL,
  `programID` int(11) NOT NULL,
  `skpdID` int(11) NOT NULL,
  `kodepekerjaan` text CHARACTER SET latin1 NOT NULL,
  `namapekerjaan` varchar(255) CHARACTER SET latin1 NOT NULL,
  `metodeID` tinyint(4) NOT NULL,
  `anggaran` decimal(16,4) NOT NULL,
  `anggaranp` decimal(16,4) DEFAULT '0.0000',
  `sirupID` bigint(20) DEFAULT NULL,
  `sumberdanaID` tinyint(4) DEFAULT NULL,
  `tipeID` tinyint(4) NOT NULL,
  `usrID_pa` int(11) DEFAULT NULL,
  `usrID_ppkm` int(11) DEFAULT NULL,
  `usrID_pejabat` int(11) DEFAULT NULL,
  `usrID_penerima` int(11) DEFAULT NULL,
  `usrID_pptk` int(11) DEFAULT NULL,
  `usrID_bp` int(11) DEFAULT NULL,
  `pilih_start` date DEFAULT NULL,
  `pilih_end` date DEFAULT NULL,
  `laksana_start` date DEFAULT NULL,
  `laksana_end` date DEFAULT NULL,
  `iswork` tinyint(4) NOT NULL DEFAULT '0',
  `note` text CHARACTER SET latin1,
  `created` datetime NOT NULL,
  `createdip` varchar(15) CHARACTER SET latin1 NOT NULL,
  `createdby` varchar(64) CHARACTER SET latin1 NOT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedip` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `updatedby` varchar(64) CHARACTER SET latin1 DEFAULT NULL,
  `No_Rinc` int(11) DEFAULT NULL,
  `No_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`pekerjaanID`),
  KEY `kegiatanID` (`kegiatanID`),
  KEY `programID` (`programID`),
  KEY `skpdID` (`skpdID`),
  KEY `metodeID` (`metodeID`),
  KEY `usrID_pa` (`usrID_pa`),
  KEY `usrID_ppkm` (`usrID_ppkm`),
  KEY `usrID_pejabat` (`usrID_pejabat`),
  KEY `usrID_penerima` (`usrID_penerima`),
  KEY `usrID_pptk` (`usrID_pptk`),
  KEY `usrID_bp` (`usrID_bp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tbl_pekerjaan_panitia
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_pekerjaan_panitia`;

CREATE TABLE `tbl_pekerjaan_panitia` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `pekerjaanID` int(11) NOT NULL,
  `kelompokID` int(11) NOT NULL,
  `usrID` int(11) NOT NULL,
  `jabatanID` int(11) NOT NULL,
  `isactive` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdip` varchar(15) CHARACTER SET latin1 NOT NULL,
  `createdby` varchar(128) CHARACTER SET latin1 NOT NULL,
  `updated` datetime NOT NULL,
  `updatedip` varchar(15) CHARACTER SET latin1 NOT NULL,
  `updatedby` varchar(255) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tbl_pekerjaan_pejabat_perubahan
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_pekerjaan_pejabat_perubahan`;

CREATE TABLE `tbl_pekerjaan_pejabat_perubahan` (
  `perubahanID` int(11) NOT NULL AUTO_INCREMENT,
  `pekerjaanID` int(11) NOT NULL,
  `kegiatanID` int(11) NOT NULL,
  `skpdID` int(11) NOT NULL,
  `kodepekerjaan` varchar(33) NOT NULL,
  `namapekerjaan` varchar(255) NOT NULL,
  `old_usrID_pa` int(11) DEFAULT NULL,
  `old_usrID_ppkm` int(11) DEFAULT NULL,
  `old_usrID_pejabat` int(11) DEFAULT NULL,
  `old_usrID_penerima` int(11) DEFAULT NULL,
  `old_usrID_pptk` int(11) DEFAULT NULL,
  `old_usrID_bp` int(11) DEFAULT NULL,
  `old_kelompokID` int(11) DEFAULT NULL,
  `old_kelpenerimaID` int(11) DEFAULT NULL,
  `usrID_pa` int(11) DEFAULT NULL,
  `usrID_ppkm` int(11) DEFAULT NULL,
  `usrID_pejabat` int(11) DEFAULT NULL,
  `usrID_penerima` int(11) DEFAULT NULL,
  `usrID_pptk` int(11) DEFAULT NULL,
  `usrID_bp` int(11) DEFAULT NULL,
  `kelompokID` int(11) DEFAULT NULL,
  `kelpenerimaID` int(11) DEFAULT NULL,
  `note` text,
  `created` datetime NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `createdby` varchar(64) NOT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedip` varchar(15) DEFAULT NULL,
  `updatedby` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`perubahanID`),
  KEY `kegiatanID` (`kegiatanID`),
  KEY `skpdID` (`skpdID`),
  KEY `usrID_pa` (`usrID_pa`),
  KEY `usrID_ppkm` (`usrID_ppkm`),
  KEY `usrID_pejabat` (`usrID_pejabat`),
  KEY `usrID_penerima` (`usrID_penerima`),
  KEY `usrID_pptk` (`usrID_pptk`),
  KEY `usrID_bp` (`usrID_bp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table tbl_pekerjaan_penerima
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_pekerjaan_penerima`;

CREATE TABLE `tbl_pekerjaan_penerima` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `pekerjaanID` int(11) NOT NULL,
  `kelpenerimaID` int(11) NOT NULL,
  `usrID` int(11) NOT NULL,
  `jabatanID` int(11) NOT NULL,
  `isactive` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `createdby` varchar(128) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tbl_prioritas
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_prioritas`;

CREATE TABLE `tbl_prioritas` (
  `prioritasID` tinyint(1) NOT NULL,
  `nama` varchar(200) NOT NULL,
  PRIMARY KEY (`prioritasID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tbl_program
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_program`;

CREATE TABLE `tbl_program` (
  `programID` int(11) NOT NULL AUTO_INCREMENT,
  `skpdID` int(11) NOT NULL,
  `kodeurusan` varchar(16) CHARACTER SET latin1 NOT NULL,
  `kodeprogram` varchar(16) CHARACTER SET latin1 NOT NULL,
  `namaprogram` varchar(160) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`programID`),
  KEY `kodeprogram` (`kodeprogram`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tbl_rencana
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_rencana`;

CREATE TABLE `tbl_rencana` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `pekerjaanID` int(11) NOT NULL,
  `serap1` decimal(12,2) DEFAULT NULL,
  `serap2` decimal(12,2) DEFAULT NULL,
  `serap3` decimal(12,2) DEFAULT NULL,
  `serap4` decimal(12,2) DEFAULT NULL,
  `serap5` decimal(12,2) DEFAULT NULL,
  `serap6` decimal(12,2) DEFAULT NULL,
  `serap7` decimal(12,2) DEFAULT NULL,
  `serap8` decimal(12,2) DEFAULT NULL,
  `serap9` decimal(12,2) DEFAULT NULL,
  `serap10` decimal(12,2) DEFAULT NULL,
  `serap11` decimal(12,2) DEFAULT NULL,
  `serap12` decimal(12,2) DEFAULT NULL,
  `fisik1` decimal(10,2) DEFAULT NULL,
  `fisik2` decimal(10,2) DEFAULT NULL,
  `fisik3` decimal(10,2) DEFAULT NULL,
  `fisik4` decimal(10,2) DEFAULT NULL,
  `fisik5` decimal(10,2) DEFAULT NULL,
  `fisik6` decimal(10,2) DEFAULT NULL,
  `fisik7` decimal(10,2) DEFAULT NULL,
  `fisik8` decimal(10,2) DEFAULT NULL,
  `fisik9` decimal(10,2) DEFAULT NULL,
  `fisik10` decimal(10,2) DEFAULT NULL,
  `fisik11` decimal(10,2) DEFAULT NULL,
  `fisik12` decimal(10,2) DEFAULT NULL,
  `created` datetime NOT NULL,
  `createdby` varchar(64) CHARACTER SET latin1 NOT NULL,
  `createdip` varchar(15) CHARACTER SET latin1 NOT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedby` varchar(64) CHARACTER SET latin1 DEFAULT NULL,
  `updatedip` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`rid`),
  KEY `pekerjaanID` (`pekerjaanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tbl_rup
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_rup`;

CREATE TABLE `tbl_rup` (
  `rupID` int(11) NOT NULL AUTO_INCREMENT,
  `tglrup` date NOT NULL,
  `norup` varchar(64) CHARACTER SET latin1 NOT NULL,
  `sumberdanaID` int(11) NOT NULL,
  `isdefault` tinyint(4) NOT NULL DEFAULT '0',
  `skpdID` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `createdby` varchar(255) CHARACTER SET latin1 NOT NULL,
  `createdip` varchar(15) CHARACTER SET latin1 NOT NULL,
  `updated` datetime NOT NULL,
  `updatedby` varchar(255) CHARACTER SET latin1 NOT NULL,
  `updatedip` varchar(15) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`rupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tbl_simda_gen
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_simda_gen`;

CREATE TABLE `tbl_simda_gen` (
  `simdaid` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(128) CHARACTER SET latin1 NOT NULL,
  `genhit` int(11) DEFAULT NULL,
  `skpdID` int(11) DEFAULT NULL,
  `sumberdanaID` int(11) DEFAULT NULL,
  `lastgen` date DEFAULT NULL,
  `lastgenuser_id` varchar(128) CHARACTER SET latin1 DEFAULT NULL,
  `lastgenip` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`simdaid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tbl_sirup
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_sirup`;

CREATE TABLE `tbl_sirup` (
  `sirupID` bigint(20) NOT NULL,
  `tahun` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `pagu` decimal(10,0) NOT NULL,
  `sumber_dana_string` varchar(32) NOT NULL,
  `jenis_belanja` int(11) NOT NULL,
  `jenis_pengadaan` int(11) NOT NULL,
  `metode_pengadaan` int(11) NOT NULL,
  `jenis` int(11) NOT NULL,
  `tanggal_awal_pengadaan` date NOT NULL,
  `tanggal_akhir_pengadaan` date NOT NULL,
  `tanggal_awal_pekerjaan` date NOT NULL,
  `tanggal_akhir_pekerjaan` date NOT NULL,
  `kldi` varchar(255) NOT NULL,
  `satuan_kerja` varchar(255) NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  PRIMARY KEY (`sirupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table tbl_sirup_gen
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_sirup_gen`;

CREATE TABLE `tbl_sirup_gen` (
  `sirupgenID` int(11) NOT NULL AUTO_INCREMENT,
  `skpdID` int(11) DEFAULT NULL,
  `totalrow` int(11) DEFAULT NULL,
  `lastgen` datetime DEFAULT NULL,
  `lastgenuser_id` varchar(128) DEFAULT NULL,
  `lastgenip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`sirupgenID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table tbl_sk
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_sk`;

CREATE TABLE `tbl_sk` (
  `skID` int(11) NOT NULL AUTO_INCREMENT,
  `tglsk` date NOT NULL,
  `nosk` varchar(64) CHARACTER SET latin1 NOT NULL,
  `sktipeID` int(11) NOT NULL,
  `skpdID` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `createdby` varchar(255) CHARACTER SET latin1 NOT NULL,
  `createdip` varchar(15) CHARACTER SET latin1 NOT NULL,
  `updated` datetime NOT NULL,
  `updatedby` varchar(255) CHARACTER SET latin1 NOT NULL,
  `updatedip` varchar(15) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`skID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tbl_sk_tipe
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_sk_tipe`;

CREATE TABLE `tbl_sk_tipe` (
  `sktipeID` int(11) NOT NULL AUTO_INCREMENT,
  `tipe` varchar(64) DEFAULT NULL,
  `uraian` text,
  `ringkasan` varchar(64) DEFAULT NULL,
  `grpID` varchar(16) DEFAULT NULL,
  `urutan` tinyint(4) DEFAULT NULL,
  `isactive` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`sktipeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table tbl_sumberdana
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_sumberdana`;

CREATE TABLE `tbl_sumberdana` (
  `sumberdanaID` int(11) NOT NULL AUTO_INCREMENT,
  `sumberdana` varchar(255) CHARACTER SET latin1 NOT NULL,
  `sumberdanadetail` varchar(255) CHARACTER SET latin1 NOT NULL,
  `stat` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdip` varchar(15) CHARACTER SET latin1 NOT NULL,
  `createdby` varchar(128) CHARACTER SET latin1 NOT NULL,
  `updated` datetime NOT NULL,
  `updatedip` varchar(15) CHARACTER SET latin1 NOT NULL,
  `updatedby` varchar(255) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`sumberdanaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tbl_tipe
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_tipe`;

CREATE TABLE `tbl_tipe` (
  `tipeID` tinyint(1) NOT NULL AUTO_INCREMENT,
  `nama` varchar(35) NOT NULL,
  PRIMARY KEY (`tipeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tbl_ulpmasterdokumen
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_ulpmasterdokumen`;

CREATE TABLE `tbl_ulpmasterdokumen` (
  `dokulpid` int(11) NOT NULL AUTO_INCREMENT,
  `urutan` int(11) NOT NULL,
  `dokumennama` varchar(255) NOT NULL,
  `klasifikasiID` int(11) NOT NULL,
  `klasifikasinama` varchar(255) DEFAULT NULL,
  `hardcopy` tinyint(4) NOT NULL DEFAULT '1',
  `softcopy` tinyint(4) NOT NULL DEFAULT '1',
  `softcopyformat` varchar(32) DEFAULT NULL,
  `softcopyformattext` varchar(32) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `createdip` varchar(15) DEFAULT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedip` varchar(15) DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dokulpid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table tbl_ulppekerjaan
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_ulppekerjaan`;

CREATE TABLE `tbl_ulppekerjaan` (
  `ulppekerjaanID` int(11) NOT NULL AUTO_INCREMENT,
  `pekerjaanID` int(11) DEFAULT NULL,
  `kegiatanID` int(11) NOT NULL,
  `programID` int(11) NOT NULL,
  `skpdID` int(11) NOT NULL,
  `tahun` int(11) NOT NULL,
  `kodepekerjaan` varchar(33) NOT NULL,
  `namapekerjaan` varchar(255) NOT NULL,
  `metodeID` tinyint(4) NOT NULL,
  `anggaran` decimal(10,0) NOT NULL,
  `anggaranp` decimal(10,0) NOT NULL DEFAULT '0',
  `hps` decimal(10,0) DEFAULT NULL,
  `hpsp` decimal(10,0) DEFAULT NULL,
  `sirupID` bigint(20) DEFAULT NULL,
  `lokasi` text,
  `sumberdanaID` tinyint(4) DEFAULT NULL,
  `tipeID` tinyint(4) NOT NULL,
  `jangkawaktu` int(11) DEFAULT NULL,
  `usrID_pa` int(11) DEFAULT NULL,
  `usrID_ppkm` int(11) DEFAULT NULL,
  `usrID_pejabat` int(11) DEFAULT NULL,
  `usrID_penerima` int(11) DEFAULT NULL,
  `pilih_start` date DEFAULT NULL,
  `pilih_end` date DEFAULT NULL,
  `laksana_start` date DEFAULT NULL,
  `laksana_end` date DEFAULT NULL,
  `iswork` tinyint(4) NOT NULL DEFAULT '0',
  `nota_no` varchar(255) DEFAULT NULL,
  `nota_tanggal` date DEFAULT NULL,
  `nota_lampiran` varchar(255) DEFAULT NULL,
  `note` text,
  `usrID_ketua` int(11) DEFAULT NULL,
  `usrID_sekretaris` int(11) DEFAULT NULL,
  `usrID_anggota1` int(11) DEFAULT NULL,
  `usrID_anggota2` int(11) DEFAULT NULL,
  `usrID_anggota3` int(11) DEFAULT NULL,
  `usrID_anggota4` int(11) DEFAULT NULL,
  `usrID_anggota5` int(11) DEFAULT NULL,
  `surat_no` varchar(255) DEFAULT NULL,
  `surat_tanggal` date DEFAULT NULL,
  `pejabattipe` tinyint(4) DEFAULT NULL,
  `created` datetime NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `createdby` varchar(64) NOT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedip` varchar(15) DEFAULT NULL,
  `updatedby` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`ulppekerjaanID`),
  KEY `kegiatanID` (`kegiatanID`),
  KEY `programID` (`programID`),
  KEY `skpdID` (`skpdID`),
  KEY `metodeID` (`metodeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table tbl_ulpuser
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_ulpuser`;

CREATE TABLE `tbl_ulpuser` (
  `usrID` int(11) NOT NULL AUTO_INCREMENT,
  `eproject_usrID` int(11) DEFAULT NULL,
  `usrname` varchar(128) CHARACTER SET latin1 NOT NULL,
  `pwd` varchar(255) CHARACTER SET latin1 NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 NOT NULL,
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
  `created` datetime NOT NULL,
  `createdip` varchar(15) CHARACTER SET latin1 NOT NULL,
  `createdby` varchar(128) CHARACTER SET latin1 NOT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedip` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `updatedby` varchar(128) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`usrID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tr_sk_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tr_sk_user`;

CREATE TABLE `tr_sk_user` (
  `skusrID` int(11) NOT NULL AUTO_INCREMENT,
  `skID` int(11) NOT NULL,
  `usrID` int(11) NOT NULL,
  PRIMARY KEY (`skusrID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tr_ulpuser_sk
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tr_ulpuser_sk`;

CREATE TABLE `tr_ulpuser_sk` (
  `skusrID` int(11) NOT NULL AUTO_INCREMENT,
  `skID` int(11) NOT NULL,
  `usrID` int(11) NOT NULL,
  PRIMARY KEY (`skusrID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
