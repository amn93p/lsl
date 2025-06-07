-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Ven 29 Septembre 2017 à 11:15
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `vente`
--

-- --------------------------------------------------------

--
-- Structure de la table `accessory`
--

CREATE TABLE `accessory` (
  `Player` int(11) NOT NULL,
  `Model` smallint(6) NOT NULL,
  `Slot` smallint(6) NOT NULL,
  `pX` decimal(10,4) NOT NULL,
  `pY` decimal(10,4) NOT NULL,
  `pZ` decimal(10,4) NOT NULL,
  `rX` decimal(10,4) NOT NULL,
  `rY` decimal(10,4) NOT NULL,
  `rZ` decimal(10,4) NOT NULL,
  `sX` decimal(10,4) NOT NULL,
  `sY` decimal(10,4) NOT NULL,
  `sZ` decimal(10,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `accounts`
--

CREATE TABLE `accounts` (
  `SQLid` int(11) NOT NULL,
  `Name` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `FluxID` int(11) NOT NULL DEFAULT '0',
  `DateInscription` int(11) NOT NULL DEFAULT '0',
  `Online` smallint(6) NOT NULL DEFAULT '0',
  `LastConnexion` int(11) NOT NULL DEFAULT '0',
  `LastIP` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `ConnectHours` smallint(6) NOT NULL DEFAULT '0',
  `ConnectSec` smallint(6) NOT NULL DEFAULT '0',
  `Level` smallint(6) NOT NULL DEFAULT '1',
  `Respect` smallint(6) NOT NULL DEFAULT '0',
  `Job` smallint(6) NOT NULL DEFAULT '0',
  `JobRank` smallint(6) NOT NULL DEFAULT '0',
  `Fac` smallint(6) NOT NULL DEFAULT '0',
  `FacRank` tinyint(4) NOT NULL DEFAULT '0',
  `Money` int(11) NOT NULL DEFAULT '100',
  `Bank` int(11) NOT NULL DEFAULT '8900',
  `Prime` int(11) NOT NULL DEFAULT '0',
  `Medic` int(11) NOT NULL DEFAULT '0',
  `Permis` tinyint(4) NOT NULL DEFAULT '0',
  `Kills` smallint(6) NOT NULL DEFAULT '0',
  `Deaths` smallint(6) NOT NULL DEFAULT '0',
  `Skin` smallint(6) NOT NULL DEFAULT '2',
  `Phys` smallint(6) NOT NULL DEFAULT '0',
  `Phone` int(11) NOT NULL DEFAULT '0',
  `PhonePay` smallint(6) NOT NULL DEFAULT '0',
  `PhoneType` smallint(6) NOT NULL DEFAULT '0',
  `Radio` int(11) NOT NULL DEFAULT '0',
  `Jailed` smallint(6) NOT NULL DEFAULT '0',
  `JailTime` smallint(6) NOT NULL DEFAULT '0',
  `House` smallint(6) NOT NULL DEFAULT '-1',
  `Coke` int(11) NOT NULL DEFAULT '0',
  `Canna` smallint(6) NOT NULL DEFAULT '0',
  `Cigar` tinyint(4) NOT NULL DEFAULT '0',
  `Briquet` tinyint(4) NOT NULL DEFAULT '0',
  `Feuilles` tinyint(4) NOT NULL DEFAULT '0',
  `Mun1` tinyint(4) NOT NULL DEFAULT '0',
  `Mun2` tinyint(4) NOT NULL DEFAULT '0',
  `Des` tinyint(4) NOT NULL DEFAULT '0',
  `Ac0` smallint(6) NOT NULL DEFAULT '0',
  `Ac1` smallint(6) NOT NULL DEFAULT '0',
  `Ac2` smallint(6) NOT NULL DEFAULT '0',
  `Ac3` smallint(6) NOT NULL,
  `Ac4` int(11) NOT NULL DEFAULT '0',
  `TPosX` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `TPosY` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `TPosZ` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `TInt` smallint(11) NOT NULL DEFAULT '0',
  `TWorld` int(11) NOT NULL DEFAULT '0',
  `TInconnu` mediumint(9) NOT NULL DEFAULT '0',
  `TSkin` smallint(6) NOT NULL DEFAULT '0',
  `THeal` decimal(6,2) NOT NULL DEFAULT '0.00',
  `TArmor` decimal(6,2) NOT NULL DEFAULT '0.00',
  `TG0` int(11) NOT NULL DEFAULT '0',
  `TA0` int(11) NOT NULL DEFAULT '0',
  `TI0` int(11) NOT NULL DEFAULT '0',
  `TS0` int(11) NOT NULL DEFAULT '0',
  `TMainObj` smallint(6) NOT NULL DEFAULT '0',
  `TMainInfo` int(11) NOT NULL DEFAULT '0',
  `SpineInfo` int(11) NOT NULL DEFAULT '0',
  `THolsterGun` int(11) NOT NULL DEFAULT '0',
  `THolsterAmmo` int(11) NOT NULL DEFAULT '0',
  `TTime` int(11) NOT NULL DEFAULT '0',
  `Cellule` smallint(6) NOT NULL DEFAULT '0',
  `PhoneListen` tinyint(1) NOT NULL DEFAULT '0',
  `Avocat` tinyint(1) NOT NULL DEFAULT '0',
  `TJury` smallint(6) NOT NULL DEFAULT '0',
  `Gilet` int(11) NOT NULL DEFAULT '0',
  `CannaLConso` int(11) NOT NULL DEFAULT '0',
  `CannaLQt` smallint(6) NOT NULL DEFAULT '0',
  `CannaTQt` int(11) NOT NULL DEFAULT '0',
  `CokeLConso` int(11) NOT NULL DEFAULT '0',
  `CokeLQt` smallint(6) NOT NULL DEFAULT '0',
  `CokeTQt` int(11) NOT NULL DEFAULT '0',
  `FacNameR` varchar(64) NOT NULL DEFAULT 'Aucun',
  `JobNameR` varchar(64) NOT NULL DEFAULT 'Aucun',
  `PhoneInconnu` smallint(6) NOT NULL,
  `THolsterIdentif` int(11) NOT NULL DEFAULT '0',
  `THolsterSerie` int(11) NOT NULL DEFAULT '0',
  `Motif` varchar(128) NOT NULL,
  `TG1` int(11) NOT NULL DEFAULT '0',
  `TA1` int(11) NOT NULL DEFAULT '0',
  `TS1` int(11) NOT NULL DEFAULT '0',
  `TI1` int(11) NOT NULL DEFAULT '0',
  `TG2` int(11) NOT NULL DEFAULT '0',
  `TA2` int(11) NOT NULL DEFAULT '0',
  `TS2` int(11) NOT NULL DEFAULT '0',
  `TI2` int(11) NOT NULL DEFAULT '0',
  `TG3` int(11) NOT NULL DEFAULT '0',
  `TA3` int(11) NOT NULL DEFAULT '0',
  `TS3` int(11) NOT NULL DEFAULT '0',
  `TI3` int(11) NOT NULL DEFAULT '0',
  `TG4` int(11) NOT NULL DEFAULT '0',
  `TA4` int(11) NOT NULL DEFAULT '0',
  `TS4` int(11) NOT NULL DEFAULT '0',
  `TI4` int(11) NOT NULL DEFAULT '0',
  `TG5` int(11) NOT NULL DEFAULT '0',
  `TA5` int(11) NOT NULL DEFAULT '0',
  `TS5` int(11) NOT NULL DEFAULT '0',
  `TI5` int(11) NOT NULL DEFAULT '0',
  `Tjservice` int(11) NOT NULL DEFAULT '0',
  `LicenceType` smallint(6) NOT NULL DEFAULT '0',
  `TMainCaisse` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '0',
  `Training` int(11) NOT NULL DEFAULT '0',
  `Forcep` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `Docker` smallint(4) NOT NULL DEFAULT '0',
  `HeroLConso` int(11) NOT NULL DEFAULT '0',
  `HeroLQt` smallint(6) NOT NULL DEFAULT '0',
  `HeroTQt` int(11) NOT NULL DEFAULT '0',
  `SterLConso` int(11) NOT NULL DEFAULT '0',
  `SterLQt` smallint(6) NOT NULL DEFAULT '0',
  `SterTQt` int(11) NOT NULL DEFAULT '0',
  `MethLConso` int(11) NOT NULL DEFAULT '0',
  `MethLQt` smallint(6) NOT NULL DEFAULT '0',
  `MethTQt` int(11) NOT NULL DEFAULT '0',
  `Hero` smallint(6) NOT NULL DEFAULT '0',
  `Meth` smallint(6) NOT NULL DEFAULT '0',
  `Stero` smallint(6) NOT NULL DEFAULT '0',
  `Ephedrine` smallint(6) NOT NULL,
  `Phosphore` smallint(6) NOT NULL,
  `SulfateHydrone` smallint(6) NOT NULL,
  `AcideHydrochlorique` smallint(6) NOT NULL,
  `HydroxideSodium` smallint(6) NOT NULL,
  `Diethylique` smallint(6) NOT NULL,
  `BoiteNasal` smallint(6) NOT NULL,
  `Carte` smallint(6) NOT NULL,
  `Dumps` smallint(6) NOT NULL,
  `Materiaux` smallint(6) NOT NULL,
  `Kit1` smallint(5) NOT NULL,
  `Kit2` smallint(5) NOT NULL,
  `Kit3` smallint(5) NOT NULL,
  `Kit4` smallint(5) NOT NULL,
  `Kit5` smallint(5) NOT NULL,
  `Kit6` smallint(5) NOT NULL,
  `Kit7` smallint(5) NOT NULL,
  `Kit8` smallint(5) NOT NULL,
  `Kit9` smallint(5) NOT NULL,
  `Kit10` smallint(5) NOT NULL,
  `Blocking` smallint(3) NOT NULL,
  `TimeBlock` int(11) NOT NULL,
  `DProvisoir` smallint(3) NOT NULL,
  `NombreDocker` smallint(3) NOT NULL,
  `TimeDocker` int(11) NOT NULL,
  `CarjackNb` int(11) NOT NULL,
  `Carjack1` int(11) NOT NULL,
  `LicArme` smallint(3) NOT NULL DEFAULT '0',
  `Vote` smallint(3) NOT NULL DEFAULT '0',
  `NbCargaison` smallint(4) NOT NULL,
  `HeureCargaison` int(11) NOT NULL,
  `NbTransfo` smallint(4) NOT NULL,
  `HeureTransfo` int(11) NOT NULL,
  `Description` varchar(96) NOT NULL,
  `CheckForce` int(11) NOT NULL DEFAULT '0',
  `ArmeVisible1` int(11) NOT NULL,
  `ArmeVisible_Muns1` int(11) NOT NULL,
  `ArmeVisible2` int(11) NOT NULL,
  `ArmeVisible_Muns2` int(11) NOT NULL,
  `ArmeVisible3` int(11) NOT NULL,
  `ArmeVisible_Muns3` int(11) NOT NULL,
  `ArmeVisible1B` int(11) NOT NULL,
  `ArmeVisible2B` int(11) NOT NULL,
  `ArmeVisible3B` int(11) NOT NULL,
  `ArmeVisible1S` int(11) NOT NULL,
  `ArmeVisible2S` int(11) NOT NULL,
  `ArmeVisible3S` int(11) NOT NULL,
  `ObjContrebande` int(11) NOT NULL,
  `ArgSale` int(11) NOT NULL,
  `MaxGym` int(11) NOT NULL DEFAULT '0',
  `LastGym` int(11) NOT NULL DEFAULT '0',
  `TimeGym` int(11) NOT NULL DEFAULT '0',
  `SteroGym` int(11) NOT NULL DEFAULT '0',
  `SwitchJob` text NOT NULL,
  `SwitchJobRank` text NOT NULL,
  `SwitchJobRankName` text NOT NULL,
  `Corde` int(11) NOT NULL DEFAULT '0',
  `Band` int(11) NOT NULL DEFAULT '0',
  `Baill` int(11) NOT NULL DEFAULT '0',
  `TDrugCanna` int(11) NOT NULL DEFAULT '0',
  `TDrugCoke` int(11) NOT NULL DEFAULT '0',
  `TDrugHero` int(11) NOT NULL DEFAULT '0',
  `TDrugMeth` int(11) NOT NULL DEFAULT '0',
  `TDrugStero` int(11) NOT NULL DEFAULT '0',
  `StaticJob` int(11) NOT NULL DEFAULT '0',
  `PayeStaticJob` int(11) NOT NULL DEFAULT '0',
  `CountLiverTMP` int(11) NOT NULL DEFAULT '0',
  `CountLiver` int(11) NOT NULL DEFAULT '0',
  `LimitJob` int(11) NOT NULL DEFAULT '0',
  `pKeys` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `armes`
--

CREATE TABLE `armes` (
  `Identification` int(11) NOT NULL,
  `Serie` int(11) NOT NULL,
  `Acheteur` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `bags`
--

CREATE TABLE `bags` (
  `IDSac` int(11) NOT NULL,
  `Model` int(11) NOT NULL,
  `Info` int(11) NOT NULL,
  `Identif` int(11) NOT NULL,
  `Serie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `banlist`
--

CREATE TABLE `banlist` (
  `BanID` int(11) NOT NULL,
  `ip1` varchar(3) NOT NULL,
  `ip2` varchar(3) NOT NULL,
  `ip3` varchar(3) NOT NULL,
  `ip4` varchar(3) NOT NULL,
  `Pseudo` varchar(25) NOT NULL DEFAULT '--',
  `DateDebut` int(11) NOT NULL,
  `DateFin` int(11) NOT NULL,
  `Admin` int(11) NOT NULL,
  `Raison` varchar(60) NOT NULL DEFAULT 'n.c.'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `beta`
--

CREATE TABLE `beta` (
  `FluxID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `biz_spawn`
--

CREATE TABLE `biz_spawn` (
  `Rid` int(11) NOT NULL,
  `Compte` int(11) NOT NULL DEFAULT '0',
  `Date` int(11) NOT NULL,
  `AdressIP` varchar(16) CHARACTER SET latin1 NOT NULL,
  `CR` int(11) NOT NULL,
  `Etat` tinyint(4) NOT NULL DEFAULT '0',
  `Reponse` text CHARACTER SET latin1 NOT NULL,
  `Background` text CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `bracelet`
--

CREATE TABLE `bracelet` (
  `player` int(11) NOT NULL,
  `idbracelet` int(11) NOT NULL,
  `joueur` varchar(25) NOT NULL,
  `Etat` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `braquage`
--

CREATE TABLE `braquage` (
  `VW` int(11) NOT NULL,
  `lastbraquage` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `braquage`
--

INSERT INTO `braquage` (`VW`, `lastbraquage`) VALUES
(142, 1487369772),
(143, 1485814981),
(144, 1489884924),
(145, 1488749927),
(176, 1485563974),
(150, 1489620180),
(154, 1490830209),
(155, 1490739836),
(175, 1489884721);

-- --------------------------------------------------------

--
-- Structure de la table `carteidentite`
--

CREATE TABLE `carteidentite` (
  `Cid` int(11) NOT NULL,
  `Player` int(11) NOT NULL DEFAULT '0',
  `Name` varchar(25) DEFAULT NULL,
  `VilleNais` varchar(20) DEFAULT NULL,
  `Taille` smallint(6) DEFAULT '0',
  `Poids` smallint(6) DEFAULT '0',
  `Yeux` varchar(20) DEFAULT NULL,
  `ChevCol` varchar(20) DEFAULT NULL,
  `ChevLong` varchar(20) DEFAULT NULL,
  `Adresse` varchar(64) DEFAULT NULL,
  `Creation` mediumint(9) DEFAULT '0',
  `Annee` int(11) NOT NULL DEFAULT '0',
  `Month` int(11) NOT NULL DEFAULT '0',
  `Jour` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `casiersinv`
--

CREATE TABLE `casiersinv` (
  `Sid` int(11) NOT NULL,
  `Player` int(11) NOT NULL,
  `SObjet` smallint(11) NOT NULL,
  `SInfo` int(11) NOT NULL,
  `SSerie` int(11) NOT NULL DEFAULT '0',
  `SIdentif` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `characters`
--

CREATE TABLE `characters` (
  `Player` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Date` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `commerces`
--

CREATE TABLE `commerces` (
  `Cid` int(11) NOT NULL,
  `Owner` int(11) NOT NULL,
  `Caisse` int(11) NOT NULL,
  `OutX` decimal(10,4) NOT NULL,
  `OutY` decimal(10,4) NOT NULL,
  `OutZ` decimal(10,4) NOT NULL,
  `OutInt` smallint(6) NOT NULL,
  `OutWorld` smallint(6) NOT NULL,
  `InX` decimal(10,4) NOT NULL,
  `InY` decimal(10,4) NOT NULL,
  `InZ` decimal(10,4) NOT NULL,
  `InInt` smallint(6) NOT NULL,
  `Open` tinyint(1) NOT NULL DEFAULT '1',
  `Price` int(11) NOT NULL,
  `Produits` int(11) NOT NULL,
  `Title` varchar(24) NOT NULL DEFAULT 'Commerce',
  `Categorie` int(11) NOT NULL,
  `PrixEntree` int(11) NOT NULL,
  `PrixProds` int(11) NOT NULL DEFAULT '0',
  `MontantLocation` smallint(7) NOT NULL,
  `Expire7days` int(11) NOT NULL,
  `Key1` int(11) NOT NULL,
  `Key2` int(11) NOT NULL,
  `Article1Prix` smallint(6) NOT NULL,
  `Article2Prix` smallint(6) NOT NULL,
  `Article3Prix` smallint(6) NOT NULL,
  `Article1Nom` varchar(15) NOT NULL,
  `Article2Nom` varchar(15) NOT NULL,
  `Article3Nom` varchar(15) NOT NULL,
  `PlacementActor` smallint(3) NOT NULL,
  `ObjContrebande` int(11) NOT NULL,
  `ActiveFurn` int(11) NOT NULL DEFAULT '0',
  `CoffreFurn` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `corps`
--

CREATE TABLE `corps` (
  `X` decimal(10,4) NOT NULL,
  `Y` decimal(10,4) NOT NULL,
  `Z` decimal(10,4) NOT NULL,
  `A` decimal(10,4) NOT NULL,
  `VW` int(11) NOT NULL,
  `Skin` int(11) NOT NULL,
  `Cid` int(11) NOT NULL,
  `Etat` int(11) NOT NULL,
  `Arme` varchar(30) NOT NULL,
  `Identif` int(11) NOT NULL,
  `TimeDeath` int(11) NOT NULL,
  `Name` varchar(64) NOT NULL,
  `Visible` smallint(3) NOT NULL,
  `NomJ` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `debug_mysql`
--

CREATE TABLE `debug_mysql` (
  `debug` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `debug_mysql`
--

INSERT INTO `debug_mysql` (`debug`) VALUES
(952239);

-- --------------------------------------------------------

--
-- Structure de la table `errors`
--

CREATE TABLE `errors` (
  `Type` text NOT NULL,
  `Error` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `factions`
--

CREATE TABLE `factions` (
  `Fid` int(11) NOT NULL,
  `Name` varchar(64) NOT NULL,
  `Mode` tinyint(4) NOT NULL,
  `Chat` tinyint(4) NOT NULL DEFAULT '0',
  `Phys` tinyint(4) NOT NULL,
  `Forum` int(11) NOT NULL DEFAULT '0',
  `ForumHR` smallint(6) NOT NULL DEFAULT '0',
  `Perm1` varchar(64) NOT NULL,
  `Perm2` varchar(64) NOT NULL,
  `Perm3` varchar(64) NOT NULL,
  `Perm4` varchar(64) NOT NULL,
  `Perm5` varchar(64) NOT NULL,
  `Guerre` smallint(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `feu`
--

CREATE TABLE `feu` (
  `F_x` decimal(10,4) NOT NULL,
  `F_y` decimal(10,4) NOT NULL,
  `F_z` decimal(10,4) NOT NULL,
  `Fint` int(11) NOT NULL,
  `FVW` int(11) NOT NULL,
  `Fid` int(11) NOT NULL,
  `F_Health_Actuel` int(11) NOT NULL,
  `F_Health_Max` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `flu_bans`
--

CREATE TABLE `flu_bans` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(200) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `expire` int(10) UNSIGNED DEFAULT NULL,
  `ban_creator` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `flu_categories`
--

CREATE TABLE `flu_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `cat_name` varchar(80) NOT NULL DEFAULT 'New Category',
  `disp_position` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `flu_censoring`
--

CREATE TABLE `flu_censoring` (
  `id` int(10) UNSIGNED NOT NULL,
  `search_for` varchar(60) NOT NULL DEFAULT '',
  `replace_with` varchar(60) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `flu_config`
--

CREATE TABLE `flu_config` (
  `conf_name` varchar(255) NOT NULL DEFAULT '',
  `conf_value` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `flu_config`
--

INSERT INTO `flu_config` (`conf_name`, `conf_value`) VALUES
('o_cur_version', '1.5.0'),
('o_database_revision', '18'),
('o_searchindex_revision', '2'),
('o_parser_revision', '2'),
('o_board_title', 'GTA SA:MP - LSchronicles - ROLEPLAY'),
('o_board_desc', 'LSchronicles est un serveur roleplay sur la plateforme SAMP'),
('o_default_timezone', '1'),
('o_time_format', 'H:i'),
('o_date_format', 'd/m/Y'),
('o_timeout_visit', '1800'),
('o_timeout_online', '900'),
('o_redirect_delay', '1'),
('o_show_version', '0'),
('o_show_user_info', '1'),
('o_show_post_count', '1'),
('o_signatures', '1'),
('o_smilies', '1'),
('o_smilies_sig', '1'),
('o_make_links', '1'),
('o_default_lang', 'French'),
('o_default_style', 'v2'),
('o_default_user_group', '4'),
('o_topic_review', '15'),
('o_disp_topics_default', '30'),
('o_disp_posts_default', '15'),
('o_indent_num_spaces', '4'),
('o_quote_depth', '3'),
('o_quickpost', '1'),
('o_users_online', '1'),
('o_censoring', '1'),
('o_show_dot', '0'),
('o_topic_views', '1'),
('o_quickjump', '1'),
('o_gzip', '0'),
('o_additional_navlinks', ''),
('o_report_method', '2'),
('o_regs_report', '0'),
('o_default_email_setting', '2'),
('o_mailing_list', 'lschroniclesnet@gmail.com'),
('o_avatars', '1'),
('o_avatars_dir', 'img/avatars'),
('o_avatars_width', '150'),
('o_avatars_height', '150'),
('o_avatars_size', '250000'),
('o_search_all_forums', '1'),
('o_base_url', 'http://lschronicles.net/forums'),
('o_admin_email', 'dirigeant@lschronicles.net'),
('o_webmaster_email', 'dirigeant@lschronicles.net'),
('o_forum_subscriptions', '0'),
('o_topic_subscriptions', '0'),
('o_smtp_host', 'mail.free-h.org'),
('o_smtp_user', 'dirigeant@lschronicles.net'),
('o_smtp_pass', 'Sm2ov02?'),
('o_smtp_ssl', '0'),
('o_regs_allow', '1'),
('o_regs_verify', '1'),
('o_announcement', '1'),
('o_announcement_message', '<center>Adresse IP du serveur : 149.202.87.161:1700 <br>\n\n<b><u><font color="red">Une seconde chance?! <a href="http://lschronicles.net/forums/viewforum.php?id=560">cliquez ici !</a></font></u></b></center>\n\n\n<center>\n<div style="padding:4px; border:4px solid #e0e0e0;">\n<div style="padding:3px; background-color:#e0e0e0;">\nVotez pour LSchronicles !\n<a href="http://www.root-top.com/topsite/gta/in.php?ID=5024">LSchronicles</a>\n</div>\n</div>\n</center>\n\n\n\n\n\n\n<center>\n\n<a href="http://lschronicles.net/forums/viewtopic.php?id=1347&p=7">IVORY UPDATE 12/03 : Livreurs, boîtes à nourriture, système de dégâts réaliste, ajouts d\'objets divers.... </a><br /><br />\n\n</center>'),
('o_rules', '0'),
('o_rules_message', 'Veuillez saisir vos règles ici.'),
('o_maintenance', '0'),
('o_maintenance_message', 'Le forum est temporairement indisponible. (Mise à jour design).'),
('o_default_dst', '0'),
('o_feed_type', '0'),
('o_feed_ttl', '0'),
('p_message_bbcode', '1'),
('p_message_img_tag', '1'),
('p_message_all_caps', '1'),
('p_subject_all_caps', '1'),
('p_sig_all_caps', '1'),
('p_sig_bbcode', '1'),
('p_sig_img_tag', '1'),
('p_sig_length', '400'),
('p_sig_lines', '4'),
('p_allow_banned_email', '0'),
('p_allow_dupe_email', '0'),
('p_force_guest_email', '1'),
('o_pms_enabled', '1'),
('o_pms_min_kolvo', '50'),
('o_pms_flasher', '1');

-- --------------------------------------------------------

--
-- Structure de la table `flu_forums`
--

CREATE TABLE `flu_forums` (
  `id` int(10) UNSIGNED NOT NULL,
  `forum_name` varchar(80) NOT NULL DEFAULT 'New forum',
  `forum_desc` text,
  `redirect_url` varchar(100) DEFAULT NULL,
  `moderators` text,
  `num_topics` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `num_posts` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `last_post` int(10) UNSIGNED DEFAULT NULL,
  `last_post_id` int(10) UNSIGNED DEFAULT NULL,
  `last_poster` varchar(200) DEFAULT NULL,
  `sort_by` tinyint(1) NOT NULL DEFAULT '0',
  `disp_position` int(10) NOT NULL DEFAULT '0',
  `cat_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `parent_forum_id` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `flu_forum_perms`
--

CREATE TABLE `flu_forum_perms` (
  `group_id` int(10) NOT NULL DEFAULT '0',
  `forum_id` int(10) NOT NULL DEFAULT '0',
  `memb_id` int(11) NOT NULL DEFAULT '-1',
  `read_forum` tinyint(1) NOT NULL DEFAULT '1',
  `post_replies` tinyint(1) NOT NULL DEFAULT '1',
  `post_topics` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `flu_forum_subscriptions`
--

CREATE TABLE `flu_forum_subscriptions` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `forum_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `flu_groups`
--

CREATE TABLE `flu_groups` (
  `g_id` int(10) UNSIGNED NOT NULL,
  `g_title` varchar(50) NOT NULL DEFAULT '',
  `g_user_title` varchar(50) DEFAULT NULL,
  `g_promote_min_posts` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `g_promote_next_group` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `g_moderator` tinyint(1) NOT NULL DEFAULT '0',
  `g_mod_edit_users` tinyint(1) NOT NULL DEFAULT '0',
  `g_mod_rename_users` tinyint(1) NOT NULL DEFAULT '0',
  `g_mod_change_passwords` tinyint(1) NOT NULL DEFAULT '0',
  `g_mod_ban_users` tinyint(1) NOT NULL DEFAULT '0',
  `g_read_board` tinyint(1) NOT NULL DEFAULT '1',
  `g_view_users` tinyint(1) NOT NULL DEFAULT '1',
  `g_post_replies` tinyint(1) NOT NULL DEFAULT '1',
  `g_post_topics` tinyint(1) NOT NULL DEFAULT '1',
  `g_edit_posts` tinyint(1) NOT NULL DEFAULT '1',
  `g_delete_posts` tinyint(1) NOT NULL DEFAULT '1',
  `g_delete_topics` tinyint(1) NOT NULL DEFAULT '1',
  `g_post_links` tinyint(1) NOT NULL DEFAULT '1',
  `g_set_title` tinyint(1) NOT NULL DEFAULT '1',
  `g_search` tinyint(1) NOT NULL DEFAULT '1',
  `g_search_users` tinyint(1) NOT NULL DEFAULT '1',
  `g_send_email` tinyint(1) NOT NULL DEFAULT '1',
  `g_post_flood` smallint(6) NOT NULL DEFAULT '30',
  `g_search_flood` smallint(6) NOT NULL DEFAULT '30',
  `g_email_flood` smallint(6) NOT NULL DEFAULT '60',
  `g_report_flood` smallint(6) NOT NULL DEFAULT '60',
  `g_pm` tinyint(1) NOT NULL DEFAULT '1',
  `g_pm_limit` int(10) UNSIGNED NOT NULL DEFAULT '100'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `flu_groups`
--

INSERT INTO `flu_groups` (`g_id`, `g_title`, `g_user_title`, `g_promote_min_posts`, `g_promote_next_group`, `g_moderator`, `g_mod_edit_users`, `g_mod_rename_users`, `g_mod_change_passwords`, `g_mod_ban_users`, `g_read_board`, `g_view_users`, `g_post_replies`, `g_post_topics`, `g_edit_posts`, `g_delete_posts`, `g_delete_topics`, `g_post_links`, `g_set_title`, `g_search`, `g_search_users`, `g_send_email`, `g_post_flood`, `g_search_flood`, `g_email_flood`, `g_report_flood`, `g_pm`, `g_pm_limit`) VALUES
(1, 'Lead-administration', 'Leader-administrateur', 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0),
(2, 'Admins I', 'Administrateur I', 0, 0, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 1, 100),
(3, 'Invités', NULL, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 60, 30, 0, 0, 1, 100),
(4, 'Membres', 'Membre', 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 1, 1, 0, 10, 45, 45, 45, 1, 100),
(9, 'Modérateurs', 'Modérateur jeu et forum', 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 0, 0, 45, 45, 1, 100),
(15, 'Admins II', 'Administrateur II', 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 100),
(21, 'Administration HR', 'Administration HR', 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 100);

-- --------------------------------------------------------

--
-- Structure de la table `flu_logs`
--

CREATE TABLE `flu_logs` (
  `id` int(11) NOT NULL,
  `action` varchar(144) NOT NULL,
  `moderateur` varchar(35) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `flu_online`
--

CREATE TABLE `flu_online` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `ident` varchar(200) NOT NULL DEFAULT '',
  `logged` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `idle` tinyint(1) NOT NULL DEFAULT '0',
  `last_post` int(10) UNSIGNED DEFAULT NULL,
  `last_search` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `flu_online`
--

INSERT INTO `flu_online` (`user_id`, `ident`, `logged`, `idle`, `last_post`, `last_search`) VALUES
(1, '207.46.13.85', 1495114090, 0, NULL, NULL),
(1, '40.77.167.54', 1495114086, 0, NULL, NULL),
(273, 'Nelly', 1495113648, 0, NULL, NULL),
(1, '66.249.64.13', 1495113309, 0, NULL, NULL),
(1, '66.249.64.10', 1495113334, 0, NULL, NULL),
(2134, 'JustGamerz', 1495114099, 0, NULL, NULL),
(1, '40.77.167.133', 1495114081, 0, NULL, NULL),
(1, '66.249.64.43', 1495113640, 0, NULL, NULL),
(1, '68.180.230.187', 1495113716, 0, NULL, NULL),
(1, '77.81.110.107', 1495113776, 0, NULL, NULL),
(1, '213.41.148.18', 1495113834, 0, NULL, NULL),
(1, '66.249.64.16', 1495113214, 0, NULL, NULL),
(1657, 'PeytonKing', 1495112842, 1, NULL, NULL),
(1, '77.149.155.30', 1495113552, 0, NULL, NULL),
(103, 'Kwin', 1495113545, 0, NULL, NULL),
(5656, 'DILLIGAF', 1495113918, 0, NULL, NULL),
(1, '207.46.13.5', 1495114052, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `flu_pms_new_block`
--

CREATE TABLE `flu_pms_new_block` (
  `bl_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `bl_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `bl_user` varchar(200) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `flu_pms_new_posts`
--

CREATE TABLE `flu_pms_new_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `poster` varchar(200) NOT NULL DEFAULT '',
  `poster_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `poster_ip` varchar(39) DEFAULT NULL,
  `message` text,
  `hide_smilies` tinyint(1) NOT NULL DEFAULT '0',
  `posted` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `edited` int(10) UNSIGNED DEFAULT NULL,
  `edited_by` varchar(200) DEFAULT NULL,
  `post_seen` tinyint(1) NOT NULL DEFAULT '0',
  `post_new` tinyint(1) NOT NULL DEFAULT '1',
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `flu_pms_new_topics`
--

CREATE TABLE `flu_pms_new_topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `topic` varchar(255) NOT NULL DEFAULT '',
  `starter` varchar(200) NOT NULL DEFAULT '',
  `starter_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `to_user` varchar(200) NOT NULL DEFAULT '',
  `to_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `replies` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `last_posted` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `last_poster` tinyint(1) NOT NULL DEFAULT '0',
  `see_st` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `see_to` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topic_st` tinyint(4) NOT NULL DEFAULT '0',
  `topic_to` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `flu_posts`
--

CREATE TABLE `flu_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `poster` varchar(200) NOT NULL DEFAULT '',
  `poster_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `poster_ip` varchar(39) DEFAULT NULL,
  `poster_email` varchar(80) DEFAULT NULL,
  `message` mediumtext,
  `hide_smilies` tinyint(1) NOT NULL DEFAULT '0',
  `posted` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `edited` int(10) UNSIGNED DEFAULT NULL,
  `edited_by` varchar(200) DEFAULT NULL,
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `flu_reports`
--

CREATE TABLE `flu_reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `forum_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `reported_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `message` text,
  `zapped` int(10) UNSIGNED DEFAULT NULL,
  `zapped_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `flu_search_cache`
--

CREATE TABLE `flu_search_cache` (
  `id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ident` varchar(200) NOT NULL DEFAULT '',
  `search_data` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `flu_search_matches`
--

CREATE TABLE `flu_search_matches` (
  `post_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `word_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject_match` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `flu_search_words`
--

CREATE TABLE `flu_search_words` (
  `id` int(10) UNSIGNED NOT NULL,
  `word` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `flu_toolbar_conf`
--

CREATE TABLE `flu_toolbar_conf` (
  `conf_name` varchar(40) NOT NULL DEFAULT '',
  `conf_value` varchar(40) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `flu_toolbar_conf`
--

INSERT INTO `flu_toolbar_conf` (`conf_name`, `conf_value`) VALUES
('enable_form', '1'),
('enable_quickform', '1'),
('img_pack', 'smooth'),
('nb_smilies', '12'),
('pop_up_width', '240'),
('pop_up_height', '200'),
('button_size', '4096'),
('button_width', '32'),
('button_height', '32');

-- --------------------------------------------------------

--
-- Structure de la table `flu_toolbar_tags`
--

CREATE TABLE `flu_toolbar_tags` (
  `name` varchar(20) NOT NULL DEFAULT '',
  `code` varchar(20) NOT NULL DEFAULT '',
  `enable_form` tinyint(1) NOT NULL DEFAULT '0',
  `enable_quick` tinyint(1) NOT NULL DEFAULT '0',
  `image` varchar(40) NOT NULL DEFAULT '',
  `func` tinyint(1) NOT NULL DEFAULT '0',
  `position` tinyint(2) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `flu_toolbar_tags`
--

INSERT INTO `flu_toolbar_tags` (`name`, `code`, `enable_form`, `enable_quick`, `image`, `func`, `position`) VALUES
('smilies', '', 1, 1, 'bt_smilies.png', 0, 0),
('bold', 'b', 1, 1, 'bt_bold.png', 0, 1),
('italic', 'i', 1, 1, 'bt_italic.png', 0, 2),
('underline', 'u', 1, 1, 'bt_underline.png', 0, 3),
('strike', 's', 1, 1, 'bt_strike.png', 0, 4),
('sup', 'sup', 1, 0, 'bt_sup.png', 0, 5),
('sub', 'sub', 1, 0, 'bt_sub.png', 0, 6),
('heading', 'h', 0, 0, 'bt_size_plus.png', 0, 7),
('left', 'left', 1, 0, 'bt_align_left.png', 0, 8),
('right', 'right', 1, 0, 'bt_align_right.png', 0, 10),
('center', 'center', 1, 0, 'bt_align_center.png', 0, 9),
('justify', 'justify', 1, 0, 'bt_align_justify.png', 0, 11),
('color', 'color', 1, 1, 'bt_color.png', 0, 12),
('q', 'q', 1, 0, 'bt_quote.png', 0, 13),
('acronym', 'acronym', 1, 0, 'bt_acronym.png', 1, 14),
('img', 'img', 1, 1, 'bt_img.png', 2, 15),
('code', 'code', 1, 1, 'bt_pre.png', 0, 16),
('quote', 'quote', 1, 1, 'bt_bquote.png', 1, 17),
('link', 'url', 1, 1, 'bt_link.png', 2, 18),
('email', 'email', 0, 0, 'bt_email.png', 2, 19),
('video', 'video', 1, 1, 'bt_video.png', 3, 20),
('li', '*', 1, 0, 'bt_li.png', 0, 21),
('list', 'list', 1, 0, 'bt_ul.png', 1, 22),
('Size', 'size', 0, 0, 'bt_acronym.png', 1, 23),
('background', 'background', 0, 0, 'bt_acronym.png', 1, 24),
('hr', 'hr', 0, 0, 'bt_acronym.png', 0, 25),
('font', 'font', 0, 0, 'bt_acronym.png', 1, 26);

-- --------------------------------------------------------

--
-- Structure de la table `flu_topics`
--

CREATE TABLE `flu_topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `poster` varchar(200) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `posted` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `first_post_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `last_post` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `last_post_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `last_poster` varchar(200) DEFAULT NULL,
  `num_views` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `num_replies` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  `sticky` tinyint(1) NOT NULL DEFAULT '0',
  `moved_to` int(10) UNSIGNED DEFAULT NULL,
  `forum_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `flu_topic_subscriptions`
--

CREATE TABLE `flu_topic_subscriptions` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `flu_users`
--

CREATE TABLE `flu_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '3',
  `username` varchar(30) NOT NULL DEFAULT '',
  `password` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `title` varchar(50) DEFAULT NULL,
  `realname` varchar(40) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `jabber` varchar(80) DEFAULT NULL,
  `icq` varchar(12) DEFAULT NULL,
  `msn` varchar(80) DEFAULT NULL,
  `aim` varchar(30) DEFAULT NULL,
  `yahoo` varchar(30) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL,
  `signature` text,
  `disp_topics` tinyint(3) UNSIGNED DEFAULT NULL,
  `disp_posts` tinyint(3) UNSIGNED DEFAULT NULL,
  `email_setting` tinyint(1) NOT NULL DEFAULT '1',
  `notify_with_post` tinyint(1) NOT NULL DEFAULT '0',
  `auto_notify` tinyint(1) NOT NULL DEFAULT '0',
  `show_smilies` tinyint(1) NOT NULL DEFAULT '1',
  `show_img` tinyint(1) NOT NULL DEFAULT '1',
  `show_img_sig` tinyint(1) NOT NULL DEFAULT '1',
  `show_avatars` tinyint(1) NOT NULL DEFAULT '1',
  `show_sig` tinyint(1) NOT NULL DEFAULT '1',
  `noel` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `timezone` float NOT NULL DEFAULT '0',
  `dst` tinyint(1) NOT NULL DEFAULT '0',
  `time_format` tinyint(1) NOT NULL DEFAULT '0',
  `date_format` tinyint(1) NOT NULL DEFAULT '0',
  `language` varchar(25) NOT NULL DEFAULT 'French',
  `style` varchar(25) NOT NULL DEFAULT 'v2',
  `num_posts` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `last_post` int(10) UNSIGNED DEFAULT NULL,
  `last_search` int(10) UNSIGNED DEFAULT NULL,
  `last_email_sent` int(10) UNSIGNED DEFAULT NULL,
  `last_report_sent` int(10) UNSIGNED DEFAULT NULL,
  `registered` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `registration_ip` varchar(39) NOT NULL DEFAULT '0.0.0.0',
  `last_visit` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `admin_note` varchar(30) DEFAULT NULL,
  `activate_string` varchar(80) DEFAULT NULL,
  `activate_key` varchar(8) DEFAULT NULL,
  `messages_enable` tinyint(1) NOT NULL DEFAULT '1',
  `messages_email` tinyint(1) NOT NULL DEFAULT '0',
  `messages_flag` tinyint(1) NOT NULL DEFAULT '0',
  `messages_new` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `messages_all` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pmsn_last_post` int(10) UNSIGNED DEFAULT NULL,
  `r_cred` int(11) NOT NULL DEFAULT '0',
  `r_quest` int(11) NOT NULL DEFAULT '0',
  `r_wel` tinyint(4) NOT NULL DEFAULT '0',
  `r_canmp` tinyint(1) NOT NULL DEFAULT '1',
  `r_rps` smallint(6) NOT NULL DEFAULT '0',
  `nbrename` smallint(6) NOT NULL,
  `lvldonator` int(11) NOT NULL,
  `PackActor` int(11) NOT NULL,
  `PackActor10` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `flu_users`
--

INSERT INTO `flu_users` (`id`, `group_id`, `username`, `password`, `email`, `title`, `realname`, `url`, `jabber`, `icq`, `msn`, `aim`, `yahoo`, `location`, `signature`, `disp_topics`, `disp_posts`, `email_setting`, `notify_with_post`, `auto_notify`, `show_smilies`, `show_img`, `show_img_sig`, `show_avatars`, `show_sig`, `noel`, `timezone`, `dst`, `time_format`, `date_format`, `language`, `style`, `num_posts`, `last_post`, `last_search`, `last_email_sent`, `last_report_sent`, `registered`, `registration_ip`, `last_visit`, `admin_note`, `activate_string`, `activate_key`, `messages_enable`, `messages_email`, `messages_flag`, `messages_new`, `messages_all`, `pmsn_last_post`, `r_cred`, `r_quest`, `r_wel`, `r_canmp`, `r_rps`, `nbrename`, `lvldonator`, `PackActor`, `PackActor10`) VALUES
(1, 3, 'Invité', 'Invité', 'Invité', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 'French', 'v2', 0, NULL, NULL, NULL, NULL, 0, '0.0.0.0', 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, 2, 0, 0, 1, 0, 0, 0, 0, 0),
(2, 1, 'Bodie', '67efad41a1b5b07fc028d117e4b5741493eddda4', 'jsuisgoutedé@cebru.grannec', 'Fondateur', NULL, 'http://lschronicles.net', NULL, NULL, NULL, NULL, NULL, 'Silicon Valley', NULL, NULL, NULL, 2, 0, 0, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 'French', 'v2', 582, 1494029800, 1452540773, NULL, NULL, 1441047665, '92.134.63.251', 1495050339, NULL, NULL, NULL, 1, 0, 0, 3, 320, 1488507754, 49973, 0, 1, 1, 0, 15, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `furniture`
--

CREATE TABLE `furniture` (
  `id` int(11) NOT NULL,
  `Objet` int(11) NOT NULL,
  `Cat1` smallint(3) NOT NULL,
  `Cat2` smallint(3) NOT NULL,
  `Prix` smallint(10) NOT NULL,
  `IndexTexture` smallint(3) NOT NULL,
  `Level` smallint(3) NOT NULL,
  `Donator` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `furniture`
--

INSERT INTO `furniture` (`id`, `Objet`, `Cat1`, `Cat2`, `Prix`, `IndexTexture`, `Level`, `Donator`) VALUES
(1, 1780, 0, 0, 600, 2, 0, 0),
(2, 2127, 0, 0, 1800, 2, 0, 0),
(3, 2131, 0, 0, 3000, 2, 0, 0),
(4, 2147, 0, 0, 1700, 2, 0, 0),
(5, 2360, 0, 0, 2100, 2, 0, 0),
(6, 2017, 0, 1, 500, 6, 0, 0),
(7, 2135, 0, 1, 800, 6, 0, 0),
(8, 2144, 0, 1, 600, 6, 0, 0),
(9, 2294, 0, 1, 1800, 6, 0, 0),
(10, 2339, 0, 1, 1800, 6, 0, 0),
(11, 2149, 0, 2, 100, 5, 0, 0),
(12, 2426, 0, 2, 150, 3, 0, 0),
(13, 1208, 0, 3, 650, 1, 0, 0),
(14, 19933, 0, 3, 1200, 2, 0, 0),
(15, 1700, 1, 4, 2000, 4, 0, 0),
(16, 1701, 1, 4, 3500, 1, 0, 0),
(17, 1745, 1, 4, 3700, 3, 0, 0),
(18, 1793, 1, 4, 1100, 1, 0, 0),
(19, 1794, 1, 4, 3450, 3, 0, 0),
(20, 1795, 1, 4, 3200, 2, 0, 0),
(21, 1796, 1, 4, 1900, 3, 0, 0),
(22, 1797, 1, 4, 2400, 3, 0, 0),
(23, 1798, 1, 4, 3300, 4, 0, 0),
(24, 1799, 1, 4, 2200, 3, 0, 0),
(25, 1800, 1, 4, 600, 2, 0, 0),
(26, 1801, 1, 4, 1800, 3, 0, 0),
(27, 1803, 1, 4, 2300, 3, 0, 0),
(28, 1812, 1, 4, 1975, 1, 0, 0),
(29, 2299, 1, 4, 750, 4, 0, 0),
(30, 2302, 1, 4, 2085, 2, 0, 0),
(31, 14866, 1, 4, 2700, 4, 0, 0),
(32, 14446, 1, 4, 5500, 3, 0, 0),
(33, 1663, 1, 5, 150, 1, 0, 0),
(34, 1671, 1, 5, 250, 1, 0, 0),
(35, 1720, 1, 5, 300, 1, 0, 0),
(36, 1721, 1, 5, 180, 2, 0, 0),
(37, 1739, 1, 5, 450, 2, 0, 0),
(38, 1806, 1, 5, 300, 2, 0, 0),
(39, 1810, 1, 5, 60, 1, 0, 0),
(40, 1811, 1, 5, 220, 2, 0, 0),
(41, 2120, 1, 5, 360, 2, 0, 0),
(42, 2121, 1, 5, 80, 1, 0, 0),
(43, 2122, 1, 5, 450, 1, 0, 0),
(44, 2123, 1, 5, 520, 2, 0, 0),
(45, 2124, 1, 5, 300, 2, 0, 0),
(46, 2724, 1, 5, 120, 2, 0, 0),
(47, 2776, 1, 5, 125, 2, 0, 0),
(48, 2788, 1, 5, 110, 2, 0, 0),
(49, 11734, 1, 5, 255, 2, 0, 0),
(50, 1704, 1, 6, 620, 2, 0, 0),
(51, 1705, 1, 6, 620, 2, 0, 0),
(52, 1707, 1, 6, 1200, 1, 0, 0),
(53, 1708, 1, 6, 1100, 3, 0, 0),
(54, 1711, 1, 6, 450, 1, 0, 0),
(55, 1727, 1, 6, 1050, 2, 0, 0),
(56, 1755, 1, 6, 500, 3, 0, 0),
(57, 1758, 1, 6, 460, 2, 0, 0),
(58, 1759, 1, 6, 510, 2, 0, 0),
(59, 1762, 1, 6, 430, 2, 0, 0),
(60, 1765, 1, 6, 520, 1, 0, 0),
(61, 1767, 1, 6, 495, 1, 0, 0),
(62, 1769, 1, 6, 465, 2, 0, 0),
(63, 11717, 1, 6, 700, 1, 0, 0),
(64, 2096, 1, 5, 385, 1, 0, 0),
(65, 2291, 1, 6, 550, 2, 0, 0),
(66, 2292, 1, 6, 800, 2, 0, 0),
(67, 2295, 1, 6, 785, 1, 0, 0),
(68, 1702, 1, 7, 980, 2, 0, 0),
(69, 1703, 1, 7, 970, 2, 0, 0),
(70, 1706, 1, 7, 1050, 3, 0, 0),
(71, 1710, 1, 7, 1400, 1, 0, 0),
(72, 1712, 1, 7, 750, 1, 0, 0),
(73, 1713, 1, 7, 1200, 3, 0, 0),
(74, 1756, 1, 7, 880, 1, 0, 0),
(75, 1757, 1, 7, 865, 2, 0, 0),
(76, 1760, 1, 7, 920, 3, 0, 0),
(77, 1761, 1, 7, 750, 2, 0, 0),
(78, 1763, 1, 7, 730, 2, 0, 0),
(79, 1764, 1, 7, 825, 1, 0, 0),
(80, 1768, 1, 7, 830, 3, 0, 0),
(81, 2290, 1, 7, 1150, 2, 0, 0),
(82, 1716, 1, 8, 40, 2, 0, 0),
(83, 1805, 1, 8, 60, 2, 0, 0),
(84, 2293, 1, 8, 80, 2, 0, 0),
(85, 2350, 1, 8, 85, 2, 0, 0),
(86, 2723, 1, 8, 110, 2, 0, 0),
(87, 1742, 1, 9, 600, 3, 0, 0),
(88, 2608, 1, 9, 1700, 6, 0, 0),
(89, 14455, 1, 9, 900, 2, 0, 0),
(90, 1417, 1, 10, 500, 1, 0, 0),
(91, 1740, 1, 10, 250, 1, 0, 0),
(92, 1741, 1, 10, 300, 1, 0, 0),
(93, 1743, 1, 10, 350, 3, 0, 0),
(94, 2087, 1, 10, 320, 2, 0, 0),
(95, 2088, 1, 10, 410, 1, 0, 0),
(96, 2089, 1, 10, 690, 1, 0, 0),
(97, 2094, 1, 10, 520, 1, 0, 0),
(98, 2204, 1, 10, 1200, 1, 0, 0),
(99, 2025, 1, 10, 1075, 1, 0, 0),
(100, 2020, 1, 10, 550, 1, 0, 0),
(101, 2021, 1, 10, 285, 1, 0, 0),
(102, 2000, 1, 11, 150, 1, 0, 0),
(103, 2007, 1, 11, 270, 1, 0, 0),
(104, 2197, 1, 11, 210, 2, 0, 0),
(105, 2200, 1, 11, 200, 4, 0, 0),
(106, 2065, 1, 11, 210, 1, 0, 0),
(107, 2066, 1, 11, 120, 2, 0, 0),
(108, 2067, 1, 11, 360, 2, 0, 0),
(109, 2163, 1, 11, 120, 2, 0, 0),
(110, 2167, 1, 11, 600, 2, 0, 0),
(111, 2128, 1, 12, 350, 2, 0, 0),
(112, 2140, 1, 12, 410, 2, 0, 0),
(113, 2145, 1, 12, 320, 3, 0, 0),
(114, 2153, 1, 12, 295, 2, 0, 0),
(115, 2158, 1, 12, 400, 2, 0, 0),
(116, 2357, 1, 13, 700, 1, 0, 0),
(117, 2118, 1, 13, 620, 2, 0, 0),
(118, 2117, 1, 13, 1100, 1, 0, 0),
(119, 2086, 1, 13, 1200, 2, 0, 0),
(120, 2029, 1, 13, 700, 1, 0, 0),
(121, 2080, 1, 13, 1300, 1, 0, 0),
(122, 2115, 1, 13, 590, 1, 0, 0),
(123, 2110, 1, 13, 630, 1, 0, 0),
(124, 1770, 1, 13, 490, 2, 0, 0),
(125, 2031, 1, 13, 710, 1, 0, 0),
(126, 1737, 1, 13, 685, 2, 0, 0),
(127, 1814, 1, 14, 450, 1, 0, 0),
(128, 1815, 1, 14, 390, 1, 0, 0),
(129, 1817, 1, 14, 750, 2, 0, 0),
(130, 1818, 1, 14, 500, 1, 0, 0),
(131, 1819, 1, 14, 350, 2, 0, 0),
(132, 1820, 1, 14, 370, 1, 0, 0),
(133, 1822, 1, 14, 750, 2, 0, 0),
(134, 1823, 1, 14, 680, 1, 0, 0),
(135, 2126, 1, 14, 950, 2, 0, 0),
(136, 2014, 1, 15, 200, 4, 0, 0),
(137, 2015, 1, 15, 200, 3, 0, 0),
(138, 2016, 1, 15, 100, 4, 0, 0),
(139, 2019, 1, 15, 100, 4, 0, 0),
(140, 2022, 1, 15, 100, 4, 0, 0),
(141, 2029, 1, 15, 400, 3, 0, 0),
(142, 2304, 1, 15, 400, 3, 0, 0),
(143, 2133, 1, 15, 200, 3, 0, 0),
(144, 2137, 1, 15, 200, 4, 0, 0),
(145, 2138, 1, 15, 200, 4, 0, 0),
(146, 2305, 1, 15, 400, 4, 0, 0),
(147, 2139, 1, 15, 200, 4, 0, 0),
(148, 2142, 1, 15, 300, 3, 0, 0),
(149, 2151, 1, 15, 300, 3, 0, 0),
(150, 2152, 1, 15, 300, 3, 0, 0),
(151, 2155, 1, 15, 300, 3, 0, 0),
(152, 2156, 1, 15, 200, 3, 0, 0),
(153, 2159, 1, 15, 200, 3, 0, 0),
(154, 2414, 1, 15, 250, 4, 0, 0),
(155, 2424, 1, 15, 200, 5, 0, 0),
(156, 2423, 1, 15, 200, 5, 0, 0),
(157, 2435, 1, 15, 400, 3, 0, 0),
(158, 2434, 1, 15, 400, 3, 0, 0),
(159, 2439, 1, 15, 300, 2, 0, 0),
(160, 2440, 1, 15, 300, 2, 0, 0),
(161, 2441, 1, 15, 300, 4, 0, 0),
(162, 2442, 1, 15, 300, 4, 0, 0),
(163, 2446, 1, 15, 400, 3, 0, 0),
(164, 2450, 1, 15, 200, 2, 0, 0),
(165, 2455, 1, 15, 400, 3, 0, 0),
(166, 2454, 1, 15, 200, 3, 0, 0),
(167, 2046, 1, 16, 100, 3, 0, 0),
(168, 2078, 1, 16, 500, 3, 0, 0),
(169, 2385, 1, 16, 400, 3, 0, 0),
(170, 2458, 1, 16, 600, 2, 0, 0),
(171, 2063, 1, 17, 300, 2, 0, 0),
(172, 2367, 1, 17, 400, 2, 0, 0),
(173, 2368, 1, 17, 800, 3, 0, 0),
(174, 2376, 1, 17, 900, 3, 0, 0),
(175, 2447, 1, 17, 800, 5, 0, 0),
(176, 2448, 1, 17, 1000, 5, 0, 0),
(177, 2449, 1, 17, 1100, 4, 0, 0),
(178, 2457, 1, 17, 2000, 5, 0, 0),
(179, 2346, 1, 18, 200, 1, 0, 0),
(180, 2319, 1, 18, 350, 1, 0, 0),
(181, 2314, 1, 18, 500, 1, 0, 0),
(182, 2315, 1, 18, 600, 1, 0, 0),
(183, 2313, 1, 18, 750, 4, 0, 0),
(184, 2311, 1, 18, 1000, 1, 0, 0),
(185, 2558, 2, 19, 50, 2, 0, 0),
(186, 2559, 2, 19, 50, 2, 0, 0),
(187, 2561, 2, 19, 130, 2, 0, 0),
(188, 2048, 2, 20, 500, 1, 0, 0),
(189, 2614, 2, 20, 450, 2, 0, 0),
(190, 2993, 2, 20, 300, 2, 0, 0),
(191, 2047, 2, 20, 450, 1, 0, 0),
(192, 1828, 2, 21, 5000, 1, 0, 0),
(193, 2815, 2, 21, 110, 1, 0, 0),
(194, 2817, 2, 21, 80, 1, 0, 0),
(195, 2818, 2, 21, 60, 1, 0, 0),
(196, 2833, 2, 21, 200, 1, 0, 0),
(197, 2834, 2, 21, 100, 1, 0, 0),
(198, 2835, 2, 21, 80, 1, 0, 0),
(199, 2836, 2, 21, 75, 1, 0, 0),
(200, 2841, 2, 21, 70, 1, 0, 0),
(201, 2842, 2, 21, 80, 1, 0, 0),
(202, 2847, 2, 21, 85, 1, 0, 0),
(203, 3935, 2, 22, 8000, 1, 0, 0),
(204, 2745, 2, 22, 20000, 6, 0, 0),
(205, 1736, 2, 22, 2000, 2, 0, 0),
(206, 14608, 2, 22, 7000, 2, 0, 0),
(207, 3528, 2, 22, 15000, 1, 0, 0),
(208, 1640, 2, 23, 120, 1, 0, 0),
(209, 1641, 2, 23, 90, 1, 0, 0),
(210, 1642, 2, 23, 100, 1, 0, 0),
(211, 1643, 2, 23, 100, 1, 0, 0),
(212, 11707, 2, 23, 90, 4, 0, 0),
(213, 2289, 2, 24, 300, 2, 0, 0),
(214, 2287, 2, 24, 290, 2, 0, 0),
(215, 2286, 2, 24, 410, 2, 0, 0),
(216, 2284, 2, 24, 360, 2, 0, 0),
(217, 2283, 2, 24, 800, 2, 0, 0),
(218, 2282, 2, 24, 400, 2, 0, 0),
(219, 2281, 2, 24, 380, 2, 0, 0),
(220, 2280, 2, 24, 380, 2, 0, 0),
(221, 2279, 2, 24, 410, 2, 0, 0),
(222, 2278, 2, 24, 550, 2, 0, 0),
(223, 2277, 2, 24, 200, 2, 0, 0),
(224, 2276, 2, 24, 390, 2, 0, 0),
(225, 2275, 2, 24, 200, 2, 0, 0),
(226, 2274, 2, 24, 150, 2, 0, 0),
(227, 2273, 2, 24, 150, 2, 0, 0),
(228, 2271, 2, 24, 800, 2, 0, 0),
(229, 2270, 2, 24, 850, 2, 0, 0),
(230, 2269, 2, 24, 300, 2, 0, 0),
(231, 2268, 2, 24, 200, 2, 0, 0),
(232, 2267, 2, 24, 260, 2, 0, 0),
(233, 2266, 2, 24, 420, 2, 0, 0),
(234, 2265, 2, 24, 380, 2, 0, 0),
(235, 2264, 2, 24, 340, 2, 0, 0),
(236, 2263, 2, 24, 450, 2, 0, 0),
(237, 2262, 2, 24, 420, 2, 0, 0),
(238, 2261, 2, 24, 520, 2, 0, 0),
(239, 2260, 2, 24, 390, 2, 0, 0),
(240, 2258, 2, 24, 400, 2, 0, 0),
(241, 2257, 2, 24, 780, 2, 0, 0),
(242, 2256, 2, 24, 300, 2, 0, 0),
(243, 2255, 2, 24, 800, 2, 0, 0),
(244, 859, 2, 25, 50, 1, 0, 0),
(245, 860, 2, 25, 70, 1, 0, 0),
(246, 861, 2, 25, 80, 1, 0, 0),
(247, 862, 2, 25, 70, 1, 0, 0),
(248, 863, 2, 25, 120, 2, 0, 0),
(249, 637, 2, 25, 300, 2, 0, 0),
(250, 638, 2, 25, 800, 2, 0, 0),
(251, 640, 2, 25, 500, 2, 0, 0),
(252, 948, 2, 25, 50, 4, 0, 0),
(253, 949, 2, 25, 120, 3, 0, 0),
(254, 950, 2, 25, 110, 3, 0, 0),
(255, 2001, 2, 25, 90, 3, 0, 0),
(256, 2010, 2, 25, 90, 3, 0, 0),
(257, 2011, 2, 25, 90, 3, 0, 0),
(258, 2194, 2, 25, 75, 3, 0, 0),
(259, 2195, 2, 25, 70, 3, 0, 0),
(260, 2203, 2, 25, 20, 2, 0, 0),
(261, 2240, 2, 25, 200, 3, 0, 0),
(262, 2241, 2, 25, 130, 3, 0, 0),
(263, 2242, 2, 25, 60, 2, 0, 0),
(264, 2243, 2, 25, 60, 2, 0, 0),
(265, 2244, 2, 25, 130, 3, 0, 0),
(266, 2245, 2, 25, 130, 4, 0, 0),
(267, 2247, 2, 25, 300, 2, 0, 0),
(268, 2249, 2, 25, 250, 3, 0, 0),
(269, 2250, 2, 25, 200, 3, 0, 0),
(270, 2251, 2, 25, 140, 3, 0, 0),
(271, 2252, 2, 25, 120, 4, 0, 0),
(272, 2253, 2, 25, 120, 5, 0, 0),
(273, 2345, 2, 25, 80, 1, 0, 0),
(274, 3802, 2, 25, 400, 3, 0, 0),
(275, 3806, 2, 25, 500, 5, 0, 0),
(276, 3810, 2, 25, 450, 3, 0, 0),
(277, 3811, 2, 25, 550, 5, 0, 0),
(278, 14804, 2, 25, 390, 3, 0, 0),
(279, 14834, 2, 25, 300, 3, 0, 0),
(280, 2049, 2, 26, 50, 1, 0, 0),
(281, 2050, 2, 26, 50, 1, 0, 0),
(282, 2051, 2, 26, 50, 1, 0, 0),
(283, 2691, 2, 26, 50, 1, 0, 0),
(284, 2695, 2, 26, 50, 1, 0, 0),
(285, 2696, 2, 26, 50, 1, 0, 0),
(286, 2692, 2, 26, 70, 2, 0, 0),
(287, 2693, 2, 26, 70, 2, 0, 0),
(288, 2587, 2, 26, 90, 1, 0, 0),
(289, 2588, 2, 26, 90, 1, 0, 0),
(290, 1985, 2, 27, 1000, 1, 0, 0),
(291, 2627, 2, 27, 2500, 1, 0, 0),
(292, 2628, 2, 27, 2000, 6, 0, 0),
(293, 2629, 2, 27, 900, 2, 0, 0),
(294, 2630, 2, 27, 900, 3, 0, 0),
(295, 2631, 2, 27, 120, 2, 0, 0),
(296, 2632, 2, 27, 120, 2, 0, 0),
(297, 11729, 2, 27, 200, 1, 0, 0),
(298, 2916, 2, 27, 50, 1, 0, 0),
(299, 2915, 2, 27, 100, 1, 0, 0),
(300, 2964, 2, 27, 3000, 5, 0, 0),
(301, 3004, 2, 27, 200, 1, 0, 0),
(302, 2965, 2, 27, 20, 1, 0, 0),
(303, 3003, 2, 27, 5, 1, 0, 0),
(304, 3106, 2, 27, 5, 1, 0, 0),
(305, 3100, 2, 27, 5, 1, 0, 0),
(306, 3101, 2, 27, 5, 1, 0, 0),
(307, 3102, 2, 27, 5, 1, 0, 0),
(308, 3103, 2, 27, 5, 1, 0, 0),
(309, 3104, 2, 27, 5, 1, 0, 0),
(310, 3105, 2, 27, 5, 1, 0, 0),
(311, 3002, 2, 27, 5, 1, 0, 0),
(312, 2995, 2, 27, 5, 1, 0, 0),
(313, 2996, 2, 27, 5, 1, 0, 0),
(314, 2997, 2, 27, 5, 1, 0, 0),
(315, 2998, 2, 27, 5, 1, 0, 0),
(316, 2999, 2, 27, 5, 1, 0, 0),
(317, 3000, 2, 27, 5, 1, 0, 0),
(318, 3001, 2, 27, 5, 1, 0, 0),
(319, 2114, 2, 27, 50, 1, 0, 0),
(320, 3497, 2, 27, 1500, 4, 0, 0),
(321, 14772, 3, 28, 600, 2, 0, 0),
(322, 1747, 3, 28, 600, 3, 0, 0),
(323, 1748, 3, 28, 580, 5, 0, 0),
(324, 1518, 3, 28, 570, 4, 0, 0),
(325, 2595, 3, 28, 700, 5, 0, 0),
(326, 14532, 3, 28, 1000, 4, 0, 0),
(327, 2596, 3, 28, 900, 3, 0, 0),
(328, 1751, 3, 28, 700, 4, 0, 0),
(329, 1749, 3, 28, 600, 2, 0, 0),
(330, 1752, 3, 28, 550, 3, 0, 0),
(331, 1786, 3, 28, 800, 3, 0, 0),
(332, 2224, 3, 28, 900, 3, 0, 0),
(333, 1792, 3, 28, 850, 2, 0, 0),
(334, 2606, 3, 28, 2000, 2, 0, 0),
(335, 1515, 3, 29, 5000, 6, 0, 0),
(336, 2681, 3, 29, 5000, 4, 0, 0),
(337, 2778, 3, 29, 5000, 4, 0, 0),
(338, 2779, 3, 29, 5000, 4, 0, 0),
(339, 1718, 3, 29, 300, 2, 0, 0),
(340, 2028, 3, 29, 400, 2, 0, 0),
(341, 2099, 3, 30, 600, 6, 0, 0),
(342, 2101, 3, 30, 200, 3, 0, 0),
(343, 2102, 3, 30, 400, 3, 0, 0),
(344, 2103, 3, 30, 800, 4, 0, 0),
(345, 2104, 3, 30, 1000, 5, 0, 0),
(346, 2226, 3, 30, 500, 1, 0, 0),
(347, 2229, 3, 31, 3000, 3, 0, 0),
(348, 2230, 3, 31, 2700, 3, 0, 0),
(349, 2231, 3, 31, 1200, 4, 0, 0),
(350, 2232, 3, 31, 1400, 3, 0, 0),
(351, 2233, 3, 31, 6000, 2, 0, 0),
(352, 2238, 4, 32, 80, 3, 0, 0),
(353, 2196, 4, 32, 80, 1, 0, 0),
(354, 2726, 4, 32, 120, 1, 0, 0),
(355, 3534, 4, 32, 120, 2, 0, 0),
(356, 1731, 4, 33, 200, 1, 0, 0),
(357, 2178, 4, 33, 350, 1, 0, 0),
(358, 3785, 4, 33, 290, 1, 0, 0),
(359, 921, 4, 33, 290, 2, 0, 0),
(360, 19280, 4, 33, 290, 2, 0, 0),
(361, 945, 4, 34, 800, 4, 0, 0),
(362, 1734, 4, 34, 750, 2, 0, 0),
(363, 1893, 4, 34, 850, 1, 0, 0),
(364, 2026, 4, 34, 300, 2, 0, 0),
(365, 11726, 4, 34, 1000, 1, 0, 0),
(366, 2073, 4, 34, 500, 2, 0, 0),
(367, 2074, 4, 34, 300, 5, 0, 0),
(368, 2075, 4, 34, 1000, 3, 0, 0),
(369, 2076, 4, 34, 400, 3, 0, 0),
(370, 16779, 4, 34, 1000, 4, 0, 0),
(371, 18647, 4, 35, 500, 1, 0, 0),
(372, 18648, 4, 35, 500, 1, 0, 0),
(373, 18649, 4, 35, 500, 1, 0, 0),
(374, 18650, 4, 35, 500, 1, 0, 0),
(375, 18651, 4, 35, 500, 1, 0, 0),
(376, 18652, 4, 35, 500, 1, 0, 0),
(377, 2514, 5, 36, 300, 1, 0, 0),
(378, 2121, 5, 36, 320, 1, 0, 0),
(379, 2525, 5, 36, 600, 2, 0, 0),
(380, 2528, 5, 36, 1000, 5, 0, 0),
(381, 2515, 5, 37, 90, 2, 0, 0),
(382, 2518, 5, 37, 100, 3, 0, 0),
(383, 2523, 5, 37, 100, 4, 0, 0),
(384, 2524, 5, 37, 900, 2, 0, 0),
(385, 11709, 5, 37, 200, 3, 0, 0),
(386, 2013, 5, 37, 990, 5, 0, 0),
(387, 2130, 5, 37, 1300, 3, 0, 0),
(388, 2132, 5, 37, 1100, 3, 0, 0),
(389, 2136, 5, 37, 1200, 5, 0, 0),
(390, 2154, 5, 37, 1100, 4, 0, 0),
(391, 2160, 5, 37, 850, 5, 0, 0),
(392, 2517, 5, 38, 1200, 4, 0, 0),
(393, 2520, 5, 38, 900, 4, 0, 0),
(394, 2527, 5, 38, 2500, 4, 0, 0),
(395, 2097, 5, 39, 3000, 2, 0, 0),
(396, 2519, 5, 39, 2000, 1, 0, 0),
(397, 2522, 5, 39, 2500, 5, 0, 0),
(398, 2526, 5, 39, 3000, 3, 0, 0),
(399, 2374, 6, 41, 200, 3, 0, 0),
(400, 2377, 6, 41, 200, 3, 0, 0),
(401, 2378, 6, 41, 200, 3, 0, 0),
(402, 2381, 6, 41, 150, 4, 0, 0),
(403, 2382, 6, 41, 200, 2, 0, 0),
(404, 2383, 6, 41, 180, 3, 0, 0),
(405, 2384, 6, 41, 80, 1, 0, 0),
(406, 2389, 6, 41, 90, 2, 0, 0),
(407, 2390, 6, 41, 150, 3, 0, 0),
(408, 2391, 6, 41, 250, 3, 0, 0),
(409, 2392, 6, 41, 250, 3, 0, 0),
(410, 2394, 6, 41, 300, 4, 0, 0),
(411, 2396, 6, 41, 500, 2, 0, 0),
(412, 2397, 6, 41, 200, 3, 0, 0),
(413, 2398, 6, 41, 200, 3, 0, 0),
(414, 2399, 6, 41, 180, 3, 0, 0),
(415, 2401, 6, 41, 150, 3, 0, 0),
(416, 1950, 6, 42, 5, 1, 0, 0),
(417, 1951, 6, 42, 5, 1, 0, 0),
(418, 1487, 6, 42, 5, 1, 0, 0),
(419, 1543, 6, 42, 5, 1, 0, 0),
(420, 1544, 6, 42, 5, 1, 0, 0),
(421, 19823, 6, 42, 5, 1, 0, 0),
(422, 19824, 6, 42, 70, 1, 0, 0),
(423, 3109, 6, 40, 500, 1, 0, 0),
(424, 3061, 6, 40, 500, 1, 0, 0),
(425, 2947, 6, 40, 500, 1, 0, 0),
(426, 2924, 6, 40, 500, 1, 0, 0),
(427, 2946, 6, 40, 500, 1, 0, 0),
(428, 2930, 6, 40, 500, 2, 0, 0),
(429, 977, 6, 40, 500, 1, 0, 0),
(430, 1491, 6, 40, 500, 1, 0, 0),
(431, 1492, 6, 40, 500, 2, 0, 0),
(432, 1493, 6, 40, 500, 2, 0, 0),
(433, 1494, 6, 40, 500, 2, 0, 0),
(434, 1495, 6, 40, 500, 3, 0, 0),
(435, 1496, 6, 40, 500, 2, 0, 0),
(436, 1497, 6, 40, 500, 2, 0, 0),
(437, 1498, 6, 40, 500, 1, 0, 0),
(438, 1499, 6, 40, 500, 2, 0, 0),
(439, 1500, 6, 40, 500, 3, 0, 0),
(440, 1501, 6, 40, 500, 2, 0, 0),
(441, 1502, 6, 40, 500, 2, 0, 0),
(442, 1504, 6, 40, 500, 1, 0, 0),
(443, 1505, 6, 40, 500, 1, 0, 0),
(444, 1506, 6, 40, 500, 1, 0, 0),
(445, 1507, 6, 40, 500, 1, 0, 0),
(446, 1522, 6, 40, 500, 1, 0, 0),
(447, 1532, 6, 40, 500, 3, 0, 0),
(448, 1533, 6, 40, 500, 3, 0, 0),
(449, 1523, 6, 40, 500, 2, 0, 0),
(450, 1535, 6, 40, 500, 1, 0, 0),
(451, 1536, 6, 40, 500, 1, 0, 0),
(452, 1556, 6, 40, 500, 1, 0, 0),
(453, 2670, 6, 43, 10, 0, 0, 0),
(454, 2671, 6, 43, 10, 0, 0, 0),
(455, 2673, 6, 43, 10, 0, 0, 0),
(456, 2674, 6, 43, 10, 0, 0, 0),
(457, 2821, 6, 43, 10, 0, 0, 0),
(458, 2672, 6, 43, 10, 0, 0, 0),
(459, 2675, 6, 43, 10, 0, 0, 0),
(460, 2677, 6, 43, 10, 0, 0, 0),
(461, 2840, 6, 43, 10, 0, 0, 0),
(462, 2676, 6, 43, 10, 0, 0, 0),
(463, 2812, 6, 43, 10, 0, 0, 0),
(464, 2819, 6, 43, 10, 0, 0, 0),
(465, 2843, 6, 43, 10, 0, 0, 0),
(466, 2844, 6, 43, 10, 0, 0, 0),
(467, 2845, 6, 43, 10, 0, 0, 0),
(468, 2846, 6, 43, 10, 0, 0, 0),
(469, 2820, 6, 43, 10, 0, 0, 0),
(470, 2821, 6, 43, 10, 0, 0, 0),
(471, 2822, 6, 43, 10, 0, 0, 0),
(472, 2829, 6, 43, 10, 0, 0, 0),
(473, 2831, 6, 43, 10, 0, 0, 0),
(474, 2832, 6, 43, 10, 0, 0, 0),
(475, 2837, 6, 43, 10, 0, 0, 0),
(476, 2838, 6, 43, 10, 0, 0, 0),
(477, 2839, 6, 43, 10, 0, 0, 0),
(478, 2858, 6, 43, 10, 0, 0, 0),
(479, 2848, 6, 43, 10, 0, 0, 0),
(480, 2850, 6, 43, 10, 0, 0, 0),
(481, 2849, 6, 43, 10, 0, 0, 0),
(482, 2856, 6, 43, 10, 0, 0, 0),
(483, 2857, 6, 43, 10, 0, 0, 0),
(484, 2861, 6, 43, 10, 0, 0, 0),
(485, 2866, 6, 43, 10, 0, 0, 0),
(486, 2680, 6, 44, 100, 0, 0, 0),
(487, 1510, 6, 44, 50, 0, 0, 0),
(488, 14774, 6, 44, 150, 0, 0, 0),
(489, 2961, 6, 44, 50, 0, 0, 0),
(490, 2962, 6, 44, 50, 0, 0, 0),
(491, 2616, 6, 44, 300, 3, 0, 0),
(492, 2611, 6, 44, 500, 7, 0, 0),
(493, 2612, 6, 44, 500, 4, 0, 0),
(494, 2615, 6, 44, 100, 1, 0, 0),
(495, 19805, 6, 44, 500, 2, 0, 0),
(496, 2896, 6, 44, 6000, 7, 0, 0),
(497, 2404, 6, 44, 1000, 2, 0, 0),
(498, 2405, 6, 44, 1000, 2, 0, 0),
(499, 2406, 6, 44, 1000, 2, 0, 0),
(500, 2410, 6, 44, 1000, 2, 0, 0),
(501, 1622, 6, 45, 1000, 0, 0, 0),
(502, 2921, 6, 45, 1600, 0, 0, 0),
(503, 1886, 6, 45, 1000, 0, 0, 0),
(504, 1808, 6, 46, 300, 0, 0, 0),
(505, 1998, 6, 46, 500, 7, 0, 0),
(506, 1999, 6, 46, 650, 5, 0, 0),
(507, 2002, 6, 46, 350, 0, 0, 0),
(508, 2008, 6, 46, 450, 7, 0, 0),
(509, 2009, 6, 46, 590, 5, 0, 0),
(510, 2161, 6, 46, 80, 3, 0, 0),
(511, 2162, 6, 46, 160, 3, 0, 0),
(512, 2164, 6, 46, 110, 3, 0, 0),
(513, 2165, 6, 46, 1050, 6, 0, 0),
(514, 2166, 6, 46, 1100, 3, 0, 0),
(515, 2168, 6, 46, 200, 1, 0, 0),
(516, 2169, 6, 46, 800, 2, 0, 0),
(517, 2171, 6, 46, 700, 3, 0, 0),
(518, 2172, 6, 46, 2000, 9, 0, 0),
(519, 2173, 6, 46, 3500, 2, 0, 0),
(520, 2174, 6, 46, 1200, 5, 0, 0),
(521, 2175, 6, 46, 500, 3, 0, 0),
(522, 2180, 6, 46, 500, 1, 0, 0),
(523, 2181, 6, 46, 1300, 8, 0, 0),
(524, 2182, 6, 46, 1000, 6, 0, 0),
(525, 2183, 6, 46, 4500, 4, 0, 0),
(526, 2184, 6, 46, 2000, 2, 0, 0),
(527, 2185, 6, 46, 600, 5, 0, 0),
(528, 2186, 6, 46, 900, 3, 0, 0),
(529, 2187, 6, 46, 200, 1, 0, 0),
(530, 2190, 6, 46, 300, 3, 0, 0),
(531, 2192, 6, 46, 20, 0, 0, 0),
(532, 2193, 6, 46, 2500, 8, 0, 0),
(533, 2604, 6, 46, 2200, 7, 0, 0),
(534, 2605, 6, 46, 900, 7, 0, 0),
(535, 2607, 6, 46, 700, 5, 0, 0),
(536, 1599, 7, 48, 20, 0, 1, 0),
(537, 1600, 7, 48, 20, 0, 1, 0),
(538, 1601, 7, 48, 50, 0, 1, 0),
(539, 1603, 7, 48, 30, 0, 1, 0),
(540, 1604, 7, 48, 20, 0, 1, 0),
(541, 1605, 7, 48, 50, 0, 1, 0),
(542, 1606, 7, 48, 50, 0, 1, 0),
(543, 1607, 7, 48, 6000, 0, 1, 0),
(544, 1608, 7, 48, 8000, 0, 1, 0),
(545, 1609, 7, 48, 3000, 0, 1, 0),
(546, 19315, 7, 48, 400, 0, 1, 0),
(547, 19079, 7, 48, 200, 0, 1, 0),
(548, 1830, 7, 49, 2000, 0, 1, 0),
(549, 1831, 7, 49, 2000, 0, 1, 0),
(550, 1832, 7, 49, 2000, 0, 1, 0),
(551, 1833, 7, 49, 2000, 0, 1, 0),
(552, 1834, 7, 49, 2000, 0, 1, 0),
(553, 1835, 7, 49, 2000, 0, 1, 0),
(554, 1838, 7, 49, 2000, 0, 1, 0),
(555, 1978, 7, 49, 5000, 0, 1, 0),
(556, 1979, 7, 49, 3000, 0, 1, 0),
(557, 2188, 7, 49, 2000, 0, 1, 0),
(558, 19474, 7, 49, 5000, 0, 1, 0),
(559, 1895, 7, 49, 10000, 0, 1, 0),
(560, 19128, 7, 50, 5000, 0, 1, 0),
(561, 19129, 7, 50, 15000, 0, 1, 0),
(562, 19159, 7, 50, 1000, 0, 1, 0),
(563, 18102, 7, 50, 6000, 0, 1, 0),
(564, 18659, 7, 51, 200, 0, 1, 0),
(565, 18660, 7, 51, 200, 0, 1, 0),
(566, 18661, 7, 51, 200, 0, 1, 0),
(567, 18662, 7, 51, 200, 0, 1, 0),
(568, 18663, 7, 51, 200, 0, 1, 0),
(569, 18664, 7, 51, 200, 0, 1, 0),
(570, 18665, 7, 51, 200, 0, 1, 0),
(571, 18666, 7, 51, 200, 0, 1, 0),
(572, 18667, 7, 51, 200, 0, 1, 0),
(573, 19353, 7, 53, 500, 1, 1, 0),
(574, 19354, 7, 53, 500, 1, 1, 0),
(575, 19355, 7, 53, 500, 1, 1, 0),
(576, 19356, 7, 53, 500, 1, 1, 0),
(577, 19357, 7, 53, 500, 1, 1, 0),
(578, 19358, 7, 53, 500, 1, 1, 0),
(579, 19359, 7, 53, 500, 1, 1, 0),
(580, 19360, 7, 53, 500, 1, 1, 0),
(581, 19361, 7, 53, 500, 1, 1, 0),
(582, 19362, 7, 53, 500, 1, 1, 0),
(583, 19363, 7, 53, 500, 1, 1, 0),
(584, 19364, 7, 53, 500, 1, 1, 0),
(585, 19365, 7, 53, 500, 1, 1, 0),
(586, 19366, 7, 53, 500, 1, 1, 0),
(587, 19367, 7, 53, 500, 1, 1, 0),
(588, 19368, 7, 53, 500, 1, 1, 0),
(589, 19369, 7, 53, 500, 1, 1, 0),
(590, 19370, 7, 53, 500, 1, 1, 0),
(591, 19371, 7, 53, 500, 1, 1, 0),
(592, 19372, 7, 53, 500, 1, 1, 0),
(593, 19373, 7, 53, 500, 1, 1, 0),
(594, 19375, 7, 53, 1000, 1, 1, 0),
(595, 19376, 7, 53, 1000, 1, 1, 0),
(596, 19377, 7, 53, 1000, 1, 1, 0),
(597, 19378, 7, 53, 1000, 1, 1, 0),
(598, 19379, 7, 53, 1000, 1, 1, 0),
(599, 19380, 7, 53, 1000, 1, 1, 0),
(600, 19381, 7, 53, 1000, 1, 1, 0),
(601, 19383, 7, 54, 500, 1, 1, 0),
(602, 19384, 7, 54, 500, 1, 1, 0),
(603, 19385, 7, 54, 500, 1, 1, 0),
(604, 19386, 7, 54, 500, 1, 1, 0),
(605, 19387, 7, 54, 500, 1, 1, 0),
(606, 19388, 7, 54, 500, 1, 1, 0),
(607, 19389, 7, 54, 500, 1, 1, 0),
(608, 19390, 7, 54, 500, 1, 1, 0),
(609, 19391, 7, 54, 500, 1, 1, 0),
(610, 19392, 7, 54, 500, 1, 1, 0),
(611, 19393, 7, 54, 500, 1, 1, 0),
(612, 19394, 7, 54, 500, 1, 1, 0),
(613, 19395, 7, 54, 500, 1, 1, 0),
(614, 19396, 7, 54, 500, 1, 1, 0),
(615, 19397, 7, 54, 500, 1, 1, 0),
(616, 19398, 7, 54, 500, 1, 1, 0),
(617, 19399, 7, 55, 500, 1, 1, 0),
(618, 19400, 7, 55, 500, 1, 1, 0),
(619, 19401, 7, 55, 500, 1, 1, 0),
(620, 19402, 7, 55, 500, 1, 1, 0),
(621, 19403, 7, 55, 500, 1, 1, 0),
(622, 19404, 7, 55, 500, 1, 1, 0),
(623, 19405, 7, 55, 500, 1, 1, 0),
(624, 19406, 7, 55, 500, 1, 1, 0),
(625, 19407, 7, 55, 500, 1, 1, 0),
(626, 19408, 7, 55, 500, 1, 1, 0),
(627, 19409, 7, 55, 500, 1, 1, 0),
(628, 19410, 7, 55, 500, 1, 1, 0),
(629, 19411, 7, 55, 500, 1, 1, 0),
(630, 19412, 7, 55, 500, 1, 1, 0),
(631, 19413, 7, 55, 500, 1, 1, 0),
(632, 19414, 7, 55, 500, 1, 1, 0),
(633, 19415, 7, 55, 500, 1, 1, 0),
(634, 19416, 7, 55, 500, 1, 1, 0),
(635, 19417, 7, 55, 500, 1, 1, 0),
(636, 19426, 7, 56, 200, 1, 1, 0),
(637, 19427, 7, 56, 200, 1, 1, 0),
(638, 19428, 7, 56, 200, 1, 1, 0),
(639, 19429, 7, 56, 200, 1, 1, 0),
(640, 19430, 7, 56, 200, 1, 1, 0),
(641, 19431, 7, 56, 200, 1, 1, 0),
(642, 19432, 7, 56, 200, 1, 1, 0),
(643, 19433, 7, 56, 200, 1, 1, 0),
(644, 19434, 7, 56, 200, 1, 1, 0),
(645, 19435, 7, 56, 200, 1, 1, 0),
(646, 19436, 7, 56, 200, 1, 1, 0),
(647, 19437, 7, 56, 200, 1, 1, 0),
(648, 19438, 7, 56, 200, 1, 1, 0),
(649, 19439, 7, 56, 200, 1, 1, 0),
(650, 19440, 7, 56, 200, 1, 1, 0),
(651, 19441, 7, 56, 200, 1, 1, 0),
(652, 19442, 7, 56, 200, 1, 1, 0),
(653, 19443, 7, 56, 200, 1, 1, 0),
(654, 19444, 7, 56, 200, 1, 1, 0),
(655, 19445, 7, 57, 1000, 1, 1, 0),
(656, 19446, 7, 57, 1000, 1, 1, 0),
(657, 19447, 7, 57, 1000, 1, 1, 0),
(658, 19448, 7, 57, 1000, 1, 1, 0),
(659, 19449, 7, 57, 1000, 1, 1, 0),
(660, 19450, 7, 57, 1000, 1, 1, 0),
(661, 19451, 7, 57, 1000, 1, 1, 0),
(662, 19452, 7, 57, 1000, 1, 1, 0),
(663, 19453, 7, 57, 1000, 1, 1, 0),
(664, 19454, 7, 57, 1000, 1, 1, 0),
(665, 19455, 7, 57, 1000, 1, 1, 0),
(666, 19456, 7, 57, 1000, 1, 1, 0),
(667, 19457, 7, 57, 1000, 1, 1, 0),
(668, 19458, 7, 57, 1000, 1, 1, 0),
(669, 19459, 7, 57, 1000, 1, 1, 0),
(670, 19460, 7, 57, 1000, 1, 1, 0),
(671, 19461, 7, 57, 1000, 1, 1, 0),
(672, 19462, 7, 57, 1000, 1, 1, 0),
(673, 19463, 7, 57, 1000, 1, 1, 0),
(688, 19319, 7, 50, 900, 0, 0, 0),
(689, 19317, 7, 50, 900, 0, 0, 0),
(690, 19318, 7, 50, 1200, 0, 0, 0),
(691, 19609, 7, 50, 4000, 0, 0, 0),
(692, 19610, 7, 50, 750, 0, 0, 0),
(693, 19611, 7, 50, 750, 0, 0, 0),
(694, 2780, 7, 50, 900, 0, 0, 0),
(695, 18653, 7, 50, 1500, 0, 0, 0),
(696, 18654, 7, 50, 1500, 0, 0, 0),
(697, 18655, 7, 50, 1500, 0, 0, 0),
(698, 2690, 6, 45, 1500, 0, 0, 0),
(699, 1892, 6, 45, 1500, 0, 0, 0),
(700, 11710, 6, 45, 750, 0, 0, 0),
(701, 11713, 6, 45, 1000, 0, 0, 0),
(702, 19799, 6, 40, 6000, 0, 0, 0),
(703, 2938, 6, 40, 750, 0, 0, 0),
(704, 2705, 6, 41, 100, 0, 0, 0),
(705, 2704, 6, 41, 100, 0, 0, 0),
(706, 2708, 1, 12, 600, 0, 0, 0),
(707, 1428, 6, 44, 400, 0, 0, 0),
(708, 1437, 6, 44, 650, 0, 0, 0),
(709, 1438, 6, 43, 50, 0, 0, 0),
(710, 1448, 6, 43, 50, 0, 0, 0),
(711, 18632, 6, 43, 50, 0, 0, 0),
(712, 19153, 7, 50, 500, 0, 0, 0),
(713, 19146, 7, 50, 500, 0, 0, 0),
(714, 19155, 7, 50, 500, 0, 0, 0),
(715, 11732, 5, 39, 1200, 0, 0, 0),
(716, 18720, 5, 38, 5, 0, 0, 0),
(717, 18707, 5, 38, 5, 0, 0, 0),
(718, 19617, 2, 24, 500, 0, 0, 0),
(719, 1960, 7, 50, 50, 0, 0, 0),
(720, 1961, 7, 50, 50, 0, 0, 0),
(721, 1962, 7, 50, 50, 0, 0, 0),
(722, 19920, 3, 28, 150, 0, 0, 0),
(723, 1547, 7, 50, 200, 0, 0, 0),
(724, 19812, 7, 50, 500, 0, 0, 0),
(725, 19818, 7, 50, 50, 0, 0, 0),
(726, 19819, 7, 50, 50, 0, 0, 0),
(727, 19868, 7, 52, 200, 0, 0, 0),
(728, 19869, 7, 52, 200, 0, 0, 0),
(729, 1485, 6, 43, 5, 0, 0, 0),
(730, 19807, 7, 52, 200, 0, 0, 0),
(731, 19808, 7, 52, 200, 0, 0, 0),
(732, 19830, 0, 2, 500, 0, 0, 0),
(733, 19820, 6, 42, 100, 0, 0, 0),
(734, 19821, 6, 42, 100, 0, 0, 0),
(735, 19822, 6, 42, 200, 0, 0, 0),
(736, 2714, 4, 33, 500, 0, 0, 0),
(737, 19922, 1, 13, 500, 0, 0, 0),
(738, 1512, 6, 42, 10, 0, 0, 0),
(739, 1668, 6, 42, 5, 0, 0, 0),
(740, 1669, 6, 42, 5, 0, 0, 0),
(741, 2636, 1, 5, 300, 0, 0, 0),
(742, 1665, 6, 44, 100, 0, 0, 0),
(743, 19825, 6, 44, 250, 0, 0, 0),
(744, 19325, 7, 55, 500, 0, 0, 0),
(745, 3858, 7, 55, 500, 0, 0, 0),
(746, 3034, 7, 55, 300, 0, 0, 0),
(747, 19915, 0, 1, 500, 0, 0, 0),
(748, 19923, 0, 1, 1000, 0, 0, 0),
(749, 19929, 1, 15, 400, 0, 0, 0),
(750, 19930, 1, 15, 350, 0, 0, 0),
(751, 19931, 1, 15, 350, 0, 0, 0),
(752, 19925, 1, 15, 300, 0, 0, 0),
(753, 19926, 1, 15, 350, 0, 0, 0),
(754, 19927, 1, 15, 350, 0, 0, 0),
(755, 19928, 1, 15, 400, 0, 0, 0),
(756, 11743, 0, 2, 500, 0, 0, 0),
(760, 2386, 6, 41, 80, 0, 0, 0),
(761, 2706, 6, 41, 65, 0, 0, 0),
(762, 2686, 6, 41, 65, 0, 0, 0),
(763, 2207, 6, 46, 250, 0, 0, 0),
(764, 19612, 7, 50, 500, 0, 0, 0),
(765, 19613, 7, 50, 500, 0, 0, 0),
(766, 19614, 7, 50, 500, 0, 0, 0),
(767, 19616, 7, 50, 500, 0, 0, 0),
(768, 1738, 7, 52, 400, 0, 0, 0),
(769, 920, 7, 52, 600, 0, 0, 0),
(770, 946, 2, 27, 1200, 0, 0, 0),
(771, 1520, 6, 42, 10, 0, 0, 0),
(772, 2764, 1, 13, 460, 0, 0, 0),
(773, 2635, 1, 13, 350, 0, 0, 0),
(774, 2725, 1, 13, 600, 0, 0, 0),
(775, 2069, 4, 32, 200, 0, 0, 0),
(776, 957, 4, 34, 400, 0, 0, 0),
(777, 1279, 6, 43, 20, 0, 0, 0),
(778, 19585, 6, 43, 50, 0, 0, 0),
(779, 1733, 0, 1, 360, 0, 0, 0),
(780, 1773, 0, 1, 350, 0, 0, 0),
(781, 1777, 0, 1, 350, 0, 0, 0),
(782, 19570, 6, 42, 5, 0, 0, 0),
(783, 1940, 7, 49, 20, 0, 0, 0),
(784, 1941, 7, 49, 20, 0, 0, 0),
(785, 1933, 7, 49, 20, 0, 0, 0),
(786, 1931, 7, 49, 20, 0, 0, 0),
(787, 1932, 7, 49, 20, 0, 0, 0),
(788, 1930, 7, 49, 20, 0, 0, 0),
(789, 1484, 6, 42, 15, 0, 0, 0),
(790, 1517, 6, 42, 15, 0, 0, 0),
(791, 1840, 3, 31, 500, 0, 0, 0),
(792, 1511, 6, 42, 25, 0, 0, 0),
(793, 1488, 6, 42, 25, 0, 0, 0),
(794, 2421, 0, 2, 250, 0, 0, 0),
(795, 17728, 6, 45, 600, 0, 0, 0),
(796, 1778, 6, 43, 100, 0, 0, 0),
(797, 2189, 7, 49, 300, 0, 0, 0),
(798, 14820, 7, 50, 800, 0, 0, 0),
(799, 2754, 7, 49, 1000, 0, 0, 0),
(802, 14782, 2, 27, 500, 0, 0, 0),
(803, 1896, 7, 49, 750, 0, 0, 0),
(804, 1824, 7, 49, 1200, 0, 0, 0),
(805, 18875, 7, 52, 50, 0, 0, 0),
(806, 17969, 7, 51, 100, 0, 0, 0),
(809, 2106, 4, 32, 150, 0, 0, 0),
(810, 2109, 1, 13, 375, 0, 0, 0),
(811, 2111, 1, 13, 700, 0, 0, 0),
(812, 2112, 1, 13, 350, 0, 0, 0),
(813, 1514, 7, 52, 1500, 0, 0, 0),
(815, 19584, 6, 43, 100, 0, 0, 0),
(816, 19583, 6, 43, 50, 0, 0, 0),
(817, 19916, 0, 0, 1200, 0, 0, 0),
(818, 2647, 6, 43, 5, 0, 0, 0),
(819, 19572, 6, 43, 10, 0, 0, 0),
(820, 2913, 2, 27, 100, 0, 0, 0),
(821, 2768, 6, 43, 10, 0, 0, 0),
(822, 19569, 6, 43, 10, 0, 0, 0),
(823, 19809, 6, 43, 150, 0, 0, 0),
(824, 11706, 6, 43, 50, 0, 0, 0),
(825, 2649, 7, 52, 2000, 0, 0, 0),
(827, 19786, 3, 28, 5000, 0, 0, 0),
(828, 19787, 3, 28, 3000, 0, 0, 0),
(829, 11711, 6, 45, 500, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `housefurniture`
--

CREATE TABLE `housefurniture` (
  `house` int(11) NOT NULL,
  `object` int(11) NOT NULL,
  `streamid` int(11) NOT NULL,
  `interior` smallint(6) NOT NULL,
  `x` decimal(10,4) NOT NULL,
  `y` decimal(10,4) NOT NULL,
  `z` decimal(10,4) NOT NULL,
  `rx` decimal(10,4) NOT NULL,
  `ry` decimal(10,4) NOT NULL,
  `rz` decimal(10,4) NOT NULL,
  `name` varchar(30) NOT NULL,
  `Door_RX_Open` decimal(10,8) NOT NULL DEFAULT '-9.99999999',
  `Door_RY_Open` decimal(10,8) NOT NULL DEFAULT '-9.99999999',
  `Door_RZ_Open` decimal(10,8) NOT NULL DEFAULT '-9.99999999',
  `etat` smallint(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `houses`
--

CREATE TABLE `houses` (
  `Hid` int(11) NOT NULL,
  `Owner` int(11) NOT NULL,
  `Renter` int(11) NOT NULL,
  `RentPrice` smallint(6) NOT NULL,
  `Caisse` int(11) NOT NULL,
  `OutX` decimal(10,4) NOT NULL,
  `OutY` decimal(10,4) NOT NULL,
  `OutZ` decimal(10,4) NOT NULL,
  `OutInt` smallint(6) NOT NULL,
  `OutWorld` int(11) NOT NULL,
  `InX` decimal(10,4) NOT NULL,
  `InY` decimal(10,4) NOT NULL,
  `InZ` decimal(10,4) NOT NULL,
  `InInt` smallint(6) NOT NULL,
  `Open` tinyint(1) NOT NULL DEFAULT '1',
  `Type` tinyint(4) NOT NULL,
  `MaxInvits` tinyint(4) NOT NULL,
  `Trash` tinyint(4) NOT NULL,
  `Removing` int(11) NOT NULL,
  `RemovPlayer` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `Frigo` smallint(6) NOT NULL,
  `Poub` smallint(6) NOT NULL,
  `Title` varchar(64) NOT NULL DEFAULT 'Maison',
  `Kit` smallint(2) DEFAULT '0',
  `Grammes` smallint(6) NOT NULL,
  `TimeCanna` int(11) NOT NULL,
  `Meth` smallint(3) NOT NULL,
  `TimeMeth` int(11) NOT NULL,
  `Matos` smallint(7) NOT NULL,
  `Essence` decimal(10,4) NOT NULL,
  `Kit1` smallint(3) NOT NULL,
  `Kit2` smallint(3) NOT NULL,
  `Kit3` smallint(3) NOT NULL,
  `Kit4` smallint(3) NOT NULL,
  `Kit5` smallint(3) NOT NULL,
  `Kit6` smallint(3) NOT NULL,
  `Kit7` smallint(3) NOT NULL,
  `Kit8` smallint(3) NOT NULL,
  `Kit9` smallint(3) NOT NULL,
  `Kit10` smallint(3) NOT NULL,
  `Kit11` smallint(3) NOT NULL,
  `Kit12` smallint(3) NOT NULL,
  `Kit13` smallint(3) NOT NULL,
  `Kit14` smallint(3) NOT NULL,
  `Kit15` smallint(3) NOT NULL,
  `Kit16` smallint(3) NOT NULL,
  `Kit17` smallint(3) NOT NULL,
  `Kit18` smallint(3) NOT NULL,
  `Kit19` smallint(3) NOT NULL,
  `Kit20` smallint(3) NOT NULL,
  `Kit21` smallint(3) NOT NULL,
  `Kit22` smallint(3) NOT NULL,
  `Kit23` smallint(3) NOT NULL,
  `Kit24` smallint(3) NOT NULL,
  `Kit25` smallint(3) NOT NULL,
  `Kit26` smallint(3) NOT NULL,
  `Kit27` smallint(3) NOT NULL,
  `Kit28` smallint(3) NOT NULL,
  `Kit29` smallint(3) NOT NULL,
  `Kit30` smallint(3) NOT NULL,
  `gMeth` int(11) NOT NULL,
  `gCoke` int(11) NOT NULL,
  `gHero` int(11) NOT NULL,
  `gStero` int(11) NOT NULL,
  `gCanna` int(11) NOT NULL,
  `Autoriz` int(11) NOT NULL DEFAULT '0',
  `PlacementActor` smallint(3) NOT NULL,
  `LastBraquo` int(11) NOT NULL,
  `Braquable` int(11) NOT NULL,
  `Contrebande` int(11) NOT NULL,
  `TDrugCanna` int(11) NOT NULL DEFAULT '0',
  `TDrugCoke` int(11) NOT NULL DEFAULT '0',
  `TDrugHero` int(11) NOT NULL DEFAULT '0',
  `TDrugMeth` int(11) NOT NULL DEFAULT '0',
  `TDrugStero` int(11) NOT NULL DEFAULT '0',
  `CoffreFurn` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `houses`
--

INSERT INTO `houses` (`Hid`, `Owner`, `Renter`, `RentPrice`, `Caisse`, `OutX`, `OutY`, `OutZ`, `OutInt`, `OutWorld`, `InX`, `InY`, `InZ`, `InInt`, `Open`, `Type`, `MaxInvits`, `Trash`, `Removing`, `RemovPlayer`, `Price`, `Frigo`, `Poub`, `Title`, `Kit`, `Grammes`, `TimeCanna`, `Meth`, `TimeMeth`, `Matos`, `Essence`, `Kit1`, `Kit2`, `Kit3`, `Kit4`, `Kit5`, `Kit6`, `Kit7`, `Kit8`, `Kit9`, `Kit10`, `Kit11`, `Kit12`, `Kit13`, `Kit14`, `Kit15`, `Kit16`, `Kit17`, `Kit18`, `Kit19`, `Kit20`, `Kit21`, `Kit22`, `Kit23`, `Kit24`, `Kit25`, `Kit26`, `Kit27`, `Kit28`, `Kit29`, `Kit30`, `gMeth`, `gCoke`, `gHero`, `gStero`, `gCanna`, `Autoriz`, `PlacementActor`, `LastBraquo`, `Braquable`, `Contrebande`, `TDrugCanna`, `TDrugCoke`, `TDrugHero`, `TDrugMeth`, `TDrugStero`, `CoffreFurn`) VALUES
(10001, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 'Maison', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10688, 0, 0, 70, 0, '2783.9372', '-2148.9001', '3000.9819', 14, 32775, '1843.2599', '-2361.0000', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '11', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10545, 0, 0, 70, 0, '501.8500', '1753.0063', '5801.0859', 12, 14184242, '2191.0408', '-1666.3243', '2501.0859', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10115, 0, 0, 0, 0, '1314.1035', '-1159.2661', '23.8281', 0, 0, '2265.5769', '-1714.2000', '1052.7823', 22, 1, 2, 5, 0, 0, 0, 0, 0, 0, 'Vinewood Bvd, 543', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11281, 0, 0, 0, 0, '1561.4741', '-1227.8460', '1089.8669', 22, 25, '1716.7521', '-880.3873', '8001.0859', 1, 0, 2, 1, 0, 0, 0, 0, 0, 0, 'Bureau vacant', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 674, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10096, 0, 0, 70, 0, '2192.4177', '-1815.2180', '13.5468', 0, 0, '1843.7000', '-2361.0649', '2486.6169', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '101', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10097, 0, 0, 70, 0, '2185.7373', '-1815.2271', '13.5468', 0, 0, '2618.5054', '-1816.4712', '616.5299', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '102', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10098, 0, 0, 70, 0, '2176.3593', '-1815.2254', '13.5468', 0, 0, '2178.7654', '-667.7545', '441.8998', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '103', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1484835394, 0, 0, 0, 0),
(10099, 0, 0, 70, 0, '2168.8637', '-1815.2175', '13.5468', 0, 0, '2624.9370', '-2717.5745', '2197.6729', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '104', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10100, 0, 0, 70, 0, '2162.6694', '-1815.2276', '13.5468', 0, 0, '721.9769', '-1428.4967', '1201.3190', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '105', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10101, 0, 0, 70, 0, '2155.8881', '-1815.2268', '13.5468', 0, 0, '244.1005', '305.0807', '999.1484', 1, 0, 1, 5, 0, 0, 0, 0, 0, 0, '106', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10102, 0, 0, 70, 0, '2151.0393', '-1814.9667', '13.5497', 0, 0, '2233.7700', '-1115.2515', '1050.8828', 5, 0, 1, 5, 0, 0, 0, 0, 0, 0, '107', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10103, 0, 0, 70, 0, '2151.0456', '-1807.9312', '13.5463', 0, 0, '2216.5400', '-1076.2900', '1050.4844', 1, 0, 1, 5, 0, 0, 0, 0, 0, 0, '108', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10104, 0, 0, 70, 0, '2151.0356', '-1789.0841', '13.5092', 0, 0, '2259.8740', '-1136.1002', '1050.6328', 10, 0, 1, 5, 0, 0, 0, 0, 0, 0, '109', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10105, 0, 0, 70, 0, '2176.4924', '-1828.5548', '16.1409', 0, 0, '223.0540', '1287.4657', '1082.1406', 1, 0, 1, 5, 0, 0, 0, 0, 0, 0, '110', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10106, 0, 0, 70, 0, '2176.4929', '-1821.6593', '16.1459', 0, 0, '1843.5497', '-2361.2927', '2486.6169', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '111', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10107, 0, 0, 70, 0, '2172.2670', '-1819.6962', '16.1406', 0, 0, '2618.7747', '-1816.1539', '616.5299', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '112', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10108, 0, 0, 70, 0, '2164.8391', '-1819.6953', '16.1406', 0, 0, '721.8238', '-1428.4635', '1201.3190', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '113', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10109, 0, 0, 70, 0, '2158.3842', '-1819.6943', '16.1406', 0, 0, '2178.4199', '-667.4620', '441.8998', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '114', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10110, 0, 0, 70, 0, '2152.0004', '-1819.6614', '16.1406', 0, 0, '2624.7305', '-2717.8181', '2197.6729', 13, 0, 1, 5, 0, 1495589086, 0, 0, 0, 0, '115', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10111, 0, 0, 70, 0, '2146.4746', '-1815.0201', '16.1406', 0, 0, '244.0948', '304.9162', '999.1484', 1, 0, 1, 5, 0, 0, 0, 0, 0, 0, '116', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10112, 0, 0, 70, 0, '2146.5231', '-1808.4670', '16.1406', 0, 0, '1843.6763', '-2360.9775', '2486.6169', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '117', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10113, 0, 0, 70, 0, '2140.9294', '-1801.9677', '16.1474', 0, 0, '1843.6664', '-2361.4460', '2486.6169', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '118', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10114, 0, 0, 70, 0, '2145.0185', '-1801.7738', '16.1406', 0, 0, '2260.0688', '-1136.0802', '1050.6328', 10, 0, 1, 5, 0, 0, 0, 0, 0, 0, '119', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10116, 0, 0, 0, 0, '-376.9145', '2242.3232', '42.6184', 0, 0, '2217.5837', '2794.0767', '1201.0859', 19, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'Salazar\'s tattoo shop', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10760, 0, 0, 0, 0, '2842.1696', '-1334.7856', '14.7421', 0, 0, '1026.2484', '2599.9321', '2555.8669', 13, 0, 3, 0, 0, 0, 0, 0, 0, 0, '915 Pacific Coast Hwy', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10195, 0, 0, 70, 0, '956.1941', '1378.9854', '2498.0629', 21, 10587089, '1843.2660', '-2361.0256', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '604', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10194, 0, 0, 70, 0, '956.1947', '1375.3236', '2498.0629', 21, 10587089, '1843.2660', '-2361.0256', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '603', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10193, 0, 0, 70, 0, '956.1942', '1371.1054', '2498.0629', 21, 10587089, '1843.2660', '-2361.0256', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '602', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10192, 0, 0, 70, 0, '962.2662', '1371.5637', '2498.0629', 21, 10587089, '1843.2660', '-2361.0256', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '601', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10239, 0, 0, 70, 0, '1612.8142', '63.7198', '1009.7699', 14, 32781, '2191.5347', '-1665.8654', '2501.0859', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '101', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10191, 0, 0, 70, 0, '962.2662', '1381.9102', '2498.0629', 21, 10587089, '1843.2660', '-2361.0256', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '600', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10124, 0, 0, 120, 0, '1735.0515', '-1642.4002', '23.7575', 18, 31, '2178.5789', '-667.4353', '441.8998', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '101', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10125, 0, 0, 120, 0, '1735.0644', '-1648.2362', '23.7446', 18, 31, '722.1205', '-1428.3789', '1201.3190', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '102', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10126, 0, 0, 120, 0, '1735.0817', '-1654.1995', '23.7315', 18, 31, '2618.6594', '-1816.1516', '616.5299', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '103', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10127, 0, 0, 120, 0, '1735.1020', '-1660.1103', '23.7186', 18, 31, '2233.7246', '-1114.8716', '1050.8828', 5, 0, 1, 5, 0, 0, 0, 0, 0, 0, '104', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10128, 0, 0, 120, 0, '1708.7170', '-1670.2231', '23.7056', 18, 31, '722.0245', '-1428.1996', '1201.3190', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '105', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10129, 0, 0, 120, 0, '1708.7038', '-1664.9907', '23.7043', 18, 31, '2178.6206', '-667.4447', '441.8998', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '106', 0, 0, 0, 10, 1463330776, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10130, 0, 0, 120, 0, '1708.7039', '-1659.7585', '23.7031', 18, 31, '2618.8325', '-1816.1481', '616.5299', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '107', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10131, 0, 0, 120, 0, '1708.7032', '-1654.5698', '23.7018', 18, 31, '722.0977', '-1428.2236', '1201.3190', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '108', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10132, 0, 0, 120, 0, '1708.7026', '-1649.3648', '23.6953', 18, 31, '2618.8987', '-1816.1503', '616.5299', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '109', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10133, 0, 0, 120, 0, '1735.0515', '-1642.3854', '27.2391', 18, 31, '2178.5308', '-667.3949', '441.8998', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '110', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10134, 0, 0, 120, 0, '1735.0638', '-1648.2790', '27.2303', 18, 31, '2618.7942', '-1816.0205', '616.5299', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '111', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10135, 0, 0, 120, 0, '1735.0761', '-1654.2725', '27.2214', 18, 31, '722.4838', '-1428.3730', '1201.3190', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '112', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10136, 0, 0, 120, 0, '1735.0953', '-1660.1323', '27.2127', 18, 31, '2178.6926', '-667.3318', '441.8998', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '113', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10137, 0, 0, 120, 0, '1708.7065', '-1670.1412', '27.1953', 18, 31, '2618.4500', '-1815.9265', '616.5299', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '114', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10138, 0, 0, 120, 0, '1708.7043', '-1664.9360', '27.1953', 18, 31, '722.3036', '-1428.1812', '1201.3190', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '115', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10139, 0, 0, 120, 0, '1708.7069', '-1659.7197', '27.1953', 18, 31, '722.4049', '-1428.2314', '1201.3190', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '116', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10140, 0, 0, 120, 0, '1708.7175', '-1654.5986', '27.1953', 18, 31, '2178.4497', '-667.2903', '441.8998', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '117', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10141, 0, 0, 120, 0, '1708.7084', '-1649.3485', '27.1953', 18, 31, '2618.4189', '-1816.0057', '616.5299', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '118', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10240, 0, 0, 70, 0, '1617.9101', '63.6839', '1009.7699', 14, 32781, '243.7189', '304.8216', '999.1484', 1, 0, 1, 2, 0, 0, 0, 0, 0, 0, '102', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10238, 0, 0, 70, 0, '-1032.7335', '1551.1910', '505.6689', 14, 10224517, '2191.8442', '-1666.3523', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '409', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10237, 0, 0, 70, 0, '-1039.6608', '1553.0615', '505.6689', 14, 10224517, '2191.8442', '-1666.3523', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '408', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10236, 0, 0, 70, 0, '-1035.8502', '1554.5864', '505.6689', 14, 10224517, '244.1124', '305.1903', '999.1484', 1, 0, 1, 2, 0, 0, 0, 0, 0, 0, '407', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10235, 0, 0, 70, 0, '-1029.8728', '1556.9071', '505.6769', 14, 10224517, '244.1124', '305.1903', '999.1484', 1, 0, 1, 2, 0, 0, 0, 0, 0, 0, '406', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1484835394, 0, 0, 0, 0),
(10234, 0, 0, 70, 0, '-1029.8833', '1562.0021', '505.6769', 14, 10224517, '2191.8442', '-1666.3523', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '405', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1484835394, 0, 0, 0, 0),
(10233, 0, 0, 70, 0, '-1027.4069', '1563.9475', '505.6769', 14, 10224517, '1843.2865', '-2361.0742', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '404', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10232, 0, 0, 70, 0, '-1022.7309', '1563.9322', '505.6769', 14, 10224517, '1843.2865', '-2361.0742', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '403', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10231, 0, 0, 70, 0, '-1021.4435', '1559.8786', '505.6769', 14, 10224517, '2191.8442', '-1666.3523', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '402', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10230, 0, 0, 70, 0, '-1021.4840', '1553.4538', '505.6759', 14, 10224517, '2259.7605', '-1136.1490', '1050.6328', 10, 0, 1, 2, 0, 0, 0, 0, 0, 0, '401', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10229, 0, 0, 70, 0, '-1026.1292', '1551.1899', '505.6759', 14, 10224517, '2191.8442', '-1666.3523', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '400', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10228, 0, 0, 100, 0, '168.4962', '112.6732', '7603.2109', 11, 16421428, '722.0535', '-1428.5176', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '14', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10207, 0, 0, 70, 0, '509.5110', '1763.1625', '5801.0859', 12, 13871408, '2191.8442', '-1666.3960', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '910', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10208, 0, 0, 70, 0, '241.8565', '1735.9052', '3001.0000', 22, 16410295, '2191.8445', '-1666.3778', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '200', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10209, 0, 0, 70, 0, '241.8785', '1738.8892', '3001.0000', 22, 16410295, '1843.6255', '-2361.2515', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '201', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10210, 0, 0, 70, 0, '241.8781', '1742.1070', '3001.0000', 22, 16410295, '1843.6255', '-2361.2515', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '202', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10211, 0, 0, 70, 0, '245.0970', '1744.3143', '3001.0000', 22, 16410295, '1843.6255', '-2361.2515', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '203', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10212, 0, 0, 70, 0, '242.5122', '1745.7012', '3001.0000', 22, 16410295, '2191.8445', '-1666.3778', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '204', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10213, 0, 0, 70, 0, '239.7628', '1743.9731', '3001.0000', 22, 16410295, '2191.8445', '-1666.3778', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '205', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10214, 0, 0, 70, 0, '239.7954', '1740.5198', '3001.0000', 22, 16410295, '2191.8445', '-1666.3778', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '206', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10215, 0, 0, 100, 0, '166.6001', '121.7605', '7603.2109', 11, 16421428, '721.6968', '-1428.2075', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10216, 0, 0, 100, 0, '168.4433', '118.3599', '7603.2036', 11, 16421428, '2178.9326', '-667.4623', '441.8998', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10217, 0, 0, 100, 0, '171.0826', '114.8966', '7603.2109', 11, 16421428, '2624.7026', '-2717.5063', '2197.6729', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10218, 0, 0, 100, 0, '175.3256', '114.8946', '7603.2109', 11, 16421428, '223.0821', '1287.3656', '1082.1406', 1, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10219, 0, 0, 100, 0, '173.4101', '107.7497', '7603.2109', 11, 16421428, '2618.6035', '-1816.1372', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10220, 0, 0, 100, 0, '170.2315', '106.3854', '7603.2109', 11, 16421428, '721.7023', '-1428.3483', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10221, 0, 0, 100, 0, '168.0248', '109.1907', '7603.2109', 11, 16421428, '2618.5640', '-1815.6610', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10222, 0, 0, 100, 0, '164.0890', '106.3803', '7603.2109', 11, 16421428, '2178.3625', '-667.3410', '441.8998', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '08', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10223, 0, 0, 100, 0, '161.6064', '109.1894', '7603.2109', 11, 16421428, '2259.7808', '-1136.1552', '1050.6328', 10, 0, 1, 2, 0, 0, 0, 0, 0, 0, '09', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10224, 0, 0, 100, 0, '157.6451', '106.4034', '7603.2109', 11, 16421428, '722.0124', '-1428.1422', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '10', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10225, 0, 0, 100, 0, '155.8456', '109.0726', '7603.2109', 11, 16421428, '2618.8181', '-1816.1415', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '11', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10226, 0, 0, 100, 0, '162.6184', '112.6698', '7603.2109', 11, 16421428, '2618.4277', '-1816.0342', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '12', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10227, 0, 0, 100, 0, '162.6184', '114.8279', '7603.2036', 11, 16421428, '223.0821', '1287.3656', '1082.1406', 1, 0, 1, 2, 0, 0, 0, 0, 0, 0, '13', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10206, 0, 0, 70, 0, '513.6283', '1763.1622', '5801.0859', 12, 13871408, '2191.8442', '-1666.3960', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '909', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10205, 0, 0, 70, 0, '515.5737', '1761.6984', '5801.0859', 12, 13871408, '1843.6536', '-2361.0632', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '908', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10204, 0, 0, 70, 0, '515.4942', '1756.9747', '5801.0859', 12, 13871408, '2191.8442', '-1666.3960', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '907', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10203, 0, 0, 70, 0, '513.2556', '1746.1423', '5801.0859', 12, 13871408, '1843.6536', '-2361.0632', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '906', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10202, 0, 0, 70, 0, '510.0936', '1745.0922', '5801.0859', 12, 13871408, '2260.3994', '-1136.0460', '1050.6328', 10, 0, 1, 2, 0, 0, 0, 0, 0, 0, '905', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10201, 0, 0, 70, 0, '505.5836', '1745.0932', '5801.0859', 12, 13871408, '2191.8442', '-1666.3960', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '904', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10200, 0, 0, 70, 0, '507.0153', '1748.8851', '5801.0859', 12, 13871408, '2260.3994', '-1136.0460', '1050.6328', 10, 0, 1, 2, 0, 0, 0, 0, 0, 0, '903', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10199, 0, 0, 70, 0, '507.0151', '1752.6914', '5801.0859', 12, 13871408, '2625.1082', '-2717.7837', '2197.6729', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '902', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10198, 0, 0, 70, 0, '506.5931', '1762.5655', '5801.0859', 12, 13871408, '2625.1082', '-2717.7837', '2197.6729', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '901', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10197, 0, 0, 70, 0, '501.9031', '1753.0017', '5801.0859', 12, 13871408, '2191.8442', '-1666.3960', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '900', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10196, 0, 0, 70, 0, '956.1936', '1382.4351', '2498.0629', 21, 10587089, '1843.2660', '-2361.0256', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '605', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10394, 0, 0, 120, 0, '2533.6127', '461.6207', '3315.5810', 21, 14939626, '2618.6882', '-1816.4734', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '850', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10241, 0, 0, 70, 0, '1617.7365', '55.3963', '1009.7699', 14, 32781, '2191.8203', '-1666.1393', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '103', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10242, 0, 0, 70, 0, '1612.8922', '55.2375', '1009.7699', 14, 32781, '222.9036', '1287.6123', '1082.1406', 1, 0, 1, 2, 0, 0, 0, 0, 0, 0, '104', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10243, 0, 0, 70, 0, '1615.5999', '61.0498', '1005.3789', 14, 32781, '2259.9648', '-1136.0422', '1050.6328', 10, 0, 1, 2, 0, 0, 0, 0, 0, 0, '105', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10244, 0, 0, 70, 0, '1611.3697', '60.9941', '1005.3789', 14, 32781, '1843.5656', '-2361.4802', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '106', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10245, 0, 0, 70, 0, '1611.4836', '65.9713', '1005.3789', 14, 32781, '2191.5007', '-1665.8793', '2501.0859', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '107', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10246, 0, 0, 70, 0, '1612.9299', '55.2333', '1009.7699', 14, 32772, '1843.2604', '-2361.1287', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '500', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10247, 0, 0, 70, 0, '1617.6472', '55.2364', '1009.7699', 14, 32772, '1843.2604', '-2361.1287', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '501', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10248, 0, 0, 70, 0, '1612.8813', '63.7167', '1009.7699', 14, 32772, '1843.2604', '-2361.1287', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '502', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10249, 0, 0, 70, 0, '1617.7294', '63.6352', '1009.7699', 14, 32772, '1843.2604', '-2361.1287', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '503', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10250, 0, 0, 0, 0, '1615.3852', '60.9883', '1005.3789', 14, 32772, '760.2953', '718.4526', '3501.0859', 16, 0, 2, 5, 0, 0, 0, 0, 0, 0, '504', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10251, 0, 0, 70, 0, '1611.3842', '60.9881', '1005.3789', 14, 32772, '1843.2604', '-2361.1287', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '505', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1484835394, 0, 0, 1484835394, 0),
(10252, 0, 0, 70, 0, '1611.3371', '65.9743', '1005.3789', 14, 32772, '1843.2604', '-2361.1287', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '506', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10253, 0, 0, 70, 0, '1612.9326', '63.7186', '1009.7699', 14, 32782, '2191.5603', '-1666.2717', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '101', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10254, 0, 0, 70, 0, '1617.7711', '63.6942', '1009.7699', 14, 32782, '2191.5603', '-1666.2717', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '102', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10255, 0, 0, 70, 0, '1617.7413', '55.2340', '1009.7699', 14, 32782, '2191.5603', '-1666.2717', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '103', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10256, 0, 0, 70, 0, '1612.9119', '55.2342', '1009.7699', 14, 32782, '2191.5603', '-1666.2717', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '104', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10257, 0, 0, 0, 0, '1615.4199', '60.9886', '1005.3789', 14, 32782, '2191.5603', '-1666.2717', '2501.0869', 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, '105', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10258, 0, 0, 70, 0, '1611.4566', '60.9886', '1005.3789', 14, 32782, '2191.5603', '-1666.2717', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '106', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10259, 0, 0, 70, 0, '1611.3917', '65.9746', '1005.3789', 14, 32782, '2191.5603', '-1666.2717', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '107', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10260, 0, 0, 70, 0, '1612.9620', '55.2327', '1009.7699', 14, 32773, '243.7172', '304.8797', '999.1484', 1, 0, 1, 2, 0, 0, 0, 0, 0, 0, '150', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10261, 0, 0, 70, 0, '1617.7430', '55.2331', '1009.7699', 14, 32773, '243.7172', '304.8797', '999.1484', 1, 0, 1, 2, 0, 0, 0, 0, 0, 0, '151', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10262, 0, 0, 70, 0, '1617.6635', '63.6998', '1009.7699', 14, 32773, '243.7172', '304.8797', '999.1484', 1, 0, 1, 2, 0, 0, 0, 0, 0, 0, '152', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10263, 0, 0, 70, 0, '1612.9171', '63.6176', '1009.7699', 14, 32773, '243.7172', '304.8797', '999.1484', 1, 0, 1, 2, 0, 0, 0, 0, 0, 0, '153', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10264, 0, 0, 70, 0, '1615.4047', '60.9888', '1005.3789', 14, 32773, '243.7172', '304.8797', '999.1484', 1, 0, 1, 2, 0, 0, 0, 0, 0, 0, '154', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10265, 0, 0, 70, 0, '1611.3619', '60.9884', '1005.3789', 14, 32773, '243.7172', '304.8797', '999.1484', 1, 0, 1, 2, 0, 0, 0, 0, 0, 0, '155', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10266, 0, 0, 70, 0, '1611.2692', '65.9746', '1005.3789', 14, 32773, '243.7172', '304.8797', '999.1484', 1, 0, 1, 2, 0, 0, 0, 0, 0, 0, '156', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10267, 0, 0, 70, 0, '1612.8868', '63.7191', '1009.7699', 14, 32778, '223.3168', '1287.4379', '1082.1406', 1, 0, 1, 2, 0, 0, 0, 0, 0, 0, '101', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10268, 0, 0, 70, 0, '1617.7957', '63.6995', '1009.7699', 14, 32778, '223.3168', '1287.4379', '1082.1406', 1, 0, 1, 2, 0, 0, 0, 0, 0, 0, '102', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10269, 0, 0, 70, 0, '1617.6478', '55.2335', '1009.7699', 14, 32778, '223.3168', '1287.4379', '1082.1406', 1, 0, 1, 2, 0, 0, 0, 0, 0, 0, '103', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10270, 0, 0, 70, 0, '1612.8951', '55.2329', '1009.7699', 14, 32778, '223.3168', '1287.4379', '1082.1406', 1, 0, 1, 2, 0, 0, 0, 0, 0, 0, '104', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10271, 0, 0, 70, 0, '1615.4305', '60.9896', '1005.3789', 14, 32778, '2624.5325', '-2717.4299', '2197.6729', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '105', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10272, 0, 0, 70, 0, '1611.3897', '60.9894', '1005.3789', 14, 32778, '2624.5325', '-2717.4299', '2197.6729', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '106', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10273, 0, 0, 70, 0, '1611.4581', '65.9754', '1005.3789', 14, 32778, '2624.5325', '-2717.4299', '2197.6729', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '107', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10274, 0, 0, 70, 0, '1612.9786', '63.7198', '1009.7699', 14, 32777, '2191.8440', '-1666.3950', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '250', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10275, 0, 0, 70, 0, '1617.5937', '63.6998', '1009.7699', 14, 32777, '2191.8440', '-1666.3950', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '251', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10276, 0, 0, 70, 0, '1612.9173', '55.2330', '1009.7699', 14, 32777, '2191.8440', '-1666.3950', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '252', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10277, 0, 0, 70, 0, '1617.6322', '55.2327', '1009.7699', 14, 32777, '2191.8440', '-1666.3950', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '253', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10278, 0, 0, 70, 0, '1615.4293', '60.9898', '1005.3789', 14, 32777, '2191.8440', '-1666.3950', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '254', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10279, 0, 0, 70, 0, '1611.3398', '60.9890', '1005.3789', 14, 32777, '2191.8440', '-1666.3950', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '255', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10280, 0, 0, 70, 0, '1611.3540', '65.9754', '1005.3789', 14, 32777, '2191.8440', '-1666.3950', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '256', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11787, 0, 0, 100, 0, '2284.0219', '-1791.5526', '3583.7209', 40, 18800286, '2259.3813', '-1135.8813', '1050.6403', 10, 0, 1, 2, 0, 0, 0, 0, 0, 0, '120', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11793, 0, 0, 100, 0, '2290.5947', '-1799.4544', '3583.7290', 40, 18800286, '2259.3816', '-1135.8682', '1050.6403', 10, 0, 1, 1, 0, 0, 0, 0, 0, 0, '150', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11790, 0, 0, 100, 0, '2293.9860', '-1799.4506', '3583.7326', 40, 18800286, '2259.3816', '-1135.8372', '1050.6403', 10, 0, 1, 2, 0, 0, 0, 0, 0, 0, '160', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11783, 0, 0, 100, 0, '2300.0476', '-1813.9188', '3576.7309', 40, 18800286, '2259.3816', '-1135.8575', '1050.6403', 10, 0, 1, 2, 0, 0, 0, 0, 0, 0, '70', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10288, 0, 0, 70, 0, '2783.9372', '-2158.6572', '3005.1127', 16, 32767, '1843.2598', '-2360.9812', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '550', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1484835394, 0, 0, 0, 1484835394, 0),
(10289, 0, 0, 70, 0, '2783.9375', '-2148.9291', '3009.2438', 16, 32767, '1843.2598', '-2360.9812', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '551', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10290, 0, 0, 70, 0, '2788.4990', '-2148.8720', '3009.2507', 16, 32767, '2191.8445', '-1666.3022', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '552', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10291, 0, 0, 70, 0, '2788.4987', '-2158.5769', '3009.2507', 16, 32767, '2191.8445', '-1666.3022', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '553', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10292, 0, 0, 70, 0, '2784.0180', '-2158.6206', '3009.2429', 16, 32767, '2191.8445', '-1666.3022', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '554', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10293, 0, 0, 70, 0, '2788.4992', '-2158.6384', '3005.1127', 16, 32767, '2191.8445', '-1666.3022', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '556', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10294, 0, 0, 70, 0, '2788.4992', '-2148.9746', '3005.1127', 16, 32767, '2191.8445', '-1666.3022', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '557', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10295, 0, 0, 70, 0, '2783.9377', '-2149.0061', '3005.1127', 16, 32767, '2191.8445', '-1666.3022', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '558', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1484835394, 0, 0, 0, 0),
(10296, 0, 0, 70, 0, '2783.9421', '-2158.7060', '3000.9819', 16, 32767, '2191.8445', '-1666.3022', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '559', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10297, 0, 0, 70, 0, '2795.0139', '-2152.5485', '2997.7946', 16, 32767, '2191.8445', '-1666.3022', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '560', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10298, 0, 0, 70, 0, '2796.9401', '-2147.8452', '2997.7946', 16, 32767, '2191.8445', '-1666.3022', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '561', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10299, 0, 0, 70, 0, '2792.3752', '-2144.9733', '2997.7946', 16, 32767, '2191.8445', '-1666.3022', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '562', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10300, 0, 0, 70, 0, '2790.4838', '-2143.8691', '2997.7946', 16, 32767, '1843.2598', '-2360.9812', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '563', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10301, 0, 0, 70, 0, '2792.2287', '-2142.6613', '2997.7946', 16, 32767, '1843.2598', '-2360.9812', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '564', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10302, 0, 0, 70, 0, '2796.3171', '-2142.6542', '2997.7946', 16, 32767, '1843.2598', '-2360.9812', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '565', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10303, 0, 0, 70, 0, '2799.6965', '-2142.6540', '2997.7946', 16, 32767, '1843.2598', '-2360.9812', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '566', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10304, 0, 0, 70, 0, '2802.1191', '-2143.8447', '2997.7946', 16, 32767, '1843.2598', '-2360.9812', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '567', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10305, 0, 0, 70, 0, '2799.8828', '-2144.9743', '2997.7946', 16, 32767, '1843.2598', '-2360.9812', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '568', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `houses` (`Hid`, `Owner`, `Renter`, `RentPrice`, `Caisse`, `OutX`, `OutY`, `OutZ`, `OutInt`, `OutWorld`, `InX`, `InY`, `InZ`, `InInt`, `Open`, `Type`, `MaxInvits`, `Trash`, `Removing`, `RemovPlayer`, `Price`, `Frigo`, `Poub`, `Title`, `Kit`, `Grammes`, `TimeCanna`, `Meth`, `TimeMeth`, `Matos`, `Essence`, `Kit1`, `Kit2`, `Kit3`, `Kit4`, `Kit5`, `Kit6`, `Kit7`, `Kit8`, `Kit9`, `Kit10`, `Kit11`, `Kit12`, `Kit13`, `Kit14`, `Kit15`, `Kit16`, `Kit17`, `Kit18`, `Kit19`, `Kit20`, `Kit21`, `Kit22`, `Kit23`, `Kit24`, `Kit25`, `Kit26`, `Kit27`, `Kit28`, `Kit29`, `Kit30`, `gMeth`, `gCoke`, `gHero`, `gStero`, `gCanna`, `Autoriz`, `PlacementActor`, `LastBraquo`, `Braquable`, `Contrebande`, `TDrugCanna`, `TDrugCoke`, `TDrugHero`, `TDrugMeth`, `TDrugStero`, `CoffreFurn`) VALUES
(10306, 0, 0, 70, 0, '2783.9428', '-2148.9946', '3000.9819', 16, 32767, '1843.2598', '-2360.9812', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '569', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10307, 0, 0, 70, 0, '2788.4995', '-2149.0444', '3000.9729', 16, 32767, '1843.2598', '-2360.9812', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '570', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10308, 0, 0, 70, 0, '2788.4995', '-2149.0463', '3000.9729', 16, 32768, '2191.8445', '-1666.3022', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '750', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10309, 0, 0, 70, 0, '2783.9375', '-2148.8469', '3000.9819', 16, 32768, '2191.8445', '-1666.3022', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '751', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10310, 0, 0, 70, 0, '2796.9401', '-2152.6162', '2997.7946', 16, 32768, '2191.8445', '-1666.3022', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '752', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10311, 0, 0, 70, 0, '2795.0126', '-2147.7094', '2997.7946', 16, 32768, '2191.8445', '-1666.3022', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '753', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10312, 0, 0, 70, 0, '2792.2971', '-2144.9746', '2997.7946', 16, 32768, '2191.8445', '-1666.3022', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '754', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10313, 0, 0, 70, 0, '2790.4826', '-2143.7219', '2997.7946', 16, 32768, '2191.8445', '-1666.3022', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '755', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10314, 0, 0, 70, 0, '2792.3500', '-2142.6606', '2997.7946', 16, 32768, '2191.8445', '-1666.3022', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '756', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10315, 0, 0, 70, 0, '2796.1464', '-2142.6538', '2997.7946', 16, 32768, '2191.8445', '-1666.3022', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '757', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10316, 0, 0, 70, 0, '2799.6833', '-2142.6540', '2997.7946', 16, 32768, '2191.8445', '-1666.3022', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '758', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10317, 0, 0, 70, 0, '2802.1203', '-2143.8515', '2997.7946', 16, 32768, '2191.8445', '-1666.3022', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '759', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10318, 0, 0, 0, 0, '2799.7504', '-2144.9714', '2997.7946', 16, 32768, '1843.2601', '-2361.0449', '2486.6169', 13, 1, 0, 0, 0, 0, 0, 0, 0, 0, '760', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10319, 0, 0, 70, 0, '2783.9377', '-2158.6374', '3000.9819', 16, 32768, '1843.2601', '-2361.0449', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '761', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10320, 0, 0, 70, 0, '2783.9377', '-2148.9184', '3005.1127', 16, 32768, '1843.2601', '-2361.0449', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '762', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10321, 0, 0, 70, 0, '2788.4997', '-2148.8740', '3005.1127', 16, 32768, '1843.2601', '-2361.0449', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '763', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10322, 0, 0, 70, 0, '2788.4992', '-2158.5812', '3005.1127', 16, 32768, '1843.2601', '-2361.0449', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '764', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1484835394, 0),
(10323, 0, 0, 70, 0, '2783.9382', '-2158.5981', '3005.1127', 16, 32768, '1843.2601', '-2361.0449', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '765', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10324, 0, 0, 70, 0, '2783.9372', '-2148.8806', '3009.2438', 16, 32768, '1843.2601', '-2361.0449', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '766', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10325, 0, 0, 70, 0, '2788.4870', '-2148.9360', '3009.2507', 16, 32768, '1843.2601', '-2361.0449', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '767', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10326, 0, 0, 70, 0, '2788.4995', '-2158.6079', '3009.2507', 16, 32768, '1843.2601', '-2361.0449', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '765', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10327, 0, 0, 70, 0, '2783.9372', '-2158.5747', '3009.2429', 16, 32768, '1843.2601', '-2361.0449', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '769', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10329, 0, 0, 70, 0, '2508.9667', '-1955.1899', '13.6175', 0, 0, '1843.7350', '-2361.4604', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '101', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10330, 0, 0, 70, 0, '2505.6857', '-1958.7489', '13.5810', 0, 0, '1843.7350', '-2361.4604', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '102', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10331, 0, 0, 70, 0, '2499.3742', '-1958.7465', '13.5810', 0, 0, '1843.7350', '-2361.4604', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '103', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10332, 0, 0, 70, 0, '2493.0910', '-1958.7457', '13.5810', 0, 0, '1843.7350', '-2361.4604', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '104', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10333, 0, 0, 70, 0, '2485.2800', '-1958.7491', '13.5810', 0, 0, '2625.0576', '-2717.9517', '2197.6729', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '105', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10334, 0, 0, 70, 0, '2479.0097', '-1958.7476', '13.5810', 0, 0, '2625.0576', '-2717.9517', '2197.6729', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '106', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10335, 0, 0, 70, 0, '2472.7473', '-1958.7481', '13.5810', 0, 0, '2625.0576', '-2717.9517', '2197.6729', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '107', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10336, 0, 0, 70, 0, '2469.5007', '-1955.2062', '13.6174', 0, 0, '2625.0576', '-2717.9517', '2197.6729', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '108', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10337, 0, 0, 70, 0, '2463.0581', '-1957.5435', '16.7931', 0, 0, '2259.9773', '-1136.3967', '1050.6328', 10, 0, 1, 2, 0, 0, 0, 0, 0, 0, '109', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10338, 0, 0, 70, 0, '2472.7326', '-1963.2982', '16.7578', 0, 0, '2259.9773', '-1136.3967', '1050.6328', 10, 0, 1, 2, 0, 0, 0, 0, 0, 0, '110', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10339, 0, 0, 70, 0, '2479.0959', '-1963.3190', '16.7578', 0, 0, '2259.9773', '-1136.3967', '1050.6328', 10, 0, 1, 2, 0, 0, 0, 0, 0, 0, '111', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10340, 0, 0, 70, 0, '2485.3684', '-1963.3208', '16.7578', 0, 0, '1843.5198', '-2360.8223', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '112', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10341, 0, 0, 70, 0, '2493.0834', '-1963.3187', '16.7578', 0, 0, '1843.4314', '-2361.0986', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '113', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10342, 0, 0, 70, 0, '2499.3857', '-1963.3181', '16.7578', 0, 0, '1843.4314', '-2361.0986', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '114', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10343, 0, 0, 70, 0, '2505.6000', '-1963.3175', '16.7578', 0, 0, '1843.4314', '-2361.0986', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '115', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10344, 0, 0, 70, 0, '2515.2963', '-1957.5494', '16.7926', 0, 0, '1843.4314', '-2361.0986', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '116', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10345, 0, 0, 120, 0, '1187.4415', '-1260.9230', '15.1796', 0, 0, '2624.6118', '-2717.2712', '2197.6729', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '850', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10346, 0, 0, 120, 0, '1179.8898', '-1261.0954', '15.1796', 0, 0, '2624.6118', '-2717.2712', '2197.6729', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '851', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10347, 0, 0, 120, 0, '1187.3609', '-1254.6801', '15.1796', 0, 0, '2624.6118', '-2717.2712', '2197.6729', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '852', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10348, 0, 0, 120, 0, '1179.8067', '-1254.7747', '15.1796', 0, 0, '2624.6118', '-2717.2712', '2197.6729', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '853', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10349, 0, 0, 120, 0, '1187.3605', '-1254.7159', '18.8907', 0, 0, '2624.6118', '-2717.2712', '2197.6729', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '854', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10350, 0, 0, 120, 0, '1179.8074', '-1254.8200', '18.8907', 0, 0, '721.6774', '-1428.1829', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '855', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10351, 0, 0, 120, 0, '1179.8878', '-1261.0067', '18.8984', 0, 0, '721.6774', '-1428.1829', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '856', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10352, 0, 0, 120, 0, '1187.4432', '-1261.0137', '18.8984', 0, 0, '721.6774', '-1428.1829', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '857', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10357, 0, 0, 120, 0, '1187.3618', '-1227.0886', '22.1329', 0, 0, '2624.6248', '-2717.2712', '2197.6729', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '954', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10353, 0, 0, 120, 0, '1179.8917', '-1233.3222', '18.5546', 0, 0, '2618.7341', '-1816.4656', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '950', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10354, 0, 0, 120, 0, '1187.4439', '-1233.3162', '18.5546', 0, 0, '2618.7341', '-1816.4656', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '951', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10355, 0, 0, 120, 0, '1179.8073', '-1227.1159', '18.5546', 0, 0, '2618.7341', '-1816.4656', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '952', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10356, 0, 0, 120, 0, '1187.3608', '-1227.0905', '18.5546', 0, 0, '2618.7341', '-1816.4656', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '953', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10358, 0, 0, 120, 0, '1179.8054', '-1227.0225', '22.1329', 0, 0, '2624.6248', '-2717.2712', '2197.6729', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '955', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10359, 0, 0, 120, 0, '1187.4439', '-1233.3535', '22.1406', 0, 0, '2624.6248', '-2717.2712', '2197.6729', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '956', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10360, 0, 0, 120, 0, '1179.8897', '-1233.3894', '22.1406', 0, 0, '2624.6248', '-2717.2712', '2197.6729', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '957', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10361, 0, 0, 70, 0, '2795.0136', '-2152.4565', '2997.7946', 14, 12272035, '2191.4004', '-1666.3376', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10362, 0, 0, 70, 0, '2796.9394', '-2147.7011', '2997.7946', 14, 12272035, '2191.3071', '-1666.2787', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10363, 0, 0, 70, 0, '2792.6494', '-2144.9743', '2997.7946', 14, 12272035, '2191.3071', '-1666.2787', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10364, 0, 0, 70, 0, '2790.4838', '-2143.4875', '2997.7946', 14, 12272035, '2191.3071', '-1666.2787', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10365, 0, 0, 70, 0, '2796.0708', '-2142.6552', '2997.7946', 14, 12272035, '2191.3071', '-1666.2787', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10366, 0, 0, 70, 0, '2799.5395', '-2142.6538', '2997.7946', 14, 12272035, '2191.3071', '-1666.2787', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10367, 0, 0, 70, 0, '2802.1196', '-2144.2980', '2997.7946', 14, 12272035, '2191.3071', '-1666.2787', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10368, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '08', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10369, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '09', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10370, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '10', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10371, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '11', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10372, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '12', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10373, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '13', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10374, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '14', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10375, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '15', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10376, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '16', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10377, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '17', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10378, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '18', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10380, 0, 0, 120, 0, '-1339.6126', '-1065.2625', '3174.8439', 20, 17764575, '2618.4951', '-1815.9369', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '101', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10381, 0, 0, 120, 0, '-1335.0656', '-1063.0462', '3174.8640', 20, 17764575, '2618.4951', '-1815.9369', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '102', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10382, 0, 0, 120, 0, '-1339.4497', '-1060.6403', '3174.8439', 20, 17764575, '2618.4951', '-1815.9369', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '103', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10383, 0, 0, 120, 0, '-1350.5489', '-1065.2615', '3174.8439', 20, 17764575, '2618.4951', '-1815.9369', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '104', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10384, 0, 0, 120, 0, '-1356.8969', '-1065.2633', '3174.8439', 20, 17764575, '2178.3364', '-667.4034', '441.8998', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '105', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10385, 0, 0, 120, 0, '-1361.4000', '-1063.0245', '3174.8640', 20, 17764575, '2178.3364', '-667.4034', '441.8998', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '106', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10386, 0, 0, 120, 0, '-1357.1019', '-1060.6392', '3174.8439', 20, 17764575, '2178.3364', '-667.4034', '441.8998', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '107', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10387, 0, 0, 120, 0, '-1357.1024', '-1060.6453', '3171.2829', 20, 17764575, '2178.3364', '-667.4034', '441.8998', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '108', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10388, 0, 0, 120, 0, '-1361.3995', '-1062.8785', '3171.3049', 20, 17764575, '2178.3364', '-667.4034', '441.8998', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '109', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10389, 0, 0, 120, 0, '-1357.0910', '-1065.2404', '3171.2829', 20, 17764575, '2178.3364', '-667.4034', '441.8998', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '110', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10390, 0, 0, 120, 0, '-1350.5856', '-1065.2647', '3171.2829', 20, 17764575, '722.7178', '-1427.7672', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '111', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10391, 0, 0, 120, 0, '-1343.2131', '-1065.2644', '3171.2829', 20, 17764575, '722.7178', '-1427.7672', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '112', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10392, 0, 0, 120, 0, '-1335.0633', '-1062.9846', '3171.3049', 20, 17764575, '722.7178', '-1427.7672', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '113', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10393, 0, 0, 120, 0, '-1340.6904', '-1060.6380', '3171.2829', 20, 17764575, '722.7178', '-1427.7672', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '114', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10395, 0, 0, 120, 0, '2532.3713', '464.6985', '3315.5659', 21, 14939626, '2618.6882', '-1816.4734', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '851', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10396, 0, 0, 120, 0, '2532.3715', '469.0083', '3315.5659', 21, 14939626, '2618.6882', '-1816.4734', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '852', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10397, 0, 0, 120, 0, '2533.7102', '473.4378', '3315.5739', 21, 14939626, '2618.6882', '-1816.4734', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '853', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10398, 0, 0, 120, 0, '2542.6140', '473.4393', '3315.5739', 21, 14939626, '2618.6882', '-1816.4734', '616.5299', 13, 0, 1, 2, 0, 1496236639, 0, 0, 0, 0, '854', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10399, 0, 0, 120, 0, '2543.5844', '469.1131', '3315.5749', 21, 14939626, '2618.6882', '-1816.4734', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '855', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10400, 0, 0, 120, 0, '2543.5844', '464.4999', '3315.5749', 21, 14939626, '2618.6882', '-1816.4734', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '856', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10401, 0, 0, 120, 0, '2542.5498', '461.6238', '3315.5810', 21, 14939626, '2618.6882', '-1816.4734', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '857', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10402, 0, 0, 120, 0, '2542.0766', '471.6742', '3319.1569', 21, 14939626, '2618.6882', '-1816.4734', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '858', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10403, 0, 0, 120, 0, '2543.3293', '468.4207', '3319.1440', 21, 14939626, '721.6775', '-1428.2374', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '859', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10404, 0, 0, 120, 0, '2543.3278', '464.2098', '3319.1440', 21, 14939626, '721.6775', '-1428.2374', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '860', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10405, 0, 0, 120, 0, '2542.0080', '459.7199', '3319.1508', 21, 14939626, '721.6775', '-1428.2374', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '861', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10406, 0, 0, 120, 0, '2533.1191', '459.7239', '3319.1508', 21, 14939626, '721.6775', '-1428.2374', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '862', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10407, 0, 0, 120, 0, '2532.0495', '464.3668', '3319.1508', 21, 14939626, '721.6775', '-1428.2374', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '863', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10408, 0, 0, 120, 0, '2532.0466', '468.4671', '3319.1508', 21, 14939626, '721.6775', '-1428.2374', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '864', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10409, 0, 0, 120, 0, '2533.1904', '471.6845', '3319.1569', 21, 14939626, '721.6775', '-1428.2374', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '865', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10410, 0, 0, 120, 0, '2534.8413', '469.4848', '3322.5749', 21, 14939626, '721.6775', '-1428.2374', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '866', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10411, 0, 0, 120, 0, '2542.3762', '461.6205', '3315.5810', 21, 14055209, '722.1766', '-1428.1279', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '101', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10412, 0, 0, 120, 0, '2543.5830', '464.5780', '3315.5749', 21, 14055209, '722.1766', '-1428.1279', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '102', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10413, 0, 0, 120, 0, '2543.5815', '469.2010', '3315.5749', 21, 14055209, '722.1766', '-1428.1279', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '103', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10414, 0, 0, 120, 0, '2542.5810', '473.4364', '3315.5739', 21, 14055209, '722.1766', '-1428.1279', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '104', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10415, 0, 0, 120, 0, '2533.6418', '473.4331', '3315.5739', 21, 14055209, '722.1766', '-1428.1279', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '105', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10416, 0, 0, 120, 0, '2532.3725', '469.1074', '3315.5659', 21, 14055209, '2178.3230', '-667.2683', '441.8998', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '106', 0, 0, 0, 3, 1453293323, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10417, 0, 0, 120, 0, '2532.3728', '464.5341', '3315.5739', 21, 14055209, '2178.3230', '-667.2683', '441.8998', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '107', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10418, 0, 0, 120, 0, '2533.7067', '461.6231', '3315.5810', 21, 14055209, '2178.3230', '-667.2683', '441.8998', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '108', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10419, 0, 0, 120, 0, '2533.1655', '471.6770', '3319.1569', 21, 14055209, '2178.3230', '-667.2683', '441.8998', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '109', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10420, 0, 0, 120, 0, '2532.0529', '468.4001', '3319.1508', 21, 14055209, '2178.3230', '-667.2683', '441.8998', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '110', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10421, 0, 0, 120, 0, '2532.0473', '464.2789', '3319.1508', 21, 14055209, '2618.5625', '-1815.6836', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '111', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10422, 0, 0, 120, 0, '2533.1796', '459.7255', '3319.1508', 21, 14055209, '2618.5625', '-1815.6836', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '112', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10423, 0, 0, 120, 0, '2542.0895', '459.7225', '3319.1508', 21, 14055209, '2618.5625', '-1815.6836', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '113', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1484835394, 1484835394, 1484835394, 1484835394, 1484835394, 0),
(10424, 0, 0, 120, 0, '2543.3281', '464.3276', '3319.1440', 21, 14055209, '2618.5625', '-1815.6836', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '114', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10425, 0, 0, 120, 0, '2543.3281', '468.5917', '3319.1440', 21, 14055209, '722.1432', '-1428.1567', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '115', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10426, 0, 0, 120, 0, '2541.9970', '471.6736', '3319.1569', 21, 14055209, '722.1432', '-1428.1567', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '116', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10427, 0, 0, 70, 0, '2336.8776', '-1188.6746', '4199.2089', 17, 13920946, '1843.5322', '-2361.4614', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10428, 0, 0, 70, 0, '2331.6997', '-1183.9255', '4199.2089', 17, 13920946, '2191.1838', '-1666.1614', '2501.0859', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10429, 0, 0, 70, 0, '2335.0773', '-1179.1799', '4199.2089', 17, 13920946, '1843.5322', '-2361.4614', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10430, 0, 0, 70, 0, '2335.9079', '-1174.1226', '4199.2089', 17, 13920946, '2191.1838', '-1666.1614', '2501.0859', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10431, 0, 0, 70, 0, '2341.4926', '-1174.1188', '4199.2089', 17, 13920946, '1843.7668', '-2361.7307', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10432, 0, 0, 70, 0, '2345.1657', '-1175.1094', '4199.2089', 17, 13920946, '2259.7292', '-1136.0010', '1050.6328', 10, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10434, 0, 0, 70, 0, '2336.8776', '-1188.6241', '4199.2089', 17, 16368005, '244.1777', '305.3949', '999.1484', 1, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10435, 0, 0, 70, 0, '2331.6611', '-1183.9222', '4199.2089', 17, 16368005, '2191.8442', '-1666.4675', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10436, 0, 0, 70, 0, '2335.0783', '-1179.2235', '4199.2089', 17, 16368005, '2191.8442', '-1666.4675', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10437, 0, 0, 70, 0, '2335.7817', '-1174.1425', '4199.2089', 17, 16368005, '1843.6591', '-2361.0464', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10438, 0, 0, 70, 0, '2341.4970', '-1174.1170', '4199.2089', 17, 16368005, '1843.6591', '-2361.0464', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10439, 0, 0, 70, 0, '2345.1640', '-1175.0965', '4199.2089', 17, 16368005, '244.1777', '305.3949', '999.1484', 1, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10440, 0, 0, 0, 0, '962.2621', '1381.8442', '2498.0629', 21, 18158891, '1715.5004', '-879.8755', '8001.0859', 1, 1, 2, 5, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10441, 0, 0, 70, 0, '956.1994', '1382.3339', '2498.0629', 21, 18158891, '2191.2971', '-1666.3610', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10442, 0, 0, 70, 0, '956.1935', '1378.8508', '2498.0629', 21, 18158891, '2191.2971', '-1666.3610', '2501.0869', 14, 0, 1, 5, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10443, 0, 0, 70, 0, '956.1942', '1375.2102', '2498.0629', 21, 18158891, '2191.2971', '-1666.3610', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10444, 0, 0, 70, 0, '956.1937', '1371.1666', '2498.0629', 21, 18158891, '223.0601', '1287.4556', '1082.1406', 1, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10445, 0, 0, 70, 0, '962.2656', '1371.6544', '2498.0629', 21, 18158891, '223.0601', '1287.4556', '1082.1406', 1, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10446, 0, 0, 70, 0, '962.2504', '1382.0018', '2498.0629', 21, 10965728, '1843.6353', '-2360.8940', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10447, 0, 0, 70, 0, '956.1942', '1382.3664', '2498.0629', 21, 10965728, '1843.6353', '-2360.8940', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10448, 0, 0, 70, 0, '956.1985', '1378.9245', '2498.0629', 21, 10965728, '1843.6353', '-2360.8940', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10449, 0, 0, 70, 0, '956.1938', '1375.2000', '2498.0629', 21, 10965728, '2191.4983', '-1666.6262', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1484835394, 0, 0, 0, 0, 0),
(10450, 0, 0, 70, 0, '956.1972', '1371.1618', '2498.0629', 21, 10965728, '2191.4983', '-1666.6262', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10451, 0, 0, 70, 0, '962.2649', '1371.6237', '2498.0629', 21, 10965728, '2191.4983', '-1666.6262', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10452, 0, 0, 70, 0, '1612.8886', '63.7190', '1009.7699', 14, 14840176, '1843.6914', '-2361.2224', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10453, 0, 0, 0, 0, '1617.5983', '63.6995', '1009.7699', 14, 14840176, '260.7716', '1285.0774', '2080.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 50, 0, 45, 0, 0, 0, 0, 0, 1484835394, 1484835394, 1484835394, 0, 0, 0),
(10454, 0, 0, 70, 0, '1617.7132', '55.4089', '1009.7699', 14, 14840176, '1843.6914', '-2361.2224', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10455, 0, 0, 70, 0, '1612.8800', '55.2329', '1009.7699', 14, 14840176, '1843.6914', '-2361.2224', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10456, 0, 0, 70, 0, '1615.4552', '60.9894', '1005.3789', 14, 14840176, '1843.6914', '-2361.2224', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10457, 0, 0, 70, 0, '1611.4418', '60.9881', '1005.3789', 14, 14840176, '1843.6914', '-2361.2224', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10458, 0, 0, 70, 0, '1611.3569', '65.9745', '1005.3789', 14, 14840176, '1843.6914', '-2361.2224', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10459, 0, 0, 70, 0, '1612.8839', '63.7194', '1009.7699', 14, 15260254, '1843.8389', '-2360.8237', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10460, 0, 0, 70, 0, '1617.6014', '63.6997', '1009.7699', 14, 15260254, '1843.8389', '-2360.8237', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10461, 0, 0, 70, 0, '1617.6103', '55.2325', '1009.7699', 14, 15260254, '1843.8389', '-2360.8237', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10462, 0, 0, 70, 0, '1612.9294', '55.2325', '1009.7699', 14, 15260254, '1843.8389', '-2360.8237', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10463, 0, 0, 70, 0, '1615.3811', '60.9910', '1005.3789', 14, 15260254, '1843.8389', '-2360.8237', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10464, 0, 0, 70, 0, '1611.4260', '60.9885', '1005.3789', 14, 15260254, '1843.8389', '-2360.8237', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10465, 0, 0, 70, 0, '1611.3621', '65.9579', '1005.3789', 14, 15260254, '1843.8389', '-2360.8237', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10466, 0, 0, 70, 0, '501.8672', '1753.0028', '5801.0859', 12, 17761866, '2191.4141', '-1665.9165', '2501.0859', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `houses` (`Hid`, `Owner`, `Renter`, `RentPrice`, `Caisse`, `OutX`, `OutY`, `OutZ`, `OutInt`, `OutWorld`, `InX`, `InY`, `InZ`, `InInt`, `Open`, `Type`, `MaxInvits`, `Trash`, `Removing`, `RemovPlayer`, `Price`, `Frigo`, `Poub`, `Title`, `Kit`, `Grammes`, `TimeCanna`, `Meth`, `TimeMeth`, `Matos`, `Essence`, `Kit1`, `Kit2`, `Kit3`, `Kit4`, `Kit5`, `Kit6`, `Kit7`, `Kit8`, `Kit9`, `Kit10`, `Kit11`, `Kit12`, `Kit13`, `Kit14`, `Kit15`, `Kit16`, `Kit17`, `Kit18`, `Kit19`, `Kit20`, `Kit21`, `Kit22`, `Kit23`, `Kit24`, `Kit25`, `Kit26`, `Kit27`, `Kit28`, `Kit29`, `Kit30`, `gMeth`, `gCoke`, `gHero`, `gStero`, `gCanna`, `Autoriz`, `PlacementActor`, `LastBraquo`, `Braquable`, `Contrebande`, `TDrugCanna`, `TDrugCoke`, `TDrugHero`, `TDrugMeth`, `TDrugStero`, `CoffreFurn`) VALUES
(10467, 0, 0, 70, 0, '506.5575', '1762.5599', '5801.0859', 12, 17761866, '2191.4141', '-1665.9165', '2501.0859', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10468, 0, 0, 70, 0, '515.4923', '1756.8579', '5801.0859', 12, 17761866, '2191.4141', '-1665.9165', '2501.0859', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10469, 0, 0, 70, 0, '515.5703', '1761.8203', '5801.0859', 12, 17761866, '2191.4141', '-1665.9165', '2501.0859', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10470, 0, 0, 70, 0, '513.4505', '1763.1623', '5801.0859', 12, 17761866, '1843.7058', '-2360.9634', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10471, 0, 0, 70, 0, '509.3258', '1763.1616', '5801.0859', 12, 17761866, '1843.7058', '-2360.9634', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10472, 0, 0, 70, 0, '507.0128', '1752.7020', '5801.0859', 12, 17761866, '1843.7058', '-2360.9634', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10473, 0, 0, 70, 0, '507.0146', '1749.0241', '5801.0859', 12, 17761866, '223.2837', '1287.6509', '1082.1406', 1, 0, 1, 2, 0, 0, 0, 0, 0, 0, '08', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10474, 0, 0, 70, 0, '505.5524', '1745.0971', '5801.0859', 12, 17761866, '223.2837', '1287.6509', '1082.1406', 1, 0, 1, 2, 0, 0, 0, 0, 0, 0, '09', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10475, 0, 0, 70, 0, '510.1136', '1745.0964', '5801.0859', 12, 17761866, '223.2837', '1287.6509', '1082.1406', 1, 0, 1, 2, 0, 0, 0, 0, 0, 0, '10', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10476, 0, 0, 70, 0, '513.2519', '1746.2387', '5801.0859', 12, 17761866, '244.1090', '304.8052', '999.1484', 1, 0, 1, 2, 0, 0, 0, 0, 0, 0, '11', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10477, 0, 0, 70, 0, '2336.8779', '-1188.8294', '4199.2089', 17, 13481960, '2191.3101', '-1666.2565', '2501.0869', 14, 0, 1, 2, 0, 1495904896, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10478, 0, 0, 70, 0, '2331.7116', '-1183.9216', '4199.2089', 17, 13481960, '1843.5735', '-2360.9819', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10479, 0, 0, 70, 0, '2335.0786', '-1179.1452', '4199.2089', 17, 13481960, '244.0701', '305.0360', '999.1484', 1, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10480, 0, 0, 70, 0, '2335.8369', '-1174.1308', '4199.2089', 17, 13481960, '244.0701', '305.0360', '999.1484', 1, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10481, 0, 0, 70, 0, '2341.5246', '-1174.1159', '4199.2089', 17, 13481960, '1843.5735', '-2360.9819', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10482, 0, 0, 70, 0, '2345.1647', '-1175.0689', '4199.2089', 17, 13481960, '2191.3101', '-1666.2565', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10483, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '750', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10484, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '751', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10485, 0, 0, 70, 0, '2788.4995', '-2148.9416', '3000.9729', 15, 32771, '1843.2603', '-2361.0300', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '752', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10486, 0, 0, 70, 0, '2783.9379', '-2148.8486', '3000.9819', 15, 32771, '1843.2603', '-2361.0300', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '753', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10487, 0, 0, 70, 0, '2795.0126', '-2152.5029', '2997.7946', 15, 32771, '1843.2603', '-2361.0300', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '754', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10488, 0, 0, 70, 0, '2796.9399', '-2147.7307', '2997.7946', 15, 32771, '1843.2603', '-2361.0300', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '755', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10489, 0, 0, 70, 0, '2792.2297', '-2144.9741', '2997.7946', 15, 32771, '1843.2603', '-2361.0300', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '756', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10490, 0, 0, 70, 0, '2790.4826', '-2143.8232', '2997.7946', 15, 32771, '1843.2603', '-2361.0300', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '757', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10491, 0, 0, 70, 0, '2792.2895', '-2142.6611', '2997.7946', 15, 32771, '1843.2603', '-2361.0300', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '758', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10492, 0, 0, 70, 0, '2796.2634', '-2142.6540', '2997.7946', 15, 32771, '1843.2603', '-2361.0300', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '759', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10493, 0, 0, 70, 0, '2799.6918', '-2142.6557', '2997.7946', 15, 32771, '1843.2603', '-2361.0300', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '760', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10494, 0, 0, 70, 0, '2802.1201', '-2143.9001', '2997.7946', 15, 32771, '722.2617', '-1428.4601', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '761', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10495, 0, 0, 70, 0, '2799.6855', '-2144.9743', '2997.7946', 15, 32771, '1843.2603', '-2361.0300', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '762', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10496, 0, 0, 70, 0, '2783.9377', '-2158.6093', '3000.9819', 15, 32771, '2191.8445', '-1666.3646', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '763', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10497, 0, 0, 70, 0, '2783.9394', '-2148.9067', '3005.1127', 15, 32771, '2191.8445', '-1666.3646', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '764', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10498, 0, 0, 70, 0, '2788.4992', '-2148.8215', '3005.1127', 15, 32771, '2191.8445', '-1666.3646', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '765', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10499, 0, 0, 70, 0, '2788.4997', '-2158.7531', '3005.1040', 15, 32771, '2191.8445', '-1666.3646', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '766', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10501, 0, 0, 70, 0, '2783.9372', '-2148.9628', '3009.2438', 15, 32771, '2191.8445', '-1666.3646', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '768', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10502, 0, 0, 70, 0, '2788.4992', '-2149.0231', '3009.2507', 15, 32771, '2191.8445', '-1666.3646', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '769', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10503, 0, 0, 70, 0, '2788.4997', '-2158.6328', '3009.2507', 15, 32771, '2191.8445', '-1666.3646', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '770', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10504, 0, 0, 70, 0, '2783.9382', '-2158.6140', '3009.2429', 15, 32771, '2191.8445', '-1666.3646', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '771', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10505, 0, 0, 70, 0, '2783.9379', '-2158.5671', '3009.2429', 15, 32769, '2191.8445', '-1666.3687', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '967', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10506, 0, 0, 70, 0, '2783.9372', '-2148.9023', '3000.9819', 15, 32769, '2191.8445', '-1666.3687', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '950', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10507, 0, 0, 70, 0, '2788.4970', '-2148.8220', '3000.9729', 15, 32769, '2191.8445', '-1666.3687', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '951', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10508, 0, 0, 70, 0, '2795.0148', '-2152.5324', '2997.7946', 15, 32769, '2191.8445', '-1666.3687', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '952', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10509, 0, 0, 70, 0, '2796.9401', '-2147.6157', '2997.7946', 15, 32769, '2191.8445', '-1666.3687', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '953', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10510, 0, 0, 70, 0, '2790.5000', '-2143.7392', '2997.7946', 15, 32769, '2191.8445', '-1666.3687', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '954', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10511, 0, 0, 70, 0, '2792.2392', '-2144.9733', '2997.7946', 15, 32769, '2191.8445', '-1666.3687', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '955', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10512, 0, 0, 70, 0, '2792.4377', '-2142.6635', '2997.7946', 15, 32769, '2191.8445', '-1666.3687', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '956', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10513, 0, 0, 70, 0, '2796.1545', '-2142.6564', '2997.7946', 15, 32769, '2191.8445', '-1666.3687', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '957', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10514, 0, 0, 70, 0, '2799.6442', '-2142.6560', '2997.7946', 15, 32769, '2191.8445', '-1666.3687', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '958', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10515, 0, 0, 70, 0, '2802.1164', '-2143.7973', '2997.7946', 15, 32769, '2191.8445', '-1666.3687', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '959', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10516, 0, 0, 70, 0, '2799.5729', '-2144.9694', '2997.7946', 15, 32769, '721.6772', '-1428.2178', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '960', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10517, 0, 0, 70, 0, '2783.9382', '-2158.6638', '3000.9819', 15, 32769, '721.6772', '-1428.2178', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '961', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10518, 0, 0, 70, 0, '2783.9372', '-2148.9377', '3005.1127', 15, 32769, '721.6772', '-1428.2178', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '962', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10519, 0, 0, 70, 0, '2788.4985', '-2149.0480', '3005.1127', 15, 32769, '721.6772', '-1428.2178', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '963', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10520, 0, 0, 70, 0, '2788.4995', '-2158.5378', '3005.1127', 15, 32769, '721.6772', '-1428.2178', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '964', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10521, 0, 0, 70, 0, '2783.9379', '-2158.4250', '3005.1127', 15, 32769, '721.6772', '-1428.2178', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '965', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10522, 0, 0, 70, 0, '2783.9372', '-2148.8317', '3009.2438', 15, 32769, '721.6772', '-1428.2178', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '966', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10523, 0, 0, 70, 0, '2788.4992', '-2149.0659', '3009.2507', 15, 32769, '721.6772', '-1428.2178', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '967', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10524, 0, 0, 70, 0, '2788.4990', '-2158.5512', '3009.2507', 15, 32769, '721.6772', '-1428.2178', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '968', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10525, 0, 0, 70, 0, '2788.4995', '-2148.8576', '3000.9729', 16, 14981919, '721.6772', '-1428.2178', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '651', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10526, 0, 0, 70, 0, '2783.9372', '-2148.9145', '3000.9819', 16, 14981919, '721.6772', '-1428.2178', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '650', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10527, 0, 0, 70, 0, '2795.0126', '-2152.4755', '2997.7946', 16, 14981919, '1843.2601', '-2361.0007', '2486.6169', 13, 1, 1, 2, 0, 0, 0, 0, 0, 0, '652', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10528, 0, 0, 70, 0, '2796.9389', '-2147.7226', '2997.7946', 16, 14981919, '1843.2601', '-2361.0007', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '653', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10529, 0, 0, 70, 0, '2792.1435', '-2144.9733', '2997.7946', 16, 14981919, '1843.2601', '-2361.0007', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '654', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10530, 0, 0, 70, 0, '2790.4875', '-2143.7805', '2997.7946', 16, 14981919, '1843.2601', '-2361.0007', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '655', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10531, 0, 0, 70, 0, '2792.3198', '-2142.6606', '2997.7946', 16, 14981919, '1843.2601', '-2361.0007', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '656', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10532, 0, 0, 70, 0, '2796.2624', '-2142.6542', '2997.7946', 16, 14981919, '1843.2601', '-2361.0007', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '657', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10533, 0, 0, 70, 0, '2799.7687', '-2142.6555', '2997.7946', 16, 14981919, '1843.2601', '-2361.0007', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '658', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10534, 0, 0, 70, 0, '2802.1203', '-2143.8308', '2997.7946', 16, 14981919, '1843.2601', '-2361.0007', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '659', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10535, 0, 0, 70, 0, '2799.6584', '-2144.9724', '2997.7946', 16, 14981919, '2191.8438', '-1666.4148', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '660', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10536, 0, 0, 70, 0, '2783.9406', '-2158.5927', '3000.9819', 16, 14981919, '2191.8438', '-1666.4148', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '661', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10537, 0, 0, 70, 0, '2783.9389', '-2148.9184', '3005.1127', 16, 14981919, '2191.8438', '-1666.4148', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '662', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10538, 0, 0, 70, 0, '2788.4992', '-2149.1071', '3005.1127', 16, 14981919, '2191.8438', '-1666.4148', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '663', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10539, 0, 0, 70, 0, '2788.4990', '-2158.5720', '3005.1127', 16, 14981919, '2191.8438', '-1666.4148', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '664', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10540, 0, 0, 70, 0, '2783.9372', '-2158.3933', '3005.1127', 16, 14981919, '2191.8438', '-1666.4148', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '665', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10541, 0, 0, 70, 0, '2783.9375', '-2148.8962', '3009.2438', 16, 14981919, '2191.8438', '-1666.4148', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '666', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10542, 0, 0, 70, 0, '2788.4987', '-2149.0512', '3009.2507', 16, 14981919, '2191.8438', '-1666.4148', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '667', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10543, 0, 0, 70, 0, '2788.4995', '-2158.7202', '3009.2507', 16, 14981919, '2191.8438', '-1666.4148', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '668', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10544, 0, 0, 70, 0, '2783.9372', '-2158.4868', '3009.2429', 16, 14981919, '2191.8438', '-1666.4148', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '669', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10546, 0, 0, 70, 0, '506.5040', '1762.5621', '5801.0859', 12, 14184242, '2191.0408', '-1666.3243', '2501.0859', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10547, 0, 0, 70, 0, '515.4801', '1756.9305', '5801.0859', 12, 14184242, '2191.0408', '-1666.3243', '2501.0859', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10548, 0, 0, 70, 0, '515.5710', '1761.8062', '5801.0859', 12, 14184242, '2191.0408', '-1666.3243', '2501.0859', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10549, 0, 0, 70, 0, '513.4743', '1763.1623', '5801.0859', 12, 14184242, '2191.0408', '-1666.3243', '2501.0859', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10550, 0, 0, 70, 0, '509.3759', '1763.1580', '5801.0859', 12, 14184242, '2191.0408', '-1666.3243', '2501.0859', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10551, 0, 0, 70, 0, '507.0159', '1752.6345', '5801.0859', 12, 14184242, '1843.6924', '-2361.0305', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 10, 1459021234, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10552, 0, 0, 70, 0, '507.0129', '1748.9624', '5801.0859', 12, 14184242, '1843.6924', '-2361.0305', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '08', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10553, 0, 0, 70, 0, '505.6128', '1745.0931', '5801.0859', 12, 14184242, '1843.6924', '-2361.0305', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '09', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10554, 0, 0, 70, 0, '510.1520', '1745.0943', '5801.0859', 12, 14184242, '1843.6924', '-2361.0305', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '10', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10555, 0, 0, 70, 0, '513.2556', '1746.1673', '5801.0859', 12, 14184242, '1843.6924', '-2361.0305', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '11', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10558, 0, 0, 70, 0, '239.7967', '1740.6164', '3001.0000', 22, 10316471, '1843.6288', '-2360.9688', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10560, 0, 0, 70, 0, '239.7649', '1744.0640', '3001.0000', 22, 10316471, '1843.6288', '-2360.9688', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10561, 0, 0, 70, 0, '242.2342', '1745.7014', '3001.0000', 22, 10316471, '1843.6288', '-2360.9688', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10562, 0, 0, 70, 0, '245.0959', '1744.2855', '3001.0000', 22, 10316471, '1843.6288', '-2360.9688', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10563, 0, 0, 70, 0, '241.8568', '1736.0598', '3001.0000', 22, 18475382, '2191.3628', '-1666.3098', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10565, 0, 0, 70, 0, '239.7989', '1740.6557', '3001.0000', 22, 18475382, '2191.3628', '-1666.3098', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10567, 0, 0, 70, 0, '239.7648', '1744.0577', '3001.0000', 22, 18475382, '2191.3628', '-1666.3098', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10568, 0, 0, 70, 0, '242.4154', '1745.7011', '3001.0000', 22, 18475382, '2191.3628', '-1666.3098', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10569, 0, 0, 70, 0, '245.0937', '1744.2403', '3001.0000', 22, 18475382, '2191.3628', '-1666.3098', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10570, 0, 0, 100, 0, '2783.9379', '-2148.9226', '3000.9819', 15, 32776, '2178.6780', '-667.7593', '441.8998', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10571, 0, 0, 100, 0, '2788.4990', '-2148.9208', '3000.9729', 15, 32776, '2178.6780', '-667.7593', '441.8998', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10572, 0, 0, 100, 0, '2795.0129', '-2152.5378', '2997.7946', 15, 32776, '2178.6780', '-667.7593', '441.8998', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 10, 1463190709, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10573, 0, 0, 100, 0, '2796.9392', '-2147.7055', '2997.7946', 15, 32776, '2178.6780', '-667.7593', '441.8998', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10574, 0, 0, 100, 0, '2792.2370', '-2144.9746', '2997.7946', 15, 32776, '2178.6780', '-667.7593', '441.8998', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10575, 0, 0, 100, 0, '2790.4826', '-2143.8237', '2997.7946', 15, 32776, '2178.6780', '-667.7593', '441.8998', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1484835394, 1484835394, 0, 0, 1484835394, 0),
(10576, 0, 0, 100, 0, '2792.2739', '-2142.6606', '2997.7946', 15, 32776, '2178.6780', '-667.7593', '441.8998', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10577, 0, 0, 100, 0, '2796.1906', '-2142.6569', '2997.7946', 15, 32776, '2178.6780', '-667.7593', '441.8998', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '08', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10578, 0, 0, 100, 0, '2799.7128', '-2142.6538', '2997.7946', 15, 32776, '2178.6780', '-667.7593', '441.8998', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '09', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10579, 0, 0, 100, 0, '2802.1203', '-2143.8681', '2997.7946', 15, 32776, '2618.6179', '-1816.4714', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '10', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10580, 0, 0, 100, 0, '2799.6718', '-2144.9738', '2997.7946', 15, 32776, '2618.6179', '-1816.4714', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '11', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10581, 0, 0, 100, 0, '2783.9379', '-2158.4980', '3000.9819', 15, 32776, '2618.6179', '-1816.4714', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '12', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10582, 0, 0, 100, 0, '2783.9372', '-2148.8879', '3005.1127', 15, 32776, '2618.6179', '-1816.4714', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '13', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10583, 0, 0, 100, 0, '2788.4980', '-2148.8967', '3005.1127', 15, 32776, '2618.6179', '-1816.4714', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '14', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10584, 0, 0, 100, 0, '2788.4997', '-2158.6127', '3005.1127', 15, 32776, '2618.6179', '-1816.4714', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '15', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10585, 0, 0, 100, 0, '2783.9372', '-2158.4650', '3005.1127', 15, 32776, '2618.6179', '-1816.4714', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '16', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10586, 0, 0, 100, 0, '2783.9382', '-2148.9294', '3009.2438', 15, 32776, '2618.6179', '-1816.4714', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '17', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10587, 0, 0, 100, 0, '2788.4985', '-2148.9851', '3009.2507', 15, 32776, '2618.6179', '-1816.4714', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '18', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10588, 0, 0, 100, 0, '2788.4995', '-2158.6960', '3009.2507', 15, 32776, '2618.6179', '-1816.4714', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '19', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10589, 0, 0, 100, 0, '2783.9382', '-2158.6281', '3009.2429', 15, 32776, '2618.6179', '-1816.4714', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '20', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10590, 0, 0, 200, 0, '2533.5983', '461.6204', '3315.5810', 21, 12685219, '2618.6958', '-1816.4731', '616.5299', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10591, 0, 0, 200, 0, '2532.3713', '464.6056', '3315.5739', 21, 12685219, '2618.6958', '-1816.4731', '616.5299', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10592, 0, 0, 200, 0, '2532.3713', '469.1252', '3315.5659', 21, 12685219, '2618.6958', '-1816.4731', '616.5299', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10593, 0, 0, 200, 0, '2533.6838', '473.4389', '3315.5739', 21, 12685219, '2618.6958', '-1816.4731', '616.5299', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10594, 0, 0, 200, 0, '2542.6242', '473.4341', '3315.5739', 21, 12685219, '2618.6958', '-1816.4731', '616.5299', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10595, 0, 0, 200, 0, '2543.5842', '469.0575', '3315.5749', 21, 12685219, '2618.6958', '-1816.4731', '616.5299', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10596, 0, 0, 200, 0, '2543.5842', '464.5879', '3315.5749', 21, 12685219, '2618.6958', '-1816.4731', '616.5299', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10597, 0, 0, 200, 0, '2542.4250', '461.6197', '3315.5810', 21, 12685219, '2618.6958', '-1816.4731', '616.5299', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '08', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10598, 0, 0, 200, 0, '2542.0632', '471.6762', '3319.1569', 21, 12685219, '2618.6958', '-1816.4731', '616.5299', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '09', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10599, 0, 0, 200, 0, '2543.3291', '468.4922', '3319.1440', 21, 12685219, '2618.6958', '-1816.4731', '616.5299', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '10', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10600, 0, 0, 200, 0, '2543.3293', '464.1651', '3319.1440', 21, 12685219, '2618.6958', '-1816.4731', '616.5299', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '11', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10601, 0, 0, 200, 0, '2542.0021', '459.7198', '3319.1508', 21, 12685219, '2624.6248', '-2717.2729', '2197.6729', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '12', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10602, 0, 0, 200, 0, '2533.1560', '459.7238', '3319.1508', 21, 12685219, '2624.6248', '-2717.2729', '2197.6729', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '13', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10603, 0, 0, 200, 0, '2532.0466', '464.3351', '3319.1508', 21, 12685219, '2624.6248', '-2717.2729', '2197.6729', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '14', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10604, 0, 0, 200, 0, '2532.0468', '468.3872', '3319.1508', 21, 12685219, '2624.6248', '-2717.2729', '2197.6729', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '15', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10605, 0, 0, 200, 0, '2533.1662', '471.6853', '3319.1569', 21, 12685219, '2624.6248', '-2717.2729', '2197.6729', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '16', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10606, 0, 0, 200, 0, '2534.8413', '469.4645', '3322.5749', 21, 12685219, '2624.6248', '-2717.2729', '2197.6729', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '17', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10607, 0, 0, 70, 0, '2336.8757', '-1188.6776', '4199.2089', 17, 15096141, '1843.2605', '-2361.0715', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10608, 0, 0, 70, 0, '2331.6547', '-1183.9226', '4199.2089', 17, 15096141, '1843.2605', '-2361.0715', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10609, 0, 0, 70, 0, '2335.0776', '-1179.1812', '4199.2089', 17, 15096141, '1843.2605', '-2361.0715', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10610, 0, 0, 70, 0, '2335.8967', '-1174.1204', '4199.2089', 17, 15096141, '2191.8442', '-1666.3430', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10611, 0, 0, 70, 0, '2341.5368', '-1174.1146', '4199.2089', 17, 15096141, '2191.8442', '-1666.3430', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10612, 0, 0, 70, 0, '2345.1662', '-1175.1112', '4199.2089', 17, 15096141, '2191.8442', '-1666.3430', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10613, 0, 0, 70, 0, '2336.8737', '-1188.6170', '4199.2089', 17, 10761008, '1843.2601', '-2361.0220', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10614, 0, 0, 70, 0, '2331.7287', '-1183.9221', '4199.2089', 17, 10761008, '1843.2601', '-2361.0220', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10615, 0, 0, 70, 0, '2335.0791', '-1179.0524', '4199.2089', 17, 10761008, '1843.2601', '-2361.0220', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10616, 0, 0, 70, 0, '2335.9331', '-1174.1209', '4199.2089', 17, 10761008, '2191.8433', '-1666.4128', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 0, 0, 70, 0, '2341.5292', '-1174.1143', '4199.2089', 17, 10761008, '2191.8433', '-1666.4128', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10618, 0, 0, 70, 0, '2345.1662', '-1175.1524', '4199.2089', 17, 10761008, '2191.8433', '-1666.4128', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10619, 0, 0, 120, 0, '1282.5029', '1281.9207', '2111.2509', 14, 16048179, '722.1185', '-1428.2356', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10620, 0, 0, 120, 0, '1278.0556', '1281.8946', '2111.2468', 14, 16048179, '722.1185', '-1428.2356', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10621, 0, 0, 120, 0, '1278.0550', '1273.4537', '2114.7600', 14, 16048179, '722.1185', '-1428.2356', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10622, 0, 0, 120, 0, '1282.5030', '1273.4407', '2114.7600', 14, 16048179, '722.1185', '-1428.2356', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10623, 0, 0, 120, 0, '1282.4924', '1281.9514', '2118.2438', 14, 16048179, '2618.8411', '-1815.9641', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10624, 0, 0, 120, 0, '1278.0603', '1281.8764', '2118.2438', 14, 16048179, '2618.8411', '-1815.9641', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10625, 0, 0, 120, 0, '1278.0572', '1273.4180', '2121.7399', 14, 16048179, '2618.8411', '-1815.9641', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10626, 0, 0, 120, 0, '1282.5012', '1273.4481', '2121.7390', 14, 16048179, '2178.6018', '-667.3688', '441.8998', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '08', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10627, 0, 0, 120, 0, '1282.5030', '1281.9779', '2125.2329', 14, 16048179, '2178.6018', '-667.3688', '441.8998', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '09', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10628, 0, 0, 120, 0, '1278.0572', '1281.9294', '2125.2290', 14, 16048179, '722.1185', '-1428.2356', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '10', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11578, 0, 0, 70, 0, '506.4799', '1762.5596', '5801.0859', 12, 10156544, '1843.6844', '-2361.3579', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `houses` (`Hid`, `Owner`, `Renter`, `RentPrice`, `Caisse`, `OutX`, `OutY`, `OutZ`, `OutInt`, `OutWorld`, `InX`, `InY`, `InZ`, `InInt`, `Open`, `Type`, `MaxInvits`, `Trash`, `Removing`, `RemovPlayer`, `Price`, `Frigo`, `Poub`, `Title`, `Kit`, `Grammes`, `TimeCanna`, `Meth`, `TimeMeth`, `Matos`, `Essence`, `Kit1`, `Kit2`, `Kit3`, `Kit4`, `Kit5`, `Kit6`, `Kit7`, `Kit8`, `Kit9`, `Kit10`, `Kit11`, `Kit12`, `Kit13`, `Kit14`, `Kit15`, `Kit16`, `Kit17`, `Kit18`, `Kit19`, `Kit20`, `Kit21`, `Kit22`, `Kit23`, `Kit24`, `Kit25`, `Kit26`, `Kit27`, `Kit28`, `Kit29`, `Kit30`, `gMeth`, `gCoke`, `gHero`, `gStero`, `gCanna`, `Autoriz`, `PlacementActor`, `LastBraquo`, `Braquable`, `Contrebande`, `TDrugCanna`, `TDrugCoke`, `TDrugHero`, `TDrugMeth`, `TDrugStero`, `CoffreFurn`) VALUES
(11579, 0, 0, 70, 0, '515.4929', '1756.9930', '5801.0859', 12, 10156544, '1843.6844', '-2361.3579', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11580, 0, 0, 70, 0, '515.5709', '1761.9270', '5801.0859', 12, 10156544, '1843.6844', '-2361.3579', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11581, 0, 0, 70, 0, '513.4263', '1763.1613', '5801.0859', 12, 10156544, '1843.6844', '-2361.3579', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11582, 0, 0, 70, 0, '509.5005', '1763.1623', '5801.0859', 12, 10156544, '2191.4399', '-1666.1584', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10635, 0, 0, 70, 0, '241.8545', '1736.0296', '3001.0000', 22, 14215565, '2191.8440', '-1666.3433', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1484835394, 0),
(10636, 0, 0, 70, 0, '241.8790', '1738.9355', '3001.0000', 22, 14215565, '2191.8440', '-1666.3433', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10637, 0, 0, 70, 0, '241.8779', '1742.2049', '3001.0000', 22, 14215565, '2191.8440', '-1666.3433', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10638, 0, 0, 70, 0, '239.7970', '1740.6339', '3001.0000', 22, 14215565, '2191.8440', '-1666.3433', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10639, 0, 0, 70, 0, '239.7630', '1743.9431', '3001.0000', 22, 14215565, '2191.8440', '-1666.3433', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10640, 0, 0, 70, 0, '242.3180', '1745.6998', '3001.0000', 22, 14215565, '2191.8440', '-1666.3433', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10641, 0, 0, 70, 0, '245.0953', '1744.2031', '3001.0000', 22, 14215565, '2191.8440', '-1666.3433', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10642, 0, 0, 70, 0, '241.8582', '1736.0092', '3001.0000', 22, 12462067, '2191.8445', '-1666.3440', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1484835394, 1484835394, 0, 0, 0),
(10643, 0, 0, 70, 0, '241.8816', '1739.0753', '3001.0000', 22, 12462067, '2191.8445', '-1666.3440', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10644, 0, 0, 70, 0, '241.8785', '1742.1506', '3001.0000', 22, 12462067, '2191.8445', '-1666.3440', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10645, 0, 0, 70, 0, '239.7986', '1740.5566', '3001.0000', 22, 12462067, '2191.8445', '-1666.3440', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10646, 0, 0, 70, 0, '239.7641', '1743.9862', '3001.0000', 22, 12462067, '2191.8445', '-1666.3440', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10647, 0, 0, 70, 0, '242.3975', '1745.7012', '3001.0000', 22, 12462067, '2191.8445', '-1666.3440', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10648, 0, 0, 70, 0, '245.0940', '1744.1729', '3001.0000', 22, 12462067, '2191.8445', '-1666.3440', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10649, 0, 0, 70, 0, '-160.9767', '2444.0246', '3001.0878', 14, 17622249, '2191.4719', '-1666.4713', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10650, 0, 0, 70, 0, '-152.3951', '2441.7087', '3001.0878', 14, 17622249, '2191.4719', '-1666.4713', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10651, 0, 0, 70, 0, '-152.3663', '2435.9724', '3001.0878', 14, 17622249, '2191.4719', '-1666.4713', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10652, 0, 0, 70, 0, '-160.9910', '2437.2763', '3001.0878', 14, 17622249, '2191.4719', '-1666.4713', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10653, 0, 0, 70, 0, '-152.8034', '2436.0979', '3004.6738', 14, 17622249, '2191.4719', '-1666.4713', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10654, 0, 0, 0, 0, '-152.7648', '2443.6835', '3004.6738', 14, 17622249, '-136.1843', '1050.0137', '2736.9688', 16, 0, 3, 2, 0, 0, 0, 0, 0, 0, '06', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10655, 0, 0, 70, 0, '-160.9731', '2443.9750', '3004.6738', 14, 17622249, '1843.5160', '-2361.7075', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10656, 0, 0, 70, 0, '-160.9910', '2437.2570', '3004.6738', 14, 17622249, '1843.5160', '-2361.7075', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '08', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10657, 0, 0, 70, 0, '-160.9744', '2443.9238', '3001.0878', 14, 13103500, '1843.6135', '-2360.7710', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10658, 0, 0, 70, 0, '-152.3954', '2441.7023', '3001.0878', 14, 13103500, '1843.6135', '-2360.7710', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1484835394, 1484835394, 1484835394, 0, 0, 0),
(10659, 0, 0, 70, 0, '-152.3683', '2435.9255', '3001.0878', 14, 13103500, '1843.6135', '-2360.7710', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10660, 0, 0, 70, 0, '-160.9276', '2437.2819', '3001.0878', 14, 13103500, '2191.5061', '-1666.5682', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10662, 0, 0, 70, 0, '-152.7648', '2443.6860', '3004.6738', 14, 13103500, '2191.5061', '-1666.5682', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10663, 0, 0, 70, 0, '-160.9766', '2443.9414', '3004.6738', 14, 13103500, '223.5638', '1287.4579', '1082.1406', 1, 0, 1, 2, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10664, 0, 0, 70, 0, '-160.9909', '2437.3125', '3004.6738', 14, 13103500, '244.1370', '304.5963', '999.1484', 1, 0, 1, 2, 0, 0, 0, 0, 0, 0, '08', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10665, 0, 0, 70, 0, '-160.9683', '2443.9587', '3001.0878', 14, 16061478, '1843.2598', '-2361.0786', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10666, 0, 0, 70, 0, '-160.9914', '2437.3996', '3001.0878', 14, 16061478, '1843.2598', '-2361.0786', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10667, 0, 0, 0, 0, '-152.3947', '2441.6252', '3001.0878', 14, 16061478, '1843.2598', '-2361.0786', '2486.6169', 13, 1, 0, 0, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10668, 0, 0, 70, 0, '-152.3669', '2436.0024', '3001.0878', 14, 16061478, '1843.2598', '-2361.0786', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10669, 0, 0, 70, 0, '-152.8056', '2435.7717', '3004.6738', 14, 16061478, '1843.2661', '-2361.0669', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10670, 0, 0, 70, 0, '-152.7648', '2443.6921', '3004.6738', 14, 16061478, '1843.2661', '-2361.0669', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10671, 0, 0, 70, 0, '-160.9759', '2444.0051', '3004.6738', 14, 16061478, '1843.2661', '-2361.0669', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10672, 0, 0, 70, 0, '-160.9916', '2437.2937', '3004.6738', 14, 16061478, '1843.2661', '-2361.0669', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '08', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10673, 0, 0, 70, 0, '1612.8055', '63.7179', '1009.7699', 14, 15495222, '1843.6774', '-2361.5344', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10674, 0, 0, 70, 0, '1617.6370', '63.6957', '1009.7699', 14, 15495222, '1843.6774', '-2361.5344', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10675, 0, 0, 70, 0, '1617.5710', '55.2335', '1009.7699', 14, 15495222, '1843.6774', '-2361.5344', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10676, 0, 0, 70, 0, '1612.8885', '55.2328', '1009.7699', 14, 15495222, '1843.6774', '-2361.5344', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10677, 0, 0, 70, 0, '1615.4279', '60.9886', '1005.3789', 14, 15495222, '1843.6774', '-2361.5344', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10678, 0, 0, 70, 0, '1611.4130', '60.9884', '1005.3789', 14, 15495222, '1843.6774', '-2361.5344', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10679, 0, 0, 70, 0, '1611.4013', '65.9755', '1005.3789', 14, 15495222, '1843.6774', '-2361.5344', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10680, 0, 0, 70, 0, '-160.9756', '2443.9289', '3001.0878', 14, 12121615, '2191.3269', '-1665.7605', '2501.0859', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10681, 0, 0, 70, 0, '-152.3948', '2441.7185', '3001.0878', 14, 12121615, '2191.3269', '-1665.7605', '2501.0859', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10682, 0, 0, 70, 0, '-152.3669', '2435.9707', '3001.0878', 14, 12121615, '2191.3269', '-1665.7605', '2501.0859', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10683, 0, 0, 70, 0, '-160.9895', '2437.1872', '3001.0878', 14, 12121615, '2191.3269', '-1665.7605', '2501.0859', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10684, 0, 0, 70, 0, '-152.8029', '2436.0095', '3004.6738', 14, 12121615, '2191.3269', '-1665.7605', '2501.0859', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11346, 0, 0, 0, 0, '2486.3430', '-1644.5749', '14.0771', 0, 0, '760.4396', '718.3600', '3501.0859', 16, 0, 3, 0, 0, 0, 0, 0, 0, 0, '190, Grove Street', 101, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10686, 0, 0, 70, 0, '-160.9766', '2444.0534', '3004.6738', 14, 12121615, '2259.7698', '-1135.9825', '1050.6328', 10, 0, 1, 2, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12428, 0, 0, 0, 0, '2170.8078', '-1830.4127', '16.1406', 0, 0, '760.5608', '718.6685', '3501.0859', 16, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'Trap House', 102, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10689, 0, 0, 70, 0, '2788.4982', '-2148.8857', '3000.9729', 14, 32775, '1843.2599', '-2361.0000', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '10', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10690, 0, 0, 70, 0, '2795.0126', '-2152.4978', '2997.7946', 14, 32775, '1843.2599', '-2361.0000', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10692, 0, 0, 70, 0, '2792.2592', '-2144.9743', '2997.7946', 14, 32775, '1843.2599', '-2361.0000', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10693, 0, 0, 70, 0, '2790.4833', '-2143.8793', '2997.7946', 14, 32775, '1843.2599', '-2361.0000', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10694, 0, 0, 70, 0, '2792.3437', '-2142.6606', '2997.7946', 14, 32775, '1843.2599', '-2361.0000', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10695, 0, 0, 70, 0, '2796.2026', '-2142.6538', '2997.7946', 14, 32775, '1843.2599', '-2361.0000', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10696, 0, 0, 70, 0, '2799.7204', '-2142.6540', '2997.7946', 14, 32775, '1843.2599', '-2361.0000', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10697, 0, 0, 70, 0, '2802.1201', '-2143.9902', '2997.7946', 14, 32775, '1843.2599', '-2361.0000', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '09', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10698, 0, 0, 70, 0, '2799.8447', '-2144.9736', '2997.7946', 14, 32775, '1843.2599', '-2361.0000', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '08', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10699, 0, 0, 70, 0, '2783.9372', '-2158.5595', '3000.9819', 14, 32775, '1843.2599', '-2361.0000', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '12', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10700, 0, 0, 70, 0, '2783.9377', '-2148.9467', '3005.1127', 14, 32775, '2191.8442', '-1666.4231', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '13', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10701, 0, 0, 70, 0, '2788.4990', '-2149.0280', '3005.1127', 14, 32775, '2191.8442', '-1666.4231', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '14', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10702, 0, 0, 70, 0, '2788.4995', '-2158.6213', '3005.1127', 14, 32775, '2191.8442', '-1666.4231', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '15', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10703, 0, 0, 70, 0, '2783.9372', '-2158.5405', '3005.1127', 14, 32775, '2191.8442', '-1666.4231', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '16', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10704, 0, 0, 70, 0, '2783.9372', '-2148.9128', '3009.2438', 14, 32775, '2191.8442', '-1666.4231', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '17', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10705, 0, 0, 70, 0, '2788.4992', '-2148.9145', '3009.2507', 14, 32775, '2191.8442', '-1666.4231', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '18', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10706, 0, 0, 70, 0, '2788.4997', '-2158.6342', '3009.2507', 14, 32775, '2191.8442', '-1666.4231', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '19', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10707, 0, 0, 70, 0, '2783.9379', '-2158.5234', '3009.2429', 14, 32775, '2191.8442', '-1666.4231', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '20', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10708, 0, 0, 110, 0, '1282.5018', '1281.8286', '2111.2509', 14, 13421787, '722.0751', '-1428.3569', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10709, 0, 0, 110, 0, '1278.0559', '1281.8577', '2111.2468', 14, 13421787, '722.0751', '-1428.3569', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10710, 0, 0, 110, 0, '1278.0560', '1273.4486', '2114.7600', 14, 13421787, '722.0751', '-1428.3569', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10711, 0, 0, 110, 0, '1282.5003', '1273.4591', '2114.7600', 14, 13421787, '722.0751', '-1428.3569', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10712, 0, 0, 110, 0, '1282.4930', '1281.8946', '2118.2438', 14, 13421787, '722.0751', '-1428.3569', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10713, 0, 0, 110, 0, '1278.0603', '1281.9184', '2118.2438', 14, 13421787, '722.0751', '-1428.3569', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10714, 0, 0, 110, 0, '1278.0561', '1273.4018', '2121.7399', 14, 13421787, '722.0751', '-1428.3569', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10715, 0, 0, 110, 0, '1282.5030', '1273.4433', '2121.7390', 14, 13421787, '2179.0005', '-667.3953', '441.8998', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '08', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10716, 0, 0, 110, 0, '1282.4920', '1281.9465', '2125.2329', 14, 13421787, '2179.0005', '-667.3953', '441.8998', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '09', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10717, 0, 0, 110, 0, '1278.0551', '1281.8927', '2125.2290', 14, 13421787, '2179.0005', '-667.3953', '441.8998', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '10', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10718, 0, 0, 0, 0, '2269.7390', '-2352.9724', '13.5468', 0, 0, '214.0781', '1752.7787', '3000.8308', 38, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'LS SANITARY HQ', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10719, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10720, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10721, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10722, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10723, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10724, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10725, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10726, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '10719', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10727, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '10720', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10728, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '10721', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10729, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '10722', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10730, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '10723', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10731, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '10724', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10732, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '10725', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10733, 0, 0, 70, 0, '241.8562', '1735.9978', '3001.0000', 22, 11634178, '1843.6997', '-2361.2576', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10734, 0, 0, 70, 0, '241.8777', '1738.8735', '3001.0000', 22, 11634178, '1843.6997', '-2361.2576', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10735, 0, 0, 70, 0, '239.7984', '1740.6092', '3001.0000', 22, 11634178, '1843.6997', '-2361.2576', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10736, 0, 0, 70, 0, '241.8731', '1742.1883', '3001.0000', 22, 11634178, '1843.6997', '-2361.2576', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10738, 0, 0, 70, 0, '242.3346', '1745.7003', '3001.0000', 22, 11634178, '1843.6997', '-2361.2576', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10739, 0, 0, 70, 0, '245.0973', '1744.3923', '3001.0000', 22, 11634178, '1843.6997', '-2361.2576', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1484835394, 0, 0, 1484835394, 0),
(11958, 0, 0, 0, 0, '2561.3894', '-1276.2734', '46.1328', 0, 0, '-136.1843', '1050.0137', '2736.9688', 13, 1, 3, 5, 0, 0, 0, 0, 0, 0, 'Garage', 201, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11706, 0, 0, 50, 0, '2342.7429', '2478.3032', '3361.6459', 92, 21, '-294.8455', '1033.9491', '31102.8555', 39, 0, 2, 1, 0, 0, 0, 0, 0, 0, '1', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 432, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11707, 0, 0, 20, 0, '2342.7409', '2482.9499', '3361.6459', 92, 21, '-294.8455', '1033.9491', '31102.8555', 39, 1, 2, 1, 0, 0, 0, 0, 0, 0, '2', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 432, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11708, 0, 0, 20, 0, '2345.2070', '2483.0598', '3361.6459', 92, 21, '-294.8455', '1033.9491', '31102.8555', 39, 0, 1, 2, 0, 0, 0, 0, 0, 0, '3', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11723, 0, 0, 0, 0, '1510.0535', '-1469.6621', '9.5000', 0, 0, '1484.1250', '-1468.1475', '1999.4967', 97, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'sous sol', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11709, 0, 0, 20, 0, '2345.2072', '2477.1669', '3361.6459', 92, 21, '-294.8455', '1033.9491', '31102.8555', 39, 0, 1, 2, 0, 0, 0, 0, 0, 0, '4', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10747, 0, 0, 70, 0, '241.8551', '1735.9285', '3001.0000', 22, 14721209, '2191.4697', '-1666.6272', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10748, 0, 0, 70, 0, '241.8709', '1738.9548', '3001.0000', 22, 14721209, '2191.4697', '-1666.6272', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10749, 0, 0, 70, 0, '239.7968', '1740.6164', '3001.0000', 22, 14721209, '2191.4697', '-1666.6272', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10750, 0, 0, 70, 0, '241.8760', '1742.1180', '3001.0000', 22, 14721209, '2191.4697', '-1666.6272', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10751, 0, 0, 70, 0, '239.7623', '1743.9195', '3001.0000', 22, 14721209, '2191.4697', '-1666.6272', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10753, 0, 0, 70, 0, '242.3812', '1745.6691', '3001.0000', 22, 14721209, '2191.4697', '-1666.6272', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10754, 0, 0, 70, 0, '245.0879', '1744.2412', '3001.0000', 22, 14721209, '2191.4697', '-1666.6272', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10755, 0, 0, 0, 0, '1976.6442', '-2042.0150', '13.5468', 0, 0, '1399.8439', '2171.7380', '3001.0928', 17, 0, 2, 3, 0, 0, 0, 0, 0, 0, 'TW@ Cafe', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12334, 0, 0, 0, 0, '2454.3281', '-1641.4089', '13.7357', 0, 0, '226.2271', '1239.9615', '2082.1406', 13, 1, 2, 5, 0, 0, 0, 0, 12, 3, '165, Grove Street', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1484835394, 0, 0, 0, 0),
(10761, 0, 0, 0, 0, '2007.0283', '-1777.4609', '17.3577', 0, 0, '1026.7307', '2599.3235', '2555.8677', 13, 0, 3, 3, 0, 0, 0, 0, 0, 0, 'Appt 02', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10762, 0, 0, 70, 0, '-160.9755', '2443.9218', '3001.0878', 14, 16967069, '1843.6698', '-2360.8379', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10763, 0, 0, 70, 0, '-152.3977', '2441.6835', '3001.0878', 14, 16967069, '1843.6698', '-2360.8379', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10764, 0, 0, 70, 0, '-152.3664', '2436.0144', '3001.0878', 14, 16967069, '1843.6698', '-2360.8379', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10765, 0, 0, 70, 0, '-160.9911', '2437.2036', '3001.0878', 14, 16967069, '1843.6698', '-2360.8379', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10766, 0, 0, 70, 0, '-152.8029', '2435.9123', '3004.6738', 14, 16967069, '1843.6698', '-2360.8379', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10767, 0, 0, 70, 0, '-152.7648', '2443.7944', '3004.6738', 14, 16967069, '1843.6698', '-2360.8379', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10768, 0, 0, 70, 0, '-160.9765', '2443.9592', '3004.6738', 14, 16967069, '1843.6698', '-2360.8379', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10769, 0, 0, 70, 0, '-160.9914', '2437.2604', '3004.6738', 14, 16967069, '1843.6698', '-2360.8379', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '08', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10770, 0, 0, 70, 0, '-1032.8972', '1551.1915', '505.6689', 14, 18216305, '1843.6428', '-2361.3005', '2486.6169', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10771, 0, 0, 70, 0, '-1039.6580', '1552.9816', '505.6689', 14, 18216305, '1843.6428', '-2361.3005', '2486.6169', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1484835394, 1484835394, 0, 0, 0, 0),
(10772, 0, 0, 70, 0, '-1035.9075', '1554.5866', '505.6689', 14, 18216305, '1843.6428', '-2361.3005', '2486.6169', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10773, 0, 0, 70, 0, '-1029.8725', '1556.9041', '505.6769', 14, 18216305, '1843.6428', '-2361.3005', '2486.6169', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10774, 0, 0, 70, 0, '-1029.8819', '1561.9378', '505.6769', 14, 18216305, '244.1583', '305.3177', '999.1484', 1, 0, 1, 3, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10775, 0, 0, 70, 0, '-1027.4528', '1563.9476', '505.6769', 14, 18216305, '244.1583', '305.3177', '999.1484', 1, 0, 1, 3, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10776, 0, 0, 70, 0, '-1022.7834', '1563.9332', '505.6769', 14, 18216305, '244.1583', '305.3177', '999.1484', 1, 0, 1, 3, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10777, 0, 0, 70, 0, '-1021.4447', '1559.8680', '505.6769', 14, 18216305, '2191.4224', '-1666.3195', '2501.0869', 14, 0, 1, 3, 0, 0, 0, 0, 0, 0, '08', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10779, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '2191.4224', '-1666.3195', '2501.0869', 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, '10', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10780, 0, 0, 0, 0, '-1021.4868', '1553.3228', '505.6759', 14, 18216305, '2191.2129', '-1666.5819', '2501.0859', 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, '10', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10781, 0, 0, 70, 0, '-1026.2894', '1551.1887', '505.6759', 14, 18216305, '2191.2129', '-1666.5819', '2501.0859', 14, 0, 1, 3, 0, 0, 0, 0, 0, 0, '11', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10784, 0, 0, 70, 0, '-1021.4852', '1553.3765', '505.6759', 14, 18216305, '1843.7028', '-2360.9312', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '09', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10835, 0, 0, 170, 0, '1892.0451', '-1914.7664', '15.2678', 0, 0, '223.0821', '1287.3656', '1082.1406', 1, 0, 1, 5, 0, 0, 0, 0, 0, 0, '212 King St.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10782, 0, 0, 0, 0, '2254.7963', '2552.7280', '10.8172', 0, 0, '800.4279', '1873.6171', '5999.7822', 13, 0, 3, 0, 0, 0, 0, 0, 0, 0, '394 oxford hills', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10786, 0, 0, 70, 0, '2336.8786', '-1188.7099', '4199.2089', 17, 12360892, '2624.4233', '-2717.6167', '2197.6729', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10787, 0, 0, 70, 0, '2331.7631', '-1183.9238', '4199.2089', 17, 12360892, '2624.4233', '-2717.6167', '2197.6729', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10789, 0, 0, 70, 0, '2335.8168', '-1174.1242', '4199.2089', 17, 12360892, '2624.4233', '-2717.6167', '2197.6729', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10790, 0, 0, 70, 0, '2341.5305', '-1174.1241', '4199.2089', 17, 12360892, '2624.4233', '-2717.6167', '2197.6729', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10791, 0, 0, 70, 0, '2345.1662', '-1175.2252', '4199.2089', 17, 12360892, '2624.4233', '-2717.6167', '2197.6729', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1484835394, 1484835394, 0, 0, 0, 0),
(10799, 0, 0, 70, 0, '1612.7918', '63.6998', '1009.7699', 14, 18866090, '1843.7965', '-2360.8184', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10792, 0, 0, 70, 0, '1612.9725', '63.7178', '1009.7699', 14, 12002240, '2191.3828', '-1666.2992', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10793, 0, 0, 70, 0, '1617.6052', '63.6972', '1009.7699', 14, 12002240, '2191.3828', '-1666.2992', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10794, 0, 0, 70, 0, '1617.8879', '55.2391', '1009.7699', 14, 12002240, '2191.3828', '-1666.2992', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10795, 0, 0, 70, 0, '1612.9066', '55.2349', '1009.7699', 14, 12002240, '2191.3828', '-1666.2992', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10796, 0, 0, 70, 0, '1611.3594', '60.9927', '1005.3789', 14, 12002240, '2191.3828', '-1666.2992', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10797, 0, 0, 70, 0, '1611.3070', '65.9723', '1005.3789', 14, 12002240, '2191.3828', '-1666.2992', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10798, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '2191.3828', '-1666.2992', '2501.0869', 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10800, 0, 0, 70, 0, '1617.5738', '63.6931', '1009.7699', 14, 18866090, '1843.7965', '-2360.8184', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `houses` (`Hid`, `Owner`, `Renter`, `RentPrice`, `Caisse`, `OutX`, `OutY`, `OutZ`, `OutInt`, `OutWorld`, `InX`, `InY`, `InZ`, `InInt`, `Open`, `Type`, `MaxInvits`, `Trash`, `Removing`, `RemovPlayer`, `Price`, `Frigo`, `Poub`, `Title`, `Kit`, `Grammes`, `TimeCanna`, `Meth`, `TimeMeth`, `Matos`, `Essence`, `Kit1`, `Kit2`, `Kit3`, `Kit4`, `Kit5`, `Kit6`, `Kit7`, `Kit8`, `Kit9`, `Kit10`, `Kit11`, `Kit12`, `Kit13`, `Kit14`, `Kit15`, `Kit16`, `Kit17`, `Kit18`, `Kit19`, `Kit20`, `Kit21`, `Kit22`, `Kit23`, `Kit24`, `Kit25`, `Kit26`, `Kit27`, `Kit28`, `Kit29`, `Kit30`, `gMeth`, `gCoke`, `gHero`, `gStero`, `gCanna`, `Autoriz`, `PlacementActor`, `LastBraquo`, `Braquable`, `Contrebande`, `TDrugCanna`, `TDrugCoke`, `TDrugHero`, `TDrugMeth`, `TDrugStero`, `CoffreFurn`) VALUES
(10801, 0, 0, 70, 0, '1617.5153', '55.2325', '1009.7699', 14, 18866090, '1843.7965', '-2360.8184', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1484835394, 1484835394, 0, 0, 0),
(10802, 0, 0, 70, 0, '1612.9838', '55.2328', '1009.7699', 14, 18866090, '1843.7965', '-2360.8184', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10803, 0, 0, 70, 0, '1615.3637', '60.9889', '1005.3789', 14, 18866090, '1843.7965', '-2360.8184', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10804, 0, 0, 70, 0, '1611.3983', '60.9933', '1005.3789', 14, 18866090, '1843.7965', '-2360.8184', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10805, 0, 0, 70, 0, '1611.3604', '65.9719', '1005.3789', 14, 18866090, '1843.7965', '-2360.8184', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10806, 0, 0, 70, 0, '1612.9550', '63.7166', '1009.7699', 14, 17348798, '2191.4080', '-1666.1863', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10807, 0, 0, 70, 0, '1617.5554', '63.6954', '1009.7699', 14, 17348798, '2191.4080', '-1666.1863', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10808, 0, 0, 70, 0, '1617.6591', '55.2326', '1009.7699', 14, 17348798, '2191.4080', '-1666.1863', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10809, 0, 0, 70, 0, '1612.9155', '55.2325', '1009.7699', 14, 17348798, '2191.4080', '-1666.1863', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10810, 0, 0, 70, 0, '1615.4350', '60.9944', '1005.3789', 14, 17348798, '2191.4080', '-1666.1863', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10811, 0, 0, 70, 0, '1611.4107', '60.9885', '1005.3789', 14, 17348798, '2191.4080', '-1666.1863', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10812, 0, 0, 70, 0, '1611.4354', '65.9605', '1005.3789', 14, 17348798, '2191.4080', '-1666.1863', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10813, 0, 0, 70, 0, '-160.9741', '2444.0373', '3001.0878', 14, 10469078, '2624.3347', '-2717.6301', '2197.6729', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10814, 0, 0, 70, 0, '-152.4151', '2441.8015', '3001.0878', 14, 10469078, '2624.3347', '-2717.6301', '2197.6729', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10815, 0, 0, 70, 0, '-152.3733', '2435.9277', '3001.0878', 14, 10469078, '2624.3347', '-2717.6301', '2197.6729', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10816, 0, 0, 70, 0, '-160.9875', '2437.2634', '3001.0878', 14, 10469078, '2624.3347', '-2717.6301', '2197.6729', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10817, 0, 0, 70, 0, '-152.8041', '2435.9997', '3004.6738', 14, 10469078, '2624.3347', '-2717.6301', '2197.6729', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10818, 0, 0, 70, 0, '-152.7649', '2443.8117', '3004.6738', 14, 10469078, '2624.3347', '-2717.6301', '2197.6729', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10819, 0, 0, 70, 0, '-160.9512', '2443.9958', '3004.6738', 14, 10469078, '2624.3347', '-2717.6301', '2197.6729', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10820, 0, 0, 70, 0, '-160.9914', '2437.2749', '3004.6738', 14, 10469078, '2624.3347', '-2717.6301', '2197.6729', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '08', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10821, 0, 0, 70, 0, '-160.9759', '2444.0690', '3001.0878', 14, 14552929, '1843.6404', '-2360.8860', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10822, 0, 0, 70, 0, '-152.4030', '2441.7507', '3001.0878', 14, 14552929, '1843.6404', '-2360.8860', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10823, 0, 0, 70, 0, '-152.3666', '2435.9572', '3001.0878', 14, 14552929, '1843.6404', '-2360.8860', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10824, 0, 0, 70, 0, '-160.9898', '2437.1633', '3001.0878', 14, 14552929, '1843.6404', '-2360.8860', '2486.6169', 13, 0, 1, 2, 0, 1495546200, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10825, 0, 0, 70, 0, '-152.8044', '2435.7973', '3004.6738', 14, 14552929, '1843.6404', '-2360.8860', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10826, 0, 0, 70, 0, '-152.7648', '2443.6054', '3004.6738', 14, 14552929, '1843.6404', '-2360.8860', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10827, 0, 0, 70, 0, '-160.9751', '2444.0256', '3004.6738', 14, 14552929, '1843.6404', '-2360.8860', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10828, 0, 0, 70, 0, '-160.9906', '2437.2487', '3004.6738', 14, 14552929, '1843.6404', '-2360.8860', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '08', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11414, 0, 0, 0, 0, '1554.7540', '-1227.8464', '1089.8669', 22, 25, '1716.1292', '-880.3047', '8001.0859', 1, 1, 2, 5, 0, 0, 0, 0, 0, 0, 'Procureur Rix', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11845, 0, 0, 0, 0, '1558.6821', '-1225.5330', '1089.8669', 22, 25, '1715.4850', '-879.9692', '8001.0859', 1, 0, 2, 1, 0, 0, 0, 0, 0, 0, 'Bureau vacant', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 674, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11739, 0, 0, 0, 0, '1774.8579', '-1706.2799', '13.5234', 0, 0, '-1136.4226', '1117.7305', '2301.0859', 108, 0, 2, 5, 0, 0, 0, 0, 15, 0, 'Pryor Logistics', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 1, 9, 3, 0, 105, 0, 0, 0, 0, 0, 1484835394, 1484835394, 1484835394, 1484835394, 0),
(11546, 0, 0, 0, 0, '1298.4387', '-797.9851', '84.1406', 0, 0, '1301.2506', '-800.2492', '2001.8667', 230, 0, 2, 10, 0, 0, 0, 0, 8, 7, '8741, North Vinewood, Villa Monica', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 475, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10833, 0, 0, 170, 0, '1928.5229', '-1915.9257', '15.2678', 0, 0, '223.3073', '1287.5784', '1082.1406', 1, 0, 1, 5, 0, 0, 0, 0, 0, 0, '214 King St.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10834, 0, 0, 0, 0, '2175.4831', '-1736.0726', '13.5363', 0, 0, '-1381.6053', '1187.8494', '2501.0820', 107, 0, 2, 5, 0, 0, 0, 0, 0, 0, '199, Little Mexico', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10836, 0, 0, 170, 0, '1872.2485', '-1911.9216', '15.2678', 0, 0, '2260.6077', '-1135.9823', '1050.6328', 10, 0, 1, 5, 0, 0, 0, 0, 0, 0, '211 King St.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10837, 0, 0, 199, 0, '2393.2353', '-1646.0477', '13.9050', 0, 0, '223.0821', '1287.3656', '1082.1406', 1, 0, 1, 5, 0, 0, 0, 0, 0, 0, '150, Grove Street', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10838, 0, 0, 120, 0, '163.2970', '2494.7363', '-88.9140', 21, 11957940, '722.0045', '-1428.5558', '1201.3190', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10839, 0, 0, 120, 0, '159.6248', '2494.7797', '-88.9140', 21, 11957940, '722.0045', '-1428.5558', '1201.3190', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10840, 0, 0, 120, 0, '163.2905', '2500.4902', '-88.9140', 21, 11957940, '722.0045', '-1428.5558', '1201.3190', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10841, 0, 0, 120, 0, '159.6087', '2500.6809', '-88.9140', 21, 11957940, '722.0045', '-1428.5558', '1201.3190', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10842, 0, 0, 120, 0, '159.6245', '2509.9028', '-88.9140', 21, 11957940, '722.0045', '-1428.5558', '1201.3190', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10843, 0, 0, 120, 0, '161.5584', '2513.4104', '-88.9140', 21, 11957940, '722.0045', '-1428.5558', '1201.3190', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10844, 0, 0, 120, 0, '176.7716', '2513.4216', '-88.9140', 21, 11957940, '722.0045', '-1428.5558', '1201.3190', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10845, 0, 0, 120, 0, '179.4475', '2510.3735', '-88.9140', 21, 11957940, '2178.5957', '-667.2830', '441.8998', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '08', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10846, 0, 0, 120, 0, '173.7092', '2500.7211', '-88.9140', 21, 11957940, '2178.5957', '-667.2830', '441.8998', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '09', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10847, 0, 0, 120, 0, '173.7157', '2494.8095', '-88.9140', 21, 11957940, '2178.5957', '-667.2830', '441.8998', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '10', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10848, 0, 0, 120, 0, '179.4564', '2494.7551', '-88.9140', 21, 11957940, '2178.5957', '-667.2830', '441.8998', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '11', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10849, 0, 0, 120, 0, '179.4536', '2488.9514', '-88.9140', 21, 11957940, '2178.5957', '-667.2830', '441.8998', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '12', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10850, 0, 0, 120, 0, '180.3161', '2491.2670', '-83.1280', 21, 11957940, '2178.5957', '-667.2830', '441.8998', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '13', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10851, 0, 0, 120, 0, '180.3133', '2498.4694', '-83.1280', 21, 11957940, '2178.5957', '-667.2830', '441.8998', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '14', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10852, 0, 0, 120, 0, '177.8984', '2509.3452', '-83.1280', 21, 11957940, '2618.5374', '-1816.0262', '616.5299', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '15', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10853, 0, 0, 120, 0, '170.4499', '2509.3522', '-83.1280', 21, 11957940, '2618.5374', '-1816.0262', '616.5299', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '16', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10854, 0, 0, 120, 0, '162.8579', '2509.3527', '-83.1280', 21, 11957940, '2618.5374', '-1816.0262', '616.5299', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '17', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10855, 0, 0, 120, 0, '157.0171', '2509.3427', '-83.1180', 21, 11957940, '2618.5374', '-1816.0262', '616.5299', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '18', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10856, 0, 0, 120, 0, '152.9736', '2507.6013', '-83.1180', 21, 11957940, '722.2809', '-1428.1674', '1201.3190', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '19', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10857, 0, 0, 120, 0, '152.9638', '2503.4770', '-83.1180', 21, 11957940, '722.2809', '-1428.1674', '1201.3190', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '20', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10858, 0, 0, 120, 0, '157.0402', '2501.7932', '-83.1180', 21, 11957940, '722.2809', '-1428.1674', '1201.3190', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '21', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10859, 0, 0, 120, 0, '163.8054', '2501.9658', '-83.1280', 21, 11957940, '722.2809', '-1428.1674', '1201.3190', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '22', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10860, 0, 0, 120, 0, '159.6213', '2494.8537', '-88.9140', 21, 11656753, '2618.8484', '-1815.8759', '616.5299', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10861, 0, 0, 120, 0, '163.2966', '2494.6777', '-88.9140', 21, 11656753, '2618.8484', '-1815.8759', '616.5299', 13, 0, 1, 3, 0, 1495629640, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10862, 0, 0, 120, 0, '163.3061', '2500.5065', '-88.9140', 21, 11656753, '2618.8484', '-1815.8759', '616.5299', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10863, 0, 0, 120, 0, '159.6123', '2500.7070', '-88.9140', 21, 11656753, '2618.8484', '-1815.8759', '616.5299', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10864, 0, 0, 120, 0, '159.6208', '2509.9702', '-88.9140', 21, 11656753, '2618.8484', '-1815.8759', '616.5299', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10865, 0, 0, 120, 0, '161.5705', '2513.4196', '-88.9140', 21, 11656753, '2618.8484', '-1815.8759', '616.5299', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10866, 0, 0, 120, 0, '176.8549', '2513.4233', '-88.9140', 21, 11656753, '2618.8484', '-1815.8759', '616.5299', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10867, 0, 0, 120, 0, '179.4468', '2510.4414', '-88.9140', 21, 11656753, '2179.2556', '-667.4547', '441.8909', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '08', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10868, 0, 0, 120, 0, '173.7016', '2500.5761', '-88.9140', 21, 11656753, '2179.2556', '-667.4547', '441.8909', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '09', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10869, 0, 0, 120, 0, '173.7138', '2494.7648', '-88.9140', 21, 11656753, '2179.2556', '-667.4547', '441.8909', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '10', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10870, 0, 0, 120, 0, '179.4617', '2494.8149', '-88.9140', 21, 11656753, '2179.2556', '-667.4547', '441.8909', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '11', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10871, 0, 0, 120, 0, '179.4533', '2488.8317', '-88.9140', 21, 11656753, '2179.2556', '-667.4547', '441.8909', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '12', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10872, 0, 0, 120, 0, '177.8978', '2509.3427', '-83.1280', 21, 11656753, '2179.2556', '-667.4547', '441.8909', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '13', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10873, 0, 0, 120, 0, '170.5803', '2509.3537', '-83.1280', 21, 11656753, '2179.2556', '-667.4547', '441.8909', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '14', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10874, 0, 0, 120, 0, '162.9018', '2509.3515', '-83.1280', 21, 11656753, '722.0478', '-1428.4827', '1201.3190', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '15', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10875, 0, 0, 120, 0, '157.0699', '2509.3427', '-83.1180', 21, 11656753, '722.0478', '-1428.4827', '1201.3190', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '16', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10876, 0, 0, 120, 0, '152.9680', '2507.6301', '-83.1180', 21, 11656753, '722.0478', '-1428.4827', '1201.3190', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '17', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10877, 0, 0, 120, 0, '152.9847', '2503.5541', '-83.1180', 21, 11656753, '722.0478', '-1428.4827', '1201.3190', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '18', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10878, 0, 0, 120, 0, '156.9817', '2501.7944', '-83.1180', 21, 11656753, '722.0478', '-1428.4827', '1201.3190', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '19', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10879, 0, 0, 120, 0, '163.6824', '2501.8315', '-83.1280', 21, 11656753, '722.0478', '-1428.4827', '1201.3190', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '20', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10880, 0, 0, 120, 0, '180.3129', '2498.3168', '-83.1280', 21, 11656753, '722.0478', '-1428.4827', '1201.3190', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '21', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10881, 0, 0, 120, 0, '180.2996', '2491.2492', '-83.1280', 21, 11656753, '722.0478', '-1428.4827', '1201.3190', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '22', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10882, 0, 0, 120, 0, '1282.4953', '1281.9161', '2111.2509', 14, 16961702, '722.4258', '-1428.2847', '1201.3190', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10883, 0, 0, 120, 0, '1278.0554', '1281.9246', '2111.2468', 14, 16961702, '2178.6663', '-667.3375', '441.8998', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10884, 0, 0, 120, 0, '1278.0565', '1273.4461', '2114.7600', 14, 16961702, '722.0754', '-1428.4630', '1201.3190', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10885, 0, 0, 120, 0, '1282.4925', '1273.4182', '2114.7600', 14, 16961702, '2178.6663', '-667.3375', '441.8998', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10886, 0, 0, 120, 0, '1282.4930', '1281.8527', '2118.2438', 14, 16961702, '722.0754', '-1428.4630', '1201.3190', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10887, 0, 0, 120, 0, '1278.0550', '1281.8045', '2118.2438', 14, 16961702, '722.0754', '-1428.4630', '1201.3190', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10888, 0, 0, 120, 0, '1278.0556', '1273.5480', '2121.7399', 14, 16961702, '722.0754', '-1428.4630', '1201.3190', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10889, 0, 0, 120, 0, '1282.5014', '1273.5101', '2121.7390', 14, 16961702, '722.0754', '-1428.4630', '1201.3190', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '08', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10890, 0, 0, 120, 0, '1282.5029', '1281.9484', '2125.2329', 14, 16961702, '722.0754', '-1428.4630', '1201.3190', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '09', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10891, 0, 0, 120, 0, '1278.0562', '1281.9499', '2125.2290', 14, 16961702, '722.0754', '-1428.4630', '1201.3190', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '10', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10892, 0, 0, 0, 0, '1961.8914', '2321.8579', '10.8203', 0, 0, '722.0754', '-1428.4630', '1201.3190', 13, 1, 3, 0, 0, 0, 0, 0, 0, 0, '9547 LV C 484', 102, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10893, 0, 0, 70, 0, '1612.8305', '63.7170', '1009.7699', 14, 13973572, '1843.5294', '-2361.4109', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10894, 0, 0, 70, 0, '1617.5247', '63.6993', '1009.7699', 14, 13973572, '1843.5294', '-2361.4109', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10895, 0, 0, 70, 0, '1617.6121', '55.2337', '1009.7699', 14, 13973572, '1843.5294', '-2361.4109', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10896, 0, 0, 70, 0, '1612.9548', '55.2325', '1009.7699', 14, 13973572, '1843.5294', '-2361.4109', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10897, 0, 0, 70, 0, '1615.4526', '60.9885', '1005.3789', 14, 13973572, '1843.5294', '-2361.4109', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10898, 0, 0, 70, 0, '1611.3691', '60.9885', '1005.3789', 14, 13973572, '1843.5294', '-2361.4109', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10899, 0, 0, 70, 0, '1611.3919', '65.9752', '1005.3789', 14, 13973572, '1843.5294', '-2361.4109', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10900, 0, 0, 70, 0, '1612.8967', '63.7158', '1009.7699', 14, 11572727, '2191.4297', '-1666.4608', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10901, 0, 0, 70, 0, '1617.7006', '63.6981', '1009.7699', 14, 11572727, '2191.4297', '-1666.4608', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10902, 0, 0, 70, 0, '1617.6899', '55.2348', '1009.7699', 14, 11572727, '2191.4297', '-1666.4608', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10903, 0, 0, 70, 0, '1612.9172', '55.2355', '1009.7699', 14, 11572727, '2191.4297', '-1666.4608', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10904, 0, 0, 70, 0, '1615.4554', '60.9925', '1005.3789', 14, 11572727, '2191.4297', '-1666.4608', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10905, 0, 0, 70, 0, '1611.4522', '60.9890', '1005.3789', 14, 11572727, '2191.4297', '-1666.4608', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1484835394, 0, 0, 0, 0),
(10906, 0, 0, 70, 0, '1611.3133', '65.9650', '1005.3789', 14, 11572727, '2191.4297', '-1666.4608', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11886, 0, 0, 0, 0, '2545.5097', '259.6429', '2509.6118', 174, 25138, '2233.6555', '-1115.2599', '1050.8828', 5, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Chambre 01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10908, 0, 0, 120, 0, '1612.8156', '63.7198', '1009.7699', 14, 16782606, '2624.6575', '-2717.5862', '2197.6729', 13, 0, 1, 0, 0, 0, 0, 0, 0, 0, '714', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10911, 0, 0, 80, 0, '1617.6771', '55.2341', '1009.7699', 14, 16782606, '1843.3778', '-2360.9270', '2486.6169', 13, 0, 1, 0, 0, 0, 0, 0, 0, 0, '717', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10909, 0, 0, 80, 0, '1617.7030', '63.6986', '1009.7699', 14, 16782606, '1843.8040', '-2361.0190', '2486.6169', 13, 0, 1, 0, 0, 0, 0, 0, 0, 0, '751', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10910, 0, 0, 110, 0, '1613.0115', '55.3752', '1009.7699', 14, 16782606, '722.1315', '-1428.3557', '1201.3190', 13, 0, 1, 0, 0, 0, 0, 0, 0, 0, '716', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10912, 0, 0, 80, 0, '1611.3492', '65.9753', '1005.3789', 14, 16782606, '2624.6331', '-2717.7021', '2197.6729', 13, 0, 1, 0, 0, 0, 0, 0, 0, 0, '720', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10913, 0, 0, 120, 0, '1615.3554', '60.9881', '1005.3789', 14, 16782606, '2178.4160', '-667.2505', '441.8998', 13, 0, 1, 0, 0, 0, 0, 0, 0, 0, '721', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10914, 0, 0, 110, 0, '1611.3608', '60.9899', '1005.3789', 14, 16782606, '2618.5825', '-1815.9093', '616.5299', 13, 0, 1, 0, 0, 0, 0, 0, 0, 0, '722', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10933, 0, 0, 120, 0, '2542.5314', '461.6207', '3315.5810', 21, 15637452, '2618.6553', '-1816.1157', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10917, 0, 0, 120, 0, '2542.5087', '461.6250', '3315.5810', 21, 15818249, '722.1013', '-1428.3629', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10918, 0, 0, 120, 0, '2543.5844', '464.6444', '3315.5749', 21, 15818249, '722.1013', '-1428.3629', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10919, 0, 0, 120, 0, '2543.5820', '469.1438', '3315.5749', 21, 15818249, '722.1013', '-1428.3629', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10920, 0, 0, 120, 0, '2542.6386', '473.4395', '3315.5739', 21, 15818249, '722.1013', '-1428.3629', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10921, 0, 0, 120, 0, '2533.6118', '473.4392', '3315.5739', 21, 15818249, '722.1013', '-1428.3629', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10922, 0, 0, 120, 0, '2532.3718', '469.1525', '3315.5659', 21, 15818249, '722.1013', '-1428.3629', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10923, 0, 0, 120, 0, '2532.3713', '464.4586', '3315.5739', 21, 15818249, '2178.6953', '-667.2838', '441.8998', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10924, 0, 0, 120, 0, '2533.6154', '461.6210', '3315.5810', 21, 15818249, '2178.6953', '-667.2838', '441.8998', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '08', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10925, 0, 0, 120, 0, '2533.1584', '471.6846', '3319.1569', 21, 15818249, '2178.6953', '-667.2838', '441.8998', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '09', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10926, 0, 0, 120, 0, '2532.0512', '468.3815', '3319.1508', 21, 15818249, '2178.7026', '-667.4967', '441.8998', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '10', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10927, 0, 0, 120, 0, '2532.0466', '464.4775', '3319.1508', 21, 15818249, '2178.7026', '-667.4967', '441.8998', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '11', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10928, 0, 0, 120, 0, '2533.1762', '459.7242', '3319.1508', 21, 15818249, '2618.8418', '-1816.0758', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '12', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10929, 0, 0, 120, 0, '2542.0639', '459.7197', '3319.1508', 21, 15818249, '2618.8418', '-1816.0758', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '13', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10930, 0, 0, 120, 0, '2543.3273', '464.2169', '3319.1440', 21, 15818249, '2618.8418', '-1816.0758', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '14', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10931, 0, 0, 120, 0, '2543.3273', '468.3945', '3319.1440', 21, 15818249, '2618.8418', '-1816.0758', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '15', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10932, 0, 0, 120, 0, '2542.1267', '471.4815', '3319.1569', 21, 15818249, '2618.8418', '-1816.0758', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '16', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10934, 0, 0, 120, 0, '2543.5842', '464.7326', '3315.5749', 21, 15637452, '2618.6238', '-1815.9652', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10935, 0, 0, 120, 0, '2543.5844', '469.1803', '3315.5749', 21, 15637452, '2618.6238', '-1815.9652', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10936, 0, 0, 120, 0, '2542.4899', '473.4347', '3315.5739', 21, 15637452, '2618.6238', '-1815.9652', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10937, 0, 0, 120, 0, '2533.6105', '473.4390', '3315.5739', 21, 15637452, '2618.6238', '-1815.9652', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10938, 0, 0, 120, 0, '2532.3732', '469.0728', '3315.5659', 21, 15637452, '2618.6238', '-1815.9652', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10939, 0, 0, 120, 0, '2532.3730', '464.5260', '3315.5739', 21, 15637452, '2618.6238', '-1815.9652', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10940, 0, 0, 120, 0, '2533.6279', '461.6360', '3315.5810', 21, 15637452, '2618.6238', '-1815.9652', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '08', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10941, 0, 0, 120, 0, '2533.2207', '471.6849', '3319.1569', 21, 15637452, '2618.6238', '-1815.9652', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '09', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10942, 0, 0, 120, 0, '2532.0476', '468.3907', '3319.1508', 21, 15637452, '2618.6238', '-1815.9652', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '10', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10943, 0, 0, 120, 0, '2532.0476', '464.2427', '3319.1508', 21, 15637452, '722.1276', '-1428.5402', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '11', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10944, 0, 0, 120, 0, '2533.1076', '459.7247', '3319.1508', 21, 15637452, '722.1276', '-1428.5402', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '12', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10945, 0, 0, 120, 0, '2542.1684', '459.7200', '3319.1508', 21, 15637452, '722.1276', '-1428.5402', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '13', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10946, 0, 0, 120, 0, '2543.3139', '464.2300', '3319.1440', 21, 15637452, '722.1276', '-1428.5402', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '14', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10947, 0, 0, 120, 0, '2543.3269', '468.4454', '3319.1440', 21, 15637452, '722.1276', '-1428.5402', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '15', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10948, 0, 0, 120, 0, '2542.0686', '471.6764', '3319.1569', 21, 15637452, '722.1276', '-1428.5402', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '16', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10949, 0, 0, 110, 0, '-1026.2374', '1551.1885', '505.6759', 14, 15225499, '-68.9407', '1351.6343', '2080.2109', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10950, 0, 0, 100, 0, '-1021.4878', '1553.3906', '505.6759', 14, 15225499, '-68.9407', '1351.6343', '2080.2109', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10951, 0, 0, 100, 0, '-1021.4443', '1559.8699', '505.6769', 14, 15225499, '-1629.1722', '2166.9102', '2471.7180', 104, 0, 2, 5, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 57, 33, 0, 37, 0, 0, 0, 0, 0, 1484835394, 1484835394, 1484835394, 0, 0, 0),
(10952, 0, 0, 100, 0, '-1022.7660', '1563.9337', '505.6769', 14, 15225499, '-68.9407', '1351.6343', '2080.2109', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10953, 0, 0, 100, 0, '-1027.4443', '1563.9478', '505.6769', 14, 15225499, '-68.9407', '1351.6343', '2080.2109', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10954, 0, 0, 0, 0, '-1029.8822', '1561.9168', '505.6769', 14, 15225499, '-68.9407', '1351.6343', '2080.2109', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10956, 0, 0, 45, 0, '-1035.8682', '1554.5858', '505.6689', 14, 15225499, '-68.9407', '1351.6343', '2080.2109', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '08', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10957, 0, 0, 70, 0, '2483.4418', '-1995.3432', '13.8343', 0, 0, '-68.9407', '1351.6343', '2080.2109', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '90218, 21th Fuller Street', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10958, 0, 0, 0, 0, '-1032.9346', '1551.1882', '505.6689', 14, 15225499, '-68.9407', '1351.6343', '2080.2109', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '10', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 46, 0, 46, 158, 0, 0, 0, 0, 0, 1484835394, 1484835394, 0, 1484835394, 1484835394, 0),
(10960, 0, 0, 170, 0, '766.6082', '-556.7301', '18.0129', 0, 0, '222.9158', '1287.2605', '1082.1406', 1, 0, 1, 5, 0, 1495297467, 0, 0, 0, 0, '198 Palomino Creek', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `houses` (`Hid`, `Owner`, `Renter`, `RentPrice`, `Caisse`, `OutX`, `OutY`, `OutZ`, `OutInt`, `OutWorld`, `InX`, `InY`, `InZ`, `InInt`, `Open`, `Type`, `MaxInvits`, `Trash`, `Removing`, `RemovPlayer`, `Price`, `Frigo`, `Poub`, `Title`, `Kit`, `Grammes`, `TimeCanna`, `Meth`, `TimeMeth`, `Matos`, `Essence`, `Kit1`, `Kit2`, `Kit3`, `Kit4`, `Kit5`, `Kit6`, `Kit7`, `Kit8`, `Kit9`, `Kit10`, `Kit11`, `Kit12`, `Kit13`, `Kit14`, `Kit15`, `Kit16`, `Kit17`, `Kit18`, `Kit19`, `Kit20`, `Kit21`, `Kit22`, `Kit23`, `Kit24`, `Kit25`, `Kit26`, `Kit27`, `Kit28`, `Kit29`, `Kit30`, `gMeth`, `gCoke`, `gHero`, `gStero`, `gCanna`, `Autoriz`, `PlacementActor`, `LastBraquo`, `Braquable`, `Contrebande`, `TDrugCanna`, `TDrugCoke`, `TDrugHero`, `TDrugMeth`, `TDrugStero`, `CoffreFurn`) VALUES
(10962, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11415, 0, 0, 0, 0, '241.8540', '1736.1916', '3001.0000', 22, 11575439, '24.0336', '1340.6908', '2084.3750', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 0, 0, 0, 0, 0, 1484835394, 0, 0, 0, 0, 0),
(10965, 0, 0, 0, 0, '-379.0215', '2238.3747', '2536.2338', 237, 12264, '225.2399', '1239.9755', '2082.1406', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Chambre 4', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10966, 0, 0, 0, 0, '241.8778', '1742.1785', '3001.0000', 22, 11575439, '225.2399', '1239.9755', '2082.1406', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1007, 4, 2, 13, 78, 0, 0, 0, 0, 0, 1484835394, 1484835394, 1484835394, 1484835394, 1484835394, 0),
(10967, 0, 0, 0, 0, '2452.0720', '-1641.4144', '14.0662', 0, 0, '225.2399', '1239.9755', '2082.1406', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '170, Grove Street', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10968, 0, 0, 0, 0, '2151.1848', '-1400.7686', '26.1285', 0, 0, '260.9181', '1237.6223', '2084.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '002 Bloc B, Pat Nixon Gardens', 0, 0, 0, 6, 1472077555, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 8, 0, 0, 0, 0, 0, 1484835394, 1484835394, 0, 0, 0, 0),
(11336, 0, 0, 0, 0, '245.0953', '1744.2012', '3001.0000', 22, 11575439, '226.3795', '1239.9346', '2082.1406', 13, 0, 2, 1, 0, 0, 0, 0, 0, 0, '7', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10970, 0, 0, 0, 0, '163.2947', '2494.7773', '-88.9140', 21, 14744286, '2237.8359', '-1089.7832', '2049.0234', 13, 0, 2, 5, 0, 0, 0, 360000, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10971, 0, 0, 0, 0, '159.6215', '2494.7622', '-88.9140', 21, 14744286, '2237.8359', '-1089.7832', '2049.0234', 13, 1, 2, 5, 0, 0, 0, 360000, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10972, 0, 0, 0, 0, '163.3074', '2500.4157', '-88.9140', 21, 14744286, '2237.8359', '-1089.7832', '2049.0234', 13, 1, 2, 5, 0, 0, 0, 360000, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10974, 0, 0, 0, 0, '159.6085', '2500.7595', '-88.9140', 21, 14744286, '2237.8359', '-1089.7832', '2049.0234', 13, 1, 2, 5, 0, 0, 0, 360000, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10975, 0, 0, 0, 0, '159.6205', '2510.0080', '-88.9140', 21, 14744286, '2237.8359', '-1089.7832', '2049.0234', 13, 0, 2, 5, 0, 0, 0, 360000, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10976, 0, 0, 0, 0, '161.6413', '2513.4184', '-88.9140', 21, 14744286, '2237.8359', '-1089.7832', '2049.0234', 13, 0, 2, 5, 0, 0, 0, 360000, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10977, 0, 0, 0, 0, '176.9024', '2513.4233', '-88.9140', 21, 14744286, '2237.8359', '-1089.7832', '2049.0234', 13, 0, 2, 5, 0, 0, 0, 360000, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10978, 0, 0, 0, 0, '179.4483', '2510.4479', '-88.9140', 21, 14744286, '2237.8359', '-1089.7832', '2049.0234', 13, 0, 2, 5, 0, 0, 0, 360000, 0, 0, '08', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10979, 0, 0, 0, 0, '173.7016', '2500.6193', '-88.9140', 21, 14744286, '2237.8359', '-1089.7832', '2049.0234', 13, 1, 2, 5, 0, 0, 0, 360000, 0, 0, '09', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10980, 0, 0, 0, 0, '173.7147', '2494.7128', '-88.9140', 21, 14744286, '2237.8359', '-1089.7832', '2049.0234', 13, 1, 2, 5, 0, 0, 0, 360000, 0, 0, '10', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10981, 0, 0, 0, 0, '179.4610', '2494.6755', '-88.9140', 21, 14744286, '2237.8359', '-1089.7832', '2049.0234', 13, 0, 2, 5, 0, 0, 0, 360000, 0, 0, '11', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10982, 0, 0, 0, 0, '179.4546', '2488.8469', '-88.9140', 21, 14744286, '2237.8359', '-1089.7832', '2049.0234', 13, 0, 2, 5, 0, 0, 0, 360000, 0, 0, '12', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10983, 0, 0, 0, 0, '177.8813', '2509.3334', '-83.1280', 21, 14744286, '2237.5046', '-1089.9207', '2049.0234', 13, 0, 2, 5, 0, 0, 0, 360000, 0, 0, '13', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10984, 0, 0, 0, 0, '170.5433', '2509.3527', '-83.1280', 21, 14744286, '2237.5046', '-1089.9207', '2049.0234', 13, 0, 2, 5, 0, 0, 0, 360000, 0, 0, '14', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10985, 0, 0, 0, 0, '162.7902', '2509.3537', '-83.1280', 21, 14744286, '2237.5046', '-1089.9207', '2049.0234', 13, 0, 2, 5, 0, 0, 0, 360000, 0, 0, '15', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10986, 0, 0, 0, 0, '157.0740', '2509.3427', '-83.1180', 21, 14744286, '2237.5046', '-1089.9207', '2049.0234', 13, 0, 2, 5, 0, 0, 0, 360000, 0, 0, '16', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10987, 0, 0, 0, 0, '153.0148', '2507.7163', '-83.1180', 21, 14744286, '2237.5046', '-1089.9207', '2049.0234', 13, 1, 2, 5, 0, 0, 0, 360000, 0, 0, '17', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10988, 0, 0, 0, 0, '152.9654', '2503.4208', '-83.1180', 21, 14744286, '2237.5046', '-1089.9207', '2049.0234', 13, 1, 2, 5, 0, 0, 0, 360000, 0, 0, '18', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10989, 0, 0, 0, 0, '156.9071', '2501.7915', '-83.1180', 21, 14744286, '2237.5046', '-1089.9207', '2049.0234', 13, 0, 2, 5, 0, 0, 0, 360000, 0, 0, '19', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10990, 0, 0, 0, 0, '163.7372', '2501.8227', '-83.1280', 21, 14744286, '2237.5046', '-1089.9207', '2049.0234', 13, 0, 2, 5, 0, 0, 0, 360000, 0, 0, '20', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10991, 0, 0, 0, 0, '180.3109', '2498.3591', '-83.1280', 21, 14744286, '2237.5046', '-1089.9207', '2049.0234', 13, 1, 2, 5, 0, 0, 0, 360000, 0, 0, '21', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10993, 0, 0, 0, 0, '180.3115', '2491.3244', '-83.1280', 21, 14744286, '2237.5046', '-1089.9207', '2049.0234', 13, 1, 2, 5, 0, 0, 0, 360000, 0, 0, '22', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10994, 0, 0, 0, 0, '-1339.6293', '-1065.2636', '3174.8439', 20, 14729489, '260.6180', '1237.9902', '2084.2578', 13, 0, 2, 5, 0, 0, 0, 270000, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10995, 0, 0, 0, 0, '-1335.0632', '-1063.0657', '3174.8640', 20, 14729489, '260.6180', '1237.9902', '2084.2578', 13, 0, 2, 5, 0, 0, 0, 270000, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10996, 0, 0, 0, 0, '-1339.4711', '-1060.6418', '3174.8439', 20, 14729489, '260.6180', '1237.9902', '2084.2578', 13, 0, 2, 5, 0, 0, 0, 270000, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10997, 0, 0, 0, 0, '-1350.5336', '-1065.2634', '3174.8439', 20, 14729489, '260.6180', '1237.9902', '2084.2578', 13, 0, 2, 5, 0, 0, 0, 270000, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10998, 0, 0, 0, 0, '-1357.0261', '-1065.2636', '3174.8439', 20, 14729489, '260.6180', '1237.9902', '2084.2578', 13, 0, 2, 5, 0, 0, 0, 270000, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10999, 0, 0, 0, 0, '-1361.4007', '-1062.9201', '3174.8640', 20, 14729489, '260.6180', '1237.9902', '2084.2578', 13, 0, 2, 5, 0, 0, 0, 270000, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11000, 0, 0, 0, 0, '-1357.0889', '-1060.6403', '3174.8439', 20, 14729489, '260.6180', '1237.9902', '2084.2578', 13, 0, 2, 5, 0, 0, 0, 270000, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11001, 0, 0, 0, 0, '-1357.0123', '-1060.6400', '3171.2829', 20, 14729489, '260.6180', '1237.9902', '2084.2578', 13, 0, 2, 5, 0, 0, 0, 270000, 0, 0, '08', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11002, 0, 0, 0, 0, '-1361.3997', '-1062.9941', '3171.3049', 20, 14729489, '260.6180', '1237.9902', '2084.2578', 13, 0, 2, 5, 0, 0, 0, 270000, 0, 0, '09', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11003, 0, 0, 0, 0, '-1356.9671', '-1065.2593', '3171.2829', 20, 14729489, '260.6180', '1237.9902', '2084.2578', 13, 0, 2, 5, 0, 0, 0, 270000, 0, 0, '10', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11004, 0, 0, 0, 0, '-1350.5845', '-1065.2636', '3171.2829', 20, 14729489, '260.6180', '1237.9902', '2084.2578', 13, 0, 2, 5, 0, 0, 0, 270000, 0, 0, '11', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11005, 0, 0, 0, 0, '-1343.2542', '-1065.2633', '3171.2829', 20, 14729489, '260.6180', '1237.9902', '2084.2578', 13, 0, 2, 5, 0, 0, 0, 270000, 0, 0, '12', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11006, 0, 0, 0, 0, '-1340.6240', '-1060.6379', '3171.2829', 20, 14729489, '260.6180', '1237.9902', '2084.2578', 13, 0, 2, 5, 0, 0, 0, 270000, 0, 0, '13', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11007, 0, 0, 0, 0, '-1335.0634', '-1062.9575', '3171.3049', 20, 14729489, '260.6180', '1237.9902', '2084.2578', 13, 0, 2, 5, 0, 0, 0, 270000, 0, 0, '14', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11192, 0, 0, 100, 0, '1939.0181', '-1114.4863', '27.4522', 0, 0, '23.9080', '1340.5796', '2084.3750', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '103 Glen St.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11009, 0, 0, 0, 0, '2413.9121', '-1646.7883', '14.0119', 0, 0, '-69.0440', '1351.5237', '2080.2109', 13, 0, 2, 5, 0, 0, 0, 1, 0, 0, '160, Grove Street', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4719, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11011, 0, 0, 0, 0, '2307.0439', '-1679.2001', '14.3316', 0, 0, '260.8028', '1237.6602', '2084.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '135, Grove Street', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11012, 0, 0, 70, 0, '-160.9767', '2444.0095', '3001.0878', 14, 12424017, '1843.7405', '-2360.9622', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11013, 0, 0, 70, 0, '-152.3999', '2441.7465', '3001.0878', 14, 12424017, '1843.7405', '-2360.9622', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11014, 0, 0, 70, 0, '-152.3672', '2436.0524', '3001.0878', 14, 12424017, '1843.7405', '-2360.9622', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11015, 0, 0, 70, 0, '-160.9859', '2437.3178', '3001.0878', 14, 12424017, '1843.7405', '-2360.9622', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11016, 0, 0, 70, 0, '-152.8039', '2436.0109', '3004.6738', 14, 12424017, '1843.7405', '-2360.9622', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11017, 0, 0, 70, 0, '-152.7648', '2443.7207', '3004.6738', 14, 12424017, '1843.7405', '-2360.9622', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11018, 0, 0, 70, 0, '-160.9764', '2444.0144', '3004.6738', 14, 12424017, '1843.7405', '-2360.9622', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11019, 0, 0, 70, 0, '-160.9875', '2437.1977', '3004.6738', 14, 12424017, '1843.7405', '-2360.9622', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '08', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11156, 0, 0, 120, 0, '1252.9019', '-901.9494', '42.8828', 0, 0, '2179.1943', '-667.0226', '441.8909', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '815, Porte 1', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11816, 0, 0, 0, 0, '2362.8415', '-1643.1419', '14.3515', 0, 0, '318.6835', '1114.4890', '2083.8828', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '140, Grove Street', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 402, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11020, 0, 0, 70, 0, '2492.2036', '44.6202', '2996.0930', 19, 13056783, '2624.5388', '-2717.9092', '2197.6729', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11021, 0, 0, 70, 0, '2491.3474', '41.3595', '2996.0930', 19, 13056783, '2624.5388', '-2717.9092', '2197.6729', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11022, 0, 0, 70, 0, '2488.9699', '44.6333', '2996.0930', 19, 13056783, '2624.5388', '-2717.9092', '2197.6729', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11023, 0, 0, 70, 0, '2488.5732', '41.3583', '2996.0930', 19, 13056783, '2624.5388', '-2717.9092', '2197.6729', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11024, 0, 0, 70, 0, '2485.7424', '44.6218', '2996.0930', 19, 13056783, '2624.5388', '-2717.9092', '2197.6729', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11025, 0, 0, 70, 0, '2485.6398', '41.3925', '2996.0930', 19, 13056783, '2624.5388', '-2717.9092', '2197.6729', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11026, 0, 0, 70, 0, '2484.0209', '43.3275', '2996.0930', 19, 13056783, '2624.5388', '-2717.9092', '2197.6729', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11146, 0, 0, 120, 0, '2336.8764', '-1188.7117', '4199.2089', 17, 17814462, '2179.0454', '-667.1185', '441.8998', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '1', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11078, 0, 0, 120, 0, '2542.5031', '461.6214', '3315.5810', 21, 13980002, '722.1585', '-1428.3889', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11165, 0, 0, 70, 0, '241.8738', '1738.7298', '3001.0000', 22, 18237745, '2191.1606', '-1666.2434', '2501.0859', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11216, 0, 0, 120, 0, '2191.7399', '-1275.9259', '25.1562', 0, 0, '2618.4590', '-1815.6652', '616.5299', 13, 0, 1, 4, 0, 0, 0, 0, 0, 0, '1545, Bellview Street', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11152, 0, 0, 0, 0, '2512.8073', '-1027.1683', '70.0859', 0, 0, '260.8293', '1237.8778', '2084.2578', 13, 0, 2, 5, 0, 0, 0, 0, 15, 0, '564 Collinas', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 729, 0, 0, 0, 0, 0, 0, 0, 0, 1484835394, 1484835394, 0, 0, 0),
(11378, 0, 0, 0, 0, '1905.8720', '-1112.9438', '26.6640', 0, 0, '260.8562', '1237.8763', '2084.2578', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '101 Glen St.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11279, 0, 0, 0, 0, '-62.2584', '-1121.7583', '1.2903', 0, 0, '164.8192', '-185.0487', '3002.2937', 34, 1, 3, 0, 0, 0, 0, 0, 0, 0, '357 pier docks', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11027, 0, 0, 99, 0, '1282.5030', '1281.9071', '2111.2509', 14, 12845053, '2178.6077', '-667.2736', '441.8998', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11028, 0, 0, 99, 0, '1278.0550', '1281.9188', '2111.2468', 14, 12845053, '2178.6077', '-667.2736', '441.8998', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11029, 0, 0, 99, 0, '1278.0550', '1273.4438', '2114.7600', 14, 12845053, '2178.6077', '-667.2736', '441.8998', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11030, 0, 0, 99, 0, '1282.4143', '1273.4241', '2114.7600', 14, 12845053, '2178.6077', '-667.2736', '441.8998', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11031, 0, 0, 99, 0, '1282.4929', '1281.9552', '2118.2438', 14, 12845053, '2178.6077', '-667.2736', '441.8998', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11032, 0, 0, 99, 0, '1278.0605', '1281.9230', '2118.2438', 14, 12845053, '2178.6077', '-667.2736', '441.8998', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11033, 0, 0, 99, 0, '1278.0549', '1273.4987', '2121.7399', 14, 12845053, '2178.6077', '-667.2736', '441.8998', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11034, 0, 0, 99, 0, '1282.4982', '1273.4317', '2121.7390', 14, 12845053, '2178.6077', '-667.2736', '441.8998', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '08', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11035, 0, 0, 99, 0, '1282.4967', '1281.9332', '2125.2329', 14, 12845053, '2178.6077', '-667.2736', '441.8998', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '09', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11036, 0, 0, 99, 0, '1278.0555', '1281.8767', '2125.2290', 14, 12845053, '2178.6077', '-667.2736', '441.8998', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '10', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11037, 0, 0, 60, 0, '1934.2268', '-1896.3955', '15.0348', 0, 0, '1843.9414', '-2360.8472', '2486.6169', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, 'Chambre', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11038, 0, 0, 60, 0, '1909.5863', '-1897.4527', '15.0319', 0, 0, '1843.9414', '-2360.8472', '2486.6169', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, 'Chambre', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11039, 0, 0, 60, 0, '1896.4322', '-1897.8110', '15.0326', 0, 0, '1843.9414', '-2360.8472', '2486.6169', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, 'Chambre', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11040, 0, 0, 60, 0, '1867.1243', '-1897.8114', '15.0302', 0, 0, '1843.9414', '-2360.8472', '2486.6169', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, 'Chambre', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11041, 0, 0, 60, 0, '1845.6005', '-1897.5888', '15.0283', 0, 0, '1843.9414', '-2360.8472', '2486.6169', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, 'Chambre', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11042, 0, 0, 70, 0, '962.2645', '1381.8836', '2498.0629', 21, 16980709, '2191.4163', '-1666.4137', '2501.0869', 14, 0, 1, 3, 0, 1495120969, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11043, 0, 0, 70, 0, '956.1955', '1382.3341', '2498.0629', 21, 16980709, '2191.4163', '-1666.4137', '2501.0869', 14, 0, 1, 3, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11044, 0, 0, 70, 0, '956.1937', '1378.9594', '2498.0629', 21, 16980709, '2191.4163', '-1666.4137', '2501.0869', 14, 0, 1, 3, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11045, 0, 0, 70, 0, '956.1966', '1375.2442', '2498.0629', 21, 16980709, '2191.4163', '-1666.4137', '2501.0869', 14, 0, 1, 3, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11046, 0, 0, 70, 0, '956.1940', '1371.2402', '2498.0629', 21, 16980709, '2191.4163', '-1666.4137', '2501.0869', 14, 0, 1, 3, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11047, 0, 0, 70, 0, '962.2542', '1371.5975', '2498.0629', 21, 16980709, '2191.4163', '-1666.4137', '2501.0869', 14, 0, 1, 3, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11215, 0, 0, 0, 0, '1667.3919', '-2095.4526', '13.6456', 0, 0, '-153.3217', '1014.6373', '2766.9688', 1, 0, 3, 0, 0, 0, 0, 0, 0, 0, '4987 corona', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11166, 0, 0, 70, 0, '239.7978', '1740.5404', '3001.0000', 22, 18237745, '2191.1606', '-1666.2434', '2501.0859', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11273, 0, 0, 0, 0, '687.1900', '-445.6439', '16.3359', 0, 0, '1026.4717', '2599.1150', '2555.8682', 13, 0, 3, 0, 0, 0, 0, 0, 0, 0, '1472, Dillimore', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11376, 0, 0, 0, 0, '1287.1889', '-941.6500', '41.5755', 0, 0, '225.9612', '1240.0341', '2082.1406', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '819 Sunset Blvd', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11214, 0, 0, 0, 0, '223.0406', '1815.5839', '6.9584', 0, 0, '799.8583', '1873.8254', '5999.7822', 13, 1, 2, 1, 0, 0, 0, 0, 0, 0, 'Legionnaire Andy', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11159, 0, 0, 120, 0, '1252.8824', '-901.8034', '46.5938', 0, 0, '2178.7139', '-667.3472', '441.8998', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '815, Porte 5', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11048, 0, 0, 0, 0, '1980.3870', '-1718.8878', '17.0302', 0, 0, '-42.5007', '1406.1182', '2084.4297', 13, 0, 2, 5, 0, 0, 0, 500000, 0, 0, '406, Pat Nixon', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11049, 0, 0, 1, 0, '1967.4434', '-1633.7083', '15.9687', 0, 0, '226.6636', '1239.8148', '2082.1406', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '001 Bloc B, Pat Nixon Gardens', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11052, 0, 0, 299, 0, '239.7653', '1744.1051', '3001.0000', 22, 11575439, '-42.2994', '1405.2640', '2084.4297', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '5', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11053, 0, 0, 0, 0, '2326.8813', '-1681.9848', '14.9296', 0, 0, '260.9263', '1284.9329', '2080.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '328, Union Street', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11077, 0, 0, 130, 0, '2783.9377', '-2158.6027', '3009.2429', 14, 12475390, '722.0363', '-1428.1990', '1201.3190', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '734', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11055, 0, 0, 5000, 0, '2257.0612', '-1643.9362', '15.8081', 0, 0, '226.0867', '1240.0516', '2082.1406', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '110, Grove Street', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 130, 0, 0, 0, 0, 50, 1484835394, 0, 0, 0, 0, 0),
(12304, 0, 0, 0, 0, '2282.2939', '-1641.2156', '15.8897', 0, 0, '261.0637', '1284.2970', '2080.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '125, Ganton', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11171, 0, 0, 70, 0, '2336.8745', '-1188.6490', '4199.2089', 17, 18210722, '1843.6204', '-2360.9304', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11058, 0, 0, 120, 0, '2783.9382', '-2158.5588', '3000.9819', 14, 12475390, '2618.5439', '-1816.2871', '616.5299', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '701', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11059, 0, 0, 130, 0, '2783.9394', '-2148.9003', '3000.9819', 14, 12475390, '2178.3875', '-667.2950', '441.8998', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '702', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11060, 0, 0, 120, 0, '2788.4978', '-2148.9470', '3000.9729', 14, 12475390, '2625.3269', '-2717.8130', '2197.6729', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '703', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11061, 0, 0, 0, 0, '2783.9372', '-2148.8967', '3005.1127', 14, 12475390, '260.5848', '1237.3843', '2084.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '722', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 209, 279, 0, 0, 0, 0, 0, 0, 0, 0, 1484835394, 1484835394, 1484835394, 0),
(11062, 0, 0, 99, 0, '2788.4987', '-2149.0161', '3005.1127', 14, 12475390, '1843.2596', '-2361.0059', '2486.6169', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '723', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11063, 0, 0, 120, 0, '2788.4992', '-2158.6503', '3005.1127', 14, 12475390, '2618.6184', '-1816.3000', '616.5299', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '724', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11064, 0, 0, 119, 0, '2783.9394', '-2158.7019', '3005.1127', 14, 12475390, '2178.6816', '-667.2075', '441.8998', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '721', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11065, 0, 0, 120, 0, '2788.4990', '-2148.6777', '3009.2507', 14, 12475390, '722.4862', '-1428.4125', '1201.3190', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '733', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11066, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '733', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11067, 0, 0, 70, 0, '1612.8507', '63.7118', '1009.7699', 14, 14784446, '1843.7021', '-2361.2456', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11068, 0, 0, 70, 0, '1617.6643', '63.6986', '1009.7699', 14, 14784446, '1843.7021', '-2361.2456', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11069, 0, 0, 70, 0, '1617.6313', '55.2334', '1009.7699', 14, 14784446, '1843.7021', '-2361.2456', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11070, 0, 0, 70, 0, '1612.9169', '55.2343', '1009.7699', 14, 14784446, '1843.7021', '-2361.2456', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11071, 0, 0, 70, 0, '1615.4312', '60.9892', '1005.3789', 14, 14784446, '1843.7021', '-2361.2456', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11072, 0, 0, 70, 0, '1611.3856', '60.9882', '1005.3789', 14, 14784446, '1843.7021', '-2361.2456', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11073, 0, 0, 70, 0, '1611.3164', '65.9754', '1005.3789', 14, 14784446, '1843.7021', '-2361.2456', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11147, 0, 0, 120, 0, '2331.6613', '-1183.9202', '4199.2089', 17, 17814462, '2618.5491', '-1815.6594', '616.5299', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11074, 0, 0, 0, 0, '2581.4865', '-969.1946', '81.3645', 0, 0, '1026.9369', '2599.2080', '2555.8677', 13, 0, 3, 0, 0, 0, 0, 0, 0, 0, '97 Collinas', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11075, 0, 0, 130, 0, '2783.9384', '-2149.0849', '3009.2438', 14, 12475390, '2178.5293', '-667.5212', '441.8998', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '732', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11076, 0, 0, 99, 0, '2788.4995', '-2158.8000', '3009.2507', 14, 12475390, '1843.7444', '-2361.2566', '2486.6169', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '734', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12151, 0, 0, 0, 0, '286.3082', '-1507.2036', '24.9218', 0, 0, '304.3890', '-142.1196', '1004.0625', 7, 1, 2, 5, 0, 0, 0, 0, 0, 0, 'Los Santos Shooting Experience', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4910, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11079, 0, 0, 120, 0, '2543.5825', '464.5700', '3315.5749', 21, 13980002, '722.1585', '-1428.3889', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11080, 0, 0, 120, 0, '2543.5842', '469.1519', '3315.5749', 21, 13980002, '722.1585', '-1428.3889', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11081, 0, 0, 120, 0, '2542.6083', '473.4383', '3315.5739', 21, 13980002, '722.1585', '-1428.3889', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11082, 0, 0, 120, 0, '2533.6296', '473.4386', '3315.5739', 21, 13980002, '722.1585', '-1428.3889', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11083, 0, 0, 120, 0, '2532.3723', '469.2189', '3315.5659', 21, 13980002, '722.1585', '-1428.3889', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11084, 0, 0, 120, 0, '2532.3723', '464.4852', '3315.5739', 21, 13980002, '722.1585', '-1428.3889', '1201.3190', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11085, 0, 0, 120, 0, '2533.6748', '461.6268', '3315.5810', 21, 13980002, '2178.7336', '-667.4122', '441.8998', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '08', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11086, 0, 0, 120, 0, '2533.2512', '471.6813', '3319.1569', 21, 13980002, '2178.7336', '-667.4122', '441.8998', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '09', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11087, 0, 0, 120, 0, '2532.0466', '468.3553', '3319.1508', 21, 13980002, '2178.7336', '-667.4122', '441.8998', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '10', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11088, 0, 0, 120, 0, '2532.0485', '464.2405', '3319.1508', 21, 13980002, '2178.7336', '-667.4122', '441.8998', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '11', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11089, 0, 0, 120, 0, '2533.1032', '459.7284', '3319.1508', 21, 13980002, '2178.7336', '-667.4122', '441.8998', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '12', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11090, 0, 0, 120, 0, '2542.1342', '459.7225', '3319.1508', 21, 13980002, '2618.4214', '-1815.8002', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '13', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11091, 0, 0, 120, 0, '2543.3261', '464.2847', '3319.1440', 21, 13980002, '2618.4214', '-1815.8002', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '14', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11092, 0, 0, 120, 0, '2543.3293', '468.5226', '3319.1440', 21, 13980002, '2618.4214', '-1815.8002', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '15', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11093, 0, 0, 120, 0, '2542.0256', '471.6737', '3319.1569', 21, 13980002, '2618.4214', '-1815.8002', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '16', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11094, 0, 0, 80, 0, '1282.5023', '1281.8579', '2111.2509', 14, 14664071, '2191.2021', '-1666.6351', '2501.0859', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11095, 0, 0, 80, 0, '1278.0559', '1281.8985', '2111.2468', 14, 14664071, '1843.6479', '-2361.5054', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11096, 0, 0, 80, 0, '1278.0552', '1273.3439', '2114.7600', 14, 14664071, '1843.6479', '-2361.5054', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11097, 0, 0, 80, 0, '1282.5019', '1273.3565', '2114.7600', 14, 14664071, '1843.6479', '-2361.5054', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11098, 0, 0, 80, 0, '1282.4830', '1282.0246', '2118.2438', 14, 14664071, '1843.6479', '-2361.5054', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11099, 0, 0, 80, 0, '1278.0555', '1281.9066', '2118.2438', 14, 14664071, '2625.0261', '-2717.6580', '2197.6729', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11100, 0, 0, 80, 0, '1278.0559', '1273.4266', '2121.7399', 14, 14664071, '2625.0261', '-2717.6580', '2197.6729', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11101, 0, 0, 80, 0, '1282.4992', '1273.4528', '2121.7390', 14, 14664071, '2625.0261', '-2717.6580', '2197.6729', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '08', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11102, 0, 0, 80, 0, '1282.4935', '1281.9473', '2125.2329', 14, 14664071, '2625.0261', '-2717.6580', '2197.6729', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '09', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11103, 0, 0, 80, 0, '1278.0566', '1281.8098', '2125.2290', 14, 14664071, '2191.2021', '-1666.6351', '2501.0859', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '10', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11104, 0, 0, 80, 0, '1282.5026', '1281.9387', '2111.2509', 14, 11617270, '1843.9238', '-2361.0676', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11105, 0, 0, 80, 0, '1278.0551', '1281.9182', '2111.2468', 14, 11617270, '1843.9238', '-2361.0676', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11106, 0, 0, 80, 0, '1278.0584', '1273.4665', '2114.7600', 14, 11617270, '1843.9238', '-2361.0676', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11107, 0, 0, 80, 0, '1282.5025', '1273.4484', '2114.7600', 14, 11617270, '1843.9238', '-2361.0676', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `houses` (`Hid`, `Owner`, `Renter`, `RentPrice`, `Caisse`, `OutX`, `OutY`, `OutZ`, `OutInt`, `OutWorld`, `InX`, `InY`, `InZ`, `InInt`, `Open`, `Type`, `MaxInvits`, `Trash`, `Removing`, `RemovPlayer`, `Price`, `Frigo`, `Poub`, `Title`, `Kit`, `Grammes`, `TimeCanna`, `Meth`, `TimeMeth`, `Matos`, `Essence`, `Kit1`, `Kit2`, `Kit3`, `Kit4`, `Kit5`, `Kit6`, `Kit7`, `Kit8`, `Kit9`, `Kit10`, `Kit11`, `Kit12`, `Kit13`, `Kit14`, `Kit15`, `Kit16`, `Kit17`, `Kit18`, `Kit19`, `Kit20`, `Kit21`, `Kit22`, `Kit23`, `Kit24`, `Kit25`, `Kit26`, `Kit27`, `Kit28`, `Kit29`, `Kit30`, `gMeth`, `gCoke`, `gHero`, `gStero`, `gCanna`, `Autoriz`, `PlacementActor`, `LastBraquo`, `Braquable`, `Contrebande`, `TDrugCanna`, `TDrugCoke`, `TDrugHero`, `TDrugMeth`, `TDrugStero`, `CoffreFurn`) VALUES
(11108, 0, 0, 80, 0, '1282.4914', '1281.9631', '2118.2438', 14, 11617270, '1843.9238', '-2361.0676', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11109, 0, 0, 80, 0, '1278.0565', '1281.8905', '2118.2438', 14, 11617270, '1843.9238', '-2361.0676', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11110, 0, 0, 80, 0, '1278.0557', '1273.4149', '2121.7399', 14, 11617270, '2191.4456', '-1666.1357', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11111, 0, 0, 80, 0, '1282.5004', '1273.3752', '2121.7390', 14, 11617270, '2191.4456', '-1666.1357', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '08', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11112, 0, 0, 80, 0, '1282.5018', '1281.8908', '2125.2329', 14, 11617270, '2191.4456', '-1666.1357', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '09', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11113, 0, 0, 80, 0, '1278.0576', '1281.9224', '2125.2290', 14, 11617270, '2191.4456', '-1666.1357', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '10', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11114, 0, 0, 80, 0, '2796.9343', '-2152.6401', '2997.7946', 14, 16440400, '244.3281', '304.8893', '999.1484', 1, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11115, 0, 0, 80, 0, '2795.0131', '-2147.7038', '2997.7946', 14, 16440400, '244.3281', '304.8893', '999.1484', 1, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11116, 0, 0, 80, 0, '2792.4658', '-2144.9736', '2997.7946', 14, 16440400, '244.3281', '304.8893', '999.1484', 1, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11117, 0, 0, 80, 0, '2790.4880', '-2143.5976', '2997.7946', 14, 16440400, '244.3281', '304.8893', '999.1484', 1, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11118, 0, 0, 80, 0, '2796.1269', '-2142.6538', '2997.7946', 14, 16440400, '244.3281', '304.8893', '999.1484', 1, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11119, 0, 0, 80, 0, '2799.3835', '-2142.6538', '2997.7946', 14, 16440400, '244.3281', '304.8893', '999.1484', 1, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 10, 1459420761, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11120, 0, 0, 80, 0, '2802.1203', '-2144.2155', '2997.7946', 14, 16440400, '244.3281', '304.8893', '999.1484', 1, 0, 1, 2, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11121, 0, 0, 80, 0, '2783.9392', '-2148.9160', '3000.9819', 14, 16440400, '2191.3728', '-1666.3680', '2501.0869', 14, 0, 1, 2, 0, 1495217401, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11122, 0, 0, 80, 0, '2788.4963', '-2148.9843', '3000.9729', 14, 16440400, '2191.3728', '-1666.3680', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11123, 0, 0, 80, 0, '2783.9416', '-2158.6428', '3000.9819', 14, 16440400, '2191.3728', '-1666.3680', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11124, 0, 0, 80, 0, '2783.9389', '-2148.9497', '3005.1127', 14, 16440400, '2191.3728', '-1666.3680', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11125, 0, 0, 80, 0, '2788.4963', '-2148.8771', '3005.1127', 14, 16440400, '2191.3728', '-1666.3680', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11126, 0, 0, 80, 0, '2788.4975', '-2158.6520', '3005.1127', 14, 16440400, '2191.3728', '-1666.3680', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11127, 0, 0, 80, 0, '2783.9392', '-2158.5847', '3005.1127', 14, 16440400, '2191.3728', '-1666.3680', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11128, 0, 0, 80, 0, '2783.9433', '-2148.9411', '3009.2438', 14, 16440400, '2191.3728', '-1666.3680', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '08', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11129, 0, 0, 80, 0, '2788.4975', '-2148.8952', '3009.2507', 14, 16440400, '2191.3728', '-1666.3680', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '09', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11130, 0, 0, 80, 0, '2788.4982', '-2158.5795', '3009.2507', 14, 16440400, '2191.3728', '-1666.3680', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '10', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11131, 0, 0, 80, 0, '2783.9458', '-2158.6137', '3009.2429', 14, 16440400, '2191.3728', '-1666.3680', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '11', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11132, 0, 0, 80, 0, '2783.9438', '-2148.9570', '3000.9819', 14, 12272035, '1843.9189', '-2361.0625', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11133, 0, 0, 80, 0, '2788.4995', '-2148.8972', '3000.9729', 14, 12272035, '1843.9189', '-2361.0625', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11134, 0, 0, 80, 0, '2783.9416', '-2158.5158', '3000.9819', 14, 12272035, '1843.9189', '-2361.0625', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11135, 0, 0, 80, 0, '2783.9399', '-2148.9079', '3005.1127', 14, 12272035, '1843.9189', '-2361.0625', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11136, 0, 0, 80, 0, '2788.4934', '-2148.9580', '3005.1127', 14, 12272035, '1843.9189', '-2361.0625', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11137, 0, 0, 80, 0, '2788.4990', '-2158.5871', '3005.1127', 14, 12272035, '1843.9189', '-2361.0625', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11138, 0, 0, 80, 0, '2783.9504', '-2158.6718', '3005.1127', 14, 12272035, '1843.9189', '-2361.0625', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1484835394, 0),
(11139, 0, 0, 80, 0, '2783.9399', '-2148.9968', '3009.2438', 14, 12272035, '1843.9189', '-2361.0625', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '08', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11140, 0, 0, 80, 0, '2788.4982', '-2148.8713', '3009.2507', 14, 12272035, '1843.9189', '-2361.0625', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '09', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11141, 0, 0, 80, 0, '2788.4990', '-2158.6545', '3009.2507', 14, 12272035, '1843.9189', '-2361.0625', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '10', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11142, 0, 0, 80, 0, '2783.9450', '-2158.5839', '3009.2429', 14, 12272035, '1843.9189', '-2361.0625', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '11', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11172, 0, 0, 70, 0, '2331.7448', '-1183.9219', '4199.2089', 17, 18210722, '1843.6204', '-2360.9304', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11160, 0, 0, 120, 0, '1245.4130', '-902.8693', '46.5938', 0, 0, '722.0864', '-1428.3116', '1201.3190', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '815, Porte 6', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11259, 0, 0, 0, 0, '1895.5152', '-2068.7226', '15.6688', 0, 0, '318.4427', '1114.8149', '2083.8828', 13, 0, 2, 4, 0, 0, 0, 0, 0, 30, '4557 Corona', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 108, 105, 19, 89, 0, 0, 0, 0, 0, 1484835394, 1484835394, 1484835394, 0, 1484835394, 0),
(11153, 0, 0, 0, 0, '2527.1018', '-1322.0042', '1031.4218', 2, 12355, '1451.0786', '-1889.5580', '2302.1035', 234, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Appart 3', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11722, 0, 0, 0, 0, '1518.0413', '-1453.9222', '14.2076', 0, 0, '1531.7622', '-1460.5015', '2001.0929', 96, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'CSS | Commerce Security Service', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11161, 0, 0, 0, 0, '790.8514', '-1661.1483', '13.4842', 0, 0, '83.2472', '1322.5707', '2083.8662', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '337 Marina', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11143, 0, 0, 0, 0, '-50.5662', '-233.6559', '6.7646', 0, 0, '1733.3379', '-885.7799', '8001.0859', 4, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'ORPESA GROUP LOGISTIC', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11224, 0, 0, 50, 0, '681.5755', '-473.3540', '16.5362', 0, 0, '318.4418', '1115.1262', '2083.8828', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '16 N. Main St.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1484835394, 0, 0, 0),
(11145, 0, 0, 0, 0, '1489.2637', '-1719.4354', '8.2428', 0, 0, '1026.4550', '2599.6326', '2555.8672', 13, 1, 3, 0, 0, 0, 0, 0, 0, 0, 'Local d\'égout', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11229, 0, 0, 70, 0, '-1032.7767', '1551.1777', '505.6689', 14, 12975976, '1843.2603', '-2361.0188', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11189, 0, 0, 0, 0, '1885.8817', '-1113.6458', '26.2758', 0, 0, '-42.4698', '1405.5448', '2084.4297', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '100 Glen St.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11262, 0, 0, 20, 0, '996.3646', '-1430.8652', '13.5468', 0, 0, '1026.8033', '2599.7778', '2555.8667', 13, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'Cohenheim Self-Stockage', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11164, 0, 0, 70, 0, '241.8552', '1735.9635', '3001.0000', 22, 18237745, '2191.1606', '-1666.2434', '2501.0859', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11148, 0, 0, 99, 0, '2335.0856', '-1179.1257', '4199.2089', 17, 17814462, '2624.6091', '-2717.5176', '2197.6729', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '3', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11149, 0, 0, 99, 0, '2335.7585', '-1174.1208', '4199.2089', 17, 17814462, '1843.8000', '-2360.8594', '2486.6169', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '4', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11150, 0, 0, 120, 0, '2341.4392', '-1174.1146', '4199.2089', 17, 17814462, '2618.5452', '-1815.6593', '616.5299', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '5', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11151, 0, 0, 120, 0, '2345.1667', '-1174.9809', '4199.2089', 17, 17814462, '2179.0278', '-667.2742', '441.8998', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '6', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11157, 0, 0, 99, 0, '1245.4595', '-902.8466', '42.8828', 0, 0, '1843.3038', '-2361.1404', '2486.6169', 13, 0, 1, 0, 0, 0, 0, 0, 0, 0, '815, Porte 2', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11167, 0, 0, 70, 0, '241.8743', '1742.0679', '3001.0000', 22, 18237745, '2191.1606', '-1666.2434', '2501.0859', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11168, 0, 0, 70, 0, '239.7612', '1743.9177', '3001.0000', 22, 18237745, '2191.1606', '-1666.2434', '2501.0859', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11169, 0, 0, 70, 0, '242.3829', '1745.6997', '3001.0000', 22, 18237745, '2191.1606', '-1666.2434', '2501.0859', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11170, 0, 0, 70, 0, '245.0960', '1744.2851', '3001.0000', 22, 18237745, '2191.1606', '-1666.2434', '2501.0859', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11329, 0, 0, 100, 0, '-1438.6954', '-1544.5429', '102.0514', 0, 0, '226.1252', '1240.0808', '2082.1406', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '412 Bone County', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1179, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11226, 0, 0, 120, 0, '745.2538', '-556.7841', '18.0129', 0, 0, '2618.4263', '-1816.0687', '616.5299', 13, 0, 1, 4, 0, 0, 0, 0, 0, 0, '1547 dillmore', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11227, 0, 0, 50, 0, '1083.0570', '-1226.6237', '15.8203', 0, 0, '318.6737', '1114.4792', '2083.8828', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, 'LST', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11173, 0, 0, 70, 0, '2335.0786', '-1179.1729', '4199.2089', 17, 18210722, '1843.6204', '-2360.9304', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11174, 0, 0, 70, 0, '2335.8156', '-1174.1215', '4199.2089', 17, 18210722, '2191.4351', '-1666.6193', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11175, 0, 0, 70, 0, '2341.5559', '-1174.1160', '4199.2089', 17, 18210722, '2191.4351', '-1666.6193', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11176, 0, 0, 70, 0, '2345.1628', '-1175.1778', '4199.2089', 17, 18210722, '2191.4351', '-1666.6193', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11177, 0, 0, 70, 0, '2336.8774', '-1188.7113', '4199.2089', 17, 13222737, '2259.7354', '-1136.2609', '1050.6328', 10, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11178, 0, 0, 70, 0, '2331.6918', '-1183.9204', '4199.2089', 17, 13222737, '2259.7354', '-1136.2609', '1050.6328', 10, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11179, 0, 0, 70, 0, '2335.0773', '-1179.1060', '4199.2089', 17, 13222737, '2259.7354', '-1136.2609', '1050.6328', 10, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11180, 0, 0, 70, 0, '2335.9226', '-1174.1206', '4199.2089', 17, 13222737, '1843.6277', '-2361.0452', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11181, 0, 0, 70, 0, '2341.6010', '-1174.1160', '4199.2089', 17, 13222737, '1843.6277', '-2361.0452', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11182, 0, 0, 70, 0, '2345.1621', '-1175.1159', '4199.2089', 17, 13222737, '1843.6277', '-2361.0452', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11183, 0, 0, 70, 0, '962.2644', '1371.5766', '2498.0629', 21, 14599762, '1843.6732', '-2361.0391', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11184, 0, 0, 70, 0, '956.1950', '1371.1677', '2498.0629', 21, 14599762, '1843.6732', '-2361.0391', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11186, 0, 0, 70, 0, '956.1938', '1378.8668', '2498.0629', 21, 14599762, '1843.6732', '-2361.0391', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11187, 0, 0, 70, 0, '956.1992', '1382.4255', '2498.0629', 21, 14599762, '1843.6732', '-2361.0391', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11188, 0, 0, 70, 0, '962.2632', '1382.0187', '2498.0629', 21, 14599762, '1843.6732', '-2361.0391', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11191, 0, 0, 70, 0, '1921.3099', '-1115.1875', '27.0883', 0, 0, '226.2895', '1240.3093', '2082.1406', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '102 Glen St.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11193, 0, 0, 0, 0, '1955.1250', '-1115.3386', '27.8304', 0, 0, '261.2968', '1284.6343', '2080.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '104 Glen St.', 0, 0, 0, 10, 1452708288, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11194, 0, 0, 70, 0, '2796.9377', '-2152.6523', '2997.7946', 14, 10273875, '1843.3167', '-2361.2754', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11195, 0, 0, 70, 0, '2795.0144', '-2147.7788', '2997.7946', 14, 10273875, '1843.3167', '-2361.2754', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11196, 0, 0, 70, 0, '2792.3249', '-2144.9702', '2997.7946', 14, 10273875, '1843.3167', '-2361.2754', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11197, 0, 0, 70, 0, '2792.3759', '-2142.6621', '2997.7946', 14, 10273875, '1843.3167', '-2361.2754', '2486.6169', 13, 1, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11198, 0, 0, 70, 0, '2796.1623', '-2142.6545', '2997.7946', 14, 10273875, '1843.3167', '-2361.2754', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11199, 0, 0, 70, 0, '2799.7573', '-2142.6552', '2997.7946', 14, 10273875, '1843.3167', '-2361.2754', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11200, 0, 0, 70, 0, '2799.6101', '-2144.9719', '2997.7946', 14, 10273875, '1843.3167', '-2361.2754', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11201, 0, 0, 90, 0, '2783.9392', '-2148.9799', '3000.9819', 14, 10273875, '2191.4182', '-1666.3989', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11202, 0, 0, 90, 0, '2788.4968', '-2149.0139', '3000.9729', 14, 10273875, '2191.4182', '-1666.3989', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11203, 0, 0, 90, 0, '2783.9384', '-2158.6674', '3000.9819', 14, 10273875, '2191.4182', '-1666.3989', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11204, 0, 0, 90, 0, '2783.9372', '-2148.8994', '3005.1127', 14, 10273875, '2191.4182', '-1666.3989', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 10, 1471719907, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11205, 0, 0, 90, 0, '2788.4965', '-2148.8544', '3005.1127', 14, 10273875, '2191.4182', '-1666.3989', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11206, 0, 0, 90, 0, '2788.4997', '-2158.6032', '3005.1127', 14, 10273875, '2191.4182', '-1666.3989', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11207, 0, 0, 90, 0, '2783.9416', '-2158.6174', '3005.1127', 14, 10273875, '2191.4182', '-1666.3989', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11208, 0, 0, 90, 0, '2783.9489', '-2148.9484', '3009.2438', 14, 10273875, '2191.4182', '-1666.3989', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '08', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11209, 0, 0, 90, 0, '2788.4951', '-2149.0539', '3009.2507', 14, 10273875, '222.8262', '1287.5509', '1082.1406', 1, 0, 1, 2, 0, 0, 0, 0, 0, 0, '09', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11210, 0, 0, 90, 0, '2788.4975', '-2158.6379', '3009.2507', 14, 10273875, '222.8262', '1287.5509', '1082.1406', 1, 0, 1, 2, 0, 0, 0, 0, 0, 0, '10', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11211, 0, 0, 90, 0, '2783.9416', '-2158.5085', '3009.2429', 14, 10273875, '222.8262', '1287.5509', '1082.1406', 1, 0, 1, 2, 0, 0, 0, 0, 0, 0, '11', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11217, 0, 0, 120, 0, '2207.9948', '-1280.8251', '25.1206', 0, 0, '2178.5972', '-666.7983', '441.8909', 13, 0, 1, 4, 0, 0, 0, 0, 0, 0, '1555, Bellview Street', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11218, 0, 0, 120, 0, '2230.2558', '-1280.1385', '25.6285', 0, 0, '722.3158', '-1427.8572', '1201.3190', 13, 0, 1, 4, 0, 0, 0, 0, 0, 0, '1565, Bellview Street', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11219, 0, 0, 120, 0, '2250.2468', '-1280.0577', '25.4765', 0, 0, '2619.0911', '-1816.1353', '616.5299', 13, 0, 1, 4, 0, 0, 0, 0, 0, 0, '1575, Bellview Street', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11220, 0, 0, 120, 0, '2191.6740', '-1239.2316', '24.4878', 0, 0, '2178.8462', '-667.7078', '441.8998', 13, 0, 1, 4, 0, 0, 0, 0, 0, 0, '1630, Lisbon Street', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11818, 0, 0, 0, 0, '2072.2719', '-1551.1994', '13.4234', 0, 0, '2265.5789', '-1714.1647', '1052.7823', 22, 1, 3, 0, 0, 0, 0, 0, 0, 0, 'Idlesquat', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11222, 0, 0, 0, 0, '2229.5205', '-1241.6105', '25.6562', 0, 0, '-1076.0487', '-1996.5548', '2007.0869', 105, 0, 2, 5, 0, 0, 0, 0, 12, 3, '1650, Lisbon Street', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 363, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11223, 0, 0, 120, 0, '2249.9948', '-1238.9058', '25.8984', 0, 0, '2618.2705', '-1816.1823', '616.5299', 13, 0, 1, 4, 0, 0, 0, 0, 0, 0, '1660, Lisbon Street', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11813, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1548, Marina', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11230, 0, 0, 70, 0, '-1039.6584', '1552.9636', '505.6689', 14, 12975976, '1843.2603', '-2361.0188', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11231, 0, 0, 70, 0, '-1035.9907', '1554.5839', '505.6689', 14, 12975976, '1843.2603', '-2361.0188', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11232, 0, 0, 70, 0, '-1029.8708', '1556.8933', '505.6769', 14, 12975976, '1843.2603', '-2361.0188', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11233, 0, 0, 70, 0, '-1029.8839', '1562.1386', '505.6769', 14, 12975976, '1843.2603', '-2361.0188', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11234, 0, 0, 70, 0, '-1027.2675', '1563.9281', '505.6769', 14, 12975976, '1843.2603', '-2361.0188', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11235, 0, 0, 70, 0, '-1022.6500', '1563.9326', '505.6769', 14, 12975976, '1843.2603', '-2361.0188', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11236, 0, 0, 70, 0, '-1021.4445', '1559.8048', '505.6769', 14, 12975976, '1843.2603', '-2361.0188', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '08', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11237, 0, 0, 70, 0, '-1021.4970', '1553.4464', '505.6759', 14, 12975976, '1843.2603', '-2361.0188', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '09', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11238, 0, 0, 70, 0, '-1026.1907', '1551.1926', '505.6759', 14, 12975976, '1843.2603', '-2361.0188', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '10', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11239, 0, 0, 70, 0, '-1032.7982', '1551.1782', '505.6689', 14, 15152090, '1843.2610', '-2361.0188', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1484835394, 1484835394, 0, 0, 0),
(11240, 0, 0, 70, 0, '-1039.6601', '1552.9617', '505.6689', 14, 15152090, '1843.2610', '-2361.0188', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11241, 0, 0, 70, 0, '-1035.8674', '1554.5745', '505.6689', 14, 15152090, '1843.2610', '-2361.0188', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11242, 0, 0, 70, 0, '-1029.8730', '1556.9184', '505.6769', 14, 15152090, '1843.2610', '-2361.0188', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11243, 0, 0, 70, 0, '-1029.8823', '1561.9512', '505.6769', 14, 15152090, '1843.2610', '-2361.0188', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11244, 0, 0, 70, 0, '-1027.4510', '1563.9438', '505.6769', 14, 15152090, '1843.2610', '-2361.0188', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11245, 0, 0, 70, 0, '-1022.7504', '1563.9323', '505.6769', 14, 15152090, '1843.2610', '-2361.0188', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11246, 0, 0, 70, 0, '-1021.4446', '1559.8142', '505.6769', 14, 15152090, '1843.2610', '-2361.0188', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '08', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11247, 0, 0, 70, 0, '-1021.4821', '1553.3746', '505.6759', 14, 15152090, '1843.2610', '-2361.0188', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '09', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11248, 0, 0, 70, 0, '-1026.1539', '1551.1940', '505.6759', 14, 15152090, '1843.2610', '-2361.0188', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '10', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11249, 0, 0, 70, 0, '-1032.9130', '1551.1801', '505.6689', 14, 17043428, '1843.2609', '-2360.9910', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11250, 0, 0, 70, 0, '-1039.6590', '1553.0666', '505.6689', 14, 17043428, '1843.2609', '-2360.9910', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11251, 0, 0, 70, 0, '-1035.8585', '1554.5800', '505.6689', 14, 17043428, '1843.2609', '-2360.9910', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11252, 0, 0, 70, 0, '-1029.8728', '1556.9459', '505.6769', 14, 17043428, '1843.2609', '-2360.9910', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11253, 0, 0, 70, 0, '-1029.8793', '1561.9731', '505.6769', 14, 17043428, '1843.2609', '-2360.9910', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11254, 0, 0, 70, 0, '-1027.3066', '1563.9440', '505.6769', 14, 17043428, '1843.2609', '-2360.9910', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11255, 0, 0, 70, 0, '-1022.7044', '1563.9332', '505.6769', 14, 17043428, '1843.2609', '-2360.9910', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11256, 0, 0, 70, 0, '-1021.4453', '1559.8769', '505.6769', 14, 17043428, '1843.2609', '-2360.9910', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '08', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11257, 0, 0, 70, 0, '-1021.4816', '1553.3449', '505.6759', 14, 17043428, '1843.2609', '-2360.9910', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '09', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11258, 0, 0, 70, 0, '-1026.1433', '1551.1967', '505.6759', 14, 17043428, '1843.2609', '-2360.9910', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '10', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11269, 0, 0, 0, 0, '2457.5539', '-1901.9730', '13.5468', 0, 0, '1716.2139', '-880.0574', '8001.0859', 1, 1, 3, 0, 0, 0, 0, 0, 0, 0, 'local 356', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11260, 0, 0, 0, 0, '1781.5484', '-2101.5383', '14.0566', 0, 0, '-69.0399', '1351.8787', '2080.2109', 13, 0, 2, 5, 0, 0, 0, 0, 12, 3, '453 Gates St.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12189, 0, 0, 0, 0, '2481.5979', '-1345.0030', '27.6437', 0, 0, '-136.1843', '1050.0137', '2736.9688', 1, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'Catherine Street, 01.', 201, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 244, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11777, 0, 0, 100, 0, '2314.3752', '-1803.6735', '3576.7309', 40, 18800286, '2259.3816', '-1135.7876', '1050.6403', 10, 0, 1, 2, 0, 0, 0, 0, 0, 0, '10', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11778, 0, 0, 100, 0, '2310.1462', '-1803.6737', '3576.7309', 40, 18800286, '2259.3816', '-1135.8182', '1050.6403', 10, 0, 1, 2, 0, 0, 0, 0, 0, 0, '20', 0, 0, 0, 10, 1461247976, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11779, 0, 0, 100, 0, '2314.9260', '-1808.9554', '3576.7309', 40, 18800286, '2260.0151', '-1135.9677', '1050.6328', 10, 0, 1, 2, 0, 0, 0, 0, 0, 0, '30', 0, 0, 0, 10, 1461248038, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11780, 0, 0, 100, 0, '2310.9960', '-1808.9539', '3576.7309', 40, 18800286, '2259.3813', '-1135.8876', '1050.6403', 10, 0, 1, 2, 0, 0, 0, 0, 0, 0, '40', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11781, 0, 0, 100, 0, '2303.0739', '-1809.8634', '3576.7309', 40, 18800286, '2259.3813', '-1135.8320', '1050.6403', 10, 0, 1, 2, 0, 0, 0, 0, 0, 0, '50', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1484835394, 1484835394, 1484835394, 0, 0, 0),
(11782, 0, 0, 100, 0, '2296.7080', '-1808.2938', '3576.7309', 40, 18800286, '2259.3813', '-1135.8594', '1050.6403', 10, 0, 1, 2, 0, 0, 0, 0, 0, 0, '60', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11272, 0, 0, 0, 0, '852.4281', '-1436.2336', '15.0436', 0, 0, '234.5536', '1105.4779', '2080.9978', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '08 Marina St.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1484835394, 0, 0, 0, 0),
(11274, 0, 0, 120, 0, '1970.0588', '-1671.1995', '15.9687', 0, 0, '2618.3997', '-1815.6824', '616.5299', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '001 Bloc C, Pat Nixon Gardens', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11275, 0, 0, 120, 0, '1974.9306', '-1671.1995', '15.9687', 0, 0, '2178.6245', '-666.7972', '441.8909', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '002 Bloc C, Pat Nixon Gardens', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11276, 0, 0, 120, 0, '1978.7608', '-1671.5015', '16.1876', 0, 0, '722.4860', '-1428.4152', '1201.3190', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '003 Bloc C, Pat Nixon Gardens', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11277, 0, 0, 99, 0, '1970.0241', '-1671.1923', '18.5455', 0, 0, '1844.0898', '-2361.1035', '2486.6169', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '004 Bloc C, Pat Nixon Gardens', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11278, 0, 0, 99, 0, '1974.7962', '-1671.1956', '18.5455', 0, 0, '2624.6038', '-2717.5544', '2197.6729', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '005 Bloc C, Pat Nixon Gardens', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11282, 0, 0, 0, 0, '2342.7416', '2477.8276', '3361.6459', 38, 313, '-294.8566', '1034.2848', '31102.8555', 39, 1, 2, 1, 0, 0, 0, 0, 0, 0, '1', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2524, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11283, 0, 0, 0, 0, '2342.7416', '2482.6667', '3361.6459', 38, 313, '-294.8465', '1034.3121', '31102.8555', 39, 1, 2, 1, 0, 0, 0, 0, 0, 0, '2', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2524, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11284, 0, 0, 100, 0, '2345.2072', '2482.9519', '3361.6459', 38, 313, '-294.8465', '1034.3121', '31102.8555', 39, 0, 2, 1, 0, 0, 0, 0, 0, 0, '3', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2524, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11285, 0, 0, 100, 0, '2345.2077', '2477.2031', '3361.6459', 38, 313, '-294.8465', '1034.3121', '31102.8555', 39, 1, 2, 1, 0, 0, 0, 0, 0, 0, '4', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2524, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11286, 0, 0, 0, 0, '2345.2080', '2462.3349', '3361.6459', 38, 313, '-294.8191', '1034.3601', '31102.8555', 39, 0, 2, 1, 0, 0, 0, 0, 0, 0, '1', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2524, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11287, 0, 0, 0, 0, '2345.2067', '2456.7124', '3361.6459', 38, 313, '-295.1369', '1033.9490', '31102.8555', 39, 0, 2, 1, 0, 0, 0, 0, 0, 0, '2', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2524, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11288, 0, 0, 0, 0, '2342.7446', '2456.7343', '3361.6459', 38, 313, '-295.1568', '1034.0568', '31102.8555', 39, 0, 2, 1, 0, 0, 0, 0, 0, 0, '3', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2524, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `houses` (`Hid`, `Owner`, `Renter`, `RentPrice`, `Caisse`, `OutX`, `OutY`, `OutZ`, `OutInt`, `OutWorld`, `InX`, `InY`, `InZ`, `InInt`, `Open`, `Type`, `MaxInvits`, `Trash`, `Removing`, `RemovPlayer`, `Price`, `Frigo`, `Poub`, `Title`, `Kit`, `Grammes`, `TimeCanna`, `Meth`, `TimeMeth`, `Matos`, `Essence`, `Kit1`, `Kit2`, `Kit3`, `Kit4`, `Kit5`, `Kit6`, `Kit7`, `Kit8`, `Kit9`, `Kit10`, `Kit11`, `Kit12`, `Kit13`, `Kit14`, `Kit15`, `Kit16`, `Kit17`, `Kit18`, `Kit19`, `Kit20`, `Kit21`, `Kit22`, `Kit23`, `Kit24`, `Kit25`, `Kit26`, `Kit27`, `Kit28`, `Kit29`, `Kit30`, `gMeth`, `gCoke`, `gHero`, `gStero`, `gCanna`, `Autoriz`, `PlacementActor`, `LastBraquo`, `Braquable`, `Contrebande`, `TDrugCanna`, `TDrugCoke`, `TDrugHero`, `TDrugMeth`, `TDrugStero`, `CoffreFurn`) VALUES
(11559, 0, 0, 0, 0, '2336.8764', '-1188.8571', '4199.2089', 17, 10916859, '1843.8911', '-2360.9507', '2486.6169', 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11290, 0, 0, 0, 0, '2355.5654', '2477.2187', '3361.6459', 38, 313, '-294.8191', '1034.3601', '31102.8555', 39, 0, 2, 1, 0, 0, 0, 0, 0, 0, '1', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2524, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11291, 0, 0, 0, 0, '2355.5720', '2483.0114', '3361.6459', 38, 313, '-295.2235', '1034.1909', '31102.8555', 39, 0, 2, 1, 0, 0, 0, 0, 0, 0, '2', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2524, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11292, 0, 0, 0, 0, '2358.0104', '2482.9189', '3361.6459', 38, 313, '-294.8191', '1034.3601', '31102.8555', 39, 0, 2, 1, 0, 0, 0, 0, 0, 0, '3', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2524, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11293, 0, 0, 0, 0, '2358.0104', '2477.2888', '3361.6459', 38, 313, '-294.8191', '1034.3601', '31102.8555', 39, 0, 2, 1, 0, 0, 0, 0, 0, 0, '4', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2524, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11294, 0, 0, 0, 0, '2358.0097', '2462.3684', '3361.6459', 38, 313, '-294.8191', '1034.3601', '31102.8555', 39, 0, 2, 1, 0, 0, 0, 0, 0, 0, '1', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2524, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11295, 0, 0, 0, 0, '2358.0112', '2456.8403', '3361.6459', 38, 313, '-294.8191', '1034.3601', '31102.8555', 39, 0, 2, 1, 0, 0, 0, 0, 0, 0, '2', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2524, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11296, 0, 0, 0, 0, '2355.5637', '2456.5744', '3361.6459', 38, 313, '-294.8191', '1034.3601', '31102.8555', 39, 0, 2, 1, 0, 0, 0, 0, 0, 0, '3', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2524, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11297, 0, 0, 0, 0, '2355.5642', '2462.1921', '3361.6459', 38, 313, '-294.8191', '1034.3601', '31102.8555', 39, 0, 2, 1, 0, 0, 0, 0, 0, 0, '4', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2524, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11298, 0, 0, 0, 0, '2342.7426', '2477.7375', '3361.6459', 38, 314, '-295.2239', '1033.9735', '31102.8555', 39, 1, 2, 1, 0, 0, 0, 0, 0, 0, '1', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2524, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11299, 0, 0, 0, 0, '2342.7429', '2482.7795', '3361.6459', 38, 314, '-295.2263', '1034.1967', '31102.8555', 39, 1, 2, 1, 0, 0, 0, 0, 0, 0, '2', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2524, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11300, 0, 0, 0, 0, '2345.2072', '2482.7072', '3361.6459', 38, 314, '-295.2263', '1034.1967', '31102.8555', 39, 1, 2, 1, 0, 0, 0, 0, 0, 0, '3', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2524, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11301, 0, 0, 0, 0, '2345.2082', '2477.3144', '3361.6459', 38, 314, '-295.2239', '1033.9735', '31102.8555', 39, 1, 2, 1, 0, 0, 0, 0, 0, 0, '4', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2524, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11302, 0, 0, 0, 0, '2342.7998', '2462.5812', '3361.6459', 38, 313, '-295.2238', '1034.1176', '31102.8555', 39, 0, 2, 1, 0, 0, 0, 0, 0, 0, '4', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2524, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11303, 0, 0, 0, 0, '2345.2065', '2456.7395', '3361.6459', 38, 314, '1715.9724', '-879.8531', '8001.0859', 1, 1, 2, 1, 0, 0, 0, 0, 0, 0, '2', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2524, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11304, 0, 0, 0, 0, '2342.7419', '2456.7480', '3361.6459', 38, 314, '-295.2263', '1034.1967', '31102.8555', 39, 1, 2, 1, 0, 0, 0, 0, 0, 0, '3', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2524, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11305, 0, 0, 0, 0, '2342.7434', '2462.2070', '3361.6459', 38, 314, '1715.9724', '-879.8531', '8001.0859', 1, 1, 2, 1, 0, 0, 0, 0, 0, 0, '4', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2524, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11306, 0, 0, 0, 0, '2355.5639', '2477.4399', '3361.6459', 38, 314, '-295.2263', '1034.1967', '31102.8555', 39, 1, 2, 1, 0, 0, 0, 0, 0, 0, '1', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2524, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11307, 0, 0, 0, 0, '2355.5644', '2482.8103', '3361.6459', 38, 314, '-295.2263', '1034.1967', '31102.8555', 39, 1, 2, 1, 0, 0, 0, 0, 0, 0, '2', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2524, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11308, 0, 0, 0, 0, '2358.0097', '2482.8740', '3361.6459', 38, 314, '-295.2263', '1034.1967', '31102.8555', 39, 1, 2, 1, 0, 0, 0, 0, 0, 0, '3', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2524, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11309, 0, 0, 0, 0, '2358.0107', '2477.3688', '3361.6459', 38, 314, '-295.2263', '1034.1967', '31102.8555', 39, 1, 2, 1, 0, 0, 0, 0, 0, 0, '4', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2524, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11310, 0, 0, 0, 0, '2358.0112', '2462.1889', '3361.6459', 38, 314, '1715.9724', '-879.8531', '8001.0859', 1, 1, 2, 1, 0, 0, 0, 0, 0, 0, '1', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2524, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11311, 0, 0, 0, 0, '2358.0109', '2456.7312', '3361.6459', 38, 314, '1715.9724', '-879.8531', '8001.0859', 1, 1, 2, 1, 0, 0, 0, 0, 14, 1, '2', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2524, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11312, 0, 0, 0, 0, '2355.5639', '2457.0649', '3361.6459', 38, 314, '-295.2263', '1034.1967', '31102.8555', 39, 1, 2, 1, 0, 0, 0, 0, 0, 0, '3', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2524, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11313, 0, 0, 0, 0, '2355.5656', '2462.1496', '3361.6459', 38, 314, '-295.2263', '1034.1967', '31102.8555', 39, 1, 2, 1, 0, 0, 0, 0, 0, 0, '4', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2524, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11373, 0, 0, 0, 0, '1559.9086', '-1845.5047', '13.5468', 0, 0, '-67.8913', '909.5192', '3004.0178', 49, 1, 2, 5, 0, 0, 0, 0, 0, 0, 'Ravenite Social Club', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12259, 0, 0, 0, 0, '138.3683', '-1851.1409', '3.7561', 0, 0, '891.8333', '-662.1086', '2601.1001', 228, 0, 2, 5, 0, 0, 0, 0, 0, 0, '55, Marina', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 142, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11589, 0, 0, 0, 0, '1220.1175', '-721.3132', '1103.0076', 74, 25061, '1026.1270', '2599.4585', '2555.8679', 13, 0, 3, 0, 0, 0, 0, 0, 0, 0, '.', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12355, 0, 0, 0, 0, '278.0446', '-1519.2653', '24.9289', 0, 0, '2541.5469', '-1303.9650', '1025.0703', 2, 1, 2, 5, 0, 0, 0, 0, 0, 0, 'CLK Tower', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4910, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12273, 0, 0, 0, 0, '2156.1389', '-1651.7923', '15.0784', 0, 0, '260.5889', '1237.7804', '2084.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '55, Idlewood', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 666, 0, 15, 4826, 0, 0, 0, 0, 1484835394, 0, 1484835394, 1484835394, 0, 0),
(11838, 0, 0, 0, 0, '213.1763', '-183.4878', '1.5781', 0, 0, '226.7888', '1239.9623', '2082.1406', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Le coin du tuning', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 124, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11326, 0, 0, 0, 0, '1913.4781', '-1911.9072', '15.2678', 0, 0, '261.0334', '1284.7275', '2080.2578', 13, 0, 2, 5, 0, 0, 0, 0, 7, 8, '213 King St.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1764, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11847, 0, 0, 0, 0, '2766.1113', '-1744.8166', '42.4064', 0, 0, '1026.3234', '2599.7883', '2555.8672', 13, 1, 3, 5, 0, 0, 0, 0, 0, 0, 'testt', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11647, 0, 0, 0, 0, '657.2286', '-1652.6667', '15.4062', 0, 0, '2237.4644', '-1089.4286', '2049.0234', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '7412, Rodéo', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2969, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11693, 0, 0, 0, 0, '2330.1608', '-1060.9086', '52.4686', 0, 0, '261.0612', '1284.5302', '2080.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'caravane', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11690, 0, 0, 20, 0, '2554.5168', '-2170.1374', '-0.2187', 0, 0, '1026.1298', '2599.4287', '2555.8679', 13, 0, 1, 10, 0, 0, 0, 0, 0, 0, 'Maison en carton sous le pont', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11826, 0, 0, 0, 0, '2159.9682', '-1488.9205', '26.6502', 0, 0, '23.9872', '1340.1593', '2084.3750', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Planque', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 760, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11448, 0, 0, 0, 0, '241.6423', '1739.0649', '3001.0000', 22, 11575439, '225.9640', '1239.9106', '2082.1406', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11705, 0, 0, 0, 0, '2133.3911', '-1232.9980', '24.4218', 0, 0, '226.5931', '1239.9211', '2082.1406', 13, 0, 2, 5, 0, 0, 0, 0, 13, 2, '1610, Lisbon Street', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11456, 0, 0, 0, 0, '2265.2106', '2468.3818', '3240.1169', 27, 313, '1716.1162', '-884.8975', '8001.0859', 3, 1, 3, 0, 0, 0, 0, 0, 0, 0, 'Pièce commune', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11389, 0, 0, 0, 0, '972.3750', '1373.8858', '2494.5209', 21, 18158891, '799.8301', '1873.9023', '5999.7822', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '00', 1, 0, 0, 10, 1467487465, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11478, 0, 0, 0, 0, '2797.8688', '-1245.3935', '47.3757', 0, 0, '24.1828', '1340.3832', '2084.3750', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '6933 NE. Flores', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 674, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11317, 0, 0, 0, 0, '2530.6374', '-2434.3352', '17.8828', 0, 0, '-136.1843', '1050.0137', '2736.9688', 1, 0, 3, 0, 0, 0, 0, 0, 0, 0, '6549 Pier Docks', 201, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11319, 0, 0, 0, 0, '2385.3942', '-1711.6921', '14.2421', 0, 0, '260.8119', '1237.8757', '2084.2578', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '125', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1663, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11320, 0, 0, 0, 0, '2191.1816', '-1455.8543', '26.0000', 0, 0, '226.0410', '1239.7941', '2082.1406', 13, 0, 2, 5, 0, 0, 0, 0, 0, 15, '1325, Alameda Street', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 1487, 0, 0, 0, 0, 0, 0, 1484835394, 0, 0, 0),
(11321, 0, 0, 0, 0, '2139.4172', '-1191.9761', '23.9921', 0, 0, '260.7740', '1237.8729', '2084.2578', 13, 0, 2, 5, 0, 0, 0, 0, 10, 5, '2704 E. Crenshaw Blvd', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11323, 0, 0, 0, 0, '1332.2558', '-633.4511', '109.1349', 0, 0, '233.7625', '1064.1628', '2084.2117', 13, 1, 2, 8, 0, 0, 0, 0, 0, 0, '36', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11394, 0, 0, 0, 0, '2166.3564', '-1904.0520', '13.5390', 0, 0, '260.4857', '1238.1644', '2084.2578', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '850, Maccer Street', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2555, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11324, 0, 0, 0, 0, '2190.4443', '-1470.4362', '25.9140', 0, 0, '260.2730', '1237.9309', '2084.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '1315, Figueroa Street', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 126, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11659, 0, 0, 0, 0, '2533.7050', '461.6218', '3315.5810', 21, 11952582, '1720.0780', '-893.3019', '8001.0859', 2, 0, 2, 5, 0, 0, 0, 800000, 0, 0, '1', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11411, 0, 0, 0, 0, '2368.4487', '-1637.4296', '13.4947', 0, 0, '221.8048', '1141.4667', '2082.6094', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '210, Grove Street', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1484835394, 0, 1484835394, 0, 0),
(11339, 0, 0, 99, 0, '2336.8786', '-1188.5863', '4199.2089', 17, 17254335, '1843.8341', '-2360.8005', '2486.6169', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '1', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11334, 0, 0, 100, 0, '2066.2460', '-1717.1479', '14.1363', 0, 0, '260.5772', '1237.4904', '2084.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '1305, Idlewood', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 389, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11591, 0, 0, 0, 0, '1045.0820', '-642.9530', '120.1171', 0, 0, '234.1445', '1063.9963', '2084.2119', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, 'Villa', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1681, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11325, 0, 0, 0, 0, '2194.3530', '-1442.9714', '26.0738', 0, 0, '318.6127', '1115.1575', '2083.8828', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '1335, Alameda Street', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 129, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11327, 0, 0, 0, 0, '2016.2010', '-1716.9750', '14.1250', 0, 0, '261.2019', '1237.7888', '2084.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Walnut Av., 132', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49, 0, 0, 0, 1788, 0, 0, 0, 0, 0, 1484835394, 0, 0, 0, 0),
(11328, 0, 0, 100, 0, '1266.3896', '234.4021', '25.0486', 0, 0, '-68.8949', '1351.5465', '2080.2109', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'local', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2348, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11469, 0, 0, 120, 0, '1291.0198', '-896.8323', '42.8828', 0, 0, '1843.3556', '-2361.3438', '2486.6169', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '817, Porte 1', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11330, 0, 0, 1, 0, '2245.3630', '-122.0166', '28.1535', 0, 0, '260.8959', '1284.6223', '2080.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '69 Pleasant St.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 201, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11331, 0, 0, 0, 0, '653.5879', '-1714.0780', '14.7647', 0, 0, '261.0096', '1285.2677', '2080.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '546 Marina', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2242, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12149, 0, 0, 0, 0, '811.0636', '-564.4573', '16.3359', 0, 0, '-387.9395', '2235.3394', '2536.2300', 224, 1, 3, 0, 0, 0, 0, 0, 0, 0, 'Finks Factory', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11333, 0, 0, 150, 0, '2261.1943', '-1473.1602', '23.9017', 0, 0, '260.8310', '1237.8774', '2084.2578', 13, 0, 2, 5, 0, 0, 0, 0, 15, 0, '8433 Jefferson', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53, 50, 0, 0, 550, 0, 0, 0, 0, 0, 1484835394, 1484835394, 0, 0, 0),
(11553, 0, 0, 80, 0, '962.2647', '1381.9056', '2498.0629', 21, 11958357, '243.7177', '304.9647', '999.1484', 1, 0, 1, 2, 0, 0, 0, 0, 0, 0, '454, Willowfield, Porte 1', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11335, 0, 0, 0, 0, '870.4813', '-24.9844', '63.9770', 0, 0, '-1490.1221', '-81.2135', '2119.4839', 109, 0, 2, 5, 0, 0, 0, 0, 0, 0, '1547 Hill Forest', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3934, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11766, 0, 0, 0, 0, '2787.3308', '-2142.0441', '3000.9729', 16, 32767, '-1381.6506', '1187.5902', '2501.0820', 107, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Belmont Square', 0, 0, 0, 0, 0, 0, '0.0000', 23, 23, 23, 23, 23, 23, 0, 0, 32, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 483, 540, 25, 1075, 451, 0, 0, 0, 0, 1484835394, 1484835394, 1484835394, 0, 1484835394, 0),
(12268, 0, 0, 0, 0, '2383.5339', '-1366.3519', '24.4913', 0, 11899, '234.8918', '1104.8479', '2080.9946', 13, 0, 2, 5, 0, 0, 0, 1, 0, 0, '456, Los Flores', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12265, 0, 0, 0, 0, '189.7146', '-1308.2860', '70.2508', 0, 0, '2194.3865', '-2417.0088', '2019.4966', 235, 1, 2, 5, 0, 0, 0, 0, 0, 0, '450, Richman', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4910, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11484, 0, 0, 120, 0, '2468.4125', '-1366.5078', '28.8281', 0, 0, '2618.7993', '-1816.0929', '616.5299', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '1', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11347, 0, 0, 0, 0, '2535.0891', '-1657.8880', '15.2761', 0, 0, '455.0029', '-574.5568', '2501.0938', 15, 0, 3, 0, 0, 0, 0, 0, 0, 0, '3485, E. Victoria Ave', 201, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11338, 0, 0, 0, 0, '671.0017', '-1575.9396', '14.2509', 0, 0, '1494.3624', '1303.8407', '1093.2891', 3, 1, 2, 5, 0, 0, 0, 0, 0, 0, 'Gateway Car Rental', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11864, 0, 0, 0, 0, '-35.6300', '1405.7056', '2084.4296', 13, 11525, '799.9570', '1873.2367', '5999.7822', 13, 1, 3, 1, 0, 0, 0, 0, 0, 0, 'planque bds', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1688, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11340, 0, 0, 120, 0, '2331.7951', '-1183.9207', '4199.2089', 17, 17254335, '2618.4688', '-1816.3647', '616.5299', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11341, 0, 0, 120, 0, '2335.0776', '-1179.2519', '4199.2089', 17, 17254335, '2178.5664', '-667.5037', '441.8998', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '3', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11342, 0, 0, 99, 0, '2335.7160', '-1174.1215', '4199.2089', 17, 17254335, '2624.7026', '-2717.9573', '2197.6729', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '4', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11343, 0, 0, 120, 0, '2341.4458', '-1174.1152', '4199.2089', 17, 17254335, '721.9803', '-1428.2305', '1201.3190', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '5', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11344, 0, 0, 120, 0, '2345.1667', '-1175.1634', '4199.2089', 17, 17254335, '2619.0925', '-1815.8805', '616.5299', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '6', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11352, 0, 0, 0, 0, '2267.6301', '-1100.5164', '37.9765', 0, 0, '800.1346', '1873.7688', '5999.7822', 13, 1, 3, 0, 0, 0, 0, 0, 0, 0, 'Garage', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11784, 0, 0, 100, 0, '2296.8002', '-1813.8981', '3576.7309', 40, 18800286, '2259.3816', '-1135.8771', '1050.6403', 10, 0, 1, 2, 0, 0, 0, 0, 0, 0, '80', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11348, 0, 0, 0, 0, '2465.1018', '-1995.8157', '14.0193', 0, 0, '-1076.0548', '-1996.4783', '2007.0869', 105, 1, 2, 5, 0, 0, 0, 0, 0, 0, '741 Fuller St.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1681, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12326, 0, 0, 0, 0, '1095.1060', '-647.9152', '113.6484', 0, 0, '140.7100', '1365.9191', '2083.8594', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '1457', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2286, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11351, 0, 0, 0, 0, '1293.0053', '-1253.9952', '13.5468', 0, 0, '754.9880', '68.9097', '3000.9219', 13, 1, 3, 0, 0, 0, 0, 0, 0, 0, 'Entrepot 3274', 303, 0, 0, 0, 0, 0, '999999.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11353, 0, 0, 0, 0, '1112.4997', '-742.0786', '100.1329', 0, 0, '23.6935', '1340.8240', '2084.3750', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '1245', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11354, 0, 0, 0, 0, '2459.5705', '-1691.6578', '13.5440', 0, 0, '221.7140', '1140.5846', '2082.6094', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '260, Grove Street', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 712, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11355, 0, 0, 0, 0, '315.6616', '-1769.4299', '4.6199', 0, 0, '23.8727', '1340.4429', '2084.3750', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '1547 Santa Maria Beach', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2149, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11700, 0, 0, 0, 0, '1669.0301', '-1412.7712', '13.5497', 0, 0, '1640.8221', '-1390.7875', '2054.8311', 99, 1, 3, 0, 0, 0, 0, 0, 0, 0, 'Bukowski Architecture', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11371, 0, 0, 0, 0, '2256.2751', '-2609.4011', '8.3080', 0, 0, '800.1462', '1873.4218', '5999.7822', 13, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'C240115', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2260, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11356, 0, 0, 0, 0, '-153.6280', '2433.8781', '3001.0859', 14, 16967069, '454.5076', '-574.7057', '2501.0938', 15, 1, 3, 0, 0, 0, 0, 0, 0, 0, '20', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11358, 0, 0, 0, 0, '1317.4978', '-1184.3476', '23.5867', 0, 0, '140.4564', '1365.9221', '2083.8594', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '5654 Temple', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 912, 0, 0, 0, 0, 0, 1484835394, 0, 0, 0, 0),
(11359, 0, 0, 0, 0, '2443.8469', '92.3471', '28.4416', 0, 0, '24.1111', '1340.8495', '2084.3750', 13, 0, 2, 5, 0, 0, 0, 90000, 0, 0, '2354 Corona', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4340, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11361, 0, 0, 0, 0, '2808.0400', '-1175.9619', '25.3810', 0, 0, '1006.4487', '2432.9819', '2501.9260', 103, 0, 2, 5, 0, 0, 0, 0, 0, 0, '918 Pacific Coast Hwy', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 712, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12282, 0, 0, 0, 0, '989.8519', '-828.6291', '95.4685', 0, 0, '935.0284', '771.9584', '2505.4219', 253, 0, 2, 5, 0, 0, 0, 0, 0, 0, '455, Richman', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3303, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11879, 0, 0, 0, 0, '479.5563', '-1094.4492', '82.3591', 0, 0, '1027.0144', '2599.3237', '2555.8674', 13, 0, 3, 5, 0, 0, 0, 0, 0, 0, 'Garage', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11366, 0, 0, 2000, 0, '2000.0423', '-1114.0539', '27.1250', 0, 0, '234.5421', '1105.3508', '2080.9971', 13, 0, 2, 5, 0, 0, 0, 0, 11, 4, '105 Glen St.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 1936, 1458, 0, 0, 0, 0, 1484835394, 0, 1484835394, 0, 0, 0),
(11369, 0, 0, 0, 0, '2523.2727', '-1679.2656', '15.4969', 0, 0, '261.1393', '1237.5831', '2084.2578', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '230, Grove Street', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11368, 0, 0, 0, 0, '2045.5294', '-1116.6474', '26.3617', 0, 0, '23.6579', '1340.7245', '2084.3750', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '4457 Glenpark', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1052, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11370, 0, 0, 0, 0, '2149.8566', '-1433.7600', '26.0703', 0, 0, '260.9294', '1284.5371', '2080.2578', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '1235, Guantanamo Avenue', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11695, 0, 0, 0, 0, '1059.3530', '-1105.1351', '28.0450', 0, 0, '23.9346', '1340.1593', '2084.3750', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '1482, Temple', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12333, 0, 0, 0, 0, '980.4248', '-677.3023', '121.9762', 0, 0, '2324.8093', '-1149.1031', '2050.7100', 13, 0, 2, 10, 0, 0, 0, 0, 0, 0, '504, Vinewood', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11908, 0, 0, 0, 0, '2363.9951', '142.0595', '28.4416', 0, 0, '234.9771', '1064.7214', '2084.2107', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '46', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2286, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11379, 0, 0, 0, 0, '2481.7714', '-1331.9055', '28.3088', 0, 0, '318.5615', '1114.9694', '2083.8828', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '1947 St.Catherine St', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1455, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11538, 0, 0, 0, 0, '-128.4424', '1015.5200', '2767.0537', 1, 11215, '799.8978', '1873.9681', '5999.7822', 13, 1, 3, 0, 0, 0, 0, 0, 0, 0, 'arriere piece', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11384, 0, 0, 75, 0, '2756.3540', '-1182.8067', '69.4034', 0, 0, '23.9884', '1340.7075', '2084.3750', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '4511 North Flores', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 521, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11521, 0, 0, 0, 0, '1081.1367', '-1696.7862', '13.5468', 0, 0, '1716.1959', '-884.8755', '8001.0859', 3, 1, 3, 0, 0, 0, 0, 0, 0, 0, 'Martial Security', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11734, 0, 0, 0, 0, '2265.0310', '-1998.0373', '13.5468', 0, 0, '2187.8982', '-1127.9219', '2999.3657', 135, 1, 2, 5, 0, 0, 0, 0, 0, 0, 'Boozers Motorcycle Club', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 778, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11772, 0, 0, 0, 0, '-160.9914', '2437.2209', '3004.6738', 14, 12121615, '-153.4042', '1014.6483', '2766.9688', 13, 1, 3, 2, 0, 0, 0, 0, 0, 0, 'Appt - 08', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 912, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11676, 0, 0, 120, 0, '1278.0551', '1282.0201', '2111.2468', 14, 13179962, '2618.7659', '-1816.0280', '616.5299', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11764, 0, 0, 0, 0, '2131.9335', '-974.0791', '59.7855', 0, 0, '1715.7720', '-878.3041', '8001.0859', 2, 0, 2, 5, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2555, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11653, 0, 0, 0, 0, '301.3617', '1788.3941', '2417.6618', 181, 25152, '2528.0237', '-1752.5865', '1016.5909', 91, 1, 3, 0, 0, 0, 0, 0, 0, 0, 'Etage 1', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11607, 0, 0, 0, 0, '1934.8267', '-2086.3254', '13.5719', 0, 0, '260.6758', '1237.2350', '2084.2578', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '120, Pacific Coast Highway', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3377, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11390, 0, 0, 0, 0, '1684.8070', '-2098.1555', '13.8343', 0, 0, '318.8738', '1114.9038', '2083.8828', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '461 Gates St.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1628, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11611, 0, 0, 0, 0, '2529.9589', '-2550.1672', '13.6436', 0, 0, '1715.4948', '-884.8151', '8001.0859', 3, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Ocean Docks, Warehouse 2', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1681, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12159, 0, 0, 50, 0, '1278.7584', '1274.7463', '2107.7500', 14, 12371314, '1843.4200', '-2361.3386', '2486.6169', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11861, 0, 0, 120, 0, '1613.0488', '55.2329', '1009.7699', 14, 17816659, '2178.6121', '-666.7993', '441.8909', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '4', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11417, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Local', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11430, 0, 0, 0, 0, '1122.7993', '-2037.1790', '69.8941', 0, 0, '-164.3468', '1748.9708', '1394.0249', 110, 0, 2, 10, 0, 0, 0, 0, 11, 4, '2652 Verdants', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11445, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '68 Pleasant St.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11375, 0, 0, 0, 0, '2139.7124', '-1733.9383', '17.2890', 0, 0, '260.7450', '1237.7092', '2084.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '110, Ganton Avenue', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 134, 8, 0, 0, 0, 0, 0, 0, 0, 1484835394, 1484835394, 0, 1484835394, 0),
(11606, 0, 0, 0, 0, '2047.8055', '-1821.7565', '13.5468', 0, 0, '2237.9885', '-1090.0101', '2049.0234', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '16', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12148, 0, 0, 0, 0, '2333.3398', '-1904.1727', '12.3339', 0, 0, '799.8890', '1874.5320', '5999.7822', 13, 1, 3, 0, 0, 0, 0, 0, 0, 0, 'Garage', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11477, 0, 0, 0, 0, '1106.4501', '-299.6979', '74.5390', 0, 0, '226.1463', '1239.9553', '2082.1406', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '787 S.A 4', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11380, 0, 0, 0, 0, '849.5816', '-1520.0737', '14.3478', 0, 0, '-1076.1851', '-1996.3485', '2007.0869', 105, 1, 2, 5, 0, 0, 0, 0, 0, 0, '1425 Olympic Ave.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 623, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11381, 0, 0, 0, 0, '977.5034', '-771.6850', '112.2026', 0, 0, '2512.0757', '-1669.7744', '2204.6250', 46, 0, 2, 5, 0, 0, 0, 0, 0, 0, '4578 Vinewood', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 831, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11382, 0, 0, 0, 0, '2095.4208', '-1884.7714', '13.5468', 0, 0, '24.2559', '1340.6364', '2084.3750', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '4565 Idlewood', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 712, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11383, 0, 0, 0, 0, '2450.3642', '-1981.6445', '13.5539', 0, 0, '398.7016', '1937.7642', '2999.0078', 194, 0, 2, 5, 0, 0, 0, 0, 0, 0, '1454 Willowfield', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 778, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11385, 0, 0, 0, 0, '795.0980', '-506.2330', '18.0129', 0, 0, '260.8026', '1285.0800', '2080.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '6444 Dillimore', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2149, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11386, 0, 0, 0, 0, '2158.3308', '-1611.3326', '14.3515', 0, 0, '-1136.4257', '1117.9772', '2301.0859', 108, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Hawkinson Bloc B', 0, 0, 0, 10, 1458760686, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 771, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0),
(11388, 0, 0, 0, 0, '1933.4969', '-1864.7742', '13.5619', 0, 0, '-725.0419', '1094.1628', '536.3480', 215, 1, 2, 5, 0, 0, 0, 0, 0, 0, 'Sunset Production', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 433, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11395, 0, 0, 0, 0, '2073.3684', '-1583.0949', '13.4735', 0, 0, '318.9003', '1114.9072', '2083.8828', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2037, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11396, 0, 0, 0, 0, '2150.1940', '-1285.0411', '24.5269', 0, 0, '260.9865', '1237.8412', '2084.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '1535, Bellview Street', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 340, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11397, 0, 0, 0, 0, '273.5091', '1879.6965', '-30.3906', 0, 0, '1844.1625', '-2361.4238', '2486.6169', 13, 1, 3, 0, 0, 0, 0, 0, 0, 0, 'hero', 101, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11600, 0, 0, 0, 0, '1873.5556', '-2070.7573', '15.4970', 0, 0, '318.6847', '1114.7723', '2083.8828', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '57600', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3045, 0, 0, 0, 0, 0, 0, 0, 0, 1484835394, 0),
(11483, 0, 0, 0, 0, '227.0508', '1819.0920', '7.4140', 0, 0, '226.3631', '1239.6495', '2082.1406', 13, 1, 3, 0, 0, 0, 0, 0, 0, 0, 'DROGUE', 101, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11762, 0, 0, 0, 0, '1128.0675', '-1021.1717', '34.9921', 0, 0, '24.0756', '1340.4192', '2084.3750', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '1155, Temple Street', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3712, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11620, 0, 0, 120, 0, '1248.8060', '-871.1708', '46.6329', 0, 0, '2259.3865', '-1135.7532', '1050.6403', 10, 0, 1, 2, 0, 0, 0, 0, 0, 0, 'porte 8', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11398, 0, 0, 0, 0, '755.0827', '-1364.8162', '13.5127', 0, 0, '2542.0559', '-1303.8651', '1025.0703', 2, 1, 2, 0, 0, 0, 0, 0, 0, 0, 'SWAT Train', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11431, 0, 0, 0, 0, '-384.0845', '2233.1857', '2536.2338', 237, 12264, '260.8039', '1284.3696', '2080.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'VP\'s quarters', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 261, 2, 0, 0, 1018, 0, 0, 0, 0, 0, 1484835394, 1484835394, 0, 0, 0),
(11399, 0, 0, 0, 0, '991.4743', '-1121.7180', '29.4026', 0, 0, '261.1178', '1237.5322', '2084.2578', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '1441 Chinatown', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 987, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11400, 0, 0, 0, 0, '2847.0769', '-1309.7131', '14.7034', 0, 0, '234.3238', '1105.1906', '2080.9963', 13, 0, 2, 5, 0, 0, 0, 0, 15, 0, '916 Pacific Coast Hwy', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 274, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11425, 0, 0, 0, 0, '2650.7043', '-2021.8962', '14.1766', 0, 0, '82.9948', '1322.2914', '2083.8662', 13, 0, 2, 5, 0, 0, 0, 0, 14, 1, '1132 W. Seville', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 727, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11821, 0, 0, 0, 0, '2486.5930', '-1244.7740', '31.4956', 0, 0, '-136.1843', '1050.0137', '2736.9688', 13, 1, 3, 0, 0, 0, 0, 0, 0, 0, 'nix', 101, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11802, 0, 0, 0, 0, '1481.3364', '-685.8020', '95.5632', 0, 0, '3.0671', '-104.5880', '3513.4063', 121, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'ST 147 Vinewood - Hudson', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12292, 0, 0, 0, 0, '219.2378', '-1249.8032', '78.3364', 0, 0, '226.6963', '1240.1847', '2082.1406', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Maisonnette', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4864, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12281, 0, 0, 0, 0, '991.4909', '-695.3284', '121.9383', 0, 0, '223.2472', '1287.1071', '1082.1406', 1, 1, 2, 5, 0, 0, 0, 0, 0, 0, '556, Richman', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2694, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11402, 0, 0, 0, 0, '2185.2097', '-1363.7210', '26.1597', 0, 0, '260.8070', '1237.8751', '2084.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '1425, Congress Street', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 118, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11403, 0, 0, 0, 0, '2016.5413', '-1641.6771', '14.1128', 0, 0, '-1490.1105', '-81.1303', '2119.4839', 109, 0, 2, 5, 0, 0, 0, 0, 0, 0, '5328, S Avalon Ave.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 433, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11404, 0, 0, 0, 0, '1854.0119', '-1914.2639', '15.2678', 0, 0, '2237.7754', '-1089.8923', '2049.0234', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '210 King St.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1208, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12270, 0, 0, 0, 0, '648.3527', '-1058.6737', '52.5799', 0, 0, '234.3593', '1063.7797', '2084.2122', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '457, Richman', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5017, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11409, 0, 0, 0, 0, '2788.4985', '-2158.6520', '3005.1127', 14, 15167356, '1381.4178', '-124.2273', '1502.0253', 5, 0, 2, 5, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 23, 23, 23, 23, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1655, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11410, 0, 0, 0, 0, '2362.7011', '-1046.4364', '54.2733', 0, 0, '261.0845', '1284.7803', '2080.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Caravane .4', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 167, 0, 25, 106, 7, 0, 0, 0, 0, 0, 1484835394, 0, 1484835394, 1484835394, 1484835394, 0),
(11412, 0, 0, 0, 0, '2047.1573', '-1883.9606', '13.5589', 0, 0, '1244.6564', '769.3970', '2003.0819', 35, 1, 2, 5, 0, 0, 0, 0, 0, 0, 'Cave', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11413, 0, 0, 0, 0, '1566.8374', '23.1602', '24.1640', 0, 0, '826.3432', '-1098.6370', '2501.0918', 42, 0, 2, 10, 0, 0, 0, 0, 0, 0, '1 River Rd', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11726, 0, 0, 0, 0, '2408.9868', '-1674.9360', '14.3750', 0, 0, '261.0164', '1284.2944', '2080.2578', 13, 0, 2, 2, 0, 0, 0, 0, 0, 0, '165, Grove Street', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 1, 60, 350, 0, 0, 0, 16, 1484835394, 1484835394, 0, 0, 1484835394, 0),
(12065, 0, 0, 0, 0, '2513.7395', '-1650.2692', '14.3556', 0, 0, '260.7504', '1237.2737', '2084.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '192, Grove Street.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2172, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11522, 0, 0, 0, 0, '2243.5698', '69.7278', '26.4843', 0, 0, '260.6436', '1237.7947', '2084.2578', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, 'Petit studio sous loué', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `houses` (`Hid`, `Owner`, `Renter`, `RentPrice`, `Caisse`, `OutX`, `OutY`, `OutZ`, `OutInt`, `OutWorld`, `InX`, `InY`, `InZ`, `InInt`, `Open`, `Type`, `MaxInvits`, `Trash`, `Removing`, `RemovPlayer`, `Price`, `Frigo`, `Poub`, `Title`, `Kit`, `Grammes`, `TimeCanna`, `Meth`, `TimeMeth`, `Matos`, `Essence`, `Kit1`, `Kit2`, `Kit3`, `Kit4`, `Kit5`, `Kit6`, `Kit7`, `Kit8`, `Kit9`, `Kit10`, `Kit11`, `Kit12`, `Kit13`, `Kit14`, `Kit15`, `Kit16`, `Kit17`, `Kit18`, `Kit19`, `Kit20`, `Kit21`, `Kit22`, `Kit23`, `Kit24`, `Kit25`, `Kit26`, `Kit27`, `Kit28`, `Kit29`, `Kit30`, `gMeth`, `gCoke`, `gHero`, `gStero`, `gCanna`, `Autoriz`, `PlacementActor`, `LastBraquo`, `Braquable`, `Contrebande`, `TDrugCanna`, `TDrugCoke`, `TDrugHero`, `TDrugMeth`, `TDrugStero`, `CoffreFurn`) VALUES
(11422, 0, 0, 0, 0, '2524.7009', '-1658.6038', '15.8240', 0, 0, '2237.6746', '-1090.0754', '2049.0234', 13, 0, 2, 5, 0, 0, 0, 0, 10, 5, '220, Grove Street', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80, 163, 0, 0, 0, 0, 1484835394, 0, 0, 0, 0, 0),
(12285, 0, 0, 0, 0, '1026.1956', '-1583.7441', '13.5468', 0, 0, '2323.8291', '-1149.0399', '2050.7100', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Brand, Brand et Foster Avocats', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11426, 0, 0, 0, 0, '2687.2707', '-1428.2836', '30.5106', 0, 0, '260.8579', '1237.5406', '2084.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '1002 Nth. Flores ', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 214, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11427, 0, 0, 0, 0, '2234.2976', '-1394.1395', '24.2027', 0, 0, '318.4637', '1114.6504', '2083.8828', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '1440, Congress Street', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1487, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11428, 0, 0, 0, 0, '2199.9519', '-37.3627', '28.1535', 0, 0, '260.8159', '1284.6504', '2080.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '72 Oak St.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1176, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11429, 0, 0, 0, 0, '2202.7448', '-1363.6712', '26.1910', 0, 0, '260.8226', '1237.8774', '2084.2578', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '1435, Congress Street', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2758, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12336, 0, 0, 0, 0, '891.1030', '-783.1954', '101.3136', 0, 0, '1006.0322', '2432.7859', '2501.9260', 103, 0, 2, 5, 0, 0, 0, 700000, 0, 0, '255, Richman', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5017, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11434, 0, 0, 0, 0, '2115.8417', '-1884.7752', '13.5468', 0, 0, '261.1865', '1237.5275', '2084.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Garage', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1663, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11435, 0, 0, 0, 0, '-2048.2509', '755.4089', '64.1562', 0, 0, '260.8463', '1284.3705', '2080.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Calton Heights 48626', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1052, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11436, 0, 0, 0, 0, '1259.6420', '-785.3385', '92.0312', 0, 0, '1555.1378', '-2641.0256', '2390.5789', 171, 0, 2, 20, 0, 0, 0, 0, 0, 0, '1325 Vinewood Hills', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3328, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11902, 0, 0, 0, 0, '2112.9003', '-1195.9184', '23.7039', 0, 0, '2191.8391', '-1666.3933', '2501.0869', 14, 0, 2, 5, 0, 0, 0, 0, 0, 0, '456, Pasadena Blvd', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12175, 0, 0, 0, 0, '2172.5891', '-1615.2952', '14.2810', 0, 0, '243.7839', '304.6913', '999.1484', 1, 0, 2, 5, 0, 0, 0, 0, 0, 0, '145, Crenshaw Street.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2918, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11439, 0, 0, 0, 0, '1093.9206', '-806.5339', '107.4188', 0, 0, '82.9393', '1322.7158', '2083.8662', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'The Saucer', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12258, 0, 0, 0, 0, '398.2209', '-1271.3468', '50.0197', 0, 0, '140.1744', '1365.9257', '2083.8594', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '456, Richman', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2794, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11441, 0, 0, 0, 0, '300.1655', '-1154.3725', '81.3910', 0, 0, '1242.7487', '-643.1002', '3000.9729', 10, 0, 2, 10, 0, 0, 0, 0, 0, 0, '4579 Vinewood Hills', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1769, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11442, 0, 0, 0, 0, '251.6058', '-1220.3321', '76.1023', 0, 0, '891.4928', '-662.1830', '2601.1001', 86, 1, 2, 10, 0, 0, 0, 0, 0, 0, '3663, Richman, Villa Copperdene', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11443, 0, 0, 0, 0, '254.5351', '-1367.1157', '53.1093', 0, 0, '140.0814', '1367.6732', '2083.8618', 13, 0, 2, 10, 0, 0, 0, 0, 0, 0, '5659, Vinewood Hills, Villa Rocketer', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11860, 0, 0, 120, 0, '1617.6384', '55.3985', '1009.7699', 14, 17816659, '2178.6121', '-666.7993', '441.8909', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '3', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11712, 0, 0, 0, 0, '2358.0100', '2482.9899', '3361.6459', 92, 21, '-294.8455', '1033.9491', '31102.8555', 39, 0, 2, 1, 0, 0, 0, 0, 0, 0, '3', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 432, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11458, 0, 0, 0, 0, '2309.4909', '-77.6566', '26.4843', 0, 0, '1720.3514', '-893.2928', '8001.0859', 2, 1, 2, 5, 0, 0, 0, 0, 0, 0, '35', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11565, 0, 0, 0, 0, '718.5585', '-1476.3084', '5.4687', 0, 0, '800.1154', '1873.4402', '5999.7822', 13, 0, 3, 0, 0, 0, 0, 0, 0, 0, '//', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11605, 0, 0, 200, 0, '2090.9355', '-1277.8363', '26.1796', 0, 0, '226.0261', '1240.1019', '2082.1406', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '3265 Glen park', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11446, 0, 0, 0, 0, '2516.0617', '-1978.4876', '13.4409', 0, 0, '754.9880', '68.9097', '3000.9219', 13, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'Box 5485', 303, 0, 0, 0, 0, 0, '1851.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11447, 0, 0, 0, 0, '2778.8439', '-1416.4881', '24.7453', 0, 0, '799.8779', '1873.8220', '5999.7822', 13, 1, 3, 0, 0, 0, 0, 0, 0, 0, 'Entrepot 3364', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11540, 0, 0, 0, 0, '2355.5913', '-1038.6853', '54.3358', 0, 0, '261.0544', '1284.2947', '2080.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Trailer', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26, 128, 3, 26, 18, 2738, 0, 0, 0, 0, 1484835394, 1484835394, 1484835394, 1484835394, 1484835394, 0),
(11694, 0, 0, 0, 0, '-153.7375', '2433.8840', '3001.0859', 14, 13103500, '260.8190', '1237.2321', '2084.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Appart\'04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11465, 0, 0, 120, 0, '1288.3819', '-874.1100', '43.0594', 0, 0, '2618.5684', '-1816.0526', '616.5299', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '818, Porte 2', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12266, 0, 0, 0, 0, '2208.7805', '-2418.6228', '2019.4964', 235, 12265, '2195.5872', '-2433.9717', '2923.2581', 236, 1, 2, 5, 0, 0, 0, 0, 0, 0, 'Salle secondaire', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3977, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11840, 0, 0, 0, 0, '1265.6756', '371.1515', '19.5546', 0, 0, '1027.1017', '2599.3950', '2555.8672', 13, 1, 3, 0, 0, 0, 0, 0, 0, 0, 'local', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11710, 0, 0, 20, 0, '2355.5629', '2477.1899', '3361.6459', 92, 21, '-294.8455', '1033.9491', '31102.8555', 39, 0, 2, 1, 0, 0, 0, 0, 0, 0, '1', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 432, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11602, 0, 0, 0, 0, '-64.9926', '-1574.2366', '2.6107', 0, 0, '2513.1440', '-1729.1252', '778.6364', 63, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'caravane', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11769, 0, 0, 0, 0, '-2186.3159', '-2322.7966', '30.6250', 0, 0, '799.9675', '1873.2367', '5999.7822', 13, 1, 3, 0, 0, 0, 0, 0, 0, 0, 'Girgis\'s Alcohol Stockage', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 505, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11755, 0, 0, 0, 0, '769.2202', '-1696.5780', '5.1554', 0, 0, '24.0010', '1340.1594', '2084.3750', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '8792, Santa Marina', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11514, 0, 0, 0, 0, '2126.5988', '-1320.8636', '26.6239', 0, 0, '226.2305', '1240.0142', '2082.1406', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '1520, Bellview Street', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11613, 0, 0, 120, 0, '1242.1231', '-878.2687', '46.6406', 0, 0, '2259.3958', '-1135.9344', '1050.6403', 10, 0, 1, 2, 0, 0, 0, 0, 0, 0, '816, Porte 5', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11505, 0, 0, 0, 0, '1191.1934', '-1652.3651', '13.9379', 0, 0, '318.8329', '1114.8329', '2083.8828', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '450 Gates St.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11811, 0, 0, 0, 0, '924.1588', '2115.8879', '3514.5437', 73, 6, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hailey_Graham', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11697, 0, 0, 0, 0, '1680.2552', '-1482.1655', '13.5337', 0, 0, '1026.4382', '2599.4080', '2555.8677', 13, 1, 3, 2, 0, 0, 0, 0, 0, 0, 'Local', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 912, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11725, 0, 0, 70, 0, '-152.7933', '2435.9128', '3004.6738', 14, 13103500, '2191.7842', '-1666.4213', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11854, 0, 0, 0, 0, '876.2103', '-1512.8770', '14.3486', 0, 0, '1407.3770', '242.2671', '1426.6426', 208, 0, 2, 5, 0, 0, 0, 0, 0, 0, '5420, Market', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12269, 0, 0, 0, 0, '228.0633', '-1405.4991', '51.6093', 0, 0, '216.6523', '-1420.4994', '1288.2809', 24, 0, 2, 5, 0, 0, 0, 0, 0, 0, '455, Richman', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3303, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11451, 0, 0, 0, 0, '-1322.3187', '2498.4641', '87.0468', 0, 0, '-42.0175', '1405.5950', '2084.4297', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Garage', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11452, 0, 0, 0, 0, '2257.3513', '-70.9880', '31.6015', 0, 0, '1715.9432', '-879.8215', '8001.0859', 1, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Bureau', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11453, 0, 0, 0, 0, '2275.3752', '66.3399', '26.4843', 0, 0, '2237.3601', '-1089.8165', '2049.0234', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '2733, Palomino Central Street', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1458, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11454, 0, 0, 0, 0, '2865.6943', '-2125.1450', '5.8980', 0, 0, '-42.4389', '1405.6606', '2084.4297', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, 'Unknown', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 142, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12061, 0, 0, 0, 0, '203.4780', '-183.4861', '1.5781', 0, 0, '318.4252', '1114.4796', '2083.8828', 13, 1, 2, 0, 0, 0, 0, 0, 0, 0, 'Garage', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1297, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11459, 0, 0, 0, 0, '1978.5043', '-1671.4161', '18.5455', 0, 0, '261.1187', '1284.6278', '2080.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '006 Bloc C, Pat Nixon Gardens', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2817, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11460, 0, 0, 0, 0, '2186.4228', '-997.3099', '66.4687', 0, 0, '260.7053', '1284.7449', '2080.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '36', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1201, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12110, 0, 0, 0, 0, '1884.7335', '-1791.8692', '13.5468', 0, 0, '-136.1843', '1050.0137', '2736.9688', 1, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'Garage', 201, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1015, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11608, 0, 0, 0, 0, '985.9649', '-1094.3881', '27.6040', 0, 0, '234.2549', '1064.7156', '2084.2107', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '8713, Po House', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1343, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11545, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11506, 0, 0, 0, 0, '1906.4505', '-1577.6851', '23.9496', 0, 0, '1026.8336', '2599.8855', '2555.8665', 13, 0, 3, 5, 0, 0, 0, 0, 0, 0, 'Ji Social Club', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11463, 0, 0, 0, 0, '1230.0982', '145.1829', '20.4673', 0, 0, '544.2540', '-97.1049', '2997.9922', 13, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'local 374', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11877, 0, 0, 0, 0, '439.2248', '-2940.8315', '1.8428', 0, 0, '1026.3912', '2599.8145', '2555.8669', 13, 1, 3, 5, 0, 0, 0, 0, 0, 0, 'TEST ARMES REFUND', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11592, 0, 0, 0, 0, '2582.9299', '-952.9246', '81.3881', 0, 0, '-1712.4989', '487.1932', '2501.0938', 80, 1, 2, 2, 0, 0, 0, 0, 0, 0, '666, Las Collinas', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 683, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11621, 0, 0, 0, 0, '2581.3154', '1060.5520', '11.7809', 0, 0, '324.3947', '-1579.3807', '10.1469', 88, 0, 2, 10, 0, 0, 0, 0, 0, 0, 'Bass Residence', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3345, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11466, 0, 0, 120, 0, '1280.8665', '-874.8890', '42.9397', 0, 0, '721.9202', '-1428.4257', '1201.3190', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '818, Porte 1', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11467, 0, 0, 120, 0, '1280.8425', '-874.7036', '46.8437', 0, 0, '2618.5684', '-1816.0526', '616.5299', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '818, Porte 5', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11468, 0, 0, 99, 0, '1288.3541', '-873.8850', '46.8437', 0, 0, '2624.3999', '-2717.6455', '2197.6729', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '818, Porte 6', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11470, 0, 0, 99, 0, '1283.5510', '-897.9733', '42.8753', 0, 0, '2618.8005', '-1816.2003', '616.5299', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '817, Porte 2', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11471, 0, 0, 120, 0, '1291.0251', '-896.8997', '46.6251', 0, 0, '2618.8005', '-1816.2003', '616.5299', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '817, Porte 5', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11472, 0, 0, 99, 0, '1283.5360', '-897.8163', '46.6251', 0, 0, '2624.3801', '-2717.4253', '2197.6729', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '817, Porte 6', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11473, 0, 0, 120, 0, '1284.3514', '-903.9808', '46.6328', 0, 0, '2618.8923', '-1816.2253', '616.5299', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '817, Porte 8', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11474, 0, 0, 120, 0, '1291.8187', '-902.9472', '46.6328', 0, 0, '2618.8923', '-1816.2253', '616.5299', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '817, Porte 7', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11475, 0, 0, 120, 0, '1284.3753', '-904.2235', '42.8828', 0, 0, '2178.7629', '-667.5533', '441.8998', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '817, Porte 4', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11476, 0, 0, 120, 0, '1291.8299', '-903.0045', '42.8828', 0, 0, '2178.7629', '-667.5533', '441.8998', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '817, Porte 3', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11479, 0, 0, 0, 0, '1980.9926', '-1682.9772', '17.0539', 0, 0, '260.2797', '1237.7260', '2084.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '2566 Idlewood', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1681, 0, 0, 0, 0, 1484835394, 0, 0, 0, 0, 0),
(11480, 0, 0, 0, 0, '2175.4831', '-1738.8643', '13.5384', 0, 0, '234.1049', '1064.3977', '2084.2112', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Centre communautaire protestant', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 373, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11534, 0, 0, 0, 0, '2414.6655', '-1425.9676', '23.9852', 0, 0, '261.0561', '1284.5458', '2080.2578', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, 'warehouse', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1455, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11532, 0, 0, 0, 0, '2492.0485', '-1239.0119', '37.9054', 0, 0, '-42.6466', '1405.7654', '2084.4297', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '1020, Los Flores Avenue', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90, 214, 0, 0, 0, 0, 1484835394, 0, 0, 0, 0, 0),
(11846, 0, 0, 0, 0, '852.2690', '-1059.3385', '25.1067', 0, 0, '1026.2786', '2599.7620', '2555.8672', 13, 1, 3, 0, 0, 0, 0, 0, 0, 0, 'local', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11804, 0, 0, 0, 0, '1973.9379', '214.0766', '28.1493', 0, 0, '140.4256', '1368.2343', '2083.8625', 13, 0, 3, 1, 0, 0, 0, 0, 0, 0, 'test', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11957, 0, 0, 0, 0, '761.0276', '377.8441', '23.1778', 0, 0, '1715.8252', '-885.3530', '8001.0859', 3, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'EasterBord - Farm N°1', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4655, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11751, 0, 0, 0, 0, '2142.7163', '-1571.5070', '14.6706', 0, 0, '260.6455', '1237.3141', '2084.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '5872, Idlewood', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 249, 273, 0, 103, 2991, 0, 0, 0, 0, 1484835394, 1484835394, 1484835394, 0, 0, 0),
(11560, 0, 0, 0, 0, '2331.6083', '-1183.9204', '4199.2089', 17, 10916859, '1843.8911', '-2360.9507', '2486.6169', 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11485, 0, 0, 120, 0, '2473.2707', '-1366.5035', '28.8281', 0, 0, '2178.6580', '-666.7986', '441.8909', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11486, 0, 0, 120, 0, '2476.4658', '-1366.4918', '28.8347', 0, 0, '2618.7993', '-1816.0929', '616.5299', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '3', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11487, 0, 0, 120, 0, '2487.2658', '-1366.5257', '28.8374', 0, 0, '2178.6580', '-666.7986', '441.8909', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '4', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11488, 0, 0, 120, 0, '2492.2097', '-1366.5430', '28.8386', 0, 0, '2618.7993', '-1816.0929', '616.5299', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '5', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11489, 0, 0, 120, 0, '2495.4902', '-1366.5855', '28.8394', 0, 0, '2178.6580', '-666.7986', '441.8909', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '6', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11490, 0, 0, 120, 0, '2495.2846', '-1375.9576', '28.8393', 0, 0, '2618.7993', '-1816.0929', '616.5299', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '7', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11491, 0, 0, 120, 0, '2492.3120', '-1375.9552', '28.8386', 0, 0, '2178.6580', '-666.7986', '441.8909', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '8', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11492, 0, 0, 120, 0, '2487.4477', '-1375.9527', '28.8374', 0, 0, '2624.6091', '-2717.5767', '2197.6729', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '9', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11493, 0, 0, 120, 0, '2476.4992', '-1375.9458', '28.8348', 0, 0, '722.0008', '-1428.3562', '1201.3190', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '10', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11494, 0, 0, 120, 0, '2472.8977', '-1375.9459', '28.8339', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, '11', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11495, 0, 0, 120, 0, '2468.2314', '-1375.9312', '28.8281', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, '12', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11496, 0, 0, 120, 0, '2468.4467', '-1383.6804', '28.8281', 0, 0, '2624.6091', '-2717.5767', '2197.6729', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '13', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11497, 0, 0, 120, 0, '2473.2304', '-1383.6649', '28.8340', 0, 0, '722.0008', '-1428.3562', '1201.3190', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '13', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11498, 0, 0, 120, 0, '2476.6069', '-1383.6645', '28.8348', 0, 0, '2624.6091', '-2717.5767', '2197.6729', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '15', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11499, 0, 0, 120, 0, '2487.3298', '-1383.6584', '28.8374', 0, 0, '722.0008', '-1428.3562', '1201.3190', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '16', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11500, 0, 0, 120, 0, '2492.3547', '-1383.6561', '28.8386', 0, 0, '1843.5190', '-2361.0581', '2486.6169', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '17', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11501, 0, 0, 120, 0, '2495.4628', '-1383.6542', '28.8394', 0, 0, '1843.5190', '-2361.0581', '2486.6169', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '18', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11502, 0, 0, 120, 0, '2495.4609', '-1391.3950', '28.8394', 0, 0, '2178.6487', '-667.4496', '441.8998', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '19', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11503, 0, 0, 120, 0, '2492.2731', '-1391.3940', '28.8386', 0, 0, '2178.6487', '-667.4496', '441.8998', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '20', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11803, 0, 0, 0, 0, '31.3489', '1345.5053', '2088.8750', 13, 11762, '1719.9811', '-893.8672', '8001.0859', 2, 1, 2, 2, 0, 0, 0, 0, 0, 0, 'Grenier', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3712, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11504, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'test', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11544, 0, 0, 0, 0, '725.5778', '-1440.4505', '13.5318', 0, 0, '2124.3469', '-2177.0544', '2314.9438', 214, 0, 2, 5, 0, 0, 0, 0, 0, 0, '5841, Marina', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 932, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11508, 0, 0, 0, 0, '2152.2124', '-1446.3856', '26.1050', 0, 0, '-1076.0669', '-1996.6400', '2007.0869', 105, 0, 2, 5, 0, 0, 0, 0, 0, 0, '1225, Guantanamo Avenue', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1688, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11509, 0, 0, 0, 0, '2067.5617', '-1643.7961', '14.1363', 0, 0, '318.5772', '1114.6387', '2083.8828', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '440, Cross Street', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 201, 30, 0, 0, 1655, 0, 0, 0, 0, 0, 1484835394, 1484835394, 0, 0, 0),
(11510, 0, 0, 0, 0, '298.8180', '-1338.4981', '53.4415', 0, 0, '-624.9581', '2039.7380', '2260.2009', 220, 0, 2, 5, 0, 0, 0, 0, 13, 2, '324, Richman', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12271, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '354, Idlewood', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11512, 0, 0, 0, 0, '2275.4187', '-930.0307', '28.0437', 0, 0, '318.3676', '1114.9368', '2083.8828', 13, 0, 2, 5, 0, 0, 0, 0, 9, 6, '00', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2763, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11513, 0, 0, 0, 0, '1282.5030', '1281.9174', '2111.2509', 14, 14379747, '1715.8835', '-879.7850', '8001.0859', 1, 0, 2, 5, 0, 0, 0, 0, 15, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11516, 0, 0, 0, 0, '1295.3861', '174.4846', '20.9105', 0, 0, '226.2132', '1240.2457', '2082.1406', 13, 0, 2, 5, 0, 0, 0, 0, 9, 6, 'Random trailer', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1681, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11895, 0, 0, 0, 0, '1980.4281', '-1801.9704', '14.4843', 0, 0, '-136.1843', '1050.0137', '2736.9688', 13, 0, 3, 5, 0, 0, 0, 0, 0, 0, 'Grillage', 201, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11524, 0, 0, 0, 0, '2736.6506', '-1926.0487', '13.5468', 0, 0, '318.6605', '1114.4834', '2083.8828', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '450, Monte Vista Avenue', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11525, 0, 0, 0, 0, '1619.5734', '73.5652', '1006.5522', 14, 32781, '318.6975', '1114.4802', '2083.8828', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Appart 5', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1688, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11526, 0, 0, 0, 0, '2319.7646', '-1053.2767', '52.4608', 0, 0, '260.9381', '1284.5719', '2080.2578', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '3', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1018, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11527, 0, 0, 0, 0, '2066.1389', '-993.1940', '48.7995', 0, 0, '260.7890', '1237.5360', '2084.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '220, San Pedro Avenue', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1614, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11528, 0, 0, 0, 0, '2514.3110', '-1691.6279', '14.0460', 0, 0, '261.1410', '1284.5809', '2080.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '240, Grove Street', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 475, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11529, 0, 0, 0, 0, '2389.7321', '-1346.0822', '25.0769', 0, 0, '318.6870', '1114.7231', '2083.8828', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '310, Fame Street', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 719, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11530, 0, 0, 0, 0, '2472.8862', '-1238.1202', '32.5694', 0, 0, '260.9601', '1284.5920', '2080.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '1010, Los Flores Avenue', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 712, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11531, 0, 0, 0, 0, '1341.3233', '-1669.4826', '17.7171', 0, 0, '260.9232', '1284.5709', '2080.2578', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '307, Central Avenue', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 402, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11533, 0, 0, 0, 0, '1540.4713', '-851.3660', '64.3360', 0, 0, '23.9474', '1340.4325', '2084.3750', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '4720, Mulholland Drive', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 433, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11535, 0, 0, 0, 0, '1283.3193', '158.4113', '20.7933', 0, 0, '226.5278', '1239.9097', '2082.1406', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '1', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1681, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11536, 0, 0, 0, 0, '2518.4023', '128.9840', '27.6756', 0, 0, '226.5506', '1239.8317', '2082.1406', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '535, Palomino Creek', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2555, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11537, 0, 0, 0, 0, '984.2498', '-1336.5880', '13.5468', 0, 0, '1119.7571', '-924.6289', '1051.0859', 60, 0, 2, 5, 0, 0, 0, 0, 0, 0, '315 Pico Blvd, Bargain Pawn', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11539, 0, 0, 0, 0, '1797.2369', '-2146.7021', '13.5468', 0, 0, '754.9880', '68.9097', '3000.9219', 13, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'Low Trash Kustom', 0, 0, 0, 0, 0, 0, '884.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11677, 0, 0, 120, 0, '1278.0551', '1273.5620', '2114.7600', 14, 13179962, '2618.7659', '-1816.0280', '616.5299', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '3', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11541, 0, 0, 0, 0, '2110.9750', '-1244.3994', '25.8515', 0, 0, '261.0551', '1284.5718', '2080.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '1600, Lisbon Street', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 521, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11835, 0, 0, 0, 0, '1706.9337', '-1528.5474', '13.5289', 0, 0, '454.3524', '-574.7167', '2501.0938', 15, 1, 3, 1, 0, 0, 0, 0, 0, 0, '310, Central Avenue', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 497, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11549, 0, 0, 0, 0, '2100.8176', '-1321.8918', '25.9531', 0, 0, '2237.5273', '-1089.4243', '2049.0234', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '8751, Jefferson', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 23, 2562, 0, 0, 0, 0, 1484835394, 1484835394, 0, 0, 0, 0),
(11711, 0, 0, 0, 0, '2355.5634', '2482.7185', '3361.6459', 92, 21, '-294.8455', '1033.9491', '31102.8555', 39, 0, 2, 1, 0, 0, 0, 0, 0, 0, '2', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 432, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11552, 0, 0, 0, 0, '267.7908', '-54.5457', '2.7772', 0, 0, '261.0983', '1284.2953', '2080.2578', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '1422, Blueberry', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11554, 0, 0, 80, 0, '956.1965', '1382.3605', '2498.0629', 21, 11958357, '243.7177', '304.9647', '999.1484', 1, 0, 1, 2, 0, 0, 0, 0, 0, 0, '454, Willowfield, Porte 2', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11555, 0, 0, 80, 0, '956.1959', '1378.8937', '2498.0629', 21, 11958357, '243.7177', '304.9647', '999.1484', 1, 0, 1, 2, 0, 0, 0, 0, 0, 0, '454, Willowfield, Porte 3', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11556, 0, 0, 80, 0, '956.1942', '1375.1018', '2498.0629', 21, 11958357, '243.7177', '304.9647', '999.1484', 1, 0, 1, 2, 0, 0, 0, 0, 0, 0, '454, Willowfield, Porte 4', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11557, 0, 0, 80, 0, '956.1946', '1371.2078', '2498.0629', 21, 11958357, '243.7177', '304.9647', '999.1484', 1, 0, 1, 2, 0, 0, 0, 0, 0, 0, '454, Willowfield, Porte 5', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11558, 0, 0, 80, 0, '962.2646', '1371.5225', '2498.0629', 21, 11958357, '243.7177', '304.9647', '999.1484', 1, 0, 1, 2, 0, 0, 0, 0, 0, 0, '454, Willowfield, Porte 6', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11561, 0, 0, 0, 0, '2335.0793', '-1179.1724', '4199.2089', 17, 10916859, '1843.8911', '-2360.9507', '2486.6169', 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11562, 0, 0, 0, 0, '2335.8991', '-1174.1217', '4199.2089', 17, 10916859, '2191.7246', '-1666.1914', '2501.0869', 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11563, 0, 0, 0, 0, '2341.4587', '-1174.1208', '4199.2089', 17, 10916859, '2191.7246', '-1666.1914', '2501.0869', 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11564, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '2191.7246', '-1666.1914', '2501.0869', 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11577, 0, 0, 70, 0, '502.0292', '1753.0057', '5801.0859', 12, 10156544, '1843.6844', '-2361.3579', '2486.6169', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11583, 0, 0, 70, 0, '507.0176', '1752.3957', '5801.0859', 12, 10156544, '2191.4399', '-1666.1584', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11566, 0, 0, 0, 0, '990.0867', '-1520.1320', '13.5493', 0, 0, '1026.8451', '2599.5610', '2555.8672', 13, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'Garage', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11839, 0, 0, 0, 0, '2402.5612', '-1714.9466', '14.1328', 0, 0, '-68.8043', '1351.1956', '2080.2109', 13, 0, 2, 5, 0, 0, 0, 0, 19, 11, 'Davis Avenue, 6300 Block', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 550, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0),
(12321, 0, 0, 0, 0, '-1061.3519', '-1205.4266', '129.7564', 0, 0, '23.8060', '1340.4138', '2084.3750', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Ferme', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2348, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11625, 0, 0, 0, 0, '972.3792', '1373.7921', '2494.5209', 21, 10965728, '2237.6804', '-1089.6022', '2049.0234', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '00', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11588, 0, 0, 0, 0, '2193.0498', '-1151.2664', '33.5240', 0, 0, '1026.5179', '2599.5994', '2555.8672', 13, 1, 3, 2, 0, 0, 0, 0, 0, 0, '//', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11569, 0, 0, 0, 0, '924.1230', '2115.8881', '3514.5437', 73, 6, '1715.4854', '-879.9178', '8001.0859', 1, 1, 2, 2, 0, 0, 0, 0, 0, 0, 'Bureau de la Première adjointe Graham', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2651, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11573, 0, 0, 0, 0, '922.5656', '2094.3417', '3514.5737', 71, 6, '1715.9926', '-880.0560', '8001.0859', 1, 0, 2, 2, 0, 0, 0, 0, 0, 0, 'Bureau 06 : Conseiller HARRINGTON', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11883, 0, 0, 0, 0, '1204.7963', '12.6644', '1000.9218', 2, 25082, '1204.3987', '14.2054', '1000.9219', 2, 1, 2, 5, 0, 0, 0, 0, 0, 0, 'VIP Room', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11576, 0, 0, 0, 0, '941.7611', '2104.4658', '3514.5437', 73, 6, '1719.8925', '-893.4376', '8001.0859', 2, 1, 2, 2, 0, 0, 0, 0, 0, 0, 'Bureau du Maire Orozco', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11733, 0, 0, 0, 0, '161.5357', '-1455.8381', '32.8449', 0, 0, '260.9647', '1284.3953', '2080.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '452, Laurel Canyon Road', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3229, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11584, 0, 0, 70, 0, '507.0152', '1748.9813', '5801.0859', 12, 10156544, '2191.4399', '-1666.1584', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '08', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11585, 0, 0, 70, 0, '505.6850', '1745.0946', '5801.0859', 12, 10156544, '2191.4399', '-1666.1584', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '09', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11586, 0, 0, 70, 0, '510.0654', '1745.0926', '5801.0859', 12, 10156544, '2191.4399', '-1666.1584', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '10', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11587, 0, 0, 70, 0, '513.2515', '1746.2384', '5801.0859', 12, 10156544, '2191.4399', '-1666.1584', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '11', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11896, 0, 0, 0, 0, '2387.9599', '-1457.2696', '24.0087', 0, 0, '-136.1843', '1050.0137', '2736.9688', 13, 0, 3, 5, 0, 0, 0, 0, 0, 0, '3420, 98rd St.', 201, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11692, 0, 0, 120, 0, '1341.3245', '-1628.9177', '17.7326', 0, 0, '2259.3813', '-1135.9360', '1050.6403', 10, 0, 1, 2, 0, 0, 0, 0, 0, 0, '311, Central Avenue', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11593, 0, 0, 0, 0, '2281.8249', '-2011.1217', '13.5546', 0, 0, '261.0071', '1284.2958', '2080.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '7412, Willowfield', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39, 0, 0, 38, 355, 0, 0, 0, 0, 1484835394, 1484835394, 0, 0, 0, 0),
(11595, 0, 0, 120, 0, '748.6763', '373.4492', '23.3042', 0, 0, '2513.4993', '-1728.9862', '778.6364', 63, 0, 1, 2, 0, 0, 0, 0, 0, 0, 'EasterBord - Farm N°2', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11596, 0, 0, 120, 0, '748.5744', '350.4805', '20.4384', 0, 0, '2513.4993', '-1728.9862', '778.6364', 63, 0, 1, 2, 0, 0, 0, 0, 0, 0, 'Caravane', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1484835394, 0),
(11597, 0, 0, 0, 0, '785.5182', '376.4001', '21.3191', 0, 0, '2513.4993', '-1728.9862', '778.6364', 63, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Caravane', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `houses` (`Hid`, `Owner`, `Renter`, `RentPrice`, `Caisse`, `OutX`, `OutY`, `OutZ`, `OutInt`, `OutWorld`, `InX`, `InY`, `InZ`, `InInt`, `Open`, `Type`, `MaxInvits`, `Trash`, `Removing`, `RemovPlayer`, `Price`, `Frigo`, `Poub`, `Title`, `Kit`, `Grammes`, `TimeCanna`, `Meth`, `TimeMeth`, `Matos`, `Essence`, `Kit1`, `Kit2`, `Kit3`, `Kit4`, `Kit5`, `Kit6`, `Kit7`, `Kit8`, `Kit9`, `Kit10`, `Kit11`, `Kit12`, `Kit13`, `Kit14`, `Kit15`, `Kit16`, `Kit17`, `Kit18`, `Kit19`, `Kit20`, `Kit21`, `Kit22`, `Kit23`, `Kit24`, `Kit25`, `Kit26`, `Kit27`, `Kit28`, `Kit29`, `Kit30`, `gMeth`, `gCoke`, `gHero`, `gStero`, `gCanna`, `Autoriz`, `PlacementActor`, `LastBraquo`, `Braquable`, `Contrebande`, `TDrugCanna`, `TDrugCoke`, `TDrugHero`, `TDrugMeth`, `TDrugStero`, `CoffreFurn`) VALUES
(11598, 0, 0, 120, 0, '805.2825', '382.9291', '19.3809', 0, 0, '2513.4993', '-1728.9862', '778.6364', 63, 0, 1, 2, 0, 0, 0, 0, 0, 0, 'Caravane', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11601, 0, 0, 0, 0, '1675.4129', '-1634.4753', '14.2265', 0, 0, '390.7680', '173.8051', '1008.3828', 3, 1, 2, 5, 0, 0, 0, 0, 0, 0, 'Los Santos Security', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1936, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11698, 0, 0, 0, 0, '1073.7436', '-364.6062', '73.9921', 0, 0, '1026.1277', '2599.4473', '2555.8679', 13, 1, 3, 2, 0, 0, 0, 0, 0, 0, '1487 Farm House', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 912, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11651, 0, 0, 0, 0, '-1667.8187', '2486.5407', '87.1718', 0, 0, '754.9880', '68.9097', '3000.9219', 5, 0, 3, 1, 0, 0, 0, 0, 0, 0, 'Tierra\'s house', 1, 0, 0, 0, 0, 66, '50.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11603, 0, 0, 0, 0, '1704.1080', '-1578.7974', '13.8883', 0, 0, '318.6039', '1114.7830', '2083.8828', 13, 0, 2, 5, 0, 0, 0, 0, 8, 7, '195, Wilshire Boulevard', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2756, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11729, 0, 0, 0, 0, '743.3176', '-509.3181', '18.0129', 0, 0, '234.1302', '1063.9862', '2084.2119', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '153, Dillimore', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3510, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11685, 0, 0, 0, 0, '2211.1413', '-2046.6851', '13.5468', 0, 0, '1026.7094', '2599.7444', '2555.8669', 13, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'Porte de box', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11848, 0, 0, 0, 0, '485.1076', '-1114.1993', '82.3593', 0, 0, '800.0135', '1873.4291', '5999.7822', 13, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'local', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11735, 0, 0, 0, 0, '-162.1957', '1728.1806', '1394.0061', 110, 11430, '-2643.7078', '2846.6567', '1243.7654', 111, 1, 2, 0, 0, 0, 0, 0, 0, 0, 'Etage 1', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 631, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11624, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'test', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12296, 0, 0, 80, 0, '2783.9382', '-2158.5734', '3000.9819', 14, 15167356, '2259.3838', '-1135.8997', '1050.6403', 10, 0, 1, 1, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11850, 0, 0, 0, 0, '2387.8637', '-1328.3592', '25.1241', 0, 0, '2237.5737', '-1089.4192', '2049.0234', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '110, Fame Street', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11868, 0, 0, 0, 0, '2336.8471', '-1178.1510', '4199.2089', 17, 12360892, '-1136.4218', '1117.6101', '2301.0859', 108, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Local technique', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12306, 0, 0, 0, 0, '2650.7299', '-1977.0458', '13.9988', 0, 0, '799.9171', '1873.2388', '5999.7822', 13, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'Arrière maison', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3916, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11614, 0, 0, 120, 0, '1249.6092', '-877.2716', '46.6406', 0, 0, '2259.6453', '-1135.9318', '1050.6328', 10, 0, 1, 2, 0, 0, 0, 0, 0, 0, '816, Porte 6', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11615, 0, 0, 120, 0, '1242.1163', '-878.2218', '42.8753', 0, 0, '2259.3984', '-1135.8949', '1050.6403', 10, 0, 1, 1, 0, 0, 0, 0, 0, 0, '816, Porte 1', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11616, 0, 0, 120, 0, '1249.6148', '-877.3197', '42.8828', 0, 0, '2259.3848', '-1135.8726', '1050.6403', 10, 0, 1, 2, 0, 0, 0, 0, 0, 0, '816, Porte 2', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11617, 0, 0, 120, 0, '1248.7952', '-871.0944', '42.8828', 0, 0, '2259.3838', '-1135.8363', '1050.6403', 10, 0, 1, 2, 0, 0, 0, 0, 0, 0, '816, Porte 4', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11618, 0, 0, 120, 0, '1241.3070', '-872.0902', '42.8828', 0, 0, '2259.3826', '-1135.8391', '1050.6403', 10, 0, 1, 2, 0, 0, 0, 0, 0, 0, '816, Porte 4', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11619, 0, 0, 120, 0, '1241.3099', '-872.1029', '46.6329', 0, 0, '2259.3833', '-1135.9340', '1050.6403', 10, 0, 1, 2, 0, 0, 0, 0, 0, 0, '816, Porte 7', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11852, 0, 0, 0, 0, '2781.9396', '-1358.3968', '26.3710', 0, 0, '1327.1517', '-1071.0752', '3458.9060', 20, 0, 2, 5, 0, 0, 0, 0, 16, 14, '500, East Beach', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 296, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11849, 0, 0, 0, 0, '2196.2133', '-1404.0867', '25.9488', 0, 0, '260.6003', '1237.2466', '2084.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '1245, Alameda Street', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11623, 0, 0, 0, 0, '890.8319', '-671.5171', '2601.0910', 86, 11442, '891.5248', '-662.2130', '2001.1000', 87, 1, 3, 0, 0, 0, 0, 0, 0, 0, '1er étage', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11626, 0, 0, 0, 0, '1031.8663', '-1442.6883', '13.5546', 0, 0, '1720.1130', '-892.5506', '8001.0859', 2, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Local', 0, 0, 0, 0, 0, 0, '0.0000', 24, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11627, 0, 0, 0, 0, '1617.4412', '63.6989', '1009.7699', 14, 11656897, '1720.1130', '-892.5506', '8001.0859', 2, 1, 2, 5, 0, 0, 0, 0, 0, 0, '3', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11628, 0, 0, 0, 0, '1612.9648', '55.2330', '1009.7699', 14, 11656897, '223.2264', '1287.2706', '1082.1406', 1, 1, 2, 5, 0, 0, 0, 0, 0, 0, '4', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11629, 0, 0, 0, 0, '1617.6855', '55.2327', '1009.7699', 14, 11656897, '1720.1130', '-892.5506', '8001.0859', 2, 1, 2, 5, 0, 0, 0, 0, 0, 0, '5', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11630, 0, 0, 0, 0, '1615.4783', '60.9883', '1005.3789', 14, 11656897, '1720.1130', '-892.5506', '8001.0859', 2, 1, 2, 5, 0, 0, 0, 180000, 0, 0, '6', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11631, 0, 0, 0, 0, '1611.4333', '60.9882', '1005.3789', 14, 11656897, '1720.1130', '-892.5506', '8001.0859', 2, 0, 2, 5, 0, 0, 0, 0, 0, 0, '7', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11632, 0, 0, 0, 0, '1611.3641', '65.9750', '1005.3789', 14, 11656897, '1720.1130', '-892.5506', '8001.0859', 2, 0, 2, 5, 0, 0, 0, 0, 0, 0, '7', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11633, 0, 0, 120, 0, '1612.9990', '63.7175', '1009.7699', 14, 17560433, '2618.6824', '-1816.2991', '616.5299', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '1', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11634, 0, 0, 120, 0, '1617.5567', '63.6997', '1009.7699', 14, 17560433, '2618.6824', '-1816.2991', '616.5299', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11635, 0, 0, 120, 0, '1613.0460', '55.2337', '1009.7699', 14, 17560433, '2618.6824', '-1816.2991', '616.5299', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '3', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11636, 0, 0, 120, 0, '1617.7888', '55.2325', '1009.7699', 14, 17560433, '2178.7454', '-667.7574', '441.8998', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '4', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11637, 0, 0, 120, 0, '1615.3757', '61.1708', '1005.3789', 14, 17560433, '2178.7454', '-667.7574', '441.8998', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '5', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11638, 0, 0, 120, 0, '1611.5089', '60.9888', '1005.3789', 14, 17560433, '2178.7454', '-667.7574', '441.8998', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '6', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11639, 0, 0, 120, 0, '1611.3503', '65.9750', '1005.3789', 14, 17560433, '2178.7454', '-667.7574', '441.8998', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '7', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11640, 0, 0, 120, 0, '2491.3386', '41.3535', '2996.0930', 19, 10778028, '2618.7722', '-1816.4713', '616.5299', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '1', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11641, 0, 0, 120, 0, '2488.5253', '41.3581', '2996.0930', 19, 10778028, '2178.7485', '-667.3574', '441.8998', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11642, 0, 0, 120, 0, '2485.4663', '41.3925', '2996.0930', 19, 10778028, '2618.7722', '-1816.4713', '616.5299', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '3', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11643, 0, 0, 120, 0, '2485.7141', '44.6208', '2996.0930', 19, 10778028, '2178.7485', '-667.3574', '441.8998', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '5', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11644, 0, 0, 120, 0, '2489.0781', '44.6406', '2996.0930', 19, 10778028, '2618.7722', '-1816.4713', '616.5299', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '6', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11645, 0, 0, 0, 0, '2492.0991', '44.6225', '2996.0930', 19, 10778028, '1720.0923', '-892.7678', '8001.0859', 2, 0, 2, 5, 0, 0, 0, 0, 0, 0, '7', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11646, 0, 0, 0, 0, '212.4166', '1822.8597', '6.4140', 0, 0, '-3.6411', '2499.5750', '2119.9709', 77, 1, 3, 0, 0, 0, 0, 0, 0, 0, 'giacky dm', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11675, 0, 0, 120, 0, '1282.5019', '1281.9381', '2111.2509', 14, 13179962, '2618.7659', '-1816.0280', '616.5299', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '1', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11648, 0, 0, 0, 0, '2148.5605', '-1320.0838', '26.0738', 0, 0, '2237.4937', '-1089.4277', '2049.0234', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '8712, Jefferson', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11649, 0, 0, 0, 0, '2111.2451', '-1278.9782', '25.8359', 0, 0, '2237.5354', '-1089.4210', '2049.0234', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '1423, Jefferson', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11650, 0, 0, 0, 0, '2851.8554', '-1365.9237', '14.1708', 0, 0, '234.7714', '1104.5211', '2080.9929', 13, 0, 2, 5, 0, 0, 0, 0, 0, 15, '1004, East Beach', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 3, 200, 0, 8, 1847, 0, 0, 0, 0, 1484835394, 1484835394, 1484835394, 1484835394, 0, 0),
(11746, 0, 0, 0, 0, '2370.2290', '-1034.5550', '54.4105', 0, 0, '1539.7706', '1341.3551', '2310.9819', 117, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Trailer', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11730, 0, 0, 0, 0, '784.3972', '-1436.1214', '13.5468', 0, 0, '234.5972', '1104.7823', '2080.9944', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '110, Olympic Avenue', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3149, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11713, 0, 0, 20, 0, '2358.0100', '2477.3217', '3361.6459', 92, 21, '-294.8455', '1033.9491', '31102.8555', 39, 0, 2, 1, 0, 0, 0, 0, 0, 0, '4', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 432, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11654, 0, 0, 0, 0, '2713.4323', '-2205.0063', '13.5468', 0, 0, '1724.4067', '-880.1069', '8001.0859', 1, 0, 2, 2, 0, 0, 0, 0, 0, 0, 'Conteneur 571', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11655, 0, 0, 0, 0, '2066.7392', '-1656.4622', '14.1328', 0, 0, '226.7858', '1239.9645', '2082.1406', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '430, Cross Street.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 550, 0, 0, 0, 0, 0, 1484835394, 0, 0, 0, 0),
(12337, 0, 0, 0, 0, '808.2625', '-759.3864', '76.5313', 0, 0, '-1076.0543', '-1996.4069', '2007.0869', 105, 0, 2, 5, 0, 0, 0, 0, 0, 0, '2567, Richman', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5017, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12118, 0, 0, 0, 0, '-795.8515', '2259.5551', '59.4688', 0, 0, '1720.0067', '-893.8561', '8001.0859', 2, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Bicoque', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 78, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11788, 0, 0, 100, 0, '2287.6411', '-1790.5966', '3583.7219', 40, 18800286, '2259.3821', '-1135.7888', '1050.6403', 10, 0, 1, 2, 0, 0, 0, 0, 0, 0, '130', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11776, 0, 0, 0, 0, '255.1360', '1209.7755', '2601.3110', 20, 25018, '1715.4851', '-879.9794', '8001.0859', 1, 1, 2, 1, 0, 0, 0, 0, 0, 0, 'Ladies Room', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11660, 0, 0, 0, 0, '2532.3723', '464.5353', '3315.5739', 21, 11952582, '1720.0780', '-893.3019', '8001.0859', 2, 1, 2, 5, 0, 0, 0, 0, 0, 0, '2', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11661, 0, 0, 0, 0, '2368.3391', '-1675.3459', '14.1681', 0, 0, '1720.0780', '-893.3019', '8001.0859', 2, 1, 2, 5, 0, 0, 0, 0, 0, 5, '3', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 1060, 0, 0, 0, 0, 0, 1484835394, 0, 0, 0, 1484835394, 0),
(11662, 0, 0, 150, 0, '142.6653', '-107.4483', '2501.9128', 175, 25132, '1720.0780', '-893.3019', '8001.0859', 2, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'No Entry  Staff Only', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11663, 0, 0, 0, 0, '2542.4345', '473.4395', '3315.5739', 21, 11952582, '1720.0780', '-893.3019', '8001.0859', 2, 0, 2, 5, 0, 0, 0, 0, 0, 0, '5', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11664, 0, 0, 0, 0, '2543.5834', '468.9640', '3315.5749', 21, 11952582, '1720.0780', '-893.3019', '8001.0859', 2, 1, 2, 5, 0, 0, 0, 0, 0, 0, '6', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11665, 0, 0, 0, 0, '2543.5842', '464.5218', '3315.5749', 21, 11952582, '1720.0780', '-893.3019', '8001.0859', 2, 0, 2, 5, 0, 0, 0, 0, 0, 0, '7', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11666, 0, 0, 0, 0, '2542.4916', '461.6194', '3315.5810', 21, 11952582, '1720.0780', '-893.3019', '8001.0859', 2, 1, 2, 5, 0, 0, 0, 0, 0, 0, '8', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11667, 0, 0, 0, 0, '2542.1074', '471.6756', '3319.1569', 21, 11952582, '1720.0780', '-893.3019', '8001.0859', 2, 0, 2, 5, 0, 0, 0, 0, 0, 0, '9', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1484835394, 0),
(11668, 0, 0, 0, 0, '2543.3293', '468.4668', '3319.1440', 21, 11952582, '1720.0780', '-893.3019', '8001.0859', 2, 1, 2, 5, 0, 0, 0, 0, 0, 0, '10', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11669, 0, 0, 0, 0, '2543.3278', '464.2777', '3319.1440', 21, 11952582, '1720.0780', '-893.3019', '8001.0859', 2, 1, 2, 5, 0, 0, 0, 0, 0, 0, '11', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11670, 0, 0, 0, 0, '2542.1787', '459.7197', '3319.1508', 21, 11952582, '1720.0780', '-893.3019', '8001.0859', 2, 0, 2, 5, 0, 0, 0, 0, 0, 0, '12', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11671, 0, 0, 0, 0, '2533.3229', '459.7240', '3319.1508', 21, 11952582, '1720.0780', '-893.3019', '8001.0859', 2, 1, 2, 5, 0, 0, 0, 0, 0, 0, '13', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11672, 0, 0, 0, 0, '2335.0783', '-1179.1346', '4199.2089', 17, 12360892, '1720.0780', '-893.3019', '8001.0859', 2, 0, 2, 5, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11673, 0, 0, 0, 0, '2532.0468', '468.3464', '3319.1508', 21, 11952582, '1720.0780', '-893.3019', '8001.0859', 2, 0, 2, 5, 0, 0, 0, 0, 14, 1, '15', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11674, 0, 0, 0, 0, '2533.0678', '471.6852', '3319.1569', 21, 11952582, '1720.0780', '-893.3019', '8001.0859', 2, 1, 2, 5, 0, 0, 0, 0, 0, 0, '16', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11678, 0, 0, 120, 0, '1282.5029', '1273.5244', '2114.7600', 14, 13179962, '2178.8015', '-666.9877', '441.8909', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '4', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11679, 0, 0, 120, 0, '1282.4923', '1281.9156', '2118.2438', 14, 13179962, '2178.8015', '-666.9877', '441.8909', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '5', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11680, 0, 0, 120, 0, '1278.0554', '1281.8703', '2118.2438', 14, 13179962, '2178.8015', '-666.9877', '441.8909', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '6', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11681, 0, 0, 120, 0, '1278.0557', '1273.4545', '2121.7399', 14, 13179962, '2624.4624', '-2717.2832', '2197.6729', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '7', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11682, 0, 0, 120, 0, '1282.5012', '1273.3653', '2121.7390', 14, 13179962, '2624.4624', '-2717.2832', '2197.6729', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '8', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11683, 0, 0, 120, 0, '1282.5030', '1281.8265', '2125.2329', 14, 13179962, '722.7231', '-1428.4716', '1201.3190', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '9', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11684, 0, 0, 120, 0, '1278.0550', '1281.8181', '2125.2290', 14, 13179962, '722.7231', '-1428.4716', '1201.3190', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '10', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11686, 0, 0, 0, 0, '2140.1367', '-2291.5634', '20.6646', 0, 0, '1026.7567', '2599.2446', '2555.8679', 13, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'local', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11687, 0, 0, 0, 0, '1016.0085', '2600.0544', '2555.8588', 13, 11686, '799.5472', '1874.1758', '5999.7822', 13, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'Plancher etrange', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11689, 0, 0, 0, 0, '2135.2163', '-1580.4724', '14.9668', 0, 0, '226.6368', '1240.1340', '2082.1406', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '5871, Idlewood', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 111, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11817, 0, 0, 0, 0, '1270.6492', '-1667.8621', '19.7343', 0, 0, '760.5674', '718.5544', '3501.0859', 16, 1, 3, 0, 0, 0, 0, 0, 0, 0, 'Local', 1, 0, 0, 10, 1485299448, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11768, 0, 0, 0, 0, '2368.4418', '-2254.4499', '13.5413', 0, 0, '754.9880', '68.9097', '3000.9219', 13, 0, 3, 0, 0, 0, 0, 0, 0, 0, '8741, Ocean Dick', 303, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11833, 0, 0, 0, 0, '2719.0954', '-2517.8217', '17.3671', 0, 0, '-136.1843', '1050.0137', '2736.9688', 1, 1, 3, 1, 0, 0, 0, 0, 0, 0, 'Girgis\'s Docks Stockage', 201, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11702, 0, 0, 0, 0, '1410.8542', '-1700.5190', '13.5394', 0, 0, '2324.3555', '-1149.5474', '2050.7100', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '1741, Pershing Square', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2651, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11714, 0, 0, 20, 0, '2358.0041', '2462.2329', '3361.6459', 92, 21, '-294.8455', '1033.9491', '31102.8555', 39, 0, 2, 1, 0, 0, 0, 0, 0, 0, '1', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 432, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11715, 0, 0, 20, 0, '2358.0097', '2456.6713', '3361.6459', 92, 21, '-294.8455', '1033.9491', '31102.8555', 39, 0, 2, 1, 0, 0, 0, 0, 0, 0, '2', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 432, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11716, 0, 0, 20, 0, '2355.5627', '2456.6450', '3361.6459', 92, 21, '-294.8455', '1033.9491', '31102.8555', 39, 0, 2, 1, 0, 0, 0, 0, 0, 0, '3', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 432, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11717, 0, 0, 0, 0, '2355.5627', '2462.1157', '3361.6459', 92, 21, '-294.8455', '1033.9491', '31102.8555', 39, 0, 2, 1, 0, 0, 0, 0, 0, 0, '4', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 432, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11820, 0, 0, 20, 0, '2345.2080', '2462.2160', '3361.6459', 92, 21, '-1076.0492', '-1996.6078', '2007.0869', 105, 0, 2, 1, 0, 0, 0, 0, 0, 0, '1', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 432, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11719, 0, 0, 50, 50, '2345.2048', '2456.6618', '3361.6459', 92, 21, '1720.1617', '-892.8738', '8001.0859', 2, 0, 2, 1, 0, 0, 0, 0, 0, 0, '2', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 164, 0, 0, 0, 432, 0, 0, 0, 0, 0, 1484835394, 0, 0, 0, 0),
(11720, 0, 0, 0, 0, '2342.7429', '2456.5883', '3361.6459', 92, 21, '1720.1617', '-892.8738', '8001.0859', 2, 0, 2, 1, 0, 0, 0, 0, 0, 0, '3', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 432, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11721, 0, 0, 0, 0, '2342.7414', '2462.2578', '3361.6459', 92, 21, '1720.1617', '-892.8738', '8001.0859', 2, 0, 2, 1, 0, 0, 0, 0, 0, 0, '4', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 432, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11724, 0, 0, 0, 0, '1531.8165', '-1460.5216', '2001.0928', 96, 11722, '1531.6459', '-1460.4901', '2701.0940', 95, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'etage 1', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11758, 0, 0, 0, 0, '2437.9174', '-2020.8457', '13.9025', 0, 0, '-68.8172', '1351.4442', '2080.2109', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '12, Fuller Street', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 445, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11881, 0, 0, 0, 0, '1989.8520', '-1081.4506', '24.6139', 0, 0, '754.9880', '68.9097', '3000.9219', 13, 0, 3, 5, 0, 0, 0, 0, 0, 0, 'Garage', 303, 0, 0, 0, 0, 0, '999999.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11830, 0, 0, 0, 0, '1976.2142', '-1633.9904', '18.5689', 0, 0, '260.9294', '1284.7773', '2080.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '006 Bloc B, Pat Nixon Gardens', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 3328, 0, 0, 0, 0, 0, 0, 1484835394, 0, 0, 0),
(11738, 0, 0, 0, 0, '655.9290', '-1635.8665', '15.8617', 0, 0, '826.2287', '-1098.3950', '2501.0918', 42, 0, 2, 5, 0, 0, 0, 0, 0, 0, '378, Rodeo Blvd', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11740, 0, 0, 50, 0, '2025.6933', '-1288.7219', '23.9828', 0, 0, '-2943.2209', '1003.7543', '2023.3230', 106, 0, 2, 5, 0, 0, 0, 0, 0, 0, '78545 Little Haiti, Glen Park', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11741, 0, 0, 0, 0, '-1039.6595', '1553.0246', '505.6689', 155, 15225499, '259.2625', '1644.5863', '2618.0537', 141, 0, 2, 2, 0, 0, 0, 0, 0, 0, '9', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 147, 0, 3459, 0, 0, 0, 0, 0, 0, 0, 0, 1484835394, 0),
(11742, 0, 0, 150, 0, '2035.8580', '-1059.2344', '25.6508', 0, 0, '-1136.4227', '1117.7385', '2301.0859', 108, 0, 2, 5, 0, 0, 0, 0, 0, 0, '1479, Jefferson', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 433, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11743, 0, 0, 150, 0, '-661.2170', '1472.6485', '2518.1179', 85, 25117, '-2943.9229', '1003.6820', '2023.3230', 106, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Reserve', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 433, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11744, 0, 0, 150, 0, '793.9746', '-1707.5158', '14.0382', 0, 0, '-1490.1207', '-81.1558', '2119.4839', 109, 0, 2, 5, 0, 0, 0, 0, 0, 0, '9991, Marina', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 433, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12363, 0, 0, 0, 0, '254.6472', '1035.5567', '3002.0700', 10, 12362, '800.1241', '1873.5916', '5999.7822', 13, 1, 3, 0, 0, 0, 0, 0, 0, 0, 'Planque', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1769, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11812, 0, 0, 100, 0, '693.7561', '-1645.7120', '4.0937', 0, 0, '261.0197', '1284.2946', '2080.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '4527, Marina', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11759, 0, 0, 0, 0, '2561.3828', '-1323.7844', '40.7969', 0, 0, '715.7927', '-244.1189', '3000.7710', 13, 0, 3, 0, 0, 0, 0, 0, 0, 0, '8741, San Pedro', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11819, 0, 0, 0, 0, '253.8073', '-163.9713', '5.0786', 0, 0, '2176.3879', '1286.8127', '2442.8770', 139, 1, 2, 5, 0, 0, 0, 0, 0, 0, '12, Blueberry', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1338, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12277, 0, 0, 0, 0, '1906.5194', '-1577.6877', '19.4178', 0, 0, '318.4769', '1114.7103', '1083.8828', 5, 0, 2, 5, 0, 0, 0, 0, 0, 0, '258, Idlewood', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 700, 700, 0, 700, 5314, 0, 0, 0, 0, 1484835394, 1484835394, 1484835394, 0, 0, 0),
(11756, 0, 0, 0, 0, '1535.0351', '-800.2004', '72.8494', 0, 0, '-1076.0487', '-1996.4279', '2007.0869', 105, 0, 2, 2, 0, 0, 0, 0, 0, 0, '4566, Vinewood', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11747, 0, 0, 0, 0, '1527.8133', '-772.6029', '80.5781', 0, 0, '221.8099', '1140.7274', '2082.6094', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '356', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 166, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12150, 0, 0, 0, 0, '2229.3310', '-2061.6760', '13.5468', 0, 0, '800.2850', '1873.2213', '5999.7822', 13, 1, 3, 0, 0, 0, 0, 0, 0, 0, 'Garage', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2348, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11857, 0, 0, 0, 0, '1804.1668', '-2124.9023', '13.9423', 0, 0, '261.0568', '1284.3053', '2080.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '3202, El Corona', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 464, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11775, 0, 0, 0, 0, '246.9067', '1200.2045', '2601.0839', 20, 25018, '1715.4855', '-879.9680', '8001.0859', 1, 1, 2, 1, 0, 0, 0, 0, 0, 0, 'Private Room', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11834, 0, 0, 0, 0, '-148.8789', '1753.1431', '1394.0249', 110, 11430, '290.0164', '2890.7734', '2001.0859', 126, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Pièce', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11774, 0, 0, 0, 0, '-535.5462', '-506.7664', '25.5234', 0, 0, '754.9880', '68.9097', '3000.9219', 13, 1, 3, 1, 0, 0, 0, 0, 0, 0, 'Qwinkbond\'s Package Storage', 303, 0, 0, 0, 0, 0, '878.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 756, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11869, 0, 0, 0, 0, '1739.9295', '-1562.2689', '14.1623', 0, 0, '2176.4395', '1287.0988', '2442.8770', 139, 0, 2, 5, 0, 0, 0, 0, 0, 0, '1290, Broadway St', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 261, 800, 80, 0, 0, 0, 0, 0, 0, 0, 1484835394, 1484835394, 0, 1484835394, 0),
(11773, 0, 0, 0, 0, '2090.7355', '-1235.1795', '26.0191', 0, 0, '260.8288', '1237.8773', '2084.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '1617 Lisbon ', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11814, 0, 0, 0, 0, '1680.6838', '-1508.5549', '17.7882', 0, 0, '-1136.6704', '1117.7975', '2301.0859', 108, 0, 2, 5, 0, 0, 0, 0, 0, 0, '1485, Willowfield.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1501, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11873, 0, 0, 0, 0, '1969.2814', '-1705.1428', '15.9687', 0, 0, '261.0311', '1284.2949', '2080.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '175, Idlewood', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11871, 0, 0, 0, 0, '1297.1481', '390.9044', '19.5546', 0, 0, '260.7278', '1237.2323', '2084.2578', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, 'Local', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11763, 0, 0, 0, 0, '736.6868', '-556.7843', '18.0129', 0, 0, '261.0757', '1284.5548', '2080.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '250, Dillimore', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2534, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11880, 0, 0, 0, 0, '2066.7290', '-1554.2518', '13.4351', 0, 0, '-136.1843', '1050.0137', '2736.9688', 1, 0, 3, 5, 0, 0, 0, 130000, 0, 0, 'Squat', 102, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11785, 0, 0, 100, 0, '2279.3789', '-1796.6589', '3580.4345', 40, 18800286, '2259.3813', '-1135.8490', '1050.6403', 10, 0, 1, 2, 0, 0, 0, 0, 0, 0, '100', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11786, 0, 0, 100, 0, '2279.3774', '-1792.4842', '3580.4345', 40, 18800286, '2259.3816', '-1135.8137', '1050.6403', 10, 0, 1, 2, 0, 0, 0, 0, 0, 0, '110', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11789, 0, 0, 100, 0, '2291.3859', '-1797.1884', '3583.7290', 40, 18800286, '2259.3813', '-1135.7628', '1050.6403', 10, 0, 1, 2, 0, 0, 0, 0, 0, 0, '140', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11792, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '170', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11794, 0, 0, 100, 0, '2281.5117', '-1790.9279', '3587.8759', 40, 18800286, '2259.3816', '-1135.9667', '1050.6403', 10, 0, 1, 1, 0, 0, 0, 0, 0, 0, '170', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11795, 0, 0, 100, 0, '2281.5183', '-1787.1531', '3587.8759', 40, 18800286, '2259.3813', '-1135.8276', '1050.6403', 10, 0, 1, 1, 0, 0, 0, 0, 0, 0, '180', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11796, 0, 0, 100, 0, '2279.4191', '-1788.6594', '3587.8759', 40, 18800286, '2259.3816', '-1135.8239', '1050.6403', 10, 0, 1, 1, 0, 0, 0, 0, 0, 0, '190', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11797, 0, 0, 100, 0, '2276.1948', '-1791.0383', '3587.8818', 40, 18800286, '2259.3857', '-1135.8132', '1050.6403', 10, 0, 1, 1, 0, 0, 0, 0, 0, 0, '200', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11841, 0, 0, 0, 0, '2462.5200', '-1978.2639', '13.4333', 0, 0, '1715.4854', '-880.0229', '8001.0859', 1, 0, 2, 1, 0, 0, 0, 0, 0, 0, '101, Willowfield Avenue', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 363, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11859, 0, 0, 120, 0, '1617.5148', '63.6996', '1009.7699', 14, 17816659, '2618.5137', '-1815.6592', '616.5299', 13, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11822, 0, 0, 0, 0, '1256.4608', '-645.3901', '1052.6953', 130, 11825, '799.9443', '1873.2367', '5999.7822', 13, 1, 3, 2, 0, 0, 0, 0, 0, 0, '1', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2734, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11836, 0, 0, 0, 0, '693.5447', '-1705.8322', '3.8194', 0, 0, '234.6485', '1104.5201', '2080.9929', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '65, Marina', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 756, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11844, 0, 0, 0, 0, '1551.3067', '-1226.4892', '1089.8669', 22, 25, '1715.4855', '-884.9001', '8001.0859', 3, 1, 2, 1, 0, 0, 0, 0, 0, 0, 'Bureaux collectifs', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 674, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11831, 0, 0, 0, 0, '2324.6625', '-1677.2938', '14.4218', 0, 0, '543.3994', '-96.8446', '2997.9922', 13, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'Garage 328, Union Street', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11825, 0, 0, 0, 0, '2381.9724', '-1033.4555', '54.1070', 0, 0, '1237.8062', '-637.8304', '1056.1154', 130, 1, 2, 5, 0, 0, 0, 0, 0, 0, 'Bunker de la guerre froide', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11827, 0, 0, 0, 0, '827.8528', '-857.9705', '70.3308', 0, 0, '260.9798', '1284.2943', '2080.2578', 13, 1, 2, 5, 0, 0, 0, 0, 15, 0, '455, Richman', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 653, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11828, 0, 0, 0, 0, '2296.8251', '-2001.3833', '13.5605', 0, 0, '261.0213', '1284.2944', '2080.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'E3510 Willowfield Dr.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2889, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11867, 0, 0, 0, 0, '221.9557', '1796.6066', '2318.5449', 163, 25127, '225.5335', '1760.4484', '2423.9419', 173, 1, 2, 5, 0, 0, 0, 0, 0, 0, 'L\'Atelier', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11858, 0, 0, 120, 0, '1613.0096', '63.7196', '1009.7699', 14, 17816659, '2618.5137', '-1815.6592', '616.5299', 13, 0, 1, 2, 0, 0, 0, 0, 0, 0, 'bloc 1', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11856, 0, 0, 0, 0, '2140.5683', '-1708.3060', '15.0859', 0, 0, '261.0098', '1284.3088', '2080.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '87421, Ganton', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 5, 3, 0, 0, 2934, 0, 0, 0, 0, 0, 1484835394, 1484835394, 1484835394, 0, 0),
(11893, 0, 0, 0, 0, '2786.7534', '-2147.6147', '3009.2429', 16, 32767, '260.8537', '1237.5234', '2084.2578', 13, 0, 2, 5, 0, 0, 0, 0, 2, 13, '557', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11851, 0, 0, 0, 0, '344.6247', '-71.1449', '2.4308', 0, 0, '1706.4410', '-889.9656', '8001.0859', 5, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Los Santos Truck Rental', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11853, 0, 0, 0, 0, '768.0802', '-1655.9075', '5.6093', 0, 0, '261.0283', '1284.2947', '2080.2578', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '845, Marina', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11855, 0, 0, 0, 0, '2345.2075', '2462.2687', '3361.6459', 38, 314, '-295.2263', '1034.1967', '31102.8555', 39, 1, 2, 1, 0, 0, 0, 0, 0, 0, '1', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2524, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11885, 0, 0, 0, 0, '2081.5244', '-1205.1617', '23.9333', 0, 0, '2040.1212', '-1285.7705', '1501.0859', 175, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'LH snack', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11862, 0, 0, 0, 0, '1059.6641', '-345.8966', '73.9921', 0, 0, '754.9880', '68.9097', '3000.9219', 13, 1, 3, 1, 0, 0, 0, 0, 0, 0, 'Hangar', 303, 0, 0, 0, 0, 0, '1122.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 771, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11876, 0, 0, 0, 0, '497.5591', '-1094.6589', '82.3591', 0, 0, '2124.3967', '-2176.8396', '2314.9438', 164, 0, 2, 10, 0, 0, 0, 0, 0, 0, '1478, Richman, Villa Eagles Nest', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1484835394, 1484835394, 1484835394, 0, 0, 0),
(11865, 0, 0, 0, 0, '2150.9191', '-1419.0411', '25.9218', 0, 0, '-1381.9301', '1187.5176', '2501.0820', 107, 0, 2, 5, 0, 0, 0, 0, 0, 0, '4', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11878, 0, 0, 0, 0, '253.2035', '-1269.9913', '74.4263', 0, 0, '891.8152', '-662.1165', '2601.1001', 170, 0, 2, 10, 0, 0, 0, 0, 0, 0, '4025, Richman', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12152, 0, 0, 0, 0, '302.2598', '-144.2501', '1004.0547', 7, 12151, '1026.9401', '2599.1091', '2555.8679', 13, 1, 3, 0, 0, 0, 0, 0, 0, 0, 'Arrière Salle', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4910, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11874, 0, 0, 0, 0, '1848.1531', '-1593.5308', '19.1244', 0, 0, '260.9866', '1284.6731', '2080.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '1243, Wilshire', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `houses` (`Hid`, `Owner`, `Renter`, `RentPrice`, `Caisse`, `OutX`, `OutY`, `OutZ`, `OutInt`, `OutWorld`, `InX`, `InY`, `InZ`, `InInt`, `Open`, `Type`, `MaxInvits`, `Trash`, `Removing`, `RemovPlayer`, `Price`, `Frigo`, `Poub`, `Title`, `Kit`, `Grammes`, `TimeCanna`, `Meth`, `TimeMeth`, `Matos`, `Essence`, `Kit1`, `Kit2`, `Kit3`, `Kit4`, `Kit5`, `Kit6`, `Kit7`, `Kit8`, `Kit9`, `Kit10`, `Kit11`, `Kit12`, `Kit13`, `Kit14`, `Kit15`, `Kit16`, `Kit17`, `Kit18`, `Kit19`, `Kit20`, `Kit21`, `Kit22`, `Kit23`, `Kit24`, `Kit25`, `Kit26`, `Kit27`, `Kit28`, `Kit29`, `Kit30`, `gMeth`, `gCoke`, `gHero`, `gStero`, `gCanna`, `Autoriz`, `PlacementActor`, `LastBraquo`, `Braquable`, `Contrebande`, `TDrugCanna`, `TDrugCoke`, `TDrugHero`, `TDrugMeth`, `TDrugStero`, `CoffreFurn`) VALUES
(11875, 0, 0, 0, 0, '1848.1525', '-1593.6641', '23.8834', 0, 0, '261.1696', '1284.7339', '2080.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Iddlewood Blocs', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11894, 0, 0, 0, 0, '2033.1600', '-957.5087', '41.8363', 0, 0, '754.9880', '68.9097', '3000.9219', 13, 0, 3, 5, 0, 0, 0, 0, 0, 0, 'Garage', 303, 0, 0, 0, 0, 0, '53.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11882, 0, 0, 0, 0, '890.8328', '-671.4608', '2601.0910', 170, 11878, '891.5439', '-662.3931', '2001.1000', 173, 1, 2, 5, 0, 0, 0, 0, 0, 0, 'Etage', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11888, 0, 0, 100, 0, '2540.8254', '259.6471', '2509.6118', 174, 25138, '2233.6748', '-1115.1970', '1050.8828', 5, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Chambre 03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11889, 0, 0, 100, 0, '2535.4150', '261.0314', '2509.6118', 174, 25138, '2259.5813', '-1135.8109', '1050.6328', 10, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Chambre 04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11890, 0, 0, 0, 0, '2537.4260', '265.5495', '2509.6118', 174, 25138, '2260.3994', '-1136.0460', '1050.6328', 10, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Chambre 05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11891, 0, 0, 100, 0, '2535.4138', '265.4460', '2509.6118', 174, 25138, '222.8826', '1287.2272', '1082.1406', 1, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Chambre 06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11892, 0, 0, 100, 0, '2536.4326', '267.7928', '2509.6118', 174, 25138, '223.0821', '1287.3656', '1082.1406', 1, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Chambre 07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11897, 0, 0, 0, 0, '2454.9155', '-1707.6624', '13.6208', 0, 0, '-136.1843', '1050.0137', '2736.9688', 13, 0, 3, 5, 0, 0, 0, 0, 0, 0, 'Portet', 201, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11930, 0, 0, 70, 0, '1278.9562', '1274.7440', '2107.7500', 14, 15274573, '244.0977', '304.6065', '999.1484', 1, 0, 1, 5, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11898, 0, 0, 0, 0, '2384.6665', '-1675.8367', '15.2456', 0, 0, '-1381.4392', '1187.3422', '2501.0820', 107, 0, 2, 5, 0, 0, 0, 0, 7, 8, '345', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 350, 0, 0, 0, 0, 0, 0, 0, 1484835394, 0, 0),
(11899, 0, 0, 0, 0, '705.7145', '-26.1823', '2419.1218', 146, 25114, '-1629.2275', '2167.0906', '2471.7180', 104, 1, 2, 5, 0, 0, 0, 0, 0, 0, 'lefa', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 909, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11941, 0, 0, 0, 0, '2097.2399', '-1196.0212', '23.8603', 0, 0, '245.2307', '304.7632', '999.1484', 1, 0, 2, 5, 0, 0, 0, 0, 0, 0, '455, Pasadena Blvd', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11900, 0, 0, 0, 0, '2741.3437', '-1755.8748', '44.0082', 0, 0, '1026.4307', '2599.3225', '2555.8679', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'test actor', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11901, 0, 0, 0, 0, '2741.8139', '-1760.1250', '44.0456', 0, 0, '1026.4524', '2599.1157', '2555.8682', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, 'actors test2', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11903, 0, 0, 0, 0, '2179.3471', '-2249.4758', '20.6746', 0, 0, '1026.6575', '2598.9919', '2555.8684', 13, 0, 3, 5, 0, 0, 0, 0, 0, 0, 'Porte louche', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11904, 0, 0, 0, 0, '1407.7189', '-1303.7661', '9.0552', 0, 0, '1026.9556', '2599.5095', '2555.8672', 13, 0, 3, 5, 0, 0, 0, 0, 0, 0, 'Egouts', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11910, 0, 0, 0, 0, '2067.7041', '-1628.8724', '14.2066', 0, 0, '261.0510', '1284.5541', '2080.2578', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '446, Cross Street', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 95, 189, 0, 0, 0, 0, 0, 0, 0, 0, 1484835394, 1484835394, 0, 0, 0),
(11906, 0, 0, 0, 0, '2092.2431', '-1166.4443', '26.5859', 0, 0, '261.0369', '1284.9788', '2080.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '48', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11931, 0, 0, 70, 0, '1282.5028', '1281.8245', '2111.2509', 14, 15274573, '244.0977', '304.6065', '999.1484', 1, 0, 1, 5, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11911, 0, 0, 70, 0, '1282.5024', '1281.8804', '2111.2509', 14, 15526302, '1843.6993', '-2361.3628', '2486.6169', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11909, 0, 0, 0, 0, '2442.3369', '-1741.9818', '13.7509', 0, 0, '260.7776', '1237.6921', '2084.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Glucksmann\'s Laundromat', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 355, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11912, 0, 0, 70, 0, '1278.0554', '1281.8065', '2111.2468', 14, 15526302, '1843.6993', '-2361.3628', '2486.6169', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11913, 0, 0, 70, 0, '1278.0561', '1273.4721', '2114.7600', 14, 15526302, '1843.6993', '-2361.3628', '2486.6169', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11914, 0, 0, 70, 0, '1282.4986', '1273.3565', '2114.7600', 14, 15526302, '1843.6993', '-2361.3628', '2486.6169', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11915, 0, 0, 70, 0, '1282.4907', '1281.9776', '2118.2438', 14, 15526302, '1843.6993', '-2361.3628', '2486.6169', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11916, 0, 0, 70, 0, '1278.0563', '1281.9766', '2118.2438', 14, 15526302, '2191.4724', '-1666.2843', '2501.0869', 14, 0, 1, 5, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11917, 0, 0, 70, 0, '1278.0551', '1273.4226', '2121.7399', 14, 15526302, '2191.4724', '-1666.2843', '2501.0869', 14, 0, 1, 5, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11918, 0, 0, 70, 0, '1282.5017', '1273.3239', '2121.7390', 14, 15526302, '2191.4724', '-1666.2843', '2501.0869', 14, 0, 1, 5, 0, 0, 0, 0, 0, 0, '08', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11919, 0, 0, 70, 0, '1282.5030', '1281.9002', '2125.2329', 14, 15526302, '2191.4724', '-1666.2843', '2501.0869', 14, 0, 1, 5, 0, 0, 0, 0, 0, 0, '09', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11920, 0, 0, 70, 0, '1278.0552', '1281.9439', '2125.2290', 14, 15526302, '2191.4724', '-1666.2843', '2501.0869', 14, 0, 1, 5, 0, 0, 0, 0, 0, 0, '10', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11921, 0, 0, 70, 0, '1278.0559', '1281.9067', '2111.2468', 14, 14379747, '2624.5095', '-2717.6118', '2197.6729', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11922, 0, 0, 70, 0, '1278.0595', '1273.5347', '2114.7600', 14, 14379747, '2624.5095', '-2717.6118', '2197.6729', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11923, 0, 0, 70, 0, '1282.4997', '1273.4012', '2114.7600', 14, 14379747, '2624.5095', '-2717.6118', '2197.6729', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11924, 0, 0, 70, 0, '1282.4927', '1281.9150', '2118.2438', 14, 14379747, '2624.5095', '-2717.6118', '2197.6729', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11925, 0, 0, 70, 0, '1278.0600', '1281.8629', '2118.2438', 14, 14379747, '2624.5095', '-2717.6118', '2197.6729', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11926, 0, 0, 70, 0, '1278.0554', '1273.4177', '2121.7399', 14, 14379747, '2624.5095', '-2717.6118', '2197.6729', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11927, 0, 0, 70, 0, '1282.5028', '1273.3824', '2121.7390', 14, 14379747, '2259.8401', '-1136.8220', '1050.6328', 10, 0, 1, 5, 0, 0, 0, 0, 0, 0, '08', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1484835394, 0, 0, 0, 0),
(11928, 0, 0, 70, 0, '1282.5028', '1281.9074', '2125.2329', 14, 14379747, '2259.8401', '-1136.8220', '1050.6328', 10, 0, 1, 5, 0, 0, 0, 0, 0, 0, '09', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11929, 0, 0, 70, 0, '1278.0557', '1281.9454', '2125.2290', 14, 14379747, '2259.8401', '-1136.8220', '1050.6328', 10, 0, 1, 5, 0, 0, 0, 0, 0, 0, '10', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11944, 0, 0, 0, 0, '2241.8061', '-1882.7918', '14.2343', 0, 0, '-2943.6030', '1003.8464', '2023.3230', 106, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Authentic', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11932, 0, 0, 70, 0, '1278.0706', '1281.7824', '2111.2468', 14, 15274573, '244.0977', '304.6065', '999.1484', 1, 0, 1, 5, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11933, 0, 0, 70, 0, '1278.0556', '1273.3880', '2114.7600', 14, 15274573, '2233.5710', '-1114.9199', '1050.8828', 5, 0, 1, 5, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11934, 0, 0, 70, 0, '1282.5015', '1273.4108', '2114.7600', 14, 15274573, '2233.5710', '-1114.9199', '1050.8828', 5, 0, 1, 5, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11935, 0, 0, 70, 0, '1282.4925', '1281.9360', '2118.2438', 14, 15274573, '2233.5710', '-1114.9199', '1050.8828', 5, 0, 1, 5, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11936, 0, 0, 70, 0, '1278.1752', '1281.8688', '2118.2438', 14, 15274573, '2259.7969', '-1136.5085', '1050.6328', 10, 0, 1, 5, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11937, 0, 0, 70, 0, '1278.0549', '1273.4467', '2121.7399', 14, 15274573, '2259.7969', '-1136.5085', '1050.6328', 10, 0, 1, 5, 0, 0, 0, 0, 0, 0, '08', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11938, 0, 0, 70, 0, '1282.4982', '1273.5093', '2121.7390', 14, 15274573, '2259.7969', '-1136.5085', '1050.6328', 10, 0, 1, 5, 0, 0, 0, 0, 0, 0, '09', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11939, 0, 0, 70, 0, '1282.5019', '1281.9114', '2125.2329', 14, 15274573, '2217.8396', '-1076.0967', '1050.4844', 1, 0, 1, 5, 0, 0, 0, 0, 0, 0, '10', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11940, 0, 0, 70, 0, '1278.0567', '1281.8775', '2125.2290', 14, 15274573, '2217.8396', '-1076.0967', '1050.4844', 1, 0, 1, 5, 0, 0, 0, 0, 0, 0, '11', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11942, 0, 0, 0, 0, '854.6164', '-605.2035', '18.4218', 0, 0, '-624.9643', '2039.6866', '2260.2019', 193, 1, 2, 5, 0, 0, 0, 0, 0, 0, 'XV', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11943, 0, 0, 0, 0, '2391.1066', '-1633.6551', '13.9050', 0, 0, '760.9682', '718.4728', '3501.0859', 16, 0, 3, 5, 0, 0, 0, 0, 0, 0, 'Local', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11952, 0, 0, 0, 0, '-396.2793', '-425.0856', '16.2593', 0, 11948, '-42.9201', '1405.6678', '2084.4297', 13, 0, 2, 5, 0, 0, 0, 45000, 0, 0, '1st - Red Country', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1223, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11945, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TEST', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11946, 0, 0, 0, 0, '122.9956', '1783.3355', '2317.6044', 118, 25103, '1600.5858', '1501.2938', '2421.4519', 176, 1, 2, 5, 0, 0, 0, 0, 0, 0, 'Employés seulement', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11947, 0, 0, 0, 0, '1044.3166', '-1275.1917', '13.7768', 0, 0, '2237.4285', '-1089.7319', '2049.0234', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '56', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 778, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11962, 0, 0, 0, 0, '2148.2861', '-1267.3220', '23.9933', 0, 0, '2763.0933', '408.0733', '2501.0869', 179, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Jefferson Street - N°29', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11954, 0, 0, 0, 0, '2521.0849', '-1714.7031', '13.5664', 0, 11948, '2237.3774', '-1089.7784', '2049.0234', 13, 0, 2, 5, 0, 0, 0, 20000, 0, 0, 'Ganton Street - N°20', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11955, 0, 0, 0, 0, '1952.0067', '-2003.9617', '13.5468', 0, 0, '2237.7075', '-1089.9418', '2049.0234', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'El Corona, 525.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11959, 0, 0, 0, 0, '-396.2719', '-425.0859', '16.2593', 0, 0, '-42.7428', '1405.7567', '2084.4297', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '24th Red County', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1223, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11960, 0, 0, 0, 0, '1699.7305', '-1538.3388', '13.9012', 0, 0, '826.4457', '-1098.1136', '2501.0918', 42, 1, 2, 5, 0, 0, 0, 0, 0, 0, '25, Little Italy.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3977, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11961, 0, 0, 0, 0, '2045.1679', '-965.7305', '44.5544', 0, 0, '23.9977', '1340.6367', '2084.3750', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '666 Little Haiti, Glenpark.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 912, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12035, 0, 0, 0, 0, '2015.3171', '-1732.5743', '14.2343', 0, 0, '318.8297', '1114.4835', '2083.8828', 13, 0, 2, 5, 0, 0, 0, 0, 14, 1, '168, Walnut St.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1015, 0, 0, 0, 0, 0, 1484835394, 0, 0, 0, 0),
(11963, 0, 0, 0, 0, '2670.2795', '-1238.0933', '55.7253', 0, 0, '243.8786', '304.5657', '999.1484', 1, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'HOUSE PNJ', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1488330270, 1, 0, 0, 0, 0, 0, 0, 0),
(11964, 0, 0, 0, 0, '2683.4392', '-1224.7554', '59.9320', 0, 0, '2234.1040', '-1114.9084', '1050.8828', 5, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'HOUSE PNJ', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1488330330, 1, 0, 0, 0, 0, 0, 0, 0),
(11965, 0, 0, 0, 0, '2683.4309', '-1207.5866', '65.0959', 0, 0, '223.7016', '1287.4550', '1082.1328', 1, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'HOUSE PNJ', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1488330391, 1, 0, 0, 0, 0, 0, 0, 0),
(11966, 0, 0, 0, 0, '1196.5101', '-1017.1870', '32.5468', 0, 0, '2259.7878', '-1136.6422', '1050.6328', 10, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'HOUSE PNJ', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1488330632, 1, 0, 0, 0, 0, 0, 0, 0),
(11967, 0, 0, 0, 0, '1141.8067', '-1069.8646', '31.7656', 0, 0, '2324.2412', '-1149.4559', '2050.7100', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'HOUSE PNJ', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1488330700, 1, 0, 0, 0, 0, 0, 0, 0),
(11968, 0, 0, 0, 0, '1029.3654', '2005.6796', '11.4609', 0, 0, '2233.5103', '-1114.9365', '1050.8828', 5, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'HOUSE PNJ', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1488287957, 1, 0, 0, 0, 0, 0, 0, 0),
(11969, 0, 0, 0, 0, '1030.8092', '2028.0523', '11.4682', 0, 0, '2259.7490', '-1136.2877', '1050.6328', 10, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'HOUSE PNJ', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1488288032, 1, 0, 0, 0, 0, 0, 0, 0),
(11970, 0, 0, 0, 0, '1596.4100', '2093.7128', '11.3125', 0, 0, '-42.6968', '1405.6062', '2084.4297', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'HOUSE PNJ', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1488288196, 1, 0, 0, 0, 0, 0, 0, 0),
(11971, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'HOUSE PNJ', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11972, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'HOUSE PNJ', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11973, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'HOUSE PNJ', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11974, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'HOUSE PNJ', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11975, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'HOUSE PNJ', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11976, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'HOUSE PNJ', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11977, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'HOUSE PNJ', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11978, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'HOUSE PNJ', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11979, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'HOUSE PNJ', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11981, 0, 0, 0, 0, '1142.1208', '-1092.8612', '28.1875', 0, 0, '234.4208', '1104.8586', '2080.9946', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'HOUSE PNJ', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1488330778, 1, 0, 0, 0, 0, 0, 0, 0),
(11982, 0, 0, 0, 0, '841.3179', '-1471.3583', '14.3143', 0, 0, '2237.7375', '-1089.8706', '2049.0234', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'HOUSE PNJ', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1488330872, 1, 0, 0, 0, 0, 0, 0, 0),
(11983, 0, 0, 0, 0, '1233.9191', '-1009.9627', '32.6015', 0, 0, '234.7835', '1104.8383', '2080.9946', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'HOUSE PNJ', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1488330554, 1, 0, 0, 0, 0, 0, 0, 0),
(11984, 0, 0, 0, 0, '1246.2197', '-909.0701', '42.8828', 0, 0, '24.1504', '1340.1631', '2084.3750', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'HOUSE PNJ', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1488290303, 1, 0, 0, 0, 0, 0, 0, 0),
(11985, 0, 0, 0, 0, '662.4313', '-1466.7459', '14.8515', 0, 0, '222.8818', '1287.5212', '1082.1406', 1, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'HOUSE PNJ', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1488287048, 1, 0, 0, 0, 0, 0, 0, 0),
(11986, 0, 0, 0, 0, '976.6083', '-1070.6574', '27.0659', 0, 0, '226.6908', '1239.7721', '2082.1406', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'HOUSE PNJ', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1488361623, 1, 0, 0, 0, 0, 0, 0, 0),
(11987, 0, 0, 0, 0, '910.3678', '-1802.4038', '13.7868', 0, 0, '234.3417', '1104.5651', '2080.9932', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'HOUSE PNJ', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1488361213, 1, 0, 0, 0, 0, 0, 0, 0),
(11988, 0, 0, 0, 0, '662.4315', '-1440.3051', '14.8515', 0, 0, '260.9894', '1284.5056', '2080.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'HOUSE PNJ', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1488286979, 1, 0, 0, 0, 0, 0, 0, 0),
(11989, 0, 0, 0, 0, '1320.2390', '-1075.2047', '29.1796', 0, 0, '226.5895', '1240.0154', '2082.1406', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'HOUSE PNJ', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11990, 0, 0, 0, 0, '1068.4223', '-1081.3582', '27.5381', 0, 0, '225.8035', '1239.9114', '2082.1406', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'HOUSE PNJ', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11991, 0, 0, 0, 0, '207.0757', '-112.4009', '4.8964', 0, 0, '260.9601', '1284.3832', '2080.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'HOUSE PNJ', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1488287310, 1, 0, 0, 0, 0, 0, 0, 0),
(11992, 0, 0, 0, 0, '1428.5019', '356.4876', '18.8750', 0, 0, '2259.6272', '-1135.9139', '1050.6328', 10, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'HOUSEPNJ', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1488287537, 1, 0, 0, 0, 0, 0, 0, 0),
(11993, 0, 0, 0, 0, '-260.2402', '1120.0684', '20.9398', 0, 0, '223.0821', '1287.3656', '1082.1406', 1, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'HOUSE PNJ', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1488287761, 1, 0, 0, 0, 0, 0, 0, 0),
(11994, 0, 0, 0, 0, '-800.2891', '1596.6705', '27.0699', 0, 0, '226.2700', '1239.7976', '2082.1406', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'HOUSE PNJ', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1488289223, 1, 0, 0, 0, 0, 0, 0, 0),
(11995, 0, 0, 0, 0, '-1305.1771', '2491.8073', '87.1412', 0, 0, '225.8025', '1239.9309', '2082.1406', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'HOUSE PNJ', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1488288510, 1, 0, 0, 0, 0, 0, 0, 0),
(11996, 0, 0, 0, 0, '-2446.8918', '2512.2429', '15.7003', 0, 0, '260.8974', '1284.3302', '2080.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'HOUSEPNJ', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1488288813, 1, 0, 0, 0, 0, 0, 0, 0),
(11997, 0, 0, 0, 0, '-2622.1474', '71.7366', '4.3359', 0, 0, '260.7761', '1284.3717', '2080.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'HOUSE PNJ', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1488289657, 1, 0, 0, 0, 0, 0, 0, 0),
(11998, 0, 0, 0, 0, '-2161.4187', '-2535.5783', '31.8162', 0, 0, '226.6624', '1239.8374', '2082.1406', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'HOUSE PNJ', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1488289925, 1, 0, 0, 0, 0, 0, 0, 0),
(12062, 0, 0, 0, 0, '2490.9409', '-2468.4882', '17.8828', 0, 0, '799.9191', '1873.2852', '5999.7822', 13, 1, 3, 0, 0, 0, 0, 0, 0, 0, 'Entrepôt', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3585, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11999, 0, 0, 70, 0, '239.7621', '1737.7868', '3001.0053', 22, 14721209, '2191.4697', '-1666.6272', '2501.0869', 14, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12000, 0, 0, 70, 0, '-160.9763', '2443.9191', '3001.0878', 14, 10341119, '1843.5458', '-2361.3979', '2486.6169', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12001, 0, 0, 70, 0, '-152.3943', '2441.8776', '3001.0878', 14, 10341119, '1843.5458', '-2361.3979', '2486.6169', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12002, 0, 0, 70, 0, '-152.3683', '2436.0771', '3001.0878', 14, 10341119, '1843.5458', '-2361.3979', '2486.6169', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12003, 0, 0, 70, 0, '-153.6490', '2433.8862', '3001.0859', 14, 10341119, '2191.8137', '-1665.9933', '2501.0869', 14, 0, 1, 5, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12004, 0, 0, 70, 0, '-160.9907', '2437.2053', '3001.0878', 14, 10341119, '2191.8137', '-1665.9933', '2501.0869', 14, 0, 1, 5, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12005, 0, 0, 70, 0, '-152.7679', '2435.8681', '3004.6738', 14, 10341119, '2191.8137', '-1665.9933', '2501.0869', 14, 0, 1, 5, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12006, 0, 0, 70, 0, '-152.7648', '2443.7023', '3004.6738', 14, 10341119, '2191.8137', '-1665.9933', '2501.0869', 14, 0, 1, 5, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12007, 0, 0, 70, 0, '-160.8900', '2444.0761', '3004.6738', 14, 10341119, '222.6251', '1287.4545', '1082.1406', 1, 0, 1, 5, 0, 0, 0, 0, 0, 0, '08', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12008, 0, 0, 70, 0, '-160.9915', '2437.4184', '3004.6738', 14, 10341119, '222.6251', '1287.4545', '1082.1406', 1, 0, 1, 5, 0, 0, 0, 0, 0, 0, '09', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12009, 0, 0, 0, 0, '2516.5493', '-1972.9249', '16.4105', 0, 0, '760.6319', '718.7859', '3501.0859', 16, 0, 3, 5, 0, 0, 0, 0, 0, 0, 'Garage', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12078, 0, 0, 70, 0, '1037.4957', '1043.3552', '2340.2229', 187, 25163, '184.8089', '1787.4542', '2317.6199', 190, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'Chambre 103', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12063, 0, 0, 0, 0, '2024.4969', '-1728.3316', '13.5468', 0, 0, '-68.7838', '1351.1971', '2080.2109', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '745, Avalon Avenuet', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2824, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12010, 0, 0, 70, 0, '962.2653', '1381.9172', '2498.0629', 21, 15167155, '1843.3356', '-2361.1582', '2486.6169', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12011, 0, 0, 70, 0, '962.2662', '1371.6042', '2498.0629', 21, 15167155, '1843.3356', '-2361.1582', '2486.6169', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12012, 0, 0, 70, 0, '956.1935', '1371.1901', '2498.0629', 21, 15167155, '1843.3356', '-2361.1582', '2486.6169', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12013, 0, 0, 70, 0, '956.1947', '1375.2377', '2498.0629', 21, 15167155, '2191.3279', '-1666.1439', '2501.0869', 14, 0, 1, 5, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12014, 0, 0, 70, 0, '956.1937', '1378.8492', '2498.0629', 21, 15167155, '2191.3279', '-1666.1439', '2501.0869', 14, 0, 1, 5, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12015, 0, 0, 70, 0, '956.1941', '1382.2507', '2498.0629', 21, 15167155, '2191.3279', '-1666.1439', '2501.0869', 14, 0, 1, 5, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12016, 0, 0, 90, 0, '166.5965', '121.8884', '7603.2109', 11, 15515416, '2178.5610', '-667.3822', '441.8998', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12017, 0, 0, 90, 0, '168.4475', '118.2486', '7603.2036', 11, 15515416, '2178.5610', '-667.3822', '441.8998', 13, 0, 1, 5, 0, 1495480840, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12018, 0, 0, 90, 0, '168.4813', '112.6708', '7603.2109', 11, 15515416, '2178.5610', '-667.3822', '441.8998', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12019, 0, 0, 90, 0, '170.8565', '114.8982', '7603.2109', 11, 15515416, '2178.5610', '-667.3822', '441.8998', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12020, 0, 0, 90, 0, '175.3587', '114.8947', '7603.2109', 11, 15515416, '2624.5847', '-2717.6667', '2197.6729', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12021, 0, 0, 90, 0, '173.4165', '107.9237', '7603.2109', 11, 15515416, '2624.5847', '-2717.6667', '2197.6729', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12022, 0, 0, 90, 0, '170.3013', '106.3900', '7603.2109', 11, 15515416, '2624.5847', '-2717.6667', '2197.6729', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12023, 0, 0, 90, 0, '167.8622', '109.1943', '7603.2109', 11, 15515416, '2624.5847', '-2717.6667', '2197.6729', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '08', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12024, 0, 0, 90, 0, '164.0524', '106.3805', '7603.2109', 11, 15515416, '2624.5847', '-2717.6667', '2197.6729', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '09', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12025, 0, 0, 90, 0, '161.6913', '109.1913', '7603.2109', 11, 15515416, '722.1224', '-1428.5441', '1201.3190', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '10', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12026, 0, 0, 90, 0, '157.7258', '106.4068', '7603.2109', 11, 15515416, '722.1224', '-1428.5441', '1201.3190', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '11', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12027, 0, 0, 90, 0, '155.8452', '109.0202', '7603.2109', 11, 15515416, '722.1224', '-1428.5441', '1201.3190', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '12', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12028, 0, 0, 90, 0, '162.4814', '114.8298', '7603.2036', 11, 15515416, '2618.4675', '-1816.1227', '616.5299', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '13', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12029, 0, 0, 90, 0, '162.6160', '112.6683', '7603.2109', 11, 15515416, '2618.4675', '-1816.1227', '616.5299', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '14', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12064, 0, 0, 0, 0, '2412.4519', '-2569.9274', '14.2130', 0, 0, '799.9391', '1873.2404', '5999.7822', 13, 1, 3, 0, 0, 0, 0, 0, 0, 0, 'Warehouse', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2673, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12047, 0, 0, 70, 0, '1282.5007', '1281.8110', '2111.2509', 14, 14665659, '2191.5657', '-1666.2229', '2501.0869', 14, 0, 1, 5, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12033, 0, 0, 0, 0, '559.2144', '-1076.3565', '72.9219', 0, 0, '2324.2944', '-1149.4441', '2050.7100', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '24th Avenue Kennedy Richman', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1223, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12030, 0, 0, 0, 0, '416.7087', '-1154.0828', '76.6876', 0, 0, '234.1145', '1063.7212', '2084.2122', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '25, Richman.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1064, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12031, 0, 0, 0, 0, '1692.6501', '-1458.6982', '13.6718', 0, 0, '1026.8339', '2599.4189', '2555.8674', 13, 0, 3, 5, 0, 0, 0, 0, 0, 0, 'Local', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12034, 0, 0, 0, 0, '142.6494', '-1470.3887', '25.2109', 0, 0, '2324.5701', '-1149.5377', '2050.7100', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '4 Laurel Canyon Rd', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3585, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12036, 0, 0, 70, 0, '1282.5030', '1281.8115', '2111.2509', 14, 18368876, '2259.7097', '-1135.9730', '1050.6328', 10, 0, 1, 5, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12037, 0, 0, 70, 0, '1278.0593', '1281.8670', '2111.2468', 14, 18368876, '2259.7097', '-1135.9730', '1050.6328', 10, 0, 1, 5, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12038, 0, 0, 70, 0, '1278.0552', '1273.4016', '2114.7600', 14, 18368876, '2259.7097', '-1135.9730', '1050.6328', 10, 0, 1, 5, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12039, 0, 0, 70, 0, '1282.5030', '1273.5104', '2114.7600', 14, 18368876, '2259.7097', '-1135.9730', '1050.6328', 10, 0, 1, 5, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12040, 0, 0, 70, 0, '1282.4927', '1281.8837', '2118.2438', 14, 18368876, '2259.7097', '-1135.9730', '1050.6328', 10, 0, 1, 5, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12041, 0, 0, 70, 0, '1278.0581', '1281.8686', '2118.2438', 14, 18368876, '1843.3442', '-2361.1663', '2486.6169', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12042, 0, 0, 70, 0, '1278.0583', '1273.3533', '2121.7399', 14, 18368876, '1843.3442', '-2361.1663', '2486.6169', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12043, 0, 0, 70, 0, '1282.4984', '1273.4577', '2121.7390', 14, 18368876, '1843.3442', '-2361.1663', '2486.6169', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '08', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12044, 0, 0, 70, 0, '1282.5023', '1281.9510', '2125.2329', 14, 18368876, '1843.3442', '-2361.1663', '2486.6169', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '09', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12045, 0, 0, 70, 0, '1278.0549', '1281.8332', '2125.2290', 14, 18368876, '1843.3442', '-2361.1663', '2486.6169', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '10', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12046, 0, 0, 0, 0, '700.3022', '-1060.2581', '49.4216', 0, 0, '234.4171', '1063.8337', '2084.2122', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '150, Richman.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1042, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12048, 0, 0, 70, 0, '1278.0552', '1281.7821', '2111.2468', 14, 14665659, '2191.5657', '-1666.2229', '2501.0869', 14, 0, 1, 5, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12049, 0, 0, 70, 0, '1278.0551', '1273.3868', '2114.7600', 14, 14665659, '2191.5657', '-1666.2229', '2501.0869', 14, 0, 1, 5, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12050, 0, 0, 70, 0, '1282.5020', '1273.4428', '2114.7600', 14, 14665659, '2191.5657', '-1666.2229', '2501.0869', 14, 0, 1, 5, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12051, 0, 0, 70, 0, '1282.4913', '1281.8992', '2118.2438', 14, 14665659, '2623.8679', '-2717.3584', '2197.6729', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12052, 0, 0, 70, 0, '1278.0568', '1281.8778', '2118.2438', 14, 14665659, '2623.8679', '-2717.3584', '2197.6729', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12053, 0, 0, 70, 0, '1278.0551', '1273.4422', '2121.7399', 14, 14665659, '2623.8679', '-2717.3584', '2197.6729', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12054, 0, 0, 70, 0, '1282.4935', '1273.4870', '2121.7390', 14, 14665659, '2623.8679', '-2717.3584', '2197.6729', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '08', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `houses` (`Hid`, `Owner`, `Renter`, `RentPrice`, `Caisse`, `OutX`, `OutY`, `OutZ`, `OutInt`, `OutWorld`, `InX`, `InY`, `InZ`, `InInt`, `Open`, `Type`, `MaxInvits`, `Trash`, `Removing`, `RemovPlayer`, `Price`, `Frigo`, `Poub`, `Title`, `Kit`, `Grammes`, `TimeCanna`, `Meth`, `TimeMeth`, `Matos`, `Essence`, `Kit1`, `Kit2`, `Kit3`, `Kit4`, `Kit5`, `Kit6`, `Kit7`, `Kit8`, `Kit9`, `Kit10`, `Kit11`, `Kit12`, `Kit13`, `Kit14`, `Kit15`, `Kit16`, `Kit17`, `Kit18`, `Kit19`, `Kit20`, `Kit21`, `Kit22`, `Kit23`, `Kit24`, `Kit25`, `Kit26`, `Kit27`, `Kit28`, `Kit29`, `Kit30`, `gMeth`, `gCoke`, `gHero`, `gStero`, `gCanna`, `Autoriz`, `PlacementActor`, `LastBraquo`, `Braquable`, `Contrebande`, `TDrugCanna`, `TDrugCoke`, `TDrugHero`, `TDrugMeth`, `TDrugStero`, `CoffreFurn`) VALUES
(12055, 0, 0, 70, 0, '1282.5029', '1281.8609', '2125.2329', 14, 14665659, '2623.8679', '-2717.3584', '2197.6729', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '09', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12058, 0, 0, 0, 0, '1707.1641', '-1512.9643', '17.8782', 0, 0, '-42.7723', '1405.9828', '2084.4297', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '309, Central Avenue.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2276, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12059, 0, 0, 0, 0, '835.9687', '-894.8674', '68.7688', 0, 0, '140.2023', '1366.0837', '2083.8594', 13, 0, 2, 5, 0, 0, 0, 0, 15, 0, '250, Richman.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49, 4709, 0, 0, 0, 0, 1484835394, 0, 0, 0, 0, 0),
(12207, 0, 0, 0, 0, '2246.2619', '-2078.6467', '13.5468', 0, 0, '754.9880', '68.9097', '3000.9219', 13, 1, 3, 0, 0, 0, 0, 0, 0, 0, 'Garage', 303, 0, 0, 0, 0, 440, '5785.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2348, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12171, 0, 0, 0, 0, '211.6875', '-1239.0313', '78.3492', 0, 0, '298.1506', '1260.4530', '3000.9773', 246, 0, 2, 5, 0, 0, 0, 0, 0, 0, '5547, Richman', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2694, 0, 0, 0, 0, 1484835394, 1484835394, 0, 0, 1484835394, 0),
(12276, 0, 0, 0, 0, '1230.4150', '769.7971', '1998.1359', 35, 11412, '-33.7140', '1335.3684', '2001.0649', 238, 1, 2, 5, 0, 0, 0, 0, 0, 0, 'Local', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12113, 0, 0, 0, 0, '879.9675', '-1424.3990', '14.4883', 0, 0, '234.3938', '1104.7006', '2080.9939', 13, 0, 2, 5, 0, 0, 0, 0, 11, 4, '55.', 0, 0, 0, 0, 0, 0, '0.0000', 25, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1339, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12366, 0, 0, 0, 0, '2755.1162', '-2382.2683', '13.6328', 0, 0, '2530.0903', '-1294.1610', '1031.4219', 2, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'R.L. Haul Warehouse', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12352, 0, 0, 0, 0, '2259.1635', '-1394.1594', '24.2027', 0, 0, '261.0973', '1284.3524', '2080.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '2351, Congress Street', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12129, 0, 0, 0, 0, '2065.3664', '-1703.6074', '14.1484', 0, 0, '-202.7690', '691.2885', '1930.4860', 221, 0, 2, 5, 0, 0, 0, 0, 0, 0, '302, Cross Street.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3376, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12105, 0, 0, 0, 0, '2531.0522', '-1228.6149', '43.7218', 0, 0, '2495.9773', '-1692.0867', '1014.7422', 3, 0, 2, 5, 0, 0, 0, 0, 0, 0, '225th - Las Collinas', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 3916, 0, 0, 0, 0, 1484835394, 0, 0, 0, 0, 0),
(12360, 0, 0, 0, 0, '2330.2238', '-2315.3176', '13.5468', 0, 0, '1085.8097', '1313.1420', '2106.8208', 11, 1, 3, 0, 0, 0, 0, 0, 0, 0, 'Maccan\'s Haberdashery', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2824, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12109, 0, 0, 0, 0, '470.7955', '-1163.5545', '67.2179', 0, 0, '234.6345', '1104.5221', '2080.9929', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '256, Richman', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3515, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12137, 0, 0, 0, 0, '2674.8486', '961.0322', '3001.0859', 10, 101, '1234.8468', '2824.4790', '2240.8401', 206, 1, 2, 5, 0, 0, 0, 0, 0, 0, 'Detective Bureau', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12089, 0, 0, 0, 0, '823.9642', '-1588.2354', '13.5435', 0, 0, '1250.5803', '-1609.5752', '2501.0859', 102, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Barber', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 363, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12117, 0, 0, 0, 0, '-533.5483', '-64.8874', '62.9868', 0, 0, '1719.9977', '-893.8629', '8001.0859', 2, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Grange', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12067, 0, 0, 0, 0, '-253.1502', '1118.9014', '20.9398', 0, 0, '-136.1843', '1050.0137', '2736.9688', 13, 0, 3, 5, 0, 0, 0, 0, 0, 0, 'Maison', 201, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12134, 0, 0, 0, 0, '2625.9323', '-1098.7041', '69.3613', 0, 0, '1250.8712', '-1609.5084', '2501.0859', 102, 0, 2, 10, 0, 0, 0, 0, 0, 0, '33', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12135, 0, 0, 0, 0, '2321.2368', '-2006.1669', '13.5441', 0, 0, '800.0130', '1873.4799', '5999.7822', 13, 0, 3, 5, 0, 0, 0, 0, 0, 0, 'Local', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12368, 0, 0, 0, 0, '2770.6718', '-1628.7231', '12.1774', 0, 0, '2807.5063', '-1174.7555', '1025.5703', 8, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Local', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 393, 100, 0, 37, 3916, 0, 0, 0, 0, 1484835394, 1484835394, 1484835394, 0, 0, 0),
(12114, 0, 0, 0, 0, '2782.1538', '-1281.1901', '44.3723', 0, 0, '2324.3823', '-1149.4254', '2050.7100', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '245, Los Flores', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2435, 0, 0, 0, 0, 1484835394, 1484835394, 0, 1484835394, 0, 0),
(12209, 0, 0, 0, 0, '2519.0251', '-1112.9296', '56.5925', 0, 0, '24.0941', '1340.2482', '2084.3750', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '0155', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12133, 0, 0, 0, 0, '2308.5063', '-1637.3693', '14.8270', 0, 0, '-2943.6587', '1003.8693', '2023.3229', 106, 0, 2, 5, 0, 0, 0, 0, 0, 0, '126, Ganton Roccet', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12160, 0, 0, 50, 0, '1282.5015', '1281.8535', '2111.2509', 14, 12371314, '1843.4200', '-2361.3386', '2486.6169', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12085, 0, 0, 0, 0, '2180.5270', '-1514.3122', '23.9021', 0, 0, '-136.1843', '1050.0137', '2736.9688', 13, 0, 3, 5, 0, 0, 0, 0, 0, 0, 'Local', 201, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12068, 0, 0, 70, 0, '1040.8300', '1049.8519', '2340.2229', 187, 25163, '184.9745', '1787.4590', '2317.6199', 190, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'Chambre 101', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12070, 0, 0, 70, 0, '1040.8399', '1043.4128', '2340.2229', 187, 25163, '184.9779', '1787.3967', '2317.6199', 190, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'Chambre 104', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12122, 0, 0, 0, 0, '2510.5710', '-1132.6365', '41.6206', 0, 0, '260.6674', '1237.3877', '2084.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '245, Los Flores', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5478, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12182, 0, 0, 0, 0, '1390.2910', '233.6575', '1429.8264', 208, 11854, '1393.5647', '232.6943', '2429.8240', 213, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Porte', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4910, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12079, 0, 0, 0, 0, '171.7124', '1926.4384', '2050.8320', 10, 25165, '222.0050', '1140.3254', '2082.6094', 13, 1, 2, 1, 0, 0, 0, 0, 0, 0, 'Arrière boutique.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3644, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12077, 0, 0, 70, 0, '1037.4949', '1049.8651', '2340.2229', 187, 25163, '184.8089', '1787.4542', '2317.6199', 190, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'Chambre 102', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12084, 0, 0, 0, 0, '1789.2277', '-1385.2829', '15.7578', 0, 0, '234.2251', '1063.8588', '2084.2122', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '255, Jefferson.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4821, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12082, 0, 0, 0, 0, '1972.3514', '-1633.7077', '18.5689', 0, 0, '226.7480', '1239.8535', '2082.1406', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '005 Bloc B, Pat Nixon Gardens', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 715, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12140, 0, 0, 50, 0, '2686.4182', '-1470.4528', '30.5571', 0, 0, '-2158.7983', '642.8488', '1052.3750', 1, 0, 2, 5, 0, 0, 0, 0, 0, 0, '1058, Nth Flores', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2335, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12255, 0, 0, 0, 0, '2207.5292', '-1100.4082', '31.5546', 0, 1, '1250.4478', '-1609.5969', '2501.0859', 102, 0, 2, 5, 0, 0, 0, 1, 0, 0, '1456, Jefferson', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5266, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12083, 0, 0, 0, 0, '-2662.0168', '876.3307', '79.7737', 0, 0, '1260.9963', '-785.3018', '1091.9063', 5, 0, 2, 5, 0, 0, 0, 0, 0, 0, '255, San Fierro avenue.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 363, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12111, 0, 0, 0, 0, '1238.3485', '-715.9197', '1102.9750', 74, 25061, '1716.2072', '-879.9962', '8001.0859', 1, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Solomon\'s Gunshop', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12088, 0, 0, 0, 0, '1318.2163', '212.2846', '19.5546', 0, 0, '-1136.4281', '1117.7369', '2301.0859', 108, 1, 2, 5, 0, 0, 0, 0, 0, 0, 'Local', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 363, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12090, 0, 0, 0, 0, '850.5783', '-1587.3149', '13.5468', 0, 0, '-2943.9197', '1003.7251', '2023.3230', 106, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Toy Corner', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 363, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12307, 0, 0, 0, 0, '2190.3149', '-1487.6286', '26.1050', 0, 0, '260.9951', '1237.2465', '2084.2578', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '1345, Figueroa Street', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3644, 0, 0, 0, 0, 0, 1484835394, 0, 0, 1484835394, 0),
(12091, 0, 0, 0, 0, '1004.2311', '-1430.8430', '13.5468', 0, 0, '2541.5457', '-1303.9436', '1025.0703', 2, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Local', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2465, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12143, 0, 0, 0, 0, '1699.7607', '-1534.8974', '13.5342', 0, 0, '716.4462', '-243.0388', '3000.7710', 13, 1, 3, 0, 0, 0, 0, 0, 0, 0, 'Garage', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3977, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12146, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'test', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12124, 0, 0, 0, 0, '2146.7941', '-1470.4129', '26.0425', 0, 0, '83.0277', '1322.2872', '2083.8662', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '267, Grape Street.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 439, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12093, 0, 0, 150, 0, '1052.1040', '1038.0072', '2340.2229', 187, 25163, '261.6258', '1786.0284', '2118.5459', 191, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'Chambre 110', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12139, 0, 0, 0, 0, '925.6677', '2109.9387', '3514.5737', 71, 6, '1716.3628', '-880.0911', '8001.0859', 1, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Bureau 04: Adjoint au Pôle Social Lockhart', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12154, 0, 0, 0, 0, '794.9969', '-1691.7281', '14.4633', 0, 0, '233.9992', '1063.9954', '2084.2119', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Marina', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2759, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12351, 0, 0, 0, 0, '239.7619', '1743.9467', '3001.0000', 22, 11634178, '1718.4016', '-115.6821', '1502.0253', 26, 0, 2, 5, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12092, 0, 0, 0, 0, '2492.0275', '-1978.2641', '13.4333', 0, 11760, '1026.7390', '2599.7327', '2555.8669', 13, 0, 3, 5, 0, 0, 0, 2, 0, 0, 'Garage', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12142, 0, 0, 0, 0, '295.2594', '-1764.1197', '4.8701', 0, 0, '-1076.1448', '-1996.6661', '2007.0869', 105, 0, 2, 5, 0, 0, 0, 0, 14, 1, 'E745, Verona Beach Dr.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 2824, 0, 0, 0, 0, 1484835394, 0, 0, 0, 0, 0),
(12094, 0, 0, 150, 0, '1045.6401', '1038.0073', '2340.2229', 187, 25163, '261.6415', '1785.8556', '2118.5459', 191, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'Chambre 111', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12096, 0, 0, 150, 0, '1032.7504', '1038.0072', '2340.2229', 187, 25163, '261.6415', '1785.8556', '2118.5459', 191, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'Chambre 113', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12095, 0, 0, 150, 0, '1039.1065', '1038.0069', '2340.2229', 187, 25163, '261.6415', '1785.8556', '2118.5459', 191, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'Chambre 112', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12097, 0, 0, 150, 0, '1026.2792', '1038.0097', '2340.2229', 187, 25163, '261.6415', '1785.8556', '2118.5459', 191, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'Chambre 114', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12098, 0, 0, 200, 0, '1057.4299', '1039.1214', '2340.2229', 187, 25163, '478.2232', '832.8698', '1965.8949', 192, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'Chambre 105', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12099, 0, 0, 200, 0, '1056.2740', '1035.5866', '2340.2229', 187, 25163, '478.3096', '832.7189', '1965.8949', 192, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'Chambre 106', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12100, 0, 0, 200, 0, '1022.0274', '1035.5776', '2340.2229', 187, 25163, '478.2925', '832.9592', '1965.8949', 192, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'Chambre 107', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12101, 0, 0, 200, 0, '1020.9038', '1039.1297', '2340.2229', 187, 25163, '478.2251', '832.5744', '1965.8949', 192, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'Chambre 108', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12102, 0, 0, 0, 0, '1985.4411', '-1779.7916', '13.5500', 0, 0, '799.9503', '1873.2401', '5999.7822', 13, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'Local', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1015, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12190, 0, 0, 0, 0, '2013.5789', '-1656.3905', '14.1363', 0, 0, '226.7845', '1239.9692', '2082.1406', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '556, Idlewood.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1663, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12174, 0, 0, 0, 0, '972.3786', '1373.9191', '2494.5209', 21, 14599762, '-136.1843', '1050.0137', '2736.9688', 1, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'Local à poubelle', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1015, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12106, 0, 0, 0, 0, '2536.9814', '-1235.6148', '43.7218', 0, 0, '760.7591', '718.7891', '3501.0859', 16, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'Local à poubelle', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3916, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12107, 0, 0, 0, 0, '2529.5617', '-1243.3151', '43.9718', 0, 0, '800.0102', '1873.2368', '5999.7822', 13, 0, 3, 0, 0, 0, 0, 0, 0, 0, '226th Las Colinas', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3916, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12108, 0, 0, 0, 0, '2195.3723', '-1516.9517', '23.9399', 0, 0, '-1076.0488', '-1996.3529', '2007.0869', 105, 0, 2, 5, 0, 0, 0, 0, 0, 0, '245, Grape Street', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 9, 9, 5, 0, 126, 0, 0, 0, 0, 0, 1484835394, 1484835394, 1484835394, 1484835394, 0),
(12177, 0, 0, 100, 0, '791.4211', '-1753.2086', '13.4606', 0, 0, '2237.5532', '-1089.4290', '2049.0234', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '145, Marina St.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4568, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12316, 0, 0, 70, 0, '2796.9399', '-2152.6372', '2997.7946', 14, 15167356, '2191.4985', '-1666.1042', '2501.0869', 14, 0, 1, 5, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12157, 0, 0, 0, 0, '-51.5287', '2771.0981', '2083.2761', 209, 25199, '226.7864', '1239.9780', '2082.1406', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Vestiaire', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2348, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12264, 0, 0, 0, 0, '-2362.3640', '1232.8970', '2350.6098', 223, 25219, '-381.0436', '2232.2588', '2536.2239', 237, 1, 2, 10, 0, 0, 0, 0, 0, 0, 'Private', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12353, 0, 0, 0, 0, '315.3782', '-1515.0635', '24.9218', 0, 0, '2312.7729', '-1761.0763', '2024.3739', 50, 1, 2, 5, 0, 0, 0, 0, 0, 0, 'CLK Bureau', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4910, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12294, 0, 0, 0, 0, '306.6235', '1261.4903', '3000.9772', 246, 12171, '-73.2039', '974.5135', '3001.4023', 246, 1, 2, 5, 0, 0, 0, 0, 0, 0, '1er étage', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2694, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12123, 0, 0, 0, 0, '769.2286', '-1745.8996', '13.0772', 0, 0, '-991.7434', '50.3841', '2001.1068', 204, 0, 2, 5, 0, 0, 0, 0, 0, 0, '145, Marina', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2276, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12116, 0, 0, 0, 0, '2326.4096', '-1706.3293', '13.5468', 0, 0, '-1381.9203', '1187.3905', '2501.0820', 107, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Local', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3895, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12132, 0, 0, 0, 0, '1456.1318', '2773.3215', '10.8203', 0, 0, '2324.2295', '-1149.1174', '2050.7100', 13, 0, 2, 10, 0, 0, 0, 0, 0, 0, 'Villa', 0, 0, 0, 10, 1479936905, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12295, 0, 0, 0, 0, '2487.2922', '-1424.5772', '29.0162', 0, 0, '-136.1843', '1050.0137', '2736.9688', 1, 1, 3, 0, 0, 0, 0, 0, 0, 0, 'Appartement 1', 0, 200, 1481584871, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4981, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12136, 0, 0, 0, 0, '2486.3964', '1682.8629', '11.0234', 0, 0, '2233.6235', '-1115.1804', '1050.8828', 5, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'LV 64637', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12119, 0, 0, 0, 0, '-383.5070', '2239.2104', '2536.2338', 237, 12264, '-1136.4619', '1117.7871', '2301.0859', 108, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Chambre 3', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 9, 8, 0, 3557, 0, 0, 0, 0, 0, 1484835394, 1484835394, 0, 1484835394, 0),
(12120, 0, 0, 0, 0, '769.2283', '-1745.8939', '13.0772', 0, 11876, '234.5118', '1104.6517', '2080.9937', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '8794, Santa Marina', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2276, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12121, 0, 0, 0, 0, '2510.5712', '-1132.5651', '41.6206', 0, 11876, '260.8802', '1237.2781', '2084.2578', 13, 0, 2, 5, 0, 0, 0, 1, 0, 0, '145, Los Flores', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4940, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12125, 0, 0, 0, 0, '2256.1247', '-2003.6293', '13.5468', 0, 0, '-1381.8265', '1187.5649', '2501.0820', 107, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Sheely Town, 998', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2348, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12126, 0, 0, 0, 0, '2534.8481', '469.5003', '3322.5749', 21, 11952582, '1250.4500', '-1609.4850', '2501.0859', 102, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Appart 1', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2348, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12127, 0, 0, 0, 0, '952.4968', '-909.1128', '45.7656', 0, 0, '234.1889', '1063.8376', '2084.2122', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '345, Vinewood.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 2465, 0, 0, 0, 0, 0, 0, 0, 0, 1484835394, 0),
(12158, 0, 0, 0, 0, '264.7057', '1238.3530', '2084.2651', 13, 11871, '800.0744', '1873.2485', '5999.7822', 13, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'Local', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12130, 0, 0, 0, 0, '2457.0759', '-1102.4982', '43.8671', 0, 0, '261.3170', '1284.8411', '2080.2578', 13, 0, 2, 5, 0, 0, 0, 0, 7, 23, '403', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 42, 2335, 0, 0, 0, 0, 1484835394, 1484835394, 0, 0, 0, 0),
(12131, 0, 0, 0, 0, '2168.0258', '-1719.0493', '15.0742', 0, 0, '234.3875', '1063.8441', '2084.2122', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Damon\'House', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 497, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12297, 0, 0, 80, 0, '2783.9379', '-2148.9116', '3005.1127', 14, 15167356, '2259.3833', '-1135.8641', '1050.6403', 10, 0, 1, 1, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12144, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TEST', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12138, 0, 0, 0, 0, '1395.1929', '233.6285', '1426.6335', 208, 11854, '1026.1294', '2599.5117', '2555.8677', 13, 0, 3, 5, 0, 0, 0, 0, 0, 0, 'Pièce secrète', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12147, 0, 0, 0, 0, '2095.9553', '-1571.2869', '13.9175', 0, 0, '-136.1843', '1050.0137', '2736.9688', 1, 1, 3, 0, 0, 0, 0, 0, 0, 0, 'Planque', 201, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12173, 0, 0, 0, 0, '1984.4624', '-1761.9614', '13.5468', 0, 0, '-1136.4215', '1117.7363', '2301.0859', 108, 1, 2, 5, 0, 0, 0, 0, 0, 0, 'S Fightclub ', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 909, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12187, 0, 0, 0, 0, '304.9577', '-1347.0239', '53.4439', 0, 0, '799.9573', '1873.7318', '5999.7822', 13, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'Local', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12261, 0, 0, 0, 0, '1299.3168', '-788.1638', '2001.8491', 230, 11546, '1515.7301', '-580.2077', '2001.1324', 231, 1, 2, 10, 0, 0, 0, 0, 0, 0, '2ème partie', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12275, 0, 0, 0, 0, '901.6411', '-1514.6566', '14.3638', 0, 0, '1006.2014', '2432.8184', '2501.9260', 103, 0, 2, 5, 0, 0, 0, 0, 0, 0, '558, Marina', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4910, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12172, 0, 0, 0, 0, '1976.2139', '-1633.9616', '16.2110', 0, 0, '-2943.7419', '1003.5680', '2023.3230', 106, 0, 2, 5, 0, 0, 0, 0, 0, 0, '003 Bloc B, Pat Nixon Gardens', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46, 0, 0, 164, 909, 0, 0, 0, 0, 1484835394, 1484835394, 0, 0, 0, 0),
(12141, 0, 0, 0, 0, '724.7620', '-999.4087', '52.7343', 0, 0, '23.9434', '1340.1635', '2084.3750', 13, 0, 2, 5, 0, 0, 0, 0, 3, 12, '1071', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12318, 0, 0, 0, 0, '1936.5302', '-1809.0286', '13.5468', 0, 0, '2761.4709', '252.6514', '2320.3250', 250, 1, 2, 5, 0, 0, 0, 0, 0, 0, 'Bureaux', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3557, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12274, 0, 0, 0, 0, '867.4704', '-717.5690', '105.6796', 0, 0, '234.2298', '1063.7698', '2084.2122', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '555, Richman', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5017, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12176, 0, 0, 0, 0, '1374.9346', '469.2615', '20.1810', 0, 0, '-68.7380', '1351.2020', '2080.2109', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Local technique', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3895, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12331, 0, 0, 0, 0, '898.4135', '-1472.8273', '14.3414', 0, 0, '234.7022', '1105.5640', '2080.9983', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '558, Marina', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4712, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12155, 0, 0, 0, 0, '552.9705', '-1200.2684', '44.8315', 0, 0, '1873.9164', '-2140.3193', '2313.6008', 210, 0, 2, 5, 0, 0, 0, 0, 0, 0, '300, Richman', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12156, 0, 0, 0, 0, '1856.3936', '-2145.4238', '2313.5578', 210, 12155, '-901.4301', '-637.9507', '2263.9680', 211, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Etage inférieur', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12161, 0, 0, 50, 0, '1278.0571', '1281.9532', '2111.2468', 14, 12371314, '1843.4200', '-2361.3386', '2486.6169', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12162, 0, 0, 50, 0, '1278.0594', '1273.5156', '2114.7600', 14, 12371314, '1843.4200', '-2361.3386', '2486.6169', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12163, 0, 0, 50, 0, '1282.5021', '1273.4451', '2114.7600', 14, 12371314, '1843.4200', '-2361.3386', '2486.6169', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12164, 0, 0, 50, 0, '1282.4892', '1281.9672', '2118.2438', 14, 12371314, '2625.0623', '-2717.4189', '2197.6729', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12165, 0, 0, 50, 0, '1278.0562', '1281.7482', '2118.2438', 14, 12371314, '2625.0623', '-2717.4189', '2197.6729', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12166, 0, 0, 50, 0, '1278.0563', '1273.4742', '2121.7399', 14, 12371314, '2625.0623', '-2717.4189', '2197.6729', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '08', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12167, 0, 0, 50, 0, '1282.5002', '1273.3479', '2121.7390', 14, 12371314, '2625.0623', '-2717.4189', '2197.6729', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '09', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12168, 0, 0, 50, 0, '1282.5017', '1281.8220', '2125.2329', 14, 12371314, '2191.3037', '-1666.1750', '2501.0869', 14, 0, 1, 5, 0, 0, 0, 0, 0, 0, '10', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12169, 0, 0, 50, 0, '1278.0572', '1281.9129', '2125.2290', 14, 12371314, '2191.3037', '-1666.1750', '2501.0869', 14, 0, 1, 5, 0, 0, 0, 0, 0, 0, '11', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12180, 0, 0, 0, 0, '822.4092', '-1505.5170', '14.3976', 0, 0, '-1076.0704', '-1996.6171', '2007.0869', 105, 0, 2, 5, 0, 0, 0, 0, 0, 0, '5429, Market', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4910, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12251, 0, 0, 0, 0, '2552.0498', '-958.4617', '82.6113', 0, 0, '-136.1843', '1050.0137', '2736.9688', 1, 0, 3, 0, 0, 0, 0, 0, 0, 0, '.', 201, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4953, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12305, 0, 0, 0, 0, '2652.8625', '-1989.4239', '13.9988', 0, 0, '260.6188', '1237.2472', '2084.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '455, Seville', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3916, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12293, 0, 0, 0, 0, '1438.0634', '-1883.7935', '2302.1035', 234, 11153, '1026.9764', '2599.6951', '2555.8667', 13, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'Salle privée', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4910, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12299, 0, 0, 80, 0, '2783.9372', '-2158.6550', '3005.1127', 14, 15167356, '2259.5684', '-1135.6813', '1050.6328', 10, 0, 1, 1, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12314, 0, 0, 0, 0, '155.7505', '-186.4866', '1.5781', 0, 0, '1026.3849', '2599.1294', '2555.8684', 13, 1, 3, 5, 0, 0, 0, 0, 0, 0, 'Local', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12183, 0, 0, 0, 0, '2495.3671', '-1691.1401', '14.7656', 0, 0, '234.8391', '1104.5264', '2080.9929', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '245, Ganton.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4759, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12330, 0, 0, 0, 0, '1555.2785', '-1675.6955', '16.1953', 0, 1, '1026.8361', '2599.4351', '2555.8674', 13, 1, 3, 5, 0, 0, 0, 0, 0, 0, 'planque armes admins', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12278, 0, 0, 0, 0, '2284.2512', '-1626.4538', '15.8897', 0, 0, '760.5643', '717.8891', '3501.0859', 16, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'Planque', 102, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 945, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12186, 0, 0, 0, 0, '852.2646', '-1423.2690', '14.1366', 0, 0, '140.5658', '1365.9302', '2083.8594', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Strauss House', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4924, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12184, 0, 0, 0, 0, '2067.0495', '-1731.7416', '14.2066', 0, 0, '260.6002', '1237.2465', '2084.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '450, Idlewood Street.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 8, 4759, 0, 0, 0, 0, 1484835394, 0, 0, 0, 1484835394, 0),
(12309, 0, 0, 0, 0, '2384.9868', '-1686.2088', '14.6953', 0, 0, '-1136.4248', '1117.9189', '2301.0859', 108, 1, 2, 5, 0, 0, 0, 0, 0, 0, '56, Ganton', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12254, 0, 0, 0, 0, '1966.7867', '-1288.7098', '23.9808', 0, 0, '-1136.6356', '1117.8107', '2301.0859', 108, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Maison 1', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1624, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12298, 0, 0, 80, 0, '2788.2587', '-2148.9328', '3005.1127', 14, 15167356, '2260.3994', '-1136.0460', '1050.6328', 10, 0, 1, 1, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12308, 0, 0, 0, 0, '432.1718', '-1253.9154', '51.5809', 0, 0, '2901.1697', '-557.9178', '2592.0259', 22, 0, 2, 5, 0, 0, 0, 0, 0, 0, '55, Richman', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 123, 0, 0, 0, 0, 0, 1484835394, 0, 0, 0, 0),
(12188, 0, 0, 0, 0, '-63.2424', '1948.7357', '2319.6528', 182, 25154, '1026.9082', '2599.3477', '2555.8674', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Débarras', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12272, 0, 0, 0, 0, '1667.4372', '-2106.9472', '14.0722', 0, 0, '-42.9266', '1405.8789', '2084.4297', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '55, Corona', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 523, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12332, 0, 0, 0, 0, '2788.0844', '-2158.5456', '3009.2507', 14, 15167356, '260.7801', '1237.7185', '2084.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Appartement', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12346, 0, 0, 0, 0, '1990.0318', '-1777.4584', '17.3647', 0, 0, '229.1355', '1761.3795', '1499.2618', 145, 0, 2, 5, 0, 0, 0, 0, 0, 0, '525, Idlewood Street.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3916, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12191, 0, 0, 0, 0, '2625.9404', '-1112.6512', '67.9953', 0, 0, '83.0972', '1322.7471', '2083.8662', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '452', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12224, 0, 0, 150, 0, '1051.9742', '1038.0607', '2340.2229', 189, 25166, '261.6415', '1785.8556', '2118.5466', 191, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'Chambre 31', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12192, 0, 0, 70, 0, '166.5965', '121.8516', '7603.2109', 11, 18475185, '244.2415', '304.7183', '999.1484', 1, 0, 1, 3, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12193, 0, 0, 70, 0, '168.4475', '118.0606', '7603.2036', 11, 18475185, '244.2415', '304.7183', '999.1484', 1, 0, 1, 3, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12194, 0, 0, 70, 0, '168.3264', '112.6689', '7603.2109', 11, 18475185, '244.2415', '304.7183', '999.1484', 1, 0, 1, 3, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12195, 0, 0, 70, 0, '171.0277', '114.9005', '7603.2109', 11, 18475185, '2233.5251', '-1114.7283', '1050.8828', 5, 0, 1, 3, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12196, 0, 0, 70, 0, '175.3369', '114.8947', '7603.2109', 11, 18475185, '2233.5251', '-1114.7283', '1050.8828', 5, 0, 1, 3, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12197, 0, 0, 70, 0, '173.4118', '107.7817', '7603.2109', 11, 18475185, '2233.5251', '-1114.7283', '1050.8828', 5, 0, 1, 3, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12198, 0, 0, 70, 0, '170.1607', '106.3834', '7603.2109', 11, 18475185, '2617.9456', '-1816.1111', '616.5299', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1484835394, 0, 0),
(12199, 0, 0, 70, 0, '167.8667', '109.1937', '7603.2109', 11, 18475185, '2617.9456', '-1816.1111', '616.5299', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '08', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12200, 0, 0, 70, 0, '163.9255', '106.3741', '7603.2109', 11, 18475185, '2617.9456', '-1816.1111', '616.5299', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '09', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12201, 0, 0, 70, 0, '161.7317', '109.1943', '7603.2109', 11, 18475185, '2259.8323', '-1136.2280', '1050.6328', 10, 0, 1, 3, 0, 0, 0, 0, 0, 0, '10', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12202, 0, 0, 70, 0, '157.5172', '106.3988', '7603.2109', 11, 18475185, '2259.8323', '-1136.2280', '1050.6328', 10, 0, 1, 3, 0, 0, 0, 0, 0, 0, '11', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12203, 0, 0, 70, 0, '155.8443', '108.9999', '7603.2109', 11, 18475185, '223.0128', '1287.4902', '1082.1406', 1, 0, 1, 3, 0, 0, 0, 0, 0, 0, '12', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12204, 0, 0, 70, 0, '162.3002', '114.8314', '7603.2036', 11, 18475185, '2625.1714', '-2717.2720', '2197.6729', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '13', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12205, 0, 0, 70, 0, '162.6534', '112.6697', '7603.2109', 11, 18475185, '2625.1714', '-2717.2720', '2197.6729', 13, 0, 1, 3, 0, 0, 0, 0, 0, 0, '14', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12322, 0, 0, 0, 0, '2450.1362', '-1781.9764', '13.5880', 0, 0, '226.7884', '1239.6920', '2082.1406', 13, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Salle ', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2348, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12279, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12208, 0, 0, 0, 0, '2320.7976', '-1640.8612', '3001.0859', 23, 25023, '-1136.4316', '1117.6414', '2301.0859', 108, 1, 2, 5, 0, 0, 0, 0, 0, 0, 'Sous sol', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12206, 0, 0, 0, 0, '2684.3837', '967.6047', '3001.0859', 10, 101, '141.0184', '-1933.6560', '2431.0947', 116, 1, 2, 5, 0, 0, 0, 0, 0, 0, 'Bureau du représentant', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12210, 0, 0, 0, 0, '2018.2432', '-1703.1103', '14.2343', 0, 0, '318.3073', '1115.0850', '2083.8828', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '55', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12335, 0, 0, 0, 0, '1456.9702', '-1137.1873', '23.9441', 0, 0, '1006.0322', '2432.7859', '2501.9260', 103, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Privé', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5396, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12213, 0, 0, 70, 0, '1037.4949', '1049.8223', '2340.2229', 187, 25164, '184.8089', '1787.4542', '2317.6199', 190, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'Chambre 2', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12212, 0, 0, 70, 0, '1040.8293', '1049.8935', '2340.2229', 187, 25164, '184.9774', '1787.2590', '2317.6199', 190, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'Chambre 1', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12214, 0, 0, 70, 0, '1037.4949', '1043.4537', '2340.2229', 187, 25164, '184.8089', '1787.4542', '2317.6199', 190, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'Chambre 3', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12215, 0, 0, 70, 0, '1040.8400', '1043.4288', '2340.2229', 187, 25164, '184.8089', '1787.4542', '2317.6199', 190, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'Chambre 4', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `houses` (`Hid`, `Owner`, `Renter`, `RentPrice`, `Caisse`, `OutX`, `OutY`, `OutZ`, `OutInt`, `OutWorld`, `InX`, `InY`, `InZ`, `InInt`, `Open`, `Type`, `MaxInvits`, `Trash`, `Removing`, `RemovPlayer`, `Price`, `Frigo`, `Poub`, `Title`, `Kit`, `Grammes`, `TimeCanna`, `Meth`, `TimeMeth`, `Matos`, `Essence`, `Kit1`, `Kit2`, `Kit3`, `Kit4`, `Kit5`, `Kit6`, `Kit7`, `Kit8`, `Kit9`, `Kit10`, `Kit11`, `Kit12`, `Kit13`, `Kit14`, `Kit15`, `Kit16`, `Kit17`, `Kit18`, `Kit19`, `Kit20`, `Kit21`, `Kit22`, `Kit23`, `Kit24`, `Kit25`, `Kit26`, `Kit27`, `Kit28`, `Kit29`, `Kit30`, `gMeth`, `gCoke`, `gHero`, `gStero`, `gCanna`, `Autoriz`, `PlacementActor`, `LastBraquo`, `Braquable`, `Contrebande`, `TDrugCanna`, `TDrugCoke`, `TDrugHero`, `TDrugMeth`, `TDrugStero`, `CoffreFurn`) VALUES
(12216, 0, 0, 70, 0, '1040.8292', '1049.8957', '2340.2229', 188, 25165, '184.8089', '1787.4542', '2317.6199', 190, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'Chambre 14', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12217, 0, 0, 70, 0, '1037.4952', '1049.8697', '2340.2229', 188, 25165, '184.8048', '1787.4353', '2317.6199', 190, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'Chambre 15', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12219, 0, 0, 70, 0, '1040.8376', '1043.4007', '2340.2229', 188, 25165, '184.8048', '1787.4353', '2317.6199', 190, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'Chambre 17', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12218, 0, 0, 70, 0, '1037.4958', '1043.4589', '2340.2229', 188, 25165, '184.8048', '1787.4353', '2317.6199', 190, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'Chambre 16', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12220, 0, 0, 70, 0, '1040.8299', '1049.7406', '2340.2229', 189, 25166, '184.8089', '1787.4542', '2317.6199', 190, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'Chambre 27', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12221, 0, 0, 70, 0, '1037.4953', '1049.8588', '2340.2229', 189, 25166, '184.8089', '1787.4542', '2317.6199', 190, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'Chambre 28', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12222, 0, 0, 70, 0, '1037.4949', '1043.4962', '2340.2229', 189, 25166, '184.8089', '1787.4542', '2317.6199', 190, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'Chambre 29', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12223, 0, 0, 30, 0, '1040.8399', '1043.4201', '2340.2229', 189, 25166, '184.8089', '1787.4542', '2317.6199', 190, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'Chambre 30', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12225, 0, 0, 150, 0, '1045.6262', '1038.0093', '2340.2229', 189, 25166, '261.6415', '1785.8556', '2118.5459', 191, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'Chambre 32', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12226, 0, 0, 150, 0, '1039.1678', '1038.0092', '2340.2229', 189, 25166, '261.6415', '1785.8556', '2118.5459', 191, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'Chambre 33', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12227, 0, 0, 150, 0, '1032.7174', '1038.0070', '2340.2229', 189, 25166, '261.6415', '1785.8556', '2118.5459', 191, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'Chambre 34', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12228, 0, 0, 150, 0, '1026.3411', '1038.0075', '2340.2229', 189, 25166, '261.6415', '1785.8556', '2118.5459', 191, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'Chambre 35', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12229, 0, 0, 150, 0, '1051.9138', '1038.0076', '2340.2229', 188, 25165, '261.6415', '1785.8556', '2118.5459', 191, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'Chambre 18', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12230, 0, 0, 150, 0, '1045.6221', '1038.0079', '2340.2229', 188, 25165, '261.6415', '1785.8556', '2118.5459', 191, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'Chambre 19', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12231, 0, 0, 150, 0, '1039.0042', '1038.0073', '2340.2229', 188, 25165, '261.6415', '1785.8556', '2118.5459', 191, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'Chambre 20', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12232, 0, 0, 150, 0, '1032.7778', '1038.0069', '2340.2229', 188, 25165, '261.6415', '1785.8556', '2118.5459', 191, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'Chambre 21', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12233, 0, 0, 150, 0, '1026.2651', '1038.0115', '2340.2229', 188, 25165, '261.6415', '1785.8556', '2118.5459', 191, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'Chambre 22', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12234, 0, 0, 150, 0, '1052.0117', '1038.0072', '2340.2229', 187, 25164, '261.6415', '1785.8556', '2118.5459', 191, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'Chambre 5', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12235, 0, 0, 150, 0, '1045.5681', '1038.0070', '2340.2229', 187, 25164, '261.6415', '1785.8556', '2118.5459', 191, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'Chambre 6', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12237, 0, 0, 150, 0, '1032.6824', '1038.0091', '2340.2229', 187, 25164, '261.6415', '1785.8556', '2118.5459', 191, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'Chambre 8', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12236, 0, 0, 150, 0, '1039.1801', '1038.0069', '2340.2229', 187, 25164, '261.6415', '1785.8556', '2118.5459', 191, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'Chambre 7', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12238, 0, 0, 150, 0, '1026.3233', '1038.0078', '2340.2229', 187, 25164, '261.6415', '1785.8556', '2118.5459', 191, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'Chambre 9', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12239, 0, 0, 230, 0, '1020.9038', '1039.1555', '2340.2229', 187, 25164, '478.2993', '832.8442', '1965.8949', 192, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'Suite 10', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12240, 0, 0, 230, 0, '1021.9873', '1035.5794', '2340.2229', 187, 25164, '478.2232', '832.8698', '1965.8949', 192, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'Suite 11', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12241, 0, 0, 230, 0, '1057.4299', '1039.0915', '2340.2229', 187, 25164, '478.2232', '832.8698', '1965.8950', 192, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'Suite 12', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12243, 0, 0, 230, 0, '1020.9038', '1039.1979', '2340.2229', 188, 25165, '478.2232', '832.8698', '1965.8949', 192, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'Suite 23', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12244, 0, 0, 230, 0, '1022.0372', '1035.5762', '2340.2229', 188, 25165, '478.2232', '832.8698', '1965.8949', 192, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'Suite 24', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12245, 0, 0, 230, 0, '1057.4300', '1039.1290', '2340.2229', 188, 25165, '478.2232', '832.8698', '1965.8950', 192, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'Suite 25', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12246, 0, 0, 230, 0, '1056.2623', '1035.5871', '2340.2229', 188, 25165, '478.2232', '832.8698', '1965.8949', 192, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'Suite 26', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12247, 0, 0, 0, 0, '1021.9713', '1035.5749', '2340.2229', 189, 25166, '478.2232', '832.8698', '1965.8949', 192, 0, 1, 2, 0, 0, 0, 0, 0, 0, 'Suite 37', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12248, 0, 0, 230, 0, '1057.4285', '1039.1921', '2340.2229', 189, 25166, '478.2232', '832.8698', '1965.8950', 192, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'Suite 38', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12249, 0, 0, 230, 0, '1056.2542', '1035.5864', '2340.2229', 189, 25166, '478.2232', '832.8698', '1965.8949', 192, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'Suite 39', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12250, 0, 0, 0, 0, '1020.9041', '1039.2193', '2340.2229', 189, 25166, '478.2232', '832.8698', '1965.8950', 192, 0, 2, 1, 0, 0, 0, 0, 0, 0, 'Suite 666', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12290, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'test', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12253, 0, 0, 0, 0, '2173.0920', '-1512.6992', '23.9134', 0, 0, '-1136.4257', '1117.5905', '2301.0859', 108, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Planque', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12256, 0, 0, 0, 0, '980.5064', '-677.2518', '121.9762', 0, 1, '139.9789', '1366.0811', '2083.8594', 13, 0, 2, 10, 0, 0, 0, 500000, 0, 0, '145, Richman', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2794, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12257, 0, 0, 0, 0, '2366.2033', '-1690.1264', '14.1681', 0, 0, '-2943.9209', '1003.4025', '2023.3230', 106, 0, 2, 5, 0, 0, 0, 0, 0, 0, '156, Ganton.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5233, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12260, 0, 0, 0, 0, '890.8327', '-671.5269', '2601.0910', 228, 12259, '891.5313', '-662.4321', '2001.1000', 87, 0, 2, 0, 0, 0, 0, 0, 0, 0, '1er étage', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 142, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12354, 0, 0, 0, 0, '2325.6950', '-1759.1855', '2024.3739', 50, 12353, '-1381.8363', '1187.5957', '2501.0820', 107, 1, 2, 5, 0, 0, 0, 0, 0, 0, 'Porte renforcé', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4910, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12262, 0, 0, 0, 0, '2363.4614', '656.3291', '11.4609', 0, 0, '-1490.0781', '-81.5293', '2119.4839', 109, 0, 2, 5, 0, 0, 0, 0, 0, 0, '15 roctksheure street', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12283, 0, 0, 0, 0, '2666.4985', '750.0992', '10.8203', 0, 0, '226.7205', '1240.1038', '2082.1406', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '345, Las Venturas', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3916, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12284, 0, 0, 0, 0, '2315.9245', '1801.8232', '10.8203', 0, 0, '-1136.4231', '1117.5367', '2301.0859', 108, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Garage', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3916, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12291, 0, 0, 0, 0, '193.1067', '1755.7727', '3001.0849', 242, 25220, '2753.2712', '247.5130', '2320.3389', 169, 1, 2, 5, 0, 0, 0, 0, 0, 0, 'Bureau', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12286, 0, 0, 0, 0, '167.7676', '-1758.9364', '6.7968', 0, 0, '23.8778', '1340.1660', '2084.3750', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '255, Marina.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5367, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12287, 0, 0, 0, 0, '692.9243', '-1602.7749', '15.0468', 0, 0, '2237.5718', '-1089.4279', '2049.0234', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '450, Marina', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5367, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12362, 0, 0, 0, 0, '1257.4082', '-643.1025', '3001.6306', 10, 11441, '255.5499', '1049.4907', '3000.9834', 10, 1, 2, 5, 0, 0, 0, 0, 0, 0, '2ème étage', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1769, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12323, 0, 0, 0, 0, '1546.3293', '32.2761', '24.1406', 0, 0, '-1778.3101', '2162.5300', '2537.1421', 9, 1, 2, 5, 0, 0, 0, 0, 0, 0, 'Red County - 1', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 434, 0, 0, 0, 0, 1484835394, 1484835394, 1484835394, 0, 0, 0),
(12365, 0, 0, 0, 0, '2184.3295', '-2700.9865', '13.5468', 0, 0, '1027.0458', '2599.3630', '2555.8674', 13, 0, 3, 5, 0, 0, 0, 0, 0, 0, 'Garage', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12300, 0, 0, 80, 0, '2783.9375', '-2148.9140', '3009.2438', 14, 15167356, '2259.3843', '-1135.7810', '1050.6403', 10, 0, 1, 1, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12301, 0, 0, 80, 0, '2788.4975', '-2148.9194', '3009.2507', 14, 15167356, '2260.3994', '-1136.0460', '1050.6328', 10, 0, 1, 1, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12303, 0, 0, 80, 0, '2783.9377', '-2158.6418', '3009.2429', 14, 15167356, '2259.5193', '-1135.7157', '1050.6328', 10, 0, 1, 1, 0, 0, 0, 0, 0, 0, '09', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12310, 0, 0, 0, 0, '280.9070', '-1767.1519', '4.5468', 0, 0, '234.2783', '1063.9344', '2084.2119', 13, 1, 2, 5, 0, 0, 0, 0, 0, 0, '555, Marina', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 727, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12311, 0, 0, 0, 0, '1001.3962', '2429.0002', '2501.0859', 103, 12275, '799.7136', '1873.2379', '5999.7822', 13, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'Planque', 102, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4910, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12312, 0, 0, 0, 0, '1385.4532', '-120.2547', '1499.9801', 247, 25224, '1382.9382', '-118.9709', '1502.0253', 251, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Boss\'s office', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3644, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12313, 0, 0, 0, 0, '693.6853', '1967.6499', '5.5390', 0, 0, '2287.7725', '-1138.6360', '3053.4016', 249, 1, 2, 5, 0, 0, 0, 0, 0, 0, 'The Big Spread Ranch', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 987, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12315, 0, 0, 0, 0, '1442.6182', '-628.8309', '95.7185', 0, 0, '1487.8711', '-1166.0887', '2501.0068', 18, 0, 2, 5, 0, 0, 0, 0, 0, 0, '557, Richman', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 2281, 0, 0, 0, 0, 0, 0, 0, 0, 1484835394, 0),
(12317, 0, 0, 70, 0, '2795.0126', '-2147.7902', '2997.7946', 14, 15167356, '2624.4673', '-2717.5574', '2197.6729', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12372, 0, 0, 0, 0, '766.9232', '-1605.8095', '13.8038', 0, 0, '1149.7887', '-2015.1550', '1500.7253', 21, 0, 2, 5, 0, 0, 0, 0, 0, 0, '568, Marina.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 631, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12359, 0, 0, 0, 0, '1954.6694', '2322.8000', '10.8203', 0, 0, '964.5746', '2108.3870', '1011.0303', 1, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Meat Factory 875', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12358, 0, 0, 0, 0, '2018.0556', '-1629.8522', '14.0425', 0, 0, '2176.7449', '1287.1112', '2442.8770', 139, 0, 2, 5, 0, 0, 0, 0, 14, 1, '105, Crystal Gardens', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4518, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12329, 0, 0, 0, 0, '1936.6043', '-1815.6298', '13.5468', 0, 0, '230.7226', '1778.6007', '2999.9790', 218, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Garage', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12324, 0, 0, 0, 0, '-683.9281', '939.4638', '13.6328', 0, 0, '82.9944', '1322.3304', '2083.8662', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Maison', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 727, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12325, 0, 0, 100, 0, '2302.3881', '-1998.7390', '13.5651', 0, 0, '318.5629', '1114.5190', '2083.8828', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '550, Willowfield', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 727, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12327, 0, 0, 0, 0, '1396.8458', '-1569.7261', '14.2667', 0, 0, '140.4205', '1365.9246', '2083.8594', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '557, Pershing Square', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 57, 3144, 0, 0, 0, 0, 1484835394, 0, 0, 0, 0, 0),
(12328, 0, 0, 0, 0, '2523.4038', '-1298.0598', '1031.4218', 2, 12355, '799.7144', '1873.3220', '5999.7822', 13, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'Salle technique', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4910, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12338, 0, 0, 0, 0, '-2720.8588', '-320.6656', '7.8437', 0, 0, '-1076.0543', '-1996.4069', '2007.0869', 105, 0, 2, 5, 0, 0, 0, 0, 0, 0, '2578, San Fierro', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5017, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12339, 0, 0, 0, 0, '2469.6123', '-1646.3455', '13.7800', 0, 12337, '-42.9237', '1405.6964', '2084.4297', 13, 0, 2, 5, 0, 0, 0, 1, 0, 0, '557, Ganton', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 550, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12340, 0, 0, 0, 0, '813.6935', '-1456.6140', '14.2251', 0, 0, '234.4368', '1104.6919', '2080.9939', 13, 0, 2, 5, 0, 0, 0, 0, 13, 2, '10 Marina St.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4907, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12341, 0, 0, 0, 0, '653.2443', '-1619.6876', '15.0000', 0, 0, '234.3955', '1063.7255', '2084.2122', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '1567, Marina', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 340, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12342, 0, 0, 0, 0, '207.0135', '-1768.8815', '4.3698', 0, 0, '260.8134', '1237.8765', '2084.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'E739, Verona Beach Dr', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12343, 0, 0, 50, 0, '177.9881', '113.7053', '7603.2109', 11, 18475185, '226.1778', '1240.2861', '2082.1406', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, 'NO ENTRY', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12344, 0, 0, 0, 0, '217.2881', '1251.0235', '2082.1479', 13, 12343, '223.3719', '1287.1746', '1082.1406', 1, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'cagibi', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12345, 0, 0, 20, 0, '218.3525', '1293.7055', '1082.1406', 1, 12344, '1844.1674', '-2361.4158', '2486.6169', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, 'FENETRE', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12347, 0, 0, 0, 0, '2729.3283', '-2451.4748', '17.5937', 0, 0, '2541.5413', '-1303.8322', '1025.0703', 2, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Crack Factory', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3144, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12348, 0, 0, 0, 0, '227.3836', '1763.6290', '1499.2519', 145, 12346, '542.7663', '-96.9482', '2997.9922', 13, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'Local', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3916, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12349, 0, 0, 0, 0, '235.0855', '1763.6638', '1499.2519', 145, 12346, '221.7010', '1140.2269', '2082.6094', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Privé', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3916, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12369, 0, 0, 0, 0, '2766.0200', '-1614.9987', '10.9218', 0, 0, '754.9880', '68.9097', '3000.9219', 13, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'Garage', 303, 0, 0, 0, 0, 264, '73.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3916, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12357, 0, 0, 0, 0, '254.5299', '29.5870', '2.4502', 0, 0, '1375.9568', '-122.1149', '1502.1254', 252, 0, 3, 0, 0, 0, 0, 0, 0, 0, '6969 Main St', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3644, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12361, 0, 0, 0, 0, '404.3655', '-1756.4033', '8.2985', 0, 0, '311.4622', '1714.9993', '3001.0938', 4, 1, 2, 5, 0, 0, 0, 0, 0, 0, 'Waikiki Club', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12356, 0, 0, 0, 0, '-425.0523', '-1752.4573', '6.7582', 0, 0, '1250.2859', '-548.0573', '2055.9470', 6, 1, 2, 5, 0, 0, 0, 0, 0, 0, 'Grange', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12370, 0, 0, 0, 0, '2807.0529', '-1161.3796', '1029.1645', 8, 12368, '799.8254', '1873.2386', '5999.7822', 13, 0, 3, 5, 0, 0, 0, 0, 0, 0, '.', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3916, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12371, 0, 0, 0, 0, '2810.3466', '-1161.3796', '1029.1718', 8, 12368, '760.5248', '718.3867', '3501.0859', 16, 0, 3, 0, 0, 0, 0, 0, 0, 0, '.', 102, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3916, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12373, 0, 0, 0, 0, '-2671.3659', '927.4304', '79.7031', 0, 0, '234.3688', '1063.7231', '2084.2122', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Paradiso, 456 Villa', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12385, 0, 0, 0, 0, '2897.4641', '-552.6414', '2592.0229', 22, 12308, '2873.4319', '-653.9102', '2594.5845', 23, 1, 2, 5, 0, 0, 0, 0, 0, 0, 'Pièce', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12382, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, '1488.2399', '-1166.2441', '2501.0068', 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, '.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12412, 0, 0, 0, 0, '1710.6585', '-1535.4779', '13.5289', 0, 0, '1250.4443', '-1609.3452', '2501.0859', 102, 0, 2, 5, 0, 0, 0, 0, 0, 0, '311, Central Avenue', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12397, 0, 0, 0, 0, '1196.4815', '-1016.9703', '36.2343', 0, 0, '223.0592', '1287.3049', '1082.1406', 1, 0, 2, 5, 0, 0, 0, 0, 0, 0, '06, Temple', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5396, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12418, 0, 0, 0, 0, '1612.9114', '63.7161', '1009.7699', 14, 11656897, '1719.9198', '-893.8654', '8001.0859', 2, 0, 2, 5, 0, 0, 0, 0, 0, 0, '2', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12413, 0, 0, 0, 0, '-37.3968', '-1130.8088', '1.2257', 0, 0, '726.5011', '-238.0687', '3001.6284', 13, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'Entrepot', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12411, 0, 0, 0, 0, '956.1937', '1375.1361', '2498.0629', 21, 14599762, '260.7202', '1237.2319', '2084.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12374, 0, 0, 80, 0, '2788.4653', '-2148.8784', '3000.9729', 14, 15167356, '2233.6853', '-1115.2605', '1050.8828', 5, 0, 1, 2, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12375, 0, 0, 80, 0, '2783.9377', '-2149.0378', '3000.9819', 14, 15167356, '2259.5396', '-1135.7224', '1050.6328', 10, 0, 1, 2, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12376, 0, 0, 0, 0, '2795.0129', '-2152.6625', '2997.7946', 14, 15167356, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '13', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12377, 0, 0, 0, 0, '-739.9530', '1110.4354', '534.3499', 215, 11388, '1383.2433', '-118.7551', '1502.0253', 251, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Pièce annexe', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12378, 0, 0, 0, 0, '900.2151', '-1447.5041', '14.3707', 0, 0, '1718.3108', '-116.0929', '1502.0253', 16, 0, 2, 5, 0, 0, 0, 0, 0, 0, '358, Marina.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12379, 0, 0, 0, 0, '2543.3127', '-1322.0113', '1031.4218', 2, 12355, '-1381.9286', '1187.7062', '2501.0820', 107, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Appart 1', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4910, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12380, 0, 0, 0, 0, '2535.0048', '-1322.0028', '1031.4218', 2, 12355, '-1490.0986', '-81.1937', '2119.4839', 109, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Appart 2', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4910, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12381, 0, 0, 0, 0, '2523.3957', '-1309.8083', '1031.4218', 2, 12355, '1027.1133', '2599.4080', '2555.8672', 13, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'Local technique', 102, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4910, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12409, 0, 0, 0, 0, '168.2683', '-1768.4049', '4.4869', 0, 0, '260.8122', '1237.2996', '2084.2578', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '555, Marina', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12416, 0, 0, 0, 0, '-206.2065', '1070.5740', '19.7421', 0, 0, '705.0007', '1982.3208', '2505.2407', 30, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Sonnez pour entrer.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 987, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12383, 0, 0, 0, 0, '2482.6992', '-1972.9206', '16.4128', 0, 0, '760.5939', '718.7972', '3501.0859', 16, 0, 2, 10, 0, 0, 0, 0, 0, 0, 'Anonymous', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12384, 0, 0, 0, 0, '58.8024', '1216.4353', '18.8510', 0, 0, '754.9880', '68.9097', '3000.9219', 13, 1, 3, 5, 0, 0, 0, 0, 0, 0, 'Chopshop', 303, 0, 0, 0, 0, 40, '50.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12405, 0, 0, 0, 0, '1978.6259', '-1618.3310', '15.9687', 0, 0, '995.9385', '999.8389', '2001.0859', 16, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Diamond Records', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 294, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12423, 0, 0, 0, 0, '-160.9916', '2437.2739', '3004.6738', 14, 12121615, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Appart 5', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12386, 0, 0, 0, 0, '1056.3120', '1035.5863', '2340.2229', 187, 25164, '478.5454', '832.6882', '1965.8949', 192, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Suite 13', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12410, 0, 0, 0, 0, '2520.6542', '-1209.4815', '50.2939', 0, 0, '-1629.0767', '2166.7627', '2471.7180', 104, 1, 2, 5, 0, 0, 0, 0, 0, 0, '560', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2335, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12387, 0, 0, 50, 0, '1282.5013', '1281.8278', '2111.2509', 14, 10809367, '1843.5627', '-2361.1128', '2486.6169', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '01', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12388, 0, 0, 50, 0, '1278.0550', '1281.8896', '2111.2468', 14, 10809367, '1843.5627', '-2361.1128', '2486.6169', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '02', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12389, 0, 0, 50, 0, '1278.0552', '1273.4514', '2114.7600', 14, 10809367, '1843.5627', '-2361.1128', '2486.6169', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '03', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12390, 0, 0, 50, 0, '1282.5025', '1273.4846', '2114.7600', 14, 10809367, '722.4835', '-1428.3896', '1201.3190', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '04', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12391, 0, 0, 50, 0, '1282.4923', '1281.8620', '2118.2438', 14, 10809367, '722.4835', '-1428.3896', '1201.3190', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '05', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12392, 0, 0, 50, 0, '1278.0560', '1281.9022', '2118.2438', 14, 10809367, '722.4835', '-1428.3896', '1201.3190', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '06', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12393, 0, 0, 50, 0, '1278.0552', '1273.3696', '2121.7399', 14, 10809367, '2625.1768', '-2717.4968', '2197.6729', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '07', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12394, 0, 0, 50, 0, '1282.5030', '1273.4550', '2121.7390', 14, 10809367, '2625.1768', '-2717.4968', '2197.6729', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '08', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12395, 0, 0, 50, 0, '1282.5030', '1281.9207', '2125.2329', 14, 10809367, '2625.1768', '-2717.4968', '2197.6729', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '09', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12396, 0, 0, 50, 0, '1278.0551', '1281.9367', '2125.2290', 14, 10809367, '2625.1768', '-2717.4968', '2197.6729', 13, 0, 1, 5, 0, 0, 0, 0, 0, 0, '10', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12398, 0, 0, 0, 0, '1710.6473', '-1535.5546', '13.5289', 0, 12265, '1250.5938', '-1609.7106', '2501.0859', 102, 0, 2, 5, 0, 0, 0, 1, 0, 0, '505, Little Italy.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12399, 0, 0, 0, 0, '168.2653', '-1768.4051', '4.4869', 0, 12265, '260.7772', '1237.2338', '2084.2578', 13, 0, 2, 5, 0, 0, 0, 1, 0, 0, '505, Marina.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12415, 0, 0, 0, 0, '2383.6374', '-1547.0975', '24.1640', 0, 0, '2237.5325', '-1089.4349', '2049.0234', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '23st, Los Flores', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5738, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12419, 0, 0, 0, 0, '860.8139', '-1245.4785', '14.7578', 0, 0, '2778.2864', '2089.9912', '2545.7061', 32, 1, 2, 5, 0, 0, 0, 0, 0, 0, 'Studios Sunset Production', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 735, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12400, 0, 0, 0, 0, '2520.3466', '-1714.6914', '13.5748', 0, 0, '-1136.7948', '1117.8905', '2301.0859', 108, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Brasilock\'s Spot', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12401, 0, 0, 0, 0, '2539.1281', '-1316.7910', '1031.4218', 2, 12355, '-1076.0499', '-1996.6396', '2007.0869', 105, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Appart 5', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12402, 0, 0, 0, 0, '2536.5629', '-1316.8116', '1031.4218', 2, 12355, '760.5989', '718.7963', '3501.0859', 16, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'Appart 6', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12403, 0, 0, 0, 0, '2534.2329', '-1316.8021', '1031.4218', 2, 12355, '1026.6216', '2599.3987', '2555.8677', 13, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'Appart 7', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12404, 0, 0, 0, 0, '2531.5839', '-1316.7880', '1031.4218', 2, 12355, '1027.1133', '2599.4080', '2555.8672', 13, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'Appart 8', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12406, 0, 0, 0, 0, '154.1489', '-1946.6228', '5.3903', 0, 0, '322.1450', '302.3647', '999.1484', 5, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Bureau du Garde-Côte', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5367, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12407, 0, 0, 0, 0, '2403.4045', '-1680.6220', '13.6232', 0, 0, '799.8917', '1873.2377', '5999.7822', 13, 1, 3, 0, 0, 0, 0, 70000, 0, 0, 'Planque', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4751, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12414, 0, 0, 0, 0, '-34.2117', '-1122.0489', '1.2322', 0, 0, '754.9880', '68.9097', '3000.9219', 13, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'Entrepot', 303, 0, 0, 0, 0, 0, '100.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12422, 0, 0, 0, 0, '1508.6569', '-1862.8843', '13.5468', 0, 0, '258.7329', '1704.2960', '3001.0918', 26, 1, 2, 5, 0, 0, 0, 0, 0, 0, 'Barbershop', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12429, 0, 0, 0, 0, '1377.8048', '-1753.1129', '14.1406', 0, 0, '278.4058', '1792.4783', '2417.6960', 181, 1, 2, 5, 0, 0, 0, 0, 0, 0, 'Gary Brand Private Clinic', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12444, 0, 0, 0, 0, '2750.3918', '-1205.7886', '67.4843', 0, 0, '220.0932', '1830.1534', '2022.5320', 42, 0, 2, 5, 0, 0, 0, 0, 0, 0, '3', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12430, 0, 0, 0, 0, '278.6662', '1374.7884', '10.6506', 0, 0, '29.4234', '-3.5794', '-5.0341', 33, 1, 2, 10, 0, 0, 0, 0, 0, 0, 'Bone County Cowboys', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3767, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12431, 0, 0, 0, 0, '-1011.4663', '-628.1691', '32.1902', 0, 0, '59.6529', '-735.0859', '999.2535', 34, 0, 2, 10, 0, 0, 0, 0, 0, 0, 'Flint County Tigers', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5629, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12438, 0, 0, 0, 0, '64.8808', '1005.2311', '13.7596', 0, 0, '260.3564', '1237.8038', '2084.2578', 13, 1, 3, 5, 0, 0, 0, 0, 0, 0, 'Maison', 1, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12437, 0, 0, 0, 0, '2358.4443', '-656.5479', '128.4553', 0, 0, '-1008.0999', '1331.9856', '2500.2964', 41, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Cabanon', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12436, 0, 0, 0, 0, '2209.7482', '-1869.0885', '2313.1169', 186, 25163, '1739.8776', '-1220.1409', '2375.3750', 39, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Office', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5834, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12432, 0, 0, 0, 0, '937.9211', '-848.6901', '93.5771', 0, 0, '234.3138', '1063.9419', '2084.2119', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '05, Richman', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1591, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12434, 0, 0, 0, 0, '645.9987', '-1117.4152', '44.2070', 0, 0, '234.7113', '1104.5795', '2080.9932', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, 'Fallen\'s House', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5606, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12443, 0, 0, 0, 0, '1752.1066', '-2054.5869', '14.0496', 0, 0, '826.4666', '-1098.2301', '2501.0918', 42, 0, 2, 5, 0, 0, 0, 0, 0, 0, '454 avenue d\'El Corona', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12435, 0, 0, 0, 0, '2498.4348', '-1642.2554', '14.1130', 0, 0, '-69.0142', '1351.1986', '2080.2109', 13, 0, 2, 5, 0, 0, 0, 0, 0, 0, '55, Ganton.', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 565, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12441, 0, 0, 0, 0, '1219.3707', '-1812.2908', '16.5937', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Amine', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12442, 0, 0, 0, 0, '1219.3077', '-1812.1168', '16.5937', 0, 0, '0.0000', '0.0000', '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Amine', 0, 0, 0, 0, 0, 0, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `house_spawn`
--

CREATE TABLE `house_spawn` (
  `Rid` int(11) NOT NULL,
  `Compte` int(11) NOT NULL DEFAULT '0',
  `Date` int(11) NOT NULL,
  `AdressIP` varchar(16) CHARACTER SET latin1 NOT NULL,
  `CR` int(11) NOT NULL,
  `Etat` tinyint(4) NOT NULL DEFAULT '0',
  `Reponse` text CHARACTER SET latin1 NOT NULL,
  `Background` text CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ic_amendes`
--

CREATE TABLE `ic_amendes` (
  `AMid` int(11) NOT NULL,
  `Joueur` varchar(20) NOT NULL,
  `Agent` varchar(20) NOT NULL,
  `Prix1` int(11) NOT NULL,
  `Prix2` int(11) NOT NULL,
  `Date` int(11) NOT NULL,
  `DateLast` int(11) NOT NULL,
  `Motif` varchar(60) NOT NULL,
  `Etat` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `ingame_edits`
--

CREATE TABLE `ingame_edits` (
  `Action` text NOT NULL,
  `Info` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `interiors`
--

CREATE TABLE `interiors` (
  `id` int(11) NOT NULL,
  `VW` smallint(2) NOT NULL,
  `OutX` float NOT NULL,
  `OutY` float NOT NULL,
  `OutZ` float NOT NULL,
  `InX` float NOT NULL,
  `InY` float NOT NULL,
  `InZ` float NOT NULL,
  `Inte` smallint(3) NOT NULL,
  `World` int(11) NOT NULL,
  `Pickup` smallint(6) NOT NULL,
  `Carte` smallint(2) NOT NULL,
  `Perm` varchar(6) NOT NULL,
  `Titre` varchar(72) NOT NULL,
  `Prix` smallint(6) NOT NULL,
  `SQLid` int(11) NOT NULL,
  `Open` smallint(3) NOT NULL,
  `Complex` smallint(3) NOT NULL,
  `OutInt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `interiors`
--

INSERT INTO `interiors` (`id`, `VW`, `OutX`, `OutY`, `OutZ`, `InX`, `InY`, `InZ`, `Inte`, `World`, `Pickup`, `Carte`, `Perm`, `Titre`, `Prix`, `SQLid`, `Open`, `Complex`, `OutInt`) VALUES
(1, 0, 1554.83, -1675.7, 16.1953, 1550.48, -1684.39, 1723.11, 10, 101, 1318, 1, '', 'Commisariat de Police', 0, 0, 0, 0, 0),
(2, 0, 2659.68, 2800.31, 10.8203, 868.862, -456.064, 354.486, 13, 102, 1318, 0, '', 'Prison fédérale', 0, 0, 0, 0, 0),
(3, 0, 2684.86, 2800.31, 10.8203, 870.192, -407.428, 351.056, 13, 102, 1318, 0, '', 'Entrée', 0, 0, 0, 0, 0),
(6, 0, 1631.9, -1172.58, 24.0843, 2015.59, 2675.42, 2067.87, 13, 104, 1318, 1, '', 'Tabac Nord', 0, 0, 0, 0, 0),
(7, 0, 526.434, -1759.25, 14.2691, 2015.59, 2675.42, 2067.87, 13, 105, 1318, 2, '', 'Tabac Sud', 0, 0, 0, 0, 0),
(8, 0, 1315.43, -897.762, 39.5781, -25.9129, -140.879, 1003.55, 16, 142, 1318, 0, '', '24-7', 0, 0, 0, 0, 0),
(9, 0, 816.121, -1584.45, 13.5545, -25.9129, -140.879, 1003.55, 16, 143, 1318, 0, '', '24-7', 0, 0, 0, 0, 0),
(10, 0, 1833.61, -1842.57, 13.5781, -25.9129, -140.879, 1003.55, 16, 144, 1318, 0, '', '24-7', 0, 0, 0, 0, 0),
(11, 0, 1352.32, -1759.01, 13.5078, -25.9129, -140.879, 1003.55, 16, 145, 1318, 0, '', '24-7', 0, 0, 0, 0, 0),
(12, 0, 2104.77, -1806.49, 13.5547, 372.372, -133.401, 1001.49, 5, 150, 1318, 1, '', 'Pizzeria', 0, 0, 0, 0, 0),
(13, 0, 2420.19, -1509.69, 24, 364.92, -11.5678, 1001.85, 9, 151, 1318, 0, '', 'Cluckin Bell', 0, 0, 0, 0, 0),
(14, 0, 928.573, -1352.89, 13.3438, 364.92, -11.5678, 1001.85, 9, 152, 1318, 0, '', 'Cluckin Bell', 0, 0, 0, 0, 0),
(15, 0, 2398.51, -1899.01, 13.5469, 364.92, -11.5678, 1001.85, 9, 153, 1318, 0, '', 'Cluckin Bell', 0, 0, 0, 0, 0),
(16, 0, 811.097, -1616.27, 13.5469, 363.073, -75.0343, 1001.51, 10, 154, 1318, 0, '', 'Burger Shot', 0, 0, 0, 0, 0),
(17, 0, 1199.29, -918.669, 43.119, 363.073, -75.0343, 1001.51, 10, 155, 1318, 0, '', 'Burger Shot', 0, 0, 0, 0, 0),
(18, 0, 2400.52, -1981.62, 13.5469, -266.849, 1801.79, 2294.62, 16, 160, 1318, 0, 'ADMN', 'Ammunation', 0, 0, 0, 0, 0),
(19, 0, 1368.37, -1279.11, 13.5469, -266.849, 1801.79, 2294.62, 16, 161, 1318, 0, 'ADMN', 'Ammunation', 0, 0, 0, 0, 0),
(22, 0, 2045.72, -1913.22, 13.5469, -303.294, 1773.46, 3001.09, 16, 170, 1318, 1, '', 'Auto-École', 0, 0, 0, 0, 0),
(23, 0, 1381.94, -1088.74, 27.9985, 913.164, -2176.75, 2527.32, 25, 171, 1318, 1, '', 'Tribunal', 0, 0, 0, 0, 0),
(24, 0, 1417.51, -1131.15, 22.078, 923.327, -2171.54, 2527.32, 25, 171, 1318, 0, 'IT01', 'Acces', 0, 0, 0, 0, 0),
(25, 0, 2423.96, -1742.68, 13.5426, -25.9129, -140.879, 1003.55, 16, 175, 1318, 0, '', '24-7', 0, 0, 0, 0, 0),
(26, 0, 2139.55, -1176.81, 23.9922, -25.9129, -140.879, 1003.55, 16, 176, 1318, 0, '', '24-7', 0, 0, 0, 0, 0),
(27, 0, 1310.1, -1367.47, 13.535, -447.776, -613.139, 2265.99, 50, 181, 1318, 1, '', 'Banque', 0, 0, 0, 0, 0),
(28, 0, 1481.05, -1771.48, 18.7958, -0.725199, 0.355899, 2000.96, 20, 5, 1318, 1, '', 'City Hall', 0, 0, 0, 0, 0),
(50, 0, 1711.82, -1143.55, 24.0459, 4.7489, 2478.97, 4000.97, 13, 24, 1318, 1, '', 'Los Santos Fire Department', 0, 0, 0, 0, 0),
(57, 0, 1726.97, -1636.69, 20.2172, 1726.96, -1638.46, 20.2232, 18, 31, 1314, 0, '', 'Residence Centre-Ville', 0, 0, 0, 0, 0),
(58, 0, 1699.26, -1667.81, 20.1965, 1701.07, -1667.89, 20.2188, 18, 31, 1314, 0, '', 'Residence Centre-Ville', 0, 0, 0, 0, 0),
(99, 0, 2229.79, -1721.35, 13.5622, 681.814, 1103.79, 3001.66, 3, 3, 1318, 0, '', 'Gym', 0, 0, 0, 0, 0),
(111, 102, 2595.16, 2790.64, 10.8203, 838.992, -452.366, 354.486, 13, 102, 1318, 0, '', 'Parloir', 0, 0, 0, 0, 0),
(112, 102, 2596.44, 2804.51, 10.8203, 2596.68, 2803.23, 10.8203, 0, 0, 1318, 0, '', 'Accès cours', 0, 0, 0, 0, 0),
(113, 101, 2678.53, 983.115, 3001.09, 69.9999, 312.735, 7777.97, 10, 101, 1318, 0, '', 'Salle de briefing', 0, 0, 0, 0, 0),
(114, 101, 2693.4, 963.224, 3005.26, 1565.21, -1657.43, 4021.16, 10, 101, 1318, 0, '', 'Bureau du chef', 0, 0, 0, 0, 0),
(115, 0, 1642.14, -2335.16, 13.5469, 1709.3, -2342.88, 6243.39, 10, 120, 1318, 1, '', 'Aéroport', 0, 0, 0, 0, 0),
(116, 0, 1597.09, -1862.66, 13.5251, 183.756, 1928.17, 2050.83, 10, 121, 1318, 1, '', 'Electronic Store', 0, 0, 0, 0, 0),
(117, 0, 1445.3, -1295.02, 13.5469, -32.2618, -9.7175, 2003.64, 11, 122, 1318, 1, '', 'Drug Store', 0, 0, 0, 0, 0),
(118, 0, 986.997, -1295.73, 13.5469, -204.055, 2002.99, 3301.05, 12, 235, 1318, 1, '', 'Hardware Store', 0, 0, 0, 0, 0),
(119, 0, 453.791, -1478.14, 30.8145, 1004.64, 1005.76, 2000.97, 14, 28, 1318, 1, '', 'Didier Sachts', 0, 0, 0, 0, 0),
(120, 0, 1463.98, -1322.61, 13.5469, 1480.42, -1372.1, 62.4375, 0, 0, 1318, 0, '', 'The Ivy Restaurant', 0, 0, 0, 0, 0),
(121, 0, 1603.33, -1170.13, 24.0781, -99.7351, -449.171, 2001.97, 15, 27, 1318, 0, '', 'Accessoires deux roues', 0, 0, 0, 0, 0),
(122, 0, 1809.05, -1102.32, 24.0859, 448.477, 846.525, 1200.97, 15, 30, 1318, 0, '', 'Morgue', 0, 0, 0, 0, 0),
(123, 0, 1524.92, -1677.89, 5.8906, 409.121, -1706.78, 2826.9, 16, 225, 1318, 0, '', 'Armurerie', 0, 0, 0, 0, 0),
(126, 0, 2067.42, -1763.58, 13.5685, 721.493, 1474.74, 3001.09, 17, 311, 1318, 0, '', 'Gym', 0, 0, 0, 0, 0),
(132, 0, 2380.52, -1785.67, 13.5468, 1611.86, 59.6047, 1009.77, 14, 32781, 1314, 0, '', '3301 Imperial Av', 0, 0, 0, 1, 0),
(133, 0, 2360.09, -1796, 13.5468, 1611.49, 59.827, 1009.77, 14, 32782, 1314, 0, '', '3303 Imperial Av', 0, 0, 0, 1, 0),
(134, 0, 2326.46, -1775.95, 13.5619, 1611.49, 59.827, 1009.77, 14, 32778, 1314, 0, '', '3307 Imperial Av', 500, 4, 0, 1, 0),
(136, 0, 1780.63, -1806.13, 13.5234, 2796.7, -2156.33, 3000.97, 15, 32776, 1314, 0, '', '6502 Church St', 500, 4, 0, 1, 0),
(137, 0, 1449.21, -1848.99, 13.9687, 2797.44, -2156.35, 3000.97, 14, 32775, 1314, 0, '', '549 Metropolitan Av', 0, 0, 0, 1, 0),
(139, 0, 2002.47, -1594.07, 13.5774, 2797.48, -2156.36, 3000.97, 16, 32767, 1314, 0, '', '3597 Idlewood', 500, 4, 0, 1, 0),
(140, 0, 1987, -1604.96, 13.5312, 2797.48, -2156.36, 3000.97, 16, 32768, 1314, 0, '', '6548 Idlewood', 1, 5, 0, 1, 0),
(141, 0, 2284.59, -1906.47, 14.9296, 2797.23, -2155.98, 3000.97, 15, 32769, 1314, 0, '', '6598 Willowfield', 0, 0, 0, 1, 0),
(142, 0, 2261.48, -1906.72, 14.9375, 2797.23, -2155.98, 3000.97, 15, 32771, 1314, 0, '', '9854 Willowfield', 0, 0, 0, 1, 0),
(143, 0, 1871.08, -2019.73, 13.5468, 1611.29, 59.4664, 1009.77, 14, 32772, 1314, 0, '', '336 Corona St', 0, 0, 0, 1, 0),
(144, 0, 1867.56, -2004.16, 13.5468, 1611.29, 59.4664, 1009.77, 14, 32773, 1314, 0, '', '371 Corona St', 0, 0, 0, 1, 0),
(145, 0, 1833.05, -1995.8, 13.5468, 1611.29, 59.4664, 1009.77, 14, 32777, 1314, 0, '', '378 Corona St', 0, 0, 0, 1, 0),
(146, 0, 2281.45, -2364.66, 13.5469, 222.551, 1779.74, 1999.3, 15, 22, 1318, 0, '', 'LS Trash', 0, 0, 0, 0, 0),
(147, 0, 1471.18, -1177.77, 23.9241, 1569.06, -1234.6, 1089.87, 22, 25, 1318, 0, '', 'Bureau du procureur', 0, 0, 0, 0, 0),
(150, 0, -2299.13, -2318.58, 4500.97, 1559.5, -1693.58, 2723.11, 25, 25, 1318, 0, '', '', 0, 0, 0, 0, 0),
(153, 0, 2292.26, -1722.69, 13.5468, 963.019, 1376.93, 2498.06, 21, 10587089, 1314, 0, '', '586, Ganton Housing Unit', 500, 4, 0, 1, 0),
(154, 0, 2506.4, -1751.53, 13.4926, 499.771, 1754.64, 5801.09, 12, 13871408, 1314, 0, '', '257, Ganton Housing Unit #1', 500, 4, 0, 1, 0),
(155, 0, 2495.81, -1759.59, 13.5468, 240.734, 1734.63, 3001, 22, 16410295, 1314, 0, '', '259, Ganton Housing Unit #2', 500, 4, 0, 1, 0),
(156, 0, 2492.54, -1725.15, 13.5468, -1029.59, 1547.83, 505.676, 14, 10224517, 1314, 0, '', '258, Ganton Housing Unit', 500, 4, 0, 1, 0),
(157, 0, 1863.88, -1597.58, 14.3062, 2797.23, -2156.31, 3000.97, 14, 12272035, 1314, 0, '', '2388, Iddlewood', 500, 4, 0, 1, 0),
(158, 0, 1909.97, -1597.81, 14.3062, 2797.23, -2156.31, 3000.97, 14, 16440400, 1314, 0, '', '2390, Iddlewood', 500, 4, 0, 1, 0),
(161, 0, 1419.17, -1640.32, 13.5468, 167.779, 125.126, 7603.21, 11, 16421428, 1314, 0, '', '310 Pershing Sq', 500, 4, 0, 1, 0),
(163, 0, 1419.18, -1623.93, 13.5468, -1346.25, -1068.86, 3174.86, 20, 17764575, 1314, 0, '', '312 Pershing Sq', 0, 0, 0, 1, 0),
(164, 0, 1377.71, -1794.36, 13.4954, 2538.78, 460.552, 3312.06, 21, 14939626, 1314, 0, '', '8795, Pershing Square Senior Housing', 0, 0, 0, 1, 0),
(167, 0, 1498.45, -1582.38, 13.5468, 2538.97, 461.146, 3312.06, 21, 14055209, 1314, 0, '', '380 Pershing Sq', 0, 0, 0, 1, 0),
(168, 0, 2064.03, -1876.38, 13.5589, 2335.93, -1195.29, 4199.21, 17, 13920946, 1314, 0, '', '586 Guantanamo Ave. #1', 0, 0, 0, 1, 0),
(169, 0, 2063.93, -1871.88, 13.5589, 2335.93, -1195.29, 4199.21, 17, 16368005, 1314, 0, '', '586 Guantanamo Ave. #2', 0, 0, 0, 1, 0),
(170, 0, 2048.57, -1876.4, 13.5589, 962.879, 1376.8, 2498.06, 21, 18158891, 1314, 0, '', '586 Guantanamo Ave. #3', 0, 0, 0, 1, 0),
(171, 0, 2048.41, -1871.88, 13.5589, 962.879, 1376.8, 2498.06, 21, 10965728, 1314, 0, '', '586 Guantanamo Ave. #4', 0, 0, 0, 1, 0),
(172, 0, 1975.99, -1922.66, 13.5468, 499.65, 1754.39, 5801.09, 12, 17761866, 1314, 0, '', '55 Washington Street', 0, 0, 0, 1, 0),
(173, 0, 2163.78, -1661.17, 15.0859, 1611.32, 59.7814, 1009.77, 14, 14840176, 1314, 0, '', 'Hawkinson Bloc C', 0, 0, 0, 1, 0),
(174, 0, 2144.63, -1688.9, 15.0859, 1611.32, 59.7814, 1009.77, 14, 15260254, 1314, 0, '', 'Hawkinson Bloc E', 0, 0, 0, 1, 0),
(175, 0, 2139.13, -1697.51, 15.0859, 1611.32, 59.7814, 1009.77, 14, 15495222, 1314, 0, '', 'Hawkinson Bloc F', 0, 0, 0, 1, 0),
(176, 0, 1991.29, -1991.44, 13.5468, 2336, -1195.42, 4199.21, 17, 13481960, 1314, 0, '', '250, Gates St. Complex ', 0, 0, 0, 1, 0),
(177, 0, 1883.95, -1272.55, 13.5468, 2797.66, -2156.28, 3000.97, 16, 14981919, 1314, 0, '', '8759, Darling Glen Appartements', 0, 0, 0, 1, 0),
(178, 0, 2144.42, -1729.41, 13.5415, 499.602, 1754.65, 5801.09, 12, 14184242, 1314, 0, '', 'Iddlewood Complex', 0, 0, 0, 1, 0),
(180, 0, 1616.03, -1897.58, 13.5491, 240.833, 1734.34, 3001, 22, 18475382, 1314, 0, '', '522, Metropolitan Ave', 0, 0, 0, 1, 0),
(181, 0, 1387.72, -1016.03, 26.5558, 2538.8, 460.553, 3312.06, 21, 12685219, 1314, 0, '', '8965, Main Street Housing', 0, 0, 0, 1, 0),
(182, 0, 2334.61, -1266.12, 27.9692, 2335.98, -1195.73, 4199.21, 17, 15096141, 1314, 0, '', '5236, Los Flores Appartements', 0, 0, 0, 1, 0),
(183, 0, 2334.63, -1234.66, 27.9765, 2335.96, -1195.73, 4199.21, 17, 10761008, 1314, 0, '', '1254, Los Flores Appartements', 0, 0, 0, 1, 0),
(184, 0, 1780.57, -1258.77, 14.9113, 1282.01, 1272.83, 2107.75, 14, 16048179, 1314, 0, '', '250, Park Ave', 0, 0, 0, 1, 0),
(185, 0, 2334.66, -1204, 27.9765, 2335.96, -1195.73, 4199.21, 17, 10916859, 1314, 0, '', '7562, Los Flores Appartements', 0, 0, 0, 1, 0),
(186, 0, 2244.69, -1408.83, 24, 240.835, 1733.99, 3001, 22, 14215565, 1314, 0, '', '4237, Jefferson Housing', 0, 0, 0, 1, 0),
(187, 0, 2229.64, -1473.36, 23.8796, 240.835, 1733.99, 3001, 22, 12462067, 1314, 0, '', '3287, Jefferson Housing', 0, 0, 0, 1, 0),
(188, 0, 2179.13, -1600.01, 14.3459, -160.078, 2448.28, 3001.09, 14, 17622249, 1314, 0, '', 'Hawkinson Bloc A', 0, 0, 0, 1, 0),
(189, 0, 2151.21, -1598.49, 14.3457, -160.078, 2448.28, 3001.09, 14, 13103500, 1314, 0, '', 'Hawkinson Bloc B', 0, 0, 0, 1, 0),
(190, 0, 2143.68, -1662.83, 15.0859, -160.078, 2448.28, 3001.09, 14, 16061478, 1314, 0, '', 'Hawkinson Bloc D', 0, 0, 0, 1, 0),
(191, 0, 2157.18, -1709.22, 15.0859, -160.078, 2448.28, 3001.09, 14, 12121615, 1314, 0, '', 'Hawkinson Bloc G', 0, 0, 0, 1, 0),
(192, 0, 1359.98, -1853.5, 13.5703, 1282.26, 1272.9, 2107.75, 14, 13421787, 1314, 0, '', '150, Metropolitan Ave', 0, 0, 0, 1, 0),
(193, 0, 1008.72, -1084, 23.8281, 240.966, 1734.35, 3001, 22, 11634178, 1314, 0, '', 'Chinatown complex #1', 0, 0, 0, 1, 0),
(194, 0, 1008.64, -1090.88, 23.8281, 240.812, 1734.35, 3001, 22, 14721209, 1314, 0, '', 'Chinatown complex #2', 0, 0, 0, 1, 0),
(195, 0, 2440.67, -1517.24, 23.9953, -159.979, 2448.41, 3001.09, 14, 16967069, 1314, 0, '', 'Los Flores complex #1', 0, 0, 0, 1, 0),
(196, 0, 2261.97, -1722.7, 13.5468, -1029.79, 1547.94, 505.676, 14, 18216305, 1314, 0, '', '584 Ganton Housing Unit', 0, 0, 0, 1, 0),
(197, 0, 2037.52, -1761.96, 13.5468, 2335.71, -1195.38, 4199.21, 17, 12360892, 1314, 0, '', 'Iddlewood Housing Unit', 0, 0, 0, 1, 0),
(198, 0, 2266.56, -1785.32, 13.5469, 1611.09, 59.3176, 1009.77, 14, 12002240, 1314, 0, '', '3311, Imperial Av', 0, 0, 0, 1, 0),
(199, 0, 2247.09, -1796.02, 13.5468, 1611.09, 59.3176, 1009.77, 14, 18866090, 1314, 0, '', '3013, Imperial Av', 0, 0, 0, 1, 0),
(200, 0, 2299.59, -1761.66, 13.6199, 1611.09, 59.3176, 1009.77, 14, 17348798, 1314, 0, '', '3015, Imperial Av', 0, 0, 0, 1, 0),
(201, 0, 2151.59, -1717.83, 15.0859, -159.816, 2448.35, 3001.09, 14, 10469078, 1314, 0, '', 'Hawkinson Bloc G', 0, 0, 0, 1, 0),
(202, 0, 2165.92, -1671.21, 15.0731, -159.816, 2448.35, 3001.09, 14, 14552929, 1314, 0, '', 'Hawkinson Bloc C', 0, 0, 0, 1, 0),
(203, 0, 893.657, -1635.72, 14.9296, 161.012, 2486.12, -88.914, 21, 11957940, 1314, 0, '', 'Marina, Bâtiment A', 0, 0, 0, 1, 0),
(204, 0, 865.252, -1633.85, 14.9296, 161.012, 2486.12, -88.914, 21, 11656753, 1314, 0, '', 'Marina, Bâtiment B', 0, 0, 0, 1, 0),
(205, 0, 981.851, -1162.09, 25.0859, 1281.7, 1272.69, 2107.75, 14, 16961702, 1314, 0, '', '144, Vinewood Blvd', 0, 0, 0, 1, 0),
(206, 0, 2337.06, -1804.27, 13.5469, 1611.18, 59.8171, 1009.77, 14, 13973572, 1314, 0, '', '3305, Imperial Av', 0, 0, 0, 1, 0),
(207, 0, 2336.67, -1761.6, 13.5469, 1611.18, 59.8171, 1009.77, 14, 11572727, 1314, 0, '', '3303, Imperial Av', 0, 0, 0, 1, 0),
(208, 0, 1628.69, -1903.39, 13.5532, 240.929, 1734.09, 3001, 22, 10316471, 1314, 0, '', '520 Metropolitan Ave', 0, 0, 0, 1, 0),
(209, 0, 2141.18, -1652.65, 15.0859, 1611.03, 59.671, 1009.77, 14, 16782606, 1314, 0, '', '6459 Iddlewood', 0, 0, 0, 1, 0),
(210, 0, 1739.15, -1269.25, 13.5426, 2538.92, 461.144, 3312.06, 21, 15818249, 1314, 0, '', '416, Park Ave', 0, 0, 0, 1, 0),
(211, 0, 1573.88, -1274.09, 17.486, 2538.92, 461.144, 3312.06, 21, 15637452, 1314, 0, '', '380, Park Ave', 0, 0, 0, 1, 0),
(213, 0, 2174.93, -1742.11, 13.5508, -1029.66, 1547.77, 505.676, 14, 15225499, 1314, 0, '', '1020, San Andreas Blvd', 0, 0, 0, 1, 0),
(215, 0, 2070.71, -1796.5, 13.5468, 241.047, 1734.54, 3001, 22, 11575439, 1314, 0, '', '470 Guantanamo Ave', 0, 0, 0, 1, 0),
(216, 0, 1730.14, -1181.69, 23.8383, 160.693, 2486.14, -88.914, 21, 14744286, 1314, 0, '', '416 E. Vinewood', 0, 0, 0, 1, 0),
(217, 0, 1830.36, -1173.33, 23.8281, -1345.76, -1068.88, 3174.86, 20, 14729489, 1314, 0, '', '313 E. Vinewood', 0, 0, 0, 1, 0),
(218, 0, 2404.67, -1548.68, 24.164, -160.031, 2448.46, 3001.09, 14, 12424017, 1314, 0, '', 'Los Flores complex', 0, 0, 0, 1, 0),
(219, 0, 2030.13, -1761.96, 13.5468, 2504.88, 34.1466, 2994.11, 19, 13056783, 1314, 0, '', 'Iddlewood Housing Unit', 0, 0, 0, 1, 0),
(220, 0, 975.481, -1162.43, 25.0916, 1281.69, 1273.04, 2107.75, 14, 12845053, 1314, 0, '', '116, Vinewood Blvd', 0, 0, 0, 1, 0),
(221, 0, 1980.49, -1999.5, 13.5468, 962.931, 1377.18, 2498.06, 21, 16980709, 1314, 0, '', '252, Gate St complex', 0, 0, 0, 1, 0),
(222, 0, 1183.2, -1098.84, 28.2578, 2797.1, -2156.19, 3000.97, 14, 12475390, 1314, 0, '', '154 Temple St', 0, 0, 0, 1, 0),
(223, 0, 2324.44, -1218.84, 27.9765, 1610.86, 59.9312, 1009.77, 14, 14784446, 1314, 0, '', '1256, Los Flores Complex Appartments', 0, 0, 0, 1, 0),
(224, 0, 1420.86, -1180.11, 25.9921, 2538.28, 461.049, 3312.06, 21, 13980002, 1314, 0, '', 'Downtown Housing Complex', 0, 0, 0, 1, 0),
(225, 0, 2039.93, -1303.06, 23.9828, 1281.19, 1272.87, 2107.75, 14, 14664071, 1314, 0, '', 'Bahamas Appartments #1', 0, 0, 0, 1, 0),
(226, 0, 2036, -1312.85, 23.9809, 1281.19, 1272.87, 2107.75, 14, 11617270, 1314, 0, '', 'Bahamas Appartments #2', 0, 0, 0, 1, 0),
(227, 0, 2101.27, -1359.52, 23.9843, 2335.78, -1194.73, 4199.21, 17, 17814462, 1314, 0, '', '987 Jefferson', 0, 0, 0, 1, 0),
(228, 0, 2453.31, -1922.69, 13.539, 963.068, 1377.03, 2498.06, 21, 11958357, 1314, 0, '', '454 willow', 0, 0, 0, 1, 0),
(229, 0, 1976.63, -2036.71, 13.5468, 240.735, 1734.34, 3001, 22, 18237745, 1314, 0, '', 'El Corona Housing', 0, 0, 0, 1, 0),
(230, 0, 2257.09, -1408.87, 24, 2335.64, -1195.18, 4199.21, 17, 18210722, 1314, 0, '', '4239, Jefferson Housing', 0, 0, 0, 1, 0),
(231, 0, 2232.23, -1408.87, 24, 2335.64, -1195.18, 4199.21, 17, 13222737, 1314, 0, '', '4235, Jefferson Housing', 0, 0, 0, 1, 0),
(232, 0, 2263.55, -1458.96, 24.0085, 962.933, 1376.99, 2498.06, 21, 14599762, 1314, 0, '', '3285, Jefferson Housing', 0, 0, 0, 1, 0),
(233, 0, 1852.34, -1145.05, 23.8338, 2797.29, -2156, 3000.97, 14, 10273875, 1314, 0, '', 'Park North Housing', 0, 0, 0, 1, 0),
(234, 0, 2490.49, -1759.88, 13.5468, -1029.74, 1547.36, 505.676, 14, 12975976, 1314, 0, '', '985, Ganton Housint Unit #3', 0, 0, 0, 1, 0),
(235, 0, 2506.72, -1746.14, 13.5203, -1029.74, 1547.36, 505.676, 14, 15152090, 1314, 0, '', '125, Ganton Housint Unit #3', 0, 0, 0, 1, 0),
(236, 0, 2231.54, -1458.24, 24.0146, -1029.74, 1547.36, 505.676, 14, 17043428, 1314, 0, '', '3186, Jefferson Housing', 0, 0, 0, 1, 0),
(237, 0, 1412.81, -1486.88, 20.4406, 2263.77, 2464.36, 3240.12, 27, 313, 1314, 0, '', 'Logement de fonction', 0, 0, 0, 0, 0),
(239, 0, 2289.32, -1775.95, 13.5469, 2281.03, -1807.65, 3580.43, 40, 18800286, 1314, 0, '', '1954 ganton', 0, 0, 0, 1, 0),
(240, 0, 2048.43, -1090.95, 24.6183, 2335.79, -1195.2, 4199.21, 17, 17254335, 1314, 0, '', '145 Glenpark', 0, 0, 0, 1, 0),
(241, 0, 499.552, -1360.64, 16.3689, 207.055, -138.805, 1003.51, 3, 285, 1318, 1, '', 'Los Santos Clothes', 0, 0, 1, 0, 0),
(242, 0, 2380.74, -1213.67, 27.4222, 499.612, 1754.67, 5801.09, 12, 10156544, 1314, 0, '', 'Los Flores Housing', 0, 0, 0, 1, 0),
(243, 0, 1995.49, -1312.73, 23.9808, 1610.92, 59.6048, 1009.77, 14, 11656897, 1314, 0, '', 'Bloc 3', 0, 0, 0, 1, 0),
(245, 0, 1981.64, -1298.64, 23.9828, 1611.14, 59.88, 1009.77, 14, 17560433, 1314, 0, '', 'Bloc 4', 0, 0, 0, 1, 0),
(246, 0, 2002.33, -1782.28, 13.5536, 2505.15, 34.3475, 2994.11, 19, 10778028, 1314, 0, '', 'Bloc 7', 0, 0, 0, 1, 0),
(248, 0, 2266.58, -2013.74, 13.5442, 2538.99, 461.422, 3312.06, 21, 11952582, 1314, 0, '', '4631A Sheelytown St.', 0, 0, 0, 1, 0),
(249, 0, 2275.17, -2013.75, 13.5442, 1281.53, 1272.61, 2107.75, 14, 13179962, 1314, 0, '', '4631B Sheelytown St.', 0, 0, 0, 1, 0),
(250, 0, 1746.04, -1129.38, 24.3847, 409.24, -1706.87, 2826.9, 93, 30, 1318, 0, '', 'Équipement Room', 0, 0, 0, 0, 0),
(251, 24, 4.4621, 2506.78, 4000.97, 1198.44, 682.946, 2700.97, 94, 31, 1318, 0, '', 'Salle de sport', 0, 0, 0, 0, 13),
(252, 0, 648.787, -1357.16, 13.5681, -2423.21, 2038.97, 2501.09, 83, 84, 1318, 0, '', 'Studio TV', 0, 0, 0, 0, 0),
(253, 0, 1797.72, -1578.65, 14.0877, 2210.08, -2153.97, 3001.09, 138, 38, 1318, 1, '', 'Prison de Los Santos', 0, 0, 0, 0, 0),
(254, 0, 1772.23, -1548.07, 9.9063, 2205.95, -2148.6, 3001.09, 138, 38, 1318, 0, '', 'Prison de Los Santos #2', 0, 0, 0, 0, 0),
(255, 38, 2194.67, -2150.67, 3001.09, -2678.02, 1029.38, 2566.14, 137, 102, 1318, 0, '', 'Bloc principal\r\n', 0, 0, 0, 0, 138),
(256, 102, -2673.09, 1035.54, 2566.14, 1195.37, 680.767, 2200.97, 143, 43, 1318, 0, '', 'Salle de musculation', 0, 0, 0, 0, 137),
(257, 102, -2682.87, 1035.26, 2566.14, 1206.01, 675.224, 2200.97, 144, 44, 1318, 0, '', 'Bibliothèque ', 0, 0, 0, 0, 137),
(258, 102, -2659.05, 1041.01, 2566.14, -2020.52, 773.588, 2273.77, 130, 30, 1318, 0, '', 'Douches', 0, 0, 0, 0, 137),
(259, 102, -2671.95, 1051.66, 2566.13, -2319.86, 144.238, 2240.68, 132, 32, 1318, 0, '', 'Cantine', 0, 0, 0, 0, 137),
(260, 38, 2214.34, -2151.69, 3001.09, -2752.21, 398.564, 2569.67, 131, 31, 1318, 0, '', 'Parloir visiteur', 0, 0, 0, 0, 138),
(261, 102, -2680.02, 1032.28, 2566.14, -2768.1, 408.76, 2569.67, 131, 31, 1318, 0, '', 'Parloir détenu', 0, 0, 0, 0, 137),
(262, 0, 2628.1, -1067.91, 69.7155, 1610.9, 59.7338, 1009.77, 14, 17816659, 1314, 0, '', 'Plazza Avenue', 0, 0, 0, 1, 0),
(263, 0, 2017.43, -2054.36, 13.5468, 1281.48, 1272.78, 2107.75, 14, 15526302, 1314, 0, '', 'K-Chyovkaya 01', 0, 0, 0, 1, 0),
(264, 0, 2019.7, -2037.61, 13.5468, 1281.48, 1272.78, 2107.75, 14, 14379747, 1314, 0, '', 'K-Chyovkaya 02', 0, 0, 0, 1, 0),
(265, 0, 1775.12, -1805.32, 13.5234, 1281.72, 1272.5, 2107.75, 14, 15274573, 1314, 0, '', '6500 Church St', 0, 0, 0, 1, 0),
(266, 0, 2440.51, -1922.79, 13.5468, -160.271, 2448.57, 3001.09, 14, 10341119, 1314, 0, '', '452 Willow', 0, 0, 0, 1, 0),
(267, 0, 1091.55, -1292.97, 17.0468, 963.063, 1376.35, 2498.06, 21, 15167155, 1314, 0, '', 'Chinatown', 0, 0, 0, 1, 0),
(268, 0, 1096.41, -1290.59, 13.554, 167.245, 125.267, 7603.21, 11, 15515416, 1314, 0, '', 'Chinatown complex', 0, 0, 0, 1, 0),
(269, 0, 1685.59, -1523.25, 13.5731, 1282.12, 1272.47, 2107.75, 14, 18368876, 1314, 0, '', 'Little Italy Appartments', 0, 0, 0, 1, 0),
(270, 0, 1685.64, -1515.02, 13.5731, 1282.12, 1272.47, 2107.75, 14, 14665659, 1314, 0, '', 'Little Italy Appartments', 0, 0, 0, 1, 0),
(274, 0, 1752.69, -1894.04, 13.5573, 1281.56, 1272.86, 2107.75, 14, 12371314, 1314, 0, '', 'Appartements', 0, 0, 0, 1, 0),
(275, 0, 1273.44, 238.424, 19.6559, 167.257, 125.22, 7603.21, 11, 18475185, 1314, 0, '', 'Miller & Son\'s Appartment Complex', 0, 0, 0, 1, 0),
(276, 0, 2682, -1406.64, 30.4868, 2797.66, -2156.19, 3000.97, 14, 15167356, 1314, 0, '', 'Shtepi complexe\'s', 0, 0, 0, 1, 0),
(277, 0, 1752.68, -1911.95, 13.5674, 1281.74, 1272.79, 2107.75, 14, 10809367, 1314, 0, '', 'Appartements', 0, 0, 0, 1, 0),
(279, 0, 1419.37, -1553.47, 13.5625, 1395.61, 255.661, 2330.19, 0, 10, 1318, 1, '', 'Agence d\'emplois', 0, 0, 0, 0, 0),
(281, 0, 2695.63, -1704.49, 11.8438, -1398.1, 937.631, 1036.48, 15, 0, 1318, 1, '', 'Blood bowl', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `Bid` int(11) NOT NULL,
  `Name` varchar(64) NOT NULL,
  `Public` smallint(6) NOT NULL,
  `Caisse` int(11) NOT NULL,
  `Perm1` varchar(300) NOT NULL,
  `Perm2` varchar(64) NOT NULL,
  `Perm3` varchar(64) NOT NULL,
  `Perm4` varchar(64) NOT NULL,
  `Perm5` varchar(64) NOT NULL,
  `Perm6` varchar(64) NOT NULL,
  `VestX` decimal(10,4) NOT NULL,
  `VestY` decimal(10,4) NOT NULL,
  `VestZ` decimal(10,4) NOT NULL,
  `VestWorld` smallint(6) NOT NULL,
  `Phone` int(11) NOT NULL,
  `PhoneText` varchar(100) NOT NULL,
  `Freq` int(11) NOT NULL DEFAULT '0',
  `Forum` smallint(6) NOT NULL DEFAULT '0',
  `ForumHR` smallint(6) NOT NULL DEFAULT '0',
  `Chat` tinyint(4) NOT NULL DEFAULT '0',
  `Type` smallint(3) DEFAULT '0',
  `Taxe` decimal(10,4) NOT NULL,
  `Matos` smallint(6) NOT NULL,
  `Carbu` smallint(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `jobs`
--

INSERT INTO `jobs` (`Bid`, `Name`, `Public`, `Caisse`, `Perm1`, `Perm2`, `Perm3`, `Perm4`, `Perm5`, `Perm6`, `VestX`, `VestY`, `VestZ`, `VestWorld`, `Phone`, `PhoneText`, `Freq`, `Forum`, `ForumHR`, `Chat`, `Type`, `Taxe`, `Matos`, `Carbu`) VALUES
(1, 'LS Police Department', 150, 589598, 'JUGE LSPD S300 S301 S302 S303 S304 S305 S306 S307 S308 S309 S310 S311 MEGA MV01 MV04 BALI S265 S266 S267 S280 S281 S282 S283 S288 S285 S284 TOW FOUR CHECKAFFAIRE SERIE CAMERAVILLE JSERVICE EQUIPEMENT TASER CIVIL METTREDP MEN', 'BRG TRACEUR', 'MEEC RAFFAIRE RBRG', 'CLOSEARM LISTEVEH CAMERA JGOV', 'CLASSERAFFAIRE', '', '1564.9547', '-1690.6768', '1723.1079', 101, 911, 'Pouvez-vous donner le lieu et le pourquoi de l\'alerte s\'il vous plait ?!', 291827, 125, 0, 0, 0, '0.0000', 0, 0),
(4, 'Los Santos Fire Department', 120, 815316, 'LSFD EQUIPEMENT REAN HOPI IT02 IT04 BALI S148 S211 S274 S275 S276 S277 S278 S279 MV10 DECHARGER CORPS S308 S309', 'BRG', '', 'JGOV', 'MV11 HRLSFD', '', '11.4346', '2487.6450', '4000.9670', 24, 912, 'Indiquez-nous calmement l\'endroit où nous devons intervenir en urgence s\'il vous plait.', 912219, 256, 0, 0, 0, '0.0000', 0, 0),
(7, 'Spartan Repair', 0, 258193, 'TOW MECANO S008 S042 S050 STOCK COMMERCE', '', '', '', '', '', '1744.0916', '-1756.8788', '13.6114', 0, 7916, 'Besoin d\'un mécanicien pour votre véhicule ? Quel serait le lieu de rendez-vous ?', 306540, 150, 0, 0, 0, '20.0000', 1845, 7745),
(10, 'Mairie de Los Santos', 180, 5072865, 'MAIRIE MICRO', 'LICARME', '', 'JGOV', '', 'TAXE', '1489.5528', '1307.5195', '1093.2890', 11097, 0, '', 585858, 571, 16001, 0, 0, '0.0000', 0, 0),
(13, 'Bureau des juges', 160, 0, 'DOJ MV02 MEAV MICRO JURY JUGE DPFIN BJUGE', '', '', '', '', '', '0.0000', '0.0000', '0.0000', 0, 0, '', 0, 239, 0, 0, 0, '0.0000', 0, 0),
(17, 'Bureau du procureur', 0, 540006, 'DP PROC METTREDP DPFIN', '', '', '', '', '', '0.0000', '0.0000', '0.0000', 0, 0, '', 0, 255, 0, 0, 0, '0.0000', 0, 0),
(18, 'Andreas Sanitary', 0, 169989, 'POUB S016 S027 EQUIPEMENT', '', '', '', '', '', '222.7780', '1775.4260', '1999.2969', 22, 0, '', 0, 264, 0, 0, 0, '0.0000', 0, 0),
(19, 'Los Santos Motors', 0, 73752, 'TOW MECANO S008 S042 S050 STOCK GANTON', '', '', '', '', '', '2458.6194', '-1766.9739', '13.5741', 0, 9643, 'Besoin d\'un mécanicien pour votre véhicule ? Quel serait le lieu de rendez-vous ?', 0, 339, 0, 0, 0, '100.0000', 1829, 2241),
(23, 'Amine', 0, 0, '', '', '', '', '', '', '-51.9788', '2769.5051', '2083.2761', 25199, 0, '', 0, 1498, 0, 0, 0, '0.0000', 0, 0),
(20, 'Vanilla Unicorn Club', 0, 20401, 'TRUCK', '', '', '', '', '', '0.0000', '0.0000', '0.0000', 0, 3214, 'Bonjour, Kick&So Import and Export. Que puis-je faire pour vous?', 0, 0, 0, 0, 0, '0.0000', 0, 0),
(21, 'OD International Logistics', 0, 20002, 'TRUCK S202', 'S016', 'S260', 'S153', 'S295', 'S303', '2743.9228', '-2453.8652', '13.8622', 0, 550550, 'Bonjour, OD International Logistics à votre écoute.', 66321, 32767, 0, 0, 0, '0.0000', 0, 0),
(22, 'Los Santos Broadcasting Company', 0, 254586, 'NEWS', '', '', '', '', '', '12.0000', '12.0000', '8000.0000', 0, 11325, 'Bonjour et bienvenue sur le standard du LSBC. Qu\'elle est votre demande (indiquer le lieu aussi)?', 477565, 567, 0, 0, 0, '0.0000', 0, 0),
(24, 'Orpesa Internal Security', 0, 1, 'MEN EQUIPEMENT S071 S302 S309 S311 SECU S163 S164 S165 S166 S169 S096 S051 MEN', '', '', '', '', '', '1509.8586', '-1462.7065', '9.5000', 0, 999, 'Bonjour/bonsoir. Commerce Sécurity Service (CSS), que puis-je pour vous?', 989796, 1775, 0, 0, 0, '0.0000', 0, 0),
(25, 'Cinammon Yellow Cab', 0, 1, '', '', '', '', '', '', '0.0000', '0.0000', '0.0000', 0, 0, '', 0, 1889, 0, 0, 0, '0.0000', 0, 0),
(26, 'Vacant', 0, 0, 'TRUCK', '', '', '', '', '', '0.0000', '0.0000', '0.0000', 0, 0, '', 0, 1742, 0, 0, 0, '0.0000', 0, 0),
(30, 'Remboursement', 0, 6449502, '', '', '', '', '', '', '0.0000', '0.0000', '0.0000', 0, 0, '', 0, 1591, 0, 0, 0, '0.0000', 0, 0),
(27, 'Martial Security', 0, 1, 'EQUIPEMENT S163 S164 S217', '', '', '', '', '', '1292.0806', '-994.7120', '32.6953', 0, 98742, 'Bonjour, Perazza Security Corporation. Que puis-je faire pour vous?', 0, 2619, 0, 0, 0, '0.0000', 0, 0),
(28, 'Bukowski Tuning', 0, 3199967, 'TUNING S008 S042 S050', '', '', '', '', '', '2466.9416', '-1900.2336', '13.5508', 0, 5411, 'Bonjour, Los Santos Tuning, que puis-je faire pour vous?', 0, 2952, 0, 0, 0, '20.0000', 0, 0),
(29, 'Los Santos Truck Rental', 0, 13, 'TRUCK TOLGA', '', '', 'S282 S288 S302 S303 S309 S310 S311 EQUIPEMENT', '', '', '362.6522', '193.7449', '1019.9912', 11601, 74532, 'Bonjour, Los Santos Truck Rental. Que puis-je faire pour vous?', 0, 447, 0, 0, 0, '0.0000', 0, 0),
(31, 'Departement of Correction', 135, 49989, 'EQUIPEMENT PRISON S071 S309 S310', '', '', '', '', '', '-2676.1538', '1039.0251', '2566.1350', 102, 0, '', 0, 1444, 0, 0, 0, '0.0000', 0, 0),
(40, 'King Business Agency', 0, 0, '', '', '', '', '', '', '0.0000', '0.0000', '0.0000', 0, 0, '', 0, 706, 0, 0, 0, '0.0000', 0, 0),
(42, 'Vacant', 0, 0, '', '', '', '', '', '', '0.0000', '0.0000', '0.0000', 0, 0, '', 0, 2188, 0, 0, 0, '0.0000', 0, 0),
(32, 'National Security Agency', 0, 0, '', '', '', '', '', '', '0.0000', '0.0000', '0.0000', 0, 0, '', 0, 2490, 0, 0, 0, '0.0000', 0, 0),
(33, 'Auto Parts', 0, 89667, 'LEFA TOW MECANO S008 S042 S050 STOCK COMMERCE', '', '', '', '', 'UPGRADEVEH', '1312.3320', '-852.9408', '39.7040', 0, 6666, 'Besoin d\'un mécanicien pour votre véhicule ? Quel serait le lieu de rendez-vous ?', 969696, 563, 0, 0, 0, '70.0000', 2338, 5839),
(36, 'Fury Corporation', 0, 0, '', '', '', '', '', '', '0.0000', '0.0000', '0.0000', 0, 0, '', 0, 2161, 0, 0, 0, '0.0000', 0, 0),
(34, 'Alamo Rent A Car', 0, 14000, '', '', '', '', '', '', '0.0000', '0.0000', '0.0000', 0, 0, '', 0, 389, 0, 0, 0, '0.0000', 0, 0),
(35, 'LS Luxury Car Rental', 0, 0, '', '', '', '', '', '', '0.0000', '0.0000', '0.0000', 0, 144866, 'LS Luxury Car Rental, que puis-je pour vous?', 0, 802, 0, 0, 0, '0.0000', 0, 0),
(37, 'G&D Ammunation', 0, 0, '', '', '', '', '', '', '0.0000', '0.0000', '0.0000', 0, 0, '', 0, 1267, 0, 0, 0, '0.0000', 0, 0),
(38, 'Vacant', 0, 38, '', '', '', '', '', '', '0.0000', '0.0000', '0.0000', 0, 0, '', 0, 2979, 0, 0, 0, '0.0000', 0, 0),
(39, 'Vacant', 0, 0, '', '', '', '', '', '', '0.0000', '0.0000', '0.0000', 0, 0, '', 0, 1759, 0, 0, 0, '0.0000', 0, 0),
(43, 'Civilian Defence Force', 0, 15001, 'S163 S164 EQUIPEMENT', 'CSD', '', 'S165 S166', '', '303', '2315.6040', '-1753.6234', '2024.3739', 12353, 7777, 'Civilian Defence Force à votre écoute, que puis-je pour vous?', 0, 2043, 0, 0, 0, '0.0000', 0, 0),
(41, 'Montgommery Clubhouse', 0, 0, 'HELLPERM', '', '', '', '', '', '0.0000', '0.0000', '0.0000', 0, 0, '', 0, 852, 0, 0, 0, '0.0000', 0, 0),
(45, 'Gary Brand Private Clinic', 0, 0, '', '', '', '', '', '', '0.0000', '0.0000', '0.0000', 0, 0, '', 0, 1018, 0, 0, 0, '0.0000', 0, 0),
(44, 'Brasilock FM', 0, 0, '', '', '', '', '', '', '0.0000', '0.0000', '0.0000', 0, 0, '', 0, 2185, 0, 0, 0, '0.0000', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `jobs_banque`
--

CREATE TABLE `jobs_banque` (
  `Time` int(11) NOT NULL,
  `Day` smallint(3) NOT NULL,
  `Month` smallint(3) NOT NULL,
  `Texte` varchar(300) NOT NULL,
  `ID` smallint(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `jobs_centrale`
--

CREATE TABLE `jobs_centrale` (
  `Time` int(11) NOT NULL,
  `Day` smallint(3) NOT NULL,
  `Month` smallint(3) NOT NULL,
  `Texte` varchar(300) NOT NULL,
  `ID` smallint(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `jobs_inventaire`
--

CREATE TABLE `jobs_inventaire` (
  `Time` int(11) NOT NULL,
  `Day` smallint(3) NOT NULL,
  `Month` smallint(3) NOT NULL,
  `Texte` varchar(300) NOT NULL,
  `ID` smallint(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `jobs_radio`
--

CREATE TABLE `jobs_radio` (
  `Time` int(11) NOT NULL,
  `Day` smallint(3) NOT NULL,
  `Month` smallint(3) NOT NULL,
  `Texte` varchar(300) NOT NULL,
  `ID` smallint(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `jobs_vehicules`
--

CREATE TABLE `jobs_vehicules` (
  `Time` int(11) NOT NULL,
  `Day` smallint(3) NOT NULL,
  `Month` smallint(3) NOT NULL,
  `Texte` varchar(300) NOT NULL,
  `ID` smallint(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `jobs_work`
--

CREATE TABLE `jobs_work` (
  `Time` int(11) NOT NULL,
  `Day` smallint(3) NOT NULL,
  `Month` smallint(3) NOT NULL,
  `Texte` varchar(300) NOT NULL,
  `ID` smallint(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `limits_factions`
--

CREATE TABLE `limits_factions` (
  `Id` int(11) NOT NULL,
  `Date` int(11) NOT NULL,
  `Faction` smallint(3) NOT NULL,
  `Nombre` smallint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `listenoire`
--

CREATE TABLE `listenoire` (
  `SQLid` int(11) NOT NULL,
  `NumberPhone` int(11) NOT NULL,
  `Raison` varchar(105) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `logs_admin`
--

CREATE TABLE `logs_admin` (
  `Texte` varchar(300) NOT NULL,
  `Time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `logs_argent`
--

CREATE TABLE `logs_argent` (
  `Texte` varchar(300) NOT NULL,
  `Time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `logs_coffre`
--

CREATE TABLE `logs_coffre` (
  `Texte` varchar(300) NOT NULL,
  `Time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `logs_donner`
--

CREATE TABLE `logs_donner` (
  `Texte` varchar(300) NOT NULL,
  `Time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `logs_essence`
--

CREATE TABLE `logs_essence` (
  `Texte` varchar(300) NOT NULL,
  `Time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `logs_general`
--

CREATE TABLE `logs_general` (
  `Texte` varchar(300) NOT NULL,
  `Time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `logs_guerre`
--

CREATE TABLE `logs_guerre` (
  `Time` int(11) NOT NULL,
  `Texte` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `logs_house`
--

CREATE TABLE `logs_house` (
  `Time` int(11) NOT NULL,
  `Texte` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `logs_kills`
--

CREATE TABLE `logs_kills` (
  `Time` int(11) NOT NULL,
  `Texte` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `logs_leadco`
--

CREATE TABLE `logs_leadco` (
  `Texte` varchar(150) NOT NULL,
  `Time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `logs_lspd`
--

CREATE TABLE `logs_lspd` (
  `Time` int(11) NOT NULL,
  `Texte` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `logs_micro`
--

CREATE TABLE `logs_micro` (
  `Time` int(11) NOT NULL,
  `Texte` varchar(301) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `logs_mp`
--

CREATE TABLE `logs_mp` (
  `Texte` varchar(300) NOT NULL,
  `Time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `logs_nomoff`
--

CREATE TABLE `logs_nomoff` (
  `Texte` varchar(300) NOT NULL,
  `Time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `logs_persos`
--

CREATE TABLE `logs_persos` (
  `Time` int(11) NOT NULL,
  `Texte` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `logs_poser`
--

CREATE TABLE `logs_poser` (
  `Texte` varchar(300) NOT NULL,
  `Time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `logs_remboursement`
--

CREATE TABLE `logs_remboursement` (
  `Texte` varchar(300) NOT NULL,
  `Time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `logs_rename`
--

CREATE TABLE `logs_rename` (
  `Time` int(11) NOT NULL,
  `Texte` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `logs_sac`
--

CREATE TABLE `logs_sac` (
  `Texte` varchar(300) NOT NULL,
  `Time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `logs_serv`
--

CREATE TABLE `logs_serv` (
  `Day` smallint(3) NOT NULL,
  `Year` smallint(3) NOT NULL,
  `Month` smallint(10) NOT NULL,
  `Texte` varchar(300) NOT NULL,
  `Timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `logs_site`
--

CREATE TABLE `logs_site` (
  `timestamp` int(11) NOT NULL,
  `texte` varchar(255) NOT NULL,
  `Type` smallint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `logs_spec`
--

CREATE TABLE `logs_spec` (
  `Texte` varchar(150) NOT NULL,
  `Time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `logs_stock`
--

CREATE TABLE `logs_stock` (
  `Time` int(11) NOT NULL,
  `Texte` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `logs_transfert`
--

CREATE TABLE `logs_transfert` (
  `Date` int(11) NOT NULL,
  `Texte` varchar(350) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `machines`
--

CREATE TABLE `machines` (
  `SQLb` int(11) NOT NULL,
  `ModelID` smallint(5) DEFAULT '0',
  `X` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `Y` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `Z` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `RX` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `RY` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `RZ` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `Inte` int(11) NOT NULL DEFAULT '0',
  `VW` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `mapping_ls`
--

CREATE TABLE `mapping_ls` (
  `Rid` int(11) NOT NULL,
  `Compte` int(11) NOT NULL DEFAULT '0',
  `Date` int(11) NOT NULL,
  `AdressIP` varchar(16) CHARACTER SET latin1 NOT NULL,
  `CR` int(11) NOT NULL,
  `Etat` tinyint(4) NOT NULL DEFAULT '0',
  `Reponse` text CHARACTER SET latin1 NOT NULL,
  `Background` text CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `mapping_prive`
--

CREATE TABLE `mapping_prive` (
  `Rid` int(11) NOT NULL,
  `Compte` int(11) NOT NULL DEFAULT '0',
  `Date` int(11) NOT NULL,
  `AdressIP` varchar(16) CHARACTER SET latin1 NOT NULL,
  `CR` int(11) NOT NULL,
  `Etat` tinyint(4) NOT NULL DEFAULT '0',
  `Reponse` text CHARACTER SET latin1 NOT NULL,
  `Background` text CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `mapping_sa`
--

CREATE TABLE `mapping_sa` (
  `Rid` int(11) NOT NULL,
  `Compte` int(11) NOT NULL DEFAULT '0',
  `Date` int(11) NOT NULL,
  `AdressIP` varchar(16) CHARACTER SET latin1 NOT NULL,
  `CR` int(11) NOT NULL,
  `Etat` tinyint(4) NOT NULL DEFAULT '0',
  `Reponse` text CHARACTER SET latin1 NOT NULL,
  `Background` text CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `micros`
--

CREATE TABLE `micros` (
  `mSQL` int(11) NOT NULL,
  `X` decimal(10,4) NOT NULL,
  `Y` decimal(10,4) NOT NULL,
  `Z` decimal(10,4) NOT NULL,
  `mVW` int(11) NOT NULL,
  `Poseur` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `modperso`
--

CREATE TABLE `modperso` (
  `Rid` int(11) NOT NULL,
  `Compte` int(11) NOT NULL DEFAULT '0',
  `Perso` int(11) NOT NULL DEFAULT '0',
  `Name` varchar(20) CHARACTER SET latin1 NOT NULL,
  `Phys` smallint(6) NOT NULL DEFAULT '101',
  `Date` int(11) NOT NULL,
  `AdressIP` varchar(16) CHARACTER SET latin1 NOT NULL,
  `CR` int(11) NOT NULL,
  `Etat` tinyint(4) NOT NULL DEFAULT '0',
  `Reponse` text CHARACTER SET latin1 NOT NULL,
  `Background` text CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `objects`
--

CREATE TABLE `objects` (
  `Model` smallint(6) NOT NULL,
  `Info` int(11) NOT NULL,
  `PosX` decimal(10,4) NOT NULL,
  `PosY` decimal(10,4) NOT NULL,
  `PosZ` decimal(10,4) NOT NULL,
  `PosR` decimal(10,4) NOT NULL,
  `World` smallint(6) NOT NULL,
  `Time` int(11) NOT NULL,
  `Identif` int(11) NOT NULL DEFAULT '0',
  `Serie` int(11) NOT NULL,
  `Identification` int(11) DEFAULT NULL,
  `Caisse` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `offres`
--

CREATE TABLE `offres` (
  `id` smallint(3) NOT NULL,
  `prix` decimal(10,0) NOT NULL,
  `name` varchar(50) NOT NULL,
  `nb` smallint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `offres`
--

INSERT INTO `offres` (`id`, `prix`, `name`, `nb`) VALUES
(1, '2', '1 credit', 1),
(2, '4', '2 credits', 2),
(3, '6', '3 credits', 3),
(4, '8', '4 crédits', 4),
(5, '20', '11 crédits (au lieu de 10)', 11),
(6, '30', '17 crédits (au lieu de 15)', 17),
(7, '60', '36 crédits (au lieu de 30)', 36);

-- --------------------------------------------------------

--
-- Structure de la table `pcip`
--

CREATE TABLE `pcip` (
  `id` int(11) NOT NULL,
  `adresseip` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `phonehistorique`
--

CREATE TABLE `phonehistorique` (
  `PhNumber` int(11) NOT NULL,
  `Type` varchar(32) NOT NULL,
  `Number` int(11) NOT NULL,
  `Info` text NOT NULL,
  `Moment` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `phonelisten`
--

CREATE TABLE `phonelisten` (
  `Time` int(11) NOT NULL,
  `Phone` int(11) NOT NULL,
  `Texte` varchar(210) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `phonespeaking`
--

CREATE TABLE `phonespeaking` (
  `PhoneNumber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `poubelles`
--

CREATE TABLE `poubelles` (
  `SQLi` smallint(6) NOT NULL,
  `Model` smallint(4) NOT NULL,
  `X` decimal(10,4) NOT NULL,
  `Y` decimal(10,4) NOT NULL,
  `Z` decimal(10,4) NOT NULL,
  `A` decimal(10,4) NOT NULL,
  `Total` smallint(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `poubelles`
--

INSERT INTO `poubelles` (`SQLi`, `Model`, `X`, `Y`, `Z`, `A`, `Total`) VALUES
(1, 1359, '2868.3999', '-1953.0999', '10.8000', '0.0000', 0),
(2, 1337, '2688.3999', '-2013.5000', '13.1999', '179.9945', 0),
(3, 3035, '2743.0000', '-1941.5999', '13.3000', '0.0000', 0),
(4, 3035, '2791.3999', '-1947.4000', '13.3000', '180.0000', 0),
(5, 3035, '2519.6001', '-1948.5000', '13.3999', '90.0000', 0),
(6, 1359, '2654.1001', '-1668.5000', '10.6000', '0.0000', 0),
(7, 1337, '2959.0000', '-1458.9000', '10.5000', '352.0000', 0),
(8, 1337, '2852.8999', '-1336.5999', '10.6999', '96.0000', 0),
(9, 1359, '2800.5000', '-1254.3000', '46.7000', '0.0000', 0),
(10, 3035, '2681.0000', '-1097.8000', '69.0999', '90.0000', 0),
(11, 1359, '2652.3000', '-1246.5000', '49.7000', '0.0000', 0),
(12, 3035, '2452.2000', '-1174.9000', '36.5000', '0.0000', 0),
(13, 1337, '2460.6001', '-1247.0000', '23.7000', '316.0000', 0),
(14, 3035, '2389.8999', '-1247.3000', '24.1000', '0.0000', 0),
(15, 1337, '2440.7000', '-1371.8000', '23.7000', '182.0000', 0),
(16, 1359, '2599.0000', '-1459.5000', '33.4000', '0.0000', 0),
(17, 1359, '2441.3000', '-1494.0000', '23.7000', '0.0000', 0),
(18, 3035, '2355.8999', '-1478.9000', '23.7000', '180.0000', 0),
(19, 3035, '2564.3999', '-1487.5999', '23.7999', '0.0000', 0),
(20, 1359, '2360.6001', '-1373.9000', '23.7000', '0.0000', 0),
(21, 3035, '2334.7000', '-1281.3000', '27.7000', '0.0000', 0),
(22, 3035, '2334.0000', '-1219.2000', '27.7000', '0.0000', 0),
(23, 1337, '2345.3999', '-1166.0000', '27.0000', '0.0000', 0),
(24, 1337, '2566.8000', '-1035.2000', '69.1999', '0.0000', 0),
(25, 1337, '2426.5000', '-1015.7999', '54.0000', '98.0000', 0),
(26, 3035, '2605.0000', '-1059.5999', '69.4000', '268.0000', 0),
(27, 1337, '2451.3000', '-1097.2000', '42.5000', '172.0000', 0),
(28, 1359, '2464.0000', '-1668.5999', '13.1999', '0.0000', 0),
(29, 3035, '2276.3000', '-1672.0999', '15.0000', '92.0000', 0),
(30, 1337, '2223.2000', '-1637.5999', '15.1000', '0.0000', 0),
(31, 3035, '2426.1001', '-1778.9000', '13.3000', '180.0000', 0),
(32, 3035, '2361.8999', '-1765.7000', '13.3000', '90.0000', 0),
(33, 3035, '2299.2820', '-1776.7693', '13.2972', '90.0000', 0),
(34, 3035, '2253.1531', '-1803.5662', '13.2972', '180.0000', 0),
(35, 1337, '2255.3999', '-1758.8000', '13.1999', '180.0000', 0),
(36, 1337, '2208.3999', '-1785.8000', '12.8999', '0.0000', 0),
(37, 1337, '2228.3000', '-1714.5999', '13.1999', '270.0000', 0),
(38, 3035, '2254.0000', '-1908.5999', '13.3000', '270.0000', 0),
(39, 3035, '2325.1001', '-1949.8000', '13.3999', '180.0000', 0),
(40, 1337, '2360.0000', '-1983.3000', '13.1999', '224.0000', 0),
(41, 1359, '2404.6001', '-1905.9000', '13.1999', '0.0000', 0),
(42, 3035, '2425.0000', '-2064.5000', '13.3000', '180.0000', 0),
(43, 1337, '2480.8000', '-1995.4000', '13.1999', '0.0000', 0),
(44, 1337, '2433.8000', '-2019.9000', '13.1999', '180.0000', 0),
(45, 3035, '2232.6001', '-1992.4000', '13.3000', '270.0000', 0),
(46, 3035, '2244.6001', '-2195.6001', '13.3000', '226.0000', 0),
(47, 1337, '2304.3000', '-2334.8999', '13.1999', '134.0000', 0),
(48, 1337, '1926.9000', '-2135.3999', '13.1999', '0.0000', 0),
(49, 1359, '1971.5000', '-2051.7000', '13.1999', '0.0000', 0),
(50, 1359, '1881.7000', '-2013.5999', '13.1999', '0.0000', 0),
(51, 1359, '1813.7000', '-2013.5999', '13.3000', '0.0000', 0),
(52, 1337, '1916.5000', '-2041.9000', '13.1999', '0.0000', 0),
(53, 1337, '1883.2000', '-1971.9000', '13.1999', '0.0000', 0),
(54, 1337, '1688.3000', '-1975.0999', '8.5000', '180.0000', 0),
(55, 1359, '1718.9000', '-1888.7000', '13.3000', '0.0000', 0),
(56, 1359, '1714.9000', '-1918.3000', '13.3000', '0.0000', 0),
(57, 1359, '1721.0000', '-1854.9000', '13.3000', '0.0000', 0),
(58, 1359, '1811.2000', '-1821.9000', '13.1999', '0.0000', 0),
(59, 1359, '1810.2000', '-1871.2000', '13.3000', '0.0000', 0),
(60, 3035, '1857.7000', '-1843.4000', '13.3999', '90.0000', 0),
(61, 1359, '2071.0000', '-1921.7000', '13.1999', '0.0000', 0),
(62, 3035, '2092.8999', '-1867.8000', '13.3000', '180.0000', 0),
(63, 3035, '2108.1001', '-1823.0000', '13.3000', '0.0000', 0),
(64, 1359, '2078.6001', '-1762.8000', '13.3000', '0.0000', 0),
(65, 1359, '2092.0000', '-1806.7000', '13.1999', '0.0000', 0),
(66, 3035, '2194.3000', '-1809.7000', '13.3000', '268.0000', 0),
(67, 1359, '2177.2000', '-1762.7000', '13.1999', '0.0000', 0),
(68, 3035, '2127.3000', '-1728.8000', '13.3000', '90.0000', 0),
(69, 1337, '2174.2000', '-1664.5000', '14.6999', '42.0000', 0),
(70, 3035, '2112.8000', '-1631.7000', '13.1999', '182.0000', 0),
(71, 1337, '2162.3000', '-1612.0000', '14.0000', '0.0000', 0),
(72, 3035, '2045.7000', '-1624.4000', '13.3000', '270.0000', 0),
(73, 3035, '2037.5000', '-1694.2000', '13.3000', '90.0000', 0),
(74, 3035, '2016.5999', '-1763.7000', '13.3000', '90.0000', 0),
(75, 1359, '1951.7000', '-1777.0999', '13.1999', '86.0000', 0),
(76, 1337, '1992.0999', '-1701.0999', '13.1999', '90.0000', 0),
(77, 1337, '1992.0999', '-1667.8000', '13.1999', '90.0000', 0),
(78, 1337, '1991.5000', '-1631.7000', '13.1999', '0.0000', 0),
(79, 1337, '2020.5000', '-1596.4000', '13.1999', '0.0000', 0),
(80, 3035, '1925.9000', '-1593.9000', '13.3000', '90.0000', 0),
(81, 1337, '1869.7000', '-1602.9000', '13.1999', '0.0000', 0),
(82, 3035, '1907.4000', '-1778.0000', '13.3000', '270.0000', 0),
(83, 3035, '1809.9000', '-1719.3000', '13.3000', '272.0000', 0),
(84, 1359, '1721.7000', '-1703.2000', '13.1999', '0.0000', 0),
(85, 1359, '1722.0999', '-1613.3000', '13.1999', '338.0000', 0),
(86, 1359, '1804.4000', '-1627.5999', '13.1999', '0.0000', 0),
(87, 3035, '1611.0999', '-1884.9000', '13.3000', '90.0000', 0),
(88, 3035, '1518.7000', '-1849.8000', '13.3000', '180.0000', 0),
(89, 3035, '1463.5000', '-1847.4000', '13.3000', '180.0000', 0),
(90, 1359, '1462.8000', '-1907.8000', '22.0000', '0.0000', 0),
(91, 1359, '1240.0999', '-2037.0000', '59.5999', '0.0000', 0),
(92, 1337, '1692.2000', '-2102.3999', '13.1999', '0.0000', 0),
(93, 1337, '1757.9000', '-2123.1001', '13.1999', '180.0000', 0),
(94, 1337, '1812.7000', '-2132.8999', '13.1999', '88.0000', 0),
(95, 1359, '1592.5000', '-2335.3999', '13.1999', '0.0000', 0),
(96, 1359, '1631.0000', '-2237.6001', '13.1999', '0.0000', 0),
(97, 3035, '1366.4000', '-1882.9000', '13.3000', '90.0000', 0),
(98, 1359, '1356.0999', '-1742.5000', '13.1999', '0.0000', 0),
(99, 3035, '1377.2000', '-1774.8000', '13.3000', '180.0000', 0),
(102, 1359, '1452.9000', '-1659.4000', '13.5000', '0.0000', 0),
(103, 1337, '1391.0000', '-1569.7000', '13.1999', '342.0000', 0),
(104, 3035, '1464.0999', '-1507.8000', '13.3000', '270.0000', 0),
(105, 3035, '1642.0000', '-1691.7000', '13.3000', '270.0000', 0),
(106, 1359, '1679.5000', '-1673.2000', '19.8999', '0.0000', 0),
(107, 1337, '1664.8000', '-1539.4000', '13.1999', '274.0000', 0),
(108, 3035, '1714.9000', '-1479.9000', '13.3000', '230.0000', 0),
(109, 1359, '1658.0000', '-1430.4000', '13.1999', '0.0000', 0),
(110, 3035, '2171.6001', '-1505.5000', '23.7000', '270.0000', 0),
(111, 1337, '2138.7000', '-1426.2000', '23.6000', '270.0000', 0),
(112, 1359, '2099.5000', '-1374.0999', '23.7000', '0.0000', 0),
(113, 1337, '2203.2000', '-1463.0999', '23.6000', '90.0000', 0),
(114, 1337, '2201.3999', '-1375.0000', '23.6000', '0.0000', 0),
(115, 3035, '2093.3000', '-1344.9000', '23.7999', '182.0000', 0),
(116, 1337, '2138.5000', '-1310.4000', '23.6000', '180.0000', 0),
(117, 1337, '2098.8999', '-1288.3000', '24.0000', '0.0000', 0),
(118, 1337, '2158.5000', '-1263.8000', '23.6000', '92.0000', 0),
(119, 1337, '2220.6001', '-1290.4000', '24.2000', '0.0000', 0),
(120, 3035, '2259.6001', '-1258.5000', '23.7000', '0.0000', 0),
(121, 1337, '2226.3999', '-1230.4000', '23.6000', '180.0000', 0),
(122, 1359, '2134.5000', '-1206.5999', '23.7000', '0.0000', 0),
(123, 1337, '2209.3999', '-1144.5000', '25.3999', '154.0000', 0),
(124, 1337, '2081.3999', '-1182.9000', '23.5000', '272.0000', 0),
(125, 3035, '2056.5000', '-1101.8000', '24.2999', '2.0000', 0),
(126, 1359, '1961.2000', '-1125.9000', '25.7000', '0.0000', 0),
(127, 1337, '2171.3999', '-1088.0999', '25.2000', '0.0000', 0),
(128, 3035, '2018.7000', '-1049.8000', '24.5000', '244.0000', 0),
(129, 3035, '1854.9000', '-1072.5000', '23.6000', '0.0000', 0),
(130, 3035, '2083.1001', '-1259.0000', '23.7999', '0.0000', 0),
(131, 1337, '2014.9000', '-1284.2000', '23.6000', '180.0000', 0),
(132, 1359, '1862.4000', '-1250.3000', '13.3000', '0.0000', 0),
(133, 1337, '1992.3000', '-1330.3000', '23.6000', '0.0000', 0),
(134, 1359, '1997.3000', '-1450.5999', '13.3000', '0.0000', 0),
(135, 1359, '1788.9000', '-1372.7000', '15.5000', '0.0000', 0),
(136, 1359, '1734.8000', '-1281.0999', '13.3000', '52.0000', 0),
(137, 1359, '1592.8000', '-1288.0999', '17.2000', '0.0000', 0),
(138, 1359, '1463.2000', '-1142.3000', '24.1000', '0.0000', 0),
(139, 3035, '1520.0999', '-1021.7000', '23.6000', '88.0000', 0),
(140, 3035, '1670.5000', '-996.0000', '23.7999', '22.0000', 0),
(141, 3035, '1791.5000', '-1148.4000', '23.6000', '178.0000', 0),
(142, 1359, '1628.4000', '-1148.3000', '23.7999', '0.0000', 0),
(143, 1337, '2027.2000', '-971.7000', '39.5000', '26.0000', 0),
(144, 1337, '2147.0000', '-991.4000', '61.5999', '352.0000', 0),
(145, 1337, '2260.1001', '-1033.5000', '52.9000', '46.0000', 0),
(146, 1337, '2335.3000', '-1065.5000', '52.0000', '0.0000', 0),
(147, 1337, '1342.3000', '-918.2999', '35.2000', '0.0000', 0),
(148, 1337, '1445.5000', '-934.7000', '35.9000', '0.0000', 0),
(149, 1337, '1481.5000', '-903.4000', '55.2999', '188.0000', 0),
(150, 1337, '1528.0999', '-845.7999', '66.0999', '262.0000', 0),
(151, 1337, '1521.8000', '-765.5999', '79.5999', '314.0000', 0),
(152, 1337, '1464.2000', '-726.2999', '92.5000', '0.0000', 0),
(153, 1337, '1246.5999', '-737.7000', '94.6999', '210.0000', 0),
(154, 1337, '1070.0000', '-778.5999', '106.8000', '184.0000', 0),
(155, 1337, '1019.5999', '-795.7999', '101.5000', '113.9999', 0),
(156, 1337, '976.0000', '-814.9000', '97.3000', '202.0000', 0),
(157, 1337, '922.7000', '-843.5999', '93.1999', '208.0000', 0),
(158, 1337, '838.0999', '-864.5999', '69.0000', '0.0000', 0),
(159, 1337, '795.0000', '-882.0999', '57.7000', '0.0000', 0),
(160, 1337, '690.2999', '-1051.7000', '49.7999', '238.0000', 0),
(161, 1337, '565.4000', '-1131.0999', '50.4000', '30.0000', 0),
(162, 1337, '468.3999', '-1178.0999', '63.7999', '0.0000', 0),
(163, 1337, '396.5000', '-1159.7000', '78.3000', '0.0000', 0),
(164, 1337, '287.2999', '-1236.3000', '74.5000', '302.0000', 0),
(165, 1337, '217.6999', '-1270.2000', '64.1999', '50.0000', 0),
(166, 1337, '499.8999', '-1085.5999', '81.6999', '190.0000', 0),
(167, 1337, '558.0000', '-1062.9000', '74.8000', '214.0000', 0),
(168, 1337, '810.9000', '-772.7000', '76.0999', '110.0000', 0),
(169, 1337, '843.0999', '-756.7999', '85.0000', '312.0000', 0),
(170, 1337, '894.0000', '-720.7999', '107.3000', '62.0000', 0),
(171, 1337, '889.2999', '-761.2999', '95.8000', '0.0000', 0),
(172, 1337, '948.7999', '-700.7000', '121.9000', '290.0000', 0),
(173, 1337, '1009.0999', '-641.2999', '120.9000', '170.0000', 0),
(174, 1337, '1083.7000', '-628.5999', '113.0999', '0.0000', 0),
(175, 1337, '1276.3000', '-616.4000', '102.8000', '220.0000', 0),
(176, 1337, '951.7000', '-767.2000', '108.0999', '278.0000', 0),
(177, 1337, '840.0000', '-932.5000', '54.5999', '0.0000', 0),
(178, 1337, '413.2000', '-1251.9000', '51.2999', '206.0000', 0),
(179, 1337, '364.7999', '-1272.9000', '53.2999', '206.0000', 0),
(180, 1337, '275.5000', '-1302.0999', '53.5999', '0.0000', 0),
(181, 1337, '257.7000', '-1336.7000', '52.5999', '212.0000', 0),
(182, 1337, '215.3000', '-1346.4000', '51.0000', '46.0000', 0),
(183, 1337, '143.0000', '-1457.4000', '26.6000', '234.0000', 0),
(184, 3035, '1072.5000', '-1883.0000', '13.3000', '0.0000', 0),
(185, 1359, '993.0999', '-1848.7000', '12.5000', '0.0000', 0),
(186, 1359, '1075.0999', '-1790.7000', '13.3999', '0.0000', 0),
(187, 1359, '1138.7000', '-1619.0000', '13.6000', '0.0000', 0),
(188, 1359, '1274.3000', '-1542.5000', '13.3000', '0.0000', 0),
(189, 1359, '1234.5000', '-1416.3000', '13.1000', '0.0000', 0),
(190, 1359, '1230.5999', '-1287.3000', '13.1999', '0.0000', 0),
(191, 1359, '1332.2000', '-1270.4000', '13.3000', '0.0000', 0),
(192, 3035, '1330.8000', '-1231.5000', '13.3000', '0.0000', 0),
(193, 1337, '1082.9000', '-1385.0000', '13.3999', '0.0000', 0),
(194, 1359, '1047.8000', '-1582.5999', '13.1999', '0.0000', 0),
(195, 1359, '1029.3000', '-1509.7000', '13.1999', '0.0000', 0),
(196, 1359, '1027.0999', '-1692.4000', '13.1999', '0.0000', 0),
(197, 1337, '937.7000', '-1806.3000', '13.5000', '178.0000', 0),
(198, 1359, '956.5000', '-1750.0999', '13.1999', '0.0000', 0),
(199, 1359, '883.0999', '-1691.4000', '13.1999', '0.0000', 0),
(200, 1337, '907.2000', '-1640.8000', '13.1999', '0.0000', 0),
(201, 1337, '978.5000', '-1615.5999', '13.1999', '0.0000', 0),
(202, 3035, '987.5999', '-1590.8000', '13.3000', '180.0000', 0),
(203, 1359, '927.7999', '-1561.9000', '13.1999', '0.0000', 0),
(204, 1359, '927.7999', '-1499.7000', '13.1999', '0.0000', 0),
(205, 3035, '955.2000', '-1469.2000', '13.3000', '90.0000', 0),
(206, 1359, '815.4000', '-1795.8000', '12.6999', '36.0000', 0),
(207, 1359, '820.7999', '-2038.3000', '12.6000', '0.0000', 0),
(208, 1359, '822.7999', '-1613.8000', '13.3000', '0.0000', 0),
(209, 1359, '860.5000', '-1490.4000', '13.3000', '0.0000', 0),
(210, 1337, '779.9000', '-1483.0000', '13.1999', '0.0000', 0),
(211, 1337, '785.9000', '-1552.8000', '13.1999', '256.0000', 0),
(212, 1337, '763.0000', '-1663.7000', '3.7999', '270.0000', 0),
(213, 1337, '764.9000', '-1756.5000', '12.6999', '0.0000', 0),
(214, 1337, '800.7000', '-1738.0000', '13.1999', '90.0000', 0),
(215, 1337, '794.4000', '-1664.5999', '13.1999', '0.0000', 0),
(216, 1337, '683.2000', '-1575.3000', '13.8999', '0.0000', 0),
(217, 1337, '703.0999', '-1724.5000', '8.3000', '0.0000', 0),
(218, 1359, '673.2000', '-1861.0000', '5.1999', '0.0000', 0),
(219, 1359, '640.0999', '-1777.3000', '13.6999', '0.0000', 0),
(220, 1359, '534.7000', '-1767.0999', '14.0000', '0.0000', 0),
(221, 3035, '431.8999', '-1750.4000', '8.6000', '88.0000', 0),
(222, 1359, '468.0000', '-1818.5999', '5.1999', '0.0000', 0),
(223, 1359, '369.7999', '-2047.5999', '7.5000', '0.0000', 0),
(224, 1337, '392.0000', '-1843.2000', '7.5000', '180.0000', 0),
(225, 1337, '334.1000', '-1773.0000', '4.6999', '0.0000', 0),
(226, 1337, '272.2000', '-1770.0000', '4.0999', '0.0000', 0),
(227, 1337, '209.3999', '-1769.4000', '4.0000', '0.0000', 0),
(228, 1337, '166.5000', '-1769.0000', '4.0999', '0.0000', 0),
(229, 1359, '154.1999', '-1957.4000', '3.5000', '0.0000', 0),
(230, 1337, '648.5000', '-1628.4000', '14.6999', '272.0000', 0),
(231, 1337, '646.4000', '-1702.5000', '14.3000', '262.0000', 0),
(232, 1337, '649.7999', '-1494.5999', '14.5000', '0.0000', 0),
(233, 1359, '611.7000', '-1428.9000', '13.6999', '0.0000', 0),
(234, 1359, '722.9000', '-1482.5000', '1.7000', '0.0000', 0),
(235, 1359, '512.4000', '-1552.2000', '16.2000', '0.0000', 0),
(236, 1359, '555.2000', '-1427.9000', '15.8000', '10.0000', 0),
(237, 1359, '451.5000', '-1470.9000', '30.2999', '0.0000', 0),
(238, 1359, '394.5000', '-1528.5999', '32.0000', '0.0000', 0),
(239, 1359, '300.7999', '-1628.8000', '33.0999', '0.0000', 0),
(240, 1359, '291.7000', '-1479.0999', '32.7000', '0.0000', 0),
(241, 1359, '487.7000', '-1671.2000', '21.3999', '0.0000', 0),
(242, 1359, '462.2000', '-1603.5000', '25.2000', '0.0000', 0),
(243, 1337, '241.3000', '-1462.0000', '13.5000', '220.0000', 0),
(244, 3035, '366.8999', '-1341.5000', '14.3000', '113.9999', 0),
(245, 1337, '467.6000', '-1284.7000', '15.1000', '32.0000', 0),
(246, 1359, '522.0999', '-1349.8000', '15.6999', '0.0000', 0),
(247, 1337, '509.0000', '-1253.3000', '15.6999', '36.0000', 0),
(248, 1359, '643.9000', '-1232.3000', '18.1000', '0.0000', 0),
(249, 1359, '807.7999', '-1337.7000', '13.1999', '0.0000', 0),
(250, 1337, '755.5000', '-1039.7000', '23.3999', '0.0000', 0),
(251, 3035, '866.9000', '-1383.5000', '13.3000', '270.0000', 0),
(252, 1359, '927.7000', '-1416.0999', '13.1999', '0.0000', 0),
(253, 3035, '868.0999', '-1339.0999', '13.3000', '90.0000', 0),
(254, 1359, '926.5000', '-1337.5999', '13.1999', '0.0000', 0),
(255, 1337, '964.2999', '-1416.3000', '13.1999', '184.0000', 0),
(256, 1359, '1052.3000', '-1416.2000', '13.1999', '0.0000', 0),
(257, 1337, '1074.5000', '-1328.5000', '13.1999', '270.0000', 0),
(258, 1337, '969.4000', '-1309.8000', '13.1999', '0.0000', 0),
(259, 1359, '1033.2000', '-1339.5000', '13.3999', '0.0000', 0),
(260, 3035, '962.0999', '-1208.5000', '16.7999', '270.0000', 0),
(261, 1337, '1034.4000', '-1231.2000', '16.5000', '178.0000', 0),
(262, 1337, '973.0000', '-1097.2000', '23.5000', '268.0000', 0),
(263, 1337, '787.0999', '-1130.7000', '23.5000', '0.0000', 0),
(264, 1359, '831.5999', '-1095.5999', '24.0000', '20.0000', 0),
(265, 1359, '952.2000', '-984.7999', '38.7000', '0.0000', 0),
(266, 1359, '1072.8000', '-1029.5000', '31.7999', '0.0000', 0),
(267, 1337, '1013.5999', '-1050.0000', '31.2000', '178.0000', 0),
(268, 1337, '1120.7000', '-1028.5000', '31.5000', '0.0000', 0),
(269, 1337, '1072.2000', '-1110.8000', '24.0000', '94.0000', 0),
(270, 1337, '1093.0000', '-1081.3000', '26.6000', '272.0000', 0),
(271, 1359, '1093.0000', '-1130.5000', '23.5000', '0.0000', 0),
(272, 1337, '1152.3000', '-1081.4000', '26.6000', '90.0000', 0),
(273, 1337, '1173.0000', '-1087.8000', '25.7999', '268.0000', 0),
(274, 1337, '1183.2000', '-1023.5999', '32.2000', '0.0000', 0),
(275, 3035, '1242.7000', '-1004.0000', '32.4000', '188.0000', 0),
(276, 1337, '1252.3000', '-1087.9000', '26.2999', '88.0000', 0),
(277, 1337, '1273.0000', '-1078.5999', '27.2000', '268.0000', 0),
(278, 1359, '1213.0000', '-1079.2000', '28.7999', '16.0000', 0),
(279, 1337, '1339.2000', '-1078.3000', '24.5000', '86.0000', 0),
(280, 1359, '1250.5000', '-951.9000', '42.2000', '0.0000', 0),
(281, 1359, '1011.7999', '-947.4000', '42.0000', '0.0000', 0),
(282, 1359, '1218.4000', '-919.5999', '42.7999', '0.0000', 0),
(283, 1337, '797.2000', '-520.5000', '16.0000', '0.0000', 0),
(284, 1337, '731.2999', '-593.0999', '16.0000', '270.0000', 0),
(285, 1359, '655.7000', '-565.0000', '16.0000', '0.0000', 0),
(286, 1359, '654.2000', '-472.5000', '16.0000', '0.0000', 0),
(287, 3035, '196.6999', '-93.9000', '1.2999', '270.0000', 0),
(288, 1337, '1390.5000', '463.2000', '19.7999', '338.0000', 0),
(289, 1337, '1414.4000', '415.6000', '19.3999', '244.0000', 0),
(290, 1337, '2251.1001', '-108.5999', '26.2000', '182.0000', 0),
(291, 1359, '1125.9482', '-1507.0623', '15.4520', '0.0000', 0),
(292, 1359, '1134.9865', '-1563.0437', '13.2209', '0.0000', 0),
(293, 1359, '1061.2633', '-1490.2694', '13.2168', '0.0000', 0),
(294, 1359, '1154.5488', '-1425.9365', '15.4581', '0.0000', 0),
(295, 1359, '1111.2706', '-1415.1757', '13.2338', '0.0000', 0);

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `id` int(11) NOT NULL,
  `Cid` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `Prix` int(11) NOT NULL,
  `cat` smallint(6) NOT NULL,
  `cat2` int(11) NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT 'Commerce',
  `info` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `quest_rp`
--

CREATE TABLE `quest_rp` (
  `SQLid` int(11) NOT NULL,
  `Question` varchar(255) NOT NULL,
  `Rep1` varchar(255) NOT NULL,
  `Rep2` varchar(255) NOT NULL,
  `Rep3` varchar(255) NOT NULL,
  `BonneRep` tinyint(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `quest_rp`
--

INSERT INTO `quest_rp` (`SQLid`, `Question`, `Rep1`, `Rep2`, `Rep3`, `BonneRep`) VALUES
(1, 'Vous êtes en train de jouer dans une scène impliquant directement votre personnage, quand vous devez vous déconnecter du jeu, que faites-vous ?', 'Je préviens les joueurs que je suis obligé de me déconnecter et que je suis dans l\'incapacité de continuer la scène.', 'Je quitte directement la scène sans les prévenir.', 'Je fais ce que je veux, ça m\'est égal de l\'avis des autres.', 1),
(2, 'Qu\'est-ce que le revenge kill ?', 'C\'est le fait de faire une action très dure à réaliser sur un serveur roleplay.', 'C\'est le fait de se venger d\'une personne qu\'on n\'aime pas.', 'C\'est le fait de se venger de sa propre mort en tuant la personne qui nous a tué auparavant.', 3),
(3, 'Vous croisez une personne dans la rue qui vous regarde d\'une certaine manière, comment vous vous comportez ?', 'Je sors mon arme et je lui vide mon chargeur dessus, il n\'avait pas à me regarder de cette manière.', 'Selon le tempérament de mon personnage, soit je l\'ignore soit je lui demande quel est son problème.', 'Je me déconnecte avant qu\'il me vole mon argent.', 2),
(4, 'Lorsqu\'un agent de police vous interpelle puis vous ramène au commissariat pour une raison X par erreur, que faites-vous ?', 'Je lui demande une explication OOC en pleine scène.', 'Je rédige une plainte OOC sur l\'agent dans la section adéquate du forum.', 'Ce qui est IC reste IC je me débrouille pour prouver mon innocence à l\'agent.', 3),
(5, 'Quelle action ci-dessous s\'avère être du powergame ?', 'Fuir en étant braqué par une personne armée à moins d\'un mètre de distance.', 'Planter une personne avec un couteau.', 'Sauter d\'un petit muret et n\'y ressentir aucune douleur.', 1),
(6, 'Dans quel canal IC est-ce plus correct d\'utiliser des smileys ?', ' Par dialogue (votre personnage discute avec une personne dans la rue par exemple).', 'Par SMS.', 'Par radio.', 2),
(7, 'Vous jouez puis vous trouvez un bug non signalé dans le jeu, que faites-vous ?', 'J\'en profite au maximum et je me fais de l\'argent grâce à ce bug.', 'Je contribue au bon développement du serveur et je le signal aux administrateurs via le forum.', 'Je n\'en parle à personne, ce n\'est pas mon problème.', 2),
(8, 'Vous voulez utiliser l\'émote (/do), comment vous y prenez-vous?', '/do Rigole.', '/do L\'endroit est peu éclairé, il y a des vêtements déchirés au sol et une forte odeur d\'humidité se fait ressentir dans la pièce.', '/do Pense que Albert est con.', 2),
(9, 'Qu\'est-ce que c\'est que le character kill ?', 'C\'est le fait de se prendre pour Terminator. ', 'C\'est le fait de tuer un personnage (son identité complètement).', 'C\'est le fait de se téléporter avec un logiciel de triche.', 2),
(10, 'Qu\'est-ce que c\'est que le bunny-hop ?', 'C\'est le fait de sauter et courir en même temps pour aller plus vite.', 'C\'est le fait de rouler en moto tout en sautant des obstacles.', 'C\'est le fait de marcher avec un bug.', 1),
(11, 'Que signifie l\'acronyme "RP" ?', 'Role Play', 'Résidence Privée', 'Roleplayer', 1),
(12, 'Que faites vous si votre personnage en plein délit de fuite à pied se fait percuter par une voiture de police à plus de 40 km/h ?', 'Je fais une animation montrant bien que mon personnage tombe et je me relève quelques secondes plus tard avant que le policier m\'attrape. ', 'Par la douleur du choc, mon personnage ne peut pas continuer le délit de fuite.', 'Je cours, juste après le choc tout le monde peut le faire, ce n\'est pas non-rp.', 2),
(13, 'Qu\'est-ce que c\'est que le powergame ?', 'C\'est le fait de voler une moto à un joueur.', 'C\'est le fait de commettre une action totalement irréaliste.', ' C\'est le fait de d\'utiliser une information OOC dans un contexte IC.', 2),
(14, 'Qu\'est-ce que c\'est que le metagame ?', 'C\'est le fait d\'utiliser une information OOC dans un contexte IC.', 'C\'est le fait de commettre un crime passionnel sans raison.', 'C\'est le fait de sauter d\'une tour sans être blessé.', 1),
(15, 'Que signifie l\'acronyme " OOC " ?', 'Out of Character.', 'Out of Cup.', 'Organisation Ouvrière Californienne. ', 1),
(16, 'Que signifie l\'acronyme " IC " ?', 'In Corporation', 'In Couple', 'In Character', 3),
(17, 'Vous venez de commettre un crime, la police arrive sur place, mais il y a une dizaine de témoins, comment réagissez-vous ?', 'Je prends la fuite pour ma propre sécurité.', 'Je fuis puis je reviens sur les lieux, armé afin de tous les tuer.', 'Je fais appel à mes amis pour m\'aider à tuer tous les témoins présents sur place.', 1),
(18, 'Un administrateur vous emprisonne pour un acte non-roleplay, comment réagissez-vous ?', 'Je demande calmement la raison de mon emprisonnement à l\'administrateur par message privé.', 'J\'harcèle l\'administrateur en /irc pour savoir la raison de mon emprisonnement.', 'J\'insulte l\'administrateur de tous les noms, car je pense qu\'il a tort.', 1),
(19, 'Que devez-vous faire si vous devez parcourir une longue distance à pied ?', 'Soit je prends le bus ou le taxi, soit je marche ou je cours.', 'Je cours en sautant pour aller plus vite.', 'J\'utilise un logiciel de triche qui me téléporte d\'un endroit à l\'autre en trois cliques.', 1),
(20, 'Entre lequel de ces endroits, est-il préférable de commettre un crime avec une arme ?', 'À la banque de Los Santos.', 'À Ganton.', 'Au commissariat.', 2),
(21, 'Vous vous connectez sur le serveur puis vous ne voyez aucun administrateur connecté, que faites-vous ?', 'J\'en profite pour faire n\'importe quoi sur le serveur.', 'Je continue à suivre les règles du roleplay.', 'Je reste AFK tout le temps et quand un administrateur se connecte, je fais semblant de jouer.', 2),
(22, 'Vous voyez une patrouille de police poursuivre un véhicule, que faites-vous ?', 'J\'accélère et me colle à eux afin de les suivre.', 'Je viens en aide à la police et je poursuis le tyran.', 'Je me mets sur le bas-côté et je les laisse faire leur travail.', 3),
(23, 'Un administrateur semble avoir été injuste, quel est le comportement à adapter ?', 'Je harcèle les administrateurs par IRC.', 'J\'envoie un message privé à un lead-admin sur le forum.', 'Je l\'insulte de tous les noms possibles.', 2),
(24, 'Vous êtes à Idlewood puis vous voyez un homme qui tue tout le monde, que faites-vous ?', 'Je sors une arme puis je vais le tuer car c\'est roleplay de répondre à du non-rp par du non-rp.', ' Je le reporte pour DeathMatch soit sur le forum ou soit directement depuis le jeu.', 'Je l\'insulte de tous les noms par message privé.', 2),
(25, 'Vous êtes en train de faire un deal en pleine rue quand une voiture de police s\'arrête et vous demande de vous arrêter, que faites-vous ?', 'Selon mon personnage, soit je me sauve pour m\'éviter la prison soit je me rends gentiment à la police.', ' Je me déconnecte puis je me reconnecte afin de respawn chez moi et ainsi, esquiver la police.', 'Je tue tous les agents avec mon arme puis je reprends mes activités comme si de rien n\'était.', 1),
(26, 'Dans le jeu, vous rencontrez un joueur avec un nom très similaire au vôtre, que faites-vous ?', 'Je le tue de nombreuses fois jusqu\'à qu\'il change son nom. ', 'Je prends contact avec un administrateur afin de trouver une solution à ce problème.', 'Je prends un screenshot puis je vais faire un rapport pour vol d\'identité afin qu\'il soit puni car c\'est comme ça que ça se règle.', 2),
(27, 'Quelle publicité est autorisée sur un serveur roleplay ?', 'Je vends de la farine, des jouets à bas prix et bonne qualité, contactez-moi au 555-1052.', 'Je cherche un dealer, quelqu\'un peut m\'aider ? ^^', 'Je vends un véhicule tout terrain, année 98, il consomme un litre au 100. Non rayée, elle est presque neuve ! Prix à débattre.', 3),
(28, 'Vous êtes poursuivi par des personnes qui veulent vous tuer quand vous les semez, quel est le bon comportement à adopter ?', 'Je danse au loin pour les provoquer, ils n\'auront pas le temps de me rattraper vu que je cours super vite.', 'Je continue la scène, je fais attention à ne pas me faire repérer et selon mon personnage, j\'appelle soit la police, mes amis ou je me débrouille tout seul.', 'Je me déconnecte directement et me reconnecte juste après afin de réapparaître chez moi sain et sauf.', 2),
(29, 'Vous marchez dans la rue quand une bande de jeunes adolescents commence à vous insulter à priori sans raison, que faites-vous ?', ' Je les reporte ayant comme raison, insultes sans raison.', 'Ce qui est IC reste IC, je continue à jouer le rôle de mon personnage et selon son tempérament, soit je les ignore soit je m\'énerve.', 'Je fais un screenshot puis je vais le poster sur le forum car ils n\'ont pas le droit d\'insulter quelqu\'un IC.', 2),
(30, 'Vous avez été freeze (bloqué) par un administrateur puis ce dernier vous fait un rappel à l\'ordre, comment réagissez-vous ?', 'Je fais semblant d\'avoir compris et une fois que l\'administrateur à le dos tourner, je continue à faire n\'importe quoi.', 'Je harcèle l\'administrateur en lui disant de m\'unfreeze (débloqué) afin que je puisse jouer.', 'J\'accepte ses conseils et je fais tout mon possible pour ne pas recommencer.', 3),
(31, 'Qu\'est-ce que c\'est que le deathmatch ?', 'C\'est le fait de tuer un joueur sans raison.', 'C\'est le fait de faire un match à mort comme sur les jeux de guerres.', 'C\'est le fait de mourir dans un match.', 1),
(32, 'Un joueur vous propose de l\'argent gagné grâce à un logiciel, que faites-vous ?', 'Je prends un screenshot de son message et j\'avertis les administrateurs soit sur le jeu, soit sur le forum.', 'J\'accepte son offre et je lui demande qui me passe de l\'argent.', 'Je lui demande où a-t-il trouvé son logiciel afin que je le fasse moi aussi.', 1),
(33, 'Vous marchez tranquillement quand soudainement, une camionnette s\'arrête devant vous et les personnes à son bord, vous braquent des armes de guerre à bout portant et vous demandent de monter, que faites-vous ?', 'Je fais perdre du temps en espérant qu\'un témoin passe et appel la police.', 'Je cours en esquivant les balles.', 'J’exécute les ordres demandés, je ne peux rien faire et je ne peux rien dire.', 3),
(34, 'Vous venez d\'arriver sur le serveur et vous ne connaissez pas la commande pour telle ou telle chose, que devez-vous faire ?', 'Je demande IC, l\'aide à un joueur qui me dira la commande à taper.', 'Je harcèle les joueurs présents afin qu\'ils me viennent en aide.', 'Je demande l\'assistance d\'un administrateur via IRC (/irc).', 3),
(35, ' Un joueur vous insulte sur le canal OOC, que devez-vous faire ?', 'Je l\'insulte à mon tour sur le canal OOC.', 'Je le tue avec mon arme pour ses insultes OOC.', 'Je le signale aux administrateurs avec des preuves à l\'appui. ', 3),
(36, 'Vous êtes en moto et vous voyez une patrouille de police devant vous, comment vous vous comportez ?', 'Je passe devant la police en roue arrière afin de les provoquer et engager une course poursuite.', 'Je me comporte de manière normale, il est inutile de provoquer la police à longueur de journée pour faire des courses poursuites inutiles.', 'Je tape le coffre de leur voiture avec ma moto et je fais demi-tour.', 2),
(37, 'Qu\'est-ce que c\'est que le ninja jack ?', 'C\'est le fait de voler une voiture.', 'C\'est le fait de voler rapidement un véhicule, sans aucune émote (/me) et avec une personne à son bord.', 'C\'est le fait de se prendre pour un ninja dans le jeu.', 2),
(38, 'Vous avez perdu une arme, un objet ou de l\'argent à cause d\'un bug ou d\'une action non-rp, que faites-vous pour être remboursé ?', 'Je harcèle toutes les minutes les administrateurs afin qu\'ils me remboursent. ', 'Je prends un screenshot et des logs comme preuves et je vais sur le forum pour faire une demande de remboursement dans la section adéquate. ', 'Je fais une demande de remboursement sans preuves afin d’espérer d\'être remboursé.', 2),
(39, 'Quelle est la signification du terme "forcer le roleplay" ?', 'Forcer une personne à venir l\'accompagner à tel endroit en lui criant dessus.', 'C\'est le fait d\'impliquer une personne dans une scène IC dans le but d\'être avantagé par rapport à elle en utilisant des émotes (/me).', 'C\'est le moment où mon personnage braque une épicerie alors que la caissière oppose une faible résistance.', 2),
(40, 'Vous avez frappé un joueur il y a quelques jours. Alors que vous êtes tranquillement en ville, ce joueur arrive et vous écrase avec sa voiture jusqu\'à la mort. Comment réagissez-vous ?', 'Je l\'insulte OOC car c\'est une personne non fair-play.', 'Je l\'ai tabassé, il se venge donc, c\'est normal.', 'Je prends des screenshots afin de le report, car son action est non-roleplay, le carkill est interdit sur les serveurs roleplay. ', 3),
(41, 'Vous voyez une personne utilisant un logiciel CLEO qui l\'avantage, que faites-vous ?', 'Je lui demande poliment où a-t-il trouvé le logiciel en question afin d\'en bénéficier moi aussi.', 'Je lui envoie un message privé en lui expliquant calmement que ce logiciel est interdit sur le serveur.', 'Je continue ma route, ce n\'est pas mon problème, il fait ce qu\'il veut.', 2),
(42, 'Vous vous apercevez que votre personnage manque cruellement d\'argent, que faites-vous ?', 'Je me procure une arme blanche et je me mets à racketter chaque piéton à longueur de journées et ceci n\'importe où.', 'Je me débrouille pour gagner mon propre argent de manière réaliste et censée.', 'J\'utilise un logiciel de triche afin de gagner une somme d\'argent colossale.', 2),
(43, 'Vous voulez faire une action avec votre personnage, de quelle manière vous vous y prenez ?', '/me est le meilleur.', '/me pense que Mitchell est bête.', '/me rigole à la blague de Mitchell.', 3),
(44, 'Vous avez une question à propos du serveur, quel canal utilisez-vous ?', 'Le canal IC.', 'Le canal IRC. ', 'La radio IC.', 2),
(45, 'Vous pointez votre arme sur votre ennemi afin de le tuer, quand soudain celui-ci quitte en pleine scène sans prévenir, que faites-vous ?', 'Je lui fais du chantage en lui disant que s\'il ne me donne pas d\'argent, j\'irai faire un rapport sur le forum.', 'Je lui envoie un message privé sur le forum en l\'insultant.', 'Je mets une pause au jeu, en attendant qu\'il se reconnecte afin d\'avoir des explications sur la raison pour laquelle il s\'est déconnecté subitement sans prévenir. S\'il ne revient pas, je prends les mesures nécessaires.', 3);

-- --------------------------------------------------------

--
-- Structure de la table `repertoire`
--

CREATE TABLE `repertoire` (
  `oID` int(11) NOT NULL,
  `NumberPhone` int(11) NOT NULL,
  `Surname` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `sanctions`
--

CREATE TABLE `sanctions` (
  `Player` varchar(15) NOT NULL,
  `Admin` varchar(15) NOT NULL,
  `Type` varchar(16) NOT NULL,
  `Moment` bigint(20) NOT NULL,
  `Raison` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `serverinfos`
--

CREATE TABLE `serverinfos` (
  `Variable` varchar(24) NOT NULL,
  `Valeur` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `serverinfos`
--

INSERT INTO `serverinfos` (`Variable`, `Valeur`) VALUES
('LastBag', 3356),
('LastPC', 518),
('Revenu', 85),
('RebootAuto', 0);

-- --------------------------------------------------------

--
-- Structure de la table `serveur_logs`
--

CREATE TABLE `serveur_logs` (
  `ID` int(11) NOT NULL,
  `Date` bigint(20) NOT NULL,
  `Description` varchar(384) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `serveur_tags`
--

CREATE TABLE `serveur_tags` (
  `Tid` int(11) NOT NULL,
  `Actif` int(11) NOT NULL,
  `Texte` varchar(64) NOT NULL,
  `Couleur` varchar(12) NOT NULL,
  `Font` varchar(64) NOT NULL,
  `OutX` float(11,7) NOT NULL,
  `OutY` float(11,7) NOT NULL,
  `OutZ` float(11,7) NOT NULL,
  `RX` float(11,7) NOT NULL,
  `RY` float(11,7) NOT NULL,
  `RZ` float(11,7) NOT NULL,
  `Interieur` int(11) NOT NULL,
  `MondeVirtuel` int(11) NOT NULL,
  `Taille` smallint(4) NOT NULL,
  `Poseur` varchar(64) NOT NULL,
  `Faction` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `skins`
--

CREATE TABLE `skins` (
  `Skin` smallint(6) NOT NULL,
  `Phys` smallint(6) NOT NULL,
  `Auth` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `skins`
--

INSERT INTO `skins` (`Skin`, `Phys`, `Auth`) VALUES
(1, 101, 1),
(2, 101, 1),
(3, 101, 1),
(4, 102, 1),
(5, 102, 1),
(6, 102, 1),
(7, 102, 1),
(8, 101, 0),
(9, 202, 1),
(10, 202, 1),
(11, 202, 1),
(12, 202, 1),
(13, 202, 1),
(14, 102, 1),
(15, 102, 1),
(16, 0, 0),
(17, 102, 1),
(18, 102, 1),
(19, 102, 1),
(20, 102, 1),
(21, 102, 1),
(22, 102, 1),
(23, 101, 1),
(24, 102, 1),
(25, 102, 1),
(26, 101, 1),
(27, 0, 0),
(28, 102, 1),
(29, 101, 1),
(30, 101, 1),
(31, 201, 1),
(32, 101, 1),
(33, 101, 1),
(34, 101, 1),
(35, 102, 1),
(36, 102, 1),
(37, 101, 1),
(38, 201, 1),
(39, 201, 1),
(40, 202, 1),
(41, 201, 1),
(42, 101, 0),
(43, 101, 1),
(44, 101, 1),
(45, 101, 1),
(46, 101, 1),
(47, 101, 1),
(48, 101, 1),
(49, 101, 1),
(50, 102, 0),
(51, 102, 1),
(52, 101, 1),
(53, 201, 1),
(54, 201, 1),
(55, 201, 1),
(56, 201, 1),
(57, 101, 1),
(58, 101, 1),
(59, 101, 1),
(60, 101, 1),
(61, 101, 1),
(62, 101, 1),
(63, 202, 1),
(64, 202, 1),
(65, 202, 1),
(66, 102, 1),
(67, 102, 1),
(68, 101, 1),
(69, 202, 1),
(70, 101, 0),
(71, 101, 0),
(72, 101, 1),
(73, 101, 1),
(75, 201, 1),
(76, 202, 1),
(77, 201, 1),
(78, 101, 1),
(79, 102, 1),
(80, 102, 0),
(81, 101, 0),
(82, 201, 0),
(83, 202, 0),
(84, 101, 0),
(85, 201, 1),
(86, 102, 1),
(87, 201, 1),
(88, 201, 1),
(89, 201, 1),
(90, 201, 1),
(91, 201, 1),
(92, 201, 0),
(93, 201, 1),
(94, 101, 1),
(95, 101, 1),
(96, 101, 1),
(97, 101, 1),
(98, 101, 1),
(99, 101, 0),
(100, 101, 1),
(101, 101, 1),
(102, 102, 1),
(103, 102, 1),
(104, 102, 1),
(105, 102, 1),
(106, 102, 1),
(107, 102, 1),
(108, 101, 1),
(109, 101, 1),
(110, 101, 1),
(111, 101, 1),
(112, 101, 1),
(113, 101, 1),
(114, 101, 1),
(115, 101, 1),
(116, 101, 1),
(117, 101, 1),
(118, 101, 1),
(119, 101, 1),
(120, 101, 1),
(121, 101, 1),
(122, 101, 1),
(123, 101, 1),
(124, 101, 1),
(125, 101, 1),
(126, 101, 1),
(127, 101, 1),
(128, 101, 1),
(129, 201, 1),
(130, 201, 1),
(131, 201, 1),
(132, 101, 1),
(133, 101, 1),
(134, 102, 1),
(135, 101, 1),
(136, 102, 1),
(137, 101, 1),
(138, 201, 1),
(139, 202, 1),
(140, 201, 1),
(141, 201, 1),
(142, 102, 1),
(143, 102, 1),
(144, 102, 1),
(145, 201, 1),
(146, 101, 1),
(147, 101, 1),
(148, 202, 0),
(149, 102, 1),
(150, 201, 1),
(151, 201, 1),
(152, 201, 1),
(153, 101, 1),
(154, 101, 1),
(155, 101, 0),
(156, 102, 1),
(157, 201, 1),
(158, 102, 0),
(159, 101, 0),
(161, 101, 0),
(162, 101, 0),
(163, 102, 0),
(164, 101, 0),
(165, 101, 0),
(166, 102, 0),
(167, 101, 0),
(168, 102, 1),
(169, 201, 1),
(170, 101, 1),
(171, 101, 1),
(172, 201, 1),
(173, 101, 1),
(174, 101, 1),
(175, 101, 1),
(176, 102, 1),
(177, 101, 1),
(178, 202, 1),
(179, 101, 1),
(180, 102, 1),
(181, 101, 1),
(182, 102, 1),
(183, 102, 1),
(184, 101, 1),
(185, 102, 1),
(186, 101, 1),
(187, 101, 1),
(188, 101, 1),
(189, 101, 1),
(190, 202, 1),
(191, 201, 1),
(192, 201, 1),
(193, 201, 1),
(194, 201, 1),
(195, 202, 1),
(196, 201, 1),
(197, 201, 1),
(198, 201, 1),
(199, 201, 1),
(200, 101, 1),
(201, 201, 1),
(202, 101, 1),
(203, 101, 1),
(204, 101, 1),
(205, 201, 0),
(206, 101, 1),
(207, 201, 1),
(208, 101, 1),
(209, 101, 1),
(210, 101, 1),
(211, 201, 0),
(212, 101, 1),
(213, 101, 1),
(214, 202, 1),
(215, 202, 1),
(216, 201, 1),
(217, 101, 1),
(218, 202, 1),
(219, 202, 1),
(220, 102, 1),
(221, 102, 1),
(222, 102, 1),
(223, 101, 1),
(224, 201, 1),
(225, 201, 1),
(226, 201, 1),
(227, 101, 1),
(228, 101, 1),
(229, 101, 1),
(230, 101, 1),
(231, 201, 1),
(232, 201, 1),
(233, 201, 1),
(234, 101, 1),
(235, 101, 1),
(236, 101, 1),
(237, 201, 1),
(238, 202, 1),
(239, 101, 1),
(240, 101, 1),
(241, 101, 1),
(242, 101, 1),
(243, 201, 1),
(244, 202, 1),
(245, 202, 1),
(246, 201, 1),
(247, 101, 1),
(248, 101, 1),
(249, 102, 1),
(250, 101, 1),
(251, 201, 1),
(252, 101, 1),
(253, 102, 1),
(254, 101, 1),
(255, 101, 1),
(256, 202, 1),
(257, 201, 1),
(258, 101, 1),
(259, 101, 1),
(260, 102, 1),
(261, 101, 1),
(262, 102, 1),
(263, 201, 1),
(264, 101, 1),
(265, 102, 0),
(266, 101, 0),
(267, 101, 0),
(268, 101, 1),
(269, 102, 1),
(270, 102, 1),
(271, 102, 1),
(272, 101, 1),
(273, 101, 1),
(274, 102, 0),
(275, 101, 0),
(276, 102, 0),
(277, 202, 0),
(278, 0, 0),
(279, 0, 0),
(280, 101, 0),
(281, 101, 0),
(282, 101, 0),
(283, 101, 0),
(284, 0, 0),
(286, 101, 0),
(287, 102, 0),
(288, 101, 0),
(289, 101, 1),
(0, 102, 0),
(160, 101, 1),
(290, 101, 1),
(291, 101, 1),
(292, 101, 1),
(293, 102, 1),
(294, 101, 1),
(295, 101, 1),
(296, 102, 1),
(297, 102, 1),
(298, 201, 1),
(299, 101, 1),
(300, 101, 0),
(301, 101, 0),
(302, 101, 0),
(303, 101, 0),
(304, 101, 0),
(305, 101, 0),
(306, 0, 0),
(307, 0, 0),
(308, 201, 0),
(309, 0, 0),
(310, 101, 0),
(311, 101, 0),
(285, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `taxe_mairie`
--

CREATE TABLE `taxe_mairie` (
  `SQL` int(11) NOT NULL,
  `Revenu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `taxe_mairie`
--

INSERT INTO `taxe_mairie` (`SQL`, `Revenu`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `transactions`
--

CREATE TABLE `transactions` (
  `Montant` smallint(6) NOT NULL,
  `Player` int(11) NOT NULL,
  `Item` varchar(128) NOT NULL,
  `Date` int(128) NOT NULL,
  `TransactionID` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `trucker`
--

CREATE TABLE `trucker` (
  `Tid` int(11) NOT NULL,
  `NomFerme` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `NomProduit1` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `NomProduit2` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `NomProduit3` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `VendProd1` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `VendProd2` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `Type` smallint(6) NOT NULL,
  `Prix` smallint(6) NOT NULL,
  `Production` smallint(6) NOT NULL,
  `Cargaison` smallint(6) NOT NULL,
  `Stock` smallint(6) NOT NULL,
  `PositionX` decimal(10,4) NOT NULL,
  `PositionY` decimal(10,4) NOT NULL,
  `PositionZ` decimal(10,4) NOT NULL,
  `Lait` int(11) NOT NULL DEFAULT '0',
  `Viande` int(11) NOT NULL DEFAULT '0',
  `Cereale` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `trucker`
--

INSERT INTO `trucker` (`Tid`, `NomFerme`, `NomProduit1`, `NomProduit2`, `NomProduit3`, `VendProd1`, `VendProd2`, `Type`, `Prix`, `Production`, `Cargaison`, `Stock`, `PositionX`, `PositionY`, `PositionZ`, `Lait`, `Viande`, `Cereale`) VALUES
(1, 'Flint Range Farm', 'Viande', '', '', '', '', 1, 30, 0, 0, 0, '-382.7522', '-1426.3219', '26.2626', 0, 0, 0),
(2, 'Blueberry Farm', 'Viande', 'Céréale', '', '', '', 1, 30, 0, 0, 0, '-90.6345', '-10.1887', '3.1094', 0, 0, 0),
(3, 'Beacon Hill Dairies', 'Lait', '', '', '', '', 1, 25, 0, 0, 0, '-348.2806', '-1048.8820', '59.3113', 0, 0, 0),
(4, 'The Buchanan Ranch', 'Lait', '', '', '', '', 1, 30, 0, 0, 0, '-1448.1624', '-1499.2742', '101.7578', 0, 0, 0),
(5, 'Bloomfield Vineyards', 'Fruits', '', '', '', '', 1, 30, 0, 0, 0, '-1095.4407', '-1621.6786', '76.3672', 0, 0, 0),
(6, 'The Panopticon Logging Camp', 'Bois', '', '', '', '', 1, 2000, 0, 1, 0, '-521.6800', '-190.8990', '78.2483', 0, 0, 0),
(7, 'SA Scrap Metal', 'Métal', '', '', '', '', 1, 2800, 0, 0, 0, '-1896.5978', '-1671.4030', '23.0156', 0, 0, 0),
(8, 'Palomino Creek Distillery', 'Céréale', 'Fruits', '', 'Boisson', '', 2, 80, 10, 0, 30937, '2320.4355', '34.9844', '26.4844', 0, 0, 0),
(9, 'LVA Food Packaging Plant', 'Viande', 'Céréale', 'Lait', 'Repas', '', 2, 80, 10, 0, 1719, '1625.2664', '1018.0760', '10.8203', 0, 266076, 39483),
(10, 'Angel Pine Robertsons Sawmill', 'Bois', '', '', 'Papier', '', 2, 1500, 10, 0, 0, '-1990.7476', '-2386.1287', '30.6250', 0, 0, 0),
(11, 'Dillimore Auto Factory', 'Métal', '', '', 'Voiture', '', 2, 1500, 10, 1, 32767, '820.2785', '-611.5159', '16.3432', 0, 0, 0),
(12, 'Intersteel Facility', 'Métal', '', '', 'Transformateur', '', 2, 1450, 10, 1, 0, '2262.4150', '-1941.7616', '13.5389', 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `tuning`
--

CREATE TABLE `tuning` (
  `Name` varchar(30) NOT NULL,
  `componentid` smallint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `expiration` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `name`, `expiration`) VALUES
(1, 'Bodie', 950);

-- --------------------------------------------------------

--
-- Structure de la table `vehiclekit`
--

CREATE TABLE `vehiclekit` (
  `VEHsql` int(11) NOT NULL,
  `1` smallint(6) NOT NULL,
  `2` smallint(6) NOT NULL,
  `3` smallint(6) NOT NULL,
  `4` smallint(6) NOT NULL,
  `5` smallint(6) NOT NULL,
  `6` smallint(6) NOT NULL,
  `7` smallint(6) NOT NULL,
  `8` smallint(6) NOT NULL,
  `9` smallint(6) NOT NULL,
  `10` smallint(6) NOT NULL,
  `11` smallint(6) NOT NULL,
  `12` smallint(6) NOT NULL,
  `13` smallint(6) NOT NULL,
  `14` smallint(6) NOT NULL,
  `15` smallint(6) NOT NULL,
  `16` smallint(6) NOT NULL,
  `17` smallint(6) NOT NULL,
  `18` smallint(6) NOT NULL,
  `19` smallint(6) NOT NULL,
  `20` smallint(6) NOT NULL,
  `21` smallint(6) NOT NULL,
  `22` smallint(6) NOT NULL,
  `23` smallint(6) NOT NULL,
  `24` smallint(6) NOT NULL,
  `25` smallint(6) NOT NULL,
  `26` smallint(6) NOT NULL,
  `27` smallint(6) NOT NULL,
  `28` smallint(6) NOT NULL,
  `29` smallint(6) NOT NULL,
  `30` smallint(6) NOT NULL,
  `31` smallint(6) NOT NULL,
  `32` smallint(6) NOT NULL,
  `33` smallint(6) NOT NULL,
  `34` smallint(6) NOT NULL,
  `35` smallint(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `vehicleparams`
--

CREATE TABLE `vehicleparams` (
  `Model` int(11) NOT NULL,
  `Name` varchar(32) NOT NULL,
  `Reservoir` smallint(6) NOT NULL,
  `Conso` decimal(3,2) NOT NULL,
  `Coffre` tinyint(4) NOT NULL,
  `Prix` mediumint(9) NOT NULL,
  `Donator` smallint(3) NOT NULL,
  `plane` int(11) NOT NULL,
  `boat` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `vehicleparams`
--

INSERT INTO `vehicleparams` (`Model`, `Name`, `Reservoir`, `Conso`, `Coffre`, `Prix`, `Donator`, `plane`, `boat`) VALUES
(400, 'Landstalker', 80, '0.28', 30, 70000, 0, 0, 0),
(401, 'Bravura', 60, '0.25', 17, 30000, 0, 0, 0),
(402, 'Buffalo', 70, '0.38', 15, 220000, 0, 0, 0),
(403, 'Linerunner', 150, '0.45', 80, 90000, 0, 0, 0),
(404, 'Perenniel', 60, '0.25', 18, 25000, 0, 0, 0),
(405, 'Sentinel', 70, '0.25', 18, 50000, 0, 0, 0),
(406, 'Dumper', 150, '1.00', 100, 0, 0, 0, 0),
(407, 'Firetruck', 100, '0.35', 100, 0, 0, 0, 0),
(408, 'Trashmaster', 120, '0.45', 80, 90000, 0, 0, 0),
(409, 'Stretch', 90, '0.35', 20, 300000, 0, 0, 0),
(410, 'Manana', 60, '0.25', 16, 35000, 0, 0, 0),
(411, 'Infernus', 85, '0.50', 5, 550000, 0, 0, 0),
(412, 'Voodoo', 65, '0.25', 18, 29000, 0, 0, 0),
(413, 'Pony', 100, '0.33', 45, 55000, 0, 0, 0),
(414, 'Mule', 100, '0.15', 60, 65000, 0, 0, 0),
(415, 'Cheetah', 85, '0.50', 5, 410000, 0, 0, 0),
(416, 'Ambulance', 100, '0.20', 65, 0, 0, 0, 0),
(417, 'Leviathan', 300, '1.00', 127, 3000000, 0, 1, 0),
(418, 'Moonbeam', 65, '0.28', 35, 70000, 0, 0, 0),
(419, 'Esperanto', 70, '0.25', 17, 35000, 0, 0, 0),
(420, 'Taxi', 80, '0.20', 20, 50000, 0, 0, 0),
(421, 'Washington', 80, '0.25', 17, 75000, 0, 0, 0),
(422, 'Bobcat', 85, '0.30', 35, 26000, 0, 0, 0),
(423, 'Mr-Whoopee', 90, '0.25', 45, 30000, 0, 0, 0),
(424, 'BF-Injection', 50, '0.25', 2, 15000, 0, 0, 0),
(425, 'Hunter', 200, '1.00', 2, 0, 0, 0, 0),
(426, 'Premier', 80, '0.15', 17, 52000, 0, 0, 0),
(427, 'Enforcer', 120, '0.30', 60, 0, 0, 0, 0),
(428, 'Securicar', 120, '0.35', 55, 0, 0, 0, 0),
(429, 'Banshee', 80, '0.50', 9, 240000, 0, 0, 0),
(430, 'Predator', 150, '0.15', 20, 0, 0, 0, 0),
(431, 'Bus', 120, '0.25', 100, 130000, 0, 0, 0),
(432, 'Rhino', 180, '0.50', 60, 0, 0, 0, 0),
(433, 'Barracks', 150, '0.40', 100, 0, 0, 0, 0),
(434, 'Hotknife', 60, '0.30', 5, 120000, 0, 0, 0),
(435, 'Article-Trailer', 0, '0.00', 0, 0, 0, 0, 0),
(436, 'Previon', 60, '0.25', 16, 29000, 0, 0, 0),
(437, 'Coach', 120, '0.40', 100, 130000, 0, 0, 0),
(438, 'Cabbie', 75, '0.15', 14, 50000, 0, 0, 0),
(439, 'Stallion', 70, '0.25', 12, 70000, 0, 0, 0),
(440, 'Rumpo', 100, '0.28', 40, 75000, 0, 0, 0),
(441, 'RC-Bandit', 0, '0.00', 0, 0, 0, 0, 0),
(442, 'Romero', 60, '0.20', 25, 40000, 0, 0, 0),
(443, 'Packer', 120, '0.45', 70, 130000, 0, 0, 0),
(444, 'Monster', 100, '0.40', 20, 0, 0, 0, 0),
(445, 'Admiral', 80, '0.25', 18, 40000, 0, 0, 0),
(446, 'Squallo', 150, '0.75', 25, 700000, 0, 0, 1),
(447, 'Seasparrow', 150, '0.45', 2, 0, 0, 0, 0),
(448, 'Pizzaboy', 20, '0.10', 2, 0, 0, 0, 0),
(449, 'Tram', 0, '0.00', 0, 0, 0, 0, 0),
(450, 'Article-Trailer-2', 0, '0.00', 0, 0, 0, 0, 0),
(451, 'Turismo', 85, '0.48', 5, 600000, 0, 0, 0),
(452, 'Speeder', 150, '0.75', 5, 800000, 0, 0, 1),
(453, 'Reefer', 150, '0.40', 40, 1000000, 0, 0, 1),
(454, 'Tropic', 150, '0.45', 100, 1100000, 0, 0, 1),
(455, 'Flatbed', 145, '0.40', 100, 0, 0, 0, 0),
(456, 'Yankee', 100, '0.25', 100, 130000, 0, 0, 0),
(457, 'Caddy', 20, '0.15', 2, 0, 0, 0, 0),
(458, 'Solair', 70, '0.25', 20, 75000, 0, 0, 0),
(459, 'Berkleys-RC-Van', 100, '0.28', 45, 85000, 0, 0, 0),
(460, 'Skimmer', 150, '0.50', 8, 900000, 0, 1, 0),
(461, 'PCJ-600', 50, '0.15', 2, 80000, 0, 0, 0),
(462, 'Faggio', 20, '0.10', 2, 10000, 0, 0, 0),
(463, 'Freeway', 45, '0.15', 2, 25000, 0, 0, 0),
(464, 'RC-Baron', 0, '0.00', 0, 0, 0, 0, 0),
(465, 'RC-Raider', 0, '0.00', 0, 0, 0, 0, 0),
(466, 'Glendale', 70, '0.25', 17, 19000, 0, 0, 0),
(467, 'Oceanic', 70, '0.25', 17, 19000, 0, 0, 0),
(468, 'Sanchez', 25, '0.15', 2, 70000, 1, 0, 0),
(469, 'Sparrow', 120, '0.45', 5, 1700000, 0, 1, 0),
(470, 'Patriot', 90, '0.48', 30, 120000, 0, 0, 0),
(471, 'Quad', 40, '0.15', 2, 50000, 1, 0, 0),
(472, 'Coastguard', 150, '0.45', 10, 0, 0, 0, 0),
(473, 'Dinghy', 150, '0.20', 5, 50000, 0, 0, 1),
(474, 'Hermes', 70, '0.25', 16, 100000, 0, 0, 0),
(475, 'Sabre', 70, '0.30', 16, 85000, 0, 0, 0),
(476, 'Rustler', 150, '0.50', 2, 0, 0, 0, 0),
(477, 'ZR-350', 80, '0.48', 5, 145000, 0, 0, 0),
(478, 'Walton', 60, '0.25', 20, 35000, 0, 0, 0),
(479, 'Regina', 60, '0.25', 20, 25000, 0, 0, 0),
(480, 'Comet', 80, '0.48', 8, 160000, 0, 0, 0),
(481, 'BMX', 0, '0.00', 0, 4000, 1, 0, 0),
(482, 'Burrito', 100, '0.28', 45, 90000, 0, 0, 0),
(483, 'Camper', 80, '0.18', 30, 65000, 0, 0, 0),
(484, 'Marquis', 150, '0.50', 100, 1300000, 0, 0, 1),
(485, 'Baggage', 50, '0.15', 2, 0, 0, 0, 0),
(486, 'Dozer', 80, '0.30', 2, 0, 0, 0, 0),
(487, 'Maverick', 200, '0.50', 10, 1900000, 0, 1, 0),
(488, 'SAN-News-Maverick', 200, '0.50', 8, 0, 0, 0, 0),
(489, 'Rancher', 90, '0.33', 25, 105000, 0, 0, 0),
(490, 'FBI-Rancher', 100, '0.15', 30, 0, 0, 0, 0),
(491, 'Virgo', 70, '0.25', 16, 45000, 0, 0, 0),
(492, 'Greenwood', 80, '0.25', 16, 59000, 0, 0, 0),
(493, 'Jetmax', 150, '0.75', 10, 800000, 0, 0, 1),
(494, 'Hotring-Racer', 80, '0.30', 5, 0, 0, 0, 0),
(495, 'Sandking', 80, '0.33', 8, 0, 0, 0, 0),
(496, 'Blista-Compact', 65, '0.25', 16, 150000, 0, 0, 0),
(497, 'Police-Maverick', 200, '0.15', 50, 0, 0, 0, 0),
(498, 'Boxville', 100, '0.35', 50, 100000, 0, 0, 0),
(499, 'Benson', 100, '0.38', 50, 110000, 0, 0, 0),
(500, 'Mesa', 55, '0.25', 3, 22000, 0, 0, 0),
(501, 'RC-Goblin', 0, '0.00', 0, 0, 0, 0, 0),
(502, 'Hotring-Racer', 80, '0.25', 5, 0, 0, 0, 0),
(503, 'Hotring-Racer', 80, '0.25', 5, 0, 0, 0, 0),
(504, 'Bloodring-Banger', 80, '0.25', 5, 0, 0, 0, 0),
(505, 'Rancher', 90, '0.35', 10, 0, 0, 0, 0),
(506, 'Super GT', 80, '0.38', 5, 450000, 0, 0, 0),
(507, 'Elegant', 75, '0.25', 15, 70000, 0, 0, 0),
(508, 'Journey', 130, '0.35', 45, 60000, 0, 0, 0),
(509, 'Bike', 0, '0.00', 0, 5000, 0, 0, 0),
(510, 'Mountain-Bike', 0, '0.00', 0, 5000, 0, 0, 0),
(511, 'Beagle', 300, '0.75', 90, 0, 0, 0, 0),
(512, 'Cropduster', 200, '0.50', 2, 900000, 0, 1, 0),
(513, 'Stuntplane', 150, '0.50', 2, 0, 0, 0, 0),
(514, 'Tanker', 120, '0.40', 100, 0, 0, 0, 0),
(515, 'Roadtrain', 120, '0.40', 100, 0, 0, 0, 0),
(516, 'Nebula', 70, '0.25', 12, 45000, 0, 0, 0),
(517, 'Majestic', 70, '0.25', 12, 60000, 0, 0, 0),
(518, 'Buccaneer', 70, '0.25', 16, 55000, 0, 0, 0),
(519, 'Shamal', 400, '1.25', 100, 8000000, 0, 1, 0),
(520, 'Hydra', 300, '0.90', 2, 0, 0, 0, 0),
(521, 'FCR-900', 50, '0.20', 2, 120000, 0, 0, 0),
(522, 'NRG-500', 50, '0.20', 2, 250000, 1, 0, 0),
(523, 'HPV1000', 50, '0.15', 4, 0, 0, 0, 0),
(524, 'Cement-Truck', 120, '0.40', 2, 0, 0, 0, 0),
(525, 'Towtruck', 90, '0.15', 10, 20000, 0, 0, 0),
(526, 'Fortune', 65, '0.25', 16, 70000, 0, 0, 0),
(527, 'Cadrona', 60, '0.25', 16, 65000, 0, 0, 0),
(528, 'FBI-Truck', 80, '0.30', 15, 0, 0, 0, 0),
(529, 'Willard', 65, '0.25', 16, 29000, 0, 0, 0),
(530, 'Forklift', 30, '0.15', 2, 0, 0, 0, 0),
(531, 'Tractor', 40, '0.25', 2, 0, 0, 0, 0),
(532, 'Combine-Harvester', 50, '0.20', 5, 0, 0, 0, 0),
(533, 'Feltzer', 65, '0.25', 18, 120000, 0, 0, 0),
(534, 'Remington', 65, '0.25', 16, 80000, 0, 0, 0),
(535, 'Slamvan', 70, '0.30', 15, 95000, 0, 0, 0),
(536, 'Blade', 60, '0.25', 15, 89000, 0, 0, 0),
(537, 'Freight', 0, '0.00', 0, 0, 0, 0, 0),
(538, 'Brownstreak', 0, '0.00', 0, 0, 0, 0, 0),
(539, 'Vortex', 50, '0.25', 2, 0, 0, 0, 0),
(540, 'Vincent', 80, '0.25', 17, 65000, 0, 0, 0),
(541, 'Bullet', 90, '0.50', 5, 300000, 0, 0, 0),
(542, 'Clover', 65, '0.25', 15, 17000, 0, 0, 0),
(543, 'Sadler', 65, '0.28', 25, 12000, 0, 0, 0),
(544, 'Firetruck-LA', 120, '0.40', 120, 0, 0, 0, 0),
(545, 'Hustler', 60, '0.35', 5, 240000, 0, 0, 0),
(546, 'Intruder', 70, '0.25', 15, 59000, 0, 0, 0),
(547, 'Primo', 70, '0.25', 18, 63000, 0, 0, 0),
(548, 'Cargobob', 300, '1.00', 100, 0, 0, 0, 0),
(549, 'Tampa', 70, '0.25', 16, 19000, 0, 0, 0),
(550, 'Sunrise', 75, '0.25', 19, 35000, 0, 0, 0),
(551, 'Merit', 75, '0.25', 18, 85000, 0, 0, 0),
(552, 'Utility-Van', 70, '0.25', 30, 0, 0, 0, 0),
(553, 'Nevada', 400, '1.50', 100, 0, 0, 0, 0),
(554, 'Yosemite', 80, '0.33', 25, 45000, 0, 0, 0),
(555, 'Windsor', 70, '0.35', 5, 140000, 0, 0, 0),
(556, 'Monster-A', 100, '0.35', 10, 0, 0, 0, 0),
(557, 'Monster-B', 100, '0.35', 10, 0, 0, 0, 0),
(558, 'Uranus', 80, '0.41', 12, 220000, 0, 0, 0),
(559, 'Jester', 80, '0.44', 12, 250000, 0, 0, 0),
(560, 'Sultan', 90, '0.44', 16, 370000, 0, 0, 0),
(561, 'Stratum', 75, '0.20', 19, 70000, 0, 0, 0),
(562, 'Elegy', 70, '0.41', 15, 200000, 0, 0, 0),
(563, 'Raindance', 200, '0.50', 90, 0, 0, 0, 0),
(564, 'RC-Tiger', 0, '0.00', 0, 0, 0, 0, 0),
(565, 'Flash', 70, '0.38', 12, 70000, 0, 0, 0),
(566, 'Tahoma', 70, '0.25', 17, 50000, 0, 0, 0),
(567, 'Savanna', 70, '0.25', 20, 75000, 0, 0, 0),
(568, 'Bandito', 50, '0.25', 0, 0, 0, 0, 0),
(569, 'Freight-Flat-Trailer', 0, '0.00', 0, 0, 0, 0, 0),
(570, 'Streak-Trailer', 0, '0.00', 0, 0, 0, 0, 0),
(571, 'Kart', 30, '0.10', 0, 0, 0, 0, 0),
(572, 'Mower', 50, '0.15', 0, 0, 0, 0, 0),
(573, 'Dune', 100, '0.40', 80, 0, 0, 0, 0),
(574, 'Sweeper', 50, '0.15', 2, 0, 0, 0, 0),
(575, 'Broadway', 70, '0.25', 16, 90000, 0, 0, 0),
(576, 'Tornado', 75, '0.25', 18, 45000, 0, 0, 0),
(577, 'AT400', 500, '1.75', 0, 0, 0, 0, 0),
(578, 'DFT-30', 90, '0.38', 100, 110000, 0, 0, 0),
(579, 'Huntley', 100, '0.48', 33, 99000, 0, 0, 0),
(580, 'Stafford', 80, '0.25', 18, 190000, 0, 0, 0),
(581, 'BF-400', 50, '0.15', 2, 110000, 0, 0, 0),
(582, 'Newsvan', 80, '0.30', 25, 0, 0, 0, 0),
(583, 'Tug', 50, '0.15', 2, 0, 0, 0, 0),
(584, 'Petrol-Trailer', 0, '0.00', 0, 0, 0, 0, 0),
(585, 'Emperor', 70, '0.25', 16, 75000, 0, 0, 0),
(586, 'Wayfarer', 55, '0.20', 6, 50000, 0, 0, 0),
(587, 'Euros', 75, '0.35', 12, 220000, 0, 0, 0),
(588, 'Hotdog', 70, '0.25', 50, 60000, 0, 0, 0),
(589, 'Club', 65, '0.25', 16, 65000, 0, 0, 0),
(590, 'Freight-Box-Trailer', 0, '0.00', 0, 0, 0, 0, 0),
(591, 'Article-Trailer-3', 0, '0.00', 0, 0, 0, 0, 0),
(592, 'Andromada', 500, '1.75', 0, 0, 0, 0, 0),
(593, 'Dodo', 100, '0.35', 5, 0, 0, 0, 0),
(594, 'RC-Cam', 0, '0.00', 0, 0, 0, 0, 0),
(595, 'Launch', 150, '0.30', 10, 1200000, 0, 0, 1),
(596, 'Police-Car', 80, '0.15', 50, 0, 0, 0, 0),
(597, 'Police-Car', 80, '0.15', 53, 0, 0, 0, 0),
(598, 'Police-Car', 80, '0.15', 53, 0, 0, 0, 0),
(599, 'Police-Ranger', 80, '0.20', 45, 0, 0, 0, 0),
(600, 'Picador', 75, '0.25', 16, 40000, 0, 0, 0),
(601, 'S.W.A.T.', 100, '0.25', 16, 0, 0, 0, 0),
(602, 'Alpha', 75, '0.35', 12, 270000, 0, 0, 0),
(603, 'Phoenix', 75, '0.41', 5, 330000, 0, 0, 0),
(604, 'Glendale-Shit', 70, '0.25', 12, 0, 0, 0, 0),
(605, 'Sadler-Shit', 70, '0.25', 15, 0, 0, 0, 0),
(606, 'Baggage-Trailer-A', 0, '0.00', 0, 0, 0, 0, 0),
(607, 'Baggage-Trailer-B', 0, '0.00', 0, 0, 0, 0, 0),
(608, 'Tug-Stairs-Trailer', 0, '0.00', 0, 0, 0, 0, 0),
(609, 'Boxville', 100, '0.25', 70, 0, 0, 0, 0),
(610, 'Farm-Trailer', 0, '0.00', 0, 0, 0, 0, 0),
(611, 'Utility-Trailer', 0, '0.00', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `vehicles`
--

CREATE TABLE `vehicles` (
  `VEHid` int(11) NOT NULL,
  `Model` smallint(6) NOT NULL,
  `Job` smallint(6) NOT NULL,
  `Owner` int(11) NOT NULL,
  `Etat` tinyint(4) NOT NULL,
  `Rent` smallint(6) NOT NULL,
  `PosX` decimal(10,4) NOT NULL,
  `PosY` decimal(10,4) NOT NULL,
  `PosZ` decimal(10,4) NOT NULL,
  `Rot` decimal(10,4) NOT NULL,
  `Color1` smallint(6) NOT NULL,
  `Color2` smallint(6) NOT NULL,
  `Gas` decimal(7,4) NOT NULL DEFAULT '20.0000',
  `HealCar` decimal(5,1) NOT NULL DEFAULT '1000.0',
  `Kms` decimal(12,4) NOT NULL,
  `Key1` int(11) NOT NULL,
  `Key2` int(11) NOT NULL,
  `Charge` smallint(6) NOT NULL DEFAULT '0',
  `NumberPlate` varchar(8) NOT NULL,
  `C0G` int(11) NOT NULL,
  `C0A` int(11) NOT NULL,
  `C1G` int(11) NOT NULL,
  `C1A` int(11) NOT NULL,
  `C2G` int(11) NOT NULL,
  `C2A` int(11) NOT NULL,
  `C3G` int(11) NOT NULL,
  `C3A` int(11) NOT NULL,
  `C4G` int(11) NOT NULL,
  `C4A` int(11) NOT NULL,
  `C5G` int(11) NOT NULL,
  `C5A` int(11) NOT NULL,
  `C6G` int(11) NOT NULL,
  `C6A` int(11) NOT NULL,
  `C7G` int(11) NOT NULL,
  `C7A` int(11) NOT NULL,
  `C8G` int(11) NOT NULL,
  `C8A` int(11) NOT NULL,
  `C9G` int(11) NOT NULL,
  `C9A` int(11) NOT NULL,
  `C10G` int(11) NOT NULL,
  `C10A` int(11) NOT NULL,
  `C11G` int(11) NOT NULL,
  `C11A` int(11) NOT NULL,
  `Sorti` int(11) NOT NULL DEFAULT '0',
  `Amende` int(11) NOT NULL,
  `Description` varchar(96) NOT NULL,
  `Inutilisable` int(11) NOT NULL,
  `SerrureBroken` tinyint(1) NOT NULL,
  `Alarm` tinyint(4) NOT NULL,
  `Assurance` tinyint(4) NOT NULL DEFAULT '0',
  `Facture` int(11) NOT NULL DEFAULT '0',
  `Ratelier1G` smallint(6) NOT NULL DEFAULT '0',
  `Ratelier1A` smallint(6) NOT NULL DEFAULT '0',
  `Ratelier2G` smallint(6) NOT NULL DEFAULT '0',
  `Ratelier2A` smallint(6) NOT NULL DEFAULT '0',
  `Fourriere` tinyint(1) NOT NULL DEFAULT '0',
  `C0S` smallint(6) NOT NULL,
  `C1S` smallint(6) NOT NULL,
  `C2S` smallint(6) NOT NULL,
  `C3S` smallint(6) NOT NULL,
  `C4S` smallint(6) NOT NULL,
  `C5S` smallint(6) NOT NULL,
  `C6S` smallint(6) NOT NULL,
  `C7S` smallint(6) NOT NULL,
  `C8S` smallint(6) NOT NULL,
  `C9S` smallint(6) NOT NULL,
  `C10S` smallint(6) NOT NULL,
  `C11S` smallint(6) NOT NULL,
  `C0I` smallint(6) NOT NULL,
  `C1I` smallint(6) NOT NULL,
  `C2I` smallint(6) NOT NULL,
  `C3I` smallint(6) NOT NULL,
  `C4I` smallint(6) NOT NULL,
  `C5I` smallint(6) NOT NULL,
  `C6I` smallint(6) NOT NULL,
  `C7I` smallint(6) NOT NULL,
  `C8I` smallint(6) NOT NULL,
  `C9I` smallint(6) NOT NULL,
  `C10I` smallint(6) NOT NULL,
  `C11I` smallint(6) NOT NULL,
  `Caisse0` smallint(6) NOT NULL DEFAULT '0',
  `Caisse1` smallint(6) NOT NULL DEFAULT '0',
  `Caisse2` smallint(6) NOT NULL DEFAULT '0',
  `Caisse3` smallint(6) NOT NULL DEFAULT '0',
  `Caisse4` smallint(6) NOT NULL DEFAULT '0',
  `Caisse5` smallint(6) NOT NULL DEFAULT '0',
  `Caisse6` smallint(6) NOT NULL DEFAULT '0',
  `Caisse7` smallint(6) NOT NULL DEFAULT '0',
  `Caisse8` smallint(6) NOT NULL DEFAULT '0',
  `Caisse9` smallint(6) NOT NULL DEFAULT '0',
  `Caisse10` smallint(6) NOT NULL DEFAULT '0',
  `Caisse11` smallint(6) NOT NULL DEFAULT '0',
  `Caisse12` smallint(6) NOT NULL DEFAULT '0',
  `Caisse13` smallint(6) NOT NULL DEFAULT '0',
  `Caisse14` smallint(6) NOT NULL DEFAULT '0',
  `Caisse15` smallint(6) NOT NULL DEFAULT '0',
  `Caisse16` smallint(6) NOT NULL DEFAULT '0',
  `Caisse17` smallint(6) NOT NULL DEFAULT '0',
  `CaisseT0` smallint(6) NOT NULL DEFAULT '0',
  `CaisseT1` smallint(6) NOT NULL DEFAULT '0',
  `CaisseT2` smallint(6) NOT NULL DEFAULT '0',
  `CaisseT3` smallint(6) NOT NULL DEFAULT '0',
  `CaisseT4` smallint(6) NOT NULL DEFAULT '0',
  `CaisseT5` smallint(6) NOT NULL DEFAULT '0',
  `CaisseT6` smallint(6) NOT NULL DEFAULT '0',
  `CaisseT7` smallint(6) NOT NULL DEFAULT '0',
  `CaisseT8` smallint(6) NOT NULL DEFAULT '0',
  `CaisseT9` smallint(6) NOT NULL DEFAULT '0',
  `CaisseT10` smallint(6) NOT NULL DEFAULT '0',
  `CaisseT11` smallint(6) NOT NULL DEFAULT '0',
  `CaisseT12` smallint(6) NOT NULL DEFAULT '0',
  `CaisseT13` smallint(6) NOT NULL DEFAULT '0',
  `CaisseT14` smallint(6) NOT NULL DEFAULT '0',
  `CaisseT15` smallint(6) NOT NULL DEFAULT '0',
  `CaisseT16` smallint(6) NOT NULL DEFAULT '0',
  `CaisseT17` smallint(6) NOT NULL DEFAULT '0',
  `Carbu` smallint(4) NOT NULL,
  `Traceur` smallint(3) NOT NULL,
  `PrixLOC` smallint(5) NOT NULL,
  `Meth` int(11) NOT NULL DEFAULT '0',
  `Coke` int(11) NOT NULL DEFAULT '0',
  `Canna` int(11) NOT NULL DEFAULT '0',
  `Hero` int(11) NOT NULL DEFAULT '0',
  `Stero` int(11) NOT NULL DEFAULT '0',
  `Mod0` int(11) NOT NULL DEFAULT '0',
  `Mod1` int(11) NOT NULL DEFAULT '0',
  `Mod2` int(11) NOT NULL DEFAULT '0',
  `Mod3` int(11) NOT NULL DEFAULT '0',
  `Mod4` int(11) NOT NULL DEFAULT '0',
  `Mod5` int(11) NOT NULL DEFAULT '0',
  `Mod6` int(11) NOT NULL DEFAULT '0',
  `Mod7` int(11) NOT NULL DEFAULT '0',
  `Mod8` int(11) NOT NULL DEFAULT '0',
  `Mod9` int(11) NOT NULL DEFAULT '0',
  `TDrugCanna` int(11) NOT NULL DEFAULT '0',
  `TDrugCoke` int(11) NOT NULL DEFAULT '0',
  `TDrugHero` int(11) NOT NULL DEFAULT '0',
  `TDrugMeth` int(11) NOT NULL DEFAULT '0',
  `TDrugStero` int(11) NOT NULL DEFAULT '0',
  `SpawnWorld` int(11) NOT NULL DEFAULT '0',
  `Inte` int(11) NOT NULL DEFAULT '0',
  `StaticJob` int(11) NOT NULL DEFAULT '0',
  `Upgrade1` int(11) NOT NULL DEFAULT '0',
  `Upgrade2` int(11) NOT NULL,
  `Upgrade3` int(11) NOT NULL DEFAULT '0',
  `Upgrade4` int(11) NOT NULL DEFAULT '0',
  `Upgrade5` int(11) NOT NULL DEFAULT '0',
  `Upgrade6` int(11) NOT NULL DEFAULT '0',
  `Upgrade7` int(11) NOT NULL DEFAULT '0',
  `Upgrade8` int(11) NOT NULL DEFAULT '0',
  `BreakNeiman` int(11) NOT NULL DEFAULT '0',
  `BreakDoor` int(11) NOT NULL DEFAULT '0',
  `Code` varchar(16) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `vote` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `wanted`
--

CREATE TABLE `wanted` (
  `Name` varchar(20) NOT NULL,
  `Raison` varchar(144) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `warns`
--

CREATE TABLE `warns` (
  `Pseudo` varchar(30) NOT NULL,
  `Reason` varchar(128) NOT NULL,
  `Time` bigint(20) NOT NULL,
  `Admin` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`SQLid`),
  ADD KEY `SQLid` (`FluxID`);

--
-- Index pour la table `banlist`
--
ALTER TABLE `banlist`
  ADD PRIMARY KEY (`BanID`);

--
-- Index pour la table `biz_spawn`
--
ALTER TABLE `biz_spawn`
  ADD UNIQUE KEY `Rid` (`Rid`);

--
-- Index pour la table `carteidentite`
--
ALTER TABLE `carteidentite`
  ADD UNIQUE KEY `Cid` (`Cid`);

--
-- Index pour la table `casiersinv`
--
ALTER TABLE `casiersinv`
  ADD PRIMARY KEY (`Sid`);

--
-- Index pour la table `characters`
--
ALTER TABLE `characters`
  ADD UNIQUE KEY `Name` (`Name`);

--
-- Index pour la table `commerces`
--
ALTER TABLE `commerces`
  ADD PRIMARY KEY (`Cid`);

--
-- Index pour la table `factions`
--
ALTER TABLE `factions`
  ADD PRIMARY KEY (`Fid`);

--
-- Index pour la table `flu_bans`
--
ALTER TABLE `flu_bans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flu_bans_username_idx` (`username`(25));

--
-- Index pour la table `flu_categories`
--
ALTER TABLE `flu_categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `flu_censoring`
--
ALTER TABLE `flu_censoring`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `flu_config`
--
ALTER TABLE `flu_config`
  ADD PRIMARY KEY (`conf_name`);

--
-- Index pour la table `flu_forums`
--
ALTER TABLE `flu_forums`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `flu_forum_perms`
--
ALTER TABLE `flu_forum_perms`
  ADD PRIMARY KEY (`group_id`,`forum_id`,`memb_id`);

--
-- Index pour la table `flu_forum_subscriptions`
--
ALTER TABLE `flu_forum_subscriptions`
  ADD PRIMARY KEY (`user_id`,`forum_id`);

--
-- Index pour la table `flu_groups`
--
ALTER TABLE `flu_groups`
  ADD PRIMARY KEY (`g_id`);

--
-- Index pour la table `flu_logs`
--
ALTER TABLE `flu_logs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `flu_online`
--
ALTER TABLE `flu_online`
  ADD UNIQUE KEY `flu_online_user_id_ident_idx` (`user_id`,`ident`(25)),
  ADD KEY `flu_online_ident_idx` (`ident`(25)),
  ADD KEY `flu_online_logged_idx` (`logged`);

--
-- Index pour la table `flu_pms_new_block`
--
ALTER TABLE `flu_pms_new_block`
  ADD KEY `flu_pms_new_block_bl_id_idx` (`bl_id`),
  ADD KEY `flu_pms_new_block_bl_user_id_idx` (`bl_user_id`);

--
-- Index pour la table `flu_pms_new_posts`
--
ALTER TABLE `flu_pms_new_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flu_pms_new_posts_topic_id_idx` (`topic_id`),
  ADD KEY `flu_pms_new_posts_multi_idx` (`poster_id`,`topic_id`);

--
-- Index pour la table `flu_pms_new_topics`
--
ALTER TABLE `flu_pms_new_topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flu_pms_new_topics_multi_idx_st` (`starter_id`,`topic_st`),
  ADD KEY `flu_pms_new_topics_multi_idx_to` (`to_id`,`topic_to`);

--
-- Index pour la table `flu_posts`
--
ALTER TABLE `flu_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flu_posts_topic_id_idx` (`topic_id`),
  ADD KEY `flu_posts_multi_idx` (`poster_id`,`topic_id`);

--
-- Index pour la table `flu_reports`
--
ALTER TABLE `flu_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flu_reports_zapped_idx` (`zapped`);

--
-- Index pour la table `flu_search_cache`
--
ALTER TABLE `flu_search_cache`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flu_search_cache_ident_idx` (`ident`(8));

--
-- Index pour la table `flu_search_matches`
--
ALTER TABLE `flu_search_matches`
  ADD KEY `flu_search_matches_word_id_idx` (`word_id`),
  ADD KEY `flu_search_matches_post_id_idx` (`post_id`);

--
-- Index pour la table `flu_search_words`
--
ALTER TABLE `flu_search_words`
  ADD PRIMARY KEY (`word`),
  ADD KEY `flu_search_words_id_idx` (`id`);

--
-- Index pour la table `flu_toolbar_conf`
--
ALTER TABLE `flu_toolbar_conf`
  ADD PRIMARY KEY (`conf_name`);

--
-- Index pour la table `flu_toolbar_tags`
--
ALTER TABLE `flu_toolbar_tags`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `flu_topics`
--
ALTER TABLE `flu_topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flu_topics_forum_id_idx` (`forum_id`),
  ADD KEY `flu_topics_moved_to_idx` (`moved_to`),
  ADD KEY `flu_topics_last_post_idx` (`last_post`),
  ADD KEY `flu_topics_first_post_id_idx` (`first_post_id`);

--
-- Index pour la table `flu_topic_subscriptions`
--
ALTER TABLE `flu_topic_subscriptions`
  ADD PRIMARY KEY (`user_id`,`topic_id`);

--
-- Index pour la table `flu_users`
--
ALTER TABLE `flu_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `flu_users_username_idx` (`username`(25)),
  ADD KEY `flu_users_registered_idx` (`registered`);

--
-- Index pour la table `furniture`
--
ALTER TABLE `furniture`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`Hid`);

--
-- Index pour la table `house_spawn`
--
ALTER TABLE `house_spawn`
  ADD UNIQUE KEY `Rid` (`Rid`);

--
-- Index pour la table `ic_amendes`
--
ALTER TABLE `ic_amendes`
  ADD UNIQUE KEY `AMid` (`AMid`);

--
-- Index pour la table `interiors`
--
ALTER TABLE `interiors`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`Bid`),
  ADD UNIQUE KEY `Forum` (`Forum`);

--
-- Index pour la table `limits_factions`
--
ALTER TABLE `limits_factions`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `listenoire`
--
ALTER TABLE `listenoire`
  ADD KEY `SQLid` (`SQLid`);

--
-- Index pour la table `machines`
--
ALTER TABLE `machines`
  ADD PRIMARY KEY (`SQLb`);

--
-- Index pour la table `mapping_ls`
--
ALTER TABLE `mapping_ls`
  ADD UNIQUE KEY `Rid` (`Rid`);

--
-- Index pour la table `mapping_prive`
--
ALTER TABLE `mapping_prive`
  ADD UNIQUE KEY `Rid` (`Rid`);

--
-- Index pour la table `mapping_sa`
--
ALTER TABLE `mapping_sa`
  ADD UNIQUE KEY `Rid` (`Rid`);

--
-- Index pour la table `micros`
--
ALTER TABLE `micros`
  ADD PRIMARY KEY (`mSQL`);

--
-- Index pour la table `modperso`
--
ALTER TABLE `modperso`
  ADD UNIQUE KEY `Rid` (`Rid`);

--
-- Index pour la table `objects`
--
ALTER TABLE `objects`
  ADD KEY `World` (`World`);

--
-- Index pour la table `poubelles`
--
ALTER TABLE `poubelles`
  ADD PRIMARY KEY (`SQLi`);

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `quest_rp`
--
ALTER TABLE `quest_rp`
  ADD PRIMARY KEY (`SQLid`);

--
-- Index pour la table `repertoire`
--
ALTER TABLE `repertoire`
  ADD KEY `oID` (`oID`);

--
-- Index pour la table `serveur_logs`
--
ALTER TABLE `serveur_logs`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `serveur_tags`
--
ALTER TABLE `serveur_tags`
  ADD PRIMARY KEY (`Tid`);

--
-- Index pour la table `skins`
--
ALTER TABLE `skins`
  ADD UNIQUE KEY `Skin` (`Skin`);

--
-- Index pour la table `taxe_mairie`
--
ALTER TABLE `taxe_mairie`
  ADD PRIMARY KEY (`SQL`);

--
-- Index pour la table `trucker`
--
ALTER TABLE `trucker`
  ADD PRIMARY KEY (`Tid`);

--
-- Index pour la table `vehicleparams`
--
ALTER TABLE `vehicleparams`
  ADD UNIQUE KEY `Model` (`Model`);

--
-- Index pour la table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`VEHid`);

--
-- Index pour la table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `SQLid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `banlist`
--
ALTER TABLE `banlist`
  MODIFY `BanID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `casiersinv`
--
ALTER TABLE `casiersinv`
  MODIFY `Sid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `commerces`
--
ALTER TABLE `commerces`
  MODIFY `Cid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `factions`
--
ALTER TABLE `factions`
  MODIFY `Fid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `flu_bans`
--
ALTER TABLE `flu_bans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `flu_categories`
--
ALTER TABLE `flu_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `flu_censoring`
--
ALTER TABLE `flu_censoring`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `flu_forums`
--
ALTER TABLE `flu_forums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `flu_groups`
--
ALTER TABLE `flu_groups`
  MODIFY `g_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT pour la table `flu_logs`
--
ALTER TABLE `flu_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `flu_pms_new_posts`
--
ALTER TABLE `flu_pms_new_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `flu_pms_new_topics`
--
ALTER TABLE `flu_pms_new_topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `flu_posts`
--
ALTER TABLE `flu_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `flu_reports`
--
ALTER TABLE `flu_reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `flu_search_words`
--
ALTER TABLE `flu_search_words`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `flu_topics`
--
ALTER TABLE `flu_topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `flu_users`
--
ALTER TABLE `flu_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=999846;
--
-- AUTO_INCREMENT pour la table `furniture`
--
ALTER TABLE `furniture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=830;
--
-- AUTO_INCREMENT pour la table `houses`
--
ALTER TABLE `houses`
  MODIFY `Hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12445;
--
-- AUTO_INCREMENT pour la table `interiors`
--
ALTER TABLE `interiors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=282;
--
-- AUTO_INCREMENT pour la table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `Bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT pour la table `limits_factions`
--
ALTER TABLE `limits_factions`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `machines`
--
ALTER TABLE `machines`
  MODIFY `SQLb` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `micros`
--
ALTER TABLE `micros`
  MODIFY `mSQL` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `poubelles`
--
ALTER TABLE `poubelles`
  MODIFY `SQLi` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=296;
--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `quest_rp`
--
ALTER TABLE `quest_rp`
  MODIFY `SQLid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT pour la table `serveur_logs`
--
ALTER TABLE `serveur_logs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `serveur_tags`
--
ALTER TABLE `serveur_tags`
  MODIFY `Tid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `taxe_mairie`
--
ALTER TABLE `taxe_mairie`
  MODIFY `SQL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `trucker`
--
ALTER TABLE `trucker`
  MODIFY `Tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `VEHid` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
