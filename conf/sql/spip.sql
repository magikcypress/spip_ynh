-- MySQL dump 10.15  Distrib 10.0.29-MariaDB, for debian-linux-gnueabihf (armv7l)
--
-- Host: spip    Database: spip
-- ------------------------------------------------------
-- Server version	10.0.29-MariaDB-0+deb8u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `spip_articles`
--

DROP TABLE IF EXISTS `spip_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_articles` (
  `id_article` bigint(21) NOT NULL AUTO_INCREMENT,
  `surtitre` text NOT NULL,
  `titre` text NOT NULL,
  `soustitre` text NOT NULL,
  `id_rubrique` bigint(21) NOT NULL DEFAULT '0',
  `descriptif` text NOT NULL,
  `chapo` mediumtext NOT NULL,
  `texte` longtext NOT NULL,
  `ps` mediumtext NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `statut` varchar(10) NOT NULL DEFAULT '0',
  `id_secteur` bigint(21) NOT NULL DEFAULT '0',
  `maj` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `export` varchar(10) DEFAULT 'oui',
  `date_redac` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `visites` int(11) NOT NULL DEFAULT '0',
  `referers` int(11) NOT NULL DEFAULT '0',
  `popularite` double NOT NULL DEFAULT '0',
  `accepter_forum` char(3) NOT NULL DEFAULT '',
  `date_modif` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lang` varchar(10) NOT NULL DEFAULT '',
  `langue_choisie` varchar(3) DEFAULT 'non',
  `id_trad` bigint(21) NOT NULL DEFAULT '0',
  `nom_site` tinytext NOT NULL,
  `url_site` text NOT NULL,
  `virtuel` text NOT NULL,
  PRIMARY KEY (`id_article`),
  KEY `id_rubrique` (`id_rubrique`),
  KEY `id_secteur` (`id_secteur`),
  KEY `id_trad` (`id_trad`),
  KEY `lang` (`lang`),
  KEY `statut` (`statut`,`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_articles`
--

LOCK TABLES `spip_articles` WRITE;
/*!40000 ALTER TABLE `spip_articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_auteurs`
--

DROP TABLE IF EXISTS `spip_auteurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_auteurs` (
  `id_auteur` bigint(21) NOT NULL AUTO_INCREMENT,
  `nom` text NOT NULL,
  `bio` text NOT NULL,
  `email` tinytext NOT NULL,
  `nom_site` tinytext NOT NULL,
  `url_site` text NOT NULL,
  `login` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `pass` tinytext NOT NULL,
  `low_sec` tinytext NOT NULL,
  `statut` varchar(255) NOT NULL DEFAULT '0',
  `webmestre` varchar(3) NOT NULL DEFAULT 'non',
  `maj` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pgp` text NOT NULL,
  `htpass` tinytext NOT NULL,
  `en_ligne` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `alea_actuel` tinytext,
  `alea_futur` tinytext,
  `prefs` tinytext,
  `cookie_oubli` tinytext,
  `source` varchar(10) NOT NULL DEFAULT 'spip',
  `lang` varchar(10) NOT NULL DEFAULT '',
  `imessage` varchar(3) DEFAULT NULL,
  `messagerie` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id_auteur`),
  KEY `login` (`login`),
  KEY `statut` (`statut`),
  KEY `en_ligne` (`en_ligne`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_auteurs`
--

LOCK TABLES `spip_auteurs` WRITE;
/*!40000 ALTER TABLE `spip_auteurs` DISABLE KEYS */;
INSERT INTO `spip_auteurs` VALUES (1,'__ADMIN_SPIP__','','__ADMIN_SPIP__@__DOMAIN__','','','__ADMIN_SPIP__','__DB_SHA__','','0minirezo','oui','2017-02-22 00:06:22','','__DB_PWD__','0000-00-00 00:00:00','__ALEA_ACTUEL__','__ALEA_FUTUR__',NULL,NULL,'spip','',NULL,NULL);
/*!40000 ALTER TABLE `spip_auteurs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_auteurs_liens`
--

DROP TABLE IF EXISTS `spip_auteurs_liens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_auteurs_liens` (
  `id_auteur` bigint(21) NOT NULL DEFAULT '0',
  `id_objet` bigint(21) NOT NULL DEFAULT '0',
  `objet` varchar(25) NOT NULL DEFAULT '',
  `vu` varchar(6) NOT NULL DEFAULT 'non',
  PRIMARY KEY (`id_auteur`,`id_objet`,`objet`),
  KEY `id_auteur` (`id_auteur`),
  KEY `id_objet` (`id_objet`),
  KEY `objet` (`objet`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_auteurs_liens`
--

LOCK TABLES `spip_auteurs_liens` WRITE;
/*!40000 ALTER TABLE `spip_auteurs_liens` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_auteurs_liens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_breves`
--

DROP TABLE IF EXISTS `spip_breves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_breves` (
  `id_breve` bigint(21) NOT NULL AUTO_INCREMENT,
  `date_heure` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `titre` text NOT NULL,
  `texte` longtext NOT NULL,
  `lien_titre` text NOT NULL,
  `lien_url` text NOT NULL,
  `statut` varchar(6) NOT NULL DEFAULT '0',
  `id_rubrique` bigint(21) NOT NULL DEFAULT '0',
  `lang` varchar(10) NOT NULL DEFAULT '',
  `langue_choisie` varchar(3) DEFAULT 'non',
  `maj` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_breve`),
  KEY `id_rubrique` (`id_rubrique`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_breves`
--

LOCK TABLES `spip_breves` WRITE;
/*!40000 ALTER TABLE `spip_breves` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_breves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_depots`
--

DROP TABLE IF EXISTS `spip_depots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_depots` (
  `id_depot` bigint(21) NOT NULL AUTO_INCREMENT,
  `titre` text NOT NULL,
  `descriptif` text NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT '',
  `url_serveur` varchar(255) NOT NULL DEFAULT '',
  `url_brouteur` varchar(255) NOT NULL DEFAULT '',
  `url_archives` varchar(255) NOT NULL DEFAULT '',
  `url_commits` varchar(255) NOT NULL DEFAULT '',
  `xml_paquets` varchar(255) NOT NULL DEFAULT '',
  `sha_paquets` varchar(40) NOT NULL DEFAULT '',
  `nbr_paquets` int(11) NOT NULL DEFAULT '0',
  `nbr_plugins` int(11) NOT NULL DEFAULT '0',
  `nbr_autres` int(11) NOT NULL DEFAULT '0',
  `maj` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_depot`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_depots`
--

LOCK TABLES `spip_depots` WRITE;
/*!40000 ALTER TABLE `spip_depots` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_depots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_depots_plugins`
--

DROP TABLE IF EXISTS `spip_depots_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_depots_plugins` (
  `id_depot` bigint(21) NOT NULL,
  `id_plugin` bigint(21) NOT NULL,
  PRIMARY KEY (`id_depot`,`id_plugin`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_depots_plugins`
--

LOCK TABLES `spip_depots_plugins` WRITE;
/*!40000 ALTER TABLE `spip_depots_plugins` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_depots_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_documents`
--

DROP TABLE IF EXISTS `spip_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_documents` (
  `id_document` bigint(21) NOT NULL AUTO_INCREMENT,
  `id_vignette` bigint(21) NOT NULL DEFAULT '0',
  `extension` varchar(10) NOT NULL DEFAULT '',
  `titre` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `descriptif` text NOT NULL,
  `fichier` text NOT NULL,
  `taille` bigint(20) DEFAULT NULL,
  `largeur` int(11) DEFAULT NULL,
  `hauteur` int(11) DEFAULT NULL,
  `media` varchar(10) NOT NULL DEFAULT 'file',
  `mode` varchar(10) NOT NULL DEFAULT 'document',
  `distant` varchar(3) DEFAULT 'non',
  `statut` varchar(10) NOT NULL DEFAULT '0',
  `credits` varchar(255) NOT NULL DEFAULT '',
  `date_publication` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `brise` tinyint(4) DEFAULT '0',
  `maj` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_document`),
  KEY `id_vignette` (`id_vignette`),
  KEY `mode` (`mode`),
  KEY `extension` (`extension`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_documents`
--

LOCK TABLES `spip_documents` WRITE;
/*!40000 ALTER TABLE `spip_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_documents_liens`
--

DROP TABLE IF EXISTS `spip_documents_liens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_documents_liens` (
  `id_document` bigint(21) NOT NULL DEFAULT '0',
  `id_objet` bigint(21) NOT NULL DEFAULT '0',
  `objet` varchar(25) NOT NULL DEFAULT '',
  `vu` enum('non','oui') NOT NULL DEFAULT 'non',
  PRIMARY KEY (`id_document`,`id_objet`,`objet`),
  KEY `id_document` (`id_document`),
  KEY `id_objet` (`id_objet`),
  KEY `objet` (`objet`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_documents_liens`
--

LOCK TABLES `spip_documents_liens` WRITE;
/*!40000 ALTER TABLE `spip_documents_liens` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_documents_liens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_forum`
--

DROP TABLE IF EXISTS `spip_forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_forum` (
  `id_forum` bigint(21) NOT NULL AUTO_INCREMENT,
  `id_objet` bigint(21) NOT NULL DEFAULT '0',
  `objet` varchar(25) NOT NULL DEFAULT '',
  `id_parent` bigint(21) NOT NULL DEFAULT '0',
  `id_thread` bigint(21) NOT NULL DEFAULT '0',
  `date_heure` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_thread` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `titre` text NOT NULL,
  `texte` mediumtext NOT NULL,
  `auteur` text NOT NULL,
  `email_auteur` text NOT NULL,
  `nom_site` text NOT NULL,
  `url_site` text NOT NULL,
  `statut` varchar(8) NOT NULL DEFAULT '0',
  `ip` varchar(40) NOT NULL DEFAULT '',
  `maj` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_auteur` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_forum`),
  KEY `id_auteur` (`id_auteur`),
  KEY `id_parent` (`id_parent`),
  KEY `id_thread` (`id_thread`),
  KEY `optimal` (`statut`,`id_parent`,`id_objet`,`objet`,`date_heure`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_forum`
--

LOCK TABLES `spip_forum` WRITE;
/*!40000 ALTER TABLE `spip_forum` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_groupes_mots`
--

DROP TABLE IF EXISTS `spip_groupes_mots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_groupes_mots` (
  `id_groupe` bigint(21) NOT NULL AUTO_INCREMENT,
  `titre` text NOT NULL,
  `descriptif` text NOT NULL,
  `texte` longtext NOT NULL,
  `unseul` varchar(3) NOT NULL DEFAULT '',
  `obligatoire` varchar(3) NOT NULL DEFAULT '',
  `tables_liees` text NOT NULL,
  `minirezo` varchar(3) NOT NULL DEFAULT '',
  `comite` varchar(3) NOT NULL DEFAULT '',
  `forum` varchar(3) NOT NULL DEFAULT '',
  `maj` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_groupe`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_groupes_mots`
--

LOCK TABLES `spip_groupes_mots` WRITE;
/*!40000 ALTER TABLE `spip_groupes_mots` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_groupes_mots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_jobs`
--

DROP TABLE IF EXISTS `spip_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_jobs` (
  `id_job` bigint(21) NOT NULL AUTO_INCREMENT,
  `descriptif` text NOT NULL,
  `fonction` varchar(255) NOT NULL,
  `args` longblob NOT NULL,
  `md5args` char(32) NOT NULL DEFAULT '',
  `inclure` varchar(255) NOT NULL,
  `priorite` smallint(6) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_job`),
  KEY `date` (`date`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_jobs`
--

LOCK TABLES `spip_jobs` WRITE;
/*!40000 ALTER TABLE `spip_jobs` DISABLE KEYS */;
INSERT INTO `spip_jobs` VALUES (1,'Tâche CRON queue_watch (toutes les 86400 s)','queue_watch','a:1:{i:0;d:1487683770;}','4ac9c0e20e1261177e9fd10eca9d2765','genie/',0,'2017-02-22 00:06:27',1),(2,'Tâche CRON optimiser (toutes les 172800 s)','optimiser','a:1:{i:0;d:1487687192;}','bfddeedfe143a7e3d3c8f5351d973239','genie/',0,'2017-02-22 00:06:27',1),(3,'Tâche CRON invalideur (toutes les 600 s)','invalideur','a:1:{i:0;d:1487721825;}','b80309f70aca458607e41bbfb5736f3c','genie/',0,'2017-02-22 00:06:27',1),(4,'Tâche CRON maintenance (toutes les 7200 s)','maintenance','a:1:{i:0;d:1487717510;}','ac4b0e07b06bdf113d1e6531f6d734c7','genie/',0,'2017-02-22 00:06:27',1),(5,'Tâche CRON mise_a_jour (toutes les 259200 s)','mise_a_jour','a:1:{i:0;d:1487592938;}','6953f26a7d139babf1e0b917637e27b4','genie/',0,'2017-02-22 00:06:27',1),(6,'Tâche CRON optimiser_revisions (toutes les 86400 s)','optimiser_revisions','a:1:{i:0;d:1487652252;}','30ff48e04c43be68bef69246d782465f','genie/',0,'2017-02-22 00:06:27',1),(7,'Tâche CRON svp_actualiser_depots (toutes les 21600 s)','svp_actualiser_depots','a:1:{i:0;d:1487712863;}','baa4283b0e8e181658d57a5b20384ab1','genie/',0,'2017-02-22 00:06:27',1);
/*!40000 ALTER TABLE `spip_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_jobs_liens`
--

DROP TABLE IF EXISTS `spip_jobs_liens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_jobs_liens` (
  `id_job` bigint(21) NOT NULL DEFAULT '0',
  `id_objet` bigint(21) NOT NULL DEFAULT '0',
  `objet` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_job`,`id_objet`,`objet`),
  KEY `id_job` (`id_job`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_jobs_liens`
--

LOCK TABLES `spip_jobs_liens` WRITE;
/*!40000 ALTER TABLE `spip_jobs_liens` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_jobs_liens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_messages`
--

DROP TABLE IF EXISTS `spip_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_messages` (
  `id_message` bigint(21) NOT NULL AUTO_INCREMENT,
  `titre` text NOT NULL,
  `texte` longtext NOT NULL,
  `type` varchar(6) NOT NULL DEFAULT '',
  `date_heure` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_fin` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rv` varchar(3) NOT NULL DEFAULT '',
  `statut` varchar(6) NOT NULL DEFAULT '0',
  `id_auteur` bigint(21) NOT NULL DEFAULT '0',
  `destinataires` text NOT NULL,
  `maj` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_message`),
  KEY `id_auteur` (`id_auteur`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_messages`
--

LOCK TABLES `spip_messages` WRITE;
/*!40000 ALTER TABLE `spip_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_meta`
--

DROP TABLE IF EXISTS `spip_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_meta` (
  `nom` varchar(255) NOT NULL,
  `valeur` text,
  `impt` enum('non','oui') NOT NULL DEFAULT 'oui',
  `maj` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`nom`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_meta`
--

LOCK TABLES `spip_meta` WRITE;
/*!40000 ALTER TABLE `spip_meta` DISABLE KEYS */;
INSERT INTO `spip_meta` VALUES ('charset_sql_base','utf8','non','2017-02-22 00:05:15'),('charset_collation_sql_base','utf8_general_ci','non','2017-02-22 00:05:15'),('charset_sql_connexion','utf8','non','2017-02-22 00:05:15'),('version_installee','21742','non','2017-02-22 00:05:15'),('nouvelle_install','1','non','2017-02-22 00:05:15'),('langue_site','__LANG_SPIP__','non','2017-02-22 00:06:22'),('pcre_u','u','oui','2017-02-22 00:05:56'),('charset','utf-8','oui','2017-02-22 00:05:56'),('alea_ephemere_ancien',NULL,'non','2017-02-22 00:06:22'),('alea_ephemere','1efd6d108a6f8c0654692bb7ad572cf4','non','2017-02-22 00:06:22'),('alea_ephemere_date','1487721956','non','2017-02-22 00:06:22'),('langues_proposees','ar,ast,ay,bg,br,bs,ca,co,cpf,cpf_hat,cs,da,de,en,eo,es,eu,fa,fon,fr,fr_fem,gl,he,hr,hu,id,it,it_fem,ja,km,lb,my,nl,oc_auv,oc_gsc,oc_lms,oc_lnc,oc_ni,oc_ni_la,oc_ni_mis,oc_prv,oc_va,pl,pt,pt_br,ro,ru,sk,sv,tr,uk,vi,zh','non','2017-02-22 00:06:22'),('email_webmaster','cyp@rouquin.me','oui','2017-02-22 00:06:22'),('nom_site','Mon site SPIP','oui','2017-02-22 00:06:22'),('slogan_site','','oui','2017-02-22 00:06:22'),('adresse_site','https://debile.ddns.net/spip','non','2017-02-22 00:06:27'),('descriptif_site','','oui','2017-02-22 00:06:22'),('activer_logos','oui','oui','2017-02-22 00:06:22'),('activer_logos_survol','non','oui','2017-02-22 00:06:22'),('articles_surtitre','non','oui','2017-02-22 00:06:22'),('articles_soustitre','non','oui','2017-02-22 00:06:22'),('articles_descriptif','non','oui','2017-02-22 00:06:22'),('articles_chapeau','non','oui','2017-02-22 00:06:22'),('articles_texte','oui','oui','2017-02-22 00:06:22'),('articles_ps','non','oui','2017-02-22 00:06:22'),('articles_redac','non','oui','2017-02-22 00:06:22'),('post_dates','non','oui','2017-02-22 00:06:22'),('articles_urlref','non','oui','2017-02-22 00:06:22'),('articles_redirection','non','oui','2017-02-22 00:06:22'),('creer_preview','non','non','2017-02-22 00:06:27'),('taille_preview','150','non','2017-02-22 00:06:27'),('articles_modif','non','oui','2017-02-22 00:06:22'),('rubriques_descriptif','non','oui','2017-02-22 00:06:22'),('rubriques_texte','oui','oui','2017-02-22 00:06:22'),('accepter_inscriptions','non','oui','2017-02-22 00:06:22'),('accepter_visiteurs','non','oui','2017-02-22 00:06:22'),('prevenir_auteurs','non','oui','2017-02-22 00:06:22'),('suivi_edito','non','oui','2017-02-22 00:06:22'),('adresse_suivi','','oui','2017-02-22 00:06:22'),('adresse_suivi_inscription','','oui','2017-02-22 00:06:22'),('adresse_neuf','','oui','2017-02-22 00:06:22'),('jours_neuf','','oui','2017-02-22 00:06:22'),('quoi_de_neuf','non','oui','2017-02-22 00:06:22'),('preview',',0minirezo,1comite,','oui','2017-02-22 00:06:22'),('syndication_integrale','oui','oui','2017-02-22 00:06:22'),('dir_img','IMG/','oui','2017-02-22 00:06:22'),('multi_rubriques','non','oui','2017-02-22 00:06:22'),('multi_secteurs','non','oui','2017-02-22 00:06:22'),('gerer_trad','non','oui','2017-02-22 00:06:22'),('langues_multilingue','','oui','2017-02-22 00:06:22'),('version_html_max','html4','oui','2017-02-22 00:06:22'),('type_urls','page','oui','2017-02-22 00:06:22'),('email_envoi','','oui','2017-02-22 00:06:22'),('auto_compress_http','non','oui','2017-02-22 00:06:22'),('mots_cles_forums','non','oui','2017-02-22 00:06:22'),('forums_titre','oui','oui','2017-02-22 00:06:22'),('forums_texte','oui','oui','2017-02-22 00:06:22'),('forums_urlref','non','oui','2017-02-22 00:06:22'),('forums_afficher_barre','oui','oui','2017-02-22 00:06:22'),('forums_forcer_previsu','oui','oui','2017-02-22 00:06:22'),('formats_documents_forum','','oui','2017-02-22 00:06:22'),('forums_publics','posteriori','oui','2017-02-22 00:06:22'),('forum_prive','oui','oui','2017-02-22 00:06:22'),('forum_prive_objets','oui','oui','2017-02-22 00:06:22'),('forum_prive_admin','non','oui','2017-02-22 00:06:22'),('articles_mots','non','oui','2017-02-22 00:06:22'),('config_precise_groupes','non','oui','2017-02-22 00:06:22'),('messagerie_agenda','oui','oui','2017-02-22 00:06:22'),('barre_outils_public','oui','oui','2017-02-22 00:06:22'),('objets_versions','a:0:{}','oui','2017-02-22 00:06:29'),('activer_sites','non','oui','2017-02-22 00:06:22'),('proposer_sites','0','oui','2017-02-22 00:06:22'),('activer_syndic','oui','oui','2017-02-22 00:06:22'),('moderation_sites','non','oui','2017-02-22 00:06:22'),('activer_statistiques','non','oui','2017-02-22 00:06:22'),('activer_captures_referers','non','oui','2017-02-22 00:06:22'),('activer_referers','oui','oui','2017-02-22 00:06:22'),('activer_breves','non','oui','2017-02-22 00:06:22'),('auto_compress_js','non','oui','2017-02-22 00:06:22'),('auto_compress_closure','non','oui','2017-02-22 00:06:22'),('auto_compress_css','non','oui','2017-02-22 00:06:22'),('url_statique_ressources','','oui','2017-02-22 00:06:22'),('documents_objets','spip_articles','oui','2017-02-22 00:06:22'),('documents_date','non','oui','2017-02-22 00:06:22'),('langues_utilisees','fr','oui','2017-02-22 00:06:23'),('plugin','a:28:{s:4:\"SPIP\";a:5:{s:3:\"nom\";s:4:\"SPIP\";s:4:\"etat\";s:6:\"stable\";s:7:\"version\";s:5:\"3.1.3\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:0:\"\";}s:9:\"COMPAGNON\";a:5:{s:3:\"nom\";s:9:\"Compagnon\";s:4:\"etat\";s:6:\"stable\";s:7:\"version\";s:5:\"1.5.2\";s:3:\"dir\";s:9:\"compagnon\";s:8:\"dir_type\";s:17:\"_DIR_PLUGINS_DIST\";}s:4:\"DUMP\";a:5:{s:3:\"nom\";s:4:\"Dump\";s:4:\"etat\";s:6:\"stable\";s:7:\"version\";s:5:\"1.7.5\";s:3:\"dir\";s:4:\"dump\";s:8:\"dir_type\";s:17:\"_DIR_PLUGINS_DIST\";}s:6:\"IMAGES\";a:5:{s:3:\"nom\";s:6:\"Images\";s:4:\"etat\";s:6:\"stable\";s:7:\"version\";s:5:\"1.2.1\";s:3:\"dir\";s:14:\"filtres_images\";s:8:\"dir_type\";s:17:\"_DIR_PLUGINS_DIST\";}s:5:\"FORUM\";a:5:{s:3:\"nom\";s:5:\"Forum\";s:4:\"etat\";s:6:\"stable\";s:7:\"version\";s:6:\"1.9.35\";s:3:\"dir\";s:5:\"forum\";s:8:\"dir_type\";s:17:\"_DIR_PLUGINS_DIST\";}s:8:\"JQUERYUI\";a:5:{s:3:\"nom\";s:9:\"jQuery UI\";s:4:\"etat\";s:6:\"stable\";s:7:\"version\";s:6:\"1.11.4\";s:3:\"dir\";s:9:\"jquery_ui\";s:8:\"dir_type\";s:17:\"_DIR_PLUGINS_DIST\";}s:8:\"MEDIABOX\";a:5:{s:3:\"nom\";s:8:\"MediaBox\";s:4:\"etat\";s:6:\"stable\";s:7:\"version\";s:5:\"1.0.2\";s:3:\"dir\";s:8:\"mediabox\";s:8:\"dir_type\";s:17:\"_DIR_PLUGINS_DIST\";}s:4:\"MOTS\";a:5:{s:3:\"nom\";s:4:\"Mots\";s:4:\"etat\";s:6:\"stable\";s:7:\"version\";s:5:\"2.7.8\";s:3:\"dir\";s:4:\"mots\";s:8:\"dir_type\";s:17:\"_DIR_PLUGINS_DIST\";}s:10:\"ORGANISEUR\";a:5:{s:3:\"nom\";s:10:\"Organiseur\";s:4:\"etat\";s:6:\"stable\";s:7:\"version\";s:5:\"1.0.3\";s:3:\"dir\";s:10:\"organiseur\";s:8:\"dir_type\";s:17:\"_DIR_PLUGINS_DIST\";}s:9:\"PETITIONS\";a:5:{s:3:\"nom\";s:10:\"Pétitions\";s:4:\"etat\";s:6:\"stable\";s:7:\"version\";s:5:\"1.5.4\";s:3:\"dir\";s:9:\"petitions\";s:8:\"dir_type\";s:17:\"_DIR_PLUGINS_DIST\";}s:4:\"PLAN\";a:5:{s:3:\"nom\";s:35:\"Plan du site dans l’espace privé\";s:4:\"etat\";s:6:\"stable\";s:7:\"version\";s:5:\"2.1.1\";s:3:\"dir\";s:4:\"plan\";s:8:\"dir_type\";s:17:\"_DIR_PLUGINS_DIST\";}s:11:\"PORTE_PLUME\";a:5:{s:3:\"nom\";s:11:\"Porte plume\";s:4:\"etat\";s:6:\"stable\";s:7:\"version\";s:7:\"1.15.14\";s:3:\"dir\";s:11:\"porte_plume\";s:8:\"dir_type\";s:17:\"_DIR_PLUGINS_DIST\";}s:9:\"REVISIONS\";a:5:{s:3:\"nom\";s:10:\"Révisions\";s:4:\"etat\";s:6:\"stable\";s:7:\"version\";s:5:\"1.8.7\";s:3:\"dir\";s:9:\"revisions\";s:8:\"dir_type\";s:17:\"_DIR_PLUGINS_DIST\";}s:8:\"SAFEHTML\";a:5:{s:3:\"nom\";s:8:\"SafeHTML\";s:4:\"etat\";s:6:\"stable\";s:7:\"version\";s:5:\"1.4.3\";s:3:\"dir\";s:8:\"safehtml\";s:8:\"dir_type\";s:17:\"_DIR_PLUGINS_DIST\";}s:5:\"SITES\";a:5:{s:3:\"nom\";s:5:\"Sites\";s:4:\"etat\";s:6:\"stable\";s:7:\"version\";s:6:\"1.9.24\";s:3:\"dir\";s:5:\"sites\";s:8:\"dir_type\";s:17:\"_DIR_PLUGINS_DIST\";}s:23:\"SQUELETTES_PAR_RUBRIQUE\";a:5:{s:3:\"nom\";s:23:\"Squelettes par Rubrique\";s:4:\"etat\";s:6:\"stable\";s:7:\"version\";s:5:\"1.1.2\";s:3:\"dir\";s:23:\"squelettes_par_rubrique\";s:8:\"dir_type\";s:17:\"_DIR_PLUGINS_DIST\";}s:5:\"STATS\";a:5:{s:3:\"nom\";s:12:\"Statistiques\";s:4:\"etat\";s:6:\"stable\";s:7:\"version\";s:5:\"1.0.5\";s:3:\"dir\";s:12:\"statistiques\";s:8:\"dir_type\";s:17:\"_DIR_PLUGINS_DIST\";}s:3:\"SVP\";a:5:{s:3:\"nom\";s:3:\"SVP\";s:4:\"etat\";s:6:\"stable\";s:7:\"version\";s:5:\"1.0.7\";s:3:\"dir\";s:3:\"svp\";s:8:\"dir_type\";s:17:\"_DIR_PLUGINS_DIST\";}s:2:\"TW\";a:5:{s:3:\"nom\";s:19:\"TextWheel pour SPIP\";s:4:\"etat\";s:6:\"stable\";s:7:\"version\";s:6:\"1.3.15\";s:3:\"dir\";s:9:\"textwheel\";s:8:\"dir_type\";s:17:\"_DIR_PLUGINS_DIST\";}s:4:\"URLS\";a:5:{s:3:\"nom\";s:13:\"Urls Etendues\";s:4:\"etat\";s:6:\"stable\";s:7:\"version\";s:5:\"1.5.9\";s:3:\"dir\";s:13:\"urls_etendues\";s:8:\"dir_type\";s:17:\"_DIR_PLUGINS_DIST\";}s:9:\"VERTEBRES\";a:5:{s:3:\"nom\";s:10:\"Vertèbres\";s:4:\"etat\";s:6:\"stable\";s:7:\"version\";s:5:\"1.2.6\";s:3:\"dir\";s:9:\"vertebres\";s:8:\"dir_type\";s:17:\"_DIR_PLUGINS_DIST\";}s:10:\"ITERATEURS\";a:5:{s:3:\"nom\";s:10:\"iterateurs\";s:7:\"version\";s:5:\"1.0.6\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:18:\"procure:iterateurs\";}s:5:\"QUEUE\";a:5:{s:3:\"nom\";s:5:\"queue\";s:7:\"version\";s:5:\"0.6.8\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:13:\"procure:queue\";}s:6:\"JQUERY\";a:5:{s:3:\"nom\";s:6:\"jquery\";s:7:\"version\";s:6:\"1.12.4\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:14:\"procure:jquery\";}s:3:\"PHP\";a:5:{s:3:\"nom\";s:3:\"php\";s:7:\"version\";s:15:\"5.6.29-0+deb8u1\";s:4:\"etat\";s:1:\"?\";s:8:\"dir_type\";s:14:\"_DIR_RESTREINT\";s:3:\"dir\";s:11:\"procure:php\";}s:6:\"BREVES\";a:5:{s:3:\"nom\";s:7:\"Brèves\";s:4:\"etat\";s:6:\"stable\";s:7:\"version\";s:6:\"1.3.14\";s:3:\"dir\";s:6:\"breves\";s:8:\"dir_type\";s:17:\"_DIR_PLUGINS_DIST\";}s:11:\"COMPRESSEUR\";a:5:{s:3:\"nom\";s:11:\"Compresseur\";s:4:\"etat\";s:6:\"stable\";s:7:\"version\";s:6:\"1.10.4\";s:3:\"dir\";s:11:\"compresseur\";s:8:\"dir_type\";s:17:\"_DIR_PLUGINS_DIST\";}s:6:\"MEDIAS\";a:5:{s:3:\"nom\";s:6:\"Medias\";s:4:\"etat\";s:6:\"stable\";s:7:\"version\";s:7:\"2.10.35\";s:3:\"dir\";s:6:\"medias\";s:8:\"dir_type\";s:17:\"_DIR_PLUGINS_DIST\";}}','non','2017-02-22 00:06:27'),('plugin_attente','a:0:{}','oui','2017-02-22 00:06:24'),('plugin_header','spip(3.1.3),compagnon(1.5.2),dump(1.7.5),images(1.2.1),forum(1.9.35),jqueryui(1.11.4),mediabox(1.0.2),mots(2.7.8),organiseur(1.0.3),petitions(1.5.4),plan(2.1.1),porte_plume(1.15.14),revisions(1.8.7),safehtml(1.4.3),sites(1.9.24),squelettes_par_rubrique(1.1.2),stats(1.0.5),svp(1.0.7),tw(1.3.15),urls(1.5.9),vertebres(1.2.6),iterateurs(1.0.6),queue(0.6.8),jquery(1.12.4),php(5.6.29-0+deb8u1),breves(1.3.14),compresseur(1.10.4),medias(2.10.35)','non','2017-02-22 00:06:27'),('compagnon','a:1:{s:6:\"config\";a:1:{s:7:\"activer\";s:3:\"oui\";}}','oui','2017-02-22 00:06:27'),('compagnon_base_version','1.0.0','oui','2017-02-22 00:06:27'),('forum_base_version','1.2.2','oui','2017-02-22 00:06:28'),('mots_base_version','2.1.1','oui','2017-02-22 00:06:28'),('organiseur_base_version','1.1.2','oui','2017-02-22 00:06:28'),('petitions_base_version','1.1.6','oui','2017-02-22 00:06:28'),('revisions_base_version','1.2.0','oui','2017-02-22 00:06:29'),('sites_base_version','1.1.1','oui','2017-02-22 00:06:29'),('stats_base_version','1.0.1','oui','2017-02-22 00:06:29'),('svp_base_version','0.5.1','oui','2017-02-22 00:06:29'),('urls_base_version','1.1.4','oui','2017-02-22 00:06:29'),('breves_base_version','1.0.0','oui','2017-02-22 00:06:29'),('medias_base_version','1.2.7','oui','2017-02-22 00:06:30'),('plugin_installes','a:12:{i:0;s:9:\"compagnon\";i:1;s:5:\"forum\";i:2;s:4:\"mots\";i:3;s:10:\"organiseur\";i:4;s:9:\"petitions\";i:5;s:9:\"revisions\";i:6;s:5:\"sites\";i:7;s:12:\"statistiques\";i:8;s:3:\"svp\";i:9;s:13:\"urls_etendues\";i:10;s:6:\"breves\";i:11;s:6:\"medias\";}','oui','2017-02-22 00:06:30');
/*!40000 ALTER TABLE `spip_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_mots`
--

DROP TABLE IF EXISTS `spip_mots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_mots` (
  `id_mot` bigint(21) NOT NULL AUTO_INCREMENT,
  `titre` text NOT NULL,
  `descriptif` text NOT NULL,
  `texte` longtext NOT NULL,
  `id_groupe` bigint(21) NOT NULL DEFAULT '0',
  `type` text NOT NULL,
  `maj` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_mot`),
  KEY `id_groupe` (`id_groupe`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_mots`
--

LOCK TABLES `spip_mots` WRITE;
/*!40000 ALTER TABLE `spip_mots` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_mots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_mots_liens`
--

DROP TABLE IF EXISTS `spip_mots_liens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_mots_liens` (
  `id_mot` bigint(21) NOT NULL DEFAULT '0',
  `id_objet` bigint(21) NOT NULL DEFAULT '0',
  `objet` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_mot`,`id_objet`,`objet`),
  KEY `id_mot` (`id_mot`),
  KEY `id_objet` (`id_objet`),
  KEY `objet` (`objet`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_mots_liens`
--

LOCK TABLES `spip_mots_liens` WRITE;
/*!40000 ALTER TABLE `spip_mots_liens` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_mots_liens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_paquets`
--

DROP TABLE IF EXISTS `spip_paquets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_paquets` (
  `id_paquet` bigint(21) NOT NULL AUTO_INCREMENT,
  `id_plugin` bigint(21) NOT NULL,
  `prefixe` varchar(30) NOT NULL DEFAULT '',
  `logo` varchar(255) NOT NULL DEFAULT '',
  `version` varchar(24) NOT NULL DEFAULT '',
  `version_base` varchar(24) NOT NULL DEFAULT '',
  `compatibilite_spip` varchar(24) NOT NULL DEFAULT '',
  `branches_spip` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `auteur` text NOT NULL,
  `credit` text NOT NULL,
  `licence` text NOT NULL,
  `copyright` text NOT NULL,
  `lien_doc` text NOT NULL,
  `lien_demo` text NOT NULL,
  `lien_dev` text NOT NULL,
  `etat` varchar(16) NOT NULL DEFAULT '',
  `etatnum` int(1) NOT NULL DEFAULT '0',
  `dependances` text NOT NULL,
  `procure` text NOT NULL,
  `date_crea` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modif` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `id_depot` bigint(21) NOT NULL DEFAULT '0',
  `nom_archive` varchar(255) NOT NULL DEFAULT '',
  `nbo_archive` int(11) NOT NULL DEFAULT '0',
  `maj_archive` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `src_archive` varchar(255) NOT NULL DEFAULT '',
  `traductions` text NOT NULL,
  `actif` varchar(3) NOT NULL DEFAULT 'non',
  `installe` varchar(3) NOT NULL DEFAULT 'non',
  `recent` int(2) NOT NULL DEFAULT '0',
  `maj_version` varchar(255) NOT NULL DEFAULT '',
  `superieur` varchar(3) NOT NULL DEFAULT 'non',
  `obsolete` varchar(3) NOT NULL DEFAULT 'non',
  `attente` varchar(3) NOT NULL DEFAULT 'non',
  `constante` varchar(30) NOT NULL DEFAULT '',
  `signature` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_paquet`),
  KEY `id_plugin` (`id_plugin`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_paquets`
--

LOCK TABLES `spip_paquets` WRITE;
/*!40000 ALTER TABLE `spip_paquets` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_paquets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_petitions`
--

DROP TABLE IF EXISTS `spip_petitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_petitions` (
  `id_petition` bigint(21) NOT NULL AUTO_INCREMENT,
  `id_article` bigint(21) NOT NULL DEFAULT '0',
  `email_unique` char(3) NOT NULL DEFAULT '',
  `site_obli` char(3) NOT NULL DEFAULT '',
  `site_unique` char(3) NOT NULL DEFAULT '',
  `message` char(3) NOT NULL DEFAULT '',
  `texte` longtext NOT NULL,
  `statut` varchar(10) NOT NULL DEFAULT 'publie',
  `maj` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_petition`),
  UNIQUE KEY `id_article` (`id_article`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_petitions`
--

LOCK TABLES `spip_petitions` WRITE;
/*!40000 ALTER TABLE `spip_petitions` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_petitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_plugins`
--

DROP TABLE IF EXISTS `spip_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_plugins` (
  `id_plugin` bigint(21) NOT NULL AUTO_INCREMENT,
  `prefixe` varchar(30) NOT NULL DEFAULT '',
  `nom` text NOT NULL,
  `slogan` text NOT NULL,
  `categorie` varchar(100) NOT NULL DEFAULT '',
  `tags` text NOT NULL,
  `vmax` varchar(24) NOT NULL DEFAULT '',
  `date_crea` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modif` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `compatibilite_spip` varchar(24) NOT NULL DEFAULT '',
  `branches_spip` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_plugin`),
  KEY `prefixe` (`prefixe`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_plugins`
--

LOCK TABLES `spip_plugins` WRITE;
/*!40000 ALTER TABLE `spip_plugins` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_referers`
--

DROP TABLE IF EXISTS `spip_referers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_referers` (
  `referer_md5` bigint(20) unsigned NOT NULL,
  `date` date NOT NULL,
  `referer` varchar(255) DEFAULT NULL,
  `visites` int(10) unsigned NOT NULL,
  `visites_jour` int(10) unsigned NOT NULL,
  `visites_veille` int(10) unsigned NOT NULL,
  `maj` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`referer_md5`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_referers`
--

LOCK TABLES `spip_referers` WRITE;
/*!40000 ALTER TABLE `spip_referers` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_referers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_referers_articles`
--

DROP TABLE IF EXISTS `spip_referers_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_referers_articles` (
  `id_article` int(10) unsigned NOT NULL,
  `referer_md5` bigint(20) unsigned NOT NULL,
  `referer` varchar(255) NOT NULL DEFAULT '',
  `visites` int(10) unsigned NOT NULL,
  `maj` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_article`,`referer_md5`),
  KEY `referer_md5` (`referer_md5`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_referers_articles`
--

LOCK TABLES `spip_referers_articles` WRITE;
/*!40000 ALTER TABLE `spip_referers_articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_referers_articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_resultats`
--

DROP TABLE IF EXISTS `spip_resultats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_resultats` (
  `recherche` char(16) NOT NULL DEFAULT '',
  `id` int(10) unsigned NOT NULL,
  `points` int(10) unsigned NOT NULL DEFAULT '0',
  `table_objet` varchar(30) NOT NULL DEFAULT '',
  `serveur` char(16) NOT NULL DEFAULT '',
  `maj` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_resultats`
--

LOCK TABLES `spip_resultats` WRITE;
/*!40000 ALTER TABLE `spip_resultats` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_resultats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_rubriques`
--

DROP TABLE IF EXISTS `spip_rubriques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_rubriques` (
  `id_rubrique` bigint(21) NOT NULL AUTO_INCREMENT,
  `id_parent` bigint(21) NOT NULL DEFAULT '0',
  `titre` text NOT NULL,
  `descriptif` text NOT NULL,
  `texte` longtext NOT NULL,
  `id_secteur` bigint(21) NOT NULL DEFAULT '0',
  `maj` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `statut` varchar(10) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lang` varchar(10) NOT NULL DEFAULT '',
  `langue_choisie` varchar(3) DEFAULT 'non',
  `statut_tmp` varchar(10) NOT NULL DEFAULT '0',
  `date_tmp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `profondeur` smallint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_rubrique`),
  KEY `lang` (`lang`),
  KEY `id_parent` (`id_parent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_rubriques`
--

LOCK TABLES `spip_rubriques` WRITE;
/*!40000 ALTER TABLE `spip_rubriques` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_rubriques` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_signatures`
--

DROP TABLE IF EXISTS `spip_signatures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_signatures` (
  `id_signature` bigint(21) NOT NULL AUTO_INCREMENT,
  `id_petition` bigint(21) NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `nom_email` text NOT NULL,
  `ad_email` text NOT NULL,
  `nom_site` text NOT NULL,
  `url_site` text NOT NULL,
  `message` mediumtext NOT NULL,
  `statut` varchar(10) NOT NULL DEFAULT '0',
  `maj` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_signature`),
  KEY `id_petition` (`id_petition`),
  KEY `statut` (`statut`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_signatures`
--

LOCK TABLES `spip_signatures` WRITE;
/*!40000 ALTER TABLE `spip_signatures` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_signatures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_syndic`
--

DROP TABLE IF EXISTS `spip_syndic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_syndic` (
  `id_syndic` bigint(21) NOT NULL AUTO_INCREMENT,
  `id_rubrique` bigint(21) NOT NULL DEFAULT '0',
  `id_secteur` bigint(21) NOT NULL DEFAULT '0',
  `nom_site` text NOT NULL,
  `url_site` text NOT NULL,
  `url_syndic` text NOT NULL,
  `descriptif` text NOT NULL,
  `maj` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `syndication` varchar(3) NOT NULL DEFAULT '',
  `statut` varchar(10) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_syndic` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_index` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `moderation` varchar(3) DEFAULT 'non',
  `miroir` varchar(3) DEFAULT 'non',
  `oubli` varchar(3) DEFAULT 'non',
  `resume` varchar(3) DEFAULT 'oui',
  PRIMARY KEY (`id_syndic`),
  KEY `id_rubrique` (`id_rubrique`),
  KEY `id_secteur` (`id_secteur`),
  KEY `statut` (`statut`,`date_syndic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_syndic`
--

LOCK TABLES `spip_syndic` WRITE;
/*!40000 ALTER TABLE `spip_syndic` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_syndic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_syndic_articles`
--

DROP TABLE IF EXISTS `spip_syndic_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_syndic_articles` (
  `id_syndic_article` bigint(21) NOT NULL AUTO_INCREMENT,
  `id_syndic` bigint(21) NOT NULL DEFAULT '0',
  `titre` text NOT NULL,
  `url` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lesauteurs` text NOT NULL,
  `maj` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `statut` varchar(10) NOT NULL DEFAULT '0',
  `descriptif` text NOT NULL,
  `lang` varchar(10) NOT NULL DEFAULT '',
  `url_source` tinytext NOT NULL,
  `source` tinytext NOT NULL,
  `tags` text NOT NULL,
  PRIMARY KEY (`id_syndic_article`),
  KEY `id_syndic` (`id_syndic`),
  KEY `statut` (`statut`),
  KEY `url` (`url`(255))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_syndic_articles`
--

LOCK TABLES `spip_syndic_articles` WRITE;
/*!40000 ALTER TABLE `spip_syndic_articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_syndic_articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_types_documents`
--

DROP TABLE IF EXISTS `spip_types_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_types_documents` (
  `extension` varchar(10) NOT NULL DEFAULT '',
  `titre` text NOT NULL,
  `descriptif` text NOT NULL,
  `mime_type` varchar(100) NOT NULL DEFAULT '',
  `inclus` enum('non','image','embed') NOT NULL DEFAULT 'non',
  `upload` enum('oui','non') NOT NULL DEFAULT 'oui',
  `media_defaut` varchar(10) NOT NULL DEFAULT 'file',
  `maj` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`extension`),
  KEY `inclus` (`inclus`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_types_documents`
--

LOCK TABLES `spip_types_documents` WRITE;
/*!40000 ALTER TABLE `spip_types_documents` DISABLE KEYS */;
INSERT INTO `spip_types_documents` VALUES ('jpg','JPEG','','image/jpeg','image','oui','image','2017-02-22 00:06:29'),('png','PNG','','image/png','image','oui','image','2017-02-22 00:06:29'),('gif','GIF','','image/gif','image','oui','image','2017-02-22 00:06:29'),('bmp','BMP','','image/x-ms-bmp','image','oui','image','2017-02-22 00:06:29'),('tif','TIFF','','image/tiff','embed','oui','image','2017-02-22 00:06:29'),('aac','Advanced Audio Coding','','audio/mp4a-latm','embed','oui','audio','2017-02-22 00:06:29'),('ac3','AC-3 Compressed Audio','','audio/x-aac','embed','oui','audio','2017-02-22 00:06:29'),('aifc','Compressed AIFF Audio','','audio/x-aifc','embed','oui','audio','2017-02-22 00:06:29'),('aiff','AIFF','','audio/x-aiff','embed','oui','audio','2017-02-22 00:06:29'),('amr','Adaptive Multi-Rate Audio','','audio/amr','embed','oui','audio','2017-02-22 00:06:29'),('ape','Monkey\'s Audio File','','audio/x-monkeys-audio','embed','oui','audio','2017-02-22 00:06:29'),('asf','Windows Media','','video/x-ms-asf','embed','oui','video','2017-02-22 00:06:29'),('avi','AVI','','video/x-msvideo','embed','oui','video','2017-02-22 00:06:29'),('anx','Annodex','','application/annodex','embed','oui','file','2017-02-22 00:06:29'),('axa','Annodex Audio','','audio/annodex','embed','oui','audio','2017-02-22 00:06:29'),('axv','Annodex Video','','video/annodex','embed','oui','video','2017-02-22 00:06:29'),('dv','Digital Video','','video/x-dv','embed','oui','video','2017-02-22 00:06:29'),('f4a','Audio for Adobe Flash Player','','audio/mp4','embed','oui','audio','2017-02-22 00:06:29'),('f4b','Audio Book for Adobe Flash Player','','audio/mp4','embed','oui','audio','2017-02-22 00:06:29'),('f4p','Protected Video for Adobe Flash Player','','video/mp4','embed','oui','video','2017-02-22 00:06:29'),('f4v','Video for Adobe Flash Player','','video/mp4','embed','oui','video','2017-02-22 00:06:29'),('flac','Free Lossless Audio Codec','','audio/x-flac','embed','oui','audio','2017-02-22 00:06:29'),('flv','Flash Video','','video/x-flv','embed','oui','video','2017-02-22 00:06:29'),('m2p','MPEG-PS','','video/MP2P','embed','oui','video','2017-02-22 00:06:29'),('m2ts','BDAV MPEG-2 Transport Stream','','video/MP2T','embed','oui','video','2017-02-22 00:06:29'),('m4a','MPEG4 Audio','','audio/mp4a-latm','embed','oui','audio','2017-02-22 00:06:29'),('m4b','MPEG4 Audio','','audio/mp4a-latm','embed','oui','audio','2017-02-22 00:06:29'),('m4p','MPEG4 Audio','','audio/mp4a-latm','embed','oui','audio','2017-02-22 00:06:29'),('m4r','iPhone Ringtone','','audio/aac','embed','oui','audio','2017-02-22 00:06:29'),('m4u','MPEG4 Playlist','','video/vnd.mpegurl','non','oui','video','2017-02-22 00:06:29'),('m4v','MPEG4 Video','','video/x-m4v','embed','oui','video','2017-02-22 00:06:29'),('mid','Midi','','audio/midi','embed','oui','audio','2017-02-22 00:06:29'),('mka','Matroska Audio','','audio/mka','embed','oui','audio','2017-02-22 00:06:29'),('mkv','Matroska Video','','video/mkv','embed','oui','video','2017-02-22 00:06:29'),('mng','MNG','','video/x-mng','embed','oui','video','2017-02-22 00:06:29'),('mov','QuickTime','','video/quicktime','embed','oui','video','2017-02-22 00:06:29'),('mp3','MP3','','audio/mpeg','embed','oui','audio','2017-02-22 00:06:29'),('mp4','MPEG4','','application/mp4','embed','oui','video','2017-02-22 00:06:29'),('mpc','Musepack','','audio/x-musepack','embed','oui','audio','2017-02-22 00:06:29'),('mpg','MPEG','','video/mpeg','embed','oui','video','2017-02-22 00:06:29'),('mts','AVCHD MPEG-2 transport stream','','video/MP2T','embed','oui','video','2017-02-22 00:06:29'),('oga','Ogg Audio','','audio/ogg','embed','oui','audio','2017-02-22 00:06:29'),('ogg','Ogg Vorbis','','audio/ogg','embed','oui','audio','2017-02-22 00:06:29'),('ogv','Ogg Video','','video/ogg','embed','oui','video','2017-02-22 00:06:29'),('ogx','Ogg Multiplex','','application/ogg','embed','oui','video','2017-02-22 00:06:29'),('qt','QuickTime','','video/quicktime','embed','oui','video','2017-02-22 00:06:29'),('ra','RealAudio','','audio/x-pn-realaudio','embed','oui','audio','2017-02-22 00:06:29'),('ram','RealAudio','','audio/x-pn-realaudio','embed','oui','audio','2017-02-22 00:06:29'),('rm','RealAudio','','audio/x-pn-realaudio','embed','oui','audio','2017-02-22 00:06:29'),('spx','Ogg Speex','','audio/ogg','embed','oui','audio','2017-02-22 00:06:29'),('svg','Scalable Vector Graphics','','image/svg+xml','embed','oui','image','2017-02-22 00:06:29'),('svgz','Compressed Scalable Vector Graphic','','image/svg+xml','embed','oui','image','2017-02-22 00:06:29'),('swf','Flash','','application/x-shockwave-flash','embed','oui','video','2017-02-22 00:06:29'),('ts','MPEG transport stream','','video/MP2T','embed','oui','video','2017-02-22 00:06:29'),('wav','WAV','','audio/x-wav','embed','oui','audio','2017-02-22 00:06:29'),('webm','WebM','','video/webm','embed','oui','video','2017-02-22 00:06:29'),('wma','Windows Media Audio','','audio/x-ms-wma','embed','oui','audio','2017-02-22 00:06:29'),('wmv','Windows Media Video','','video/x-ms-wmv','embed','oui','video','2017-02-22 00:06:29'),('y4m','YUV4MPEG2','','video/x-raw-yuv','embed','oui','video','2017-02-22 00:06:29'),('3gp','3rd Generation Partnership Project','','video/3gpp','embed','oui','video','2017-02-22 00:06:29'),('3ga','3GP Audio File','','audio/3ga','embed','oui','audio','2017-02-22 00:06:29'),('7z','7 Zip','','application/x-7z-compressed','non','oui','file','2017-02-22 00:06:29'),('ai','Adobe Illustrator','','application/illustrator','non','oui','image','2017-02-22 00:06:29'),('abw','Abiword','','application/abiword','non','oui','file','2017-02-22 00:06:29'),('asx','Advanced Stream Redirector','','video/x-ms-asf','non','oui','video','2017-02-22 00:06:29'),('bib','BibTeX','','application/x-bibtex','non','oui','file','2017-02-22 00:06:29'),('bin','Binary Data','','application/octet-stream','non','oui','file','2017-02-22 00:06:29'),('blend','Blender','','application/x-blender','non','oui','file','2017-02-22 00:06:29'),('bz2','BZip','','application/x-bzip2','non','oui','file','2017-02-22 00:06:29'),('c','C source','','text/x-csrc','non','oui','file','2017-02-22 00:06:29'),('csl','Citation Style Language','','application/xml','non','oui','file','2017-02-22 00:06:29'),('css','Cascading Style Sheet','','text/css','non','oui','file','2017-02-22 00:06:29'),('csv','Comma Separated Values','','text/csv','non','oui','file','2017-02-22 00:06:29'),('deb','Debian','','application/x-debian-package','non','oui','file','2017-02-22 00:06:29'),('doc','Word','','application/msword','non','oui','file','2017-02-22 00:06:29'),('dot','Word Template','','application/msword','non','oui','file','2017-02-22 00:06:29'),('djvu','DjVu','','image/vnd.djvu','non','oui','image','2017-02-22 00:06:29'),('dvi','LaTeX DVI','','application/x-dvi','non','oui','file','2017-02-22 00:06:29'),('emf','Enhanced Metafile','','image/x-emf','non','oui','image','2017-02-22 00:06:29'),('enl','EndNote Library','','application/octet-stream','non','oui','file','2017-02-22 00:06:29'),('ens','EndNote Style','','application/octet-stream','non','oui','file','2017-02-22 00:06:29'),('eps','PostScript','','application/postscript','non','oui','file','2017-02-22 00:06:29'),('epub','EPUB','','application/epub+zip','non','oui','file','2017-02-22 00:06:29'),('gpx','GPS eXchange Format','','application/gpx+xml','non','oui','file','2017-02-22 00:06:29'),('gz','GZ','','application/x-gzip','non','oui','file','2017-02-22 00:06:29'),('h','C header','','text/x-chdr','non','oui','file','2017-02-22 00:06:29'),('html','HTML','','text/html','non','oui','file','2017-02-22 00:06:29'),('ics','iCalendar','','text/calendar','non','oui','file','2017-02-22 00:06:29'),('jar','Java Archive','','application/java-archive','non','oui','file','2017-02-22 00:06:29'),('json','JSON','','application/json','non','oui','file','2017-02-22 00:06:29'),('kml','Keyhole Markup Language','','application/vnd.google-earth.kml+xml','non','oui','file','2017-02-22 00:06:29'),('kmz','Google Earth Placemark File','','application/vnd.google-earth.kmz','non','oui','file','2017-02-22 00:06:29'),('lyx','Lyx file','','application/x-lyx','non','oui','file','2017-02-22 00:06:29'),('m3u','M3U Playlist','','text/plain','non','oui','file','2017-02-22 00:06:29'),('m3u8','M3U8 Playlist','','text/plain','non','oui','file','2017-02-22 00:06:29'),('mathml','MathML','','application/mathml+xml','non','oui','file','2017-02-22 00:06:29'),('mbtiles','MBTiles','','application/x-sqlite3','non','oui','file','2017-02-22 00:06:29'),('md','Markdown Document','','text/x-markdown','non','oui','file','2017-02-22 00:06:29'),('pas','Pascal','','text/x-pascal','non','oui','file','2017-02-22 00:06:29'),('pdf','PDF','','application/pdf','non','oui','file','2017-02-22 00:06:29'),('pgn','Portable Game Notation','','application/x-chess-pgn','non','oui','file','2017-02-22 00:06:30'),('pls','Playlist','','text/plain','non','oui','file','2017-02-22 00:06:30'),('ppt','PowerPoint','','application/vnd.ms-powerpoint','non','oui','file','2017-02-22 00:06:30'),('pot','PowerPoint Template','','application/vnd.ms-powerpoint','non','oui','file','2017-02-22 00:06:30'),('ps','PostScript','','application/postscript','non','oui','file','2017-02-22 00:06:30'),('psd','Photoshop','','image/x-photoshop','non','oui','image','2017-02-22 00:06:30'),('rar','WinRAR','','application/x-rar-compressed','non','oui','file','2017-02-22 00:06:30'),('rdf','Resource Description Framework','','application/rdf+xml','non','oui','file','2017-02-22 00:06:30'),('ris','RIS','','application/x-research-info-systems','non','oui','file','2017-02-22 00:06:30'),('rpm','RedHat/Mandrake/SuSE','','application/x-redhat-package-manager','non','oui','file','2017-02-22 00:06:30'),('rtf','RTF','','application/rtf','non','oui','file','2017-02-22 00:06:30'),('sdc','StarOffice Spreadsheet','','application/vnd.stardivision.calc','non','oui','file','2017-02-22 00:06:30'),('sdd','StarOffice Presentation','','application/vnd.stardivision.impress','non','oui','file','2017-02-22 00:06:30'),('sdw','StarOffice Writer document','','application/vnd.stardivision.writer','non','oui','file','2017-02-22 00:06:30'),('sit','Stuffit','','application/x-stuffit','non','oui','file','2017-02-22 00:06:30'),('sla','Scribus','','application/x-scribus','non','oui','file','2017-02-22 00:06:30'),('srt','SubRip Subtitle','','text/plain','non','oui','file','2017-02-22 00:06:30'),('ssa','SubStation Alpha Subtitle','','text/plain','non','oui','file','2017-02-22 00:06:30'),('sxc','OpenOffice.org Calc','','application/vnd.sun.xml.calc','non','oui','file','2017-02-22 00:06:30'),('sxi','OpenOffice.org Impress','','application/vnd.sun.xml.impress','non','oui','file','2017-02-22 00:06:30'),('sxw','OpenOffice.org','','application/vnd.sun.xml.writer','non','oui','file','2017-02-22 00:06:30'),('tar','Tar','','application/x-tar','non','oui','file','2017-02-22 00:06:30'),('tex','LaTeX','','text/x-tex','non','oui','file','2017-02-22 00:06:30'),('tgz','TGZ','','application/x-gtar','non','oui','file','2017-02-22 00:06:30'),('torrent','BitTorrent','','application/x-bittorrent','non','oui','file','2017-02-22 00:06:30'),('ttf','TTF Font','','application/x-font-ttf','non','oui','file','2017-02-22 00:06:30'),('txt','Texte','','text/plain','non','oui','file','2017-02-22 00:06:30'),('usf','Universal Subtitle Format','','application/xml','non','oui','file','2017-02-22 00:06:30'),('vcf','vCard','','text/vcard','non','oui','file','2017-02-22 00:06:30'),('xcf','GIMP multi-layer','','application/x-xcf','non','oui','file','2017-02-22 00:06:30'),('xls','Excel','','application/vnd.ms-excel','non','oui','file','2017-02-22 00:06:30'),('xlt','Excel Template','','application/vnd.ms-excel','non','oui','file','2017-02-22 00:06:30'),('wmf','Windows Metafile','','image/x-emf','non','oui','image','2017-02-22 00:06:30'),('wpl','Windows Media Player Playlist','','application/vnd.ms-wpl','non','oui','file','2017-02-22 00:06:30'),('xspf','XSPF','','application/xspf+xml','non','oui','file','2017-02-22 00:06:30'),('xml','XML','','application/xml','non','oui','file','2017-02-22 00:06:30'),('yaml','YAML','','text/yaml','non','oui','file','2017-02-22 00:06:30'),('zip','Zip','','application/zip','non','oui','file','2017-02-22 00:06:30'),('odt','OpenDocument Text','','application/vnd.oasis.opendocument.text','non','oui','file','2017-02-22 00:06:30'),('ods','OpenDocument Spreadsheet','','application/vnd.oasis.opendocument.spreadsheet','non','oui','file','2017-02-22 00:06:30'),('odp','OpenDocument Presentation','','application/vnd.oasis.opendocument.presentation','non','oui','file','2017-02-22 00:06:30'),('odg','OpenDocument Graphics','','application/vnd.oasis.opendocument.graphics','non','oui','file','2017-02-22 00:06:30'),('odc','OpenDocument Chart','','application/vnd.oasis.opendocument.chart','non','oui','file','2017-02-22 00:06:30'),('odf','OpenDocument Formula','','application/vnd.oasis.opendocument.formula','non','oui','file','2017-02-22 00:06:30'),('odb','OpenDocument Database','','application/vnd.oasis.opendocument.database','non','oui','file','2017-02-22 00:06:30'),('odi','OpenDocument Image','','application/vnd.oasis.opendocument.image','non','oui','file','2017-02-22 00:06:30'),('odm','OpenDocument Text-master','','application/vnd.oasis.opendocument.text-master','non','oui','file','2017-02-22 00:06:30'),('ott','OpenDocument Text-template','','application/vnd.oasis.opendocument.text-template','non','oui','file','2017-02-22 00:06:30'),('ots','OpenDocument Spreadsheet-template','','application/vnd.oasis.opendocument.spreadsheet-template','non','oui','file','2017-02-22 00:06:30'),('otp','OpenDocument Presentation-template','','application/vnd.oasis.opendocument.presentation-template','non','oui','file','2017-02-22 00:06:30'),('otg','OpenDocument Graphics-template','','application/vnd.oasis.opendocument.graphics-template','non','oui','file','2017-02-22 00:06:30'),('cls','LaTeX Class','','text/x-tex','non','oui','file','2017-02-22 00:06:30'),('sty','LaTeX Style Sheet','','text/x-tex','non','oui','file','2017-02-22 00:06:30'),('docm','Word','','application/vnd.ms-word.document.macroEnabled.12','non','oui','file','2017-02-22 00:06:30'),('docx','Word','','application/vnd.openxmlformats-officedocument.wordprocessingml.document','non','oui','file','2017-02-22 00:06:30'),('dotm','Word template','','application/vnd.ms-word.template.macroEnabled.12','non','oui','file','2017-02-22 00:06:30'),('dotx','Word template','','application/vnd.openxmlformats-officedocument.wordprocessingml.template','non','oui','file','2017-02-22 00:06:30'),('potm','Powerpoint template','','application/vnd.ms-powerpoint.template.macroEnabled.12','non','oui','file','2017-02-22 00:06:30'),('potx','Powerpoint template','','application/vnd.openxmlformats-officedocument.presentationml.template','non','oui','file','2017-02-22 00:06:30'),('ppam','Powerpoint addin','','application/vnd.ms-powerpoint.addin.macroEnabled.12','non','oui','file','2017-02-22 00:06:30'),('ppsm','Powerpoint slideshow','','application/vnd.ms-powerpoint.slideshow.macroEnabled.12','non','oui','file','2017-02-22 00:06:30'),('ppsx','Powerpoint slideshow','','application/vnd.openxmlformats-officedocument.presentationml.slideshow','non','oui','file','2017-02-22 00:06:30'),('pptm','Powerpoint','','application/vnd.ms-powerpoint.presentation.macroEnabled.12','non','oui','file','2017-02-22 00:06:30'),('pptx','Powerpoint','','application/vnd.openxmlformats-officedocument.presentationml.presentation','non','oui','file','2017-02-22 00:06:30'),('xlam','Excel','','application/vnd.ms-excel.addin.macroEnabled.12','non','oui','file','2017-02-22 00:06:30'),('xlsb','Excel binary','','application/vnd.ms-excel.sheet.binary.macroEnabled.12','non','oui','file','2017-02-22 00:06:30'),('xlsm','Excel','','application/vnd.ms-excel.sheet.macroEnabled.12','non','oui','file','2017-02-22 00:06:30'),('xlsx','Excel','','application/vnd.openxmlformats-officedocument.spreadsheetml.sheet','non','oui','file','2017-02-22 00:06:30'),('xltm','Excel template','','application/vnd.ms-excel.template.macroEnabled.12','non','oui','file','2017-02-22 00:06:30'),('xltx','Excel template','','application/vnd.openxmlformats-officedocument.spreadsheetml.template','non','oui','file','2017-02-22 00:06:30');
/*!40000 ALTER TABLE `spip_types_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_urls`
--

DROP TABLE IF EXISTS `spip_urls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_urls` (
  `id_parent` bigint(21) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL,
  `type` varchar(25) NOT NULL DEFAULT 'article',
  `id_objet` bigint(21) NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `segments` smallint(3) NOT NULL DEFAULT '1',
  `perma` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_parent`,`url`),
  KEY `type` (`type`,`id_objet`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_urls`
--

LOCK TABLES `spip_urls` WRITE;
/*!40000 ALTER TABLE `spip_urls` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_urls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_versions`
--

DROP TABLE IF EXISTS `spip_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_versions` (
  `id_version` bigint(21) NOT NULL DEFAULT '0',
  `id_objet` bigint(21) NOT NULL DEFAULT '0',
  `objet` varchar(25) NOT NULL DEFAULT '',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `id_auteur` varchar(23) NOT NULL DEFAULT '',
  `titre_version` text NOT NULL,
  `permanent` char(3) NOT NULL DEFAULT '',
  `champs` text NOT NULL,
  PRIMARY KEY (`id_version`,`id_objet`,`objet`),
  KEY `id_version` (`id_version`),
  KEY `id_objet` (`id_objet`),
  KEY `objet` (`objet`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_versions`
--

LOCK TABLES `spip_versions` WRITE;
/*!40000 ALTER TABLE `spip_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_versions_fragments`
--

DROP TABLE IF EXISTS `spip_versions_fragments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_versions_fragments` (
  `id_fragment` int(10) unsigned NOT NULL DEFAULT '0',
  `version_min` int(10) unsigned NOT NULL DEFAULT '0',
  `version_max` int(10) unsigned NOT NULL DEFAULT '0',
  `id_objet` bigint(21) NOT NULL,
  `objet` varchar(25) NOT NULL DEFAULT '',
  `compress` tinyint(4) NOT NULL,
  `fragment` longblob,
  PRIMARY KEY (`id_objet`,`objet`,`id_fragment`,`version_min`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_versions_fragments`
--

LOCK TABLES `spip_versions_fragments` WRITE;
/*!40000 ALTER TABLE `spip_versions_fragments` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_versions_fragments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_visites`
--

DROP TABLE IF EXISTS `spip_visites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_visites` (
  `date` date NOT NULL,
  `visites` int(10) unsigned NOT NULL DEFAULT '0',
  `maj` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_visites`
--

LOCK TABLES `spip_visites` WRITE;
/*!40000 ALTER TABLE `spip_visites` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_visites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spip_visites_articles`
--

DROP TABLE IF EXISTS `spip_visites_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spip_visites_articles` (
  `date` date NOT NULL,
  `id_article` int(10) unsigned NOT NULL,
  `visites` int(10) unsigned NOT NULL DEFAULT '0',
  `maj` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`date`,`id_article`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spip_visites_articles`
--

LOCK TABLES `spip_visites_articles` WRITE;
/*!40000 ALTER TABLE `spip_visites_articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `spip_visites_articles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-22  0:07:20
