# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.6.28)
# Database: 2016_birms_econtract
# Generation Time: 2017-08-30 05:14:37 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table talert_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `talert_log`;

CREATE TABLE `talert_log` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `alerttime` datetime DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `to` varchar(255) DEFAULT NULL,
  `message` text,
  `ip` varchar(15) DEFAULT NULL,
  `stat` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tbl_user_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_user_log`;

CREATE TABLE `tbl_user_log` (
  `logID` int(11) NOT NULL AUTO_INCREMENT,
  `logtime` datetime NOT NULL,
  `username` varchar(128) NOT NULL,
  `logaction` varchar(255) NOT NULL,
  `logsql` mediumtext NOT NULL,
  `logip` varchar(15) NOT NULL,
  `loguseragent` text NOT NULL,
  PRIMARY KEY (`logID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tklasifikasi
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tklasifikasi`;

CREATE TABLE `tklasifikasi` (
  `klasifikasiID` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(10) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kd` int(11) NOT NULL DEFAULT '0',
  `skk` tinyint(4) DEFAULT NULL,
  `stat` tinyint(4) NOT NULL DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `createdby` varchar(128) DEFAULT NULL,
  `createdip` varchar(15) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedby` varchar(128) DEFAULT NULL,
  `updatedip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`klasifikasiID`),
  KEY `kode` (`kode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tkontrak
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tkontrak`;

CREATE TABLE `tkontrak` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pgid` int(11) NOT NULL,
  `lgid` int(11) DEFAULT NULL,
  `sppbj_nosurat` varchar(50) DEFAULT NULL,
  `sppbj_lampiran` varchar(255) NOT NULL,
  `sppbj_tgl_surat` datetime DEFAULT NULL,
  `ppkm_userid` int(11) DEFAULT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `nip` varchar(18) NOT NULL,
  `sp_nosurat` varchar(255) NOT NULL,
  `sp_tgl_surat` date NOT NULL,
  `sp_isian` mediumtext NOT NULL,
  `sp_tgl_slskontrak` date NOT NULL,
  `add_nosurat` varchar(255) NOT NULL,
  `add_tgl_surat` date NOT NULL,
  `add_isian` mediumtext NOT NULL,
  `rencana_isian` mediumtext NOT NULL,
  `stat` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdby` varchar(255) NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tkontrak_penunjukan
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tkontrak_penunjukan`;

CREATE TABLE `tkontrak_penunjukan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pgid` int(11) NOT NULL,
  `sppbj_nosurat` text,
  `sppbj_lampiran` varchar(255) NOT NULL,
  `sppbj_tgl_surat` datetime DEFAULT NULL,
  `spk_nosurat` text NOT NULL,
  `spk_tgl_surat` datetime NOT NULL,
  `spk_isian` mediumtext NOT NULL,
  `spk_tgl_slskontrak` date NOT NULL,
  `sp_nosurat` text NOT NULL,
  `sp_tgl_surat` date NOT NULL,
  `sp_isian` mediumtext NOT NULL,
  `rencana_isian` mediumtext NOT NULL,
  `stat` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdby` varchar(255) NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pgid` (`pgid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tlelangumum
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tlelangumum`;

CREATE TABLE `tlelangumum` (
  `lgid` bigint(20) NOT NULL AUTO_INCREMENT,
  `pekerjaanID` bigint(20) NOT NULL,
  `kode` text NOT NULL,
  `programID` int(11) DEFAULT NULL,
  `namaprogram` varchar(255) DEFAULT NULL,
  `namakegiatan` varchar(255) NOT NULL,
  `namapekerjaan` text NOT NULL,
  `ta` int(11) NOT NULL DEFAULT '2013' COMMENT 'Tahun Anggaran',
  `pemenang` varchar(128) DEFAULT NULL,
  `anggaran` decimal(14,0) NOT NULL,
  `sumberdanaid` tinyint(4) NOT NULL DEFAULT '0',
  `hps` decimal(14,0) NOT NULL,
  `ppn` int(10) DEFAULT NULL,
  `ppkm_userid` int(11) NOT NULL,
  `kpa_userid` int(11) NOT NULL,
  `pejabat_userid` int(11) NOT NULL,
  `penerima_userid` int(11) NOT NULL,
  `ppkm_sk` varchar(255) NOT NULL,
  `ppkm_sktgl` date NOT NULL,
  `kpa_sk` varchar(255) NOT NULL,
  `kpa_sktgl` date NOT NULL,
  `pejabat_sk` varchar(255) NOT NULL,
  `pejabat_sktgl` date NOT NULL,
  `penerima_sk` varchar(255) NOT NULL,
  `penerima_sktgl` date NOT NULL,
  `skpdnama` varchar(255) NOT NULL,
  `skpdID` int(11) NOT NULL,
  `pekerjaanstatus` tinyint(4) NOT NULL,
  `stat` varchar(32) DEFAULT NULL,
  `nilai_nego` decimal(14,0) DEFAULT NULL,
  `pendukung` decimal(10,0) DEFAULT NULL,
  `created` datetime NOT NULL,
  `createdby` varchar(128) NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedby` varchar(128) NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  PRIMARY KEY (`lgid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tmaster_libur
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tmaster_libur`;

CREATE TABLE `tmaster_libur` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `tipe` varchar(7) NOT NULL,
  `tanggal` date NOT NULL,
  `hari` varchar(7) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `stat` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `createdby` varchar(128) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tmaster_mtd_pengadaan
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tmaster_mtd_pengadaan`;

CREATE TABLE `tmaster_mtd_pengadaan` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `nama` text NOT NULL,
  `sistem_pengadaan_id` int(11) NOT NULL,
  `mtd_kualifikasi_id` int(11) NOT NULL,
  `mtd_eval_pengadaan_id` int(11) NOT NULL,
  `mtd_penyampaian_id` int(11) NOT NULL,
  `mtd_eval_penawaran_id` int(11) NOT NULL,
  `stat` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `createdby` varchar(128) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table tmaster_syarat_dokumen
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tmaster_syarat_dokumen`;

CREATE TABLE `tmaster_syarat_dokumen` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ParentID` int(11) NOT NULL,
  `urutan` int(11) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `automatic` tinyint(4) NOT NULL DEFAULT '0',
  `linkmodul` varchar(255) NOT NULL,
  `maxdokumen` float NOT NULL DEFAULT '5242880',
  `stat` tinyint(4) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `createdby` varchar(128) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;



# Dump of table tmaster_tahap
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tmaster_tahap`;

CREATE TABLE `tmaster_tahap` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `kode` int(11) NOT NULL,
  `urutan` int(11) NOT NULL,
  `tipe` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `waktu_mulai` int(11) NOT NULL,
  `status_waktu_mulai_boleh_maju` tinyint(4) NOT NULL,
  `status_waktu_mulai_boleh_mundur` tinyint(4) NOT NULL,
  `waktu_selesai` int(11) NOT NULL,
  `status_waktu_selesai_boleh_maju` tinyint(4) NOT NULL,
  `status_waktu_selesai_boleh_mundur` tinyint(4) NOT NULL,
  `master_metode_pengadaan_id` int(11) NOT NULL,
  `evaluasiid` int(11) NOT NULL,
  `stat` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `createdby` varchar(128) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;



# Dump of table tmtd_eval_penawaran
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tmtd_eval_penawaran`;

CREATE TABLE `tmtd_eval_penawaran` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `stat` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `createdby` varchar(128) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tmtd_eval_pengadaan
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tmtd_eval_pengadaan`;

CREATE TABLE `tmtd_eval_pengadaan` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `bobotteknis` tinyint(4) NOT NULL,
  `stat` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `createdby` varchar(128) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tmtd_kontrak
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tmtd_kontrak`;

CREATE TABLE `tmtd_kontrak` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `stat` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `createdby` varchar(128) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tmtd_kualifikasi
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tmtd_kualifikasi`;

CREATE TABLE `tmtd_kualifikasi` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `stat` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `createdby` varchar(128) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;



# Dump of table tmtd_penyampaian
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tmtd_penyampaian`;

CREATE TABLE `tmtd_penyampaian` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `stat` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `createdby` varchar(128) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;



# Dump of table tonline
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tonline`;

CREATE TABLE `tonline` (
  `tonline_id` int(11) NOT NULL AUTO_INCREMENT,
  `tonline_visitor` varchar(100) DEFAULT NULL,
  `tonline_timevisit` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tonline_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tpekerjaan
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpekerjaan`;

CREATE TABLE `tpekerjaan` (
  `pid` bigint(20) NOT NULL AUTO_INCREMENT,
  `pekerjaanID` bigint(20) NOT NULL COMMENT '2013 Get from birms_eproject_planning.tbl_pekerjaan.pekerjaanID',
  `kode` text NOT NULL,
  `namakegiatan` varchar(255) NOT NULL,
  `namapekerjaan` text NOT NULL,
  `tanggalrencana` date NOT NULL,
  `ta` int(11) NOT NULL DEFAULT '2011' COMMENT 'Tahun Anggaran',
  `anggaran` decimal(14,0) NOT NULL,
  `sumberdanaid` tinyint(4) NOT NULL,
  `hps` decimal(14,0) NOT NULL,
  `ppn` int(10) NOT NULL,
  `ppkm_userid` int(11) NOT NULL,
  `kpa_userid` int(11) NOT NULL,
  `pejabat_userid` int(11) NOT NULL,
  `penerima_userid` int(11) NOT NULL,
  `pptk_userid` int(11) DEFAULT NULL,
  `bp_userid` int(11) DEFAULT NULL,
  `ppkm_sk` varchar(255) NOT NULL,
  `ppkm_sktgl` date NOT NULL,
  `kpa_sk` varchar(255) NOT NULL,
  `kpa_sktgl` date NOT NULL,
  `pejabat_sk` varchar(255) NOT NULL,
  `pejabat_sktgl` date NOT NULL,
  `penerima_sk` varchar(255) NOT NULL,
  `penerima_sktgl` date NOT NULL,
  `pptk_sk` varchar(255) DEFAULT NULL,
  `pptk_sktgl` date DEFAULT NULL,
  `bp_sk` varchar(255) DEFAULT NULL,
  `bp_sktgl` date DEFAULT NULL,
  `skpdID` int(11) NOT NULL,
  `jenisID` int(11) NOT NULL DEFAULT '0',
  `metodeID` int(11) DEFAULT NULL,
  `klasifikasiID` int(11) NOT NULL,
  `periodeID` int(11) NOT NULL,
  `statusumum` int(11) NOT NULL,
  `pekerjaanstatus` tinyint(4) NOT NULL,
  `perencanaanstatus` tinyint(4) NOT NULL,
  `perencanaanstatusdate` datetime NOT NULL,
  `kompleks` tinyint(4) NOT NULL,
  `metodekualifikasi` int(11) NOT NULL,
  `metodeevalpengadaan` int(11) NOT NULL,
  `metodepenyampaian` int(11) NOT NULL,
  `metodekontrak` int(11) NOT NULL,
  `metodeevaltawar` int(11) NOT NULL,
  `sistempengadaanID` int(11) NOT NULL,
  `ambanglulus` tinyint(4) DEFAULT NULL,
  `bobotteknis` tinyint(4) DEFAULT NULL,
  `bobotbiaya` tinyint(4) DEFAULT NULL,
  `bobotkuapengalaman` tinyint(4) NOT NULL,
  `bobotkuaahli` tinyint(4) NOT NULL,
  `bobotevalpengalaman` tinyint(4) NOT NULL,
  `bobotevalmethod` tinyint(4) NOT NULL,
  `bobotevalahli` tinyint(4) NOT NULL,
  `panitiaopen` datetime NOT NULL,
  `ppkmopen` datetime NOT NULL,
  `dpamurniopen` tinyint(4) DEFAULT '0',
  `penyediaopen` datetime NOT NULL,
  `sistemeprocurement` tinyint(4) NOT NULL DEFAULT '0',
  `tglpaktaintegritas` date NOT NULL,
  `lokasi` text,
  `saltid` varchar(6) DEFAULT '',
  `created` datetime NOT NULL,
  `createdby` varchar(128) NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedby` varchar(128) NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `pekerjaanID` (`pekerjaanID`),
  KEY `sumberdanaid` (`sumberdanaid`),
  KEY `ppkm_userid` (`ppkm_userid`),
  KEY `kpa_userid` (`kpa_userid`),
  KEY `pejabat_userid` (`pejabat_userid`),
  KEY `penerima_userid` (`penerima_userid`),
  KEY `skpdID` (`skpdID`),
  KEY `jenisID` (`jenisID`),
  KEY `klasifikasiID` (`klasifikasiID`),
  KEY `sistempengadaanID` (`sistempengadaanID`),
  KEY `ta` (`ta`),
  KEY `metodeevalpengadaan` (`metodeevalpengadaan`),
  KEY `metodepenyampaian` (`metodepenyampaian`),
  KEY `metodekontrak` (`metodekontrak`),
  KEY `metodeevaltawar` (`metodeevaltawar`),
  KEY `metodekualifikasi` (`metodekualifikasi`),
  KEY `createdby` (`createdby`),
  KEY `periodeID` (`periodeID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tpekerjaan_batal
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpekerjaan_batal`;

CREATE TABLE `tpekerjaan_batal` (
  `batalID` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `pgid` int(11) DEFAULT NULL,
  `pekerjaanID` int(11) DEFAULT NULL,
  `kode` text,
  `namakegiatan` varchar(255) DEFAULT NULL,
  `namapekerjaan` text,
  `ta` int(11) DEFAULT NULL,
  `anggaran` decimal(14,0) DEFAULT NULL,
  `hps` decimal(14,0) DEFAULT NULL,
  `alasan` text,
  `lampiran` varchar(255) DEFAULT NULL,
  `permintaanbatal` int(11) DEFAULT NULL COMMENT '1: Batal Pekerjaan, 2: Batal Penyedia, 3: Batal Pengadaan',
  `batalstat` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `createdby` varchar(128) DEFAULT NULL,
  `createdip` varchar(15) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedby` varchar(128) DEFAULT NULL,
  `updatedip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`batalID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tpekerjaan_batal_alasan
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpekerjaan_batal_alasan`;

CREATE TABLE `tpekerjaan_batal_alasan` (
  `alasanID` int(11) NOT NULL AUTO_INCREMENT,
  `alasan` text,
  `isactive` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `createdby` varchar(128) DEFAULT NULL,
  `createdip` varchar(15) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedby` varchar(128) DEFAULT NULL,
  `updatedip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`alasanID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tpekerjaan_dokumen
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpekerjaan_dokumen`;

CREATE TABLE `tpekerjaan_dokumen` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `namafile` varchar(255) NOT NULL,
  `doctype` tinyint(4) NOT NULL COMMENT '1: Spesifikasi Teknis, 2: Rancangan Kontrak, 3:Dokumen Lelang',
  `deskripsi` varchar(255) NOT NULL,
  `stat` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `createdby` varchar(128) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tpekerjaan_jadwal
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpekerjaan_jadwal`;

CREATE TABLE `tpekerjaan_jadwal` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `tahapID` int(11) NOT NULL,
  `tanggal_mulai` datetime DEFAULT NULL,
  `tanggal_selesai` datetime DEFAULT NULL,
  `stat` tinyint(4) unsigned DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `createdip` varchar(15) COLLATE latin1_bin DEFAULT NULL,
  `createdby` varchar(128) COLLATE latin1_bin DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedip` varchar(15) COLLATE latin1_bin DEFAULT NULL,
  `updatedby` varchar(128) COLLATE latin1_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_bin;



# Dump of table tpekerjaan_kerja_survei
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpekerjaan_kerja_survei`;

CREATE TABLE `tpekerjaan_kerja_survei` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `tgl_ba` datetime DEFAULT NULL,
  `nomor_ba` varchar(50) DEFAULT NULL,
  `tempat` varchar(50) DEFAULT NULL,
  `isian` mediumtext,
  `nilaipajak` mediumtext,
  `stat` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdby` varchar(255) NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tpekerjaan_kerja_survei_rincian
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpekerjaan_kerja_survei_rincian`;

CREATE TABLE `tpekerjaan_kerja_survei_rincian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pekerjaan_rincian_id` int(11) NOT NULL,
  `sumberid` tinyint(11) NOT NULL,
  `tipe` varchar(255) DEFAULT NULL,
  `harga` decimal(12,2) NOT NULL,
  `stat` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdby` varchar(255) NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `penawaran_id` (`sumberid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tpekerjaan_notaproses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpekerjaan_notaproses`;

CREATE TABLE `tpekerjaan_notaproses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `tgl_ba` datetime DEFAULT NULL,
  `nomor_ba` text,
  `tempat` varchar(50) DEFAULT NULL,
  `isian` mediumtext,
  `stat` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdby` varchar(255) NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tpekerjaan_panitia
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpekerjaan_panitia`;

CREATE TABLE `tpekerjaan_panitia` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `pekerjaanID` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `kelompokID` int(11) NOT NULL,
  `usrID` int(11) NOT NULL,
  `jabatanID` int(11) NOT NULL,
  `isactive` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `createdby` varchar(128) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `pid` (`pid`),
  KEY `pekerjaanID` (`pekerjaanID`),
  KEY `kelompokID` (`kelompokID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table tpekerjaan_penerima
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpekerjaan_penerima`;

CREATE TABLE `tpekerjaan_penerima` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `pekerjaanID` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
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
  PRIMARY KEY (`ID`),
  KEY `pid` (`pid`),
  KEY `pekerjaanID` (`pekerjaanID`),
  KEY `kelompokID` (`kelpenerimaID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tpekerjaan_penetapan
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpekerjaan_penetapan`;

CREATE TABLE `tpekerjaan_penetapan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `tgl_ba` datetime DEFAULT NULL,
  `nomor_ba` text,
  `tempat` varchar(50) DEFAULT NULL,
  `isian` mediumtext,
  `stat` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdby` varchar(255) NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tpekerjaan_pesanan
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpekerjaan_pesanan`;

CREATE TABLE `tpekerjaan_pesanan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `perusahaanID` int(11) DEFAULT NULL,
  `tgl_ba` datetime DEFAULT NULL,
  `nomor_ba` text,
  `isian` mediumtext,
  `stat` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdby` varchar(255) NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tpekerjaan_rincian
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpekerjaan_rincian`;

CREATE TABLE `tpekerjaan_rincian` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `tipe` int(11) NOT NULL,
  `nama` text NOT NULL,
  `harga` int(11) NOT NULL,
  `ppn` float DEFAULT NULL,
  `volume` varchar(15) NOT NULL,
  `satuan` varchar(255) NOT NULL,
  `urutan` varchar(27) NOT NULL,
  `urutanuser` varchar(27) DEFAULT NULL,
  `stat` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `createdby` varchar(128) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  FULLTEXT KEY `nama` (`nama`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tpekerjaan_spekteknis
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpekerjaan_spekteknis`;

CREATE TABLE `tpekerjaan_spekteknis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `tgl_ba` datetime DEFAULT NULL,
  `isian` mediumtext,
  `stat` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdby` varchar(255) NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tpekerjaan_survei
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpekerjaan_survei`;

CREATE TABLE `tpekerjaan_survei` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `tgl_ba` datetime DEFAULT NULL,
  `nomor_ba` varchar(50) DEFAULT NULL,
  `tempat` varchar(50) DEFAULT NULL,
  `isian` mediumtext,
  `nilaipajak` mediumtext,
  `stat` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdby` varchar(255) NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tpekerjaan_survei_rincian
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpekerjaan_survei_rincian`;

CREATE TABLE `tpekerjaan_survei_rincian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pekerjaan_rincian_id` int(11) NOT NULL,
  `sumberid` tinyint(11) NOT NULL,
  `tipe` varchar(255) DEFAULT NULL,
  `harga` decimal(12,2) NOT NULL,
  `stat` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdby` varchar(255) NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `penawaran_id` (`sumberid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tpekerjaan_syarat_dokumen
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpekerjaan_syarat_dokumen`;

CREATE TABLE `tpekerjaan_syarat_dokumen` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `masterid` int(11) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `wajib` tinyint(4) NOT NULL,
  `enkrip` tinyint(4) NOT NULL,
  `stat` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `createdby` varchar(128) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;



# Dump of table tpekerjaan_terpakai
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpekerjaan_terpakai`;

CREATE TABLE `tpekerjaan_terpakai` (
  `opid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `pekerjaanID` int(11) NOT NULL,
  `anggaran` decimal(14,0) NOT NULL,
  `hps` decimal(14,0) DEFAULT NULL,
  `ppn` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `createdby` varchar(128) NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedby` varchar(128) DEFAULT NULL,
  `updatedip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`opid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tpekerjaan_undangan
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpekerjaan_undangan`;

CREATE TABLE `tpekerjaan_undangan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `tgl_ba` datetime DEFAULT NULL,
  `nomor_ba` varchar(50) DEFAULT NULL,
  `tempat` varchar(50) DEFAULT NULL,
  `isian` mediumtext,
  `stat` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdby` varchar(255) NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tpenawaran
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpenawaran`;

CREATE TABLE `tpenawaran` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `registertanggal` datetime NOT NULL,
  `penawarantanggal` datetime NOT NULL,
  `penawarannosurat` varchar(255) NOT NULL,
  `penawaransurattanggal` date NOT NULL,
  `penawaranjangkawaktu` decimal(11,2) NOT NULL,
  `penawaranwaktusatuan` varchar(15) NOT NULL,
  `penawaranmasaberlaku` decimal(11,2) NOT NULL,
  `penawaranberlakusatuan` varchar(8) NOT NULL,
  `penawaranlampiran` text NOT NULL,
  `pengumumanno` varchar(64) NOT NULL,
  `pengumumantanggal` date NOT NULL,
  `nilai_akhir` decimal(12,0) NOT NULL,
  `nilai_terenkripsi` varchar(255) NOT NULL,
  `amplop_enkripsi_penyedia` varchar(255) NOT NULL,
  `amplop_enkripsi_panitia` varchar(255) NOT NULL,
  `tanda_tangan` varchar(255) NOT NULL,
  `nilai_terdekripsi` decimal(12,0) NOT NULL,
  `pembuka_enkripsi` varchar(255) NOT NULL,
  `nilai_teknis` int(255) NOT NULL,
  `urutan` tinyint(255) NOT NULL,
  `urutan_teknis` tinyint(255) NOT NULL,
  `urutan_akhir` tinyint(255) NOT NULL,
  `status` tinyint(255) NOT NULL,
  `evalstat1` tinyint(4) NOT NULL DEFAULT '0',
  `evalstat2` tinyint(4) NOT NULL DEFAULT '0',
  `evalstat3` tinyint(4) NOT NULL DEFAULT '0',
  `evalstat4` tinyint(4) DEFAULT NULL,
  `envencrypt` tinyint(4) DEFAULT '0',
  `encrypted` datetime DEFAULT NULL,
  `encryptedby` varchar(255) DEFAULT NULL,
  `encryptedip` varchar(15) DEFAULT NULL,
  `envpanitiaopen` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0:Penyedia, 1:Panitia',
  `opened` datetime NOT NULL,
  `openedby` varchar(255) NOT NULL,
  `openedip` varchar(15) NOT NULL,
  `pid` int(255) NOT NULL,
  `pgid` int(255) NOT NULL,
  `perusahaanID` int(11) NOT NULL,
  `kso` text NOT NULL,
  `tipe_penawaran` int(255) NOT NULL,
  `tkdn` text,
  `buktikualifikasi` varchar(255) DEFAULT NULL,
  `evalkuapengalaman` decimal(11,2) DEFAULT NULL,
  `evalkuaahli` decimal(11,2) DEFAULT NULL,
  `evalkuatotalnilai` decimal(12,2) DEFAULT NULL,
  `evalteknispengalaman` decimal(11,2) DEFAULT NULL,
  `evalteknismethod` decimal(11,2) DEFAULT NULL,
  `evalteknisahli` decimal(11,2) DEFAULT NULL,
  `evalteknistotalnilai` decimal(12,2) DEFAULT NULL,
  `evalteknisbiaya` decimal(12,2) DEFAULT NULL,
  `evalnilaiakhir` decimal(12,2) DEFAULT NULL,
  `stat` tinyint(255) NOT NULL,
  `created` datetime NOT NULL,
  `createdby` varchar(255) NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `pgid` (`pgid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tpenawaran_dokumen
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpenawaran_dokumen`;

CREATE TABLE `tpenawaran_dokumen` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `penawaranid` int(11) NOT NULL,
  `pengadaandokid` int(11) NOT NULL DEFAULT '0',
  `namafile` varchar(255) NOT NULL,
  `doctype` tinyint(4) NOT NULL COMMENT '1: Spesifikasi Teknis, 2: Rancangan Kontrak, 3:Dokumen Lelang',
  `deskripsi` varchar(255) NOT NULL,
  `stat` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `createdby` varchar(128) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tpenawaran_dukungan
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpenawaran_dukungan`;

CREATE TABLE `tpenawaran_dukungan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomor` varchar(128) NOT NULL,
  `tanggal` date NOT NULL,
  `namabank` varchar(128) NOT NULL,
  `nilai` decimal(12,0) NOT NULL,
  `penawaranid` int(11) NOT NULL,
  `stat` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdby` varchar(255) NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tpenawaran_kelengkapan
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpenawaran_kelengkapan`;

CREATE TABLE `tpenawaran_kelengkapan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pgid` int(11) NOT NULL,
  `penawaranid` int(11) NOT NULL,
  `perusahaanid` int(11) NOT NULL,
  `dokadmin` tinyint(4) NOT NULL,
  `dokteknis` tinyint(4) NOT NULL,
  `doklain` varchar(10) NOT NULL,
  `stat` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdby` varchar(255) NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tpenawaran_rincian
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpenawaran_rincian`;

CREATE TABLE `tpenawaran_rincian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pengadaan_rincian_id` int(11) NOT NULL,
  `penawaran_id` int(11) NOT NULL,
  `tipe` varchar(255) DEFAULT NULL,
  `nilai_akhir` decimal(12,2) NOT NULL,
  `nilai_terenkripsi` varchar(255) NOT NULL,
  `amplop_enkripsi_penyedia` varchar(255) NOT NULL,
  `amplop_enkripsi_panitia` varchar(255) NOT NULL,
  `tanda_tangan` varchar(255) NOT NULL,
  `nilai_terdekripsi` varchar(255) NOT NULL,
  `pembuka_enkripsi` varchar(255) NOT NULL,
  `stat` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdby` varchar(255) NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `penawaran_id` (`penawaran_id`),
  KEY `pengadaan_rincian_id` (`pengadaan_rincian_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tpengadaan
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpengadaan`;

CREATE TABLE `tpengadaan` (
  `pgid` bigint(20) NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) NOT NULL,
  `kode` text NOT NULL,
  `namakegiatan` varchar(255) NOT NULL,
  `namapekerjaan` text NOT NULL,
  `tanggalrencana` date NOT NULL,
  `ta` int(11) NOT NULL DEFAULT '2011' COMMENT 'Tahun Anggaran',
  `anggaran` decimal(14,0) NOT NULL,
  `sumberdanaid` tinyint(4) NOT NULL DEFAULT '0',
  `hps` decimal(14,0) NOT NULL,
  `ppn` int(10) DEFAULT NULL,
  `ppkm_userid` int(11) NOT NULL,
  `kpa_userid` int(11) NOT NULL,
  `pejabat_userid` int(11) NOT NULL,
  `penerima_userid` int(11) NOT NULL,
  `pptk_userid` int(11) DEFAULT NULL,
  `bp_userid` int(11) DEFAULT NULL,
  `ppkm_sk` varchar(255) NOT NULL,
  `ppkm_sktgl` date NOT NULL,
  `kpa_sk` varchar(255) NOT NULL,
  `kpa_sktgl` date NOT NULL,
  `pejabat_sk` varchar(255) NOT NULL,
  `pejabat_sktgl` date NOT NULL,
  `penerima_sk` varchar(255) NOT NULL,
  `penerima_sktgl` date NOT NULL,
  `pptk_sk` varchar(255) DEFAULT NULL,
  `pptk_sktgl` date DEFAULT NULL,
  `bp_sk` varchar(255) DEFAULT NULL,
  `bp_sktgl` date DEFAULT NULL,
  `skpdID` int(11) NOT NULL,
  `jenisID` int(11) DEFAULT NULL,
  `metodeID` int(11) DEFAULT NULL,
  `klasifikasiID` int(11) NOT NULL,
  `periodeID` int(11) NOT NULL,
  `statusumum` int(11) NOT NULL,
  `pekerjaanstatus` tinyint(4) NOT NULL,
  `metodekualifikasi` int(11) NOT NULL,
  `metodeevalpengadaan` int(11) NOT NULL,
  `metodepenyampaian` int(11) NOT NULL,
  `metodekontrak` int(11) NOT NULL,
  `metodeevaltawar` int(11) NOT NULL,
  `sistempengadaanID` int(11) NOT NULL,
  `ambanglulus` int(11) DEFAULT NULL,
  `bobotteknis` int(11) NOT NULL,
  `bobotbiaya` int(11) NOT NULL,
  `bobotkuapengalaman` tinyint(4) NOT NULL,
  `bobotkuaahli` tinyint(4) NOT NULL,
  `bobotevalpengalaman` tinyint(4) NOT NULL,
  `bobotevalmethod` tinyint(4) NOT NULL,
  `bobotevalahli` tinyint(4) NOT NULL,
  `otoritas` varchar(10) DEFAULT NULL,
  `nilai_nego` decimal(14,0) DEFAULT NULL,
  `pendukung` decimal(10,0) DEFAULT NULL,
  `notpendukung` tinyint(1) DEFAULT NULL,
  `sistemeprocurement` tinyint(4) NOT NULL DEFAULT '0',
  `lokasi` text,
  `created` datetime NOT NULL,
  `createdby` varchar(128) NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedby` varchar(128) NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  PRIMARY KEY (`pgid`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tpengadaan_aanwijzing
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpengadaan_aanwijzing`;

CREATE TABLE `tpengadaan_aanwijzing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pgid` int(11) NOT NULL,
  `tgl_ba` datetime DEFAULT NULL,
  `nomor_ba` varchar(50) DEFAULT NULL,
  `tempat` varchar(50) DEFAULT NULL,
  `isian` mediumtext,
  `stat` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdby` varchar(255) NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table tpengadaan_banegosiasi
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpengadaan_banegosiasi`;

CREATE TABLE `tpengadaan_banegosiasi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pgid` int(11) NOT NULL,
  `nomor_ba` varchar(50) DEFAULT NULL,
  `tempat` varchar(50) DEFAULT NULL,
  `isian` mediumtext NOT NULL,
  `stat` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdby` varchar(255) NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tpengadaan_banegosiasi_hasil
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpengadaan_banegosiasi_hasil`;

CREATE TABLE `tpengadaan_banegosiasi_hasil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pgid` int(11) NOT NULL,
  `nomor_ba` varchar(50) DEFAULT NULL,
  `tempat` varchar(50) DEFAULT NULL,
  `stat` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdby` varchar(255) NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tpengadaan_buktikualifikasi
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpengadaan_buktikualifikasi`;

CREATE TABLE `tpengadaan_buktikualifikasi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pgid` int(11) NOT NULL,
  `tgl_ba` datetime DEFAULT NULL,
  `nomor_ba` varchar(50) DEFAULT NULL,
  `sk` varchar(255) DEFAULT NULL,
  `nomor_sk` varchar(255) DEFAULT NULL,
  `tgl_sk` date DEFAULT NULL,
  `tempat` varchar(50) DEFAULT NULL,
  `kolom` text,
  `stat` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdby` varchar(255) NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tpengadaan_evalprakualifikasi
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpengadaan_evalprakualifikasi`;

CREATE TABLE `tpengadaan_evalprakualifikasi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pgid` int(11) NOT NULL,
  `tgl_ba` datetime DEFAULT NULL,
  `nomor_ba` varchar(50) DEFAULT NULL,
  `tempat` varchar(50) DEFAULT NULL,
  `isian` mediumtext,
  `stat` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdby` varchar(255) NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table tpengadaan_hasillelang
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpengadaan_hasillelang`;

CREATE TABLE `tpengadaan_hasillelang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pgid` int(11) NOT NULL,
  `tgl_ba` datetime DEFAULT NULL,
  `nomor_ba` varchar(50) DEFAULT NULL,
  `tempat` varchar(50) DEFAULT NULL,
  `isian` mediumtext NOT NULL,
  `stat` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdby` varchar(255) NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tpengadaan_negosiasi
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpengadaan_negosiasi`;

CREATE TABLE `tpengadaan_negosiasi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pengadaan_rincian_id` int(11) NOT NULL,
  `nilai_nego` bigint(20) NOT NULL,
  `stat` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdby` varchar(255) NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pengadaan_rincian_id` (`pengadaan_rincian_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tpengadaan_panitia
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpengadaan_panitia`;

CREATE TABLE `tpengadaan_panitia` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `pgid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `kelompokID` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `jabatanid` int(11) NOT NULL,
  `stat` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `createdby` varchar(128) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tpengadaan_pembelian
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpengadaan_pembelian`;

CREATE TABLE `tpengadaan_pembelian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pgid` int(11) NOT NULL,
  `pembeliantipe` tinyint(4) DEFAULT NULL COMMENT '0: Permintaan Pembelian 1: Persetujuan Pembelian',
  `tgl` date DEFAULT NULL,
  `nomor` varchar(50) DEFAULT NULL,
  `tempat` varchar(50) DEFAULT NULL,
  `isian` mediumtext NOT NULL,
  `stat` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdby` varchar(255) NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tpengadaan_pembukaan
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpengadaan_pembukaan`;

CREATE TABLE `tpengadaan_pembukaan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pgid` int(11) NOT NULL,
  `tgl_ba` datetime DEFAULT NULL,
  `nomor_ba` varchar(50) DEFAULT NULL,
  `tempat` varchar(50) DEFAULT NULL,
  `dokkelengkapan` text,
  `isian` mediumtext NOT NULL,
  `stat` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdby` varchar(255) NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tpengadaan_pemenang
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpengadaan_pemenang`;

CREATE TABLE `tpengadaan_pemenang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pgid` int(11) NOT NULL,
  `tgl_surat` datetime DEFAULT NULL,
  `nomor_surat` varchar(50) DEFAULT NULL,
  `perusahaanid` int(11) DEFAULT NULL,
  `perusahaannama` varchar(255) DEFAULT NULL,
  `perusahaanalamat` varchar(255) NOT NULL,
  `perusahaannpwp` varchar(64) NOT NULL,
  `nilai` decimal(12,0) NOT NULL,
  `status` int(11) NOT NULL,
  `perusahaanid2` int(11) DEFAULT NULL,
  `perusahaannama2` varchar(255) DEFAULT NULL,
  `perusahaanalamat2` varchar(255) DEFAULT NULL,
  `perusahaannpwp2` varchar(64) DEFAULT NULL,
  `nilai2` decimal(12,0) DEFAULT NULL,
  `status2` int(11) DEFAULT NULL,
  `perusahaanid3` int(11) DEFAULT NULL,
  `perusahaannama3` varchar(255) DEFAULT NULL,
  `perusahaanalamat3` varchar(255) DEFAULT NULL,
  `perusahaannpwp3` varchar(64) DEFAULT NULL,
  `nilai3` decimal(12,0) DEFAULT NULL,
  `status3` int(11) DEFAULT NULL,
  `nokontrak` varchar(255) DEFAULT NULL,
  `tglkontrak` date DEFAULT NULL,
  `nobaserahterima` varchar(255) DEFAULT NULL,
  `tglbaserahterima` date DEFAULT NULL,
  `pengumuman_tgl` datetime DEFAULT NULL,
  `pengumuman_no` varchar(255) DEFAULT NULL,
  `stat` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdby` varchar(255) NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pgid` (`pgid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tpengadaan_rincian
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpengadaan_rincian`;

CREATE TABLE `tpengadaan_rincian` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `pkrid` int(11) DEFAULT NULL,
  `pgid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `tipe` int(11) NOT NULL,
  `nama` text NOT NULL,
  `volume` varchar(15) NOT NULL,
  `satuan` varchar(255) NOT NULL,
  `urutan` varchar(27) NOT NULL,
  `urutanuser` varchar(27) DEFAULT NULL,
  `stat` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `createdby` varchar(128) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `pkrid` (`pkrid`),
  KEY `pgid` (`pgid`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tpengadaan_syarat_dokumen
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpengadaan_syarat_dokumen`;

CREATE TABLE `tpengadaan_syarat_dokumen` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `pgid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `masterid` int(11) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `wajib` tinyint(4) NOT NULL,
  `enkrip` tinyint(4) NOT NULL,
  `stat` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `createdby` varchar(128) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;



# Dump of table tpengadaan_undangan
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tpengadaan_undangan`;

CREATE TABLE `tpengadaan_undangan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pgid` int(11) NOT NULL,
  `tgl_ba` datetime DEFAULT NULL,
  `nomor_ba` varchar(50) DEFAULT NULL,
  `tempat` varchar(50) DEFAULT NULL,
  `isian` mediumtext,
  `stat` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdby` varchar(255) NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table tperiode
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tperiode`;

CREATE TABLE `tperiode` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `instansiid` int(255) NOT NULL,
  `periodewaktu` datetime NOT NULL,
  `periodenama` varchar(255) NOT NULL,
  `stat` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `createdby` varchar(128) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tprogress_pelaksanaan
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tprogress_pelaksanaan`;

CREATE TABLE `tprogress_pelaksanaan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pgid` int(11) NOT NULL,
  `perusahaanid` int(11) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `persen` int(11) NOT NULL,
  `termin` int(11) DEFAULT NULL,
  `namafile` varchar(255) NOT NULL,
  `uraian` mediumtext NOT NULL,
  `stat` tinyint(4) NOT NULL,
  `keterangan` mediumtext NOT NULL,
  `created` datetime NOT NULL,
  `createdby` varchar(255) NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tprogress_pembayaran
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tprogress_pembayaran`;

CREATE TABLE `tprogress_pembayaran` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pgid` int(11) NOT NULL,
  `lgid` int(11) DEFAULT NULL,
  `nosurat` text,
  `lampiran` varchar(255) NOT NULL,
  `tgl_surat` datetime DEFAULT NULL,
  `isian` mediumtext NOT NULL,
  `stat` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdby` varchar(255) NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pgid` (`pgid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tprogress_pembayaran_bukti
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tprogress_pembayaran_bukti`;

CREATE TABLE `tprogress_pembayaran_bukti` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pgid` int(11) NOT NULL,
  `lgid` int(11) DEFAULT NULL,
  `nosurat` text,
  `lampiran` varchar(255) NOT NULL,
  `tgl_surat` datetime DEFAULT NULL,
  `isian` mediumtext NOT NULL,
  `stat` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdby` varchar(255) NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pgid` (`pgid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tprogress_pemeriksaan
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tprogress_pemeriksaan`;

CREATE TABLE `tprogress_pemeriksaan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pgid` int(11) NOT NULL,
  `nosurat` text,
  `lampiran` varchar(255) NOT NULL,
  `tgl_surat` datetime DEFAULT NULL,
  `isian` mediumtext NOT NULL,
  `stat` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdby` varchar(255) NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tprogress_penyerahan
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tprogress_penyerahan`;

CREATE TABLE `tprogress_penyerahan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pgid` int(11) NOT NULL,
  `nosurat` text,
  `lampiran` varchar(255) NOT NULL,
  `tgl_surat` datetime DEFAULT NULL,
  `isian` mediumtext NOT NULL,
  `stat` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdby` varchar(255) NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tprogress_realisasi
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tprogress_realisasi`;

CREATE TABLE `tprogress_realisasi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `skpdID` int(11) NOT NULL,
  `unitID` varchar(32) NOT NULL,
  `bulan` int(11) NOT NULL,
  `tahun` int(11) NOT NULL,
  `simda_pekerjaan` int(11) DEFAULT NULL,
  `simda_nilai` decimal(14,0) DEFAULT NULL,
  `stat` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdby` varchar(255) NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tprogress_serahterima
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tprogress_serahterima`;

CREATE TABLE `tprogress_serahterima` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pgid` int(11) NOT NULL,
  `nosurat` text,
  `lampiran` varchar(255) NOT NULL,
  `tgl_surat` datetime DEFAULT NULL,
  `isian` mediumtext NOT NULL,
  `stat` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdby` varchar(255) NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pgid` (`pgid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tsessions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tsessions`;

CREATE TABLE `tsessions` (
  `session_id` char(32) NOT NULL DEFAULT '',
  `session_userid` char(25) NOT NULL DEFAULT '',
  `session_start` date DEFAULT NULL,
  `session_time` time DEFAULT NULL,
  `session_ip` char(20) DEFAULT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tsistem_pengadaan
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tsistem_pengadaan`;

CREATE TABLE `tsistem_pengadaan` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `stat` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `createdby` varchar(128) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tsumberdana
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tsumberdana`;

CREATE TABLE `tsumberdana` (
  `sumberdanaid` int(11) NOT NULL AUTO_INCREMENT,
  `sumberdana` varchar(255) NOT NULL,
  `sumberdanadetail` varchar(255) DEFAULT NULL,
  `sumberdanainfo` varchar(255) DEFAULT NULL,
  `stat` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `createdip` varchar(15) NOT NULL,
  `createdby` varchar(128) NOT NULL,
  `updated` datetime NOT NULL,
  `updatedip` varchar(15) NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  PRIMARY KEY (`sumberdanaid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
