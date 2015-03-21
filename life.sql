-- --------------------------------------------------------
-- Host:                         37.187.248.84
-- Server version:               5.6.20-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             8.3.0.4694
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for life
DROP DATABASE IF EXISTS `life`;
CREATE DATABASE IF NOT EXISTS `life` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `life`;


-- Dumping structure for table life.bans
DROP TABLE IF EXISTS `bans`;
CREATE TABLE IF NOT EXISTS `bans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banuid` varchar(50) NOT NULL DEFAULT '',
  `adminuid` varchar(50) NOT NULL DEFAULT '',
  `isperm` int(11) NOT NULL DEFAULT '0',
  `added` varchar(50) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  `reason` varchar(500) NOT NULL DEFAULT '',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table life.bans: ~1 rows (approximately)
DELETE FROM `bans`;
/*!40000 ALTER TABLE `bans` DISABLE KEYS */;
INSERT INTO `bans` (`id`, `banuid`, `adminuid`, `isperm`, `added`, `time`, `reason`) VALUES
	(1, '1234', '12345', 1, '0', 0, 'empty');
/*!40000 ALTER TABLE `bans` ENABLE KEYS */;


-- Dumping structure for procedure life.deleteDeadVehicles
DROP PROCEDURE IF EXISTS `deleteDeadVehicles`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteDeadVehicles`()
BEGIN
	DELETE FROM `vehicles` WHERE `alive` = 0;
END//
DELIMITER ;


-- Dumping structure for procedure life.deleteOldHouses
DROP PROCEDURE IF EXISTS `deleteOldHouses`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteOldHouses`()
BEGIN
  DELETE FROM `houses` WHERE `owned` = 0;
END//
DELIMITER ;


-- Dumping structure for table life.gangs
DROP TABLE IF EXISTS `gangs`;
CREATE TABLE IF NOT EXISTS `gangs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `members` text,
  `maxmembers` int(2) DEFAULT '8',
  `bank` int(100) DEFAULT '0',
  `active` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table life.gangs: ~0 rows (approximately)
DELETE FROM `gangs`;
/*!40000 ALTER TABLE `gangs` DISABLE KEYS */;
INSERT INTO `gangs` (`id`, `owner`, `name`, `members`, `maxmembers`, `bank`, `active`) VALUES
	(1, '76561198101103490', 'Derps', '"[`76561198101103490`]"', 8, 0, 1);
/*!40000 ALTER TABLE `gangs` ENABLE KEYS */;


-- Dumping structure for table life.houses
DROP TABLE IF EXISTS `houses`;
CREATE TABLE IF NOT EXISTS `houses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(32) NOT NULL,
  `pos` varchar(64) DEFAULT NULL,
  `inventory` text,
  `containers` text,
  `owned` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`,`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=latin1;

-- Dumping data for table life.houses: ~175 rows (approximately)
DELETE FROM `houses`;
/*!40000 ALTER TABLE `houses` DISABLE KEYS */;
INSERT INTO `houses` (`id`, `pid`, `pos`, `inventory`, `containers`, `owned`) VALUES
	(63, '76561197982243055', '[5376.79,3118.98,0.709914]', '"[[],0]"', '"[]"', 1),
	(64, '76561197982243055', '[5392.06,3124.56,2.47262]', '"[[],0]"', '"[[`Box_IND_Grenades_F`,[[[],[]],[[`30Rnd_556x45_Stanag_Tracer_Red`,`RH_20Rnd_57x28_FN`],[10,2]],[[],[]],[[],[]]]],[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]]]"', 1),
	(69, '76561198079842257', '[5835.72,8312.43,0.0432434]', '"[[],0]"', '"[]"', 1),
	(77, '76561198079002705', '[8802.77,8242.91,-0.000117302]', '"[[[`tbacon`,1],[`water`,3],[`rabbit`,5],[`boltcutter`,1]],14]"', '"[[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]],[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]]]"', 1),
	(78, '76561198079002705', '[8800.94,8253.49,-1.43051e-005]', '"[[],0]"', '"[]"', 1),
	(79, '76561198079002705', '[8806.95,8277.14,9.53674e-007]', '"[[],0]"', '"[[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]]]"', 1),
	(81, '76561198076582192', '[8075.63,6175.13,-0.00491619]', '"[[[`goldbar`,3]],36]"', '"[[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]],[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]],[`B_supplyCrate_F`,[[[`RH_M16A4`],[1]],[[],[]],[[`ToolKit`],[8]],[[],[]]]],[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]]]"', 1),
	(82, '76561198076582192', '[5378.34,3013.24,-0.0195341]', '"[[],0]"', '"[]"', 1),
	(83, '76561198076582192', '[5330.48,3040.15,0.74647]', '"[[],0]"', '"[]"', 1),
	(86, '76561198036258809', '[8144.04,6138.86,-1.90735e-006]', '"[[[`water`,2],[`tbacon`,2],[`redgull`,1]],5]"', '"[[`B_supplyCrate_F`,[[[],[]],[[],[]],[[`A3L_Prisoner_Outfit`],[1]],[[],[]]]],[`B_supplyCrate_F`,[[[`RH_M16A4`,`RH_M16A3`,`RH_ar10`],[1,1,1]],[[`30Rnd_556x45_Stanag`,`RH_17Rnd_9x19_g17`,`RH_20Rnd_762x51_AR10`,`RH_15Rnd_9x19_M9`],[26,2,10,3]],[[`RH_compm4s`,`RH_shortdot`,`U_O_SpecopsUniform_ocamo`,`U_O_PilotCoveralls`,`V_TacVest_khk`,`A3L_gangster_hat`,`FirstAidKit`,`U_IG_Guerilla1_1`,`Medikit`,`RH_ta31rco`,`V_Rangemaster_belt`,`A3L_russianhat`,`H_Shemag_olive`,`A3L_Balaclava`],[3,2,1,1,1,1,2,1,1,1,1,1,1,1]],[[`B_Carryall_khk`,`B_Carryall_oli`],[1,1]]]]]"', 1),
	(89, '76561198075543801', '[5841.89,8380.21,0.000427246]', '"[[],0]"', '"[]"', 1),
	(94, '76561198018947086', '[8836.87,8266.03,-0.000144958]', '"[[],0]"', '"[[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]],[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]]]"', 1),
	(95, '76561198018947086', '[8846.46,8264.21,-1.23978e-005]', '"[[],0]"', '"[]"', 1),
	(96, '76561198044212688', '[8270.09,6032.12,1.90735e-006]', '"[[[`pickaxe`,7],[`fuelE`,1],[`water`,8],[`tbacon`,8],[`lockpick`,10]],42]"', '"[[`B_supplyCrate_F`,[[[],[]],[[`RH_32Rnd_9x19_tec`,`RH_7Rnd_50_AE`,`RH_15Rnd_9x19_M9`,`RH_17Rnd_9x19_g17`],[11,1,8,1]],[[`A3L_Prisoner_Uniform`,`A3L_sombrero`,`A3L_Poop2day`,`H_RacingHelmet_3_F`,`A3LShirt`,`V_HarnessO_brn`,`V_TacVest_khk`,`V_BandollierB_cbr`,`pervt_uni`,`sohoku_uni`,`A3L_Character_Uniform`,`tf_anprc148jem_7`,`PinkPlaid_uni`,`H_ShemagOpen_tan`,`tf_anprc148jem_45`,`RedPlaid_uni`,`MotherTrucker_uni`],[3,1,1,1,3,3,4,4,1,1,1,1,1,1,1,1,1]],[[],[]]]]]"', 1),
	(99, '76561198141664046', '[8021.39,5172.05,0.873327]', '"[[[`water`,56],[`tbacon`,69],[`redgull`,41],[`boltcutter`,1],[`pickaxe`,29],[`lockpick`,115],[`coffee`,23],[`donuts`,21],[`salt`,214],[`salt_r`,562],[`blastingcharge`,3],[`fuelF`,1],[`rabbit`,1],[`storagebig`,6]],1703]"', '"[[`B_supplyCrate_F`,[[[`RH_g18`,`RH_tec9`,`RH_m1911`,`RH_usp`,`RH_deagle`,`RH_p226`,`RH_M16A3`,`RH_p226s`,`Binocular`,`RH_ar10`,`RH_g19t`,`RH_g19`,`RH_M16A4`,`RH_Mk12mod1`],[6,4,1,1,2,2,2,2,1,13,2,1,9,5]],[[`30Rnd_556x45_Stanag`,`RH_20Rnd_762x51_AR10`,`RH_32Rnd_9x19_tec`,`RH_12Rnd_45cal_usp`,`RH_7Rnd_45cal_m1911`,`RH_7Rnd_50_AE`,`RH_20Rnd_57x28_FN`,`RH_15Rnd_9x19_SIG`,`RH_15Rnd_45cal_fnp`,`Chemlight_blue`,`RH_33Rnd_9x19_g18`,`RH_17Rnd_9x19_g17`,`RH_18Rnd_9x19_gsh`],[109,77,26,3,2,8,4,11,5,17,3,3,2]],[[`RH_shortdot`,`RH_reflex`,`ItemGPS`,`MotherTrucker_uni`,`V_HarnessO_brn`,`FirstAidKit`,`A3L_Balaclava`,`H_ShemagOpen_khk`,`A3L_Suit_Uniform`,`U_I_G_Story_Protagonist_F`,`V_TacVest_khk`],[11,1,1,1,1,1,1,1,2,1,1]],[[`tf_anprc155`,`B_Carryall_oli`],[1,1]]]],[`B_supplyCrate_F`,[[[],[]],[[`Chemlight_blue`,`30Rnd_556x45_Stanag`],[2,2]],[[`A3L_Mask`,`V_TacVest_khk`,`A3L_Suit_Uniform`,`taxi_uni`,`U_IG_leader`,`pervt_uni`,`tacobell`,`BluePlaid_uni`,`A3L_Balaclava`,`tf_anprc148jem_13`,`U_I_G_Story_Protagonist_F`],[15,2,2,1,1,1,1,1,1,1,1]],[[`B_Carryall_khk`],[1]]]],[`B_supplyCrate_F`,[[[],[]],[[`RH_7Rnd_45cal_m1911`],[1]],[[`V_TacVest_khk`,`A3L_Suit_Uniform`],[2,1]],[[],[]]]],[`B_supplyCrate_F`,[[[`RH_tec9`],[1]],[[`RH_7Rnd_45cal_m1911`,`RH_20Rnd_762x51_AR10`,`30Rnd_556x45_Stanag`,`RH_32Rnd_9x19_tec`,`RH_15Rnd_9x19_SIG`],[1,6,1,2,1]],[[`V_TacVest_khk`,`RH_reflex`,`U_O_GhillieSuit`,`FirstAidKit`,`ToolKit`,`A3LShirt`,`U_I_G_Story_Protagonist_F`,`RH_X300`],[3,2,2,15,15,1,1,1]],[[`B_Carryall_oli`],[2]]]]]"', 1),
	(100, '76561198044212688', '[8210.85,5319.13,0.366711]', '"[[],0]"', '"[]"', 1),
	(101, '76561198141664046', '[8030.75,5166.1,0.634451]', '"[[],0]"', '"[]"', 1),
	(102, '76561198089362922', '[7952.18,5304.03,-0.0370445]', '"[[],0]"', '"[]"', 1),
	(104, '76561198107584948', '[8180.98,6123.02,0.000644684]', '"[[[`salt_r`,18],[`pickaxe`,1]],20]"', '"[[`B_supplyCrate_F`,[[[`RH_ar10`,`RH_muzi`],[1,1]],[[`RH_20Rnd_762x51_AR10`,`RH_30Rnd_9x19_UZI`],[2,1]],[[`A3L_Suit_Uniform`],[1]],[[],[]]]]]"', 1),
	(105, '76561198096824105', '[8164.56,5384.31,3.19008]', '"[[],0]"', '"[]"', 1),
	(106, '76561198096824105', '[8151.9,5391.89,1.29286]', '"[[],0]"', '"[]"', 1),
	(107, '76561198076582192', '[8115.68,5401.47,0.851351]', '"[[],0]"', '"[]"', 1),
	(108, '76561198076582192', '[8100.22,5403.87,1.20928]', '"[[],0]"', '"[]"', 1),
	(109, '76561198082483217', '[8101.25,6164.54,0.000163078]', '"[[[`salt_r`,28],[`blastingcharge`,1],[`water`,2],[`tbacon`,2],[`lockpick`,5],[`redgull`,3]],55]"', '"[[`B_supplyCrate_F`,[[[`RH_g18`],[1]],[[`30Rnd_556x45_Stanag`,`RH_33Rnd_9x19_g18`,`RH_15Rnd_9x19_M9`],[4,5,7]],[[],[]],[[],[]]]]]"', 1),
	(110, '76561198126347000', '[8122.57,6164.68,0]', '"[[],0]"', '"[[`Box_IND_Grenades_F`,[[[`RH_ttracker_g`,`Binocular`,`RH_Deagleg`],[1,1,1]],[[`RH_6Rnd_45ACP_Mag`,`RH_7Rnd_50_AE`],[10,8]],[[`FirstAidKit`,`NVGoggles`,`tf_anprc148jem_22`,`A3L_longhairblack`,`ItemGPS`,`G_Aviator`,`tf_anprc148jem_6`],[4,1,1,1,1,1,1]],[[],[]]]]]"', 1),
	(112, '76561198071625676', '[8082.93,6210.82,0.00362587]', '"[[[`fuelF`,1],[`rabbit`,12],[`pickaxe`,1]],19]"', '"[[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]]]"', 1),
	(113, '76561198080497470', '[7965.28,5225.31,-0.0634766]', '"[[],0]"', '"[]"', 1),
	(114, '76561198080497470', '[7988.75,5192.19,1.84515]', '"[[[`water`,19],[`tbacon`,61],[`redgull`,17],[`pickaxe`,6],[`apple`,5],[`lockpick`,23],[`fuelF`,10],[`oilu`,76],[`rabbit`,10],[`donuts`,5],[`salema`,1],[`ornate`,1],[`coffee`,3],[`spikeStrip`,1],[`salt`,88],[`storagebig`,2]],1040]"', '"[[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]],[`B_supplyCrate_F`,[[[],[]],[[],[]],[[`A3L_Balaclava`,`V_TacVest_khk`,`U_O_PilotCoveralls`,`H_MilCap_oucamo`,`U_O_GhillieSuit`,`H_HelmetO_ocamo`,`A3LPaintBallHelmet`,`RH_reflex`,`G_Shades_Green`,`WhGyBr_uni`,`G_Aviator`,`G_Diving`,`sohoku_uni`,`V_RebreatherB`,`U_I_G_Story_Protagonist_F`,`A3L_Dude_Outfit`,`MotherTrucker_uni`,`A3L_Mask`,`H_ShemagOpen_tan`,`A3L_Suit_Uniform`,`G_Combat`,`A3L_sheriffvest3`,`WhBlBr_uni`,`A3L_Character_Uniform`,`A3L_Prisoner_Outfit`,`A3LShirt`],[9,20,1,4,2,2,1,1,1,6,6,1,3,1,2,1,1,4,5,3,1,1,1,1,1,1]],[[`B_Parachute`,`B_Carryall_khk`],[6,3]]]],[`B_supplyCrate_F`,[[[`RH_ar10`,`RH_g18`,`RH_gsh18`,`RH_bull`,`RH_kimber`,`RH_uspm`,`RH_g19`,`RH_mk2`,`RH_M16A3`,`RH_muzi`,`RH_mak`,`RH_mateba`,`RH_m9`,`RH_fn57_g`,`RH_fnp45t`,`RH_p226`,`RH_Mk12mod1`,`RH_M16A4`],[11,5,2,1,1,1,3,1,2,1,2,1,1,1,1,2,2,3]],[[`RH_15Rnd_45cal_fnp`,`RH_20Rnd_762x51_AR10`,`RH_12Rnd_45cal_usp`,`RH_6Rnd_454_Mag`,`RH_20Rnd_57x28_FN`,`RH_7Rnd_50_AE`,`30Rnd_556x45_Stanag`,`RH_10Rnd_22LR_mk2`,`RH_15Rnd_9x19_M9`,`RH_8Rnd_9x18_Mak`,`RH_33Rnd_9x19_g18`,`RH_30Rnd_9x19_UZI`,`RH_15Rnd_9x19_SIG`,`30Rnd_556x45_Stanag_Tracer_Red`],[1,133,6,3,15,5,55,5,1,16,14,5,2,5]],[[`RH_shortdot`,`RH_reflex`,`RH_compm4s`,`RH_X300`],[6,1,2,1]],[[],[]]]],[`B_supplyCrate_F`,[[[],[]],[[],[]],[[`ToolKit`,`NVGoggles`,`FirstAidKit`,`tf_anprc148jem_19`,`tf_anprc148jem_16`,`tf_anprc152_8`,`tf_anprc148jem_27`,`tf_anprc148jem_12`],[13,4,14,1,1,1,1,2]],[[],[]]]]]"', 1),
	(115, '76561198089362922', '[7956.42,5323.71,2.89916]', '"[[[`water`,45],[`tbacon`,43],[`pickaxe`,7],[`lockpick`,68],[`cannabis seed`,84],[`salt`,143],[`donuts`,22],[`rabbit`,7],[`turtlesoup`,1],[`redgull`,1]],673]"', '"[[`B_supplyCrate_F`,[[[`RH_tec9`,`RH_uspm`,`RH_ar10`,`RH_g18`],[3,1,2,1]],[[`RH_30Rnd_9x19_UZI`,`RH_20Rnd_762x51_AR10`,`Chemlight_yellow`,`RH_7Rnd_50_AE`,`RH_32Rnd_9x19_tec`,`RH_15Rnd_45cal_fnp`,`Chemlight_green`,`RH_33Rnd_9x19_g18`],[6,14,14,4,41,1,1,1]],[[`V_TacVest_khk`,`ToolKit`,`FirstAidKit`,`A3LShirt`],[1,3,3,2]],[[`B_Carryall_khk`,`B_Parachute`],[1,2]]]],[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]],[`B_supplyCrate_F`,[[[`RH_tec9`],[1]],[[`30Rnd_556x45_Stanag`,`RH_32Rnd_9x19_tec`,`RH_20Rnd_762x51_AR10`],[5,5,1]],[[`FirstAidKit`,`NVGoggles`],[1,1]],[[`B_Carryall_khk`],[1]]]]]"', 1),
	(117, '76561197971244910', '[7957.86,5237.31,-0.0242043]', '"[[],0]"', '"[]"', 1),
	(119, '76561198044119911', '[8039.49,5242.23,0.829508]', '"[[],0]"', '"[]"', 1),
	(120, '76561198142229863', '[5394.35,3099.09,0.516972]', '"[[],0]"', '"[]"', 1),
	(121, '76561198071899606', '[7967.76,5347.52,0.0137653]', '"[[],0]"', '"[]"', 1),
	(125, '76561198043875309', '[8147.39,5286.6,0.466446]', '"[[],0]"', '"[]"', 1),
	(126, '76561198043875309', '[8216.69,5309.76,1.42126]', '"[[],0]"', '"[[`Box_IND_Grenades_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]],[`Box_IND_Grenades_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]],[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]]]"', 1),
	(127, '76561197971244910', '[7950.73,5284.02,1.65944]', '"[[[`lockpick`,22],[`salt`,310]],952]"', '"[[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]],[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]]]"', 1),
	(128, '76561197968289770', '[8029.55,5278.11,0.0648136]', '"[[],0]"', '"[]"', 1),
	(129, '76561198052103366', '[8221.64,5082.17,1.44542]', '"[[[`water`,10],[`fuelF`,1],[`coffee`,13]],28]"', '"[[`B_supplyCrate_F`,[[[],[]],[[],[]],[[`A3LShirt`],[2]],[[`B_FieldPack_ocamo`],[1]]]],[`Box_IND_Grenades_F`,[[[],[]],[[],[]],[[`BluePlaid_uni`,`A3L_gangster_hat`,`A3L_A3LogoPants`,`U_C_Commoner1_1`],[2,1,1,1]],[[`B_Carryall_khk`],[1]]]]]"', 1),
	(130, '76561198052103366', '[8235.52,5086,0.455013]', '"[[],0]"', '"[]"', 1),
	(133, '76561198042736684', '[8274.11,5214.32,1.47215]', '"[[],0]"', '"[[`B_supplyCrate_F`,[[[],[]],[[],[]],[[`checkered_uni`,`A3L_sombrero`,`A3L_mexicanhat`],[1,1,1]],[[],[]]]]]"', 1),
	(134, '76561198047097369', '[3792.95,2096.45,0.94838]', '"[[[`pickaxe`,1],[`water`,18],[`tbacon`,21],[`lockpick`,4]],45]"', '"[[`B_supplyCrate_F`,[[[`RH_M16A4`,`RH_Mk12mod1`,`RH_ar10`,`RH_M16A3`,`RH_cz75`],[1,3,1,1,1]],[[`30Rnd_556x45_Stanag`,`RH_17Rnd_9x19_g17`,`RH_10Rnd_22LR_mk2`,`RH_20Rnd_762x51_AR10`,`RH_33Rnd_9x19_g18`,`RH_16Rnd_9x19_CZ`],[47,4,2,20,4,1]],[[`RH_shortdot`,`RH_reflex`,`ToolKit`],[4,1,1]],[[],[]]]],[`B_supplyCrate_F`,[[[],[]],[[`RH_32Rnd_9x19_tec`,`30Rnd_556x45_Stanag`],[1,2]],[[],[]],[[],[]]]],[`B_supplyCrate_F`,[[[`RH_Mk12mod1`,`RH_ar10`,`RH_tec9`,`RH_mk2`,`RH_m9c`],[1,1,1,2,1]],[[`30Rnd_556x45_Stanag`,`RH_20Rnd_762x51_AR10`,`RH_32Rnd_9x19_tec`,`RH_10Rnd_22LR_mk2`,`RH_15Rnd_9x19_M9`],[9,6,5,12,6]],[[`FirstAidKit`,`A3L_mexicanhat`,`RH_shortdot`,`ItemGPS`,`taxi_uni`],[4,1,1,1,1]],[[],[]]]]]"', 1),
	(136, '76561198079842257', '[2898.03,5644.34,1.61365]', '"[[],0]"', '"[]"', 1),
	(137, '76561198079842257', '[2905.49,5631.53,0.386566]', '"[[],0]"', '"[]"', 1),
	(139, '76561197983200324', '[8287.25,5162.88,1.4506]', '"[[],0]"', '"[[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]]]"', 1),
	(140, '76561197983200324', '[8289.42,5180.68,0.419952]', '"[[],0]"', '"[]"', 1),
	(143, '76561198071625676', '[8124.67,5300.02,1.46392]', '"[[[`pickaxe`,5]],10]"', '"[[`B_supplyCrate_F`,[[[`RH_Mk12mod1`,`RH_M16A4`],[1,1]],[[`30Rnd_556x45_Stanag`],[13]],[[`U_IG_Guerilla1_1`,`RH_shortdot`,`V_BandollierB_cbr`,`ToolKit`,`FirstAidKit`,`H_ShemagOpen_khk`,`G_Squares`,`V_RebreatherB`,`U_B_Wetsuit`],[2,2,2,3,1,1,1,1,1]],[[],[]]]]]"', 1),
	(144, '76561198071625676', '[8113.17,5299.98,0.438398]', '"[[],0]"', '"[]"', 1),
	(147, '76561198078510235', '[8114.51,5250.66,0.413017]', '"[[],0]"', '"[]"', 1),
	(148, '76561198078510235', '[8125.17,5253.53,1.44072]', '"[[],0]"', '"[]"', 1),
	(149, '76561198078510235', '[8114.51,5250.66,0.413017]', '"[[],0]"', '"[]"', 1),
	(151, '76561198042736684', '[8267.71,5232.02,0.463802]', '"[[],0]"', '"[]"', 1),
	(154, '76561198014371199', '[3746.62,2096.45,1.01056]', '"[[[`pickaxe`,4],[`water`,26],[`cannabis seed`,128],[`boltcutter`,1],[`tbacon`,3],[`coffee`,2]],108]"', '"[[`B_supplyCrate_F`,[[[],[]],[[],[]],[[`A3LShirt`],[1]],[[],[]]]],[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]],[`B_supplyCrate_F`,[[[`RH_ar10`,`RH_Mk12mod1`,`RH_M16A3`,`RH_M16A4`,`RH_tec9`],[5,2,1,1,2]],[[`RH_20Rnd_762x51_AR10`,`30Rnd_556x45_Stanag`,`RH_16Rnd_9x19_CZ`,`RH_32Rnd_9x19_tec`],[18,29,2,12]],[[`RH_reflex`,`RH_shortdot`,`A3L_russianhat`,`dutch`,`A3L_Farmer_Outfit`,`taxi_uni`,`NVGoggles`,`U_O_SpecopsUniform_ocamo`,`V_TacVest_khk`,`H_ShemagOpen_tan`],[1,2,1,1,1,3,2,1,1,1]],[[`B_Carryall_khk`],[1]]]]]"', 1),
	(155, '76561198021737822', '[8087.22,5301.82,1.46762]', '"[[],0]"', '"[]"', 1),
	(156, '76561198021737822', '[8098.29,5302.43,0.0647335]', '"[[],0]"', '"[]"', 1),
	(158, '76561197963120969', '[8260.75,6473.76,-0.00333977]', '"[[],0]"', '"[[`Box_IND_Grenades_F`,[[[`hgun_Pistol_Signal_F`],[1]],[[],[]],[[],[]],[[],[]]]]]"', 1),
	(160, '76561197963120969', '[8260.55,6457.41,1.01305]', '"[[],0]"', '"[]"', 1),
	(162, '76561197968289770', '[8029.47,5266.67,1.43012]', '"[[[`tbacon`,17],[`water`,23],[`pickaxe`,6],[`lockpick`,16],[`fuelF`,3],[`rabbit`,2],[`coffee`,1],[`salt_r`,1]],87]"', '"[[`B_supplyCrate_F`,[[[`RH_fnp45t`,`RH_mk2`,`RH_p226s`,`RH_M16A4`],[1,1,1,1]],[[`RH_15Rnd_9x19_SIG`,`RH_20Rnd_762x51_AR10`,`RH_30Rnd_9x19_UZI`,`RH_15Rnd_45cal_fnp`,`RH_10Rnd_22LR_mk2`,`RH_18Rnd_9x19_gsh`,`30Rnd_556x45_Stanag`],[5,11,11,14,9,7,3]],[[`ToolKit`,`FirstAidKit`,`tf_anprc148jem_8`,`RH_shortdot`,`RH_reflex`,`NVGoggles`,`tf_anprc148jem_10`,`RH_compm4s`,`A3L_russianhat`,`tf_anprc148jem_9`],[9,13,3,1,1,2,1,1,1,1]],[[],[]]]]]"', 1),
	(163, '76561198045232996', '[8154.39,5277.73,1.46822]', '"[[],0]"', '"[]"', 1),
	(164, '76561198043383929', '[8049.75,5237.54,1.42453]', '"[[],0]"', '"[]"', 1),
	(165, '76561198045232996', '[8287.21,5115.81,0.461506]', '"[[],0]"', '"[]"', 1),
	(166, '76561198080497470', '[5764.55,10024.6,-0.00648499]', '"[[],0]"', '"[]"', 1),
	(167, '76561198014588255', '[8223.19,6052.06,2.51858]', '"[[],0]"', '"[]"', 1),
	(169, '76561197989138033', '[8206.18,6180.31,0.00631428]', '"[[],0]"', '"[[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]]]"', 1),
	(170, '76561197963120969', '[8290.45,6458.23,0.0787544]', '"[[],0]"', '"[]"', 1),
	(172, '76561198156118051', '[8631.26,6470.62,0.0011816]', '"[[],0]"', '"[[`B_supplyCrate_F`,[[[],[]],[[`30Rnd_556x45_Stanag`],[4]],[[`V_PlateCarrierIA1_dgtl`,`U_I_GhillieSuit`],[14,14]],[[],[]]]]]"', 1),
	(173, '76561198048587780', '[8641.65,6471.15,0.141357]', '"[[],0]"', '"[]"', 1),
	(174, '76561198013533939', '[8188.4,6164.29,-0.00587273]', '"[[],0]"', '"[[`B_supplyCrate_F`,[[[`RH_M16A4`,`RH_m9c`,`RH_sw659`,`RH_mak`,`RH_mk2`,`RH_fn57_g`,`RH_gsh18`],[6,4,1,1,4,1,1]],[[`30Rnd_556x45_Stanag`,`RH_20Rnd_762x51_AR10`,`RH_14Rnd_9x19_sw`,`RH_12Rnd_45cal_usp`,`RH_8Rnd_9x18_Mak`,`RH_20Rnd_57x28_FN`,`RH_10Rnd_22LR_mk2`,`RH_15Rnd_9x19_M9`],[39,2,7,3,5,1,6,1]],[[`RH_shortdot`],[1]],[[],[]]]],[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]]]"', 1),
	(177, '76561198040421627', '[8087.75,6232.81,0.88165]', '"[[[`pickaxe`,1],[`boltcutter`,1],[`lockpick`,17],[`tbacon`,4],[`coffee`,1],[`apple`,1],[`donuts`,1000],[`salt_r`,36],[`salt`,49]],214]"', '"[[`B_supplyCrate_F`,[[[`RH_ar10`,`RH_uspm`,`RH_M16A3`,`RH_fnp45`],[3,1,1,1]],[[`RH_16Rnd_9x19_CZ`,`RH_15Rnd_9x19_SIG`,`30Rnd_556x45_Stanag`,`RH_20Rnd_57x28_FN`,`RH_18Rnd_9x19_gsh`,`RH_15Rnd_9x19_M9`],[6,1,20,8,2,1]],[[`G_Spectacles`,`V_TacVest_khk`,`G_Sport_Blackyellow`,`A3LShirt`,`A3LPaintBallHelmet`,`A3L_crown`,`RH_shortdot`,`A3L_Dude_Outfit`,`BluePlaid_uni`],[1,1,1,2,1,1,8,2,1]],[[`B_TacticalPack_oli`],[1]]]]]"', 1),
	(178, '76561198068138825', '[8236.06,5284.26,0.505703]', '"[[],0]"', '"[]"', 1),
	(180, '76561198095696376', '[8290.17,6124.42,-0.0173235]', '"[[],0]"', '"[[`B_supplyCrate_F`,[[[`RH_tec9`,`RH_M16A4`,`RH_p226`],[1,11,1]],[[`RH_32Rnd_9x19_tec`],[6]],[[`RH_reflex`,`RedPlaid_uni`,`A3L_gangster_hat`,`RH_compm4s`,`V_HarnessO_brn`,`RH_shortdot`,`A3L_Balaclava`],[1,1,1,1,1,1,1]],[[],[]]]]]"', 1),
	(184, '76561198156118051', '[2842.02,5614.47,1.61563]', '"[[],0]"', '"[]"', 1),
	(185, '76561198156118051', '[2835.04,5623.12,0.328156]', '"[[],0]"', '"[]"', 1),
	(186, '76561197968352565', '[10119.6,921.88,-0.0158386]', '"[[[`lockpick`,8],[`redgull`,5],[`water`,4],[`tbacon`,1]],18]"', '"[[`B_supplyCrate_F`,[[[`RH_M16A3`,`RH_g18`,`RH_muzi`],[1,1,1]],[[`RH_6Rnd_44_Mag`,`30Rnd_556x45_Stanag`,`RH_33Rnd_9x19_g18`],[4,17,5]],[[],[]],[[],[]]]]]"', 1),
	(187, '76561198060477580', '[8215.4,6105.58,-0.0533772]', '"[[[`lockpick`,10],[`tbacon`,1],[`water`,1]],12]"', '"[[`B_supplyCrate_F`,[[[`RH_M16A3`,`RH_fn57`],[2,1]],[[`RH_7Rnd_50_AE`,`30Rnd_556x45_Stanag`,`RH_20Rnd_57x28_FN`],[7,51,3]],[[`A3L_Suit_Uniform`,`G_Shades_Black`,`U_IG_Guerilla1_1`,`G_Tactical_Clear`,`U_IG_leader`,`H_MilCap_oucamo`,`ToolKit`,`U_I_G_resistanceLeader_F`,`RH_compm4s`,`RH_shortdot`],[2,2,2,3,1,1,2,1,2,2]],[[],[]]]]]"', 1),
	(188, '76561197997150344', '[8105.96,6154.5,0.000421524]', '"[[],0]"', '"[]"', 1),
	(189, '76561197990266260', '[6113.7,5029.92,-0.0164032]', '"[[],0]"', '"[]"', 1),
	(192, '76561198095696376', '[8070.35,5408.88,0.851549]', '"[[],0]"', '"[]"', 1),
	(196, '76561198076743469', '[8357.42,6403.98,0.000131607]', '"[[],0]"', '"[[`B_supplyCrate_F`,[[[],[]],[[`RH_12Rnd_45cal_usp`,`RH_15Rnd_45cal_fnp`],[2,2]],[[`FirstAidKit`,`H_RacingHelmet_3_F`,`U_C_Driver_3`,`ToolKit`],[4,1,1,2]],[[],[]]]]]"', 1),
	(197, '76561198040421627', '[8897.81,8260.08,-4.29153e-005]', '"[[],0]"', '"[]"', 1),
	(198, '76561198130601181', '[5744.16,10041.2,0.000411987]', '"[[[`cannabis`,189]],378]"', '"[[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]]]"', 1),
	(199, '76561198120694818', '[5750.26,10026.6,-0.00187683]', '"[[],0]"', '"[]"', 1),
	(200, '76561198120694818', '[5753.36,10049.3,0.46669]', '"[[],0]"', '"[]"', 1),
	(201, '76561198130601181', '[9732.36,7968.27,-0.000701904]', '"[[[`water`,55],[`pickaxe`,18],[`tbacon`,55]],146]"', '"[[`B_supplyCrate_F`,[[[`RH_M16A4`,`RH_bull`,`RH_python`,`RH_ar10`,`RH_tec9`,`RH_Mk12mod1`,`RH_deagle`],[1,1,1,3,1,3,1]],[[`30Rnd_556x45_Stanag`,`RH_32Rnd_9x19_tec`,`RH_6Rnd_454_Mag`,`RH_6Rnd_357_Mag`,`RH_20Rnd_762x51_AR10`,`RH_15Rnd_9x19_SIG`,`RH_7Rnd_50_AE`],[21,21,5,6,30,4,7]],[[`A3L_Balaclava`,`ToolKit`,`A3L_russianhat`,`A3L_Mask`,`A3L_crown`,`RH_shortdot`,`A3L_Suit_Uniform`,`H_MilCap_oucamo`],[3,3,1,1,1,6,2,1]],[[],[]]]]]"', 1),
	(202, '76561198130601181', '[9743.17,7943.39,0.469269]', '"[[],0]"', '"[]"', 1),
	(203, '76561198120694818', '[6116.78,5056.88,0.47113]', '"[[],0]"', '"[]"', 1),
	(205, '76561198049227146', '[2965.82,5572.44,1.02161]', '"[[],0]"', '"[]"', 1),
	(210, '76561198156118051', '[8041.71,5298.95,0.00677109]', '"[[],0]"', '"[]"', 1),
	(211, '76561198088986439', '[8210.8,6096.93,0.0527716]', '"[[[`water`,3],[`rabbit`,8]],11]"', '"[[`Box_IND_Grenades_F`,[[[`RH_M16A3`],[1]],[[`30Rnd_556x45_Stanag`],[6]],[[`RH_shortdot`,`RH_compm4s`],[1,1]],[[],[]]]]]"', 1),
	(212, '76561198003749905', '[8630.38,6478.61,0.0010252]', '"[[[`fuelE`,1],[`salt_r`,206]],208]"', '"[[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]]]"', 1),
	(213, '76561198071899606', '[8639.64,6487.03,0.00163555]', '"[[[`salt`,18]],54]"', '"[[`B_supplyCrate_F`,[[[],[]],[[`30Rnd_556x45_Stanag`,`RH_7Rnd_50_AE`],[40,1]],[[`A3L_Suit_Uniform`,`BluePlaid_uni`,`walkingdead`,`U_IG_Guerilla1_1`,`U_C_Poloshirt_redwhite`,`A3LShirt`],[2,1,5,1,1,2]],[[],[]]]]]"', 1),
	(214, '76561198014525405', '[8377.91,6393.22,-0.000496864]', '"[[[`pickaxe`,4],[`tbacon`,40],[`water`,40],[`rabbit`,1]],89]"', '"[[`B_supplyCrate_F`,[[[],[]],[[],[]],[[`ToolKit`,`FirstAidKit`],[33,38]],[[],[]]]],[`B_supplyCrate_F`,[[[`RH_p226`,`RH_p226s`,`RH_M16A4`,`RH_Mk12mod1`,`RH_cz75`],[5,7,5,1,3]],[[`30Rnd_556x45_Stanag`,`RH_15Rnd_9x19_SIG`,`RH_16Rnd_9x19_CZ`],[187,143,38]],[[`RH_shortdot`],[11]],[[],[]]]]]"', 1),
	(215, '76561197960552483', '[8279.03,5102.21,1.44549]', '"[[],0]"', '"[]"', 1),
	(216, '76561198070924593', '[8266.72,6478.16,0.00162697]', '"[[[`salt_r`,210],[`salt`,120]],570]"', '"[[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]]]"', 1),
	(217, '76561198068850452', '[8947.08,8267.07,-4.19617e-005]', '"[[],0]"', '"[]"', 1),
	(219, '76561197960552483', '[8052.63,5362.43,0.646498]', '"[[],0]"', '"[]"', 1),
	(220, '76561198027426161', '[6441.54,3743.36,2.69799]', '"[[[`cannabis seed`,200],[`cannabis`,76],[`lockpick`,24],[`redgull`,3],[`tbacon`,3],[`water`,3],[`boltcutter`,2],[`rabbit`,1]],296]"', '"[[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]]]"', 1),
	(226, '76561198156118051', '[6463.64,3745.4,2.12871]', '"[[],0]"', '"[]"', 1),
	(227, '76561198075543801', '[6433.35,3749.01,3.10009]', '"[[],0]"', '"[[`B_supplyCrate_F`,[[[`RH_M16A4`],[1]],[[],[]],[[`RH_saker`,`RH_shortdot`],[13,1]],[[],[]]]]]"', 1),
	(231, '76561198061050664', '[5885.36,8211.52,2.04239]', '"[[],0]"', '"[[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]]]"', 1),
	(232, '76561198003749905', '[5927.16,8118.28,1.37305]', '"[[[`pickaxe`,4],[`lockpick`,8],[`water`,15],[`rabbit`,30]],61]"', '"[[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]],[`B_supplyCrate_F`,[[[`RH_M16A3`,`RH_g18`,`RH_ar10`],[4,3,1]],[[`30Rnd_556x45_Stanag`,`RH_20Rnd_762x51_AR10`],[38,8]],[[`RH_shortdot`,`V_BandollierB_cbr`,`H_Shemag_olive`],[3,1,1]],[[],[]]]]]"', 1),
	(233, '76561198061050664', '[5953.93,8134.8,0.0431519]', '"[[],0]"', '"[]"', 1),
	(234, '76561198004049868', '[9800.24,926.16,-0.00390625]', '"[[],0]"', '"[[`B_supplyCrate_F`,[[[`RH_g18`,`RH_m9`,`RH_M16A3`],[1,1,1]],[[`30Rnd_556x45_Stanag`,`RH_32Rnd_9x19_tec`,`RH_33Rnd_9x19_g18`,`RH_15Rnd_9x19_M9`,`RH_18Rnd_9x19_gsh`],[10,5,5,9,2]],[[`RH_compm4s`,`RH_shortdot`],[3,1]],[[],[]]]]]"', 1),
	(235, '76561198058824453', '[8243.74,5270.3,1.4388]', '"[[],0]"', '"[]"', 1),
	(236, '76561198085280394', '[9744.85,881.113,0.803268]', '"[[[`water`,8],[`tbacon`,8],[`redgull`,5],[`boltcutter`,1],[`pickaxe`,4]],34]"', '"[[`B_supplyCrate_F`,[[[`RH_ar10`,`RH_M16A4`,`RH_g18`],[2,2,1]],[[`RH_20Rnd_762x51_AR10`,`RH_33Rnd_9x19_g18`,`30Rnd_556x45_Stanag`],[18,17,13]],[[`RH_compm4s`,`RH_shortdot`,`FirstAidKit`,`U_O_PilotCoveralls`,`V_TacVest_khk`],[4,2,2,1,1]],[[`B_Carryall_oli`],[1]]]]]"', 1),
	(237, '76561198097602827', '[8052.88,5301.81,1.44955]', '"[[],0]"', '"[[`B_supplyCrate_F`,[[[],[]],[[`30Rnd_556x45_Stanag`],[13]],[[`FirstAidKit`,`RH_compm4s`],[1,1]],[[],[]]]]]"', 1),
	(242, '76561198134059874', '[6505.02,3727.46,-0.0285625]', '"[[],0]"', '"[]"', 1),
	(246, '76561198134059874', '[8174.52,6147.21,-3.33786e-005]', '"[[],0]"', '"[]"', 1),
	(251, '76561198134059874', '[6454.28,3735.74,2.34394]', '"[[],0]"', '"[[`B_supplyCrate_F`,[[[`RH_Mk12mod1`,`RH_g18`],[2,1]],[[`30Rnd_556x45_Stanag`,`RH_33Rnd_9x19_g18`,`RH_30Rnd_9x19_UZI`],[11,2,2]],[[`RH_compm4s`,`G_Spectacles_Tinted`],[1,1]],[[],[]]]],[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]]]"', 1),
	(252, '76561198045532126', '[2854.41,5587.51,0.774719]', '"[[],0]"', '"[]"', 1),
	(253, '76561198061050664', '[8367.34,6397.35,0.00069809]', '"[[[`salt_r`,365],[`water`,1],[`tbacon`,2]],368]"', '"[[`Box_IND_Grenades_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]],[`Box_IND_Grenades_F`,[[[],[]],[[`RH_33Rnd_9x19_g18`,`RH_20Rnd_57x28_FN`,`RH_15Rnd_9x19_SIG`],[6,5,1]],[[`A3L_Balaclava`,`H_MilCap_oucamo`,`G_Squares`],[1,1,1]],[[],[]]]]]"', 1),
	(254, '76561198079550055', '[492.902,1192.01,-0.00506592]', '"[[],0]"', '"[]"', 1),
	(255, '76561198033312528', '[8644.23,6481.54,-0.0422039]', '"[[[`tbacon`,1],[`water`,2]],3]"', '"[[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]]]"', 1),
	(256, '76561198042655695', '[470.095,1206.9,-0.167694]', '"[[],0]"', '"[]"', 1),
	(258, '76561198129692852', '[8709.28,6387.63,-0.0022831]', '"[[],0]"', '"[]"', 1),
	(259, '76561198129692852', '[8710.99,6377.05,-9.34601e-005]', '"[[],0]"', '"[]"', 1),
	(260, '76561197988320529', '[6469.7,3773.72,1.73414]', '"[[],0]"', '"[[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]]]"', 1),
	(261, '76561198134059874', '[5373.92,3130.65,2.31894]', '"[[],0]"', '"[[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]],[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]]]"', 1),
	(262, '76561198082049457', '[6450.22,3772.08,2.05341]', '"[[],0]"', '"[[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]],[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]]]"', 1),
	(263, '76561198023891244', '[8542.75,6390.32,-0.00404263]', '"[[],0]"', '"[[`B_supplyCrate_F`,[[[`hgun_ACPC2_F`,`hgun_P07_F`],[7,4]],[[`9Rnd_45ACP_Mag`,`SmokeShell`,`SmokeShellGreen`,`SmokeShellOrange`,`16Rnd_9x21_Mag`,`Chemlight_green`],[14,11,7,4,8,8]],[[`A3L_gangster_hat`,`FirstAidKit`,`NVGoggles_INDEP`,`H_HelmetIA`,`Medikit`,`U_B_CombatUniform_mcam_tshirt`,`G_Goggles_VR`,`pervt_uni`,`PkGyBr_uni`,`V_PlateCarrierIA1_dgtl`,`U_I_CombatUniform`,`NVGoggles`,`A3L_Balaclava`],[1,56,5,7,5,3,7,1,1,4,2,1,1]],[[`tf_anprc155`,`B_AssaultPack_rgr_Medic`],[1,1]]]]]"', 1),
	(264, '76561198013003966', '[9814.14,942.155,0.185287]', '"[[],0]"', '"[[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]]]"', 1),
	(265, '76561198045532126', '[8552.6,6338.28,0.00959969]', '"[[],0]"', '"[[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]]]"', 1),
	(268, '76561198151810856', '[8249.82,6173.67,4.19617e-005]', '"[[],0]"', '"[]"', 1),
	(269, '76561198016679174', '[8113.05,6150.95,0.000421524]', '"[[[`boltcutter`,1],[`pickaxe`,12],[`salt_r`,107]],136]"', '"[[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]]]"', 1),
	(270, '76561197993324766', '[8639.8,6476.73,0.0702562]', '"[[],0]"', '"[]"', 1),
	(271, '76561197968352565', '[2818.4,2715.42,-0.00674438]', '"[[],0]"', '"[]"', 1),
	(273, '76561197988810880', '[8284.31,6100.14,8.39233e-005]', '"[[],0]"', '"[[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]],[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]]]"', 1),
	(274, '76561198084038095', '[6427.43,3771.06,2.12592]', '"[[[`salt`,3],[`pickaxe`,3],[`mullet`,2],[`tuna`,1],[`tbacon`,1],[`cannabis`,10],[`fuelE`,1],[`salt_r`,9]],61]"', '"[[`B_supplyCrate_F`,[[[`RH_g18`,`RH_gsh18`,`RH_cz75`,`RH_deagle`,`RH_ar10`,`RH_m9`],[2,3,1,1,3,2]],[[`RH_20Rnd_762x51_AR10`,`RH_16Rnd_9x19_CZ`,`RH_7Rnd_50_AE`,`RH_18Rnd_9x19_gsh`,`RH_15Rnd_9x19_M9`],[48,5,8,13,1]],[[],[]],[[],[]]]]]"', 1),
	(275, '76561198105776948', '[2978.82,5559.93,0.486511]', '"[[],0]"', '"[]"', 1),
	(281, '76561198101958454', '[5377.36,3038.42,2.50007]', '"[[],0]"', '"[[`B_supplyCrate_F`,[[[`RH_Mk12mod1`,`RH_ar10`],[1,1]],[[`30Rnd_556x45_Stanag_Tracer_Red`],[12]],[[`RH_reflex`,`RH_shortdot`,`U_O_GhillieSuit`,`U_I_G_resistanceLeader_F`],[1,2,1,1]],[[],[]]]]]"', 1),
	(282, '76561198066722764', '[5846.89,8302.34,2.08533]', '"[[],0]"', '"[]"', 1),
	(286, '76561198023924414', '[5960.87,8126.34,2.04791]', '"[[],0]"', '"[]"', 1),
	(289, '76561198023924414', '[8905.86,8244.73,-4.29153e-005]', '"[[],0]"', '"[]"', 1),
	(291, '76561198097584790', '[2857.6,5581.77,0.39566]', '"[[],0]"', '"[]"', 1),
	(294, '76561198054594953', '[2786.51,5695.58,-0.174805]', '"[[],0]"', '"[[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]],[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]]]"', 1),
	(295, '76561198054594953', '[2777.15,5701.46,0.420502]', '"[[],0]"', '"[]"', 1),
	(301, '76561198017023020', '[5858.18,8391.67,-0.0667114]', '"[[],0]"', '"[]"', 1),
	(302, '76561198017023020', '[5866.28,8393.64,0.279572]', '"[[],0]"', '"[[`B_supplyCrate_F`,[[[],[]],[[`30Rnd_556x45_Stanag`,`RH_33Rnd_9x19_g18`,`30Rnd_65x39_caseless_mag`,`16Rnd_9x21_Mag`,`Chemlight_green`],[50,2,3,2,1]],[[`optic_ACO_grn`,`RH_saker`,`RH_compm4s`,`H_MilCap_oucamo`,`ToolKit`,`V_TacVest_khk`],[2,15,1,1,2,1]],[[`B_Carryall_cbr`,`B_Carryall_khk`],[3,1]]]],[`B_supplyCrate_F`,[[[],[]],[[],[]],[[`ItemGPS`],[1]],[[],[]]]]]"', 1),
	(303, '76561197968352565', '[5871.16,8349.4,2.05533]', '"[[],0]"', '"[]"', 1),
	(304, '76561197968352565', '[5862.12,8346.55,0.0246887]', '"[[],0]"', '"[]"', 1),
	(306, '76561198141664046', '[8409.02,6491.18,-0.000289917]', '"[[],0]"', '"[[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]],[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]],[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]],[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]]]"', 1),
	(307, '76561198080497470', '[8310.03,6398.24,0.000620842]', '"[[],0]"', '"[[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]],[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]],[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]],[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]]]"', 1),
	(308, '76561198130909054', '[5903.67,8380.95,0.914185]', '"[[],0]"', '"[]"', 1),
	(309, '76561198130909054', '[5895.67,8383.96,0.327942]', '"[[],0]"', '"[]"', 1),
	(310, '76561198130909054', '[2816.37,5662.65,1.63776]', '"[[[`redgull`,18],[`tbacon`,11],[`water`,7],[`blastingcharge`,8]],156]"', '"[[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]],[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]],[`B_supplyCrate_F`,[[[`RH_ar10`,`RH_Mk12mod1`,`RH_M16A4`],[13,14,5]],[[`RH_20Rnd_762x51_AR10`,`30Rnd_556x45_Stanag`],[51,135]],[[`RH_shortdot`],[19]],[[],[]]]],[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]]]"', 1),
	(311, '76561198130909054', '[2807.73,5669.97,0.384949]', '"[[],0]"', '"[]"', 1),
	(318, '76561198083481840', '[2845.26,5751.99,0.396606]', '"[[],0]"', '"[]"', 1),
	(319, '76561198083481840', '[2854.71,5740.54,1.62762]', '"[[],0]"', '"[[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]],[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]]]"', 1),
	(320, '76561198066722764', '[8407.1,6473.7,-0.000289917]', '"[[],0]"', '"[]"', 1),
	(321, '76561197983200324', '[2891.13,5681.25,0.410431]', '"[[],0]"', '"[]"', 1),
	(322, '76561197983200324', '[2881.49,5694.18,1.63724]', '"[[[`lockpick`,10],[`water`,1]],11]"', '"[[`B_supplyCrate_F`,[[[`RH_M16A3`,`RH_Deagleg`,`RH_ar10`],[1,1,1]],[[`26_cartridge`,`RH_20Rnd_57x28_FN`,`RH_32Rnd_9x19_tec`],[1,1,2]],[[`G_Sport_Blackred`,`FirstAidKit`,`A3L_Balaclava`],[1,1,4]],[[],[]]]],[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]],[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]],[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]]]"', 1),
	(323, '76561197973973196', '[2715.61,5694.76,0.394592]', '"[[],0]"', '"[[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]],[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]]]"', 1),
	(324, '76561197973973196', '[2728.42,5698.84,0.00692749]', '"[[],0]"', '"[]"', 1),
	(325, '76561198013037436', '[2881.49,5694.18,1.63724]', '"[[],0]"', '"[[`B_supplyCrate_F`,[[[],[]],[[`26_cartridge`],[1]],[[`G_Sport_Blackred`],[1]],[[],[]]]],[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]],[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]],[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]]]"', 1),
	(326, '76561197988399617', '[2745.33,5686.45,0.828583]', '"[[],0]"', '"[[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]],[`B_supplyCrate_F`,[[[],[]],[[`RH_15Rnd_9x19_M9`],[3]],[[],[]],[[],[]]]],[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]]]"', 1),
	(327, '76561197988399617', '[2736.6,5695.68,0.515472]', '"[[],0]"', '"[]"', 1),
	(328, '76561198013037436', '[2891.13,5681.25,0.410431]', '"[[],0]"', '"[]"', 1),
	(329, '76561198083481840', '[2854.71,5740.54,1.62762]', '"[[],0]"', '"[[`B_supplyCrate_F`,[[[`RH_M16A4`,`RH_g18`,`RH_M16A3`,`RH_ar10`],[4,3,4,1]],[[`30Rnd_556x45_Stanag`,`RH_33Rnd_9x19_g18`,`RH_20Rnd_762x51_AR10`,`RH_12Rnd_45cal_usp`],[30,15,29,3]],[[`G_Balaclava_blk`,`NVGoggles`,`RH_shortdot`,`RH_compm4s`,`V_TacVest_khk`,`A3L_soa_helmet`,`A3L_sombrero`,`ToolKit`],[1,1,9,1,1,1,1,1]],[[`B_Carryall_oli`],[1]]]],[`B_supplyCrate_F`,[[[`RH_ttracker_g`],[1]],[[],[]],[[`A3L_Balaclava`,`U_IG_Guerilla1_1`],[2,1]],[[`B_Parachute`],[3]]]]]"', 1),
	(330, '76561198083481840', '[2845.26,5751.99,0.396606]', '"[[],0]"', '"[]"', 1),
	(331, '76561198145921092', '[8387.7,6390.4,-0.000226021]', '"[[],0]"', '"[]"', 1),
	(332, '76561198145921092', '[8947.37,8255.78,0.000309944]', '"[[],0]"', '"[]"', 1),
	(333, '76561198145921092', '[8899.94,8224.71,9.15527e-005]', '"[[],0]"', '"[]"', 1),
	(334, '76561198145921092', '[8917.26,8271.58,0]', '"[[],0]"', '"[]"', 1),
	(335, '76561198045532126', '[8084.91,5233.12,1.43444]', '"[[],0]"', '"[]"', 1),
	(336, '76561198045532126', '[8076.08,5226.55,0.495432]', '"[[],0]"', '"[]"', 1),
	(337, '76561198045532126', '[8310.03,6398.24,0.000620842]', '"[[],0]"', '"[]"', 1),
	(338, '76561198083481840', '[489.005,1220.23,-0.126709]', '"[[],0]"', '"[]"', 1),
	(339, '76561198108633175', '[480.424,1216.23,0.0202637]', '"[[],0]"', '"[]"', 1),
	(340, '76561198127823234', '[469.574,1226.08,-0.0416565]', '"[[],0]"', '"[]"', 1),
	(341, '76561198058280109', '[8205.52,6205.32,-0.000583649]', '"[[],0]"', '"[]"', 1),
	(343, '76561197972730740', '[8394.24,6440.8,0.000189781]', '"[[],0]"', '"[[`B_supplyCrate_F`,[[[`RH_ar10`],[1]],[[`RH_20Rnd_762x51_AR10`,`RH_33Rnd_9x19_g18`,`30Rnd_556x45_Stanag`,`RH_32Rnd_9x19_tec`],[5,2,8,2]],[[`RH_compm4s`,`A3L_Suit_Uniform`,`RH_shortdot`,`FirstAidKit`],[1,1,2,3]],[[],[]]]],[`B_supplyCrate_F`,[[[`RH_tec9`,`RH_ar10`,`RH_M16A3`,`RH_M16A4`,`RH_Mk12mod1`],[1,1,1,1,1]],[[`RH_20Rnd_762x51_AR10`,`30Rnd_556x45_Stanag`,`RH_32Rnd_9x19_tec`],[3,33,4]],[[`RH_shortdot`,`RH_compm4s`],[5,1]],[[],[]]]]]"', 1),
	(344, '76561197986090947', '[8404.12,6439.53,0.000172615]', '"[[[`water`,1],[`donuts`,1],[`coffee`,1],[`tbacon`,3],[`salt_r`,139]],145]"', '"[[`Box_IND_Grenades_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]]]"', 1),
	(345, '76561198123357722', '[5834.3,8376.66,0.30304]', '"[[],0]"', '"[[`B_supplyCrate_F`,[[[],[]],[[],[]],[[`RH_saker`],[15]],[[],[]]]],[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]],[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]]]"', 1),
	(346, '76561198153184627', '[5353.15,3128.27,0.720506]', '"[[],0]"', '"[]"', 1),
	(347, '76561198152041962', '[3760.98,2094.15,0.0543365]', '"[[[`iron_r`,144]],432]"', '"[[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]],[`B_supplyCrate_F`,[[[],[]],[[],[]],[[],[]],[[],[]]]]]"', 1),
	(348, '76561198069239771', '[8379.62,6433.36,0.000144958]', '"[[],0]"', '"[]"', 1);
/*!40000 ALTER TABLE `houses` ENABLE KEYS */;


-- Dumping structure for table life.launcher
DROP TABLE IF EXISTS `launcher`;
CREATE TABLE IF NOT EXISTS `launcher` (
  `server_ip` varchar(15) DEFAULT NULL,
  `launcher_path` varchar(255) DEFAULT NULL,
  `ts3_plugin_path` varchar(255) DEFAULT NULL,
  `mod_path` varchar(255) DEFAULT NULL,
  `ftp_userid` varchar(255) DEFAULT NULL,
  `ftp_pass` varchar(255) DEFAULT NULL,
  `hashes_path` varchar(255) DEFAULT NULL,
  `servers_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table life.launcher: ~0 rows (approximately)
DELETE FROM `launcher`;
/*!40000 ALTER TABLE `launcher` DISABLE KEYS */;
INSERT INTO `launcher` (`server_ip`, `launcher_path`, `ts3_plugin_path`, `mod_path`, `ftp_userid`, `ftp_pass`, `hashes_path`, `servers_path`) VALUES
	('62.210.188.75', ' ftp://62.210.188.75/', 'ftp://62.210.188.75/@task_force_radio/plugins/', '?', 'Anonymous', '', 'http://arma3-life.com/hashes.xml', 'http://arma3-life.com/servers.xml');
/*!40000 ALTER TABLE `launcher` ENABLE KEYS */;


-- Dumping structure for table life.players
DROP TABLE IF EXISTS `players`;
CREATE TABLE IF NOT EXISTS `players` (
  `uid` int(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `playerid` varchar(50) NOT NULL,
  `cash` int(100) NOT NULL DEFAULT '0',
  `bankacc` int(100) NOT NULL DEFAULT '0',
  `coplevel` enum('0','1','2','3','4','5','6','7') NOT NULL DEFAULT '0',
  `cop_licenses` text,
  `civ_licenses` text,
  `med_licenses` text,
  `cop_gear` text NOT NULL,
  `mediclevel` enum('0','1','2','3','4','5') NOT NULL DEFAULT '0',
  `arrested` tinyint(1) NOT NULL DEFAULT '0',
  `aliases` text NOT NULL,
  `adminlevel` enum('0','1','2','3') NOT NULL DEFAULT '0',
  `donatorlvl` enum('0','1','2','3','4','5') NOT NULL DEFAULT '0',
  `civ_gear` text NOT NULL,
  `blacklist` tinyint(1) NOT NULL DEFAULT '0',
  `med_gear` text NOT NULL,
  `issupport` enum('0','1') NOT NULL DEFAULT '0',
  `jailtime` int(11) NOT NULL DEFAULT '0',
  `arrestreason` varchar(150) NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `playerid` (`playerid`),
  KEY `name` (`name`),
  KEY `blacklist` (`blacklist`)
) ENGINE=InnoDB AUTO_INCREMENT=1900 DEFAULT CHARSET=latin1;

-- Dumping data for table life.players: ~1,761 rows (approximately)
DELETE FROM `players`;


-- Dumping structure for procedure life.resetLifeVehicles
DROP PROCEDURE IF EXISTS `resetLifeVehicles`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `resetLifeVehicles`()
BEGIN
	UPDATE vehicles SET `active`= 0;
END//
DELIMITER ;


-- Dumping structure for table life.servers
DROP TABLE IF EXISTS `servers`;
CREATE TABLE IF NOT EXISTS `servers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `ip` varchar(55) DEFAULT NULL,
  `port` varchar(10) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table life.servers: ~0 rows (approximately)
DELETE FROM `servers`;
/*!40000 ALTER TABLE `servers` DISABLE KEYS */;
INSERT INTO `servers` (`id`, `name`, `ip`, `port`, `password`, `status`) VALUES
	(1, 'EU #1 - ArmA 3 Life Official', '37.187.248.84', '2302', 'hannes101', '1'),
	(2, 'US #1 - ArmA 3 Life Official', '192.99.18.123', '2302', 'hannes99', '1');
/*!40000 ALTER TABLE `servers` ENABLE KEYS */;

-- ----------------------------
-- Table structure for usertable
-- ----------------------------
DROP TABLE IF EXISTS `usertable`;
CREATE TABLE `usertable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `uid` varchar(50) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2162 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usertable
-- ----------------------------


-- Dumping structure for table life.vehicles
DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE IF NOT EXISTS `vehicles` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `side` varchar(15) NOT NULL,
  `classname` varchar(32) NOT NULL,
  `type` varchar(12) NOT NULL,
  `pid` varchar(32) NOT NULL,
  `alive` tinyint(1) NOT NULL DEFAULT '1',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `plate` int(20) NOT NULL,
  `color` int(20) NOT NULL,
  `inventory` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `side` (`side`),
  KEY `pid` (`pid`),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=19690 DEFAULT CHARSET=latin1;

-- Dumping data for table life.vehicles: ~8,072 rows (approximately)
DELETE FROM `vehicles`;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;

/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
