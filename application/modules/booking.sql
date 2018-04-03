/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : dealer

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-01-23 23:41:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `_booking`
-- ----------------------------
DROP TABLE IF EXISTS `_booking`;
CREATE TABLE `_booking` (
  `id_booking` int(11) NOT NULL,
  `tujuan` varchar(50) DEFAULT NULL,
  `tanggal_dari` date DEFAULT NULL,
  `tanggal_sampai` date DEFAULT NULL,
  `jumlah_bus` varchar(10) DEFAULT NULL,
  `harga` varchar(50) DEFAULT NULL,
  `total` varchar(50) DEFAULT NULL,
  `id_marketing` varchar(10) DEFAULT NULL,
  `jam_dari` time DEFAULT NULL,
  `jam_sampai` time DEFAULT NULL,
  `alamat_jemput` varchar(200) DEFAULT NULL,
  `nama_penyewa` varchar(200) DEFAULT NULL,
  `id_unit` varchar(100) DEFAULT NULL,
  `no_telepon` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_booking`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of _booking
-- ----------------------------
INSERT INTO `_booking` VALUES ('1', 'jemput cengkareng', '2018-01-01', '2018-01-01', '1', null, '2000000', 'WA', '15:00:00', '15:00:00', '', 'YADI', 'D17', '085959613998');
INSERT INTO `_booking` VALUES ('2', 'bandung', '2018-01-01', '0000-00-00', '2', null, '6300000', 'AB', '05:00:00', '16:00:00', 'cengkareng', 'bisma', 'P11,P31', '081222111333');
INSERT INTO `_booking` VALUES ('3', 'jakarta', '2018-01-01', '0000-00-00', '2', null, '3400000', 'AB', '16:00:00', '16:00:00', 'bandung', 'xtrans', 'D17,D20', '081222444555');
INSERT INTO `_booking` VALUES ('4', 'bandung', '2018-01-02', '0000-00-00', '1', null, '2300000', 'CK', '16:00:00', '16:00:00', 'cengkareng', 'yeta tour', 'D16', '085222333444');
INSERT INTO `_booking` VALUES ('5', 'dufan', '2018-01-02', '0000-00-00', '6', null, '19000000', 'AB', '05:00:00', '16:15:00', 'al masoem', 'yayan', 'P11,P17,P26,P27,P30,P31', '089674516293');
INSERT INTO `_booking` VALUES ('7', 'dufan', '2018-01-02', '0000-00-00', '1', null, '2000000', 'AB', '04:00:00', '17:00:00', 'jl sunda bandung', 'widi', 'D26', '081221051114');
INSERT INTO `_booking` VALUES ('9', 'kamojang', '2018-01-09', '0000-00-00', '1', null, '1800000', 'CK', '07:00:00', '23:00:00', 'unpad jatinangor', 'Albert', 'D26', '081221010242');

-- ----------------------------
-- Table structure for `_booking_harga_unit`
-- ----------------------------
DROP TABLE IF EXISTS `_booking_harga_unit`;
CREATE TABLE `_booking_harga_unit` (
  `id_booking_harga_unit` int(11) NOT NULL AUTO_INCREMENT,
  `id_booking` varchar(10) NOT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `harga` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_booking_harga_unit`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of _booking_harga_unit
-- ----------------------------
INSERT INTO `_booking_harga_unit` VALUES ('11', '5', 'D7', '1000000');
INSERT INTO `_booking_harga_unit` VALUES ('12', '5', 'D14', '4000000');
INSERT INTO `_booking_harga_unit` VALUES ('13', '5', 'D7', '1000000');
INSERT INTO `_booking_harga_unit` VALUES ('14', '5', 'D10', '500000');
INSERT INTO `_booking_harga_unit` VALUES ('15', '5', 'D16', '1000000');
INSERT INTO `_booking_harga_unit` VALUES ('16', '6', 'D7', '1000000');
INSERT INTO `_booking_harga_unit` VALUES ('17', '6', 'D10', '2000000');
INSERT INTO `_booking_harga_unit` VALUES ('18', '7', 'D7', '1000000');
INSERT INTO `_booking_harga_unit` VALUES ('19', '7', 'D14', '2000000');
INSERT INTO `_booking_harga_unit` VALUES ('20', '8', 'D14', '1000000');
INSERT INTO `_booking_harga_unit` VALUES ('21', '9', 'P1', '2000000');
INSERT INTO `_booking_harga_unit` VALUES ('22', '10', 'D7', '1000000');
INSERT INTO `_booking_harga_unit` VALUES ('23', '10', 'D10', '2000000');
INSERT INTO `_booking_harga_unit` VALUES ('24', '11', 'D7', '5000000');
INSERT INTO `_booking_harga_unit` VALUES ('25', '11', 'D10', '4000000');
INSERT INTO `_booking_harga_unit` VALUES ('26', '1', 'D17', '2000000');
INSERT INTO `_booking_harga_unit` VALUES ('27', '2', 'P11', '3000000');
INSERT INTO `_booking_harga_unit` VALUES ('28', '2', 'P31', '3300000');
INSERT INTO `_booking_harga_unit` VALUES ('29', '3', 'D17', '1700000');
INSERT INTO `_booking_harga_unit` VALUES ('30', '3', 'D20', '1700000');
INSERT INTO `_booking_harga_unit` VALUES ('31', '4', 'D16', '2300000');
INSERT INTO `_booking_harga_unit` VALUES ('32', '5', 'P11', '2900000');
INSERT INTO `_booking_harga_unit` VALUES ('33', '5', 'P17', '2900000');
INSERT INTO `_booking_harga_unit` VALUES ('34', '5', 'P26', '3300000');
INSERT INTO `_booking_harga_unit` VALUES ('35', '5', 'P27', '3300000');
INSERT INTO `_booking_harga_unit` VALUES ('36', '5', 'P30', '3300000');
INSERT INTO `_booking_harga_unit` VALUES ('37', '5', 'P31', '3300000');
INSERT INTO `_booking_harga_unit` VALUES ('38', '6', 'D26', '2000000');
INSERT INTO `_booking_harga_unit` VALUES ('39', '6', 'D26', '2000000');
INSERT INTO `_booking_harga_unit` VALUES ('40', '7', 'D26', '2000000');
INSERT INTO `_booking_harga_unit` VALUES ('41', '8', 'D17', '1500000');
INSERT INTO `_booking_harga_unit` VALUES ('42', '8', 'D26', '1800000');
INSERT INTO `_booking_harga_unit` VALUES ('43', '9', 'D26', '1800000');

-- ----------------------------
-- Table structure for `booking`
-- ----------------------------
DROP TABLE IF EXISTS `booking`;
CREATE TABLE `booking` (
  `id_booking` int(11) NOT NULL,
  `tujuan` varchar(50) DEFAULT NULL,
  `total` varchar(50) DEFAULT NULL,
  `id_marketing` varchar(10) DEFAULT NULL,
  `alamat_jemput` varchar(200) DEFAULT NULL,
  `nama_penyewa` varchar(200) DEFAULT NULL,
  `no_telepon` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_booking`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of booking
-- ----------------------------
INSERT INTO `booking` VALUES ('1', 'bandung', '1800000', 'WA', 'cengkareng', 'yadi', '081222333555');
INSERT INTO `booking` VALUES ('2', 'bandung', '6300000', 'AB', 'cengkareng', 'bisma', '08155448899');
INSERT INTO `booking` VALUES ('3', 'jakarta', '6800000', 'AB', 'bandung', 'xtrans', '081222222222');
INSERT INTO `booking` VALUES ('4', 'bandung', '2300000', 'CK', 'cengkareng', 'yeta tour', '081333555666');
INSERT INTO `booking` VALUES ('5', 'dufan', '19000000', 'AB', 'bandung', 'yayan', '081111222333');
INSERT INTO `booking` VALUES ('6', 'dufan', '2000000', 'CK', 'jl sunda', 'widi', '081221051114');
INSERT INTO `booking` VALUES ('7', 'maribaya', '1500000', 'CK', 'abdi negara', 'sd abdinegara', '081666333888');
INSERT INTO `booking` VALUES ('8', 'bandung', '2200000', 'CK', 'cengkareng', 'deden', '081323277979');
INSERT INTO `booking` VALUES ('9', 'bandung', '3000000', 'AB', 'cengkareng', 'bisma', '081555777888');
INSERT INTO `booking` VALUES ('10', 'jakarta', '3400000', 'AB', 'bandung', 'xtrans', '081222333444');
INSERT INTO `booking` VALUES ('11', 'tasik', '700000', 'AB', 'bandung', 'bangbang', '081777999222');
INSERT INTO `booking` VALUES ('12', 'pangandaran', '6000000', 'IY', 'ikopin jatinangor', 'hj. yoyoh', '081220007075');
INSERT INTO `booking` VALUES ('13', 'malang', '16500000', 'AB', 'al masoem', 'yayan', '081222333444');
INSERT INTO `booking` VALUES ('14', 'jakarta', '5500000', 'AB', 'indramayu', 'bapak rahmat', '085222100081');
INSERT INTO `booking` VALUES ('15', 'pangandaran', '21600000', 'IY', 'kantor wali kota bandung', 'deni sopir', '081999888777');
INSERT INTO `booking` VALUES ('16', 'jakarta', '1800000', 'AB', 'majalaya', 'iceu', '081322433727');
INSERT INTO `booking` VALUES ('17', 'TMII', '10200000', 'AB', 'ds. cibodas lembang', 'bayu', '085104887008');
INSERT INTO `booking` VALUES ('18', 'cirebon', '1800000', 'WA', 'uin cibiru', 'agung', '082120702643');
INSERT INTO `booking` VALUES ('19', 'jogya', '9900000', 'IY', 'buah batu regensi', 'asmul', '085294777800');
INSERT INTO `booking` VALUES ('20', 'pangandaran', '4200000', 'CK', 'bandung', 'irvan', '081111222333');
INSERT INTO `booking` VALUES ('21', 'JAKARTA', '1350000', 'AB', 'BANDUNG', 'BISMA', '081222333444');
INSERT INTO `booking` VALUES ('22', 'PANGANDARAN', '5900000', 'AB', 'BANDUNG', 'NUR FAUZI AJIZ', '082119507768');
INSERT INTO `booking` VALUES ('23', 'PANGANDARAN', '6000000', 'IY', 'MARUYUNG CIPARAY', 'HAMZAH', '081214757013');
INSERT INTO `booking` VALUES ('24', 'SUBANG', '2800000', 'AB', 'KAMPUS UPI', 'SITI HANIFAH/RENI', '081321314866');
INSERT INTO `booking` VALUES ('25', 'CIMAHI BAROS', '2300000', 'WA', 'CIKANCUNG', 'BP. ANYEP', '081214142106');
INSERT INTO `booking` VALUES ('26', 'PANGANDARAN', '3600000', 'CK', 'MARGAASIH', 'LINA', '08973154982');
INSERT INTO `booking` VALUES ('27', 'CIREBON', '3400000', 'IY', 'BANDUNG', 'GIENDA', '081395256206');
INSERT INTO `booking` VALUES ('28', 'PANGANDARAN', '5600000', 'AB', 'BANDUNG', 'BP DEDI FORTY', '081222333444');
INSERT INTO `booking` VALUES ('29', 'BEKASI', '2600000', 'WA', 'HEGAR MANAH', 'YADI', '088218123222');
INSERT INTO `booking` VALUES ('30', 'KUNINGAN', '700000', 'IY', 'BANDUNG', 'BANGBANG ELF', '081333666777');
INSERT INTO `booking` VALUES ('31', 'GARUT', '1400000', 'AB', 'BANDUNG', 'IBU LIA', '081888999111');
INSERT INTO `booking` VALUES ('32', 'JAKARTA', '9600000', 'IY', 'CICALENGKA', 'ASEP MULYADI', '089628069701');
INSERT INTO `booking` VALUES ('33', 'DARAJAT GARUT', '1700000', 'IY', 'PT GISTEX', 'MIRNA ', '089654448725');
INSERT INTO `booking` VALUES ('34', 'DUFAN', '3400000', 'AB', 'KOPO KENCANA', 'ANTONIUS', '08994421369');
INSERT INTO `booking` VALUES ('35', 'JAKARTA', '3400000', 'IY', 'CIANJUR', 'LETI', '081777888555');
INSERT INTO `booking` VALUES ('36', 'PAMANUKAN', '1200000', 'WA', 'PAJAGALAN', 'BP. CUCU', '082126001635');
INSERT INTO `booking` VALUES ('37', 'CENGKARENG', '3200000', 'CK', 'BANDUNG', 'PA DEDEN', '081555888999');
INSERT INTO `booking` VALUES ('38', 'CIWIDEY', '1550000', 'WA', 'CIPACING', 'IBU DEDEH', '082120139999');
INSERT INTO `booking` VALUES ('39', 'CIANJUR', '3400000', 'WA', 'GEDE BAGE', 'YENI', '089632397277');
INSERT INTO `booking` VALUES ('40', 'DUFAN', '3400000', 'AB', 'BANDUNG', 'ANDREAS', '082219416320');
INSERT INTO `booking` VALUES ('41', 'CENGKARENG, TMII', '3400000', 'IY', 'MAJALAYA', 'ahmad', '082316144244');
INSERT INTO `booking` VALUES ('42', 'JAKARTA', '1800000', 'AB', 'MAJALAYA', 'AKONG', '081222555999');
INSERT INTO `booking` VALUES ('43', 'KUBAH EMAS', '3000000', 'IY', 'MAJALAYA', 'BP. IYUS', '081322506292');
INSERT INTO `booking` VALUES ('44', 'BLORA', '3400000', 'AB', 'BANDUNG', 'XTRANS', '081555666444');
INSERT INTO `booking` VALUES ('45', 'BLORA', '1700000', 'AB', 'BANDUNG', 'XTRANS', '081555666777');
INSERT INTO `booking` VALUES ('46', 'malang', '26000000', 'IY', 'unpad', 'panji', '0895346255504');
INSERT INTO `booking` VALUES ('47', 'PANGALENGAN', '1600000', 'CK', 'CK SEBRANG BEC', 'DEBBIE', '082118180197');
INSERT INTO `booking` VALUES ('48', 'KAMOJANG', '1800000', 'CK', 'JATINANGOR', 'ABET', '081221010242');
INSERT INTO `booking` VALUES ('49', 'JOGYA', '18100000', 'IY', 'BANDUNG', 'TENDI SOPYAN', '081222333555');
INSERT INTO `booking` VALUES ('51', 'CIWIDEY', '2500000', 'IY', 'DEPAN PUSLITBANG PANYAUNGAN JM. 06.00', 'BP. SANI', '081324937550');
INSERT INTO `booking` VALUES ('52', 'CILAWU TSM', '1800000', 'IY', 'DESA CILEUNYI KULON', 'BP. IYOS', '082116597860');
INSERT INTO `booking` VALUES ('53', 'TMN. MATAHARI', '3300000', 'IY', 'PURI JATINANGOR', 'BP. DIDIN', '081321160226');
INSERT INTO `booking` VALUES ('54', 'KUBAH EMAS', '6400000', 'WA', 'KP. SEMPER SMP KP', 'BP. DADAN', '083822889708');
INSERT INTO `booking` VALUES ('55', 'BANTEN', '6500000', 'AB', 'ALUN ALUN SOREANG', 'PA DEDEN SOREANG', '081321318131');
INSERT INTO `booking` VALUES ('56', 'AMPERA WATER PARK', '2750000', 'WA', 'SAMPING ALENA TEX DAYEUH KOLOT', 'IBU YULI', '081222881577');
INSERT INTO `booking` VALUES ('57', 'BEKASI', '1800000', 'IY', 'STANBY GRASI DMH', 'BP. TRI HARTATO', '085223367075');
INSERT INTO `booking` VALUES ('58', 'PANGANDARAN', '11200000', 'IY', 'POM BENSIN ALADIN JM 01.00', 'AGUS TAUPIK', '081322870125');
INSERT INTO `booking` VALUES ('59', 'JOGYA', '29700000', 'IY', 'ALUN ALUN TANJUNG SARI JM 14.00', 'HAMZAH', '081111222333');
INSERT INTO `booking` VALUES ('60', 'JOGYA SEMARANG', '6300000', 'IY', 'ITB JATINANGOR', 'REKSA', '081221465068');
INSERT INTO `booking` VALUES ('61', 'SINDANG BARANG, CIANJUR SELATAN', '3500000', 'IY', 'RM. SUKA HATI JM 13.00', 'IBU NENI', '081222649852');
INSERT INTO `booking` VALUES ('62', 'JAKARTA', '1900000', 'IY', 'BANDUNG', 'BP. SANTO', '081322569901');
INSERT INTO `booking` VALUES ('63', 'DUFAN', '11400000', 'IY', 'CICALENGKA', 'IBU MILA', '081234567891');
INSERT INTO `booking` VALUES ('64', 'GARUT, PAMIJAHAN', '5500000', 'WA', 'KIARA PAYUNG JM 18.00', 'RIAN', '08892853238');
INSERT INTO `booking` VALUES ('65', 'PAMIJAHAN, PANGANDARAN', '12400000', 'WA', 'BANJARAN', 'BP. PANDI', '081555666777');
INSERT INTO `booking` VALUES ('66', 'ciwidey', '3800000', 'IY', 'depan garasi aladin', 'IBU NIA', '082115399967');
INSERT INTO `booking` VALUES ('67', 'DUFAN', '1950000', 'AB', 'ARCAMANIK ENDAH 72 JM 04.00', 'IBU ALI', '087825525191');
INSERT INTO `booking` VALUES ('68', 'DUFAN', '3200000', 'AB', 'ARCAMANIK ENDAH 72 JM 04.00', 'IBU ALI', '087825525191');
INSERT INTO `booking` VALUES ('69', 'JAKARTA', '1800000', 'WA', 'ITB GANESA', 'AGUNG', '081219075859');
INSERT INTO `booking` VALUES ('70', 'GARUT DARAJAT', '3700000', 'WA', 'DEPAN PUSLITBANG PANYAUNGAN', 'BP. IWAN', '085222435145');
INSERT INTO `booking` VALUES ('72', 'LEMBANG', '2400000', 'AB', 'STATION', 'BAPAK SUPRIADI', '081260243692');
INSERT INTO `booking` VALUES ('73', 'CENGKARENG', '1800000', 'WA', 'JL. GAGAK BANDUNG', 'YADI', '081444555666');
INSERT INTO `booking` VALUES ('74', 'KAMPUNG BATU', '1400000', 'AB', 'PARAKAN MUNCANG', 'IBU HABIBAH', '081221923780');
INSERT INTO `booking` VALUES ('75', 'TANGGERANG', '15200000', 'IY', 'GARUT, ARAH CIJAPATI 200M DARI PEREMPATAN KIARA DODOT', 'LULU', '082317839329');
INSERT INTO `booking` VALUES ('76', 'GARUT DARAJAT', '6400000', 'CK', 'POM BENSIN RIUNG BANDUNG', 'IBU ELI HERLINA', '081321529091');
INSERT INTO `booking` VALUES ('77', 'CIAPUS BOGOR', '3600000', 'AB', 'BANDUNG', 'HERI/ ALUMNI 84 SMA 24 BDG', '082333444555');
INSERT INTO `booking` VALUES ('78', 'PANGANDARAN', '5400000', 'AB', 'LEMBANG', 'IBU LINA', '081320201919');
INSERT INTO `booking` VALUES ('79', 'CIATER', '3000000', 'AB', 'STATION RENDE', 'YADI', '082118477117');
INSERT INTO `booking` VALUES ('80', 'CIATER', '1700000', 'CK', 'MAJALAYA', 'MAMAH AUREL', '087708708645');
INSERT INTO `booking` VALUES ('81', 'CTB', '19500000', 'CK', 'BANDUNG', 'RIZKI', '082222444555');
INSERT INTO `booking` VALUES ('82', 'CIREBON LEWAT CIPALI', '3500000', 'AB', 'BATU NUNGGAL INDAH IV NO.37', 'BU DEBORA', '08122343433');
INSERT INTO `booking` VALUES ('83', 'CENGKARENG', '2900000', 'AB', 'KIRCON 400', 'NURMAULANA', '081312382900');
INSERT INTO `booking` VALUES ('84', 'KP. BATU', '1400000', 'AB', 'BANDUNG', 'IBU HABIBAH', '085666777888');
INSERT INTO `booking` VALUES ('85', 'TMS', '750000', 'AB', 'BANDUNG', 'ANAK YATIM', '081111222333');
INSERT INTO `booking` VALUES ('86', 'JOGYA', '10200000', 'IY', 'STNBY GARASI DMH', 'BP. ABIDIN', '08112341969');
INSERT INTO `booking` VALUES ('87', 'JOGYA', '10500000', 'WA', 'TANJUNG SARI', 'WINDY', '081245149001');
INSERT INTO `booking` VALUES ('88', 'JEMPUT CENGKARENG', '2100000', 'WA', 'BALUBUR', 'YADI', '085959613998');
INSERT INTO `booking` VALUES ('89', 'CIWIDEY DROP', '2200000', 'AB', 'KANTOR DESA CILEUMBU PARAMON', 'NO NAME', '082240434434');
INSERT INTO `booking` VALUES ('90', 'CTB', '2300000', 'AB', 'SETIA BUDI', 'RANGGA', '089888777666');
INSERT INTO `booking` VALUES ('91', 'PANGANDARAN', '6000000', 'CK', 'JL. BARANANG SIANG NO 71 KOSAMBI', 'ADBUL AJIZ', '081284699300');
INSERT INTO `booking` VALUES ('92', 'PANGANDARAN', '11300000', 'IY', 'MOCH TOHA', 'BOSEF', '081666555444');
INSERT INTO `booking` VALUES ('93', 'PAMIJAHAN', '5400000', 'AB', 'CIKURUTU CICALENGKA', 'BP. DAUS', '081321115551');
INSERT INTO `booking` VALUES ('94', 'CIATER', '3200000', 'CK', 'BANDUNG', 'AGUS / BALAI BAHASA UPI', '081000111222');
INSERT INTO `booking` VALUES ('95', 'PARAMON', '2800000', 'AB', 'JEMPUT CIWIDEY', 'NO NAME', '082240434434');
INSERT INTO `booking` VALUES ('96', 'TMN. SAFARI', '3600000', 'AB', 'ALUN ALUN SUBANG JM 01.00', 'MAMAT ROCHIMAT', '081395777423');
INSERT INTO `booking` VALUES ('97', 'CALENGKA-LIMBANGAN-PANJALU', '2200000', 'IY', 'JL CAGAK KASO MALANG SUBANG JM 04.00', 'WENDI', '085314807070');
INSERT INTO `booking` VALUES ('98', 'DROP BANDUNG', '1700000', 'AB', 'DPN RS. BAKTI HUSADA CIKARANG', 'MAMAT JP', '081389902901');
INSERT INTO `booking` VALUES ('99', 'PANGANDARAN', '6800000', 'WA', 'PASAR CILEUNYI', 'ACENG', '081220496043');
INSERT INTO `booking` VALUES ('100', 'DROP CENGKARENG', '2600000', 'WA', 'DEPAN BNI UJUNG BERUNG', 'BP. DEDE', '082128594939');
INSERT INTO `booking` VALUES ('101', 'LB. BUAYA - SATRIA - ANCOL', '16700000', 'IY', 'ALUN ALUN TANJUNG SARI JM 04.00', 'HAMZAH', '081214757013');
INSERT INTO `booking` VALUES ('102', 'DROP CENGKARENG', '3200000', 'AB', 'BANDUNG', 'BAMBANG', '081666777888');
INSERT INTO `booking` VALUES ('103', 'bandung', '3200000', 'AB', 'CENGKARENG JM : 15.00', 'bambang', '08157111518');
INSERT INTO `booking` VALUES ('104', 'PAMIJAHAN', '25200000', 'AB', 'BANDUNG', 'H. USMAN', '085999888777');
INSERT INTO `booking` VALUES ('105', 'PAMIJAHAN', '1000000', 'AB', 'BANDUNG', 'H. AGUS', '081555666777');
INSERT INTO `booking` VALUES ('106', 'SURYALAYA', '3300000', 'AB', 'CIMINDI DAERAH CILEMBER SETELAH JEMBATAN PENYEBRANGAN JM : 03.00', 'RIDWAN', '085722766776');
INSERT INTO `booking` VALUES ('107', 'JOGYA', '53700000', 'IY', 'BANDUNG', 'TENDI', '085555444333');
INSERT INTO `booking` VALUES ('108', 'TMN. SAFARI', '1750000', 'AB', 'BRI SUKAMULYA PASTEUR JM : 05.00', 'BP. DUDI', '081214411699');
INSERT INTO `booking` VALUES ('110', 'WATER KINGDOM', '3200000', 'CK', 'PAS TUGU ABC DAERAH PASEKON SEBELUM SUKABUMI', 'BP. IBETH', '081381181231');
INSERT INTO `booking` VALUES ('111', 'BANDUNG', '20100000', 'IY', 'JAKARTA', 'IBU NANI', '0000000000');
INSERT INTO `booking` VALUES ('112', 'GARUT', '40500000', 'IY', 'JAKARTA', 'IBU NANI', '000000000');
INSERT INTO `booking` VALUES ('113', 'MALANG', '54000000', 'IY', 'JAKARTA', 'IBU NANI', '000000000');
INSERT INTO `booking` VALUES ('114', 'JUNGLE', '5500000', 'CK', 'ABDI NEGARA', 'AL - IKHSAN', '0810000000');
INSERT INTO `booking` VALUES ('115', 'PANTAI CARITA', '3500000', 'WA', 'DPN PASAR WAHANA BABAKAN LOA RANCAEKEK JM 06.00', 'BP. YUFUF', '082214276299');
INSERT INTO `booking` VALUES ('116', 'KB.BINATANG - SABDA ALAM', '5400000', 'WA', 'RANCA KALONG, PASIR BIRU JM 07.00', 'BP. GINGIN', '08987005919');
INSERT INTO `booking` VALUES ('117', 'CIWIDEY - PATENGGANG', '2600000', 'WA', 'KELAUTAN CINUNUK', 'HAMZAH', '081000000');
INSERT INTO `booking` VALUES ('118', 'BSD', '3400000', 'CK', 'BALUBUR TOWN SQUARE DAN BTC', 'FITRI YULIA', '0895332718870');
INSERT INTO `booking` VALUES ('119', 'JAKARTA', '2800000', 'IY', 'STATION KIRCON', 'IBU LITA', '082120097278');
INSERT INTO `booking` VALUES ('120', 'CIATER', '6600000', 'CK', '', 'BP. SUPRIADI', '');
INSERT INTO `booking` VALUES ('121', 'MALANG', '19200000', 'AB', 'GUNTUR SARI BUAH BATU JM 16.00', 'BP. BUDI', '08112252622');
INSERT INTO `booking` VALUES ('122', 'PINDAD - CIWIDAY VALLEY', '8100000', 'AB', 'MAJALAYA, DPN SMP PGRI JM 05.00', 'BP. AGUS', '089603649115');
INSERT INTO `booking` VALUES ('123', 'DEMARK', '10200000', 'IY', 'PASAR CIJERAH JM 14.00', 'BP. MISBAH', '08112138030');
INSERT INTO `booking` VALUES ('124', 'BANDUNG', '1200000', 'WA', 'INDRAMAYU BONGAS JM 10.00', 'BP CUCU', '082126001635');
INSERT INTO `booking` VALUES ('125', 'BLORA', '8500000', 'AB', 'BANDUNG', 'XTRANS', '081000000');
INSERT INTO `booking` VALUES ('126', 'KARAWANG', '2700000', 'AB', 'HOLIS', 'MIOS', '081000000');
INSERT INTO `booking` VALUES ('127', 'JANGLE LAND', '6800000', 'IY', 'SDIT KORDOVA', 'IBU EVI', '081221006346/ 081313');
INSERT INTO `booking` VALUES ('128', 'JOGYA', '6000000', 'AB', 'GARASI', 'YAYAN', '081000000');
INSERT INTO `booking` VALUES ('129', 'JAKARTA', '4600000', 'AB', 'BANDUNG', 'BIMO/ BU LINA', '081222222222');
INSERT INTO `booking` VALUES ('130', 'DROP CENGKARENG', '1750000', 'AB', 'NARONGCONG CIKUDA JM 05.00', 'BP. ROJAK', '082119021200');
INSERT INTO `booking` VALUES ('131', 'CIKUDA', '1750000', 'AB', 'CENGKARENG', 'BP. ROJAK', '082119021200');
INSERT INTO `booking` VALUES ('132', 'CERNGKARENG DROP', '2400000', 'WA', 'BANDUNG', 'YADI', '081000000');
INSERT INTO `booking` VALUES ('133', 'NANGKA BEURIT - KARAWANG', '3400000', 'WA', 'JL. TERUSAN PASIR. SMP SWADAYA 1', 'BP. GUNGUN', '081312202116');
INSERT INTO `booking` VALUES ('134', 'JOGYA', '12250000', 'WA', 'GEDE BAGE KAWASAN INDUSTRI', 'PT. DWITAMA/ IBU MARI', '082117111726');
INSERT INTO `booking` VALUES ('135', 'PAKET GSA + AWA', '3400000', 'CK', 'BANDUNG', 'IBU ELI', '08100000');
INSERT INTO `booking` VALUES ('136', 'KARANG RESIK TASIKMALAYA', '1200000', 'WA', 'KOMPLEK BUMI PANYILEUKAN KELURAHAN CIPADUNG KIDUL BLOK F13', 'IBU SUSI', '08122121909');
INSERT INTO `booking` VALUES ('137', 'PANGANDARAN', '4400000', 'CK', 'BANDUNG', 'BP. AGUS SANTOSO', '08100000');
INSERT INTO `booking` VALUES ('138', 'JOGYA', '13200000', 'IY', 'CIANJUR', 'IYOS', '081221308776');
INSERT INTO `booking` VALUES ('139', 'CENGKARENG + TMII', '3000000', 'IY', 'SUKAMANAH MAJALAYA', 'AHMAD', '082316144244');
INSERT INTO `booking` VALUES ('140', 'KUDUS JOGYA', '71400000', 'IY', 'SMK 4 BANDUNG BUAH BATU', 'BU DELLA', '0810000000');
INSERT INTO `booking` VALUES ('141', 'CTB', '4900000', 'IY', 'HALIM', 'OKTRI', '082216769669');
INSERT INTO `booking` VALUES ('142', 'DARAJAT', '4500000', 'AB', 'UJUNG BERUNG', 'DS', '081000000');
INSERT INTO `booking` VALUES ('143', 'SADANG SOREANG NAGREG', '1700000', 'CK', 'JASA MARGA PASTEUR', 'BP. DADAN', '0810000000');
INSERT INTO `booking` VALUES ('144', 'GARUT KEBON BINATANG', '2300000', 'CK', 'MAJALAYA', 'AULIA', '081000000');
INSERT INTO `booking` VALUES ('145', 'KELAPA GADING JAKARTA', '3000000', 'WA', 'KAMPUS EQUITAS JL. PAHLAWAN JM : 07.00', 'YADI', '087824590321 FIRMAN');
INSERT INTO `booking` VALUES ('146', 'DUFAN', '3300000', 'IY', 'BANDUNG', 'BU DELA', '081000000');
INSERT INTO `booking` VALUES ('147', 'CTB', '7250000', 'IY', 'HOTEL MUTIARA KEBON KAWUNG', 'PA DADANG', '081221801346');
INSERT INTO `booking` VALUES ('148', 'BOGOR', '2800000', 'WA', 'KAPALERI - TRANS 7', 'BP. PIPIN', '081214322357');
INSERT INTO `booking` VALUES ('149', 'ANCOL - CENGKARENG', '3800000', 'IY', 'KP. CINTASARI GARUT SEBELUM TERMINAL TOBLONG JM : 03.00', 'ROMI', '082120872325');
INSERT INTO `booking` VALUES ('150', 'JOGYA', '26700000', 'WA', 'PAMULIHAN TANJUNG SARI JM : 13.00', 'HAMZAH', '081214757013');
INSERT INTO `booking` VALUES ('151', 'CIWIDEY', '1400000', null, 'TAMAN MAKAM PAHLAWAN JM : 06.00', 'IBU NENI', '081320360029');
INSERT INTO `booking` VALUES ('152', 'CIWIDEY', '1000000', 'WA', 'KANTOR BPR CILEUNYI JM : 06.00', 'BP. EDI', '081322818399');
INSERT INTO `booking` VALUES ('154', 'PANGANDARAN', '4600000', 'AB', 'BANDUNG', 'HASAN', '08100000');
INSERT INTO `booking` VALUES ('155', 'LEMBANG', '1500000', 'WA', 'WARUNG PETEY', 'BP. LILI', '085314679167');
INSERT INTO `booking` VALUES ('156', 'PANGANDARAN', '22000000', 'AB', 'BANDUNG', 'IBU SRI', '08993789682');
INSERT INTO `booking` VALUES ('157', 'BANDUNG', '16400000', 'IY', 'JAKARTA', 'IBU NANI', '08100000');
INSERT INTO `booking` VALUES ('158', 'CTB', '7800000', 'CK', 'BANDUNG', 'HERU/ PA MEGA', '085000000');
INSERT INTO `booking` VALUES ('159', 'PANGALENGAN', '3000000', 'IY', 'PASIR IMPUN', 'HENDRA', '08500000');
INSERT INTO `booking` VALUES ('160', 'GN PAPANDAYAN GARUT, TALAGA BODAS', '1200000', 'WA', 'PERUM TAMAN CILEUNYI JM : 05.00 DPN KANTOR RW 22', 'IBU ELI', '081383219443');
INSERT INTO `booking` VALUES ('161', 'TAMAN SAFARI INDONESIA', '3200000', 'CK', 'PT. INDOMARCO PRISMATAMA CABANG PURWAKARTA KAWASAN KOTA BUKIT INDAH SEKTOR N BLOK N 1 NO : 5 PURWAKARTA', 'BP. BUDHIMAN', '081382314777');
INSERT INTO `booking` VALUES ('162', 'ANCOL', '5800000', 'CK', 'HUSEIN', 'BP. ADI', '082240843890');
INSERT INTO `booking` VALUES ('163', 'BOGOR', '850000', 'AB', 'BANDUNG', 'NO NAME', '0811111111');
INSERT INTO `booking` VALUES ('164', 'MALANG - JOGYA', '10000000', 'IY', 'MARGAHAYU RAYA STNBY GARASI', 'PRODIMA TOUR', '081324323897');
INSERT INTO `booking` VALUES ('165', 'BANDUNG', '2400000', 'WA', 'HOTEL HIPER IN PASKAL', 'YADI', '082315688886');
INSERT INTO `booking` VALUES ('166', 'CIPANAS', '5300000', 'AB', 'MANISAN PRIBUMI', 'HERI', '08122123452');
INSERT INTO `booking` VALUES ('167', 'CIKAWAO BANDUNG', '1400000', 'WA', 'BOJONG KONENG RANCAEKEK JM : 06.00', 'IBU ENUNG', '089646618364');
INSERT INTO `booking` VALUES ('168', 'PASAR REBO JAKARTA', '3200000', 'WA', 'BINA KARYA 1 MANGLAYANG', 'BP. AGUS', '085220114607');
INSERT INTO `booking` VALUES ('169', 'CIWIDEY', '2900000', 'AB', 'CIKALONG WETAN PADALARANG', 'BP. YADI', '081111111');
INSERT INTO `booking` VALUES ('170', 'PANGANDARAN', '6600000', 'WA', 'SOREANG', 'BP. ASEP ASOFA', '081000000');
INSERT INTO `booking` VALUES ('171', 'AMPERA WATERPARK', '2750000', 'WA', 'SAMPING ALENA TEX DAYEUH KOLOT JM : 05.00', 'IBU YULI', '081222881577');
INSERT INTO `booking` VALUES ('172', 'CIATER', '2400000', 'AB', 'HOTEL KP. LEGOK LEMBANG JM : 05.00', 'BP. SUPRIADI', '081260243692');
INSERT INTO `booking` VALUES ('173', 'KARAWANG KOTA', '2200000', 'CK', 'PASTEUR SEBRANG GIANT JM : 07.00', 'AMIR', '081395062545');
INSERT INTO `booking` VALUES ('174', 'BANDUNG', '3000000', 'AB', 'CENGKARENG', 'GERI', '081299206628');
INSERT INTO `booking` VALUES ('175', 'DARAJAT', '1800000', 'CK', 'POM BENSIN RIUNG BDG JM 05.00', 'IBU ELI ', '081321529091');
INSERT INTO `booking` VALUES ('176', 'bali', '25000000', 'AB', 'Jl. Cinunuk dekat alpa', 'edy p', '7801090');
INSERT INTO `booking` VALUES ('177', 'JOGYA', '12300000', 'AB', 'SMA TARUNA BAKTI JM : 04.00', 'BP. AEP SAEPUDIN', '08100000');
INSERT INTO `booking` VALUES ('178', 'PANGANDARAN', '5500000', 'WA', 'WARUNG CINA PANGKALAN OJEG', 'IBU KARLINA', '081382306787');
INSERT INTO `booking` VALUES ('179', 'JOGYA', '15200000', 'AB', 'STNBY GARASI', 'YAYAN', '082219226212');
INSERT INTO `booking` VALUES ('180', 'LEMBANG', '1600000', 'WA', 'KANTOR CAMAT CIMANGGUNG PARAMON JM : 06.00', 'BP. AGUS', '082318037764');
INSERT INTO `booking` VALUES ('181', 'BANDUNG', '1800000', 'AB', 'MUARA ANGKE', 'ADE JL', '08100000');
INSERT INTO `booking` VALUES ('182', 'BLORA', '8500000', 'AB', 'BANDUNG', 'XTRANS', '08500000');
INSERT INTO `booking` VALUES ('183', 'BANDUNG', '1000000', 'AB', 'AL FALAH CICALENGKA', 'HELMI', '08500000');
INSERT INTO `booking` VALUES ('184', 'CIWIDEY', '1700000', 'WA', 'MESJID FATAL CIPADUNG JM. 06.00', 'BP. ENDANG', '081322646874');
INSERT INTO `booking` VALUES ('185', 'ANYER', '10400000', 'IY', 'STNBY GERASI', 'BP. SARWOEDI', '082214408380');
INSERT INTO `booking` VALUES ('186', 'CENGKARENG- MBAH PERIUK-PINTU 1000', '3000000', 'WA', 'SEBRANG BORMA RANCAEKEK', 'BP. IYEP', '083826791741');
INSERT INTO `booking` VALUES ('187', 'PANGANDARAN', '5600000', 'IY', 'CILEUNYI', 'IYOS', '081323377155');
INSERT INTO `booking` VALUES ('188', 'JL BRAGA', '1500000', 'WA', 'PUSKOPAD TANJUNG SARI JM : 07.00', 'DICKY', '085795236492');
INSERT INTO `booking` VALUES ('189', 'BATU KARAS, PANGANDARAN', '4000000', 'CK', 'MSJD AGUNG SOREANG ', 'BP. DINAR', '081321145591');
INSERT INTO `booking` VALUES ('190', 'LAMPUNG', '5400000', 'WA', 'BANDUNG', 'YADI', '08100000');
INSERT INTO `booking` VALUES ('191', 'CENGKARENG', '3300000', 'AB', 'MOH TOHA', 'BISMA', '081000000');
INSERT INTO `booking` VALUES ('192', 'RAGUNAN - TMII - MONAS', '5800000', 'WA', 'RANCA KALONG', 'IBU RODIAH', '0811111');
INSERT INTO `booking` VALUES ('193', '', '0', null, '', '', '');

-- ----------------------------
-- Table structure for `detail_booking`
-- ----------------------------
DROP TABLE IF EXISTS `detail_booking`;
CREATE TABLE `detail_booking` (
  `id_booking` int(10) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_unit` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=786 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of detail_booking
-- ----------------------------
INSERT INTO `detail_booking` VALUES ('1', '2018-01-01', '154', '9');
INSERT INTO `detail_booking` VALUES ('2', '2018-01-01', '157', '14');
INSERT INTO `detail_booking` VALUES ('2', '2018-01-01', '158', '19');
INSERT INTO `detail_booking` VALUES ('3', '2018-01-01', '159', '4');
INSERT INTO `detail_booking` VALUES ('3', '2018-01-01', '160', '6');
INSERT INTO `detail_booking` VALUES ('3', '2018-01-01', '161', '7');
INSERT INTO `detail_booking` VALUES ('3', '2018-01-01', '162', '8');
INSERT INTO `detail_booking` VALUES ('4', '2018-01-02', '163', '6');
INSERT INTO `detail_booking` VALUES ('5', '2018-01-02', '164', '14');
INSERT INTO `detail_booking` VALUES ('5', '2018-01-02', '165', '15');
INSERT INTO `detail_booking` VALUES ('5', '2018-01-02', '166', '16');
INSERT INTO `detail_booking` VALUES ('5', '2018-01-02', '167', '17');
INSERT INTO `detail_booking` VALUES ('5', '2018-01-02', '168', '18');
INSERT INTO `detail_booking` VALUES ('5', '2018-01-02', '169', '19');
INSERT INTO `detail_booking` VALUES ('6', '2018-01-02', '170', '9');
INSERT INTO `detail_booking` VALUES ('7', '2018-01-02', '171', '7');
INSERT INTO `detail_booking` VALUES ('8', '2018-01-02', '172', '8');
INSERT INTO `detail_booking` VALUES ('9', '2018-01-02', '173', '13');
INSERT INTO `detail_booking` VALUES ('10', '2018-01-02', '174', '1');
INSERT INTO `detail_booking` VALUES ('10', '2018-01-02', '175', '3');
INSERT INTO `detail_booking` VALUES ('11', '2018-01-02', '176', '20');
INSERT INTO `detail_booking` VALUES ('13', '2018-01-03', '178', '18');
INSERT INTO `detail_booking` VALUES ('14', '2018-01-03', '179', '11');
INSERT INTO `detail_booking` VALUES ('15', '2018-01-03', '184', '7');
INSERT INTO `detail_booking` VALUES ('15', '2018-01-03', '185', '12');
INSERT INTO `detail_booking` VALUES ('15', '2018-01-03', '186', '14');
INSERT INTO `detail_booking` VALUES ('15', '2018-01-03', '187', '15');
INSERT INTO `detail_booking` VALUES ('16', '2018-01-03', '188', '4');
INSERT INTO `detail_booking` VALUES ('17', '2018-01-04', '189', '16');
INSERT INTO `detail_booking` VALUES ('17', '2018-01-04', '190', '17');
INSERT INTO `detail_booking` VALUES ('17', '2018-01-04', '191', '19');
INSERT INTO `detail_booking` VALUES ('18', '2018-01-04', '192', '3');
INSERT INTO `detail_booking` VALUES ('21', '2018-01-06', '195', '21');
INSERT INTO `detail_booking` VALUES ('24', '2018-01-06', '198', '12');
INSERT INTO `detail_booking` VALUES ('25', '2018-01-06', '199', '11');
INSERT INTO `detail_booking` VALUES ('27', '2018-01-06', '201', '17');
INSERT INTO `detail_booking` VALUES ('29', '2018-01-06', '203', '10');
INSERT INTO `detail_booking` VALUES ('30', '2018-01-06', '204', '20');
INSERT INTO `detail_booking` VALUES ('31', '2018-01-06', '205', '8');
INSERT INTO `detail_booking` VALUES ('32', '2018-01-07', '206', '10');
INSERT INTO `detail_booking` VALUES ('32', '2018-01-07', '207', '11');
INSERT INTO `detail_booking` VALUES ('32', '2018-01-07', '208', '12');
INSERT INTO `detail_booking` VALUES ('33', '2018-01-07', '209', '7');
INSERT INTO `detail_booking` VALUES ('34', '2018-01-07', '210', '16');
INSERT INTO `detail_booking` VALUES ('35', '2018-01-07', '211', '17');
INSERT INTO `detail_booking` VALUES ('36', '2018-01-07', '212', '20');
INSERT INTO `detail_booking` VALUES ('38', '2018-01-07', '215', '1');
INSERT INTO `detail_booking` VALUES ('39', '2018-01-07', '216', '4');
INSERT INTO `detail_booking` VALUES ('39', '2018-01-07', '217', '22');
INSERT INTO `detail_booking` VALUES ('40', '2018-01-07', '218', '16');
INSERT INTO `detail_booking` VALUES ('41', '2018-01-08', '219', '17');
INSERT INTO `detail_booking` VALUES ('42', '2018-01-08', '220', '7');
INSERT INTO `detail_booking` VALUES ('43', '2018-01-08', '221', '13');
INSERT INTO `detail_booking` VALUES ('44', '2018-01-07', '222', '6');
INSERT INTO `detail_booking` VALUES ('44', '2018-01-07', '223', '8');
INSERT INTO `detail_booking` VALUES ('45', '2018-01-08', '224', '4');
INSERT INTO `detail_booking` VALUES ('12', '2018-01-03', '232', '10');
INSERT INTO `detail_booking` VALUES ('12', '2018-01-04', '233', '10');
INSERT INTO `detail_booking` VALUES ('19', '2018-01-05', '234', '19');
INSERT INTO `detail_booking` VALUES ('19', '2018-01-06', '235', '19');
INSERT INTO `detail_booking` VALUES ('19', '2018-01-07', '236', '19');
INSERT INTO `detail_booking` VALUES ('28', '2018-01-06', '237', '13');
INSERT INTO `detail_booking` VALUES ('28', '2018-01-07', '238', '13');
INSERT INTO `detail_booking` VALUES ('20', '2018-01-06', '239', '9');
INSERT INTO `detail_booking` VALUES ('20', '2018-01-07', '240', '9');
INSERT INTO `detail_booking` VALUES ('22', '2018-01-06', '241', '15');
INSERT INTO `detail_booking` VALUES ('22', '2018-01-07', '242', '15');
INSERT INTO `detail_booking` VALUES ('23', '2018-01-06', '243', '14');
INSERT INTO `detail_booking` VALUES ('23', '2018-01-07', '244', '14');
INSERT INTO `detail_booking` VALUES ('26', '2018-01-06', '247', '3');
INSERT INTO `detail_booking` VALUES ('26', '2018-01-07', '248', '3');
INSERT INTO `detail_booking` VALUES ('46', '2018-01-09', '249', '8');
INSERT INTO `detail_booking` VALUES ('46', '2018-01-09', '250', '14');
INSERT INTO `detail_booking` VALUES ('46', '2018-01-10', '251', '8');
INSERT INTO `detail_booking` VALUES ('46', '2018-01-10', '252', '14');
INSERT INTO `detail_booking` VALUES ('46', '2018-01-11', '253', '8');
INSERT INTO `detail_booking` VALUES ('46', '2018-01-11', '254', '14');
INSERT INTO `detail_booking` VALUES ('46', '2018-01-12', '255', '8');
INSERT INTO `detail_booking` VALUES ('46', '2018-01-12', '256', '14');
INSERT INTO `detail_booking` VALUES ('46', '2018-01-13', '257', '8');
INSERT INTO `detail_booking` VALUES ('46', '2018-01-13', '258', '14');
INSERT INTO `detail_booking` VALUES ('47', '2018-01-09', '259', '6');
INSERT INTO `detail_booking` VALUES ('48', '2018-01-09', '260', '9');
INSERT INTO `detail_booking` VALUES ('49', '2018-04-12', '261', '10');
INSERT INTO `detail_booking` VALUES ('49', '2018-04-12', '262', '12');
INSERT INTO `detail_booking` VALUES ('49', '2018-04-12', '263', '13');
INSERT INTO `detail_booking` VALUES ('49', '2018-04-12', '264', '14');
INSERT INTO `detail_booking` VALUES ('49', '2018-04-12', '265', '15');
INSERT INTO `detail_booking` VALUES ('49', '2018-04-12', '266', '16');
INSERT INTO `detail_booking` VALUES ('49', '2018-04-13', '267', '10');
INSERT INTO `detail_booking` VALUES ('49', '2018-04-13', '268', '12');
INSERT INTO `detail_booking` VALUES ('49', '2018-04-13', '269', '13');
INSERT INTO `detail_booking` VALUES ('49', '2018-04-13', '270', '14');
INSERT INTO `detail_booking` VALUES ('49', '2018-04-13', '271', '15');
INSERT INTO `detail_booking` VALUES ('49', '2018-04-13', '272', '16');
INSERT INTO `detail_booking` VALUES ('49', '2018-04-14', '273', '10');
INSERT INTO `detail_booking` VALUES ('49', '2018-04-14', '274', '12');
INSERT INTO `detail_booking` VALUES ('49', '2018-04-14', '275', '13');
INSERT INTO `detail_booking` VALUES ('49', '2018-04-14', '276', '14');
INSERT INTO `detail_booking` VALUES ('49', '2018-04-14', '277', '15');
INSERT INTO `detail_booking` VALUES ('49', '2018-04-14', '278', '16');
INSERT INTO `detail_booking` VALUES ('53', '2018-02-04', '283', '17');
INSERT INTO `detail_booking` VALUES ('55', '2018-01-10', '286', '16');
INSERT INTO `detail_booking` VALUES ('56', '2018-01-21', '287', '11');
INSERT INTO `detail_booking` VALUES ('57', '2018-01-14', '288', '4');
INSERT INTO `detail_booking` VALUES ('58', '2018-05-05', '289', '10');
INSERT INTO `detail_booking` VALUES ('58', '2018-05-05', '290', '11');
INSERT INTO `detail_booking` VALUES ('58', '2018-05-06', '291', '10');
INSERT INTO `detail_booking` VALUES ('58', '2018-05-06', '292', '11');
INSERT INTO `detail_booking` VALUES ('59', '2018-04-08', '293', '12');
INSERT INTO `detail_booking` VALUES ('59', '2018-04-08', '294', '13');
INSERT INTO `detail_booking` VALUES ('59', '2018-04-08', '295', '14');
INSERT INTO `detail_booking` VALUES ('59', '2018-04-09', '296', '12');
INSERT INTO `detail_booking` VALUES ('59', '2018-04-09', '297', '13');
INSERT INTO `detail_booking` VALUES ('59', '2018-04-09', '298', '14');
INSERT INTO `detail_booking` VALUES ('59', '2018-04-10', '299', '12');
INSERT INTO `detail_booking` VALUES ('59', '2018-04-10', '300', '13');
INSERT INTO `detail_booking` VALUES ('59', '2018-04-10', '301', '14');
INSERT INTO `detail_booking` VALUES ('60', '2018-01-11', '302', '7');
INSERT INTO `detail_booking` VALUES ('61', '2018-02-03', '303', '7');
INSERT INTO `detail_booking` VALUES ('61', '2018-02-04', '304', '7');
INSERT INTO `detail_booking` VALUES ('62', '2018-01-10', '305', '7');
INSERT INTO `detail_booking` VALUES ('63', '2018-01-10', '306', '10');
INSERT INTO `detail_booking` VALUES ('63', '2018-01-10', '307', '12');
INSERT INTO `detail_booking` VALUES ('63', '2018-01-10', '308', '13');
INSERT INTO `detail_booking` VALUES ('63', '2018-01-10', '309', '15');
INSERT INTO `detail_booking` VALUES ('64', '2018-01-20', '310', '10');
INSERT INTO `detail_booking` VALUES ('64', '2018-01-21', '311', '10');
INSERT INTO `detail_booking` VALUES ('65', '2018-01-13', '312', '10');
INSERT INTO `detail_booking` VALUES ('65', '2018-01-13', '313', '13');
INSERT INTO `detail_booking` VALUES ('65', '2018-01-14', '314', '10');
INSERT INTO `detail_booking` VALUES ('65', '2018-01-14', '315', '13');
INSERT INTO `detail_booking` VALUES ('67', '2018-01-25', '317', '8');
INSERT INTO `detail_booking` VALUES ('68', '2018-02-08', '318', '19');
INSERT INTO `detail_booking` VALUES ('69', '2018-01-11', '319', '4');
INSERT INTO `detail_booking` VALUES ('72', '2018-01-21', '324', '4');
INSERT INTO `detail_booking` VALUES ('72', '2018-01-22', '325', '4');
INSERT INTO `detail_booking` VALUES ('74', '2018-01-11', '327', '6');
INSERT INTO `detail_booking` VALUES ('79', '2018-01-10', '340', '17');
INSERT INTO `detail_booking` VALUES ('80', '2018-01-10', '341', '9');
INSERT INTO `detail_booking` VALUES ('81', '2018-01-11', '342', '17');
INSERT INTO `detail_booking` VALUES ('81', '2018-01-11', '343', '18');
INSERT INTO `detail_booking` VALUES ('81', '2018-01-12', '344', '17');
INSERT INTO `detail_booking` VALUES ('81', '2018-01-12', '345', '18');
INSERT INTO `detail_booking` VALUES ('81', '2018-01-13', '346', '17');
INSERT INTO `detail_booking` VALUES ('81', '2018-01-13', '347', '18');
INSERT INTO `detail_booking` VALUES ('78', '2018-01-10', '348', '11');
INSERT INTO `detail_booking` VALUES ('78', '2018-01-11', '349', '11');
INSERT INTO `detail_booking` VALUES ('82', '2018-01-11', '350', '12');
INSERT INTO `detail_booking` VALUES ('83', '2018-01-11', '351', '15');
INSERT INTO `detail_booking` VALUES ('84', '2018-01-11', '352', '6');
INSERT INTO `detail_booking` VALUES ('85', '2018-01-11', '353', '9');
INSERT INTO `detail_booking` VALUES ('86', '2018-01-12', '354', '19');
INSERT INTO `detail_booking` VALUES ('86', '2018-01-13', '355', '19');
INSERT INTO `detail_booking` VALUES ('86', '2018-01-14', '356', '19');
INSERT INTO `detail_booking` VALUES ('87', '2018-01-12', '357', '16');
INSERT INTO `detail_booking` VALUES ('87', '2018-01-13', '358', '16');
INSERT INTO `detail_booking` VALUES ('87', '2018-01-14', '359', '16');
INSERT INTO `detail_booking` VALUES ('88', '2018-01-12', '360', '3');
INSERT INTO `detail_booking` VALUES ('89', '2018-01-12', '361', '11');
INSERT INTO `detail_booking` VALUES ('90', '2018-01-12', '362', '15');
INSERT INTO `detail_booking` VALUES ('91', '2018-01-13', '363', '12');
INSERT INTO `detail_booking` VALUES ('91', '2018-01-14', '364', '12');
INSERT INTO `detail_booking` VALUES ('92', '2018-01-13', '365', '11');
INSERT INTO `detail_booking` VALUES ('92', '2018-01-13', '366', '15');
INSERT INTO `detail_booking` VALUES ('92', '2018-01-14', '367', '11');
INSERT INTO `detail_booking` VALUES ('92', '2018-01-14', '368', '15');
INSERT INTO `detail_booking` VALUES ('93', '2018-01-13', '369', '22');
INSERT INTO `detail_booking` VALUES ('93', '2018-01-14', '370', '22');
INSERT INTO `detail_booking` VALUES ('95', '2018-01-13', '373', '4');
INSERT INTO `detail_booking` VALUES ('95', '2018-01-13', '374', '6');
INSERT INTO `detail_booking` VALUES ('96', '2018-01-14', '375', '18');
INSERT INTO `detail_booking` VALUES ('97', '2018-01-14', '376', '1');
INSERT INTO `detail_booking` VALUES ('98', '2018-01-14', '377', '9');
INSERT INTO `detail_booking` VALUES ('100', '2018-01-17', '380', '9');
INSERT INTO `detail_booking` VALUES ('101', '2018-02-03', '381', '14');
INSERT INTO `detail_booking` VALUES ('101', '2018-02-03', '382', '16');
INSERT INTO `detail_booking` VALUES ('101', '2018-02-03', '383', '17');
INSERT INTO `detail_booking` VALUES ('101', '2018-02-03', '384', '18');
INSERT INTO `detail_booking` VALUES ('101', '2018-02-03', '385', '19');
INSERT INTO `detail_booking` VALUES ('73', '2018-01-11', '386', '3');
INSERT INTO `detail_booking` VALUES ('102', '2018-01-17', '389', '19');
INSERT INTO `detail_booking` VALUES ('104', '2018-02-17', '391', '10');
INSERT INTO `detail_booking` VALUES ('104', '2018-02-17', '392', '11');
INSERT INTO `detail_booking` VALUES ('104', '2018-02-17', '393', '18');
INSERT INTO `detail_booking` VALUES ('104', '2018-02-17', '394', '19');
INSERT INTO `detail_booking` VALUES ('104', '2018-02-18', '395', '10');
INSERT INTO `detail_booking` VALUES ('104', '2018-02-18', '396', '11');
INSERT INTO `detail_booking` VALUES ('104', '2018-02-18', '397', '18');
INSERT INTO `detail_booking` VALUES ('104', '2018-02-18', '398', '19');
INSERT INTO `detail_booking` VALUES ('105', '2018-01-13', '399', '20');
INSERT INTO `detail_booking` VALUES ('107', '2018-04-12', '401', '10');
INSERT INTO `detail_booking` VALUES ('107', '2018-04-12', '402', '12');
INSERT INTO `detail_booking` VALUES ('107', '2018-04-12', '403', '13');
INSERT INTO `detail_booking` VALUES ('107', '2018-04-12', '404', '14');
INSERT INTO `detail_booking` VALUES ('107', '2018-04-12', '405', '15');
INSERT INTO `detail_booking` VALUES ('107', '2018-04-12', '406', '16');
INSERT INTO `detail_booking` VALUES ('107', '2018-04-13', '407', '10');
INSERT INTO `detail_booking` VALUES ('107', '2018-04-13', '408', '12');
INSERT INTO `detail_booking` VALUES ('107', '2018-04-13', '409', '13');
INSERT INTO `detail_booking` VALUES ('107', '2018-04-13', '410', '14');
INSERT INTO `detail_booking` VALUES ('107', '2018-04-13', '411', '15');
INSERT INTO `detail_booking` VALUES ('107', '2018-04-13', '412', '16');
INSERT INTO `detail_booking` VALUES ('107', '2018-04-14', '413', '10');
INSERT INTO `detail_booking` VALUES ('107', '2018-04-14', '414', '12');
INSERT INTO `detail_booking` VALUES ('107', '2018-04-14', '415', '13');
INSERT INTO `detail_booking` VALUES ('107', '2018-04-14', '416', '14');
INSERT INTO `detail_booking` VALUES ('107', '2018-04-14', '417', '15');
INSERT INTO `detail_booking` VALUES ('107', '2018-04-14', '418', '16');
INSERT INTO `detail_booking` VALUES ('114', '2018-02-08', '466', '10');
INSERT INTO `detail_booking` VALUES ('114', '2018-02-08', '467', '11');
INSERT INTO `detail_booking` VALUES ('115', '2018-02-16', '468', '1');
INSERT INTO `detail_booking` VALUES ('116', '2018-01-20', '469', '14');
INSERT INTO `detail_booking` VALUES ('116', '2018-01-20', '470', '15');
INSERT INTO `detail_booking` VALUES ('117', '2018-02-04', '471', '14');
INSERT INTO `detail_booking` VALUES ('118', '2018-01-21', '472', '14');
INSERT INTO `detail_booking` VALUES ('119', '2018-01-27', '473', '8');
INSERT INTO `detail_booking` VALUES ('120', '2018-01-20', '474', '12');
INSERT INTO `detail_booking` VALUES ('120', '2018-01-21', '475', '12');
INSERT INTO `detail_booking` VALUES ('120', '2018-01-22', '476', '12');
INSERT INTO `detail_booking` VALUES ('94', '2018-01-13', '479', '1');
INSERT INTO `detail_booking` VALUES ('94', '2018-01-13', '480', '9');
INSERT INTO `detail_booking` VALUES ('121', '2018-02-05', '481', '14');
INSERT INTO `detail_booking` VALUES ('121', '2018-02-06', '482', '14');
INSERT INTO `detail_booking` VALUES ('121', '2018-02-07', '483', '14');
INSERT INTO `detail_booking` VALUES ('121', '2018-02-08', '484', '14');
INSERT INTO `detail_booking` VALUES ('121', '2018-02-09', '485', '14');
INSERT INTO `detail_booking` VALUES ('121', '2018-02-10', '486', '14');
INSERT INTO `detail_booking` VALUES ('123', '2018-03-17', '490', '17');
INSERT INTO `detail_booking` VALUES ('123', '2018-03-18', '491', '17');
INSERT INTO `detail_booking` VALUES ('123', '2018-03-19', '492', '17');
INSERT INTO `detail_booking` VALUES ('124', '2018-01-21', '493', '20');
INSERT INTO `detail_booking` VALUES ('125', '2018-01-14', '494', '6');
INSERT INTO `detail_booking` VALUES ('125', '2018-01-14', '495', '7');
INSERT INTO `detail_booking` VALUES ('125', '2018-01-14', '496', '8');
INSERT INTO `detail_booking` VALUES ('125', '2018-01-14', '497', '9');
INSERT INTO `detail_booking` VALUES ('125', '2018-01-15', '498', '4');
INSERT INTO `detail_booking` VALUES ('126', '2018-01-14', '499', '14');
INSERT INTO `detail_booking` VALUES ('127', '2018-03-15', '500', '16');
INSERT INTO `detail_booking` VALUES ('127', '2018-03-15', '501', '17');
INSERT INTO `detail_booking` VALUES ('128', '2018-01-16', '502', '8');
INSERT INTO `detail_booking` VALUES ('129', '2018-01-16', '503', '17');
INSERT INTO `detail_booking` VALUES ('129', '2018-01-16', '504', '20');
INSERT INTO `detail_booking` VALUES ('130', '2018-01-26', '505', '1');
INSERT INTO `detail_booking` VALUES ('131', '2018-02-03', '506', '1');
INSERT INTO `detail_booking` VALUES ('66', '2018-01-17', '507', '1');
INSERT INTO `detail_booking` VALUES ('66', '2018-01-17', '508', '10');
INSERT INTO `detail_booking` VALUES ('132', '2018-01-16', '509', '4');
INSERT INTO `detail_booking` VALUES ('133', '2018-01-28', '510', '18');
INSERT INTO `detail_booking` VALUES ('134', '2018-03-02', '511', '13');
INSERT INTO `detail_booking` VALUES ('134', '2018-03-03', '512', '13');
INSERT INTO `detail_booking` VALUES ('134', '2018-03-04', '513', '13');
INSERT INTO `detail_booking` VALUES ('136', '2018-02-06', '515', '20');
INSERT INTO `detail_booking` VALUES ('137', '2018-01-20', '516', '26');
INSERT INTO `detail_booking` VALUES ('137', '2018-01-21', '517', '26');
INSERT INTO `detail_booking` VALUES ('138', '2018-01-18', '518', '23');
INSERT INTO `detail_booking` VALUES ('138', '2018-01-19', '519', '23');
INSERT INTO `detail_booking` VALUES ('138', '2018-01-20', '520', '23');
INSERT INTO `detail_booking` VALUES ('138', '2018-01-21', '521', '23');
INSERT INTO `detail_booking` VALUES ('139', '2018-01-17', '522', '11');
INSERT INTO `detail_booking` VALUES ('140', '2018-01-17', '523', '9');
INSERT INTO `detail_booking` VALUES ('140', '2018-01-17', '524', '12');
INSERT INTO `detail_booking` VALUES ('140', '2018-01-17', '525', '13');
INSERT INTO `detail_booking` VALUES ('140', '2018-01-17', '526', '14');
INSERT INTO `detail_booking` VALUES ('140', '2018-01-17', '527', '15');
INSERT INTO `detail_booking` VALUES ('140', '2018-01-17', '528', '16');
INSERT INTO `detail_booking` VALUES ('140', '2018-01-17', '529', '17');
INSERT INTO `detail_booking` VALUES ('140', '2018-01-17', '530', '18');
INSERT INTO `detail_booking` VALUES ('140', '2018-01-18', '531', '9');
INSERT INTO `detail_booking` VALUES ('140', '2018-01-18', '532', '12');
INSERT INTO `detail_booking` VALUES ('140', '2018-01-18', '533', '13');
INSERT INTO `detail_booking` VALUES ('140', '2018-01-18', '534', '14');
INSERT INTO `detail_booking` VALUES ('140', '2018-01-18', '535', '15');
INSERT INTO `detail_booking` VALUES ('140', '2018-01-18', '536', '16');
INSERT INTO `detail_booking` VALUES ('140', '2018-01-18', '537', '17');
INSERT INTO `detail_booking` VALUES ('140', '2018-01-18', '538', '18');
INSERT INTO `detail_booking` VALUES ('140', '2018-01-19', '539', '9');
INSERT INTO `detail_booking` VALUES ('140', '2018-01-19', '540', '12');
INSERT INTO `detail_booking` VALUES ('140', '2018-01-19', '541', '13');
INSERT INTO `detail_booking` VALUES ('140', '2018-01-19', '542', '14');
INSERT INTO `detail_booking` VALUES ('140', '2018-01-19', '543', '15');
INSERT INTO `detail_booking` VALUES ('140', '2018-01-19', '544', '16');
INSERT INTO `detail_booking` VALUES ('140', '2018-01-19', '545', '17');
INSERT INTO `detail_booking` VALUES ('140', '2018-01-19', '546', '18');
INSERT INTO `detail_booking` VALUES ('141', '2018-01-17', '547', '7');
INSERT INTO `detail_booking` VALUES ('142', '2018-01-17', '548', '22');
INSERT INTO `detail_booking` VALUES ('143', '2018-01-17', '549', '25');
INSERT INTO `detail_booking` VALUES ('144', '2018-01-18', '550', '11');
INSERT INTO `detail_booking` VALUES ('146', '2018-01-18', '552', '19');
INSERT INTO `detail_booking` VALUES ('147', '2018-01-18', '553', '1');
INSERT INTO `detail_booking` VALUES ('147', '2018-01-18', '554', '6');
INSERT INTO `detail_booking` VALUES ('147', '2018-01-18', '555', '24');
INSERT INTO `detail_booking` VALUES ('147', '2018-01-18', '556', '25');
INSERT INTO `detail_booking` VALUES ('147', '2018-01-18', '557', '26');
INSERT INTO `detail_booking` VALUES ('148', '2018-01-19', '558', '11');
INSERT INTO `detail_booking` VALUES ('149', '2018-01-19', '559', '10');
INSERT INTO `detail_booking` VALUES ('99', '2018-01-20', '560', '18');
INSERT INTO `detail_booking` VALUES ('99', '2018-01-21', '561', '18');
INSERT INTO `detail_booking` VALUES ('150', '2018-02-15', '563', '12');
INSERT INTO `detail_booking` VALUES ('150', '2018-02-15', '564', '14');
INSERT INTO `detail_booking` VALUES ('150', '2018-02-15', '565', '15');
INSERT INTO `detail_booking` VALUES ('150', '2018-02-16', '566', '12');
INSERT INTO `detail_booking` VALUES ('150', '2018-02-16', '567', '14');
INSERT INTO `detail_booking` VALUES ('150', '2018-02-16', '568', '15');
INSERT INTO `detail_booking` VALUES ('150', '2018-02-17', '569', '12');
INSERT INTO `detail_booking` VALUES ('150', '2018-02-17', '570', '14');
INSERT INTO `detail_booking` VALUES ('150', '2018-02-17', '571', '15');
INSERT INTO `detail_booking` VALUES ('151', '2018-01-21', '572', '1');
INSERT INTO `detail_booking` VALUES ('122', '2018-01-18', '573', '10');
INSERT INTO `detail_booking` VALUES ('122', '2018-01-18', '574', '23');
INSERT INTO `detail_booking` VALUES ('152', '2018-01-20', '576', '20');
INSERT INTO `detail_booking` VALUES ('154', '2018-02-17', '578', '26');
INSERT INTO `detail_booking` VALUES ('111', '2018-02-06', '579', '12');
INSERT INTO `detail_booking` VALUES ('111', '2018-02-06', '580', '13');
INSERT INTO `detail_booking` VALUES ('111', '2018-02-06', '581', '15');
INSERT INTO `detail_booking` VALUES ('111', '2018-02-06', '582', '16');
INSERT INTO `detail_booking` VALUES ('111', '2018-02-06', '583', '17');
INSERT INTO `detail_booking` VALUES ('111', '2018-02-06', '584', '18');
INSERT INTO `detail_booking` VALUES ('156', '2018-03-30', '628', '7');
INSERT INTO `detail_booking` VALUES ('156', '2018-03-30', '629', '10');
INSERT INTO `detail_booking` VALUES ('156', '2018-03-30', '630', '11');
INSERT INTO `detail_booking` VALUES ('156', '2018-03-30', '631', '13');
INSERT INTO `detail_booking` VALUES ('54', '2018-02-11', '632', '10');
INSERT INTO `detail_booking` VALUES ('54', '2018-02-11', '633', '12');
INSERT INTO `detail_booking` VALUES ('112', '2018-02-07', '634', '12');
INSERT INTO `detail_booking` VALUES ('112', '2018-02-07', '635', '13');
INSERT INTO `detail_booking` VALUES ('112', '2018-02-07', '636', '15');
INSERT INTO `detail_booking` VALUES ('112', '2018-02-07', '637', '16');
INSERT INTO `detail_booking` VALUES ('112', '2018-02-07', '638', '17');
INSERT INTO `detail_booking` VALUES ('112', '2018-02-07', '639', '18');
INSERT INTO `detail_booking` VALUES ('112', '2018-02-08', '640', '12');
INSERT INTO `detail_booking` VALUES ('112', '2018-02-08', '641', '13');
INSERT INTO `detail_booking` VALUES ('112', '2018-02-08', '642', '15');
INSERT INTO `detail_booking` VALUES ('112', '2018-02-08', '643', '16');
INSERT INTO `detail_booking` VALUES ('112', '2018-02-08', '644', '17');
INSERT INTO `detail_booking` VALUES ('112', '2018-02-08', '645', '18');
INSERT INTO `detail_booking` VALUES ('157', '2018-04-09', '646', '14');
INSERT INTO `detail_booking` VALUES ('157', '2018-04-09', '647', '15');
INSERT INTO `detail_booking` VALUES ('157', '2018-04-09', '648', '26');
INSERT INTO `detail_booking` VALUES ('157', '2018-04-10', '649', '14');
INSERT INTO `detail_booking` VALUES ('157', '2018-04-10', '650', '15');
INSERT INTO `detail_booking` VALUES ('157', '2018-04-10', '651', '26');
INSERT INTO `detail_booking` VALUES ('158', '2018-01-26', '652', '16');
INSERT INTO `detail_booking` VALUES ('159', '2018-02-04', '653', '17');
INSERT INTO `detail_booking` VALUES ('155', '2018-01-25', '657', '6');
INSERT INTO `detail_booking` VALUES ('161', '2018-04-28', '660', '14');
INSERT INTO `detail_booking` VALUES ('162', '2018-02-04', '663', '10');
INSERT INTO `detail_booking` VALUES ('162', '2018-02-04', '664', '12');
INSERT INTO `detail_booking` VALUES ('51', '2018-02-04', '665', '11');
INSERT INTO `detail_booking` VALUES ('163', '2018-01-18', '666', '20');
INSERT INTO `detail_booking` VALUES ('37', '2018-01-07', '667', '6');
INSERT INTO `detail_booking` VALUES ('37', '2018-01-07', '668', '8');
INSERT INTO `detail_booking` VALUES ('164', '2018-01-25', '669', '7');
INSERT INTO `detail_booking` VALUES ('164', '2018-01-26', '670', '7');
INSERT INTO `detail_booking` VALUES ('164', '2018-01-27', '671', '7');
INSERT INTO `detail_booking` VALUES ('164', '2018-01-28', '672', '7');
INSERT INTO `detail_booking` VALUES ('164', '2018-01-29', '673', '7');
INSERT INTO `detail_booking` VALUES ('70', '2018-01-25', '674', '10');
INSERT INTO `detail_booking` VALUES ('70', '2018-01-25', '675', '20');
INSERT INTO `detail_booking` VALUES ('165', '2018-01-19', '676', '19');
INSERT INTO `detail_booking` VALUES ('135', '2018-03-21', '679', '18');
INSERT INTO `detail_booking` VALUES ('52', '2018-01-20', '680', '8');
INSERT INTO `detail_booking` VALUES ('167', '2018-02-04', '681', '1');
INSERT INTO `detail_booking` VALUES ('108', '2018-01-20', '683', '7');
INSERT INTO `detail_booking` VALUES ('168', '2018-02-03', '684', '20');
INSERT INTO `detail_booking` VALUES ('113', '2018-02-19', '689', '12');
INSERT INTO `detail_booking` VALUES ('113', '2018-02-19', '690', '14');
INSERT INTO `detail_booking` VALUES ('113', '2018-02-19', '691', '15');
INSERT INTO `detail_booking` VALUES ('113', '2018-02-20', '692', '12');
INSERT INTO `detail_booking` VALUES ('113', '2018-02-20', '693', '14');
INSERT INTO `detail_booking` VALUES ('113', '2018-02-20', '694', '15');
INSERT INTO `detail_booking` VALUES ('113', '2018-02-21', '695', '12');
INSERT INTO `detail_booking` VALUES ('113', '2018-02-21', '696', '14');
INSERT INTO `detail_booking` VALUES ('113', '2018-02-21', '697', '15');
INSERT INTO `detail_booking` VALUES ('113', '2018-02-22', '698', '12');
INSERT INTO `detail_booking` VALUES ('113', '2018-02-22', '699', '14');
INSERT INTO `detail_booking` VALUES ('113', '2018-02-22', '700', '15');
INSERT INTO `detail_booking` VALUES ('113', '2018-02-23', '701', '12');
INSERT INTO `detail_booking` VALUES ('113', '2018-02-23', '702', '14');
INSERT INTO `detail_booking` VALUES ('113', '2018-02-23', '703', '15');
INSERT INTO `detail_booking` VALUES ('113', '2018-02-24', '704', '12');
INSERT INTO `detail_booking` VALUES ('113', '2018-02-24', '705', '14');
INSERT INTO `detail_booking` VALUES ('113', '2018-02-24', '706', '15');
INSERT INTO `detail_booking` VALUES ('169', '2018-01-20', '707', '11');
INSERT INTO `detail_booking` VALUES ('170', '2018-01-20', '708', '19');
INSERT INTO `detail_booking` VALUES ('170', '2018-01-21', '709', '19');
INSERT INTO `detail_booking` VALUES ('171', '2018-01-21', '710', '11');
INSERT INTO `detail_booking` VALUES ('77', '2018-01-21', '712', '7');
INSERT INTO `detail_booking` VALUES ('77', '2018-01-21', '713', '8');
INSERT INTO `detail_booking` VALUES ('103', '2018-01-21', '715', '17');
INSERT INTO `detail_booking` VALUES ('172', '2018-01-21', '716', '25');
INSERT INTO `detail_booking` VALUES ('172', '2018-01-22', '717', '25');
INSERT INTO `detail_booking` VALUES ('145', '2018-01-21', '718', '13');
INSERT INTO `detail_booking` VALUES ('173', '2018-01-21', '719', '26');
INSERT INTO `detail_booking` VALUES ('174', '2018-01-21', '720', '15');
INSERT INTO `detail_booking` VALUES ('106', '2018-01-21', '721', '16');
INSERT INTO `detail_booking` VALUES ('176', '2018-01-30', '723', '16');
INSERT INTO `detail_booking` VALUES ('177', '2018-01-23', '724', '16');
INSERT INTO `detail_booking` VALUES ('177', '2018-01-24', '725', '16');
INSERT INTO `detail_booking` VALUES ('177', '2018-01-25', '726', '16');
INSERT INTO `detail_booking` VALUES ('178', '2018-01-27', '727', '11');
INSERT INTO `detail_booking` VALUES ('179', '2018-01-22', '735', '14');
INSERT INTO `detail_booking` VALUES ('179', '2018-01-22', '736', '26');
INSERT INTO `detail_booking` VALUES ('179', '2018-01-23', '737', '14');
INSERT INTO `detail_booking` VALUES ('179', '2018-01-23', '738', '26');
INSERT INTO `detail_booking` VALUES ('179', '2018-01-24', '739', '14');
INSERT INTO `detail_booking` VALUES ('179', '2018-01-24', '740', '26');
INSERT INTO `detail_booking` VALUES ('181', '2018-01-21', '742', '6');
INSERT INTO `detail_booking` VALUES ('182', '2018-01-21', '743', '1');
INSERT INTO `detail_booking` VALUES ('182', '2018-01-21', '744', '6');
INSERT INTO `detail_booking` VALUES ('182', '2018-01-21', '745', '26');
INSERT INTO `detail_booking` VALUES ('182', '2018-01-22', '746', '6');
INSERT INTO `detail_booking` VALUES ('182', '2018-01-22', '747', '8');
INSERT INTO `detail_booking` VALUES ('183', '2018-01-22', '748', '20');
INSERT INTO `detail_booking` VALUES ('184', '2018-01-24', '749', '25');
INSERT INTO `detail_booking` VALUES ('110', '2018-01-23', '752', '12');
INSERT INTO `detail_booking` VALUES ('166', '2018-01-19', '753', '1');
INSERT INTO `detail_booking` VALUES ('166', '2018-01-19', '754', '6');
INSERT INTO `detail_booking` VALUES ('166', '2018-01-20', '755', '1');
INSERT INTO `detail_booking` VALUES ('166', '2018-01-20', '756', '6');
INSERT INTO `detail_booking` VALUES ('186', '2018-01-26', '757', '12');
INSERT INTO `detail_booking` VALUES ('187', '2018-02-16', '758', '27');
INSERT INTO `detail_booking` VALUES ('187', '2018-02-17', '759', '27');
INSERT INTO `detail_booking` VALUES ('188', '2018-01-28', '764', '8');
INSERT INTO `detail_booking` VALUES ('175', '2018-01-23', '765', '7');
INSERT INTO `detail_booking` VALUES ('76', '2018-01-23', '766', '17');
INSERT INTO `detail_booking` VALUES ('76', '2018-01-23', '767', '18');
INSERT INTO `detail_booking` VALUES ('189', '2018-01-27', '768', '7');
INSERT INTO `detail_booking` VALUES ('189', '2018-01-28', '769', '7');
INSERT INTO `detail_booking` VALUES ('160', '2018-01-24', '770', '20');
INSERT INTO `detail_booking` VALUES ('190', '2018-01-26', '771', '1');
INSERT INTO `detail_booking` VALUES ('190', '2018-01-27', '772', '1');
INSERT INTO `detail_booking` VALUES ('190', '2018-01-28', '773', '1');
INSERT INTO `detail_booking` VALUES ('180', '2018-01-24', '774', '9');
INSERT INTO `detail_booking` VALUES ('75', '2018-01-24', '775', '10');
INSERT INTO `detail_booking` VALUES ('75', '2018-01-24', '776', '11');
INSERT INTO `detail_booking` VALUES ('75', '2018-01-24', '777', '12');
INSERT INTO `detail_booking` VALUES ('75', '2018-01-24', '778', '15');
INSERT INTO `detail_booking` VALUES ('185', '2018-01-23', '779', '8');
INSERT INTO `detail_booking` VALUES ('185', '2018-01-23', '780', '13');
INSERT INTO `detail_booking` VALUES ('191', '2018-01-24', '781', '19');
INSERT INTO `detail_booking` VALUES ('192', '2018-03-13', '782', '10');
INSERT INTO `detail_booking` VALUES ('192', '2018-03-13', '783', '11');
INSERT INTO `detail_booking` VALUES ('193', '2018-01-17', '784', '1');
INSERT INTO `detail_booking` VALUES ('193', '2018-01-18', '785', '1');

-- ----------------------------
-- Table structure for `detail_booking_unit`
-- ----------------------------
DROP TABLE IF EXISTS `detail_booking_unit`;
CREATE TABLE `detail_booking_unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_booking` varchar(10) NOT NULL,
  `id_unit` varchar(50) DEFAULT NULL,
  `harga` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=495 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of detail_booking_unit
-- ----------------------------
INSERT INTO `detail_booking_unit` VALUES ('82', '1', '9', '1800000');
INSERT INTO `detail_booking_unit` VALUES ('85', '2', '14', '3000000');
INSERT INTO `detail_booking_unit` VALUES ('86', '2', '19', '3300000');
INSERT INTO `detail_booking_unit` VALUES ('87', '3', '7', '1700000');
INSERT INTO `detail_booking_unit` VALUES ('88', '3', '8', '1700000');
INSERT INTO `detail_booking_unit` VALUES ('89', '3', '4', '1700000');
INSERT INTO `detail_booking_unit` VALUES ('90', '3', '6', '1700000');
INSERT INTO `detail_booking_unit` VALUES ('91', '4', '6', '2300000');
INSERT INTO `detail_booking_unit` VALUES ('92', '5', '14', '2900000');
INSERT INTO `detail_booking_unit` VALUES ('93', '5', '15', '2900000');
INSERT INTO `detail_booking_unit` VALUES ('94', '5', '16', '3300000');
INSERT INTO `detail_booking_unit` VALUES ('95', '5', '17', '3300000');
INSERT INTO `detail_booking_unit` VALUES ('96', '5', '18', '3300000');
INSERT INTO `detail_booking_unit` VALUES ('97', '5', '19', '3300000');
INSERT INTO `detail_booking_unit` VALUES ('98', '6', '9', '2000000');
INSERT INTO `detail_booking_unit` VALUES ('99', '7', '7', '1500000');
INSERT INTO `detail_booking_unit` VALUES ('100', '8', '8', '2200000');
INSERT INTO `detail_booking_unit` VALUES ('101', '9', '13', '3000000');
INSERT INTO `detail_booking_unit` VALUES ('102', '10', '1', '1700000');
INSERT INTO `detail_booking_unit` VALUES ('103', '10', '3', '1700000');
INSERT INTO `detail_booking_unit` VALUES ('104', '11', '20', '700000');
INSERT INTO `detail_booking_unit` VALUES ('106', '13', '18', '16500000');
INSERT INTO `detail_booking_unit` VALUES ('107', '14', '11', '5500000');
INSERT INTO `detail_booking_unit` VALUES ('112', '15', '7', '3600000');
INSERT INTO `detail_booking_unit` VALUES ('113', '15', '12', '6000000');
INSERT INTO `detail_booking_unit` VALUES ('114', '15', '14', '6000000');
INSERT INTO `detail_booking_unit` VALUES ('115', '15', '15', '6000000');
INSERT INTO `detail_booking_unit` VALUES ('116', '16', '4', '1800000');
INSERT INTO `detail_booking_unit` VALUES ('117', '17', '16', '3400000');
INSERT INTO `detail_booking_unit` VALUES ('118', '17', '17', '3400000');
INSERT INTO `detail_booking_unit` VALUES ('119', '17', '19', '3400000');
INSERT INTO `detail_booking_unit` VALUES ('120', '18', '3', '1800000');
INSERT INTO `detail_booking_unit` VALUES ('123', '21', '21', '1350000');
INSERT INTO `detail_booking_unit` VALUES ('126', '24', '12', '2800000');
INSERT INTO `detail_booking_unit` VALUES ('127', '25', '11', '2300000');
INSERT INTO `detail_booking_unit` VALUES ('129', '27', '17', '3400000');
INSERT INTO `detail_booking_unit` VALUES ('131', '29', '10', '2600000');
INSERT INTO `detail_booking_unit` VALUES ('132', '30', '20', '700000');
INSERT INTO `detail_booking_unit` VALUES ('133', '31', '8', '1400000');
INSERT INTO `detail_booking_unit` VALUES ('134', '32', '10', '3200000');
INSERT INTO `detail_booking_unit` VALUES ('135', '32', '11', '3200000');
INSERT INTO `detail_booking_unit` VALUES ('136', '32', '12', '3200000');
INSERT INTO `detail_booking_unit` VALUES ('137', '33', '7', '1700000');
INSERT INTO `detail_booking_unit` VALUES ('138', '34', '16', '3400000');
INSERT INTO `detail_booking_unit` VALUES ('139', '35', '17', '3400000');
INSERT INTO `detail_booking_unit` VALUES ('140', '36', '20', '1200000');
INSERT INTO `detail_booking_unit` VALUES ('143', '38', '1', '1550000');
INSERT INTO `detail_booking_unit` VALUES ('144', '39', '4', '1700000');
INSERT INTO `detail_booking_unit` VALUES ('145', '39', '22', '1700000');
INSERT INTO `detail_booking_unit` VALUES ('146', '40', '16', '3400000');
INSERT INTO `detail_booking_unit` VALUES ('147', '41', '17', '3400000');
INSERT INTO `detail_booking_unit` VALUES ('148', '42', '7', '1800000');
INSERT INTO `detail_booking_unit` VALUES ('149', '43', '13', '3000000');
INSERT INTO `detail_booking_unit` VALUES ('150', '44', '6', '1700000');
INSERT INTO `detail_booking_unit` VALUES ('151', '44', '8', '1700000');
INSERT INTO `detail_booking_unit` VALUES ('152', '45', '4', '1700000');
INSERT INTO `detail_booking_unit` VALUES ('157', '12', '10', '6000000');
INSERT INTO `detail_booking_unit` VALUES ('158', '19', '19', '9900000');
INSERT INTO `detail_booking_unit` VALUES ('159', '28', '13', '5600000');
INSERT INTO `detail_booking_unit` VALUES ('160', '20', '9', '4200000');
INSERT INTO `detail_booking_unit` VALUES ('161', '22', '15', '5900000');
INSERT INTO `detail_booking_unit` VALUES ('162', '23', '14', '6000000');
INSERT INTO `detail_booking_unit` VALUES ('164', '26', '3', '3600000');
INSERT INTO `detail_booking_unit` VALUES ('165', '46', '8', '10500000');
INSERT INTO `detail_booking_unit` VALUES ('166', '46', '14', '15500000');
INSERT INTO `detail_booking_unit` VALUES ('167', '47', '6', '1600000');
INSERT INTO `detail_booking_unit` VALUES ('168', '48', '9', '1800000');
INSERT INTO `detail_booking_unit` VALUES ('169', '49', '10', '2800000');
INSERT INTO `detail_booking_unit` VALUES ('170', '49', '12', '3000000');
INSERT INTO `detail_booking_unit` VALUES ('171', '49', '13', '3000000');
INSERT INTO `detail_booking_unit` VALUES ('172', '49', '14', '3000000');
INSERT INTO `detail_booking_unit` VALUES ('173', '49', '15', '3000000');
INSERT INTO `detail_booking_unit` VALUES ('174', '49', '16', '3300000');
INSERT INTO `detail_booking_unit` VALUES ('179', '53', '17', '3300000');
INSERT INTO `detail_booking_unit` VALUES ('182', '55', '16', '6500000');
INSERT INTO `detail_booking_unit` VALUES ('183', '56', '11', '2750000');
INSERT INTO `detail_booking_unit` VALUES ('184', '57', '4', '1800000');
INSERT INTO `detail_booking_unit` VALUES ('185', '58', '10', '5600000');
INSERT INTO `detail_booking_unit` VALUES ('186', '58', '11', '5600000');
INSERT INTO `detail_booking_unit` VALUES ('187', '59', '12', '9900000');
INSERT INTO `detail_booking_unit` VALUES ('188', '59', '13', '9900000');
INSERT INTO `detail_booking_unit` VALUES ('189', '59', '14', '9900000');
INSERT INTO `detail_booking_unit` VALUES ('190', '60', '7', '6300000');
INSERT INTO `detail_booking_unit` VALUES ('191', '61', '7', '3500000');
INSERT INTO `detail_booking_unit` VALUES ('192', '62', '7', '1900000');
INSERT INTO `detail_booking_unit` VALUES ('193', '63', '12', '2900000');
INSERT INTO `detail_booking_unit` VALUES ('194', '63', '15', '2900000');
INSERT INTO `detail_booking_unit` VALUES ('195', '63', '13', '2800000');
INSERT INTO `detail_booking_unit` VALUES ('196', '63', '10', '2800000');
INSERT INTO `detail_booking_unit` VALUES ('197', '64', '10', '5500000');
INSERT INTO `detail_booking_unit` VALUES ('198', '65', '13', '6400000');
INSERT INTO `detail_booking_unit` VALUES ('199', '65', '10', '6000000');
INSERT INTO `detail_booking_unit` VALUES ('201', '67', '8', '1950000');
INSERT INTO `detail_booking_unit` VALUES ('202', '68', '19', '3200000');
INSERT INTO `detail_booking_unit` VALUES ('203', '69', '4', '1800000');
INSERT INTO `detail_booking_unit` VALUES ('206', '72', '4', '2400000');
INSERT INTO `detail_booking_unit` VALUES ('208', '74', '6', '1400000');
INSERT INTO `detail_booking_unit` VALUES ('221', '79', '17', '3000000');
INSERT INTO `detail_booking_unit` VALUES ('222', '80', '9', '1700000');
INSERT INTO `detail_booking_unit` VALUES ('223', '81', '17', '9750000');
INSERT INTO `detail_booking_unit` VALUES ('224', '81', '18', '9750000');
INSERT INTO `detail_booking_unit` VALUES ('225', '78', '11', '5400000');
INSERT INTO `detail_booking_unit` VALUES ('226', '82', '12', '3500000');
INSERT INTO `detail_booking_unit` VALUES ('227', '83', '15', '2900000');
INSERT INTO `detail_booking_unit` VALUES ('228', '84', '6', '1400000');
INSERT INTO `detail_booking_unit` VALUES ('229', '85', '9', '750000');
INSERT INTO `detail_booking_unit` VALUES ('230', '86', '19', '10200000');
INSERT INTO `detail_booking_unit` VALUES ('231', '87', '16', '10500000');
INSERT INTO `detail_booking_unit` VALUES ('232', '88', '3', '2100000');
INSERT INTO `detail_booking_unit` VALUES ('233', '89', '11', '2200000');
INSERT INTO `detail_booking_unit` VALUES ('234', '90', '15', '2300000');
INSERT INTO `detail_booking_unit` VALUES ('235', '91', '12', '6000000');
INSERT INTO `detail_booking_unit` VALUES ('236', '92', '11', '5500000');
INSERT INTO `detail_booking_unit` VALUES ('237', '92', '15', '5800000');
INSERT INTO `detail_booking_unit` VALUES ('238', '93', '22', '5400000');
INSERT INTO `detail_booking_unit` VALUES ('241', '95', '4', '1400000');
INSERT INTO `detail_booking_unit` VALUES ('242', '95', '6', '1400000');
INSERT INTO `detail_booking_unit` VALUES ('243', '96', '18', '3600000');
INSERT INTO `detail_booking_unit` VALUES ('244', '97', '1', '2200000');
INSERT INTO `detail_booking_unit` VALUES ('245', '98', '9', '1700000');
INSERT INTO `detail_booking_unit` VALUES ('247', '100', '9', '2600000');
INSERT INTO `detail_booking_unit` VALUES ('248', '101', '14', '3100000');
INSERT INTO `detail_booking_unit` VALUES ('249', '101', '16', '3400000');
INSERT INTO `detail_booking_unit` VALUES ('250', '101', '17', '3400000');
INSERT INTO `detail_booking_unit` VALUES ('251', '101', '18', '3400000');
INSERT INTO `detail_booking_unit` VALUES ('252', '101', '19', '3400000');
INSERT INTO `detail_booking_unit` VALUES ('253', '73', '3', '1800000');
INSERT INTO `detail_booking_unit` VALUES ('256', '102', '19', '3200000');
INSERT INTO `detail_booking_unit` VALUES ('258', '104', '10', '6000000');
INSERT INTO `detail_booking_unit` VALUES ('259', '104', '11', '6000000');
INSERT INTO `detail_booking_unit` VALUES ('260', '104', '18', '6600000');
INSERT INTO `detail_booking_unit` VALUES ('261', '104', '19', '6600000');
INSERT INTO `detail_booking_unit` VALUES ('262', '105', '20', '1000000');
INSERT INTO `detail_booking_unit` VALUES ('264', '107', '10', '8400000');
INSERT INTO `detail_booking_unit` VALUES ('265', '107', '12', '8700000');
INSERT INTO `detail_booking_unit` VALUES ('266', '107', '13', '8700000');
INSERT INTO `detail_booking_unit` VALUES ('267', '107', '14', '9000000');
INSERT INTO `detail_booking_unit` VALUES ('268', '107', '15', '9000000');
INSERT INTO `detail_booking_unit` VALUES ('269', '107', '16', '9900000');
INSERT INTO `detail_booking_unit` VALUES ('294', '114', '11', '2750000');
INSERT INTO `detail_booking_unit` VALUES ('295', '114', '10', '2750000');
INSERT INTO `detail_booking_unit` VALUES ('296', '115', '1', '3500000');
INSERT INTO `detail_booking_unit` VALUES ('297', '116', '14', '2700000');
INSERT INTO `detail_booking_unit` VALUES ('298', '116', '15', '2700000');
INSERT INTO `detail_booking_unit` VALUES ('299', '117', '14', '2600000');
INSERT INTO `detail_booking_unit` VALUES ('300', '118', '14', '3400000');
INSERT INTO `detail_booking_unit` VALUES ('301', '119', '8', '2800000');
INSERT INTO `detail_booking_unit` VALUES ('302', '120', '12', '6600000');
INSERT INTO `detail_booking_unit` VALUES ('305', '94', '1', '1600000');
INSERT INTO `detail_booking_unit` VALUES ('306', '94', '9', '1600000');
INSERT INTO `detail_booking_unit` VALUES ('307', '121', '14', '19200000');
INSERT INTO `detail_booking_unit` VALUES ('311', '123', '17', '10200000');
INSERT INTO `detail_booking_unit` VALUES ('312', '124', '20', '1200000');
INSERT INTO `detail_booking_unit` VALUES ('313', '125', '6', '1700000');
INSERT INTO `detail_booking_unit` VALUES ('314', '125', '7', '1700000');
INSERT INTO `detail_booking_unit` VALUES ('315', '125', '8', '1700000');
INSERT INTO `detail_booking_unit` VALUES ('316', '125', '9', '1700000');
INSERT INTO `detail_booking_unit` VALUES ('317', '125', '4', '1700000');
INSERT INTO `detail_booking_unit` VALUES ('318', '126', '14', '2700000');
INSERT INTO `detail_booking_unit` VALUES ('319', '127', '16', '3400000');
INSERT INTO `detail_booking_unit` VALUES ('320', '127', '17', '3400000');
INSERT INTO `detail_booking_unit` VALUES ('321', '128', '8', '6000000');
INSERT INTO `detail_booking_unit` VALUES ('322', '129', '20', '3300000');
INSERT INTO `detail_booking_unit` VALUES ('323', '129', '17', '1300000');
INSERT INTO `detail_booking_unit` VALUES ('324', '130', '1', '1750000');
INSERT INTO `detail_booking_unit` VALUES ('325', '131', '1', '1750000');
INSERT INTO `detail_booking_unit` VALUES ('326', '66', '10', '2400000');
INSERT INTO `detail_booking_unit` VALUES ('327', '66', '1', '1400000');
INSERT INTO `detail_booking_unit` VALUES ('328', '132', '4', '2400000');
INSERT INTO `detail_booking_unit` VALUES ('329', '133', '18', '3400000');
INSERT INTO `detail_booking_unit` VALUES ('330', '134', '13', '12250000');
INSERT INTO `detail_booking_unit` VALUES ('332', '136', '20', '1200000');
INSERT INTO `detail_booking_unit` VALUES ('333', '137', '26', '4400000');
INSERT INTO `detail_booking_unit` VALUES ('334', '138', '23', '13200000');
INSERT INTO `detail_booking_unit` VALUES ('335', '139', '11', '3000000');
INSERT INTO `detail_booking_unit` VALUES ('336', '140', '12', '8700000');
INSERT INTO `detail_booking_unit` VALUES ('337', '140', '13', '8700000');
INSERT INTO `detail_booking_unit` VALUES ('338', '140', '14', '9000000');
INSERT INTO `detail_booking_unit` VALUES ('339', '140', '15', '9000000');
INSERT INTO `detail_booking_unit` VALUES ('340', '140', '16', '9900000');
INSERT INTO `detail_booking_unit` VALUES ('341', '140', '17', '9900000');
INSERT INTO `detail_booking_unit` VALUES ('342', '140', '18', '9900000');
INSERT INTO `detail_booking_unit` VALUES ('343', '140', '9', '6300000');
INSERT INTO `detail_booking_unit` VALUES ('344', '141', '7', '4900000');
INSERT INTO `detail_booking_unit` VALUES ('345', '142', '22', '4500000');
INSERT INTO `detail_booking_unit` VALUES ('346', '143', '25', '1700000');
INSERT INTO `detail_booking_unit` VALUES ('347', '144', '11', '2300000');
INSERT INTO `detail_booking_unit` VALUES ('349', '146', '19', '3300000');
INSERT INTO `detail_booking_unit` VALUES ('350', '147', '1', '1450000');
INSERT INTO `detail_booking_unit` VALUES ('351', '147', '6', '1450000');
INSERT INTO `detail_booking_unit` VALUES ('352', '147', '25', '1450000');
INSERT INTO `detail_booking_unit` VALUES ('353', '147', '26', '1450000');
INSERT INTO `detail_booking_unit` VALUES ('354', '147', '24', '1450000');
INSERT INTO `detail_booking_unit` VALUES ('355', '148', '11', '2800000');
INSERT INTO `detail_booking_unit` VALUES ('356', '149', '10', '3800000');
INSERT INTO `detail_booking_unit` VALUES ('357', '99', '18', '6800000');
INSERT INTO `detail_booking_unit` VALUES ('359', '150', '14', '9000000');
INSERT INTO `detail_booking_unit` VALUES ('360', '150', '15', '9000000');
INSERT INTO `detail_booking_unit` VALUES ('361', '150', '12', '8700000');
INSERT INTO `detail_booking_unit` VALUES ('362', '151', '1', '1400000');
INSERT INTO `detail_booking_unit` VALUES ('363', '122', '10', '2700000');
INSERT INTO `detail_booking_unit` VALUES ('364', '122', '23', '5400000');
INSERT INTO `detail_booking_unit` VALUES ('366', '152', '20', '1000000');
INSERT INTO `detail_booking_unit` VALUES ('368', '154', '26', '4600000');
INSERT INTO `detail_booking_unit` VALUES ('369', '111', '12', '3200000');
INSERT INTO `detail_booking_unit` VALUES ('370', '111', '15', '3200000');
INSERT INTO `detail_booking_unit` VALUES ('371', '111', '16', '3500000');
INSERT INTO `detail_booking_unit` VALUES ('372', '111', '17', '3500000');
INSERT INTO `detail_booking_unit` VALUES ('373', '111', '18', '3500000');
INSERT INTO `detail_booking_unit` VALUES ('374', '111', '13', '3200000');
INSERT INTO `detail_booking_unit` VALUES ('385', '156', '10', '6000000');
INSERT INTO `detail_booking_unit` VALUES ('386', '156', '11', '6000000');
INSERT INTO `detail_booking_unit` VALUES ('387', '156', '13', '6000000');
INSERT INTO `detail_booking_unit` VALUES ('388', '156', '7', '4000000');
INSERT INTO `detail_booking_unit` VALUES ('389', '54', '10', '3200000');
INSERT INTO `detail_booking_unit` VALUES ('390', '54', '12', '3200000');
INSERT INTO `detail_booking_unit` VALUES ('391', '112', '12', '6500000');
INSERT INTO `detail_booking_unit` VALUES ('392', '112', '15', '6500000');
INSERT INTO `detail_booking_unit` VALUES ('393', '112', '16', '7000000');
INSERT INTO `detail_booking_unit` VALUES ('394', '112', '17', '7000000');
INSERT INTO `detail_booking_unit` VALUES ('395', '112', '18', '7000000');
INSERT INTO `detail_booking_unit` VALUES ('396', '112', '13', '6500000');
INSERT INTO `detail_booking_unit` VALUES ('397', '157', '14', '6000000');
INSERT INTO `detail_booking_unit` VALUES ('398', '157', '15', '6000000');
INSERT INTO `detail_booking_unit` VALUES ('399', '157', '26', '4400000');
INSERT INTO `detail_booking_unit` VALUES ('400', '158', '16', '7800000');
INSERT INTO `detail_booking_unit` VALUES ('401', '159', '17', '3000000');
INSERT INTO `detail_booking_unit` VALUES ('405', '155', '6', '1500000');
INSERT INTO `detail_booking_unit` VALUES ('408', '161', '14', '3200000');
INSERT INTO `detail_booking_unit` VALUES ('411', '162', '12', '3000000');
INSERT INTO `detail_booking_unit` VALUES ('412', '162', '10', '2800000');
INSERT INTO `detail_booking_unit` VALUES ('413', '51', '11', '2500000');
INSERT INTO `detail_booking_unit` VALUES ('414', '163', '20', '850000');
INSERT INTO `detail_booking_unit` VALUES ('415', '37', '8', '1600000');
INSERT INTO `detail_booking_unit` VALUES ('416', '37', '6', '1600000');
INSERT INTO `detail_booking_unit` VALUES ('417', '164', '7', '10000000');
INSERT INTO `detail_booking_unit` VALUES ('418', '70', '10', '2600000');
INSERT INTO `detail_booking_unit` VALUES ('419', '70', '20', '1100000');
INSERT INTO `detail_booking_unit` VALUES ('420', '165', '19', '2400000');
INSERT INTO `detail_booking_unit` VALUES ('424', '135', '18', '3400000');
INSERT INTO `detail_booking_unit` VALUES ('425', '52', '8', '1800000');
INSERT INTO `detail_booking_unit` VALUES ('426', '167', '1', '1400000');
INSERT INTO `detail_booking_unit` VALUES ('428', '108', '7', '1750000');
INSERT INTO `detail_booking_unit` VALUES ('429', '168', '20', '3200000');
INSERT INTO `detail_booking_unit` VALUES ('432', '113', '14', '18000000');
INSERT INTO `detail_booking_unit` VALUES ('433', '113', '15', '18000000');
INSERT INTO `detail_booking_unit` VALUES ('434', '113', '12', '18000000');
INSERT INTO `detail_booking_unit` VALUES ('435', '169', '11', '2900000');
INSERT INTO `detail_booking_unit` VALUES ('436', '170', '19', '6600000');
INSERT INTO `detail_booking_unit` VALUES ('437', '171', '11', '2750000');
INSERT INTO `detail_booking_unit` VALUES ('439', '77', '8', '1800000');
INSERT INTO `detail_booking_unit` VALUES ('440', '77', '7', '1800000');
INSERT INTO `detail_booking_unit` VALUES ('442', '103', '17', '3200000');
INSERT INTO `detail_booking_unit` VALUES ('443', '172', '25', '2400000');
INSERT INTO `detail_booking_unit` VALUES ('444', '145', '13', '3000000');
INSERT INTO `detail_booking_unit` VALUES ('445', '173', '26', '2200000');
INSERT INTO `detail_booking_unit` VALUES ('446', '174', '15', '3000000');
INSERT INTO `detail_booking_unit` VALUES ('447', '106', '16', '3300000');
INSERT INTO `detail_booking_unit` VALUES ('449', '176', '16', '25000000');
INSERT INTO `detail_booking_unit` VALUES ('450', '177', '16', '12300000');
INSERT INTO `detail_booking_unit` VALUES ('451', '178', '11', '5500000');
INSERT INTO `detail_booking_unit` VALUES ('455', '179', '26', '6300000');
INSERT INTO `detail_booking_unit` VALUES ('456', '179', '14', '8900000');
INSERT INTO `detail_booking_unit` VALUES ('459', '181', '6', '1800000');
INSERT INTO `detail_booking_unit` VALUES ('460', '182', '1', '1700000');
INSERT INTO `detail_booking_unit` VALUES ('461', '182', '26', '1700000');
INSERT INTO `detail_booking_unit` VALUES ('462', '182', '6', '3400000');
INSERT INTO `detail_booking_unit` VALUES ('463', '182', '8', '1700000');
INSERT INTO `detail_booking_unit` VALUES ('464', '183', '20', '1000000');
INSERT INTO `detail_booking_unit` VALUES ('465', '184', '25', '1700000');
INSERT INTO `detail_booking_unit` VALUES ('468', '110', '12', '3200000');
INSERT INTO `detail_booking_unit` VALUES ('469', '166', '1', '2600000');
INSERT INTO `detail_booking_unit` VALUES ('470', '166', '6', '2700000');
INSERT INTO `detail_booking_unit` VALUES ('471', '186', '12', '3000000');
INSERT INTO `detail_booking_unit` VALUES ('472', '187', '27', '5600000');
INSERT INTO `detail_booking_unit` VALUES ('477', '188', '8', '1500000');
INSERT INTO `detail_booking_unit` VALUES ('478', '175', '7', '1800000');
INSERT INTO `detail_booking_unit` VALUES ('479', '76', '17', '3200000');
INSERT INTO `detail_booking_unit` VALUES ('480', '76', '18', '3200000');
INSERT INTO `detail_booking_unit` VALUES ('481', '189', '7', '4000000');
INSERT INTO `detail_booking_unit` VALUES ('482', '160', '20', '1200000');
INSERT INTO `detail_booking_unit` VALUES ('483', '190', '1', '5400000');
INSERT INTO `detail_booking_unit` VALUES ('484', '180', '9', '1600000');
INSERT INTO `detail_booking_unit` VALUES ('485', '75', '10', '3800000');
INSERT INTO `detail_booking_unit` VALUES ('486', '75', '11', '3800000');
INSERT INTO `detail_booking_unit` VALUES ('487', '75', '12', '3800000');
INSERT INTO `detail_booking_unit` VALUES ('488', '75', '15', '3800000');
INSERT INTO `detail_booking_unit` VALUES ('489', '185', '8', '4400000');
INSERT INTO `detail_booking_unit` VALUES ('490', '185', '13', '6000000');
INSERT INTO `detail_booking_unit` VALUES ('491', '191', '19', '3300000');
INSERT INTO `detail_booking_unit` VALUES ('492', '192', '11', '2900000');
INSERT INTO `detail_booking_unit` VALUES ('493', '192', '10', '2900000');
INSERT INTO `detail_booking_unit` VALUES ('494', '193', '1', '0');

-- ----------------------------
-- Table structure for `detail_pembelian`
-- ----------------------------
DROP TABLE IF EXISTS `detail_pembelian`;
CREATE TABLE `detail_pembelian` (
  `id_pembelian_sparepart` int(10) NOT NULL AUTO_INCREMENT,
  `id_faktur_pembelian` varchar(20) DEFAULT NULL,
  `id_sparepart` varchar(10) DEFAULT NULL,
  `jumlah` varchar(10) DEFAULT NULL,
  `harga_satuan` varchar(20) DEFAULT NULL,
  `total` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_pembelian_sparepart`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of detail_pembelian
-- ----------------------------
INSERT INTO `detail_pembelian` VALUES ('9', '0294470', '11', '4', '35000', '140000');
INSERT INTO `detail_pembelian` VALUES ('10', '0294470', '12', '4', '40000', '160000');
INSERT INTO `detail_pembelian` VALUES ('11', '0294470', '13', '10', '3000', '30000');
INSERT INTO `detail_pembelian` VALUES ('12', '0294470', '14', '2', '65000', '130000');
INSERT INTO `detail_pembelian` VALUES ('13', '0294470', '15', '2', '35000', '70000');
INSERT INTO `detail_pembelian` VALUES ('14', '0294470', '16', '2', '175000', '350000');
INSERT INTO `detail_pembelian` VALUES ('16', '029625', '21', '1', '185000', '185000');
INSERT INTO `detail_pembelian` VALUES ('17', '029625', '9', '2', '35000', '70000');
INSERT INTO `detail_pembelian` VALUES ('18', '029628', '22', '4', '65000', '260000');
INSERT INTO `detail_pembelian` VALUES ('19', '029628', '23', '4', '45000', '180000');
INSERT INTO `detail_pembelian` VALUES ('20', '029628', '24', '4', '35000', '140000');
INSERT INTO `detail_pembelian` VALUES ('21', '029628', '25', '2', '65000', '130000');
INSERT INTO `detail_pembelian` VALUES ('22', '029628', '26', '1', '75000', '75000');
INSERT INTO `detail_pembelian` VALUES ('23', '029628', '34', '2', '95000', '190000');
INSERT INTO `detail_pembelian` VALUES ('24', '029709', '27', '1', '2650000', '2650000');
INSERT INTO `detail_pembelian` VALUES ('25', '029709', '28', '1', '1050000', '1050000');
INSERT INTO `detail_pembelian` VALUES ('26', '029709', '29', '1', '285000', '285000');
INSERT INTO `detail_pembelian` VALUES ('27', '029709', '30', '1', '425000', '425000');
INSERT INTO `detail_pembelian` VALUES ('28', '029709', '31', '1', '75000', '75000');
INSERT INTO `detail_pembelian` VALUES ('29', '029709', '35', '2', '25000', '50000');
INSERT INTO `detail_pembelian` VALUES ('30', '029709', '36', '1', '15000', '15000');
INSERT INTO `detail_pembelian` VALUES ('31', '029759', '17', '2', '518670', '1037340');
INSERT INTO `detail_pembelian` VALUES ('32', '029759', '32', '2', '90000', '180000');
INSERT INTO `detail_pembelian` VALUES ('33', '029759', '33', '2', '40000', '80000');
INSERT INTO `detail_pembelian` VALUES ('34', '029759', '18', '2', '275000', '550000');
INSERT INTO `detail_pembelian` VALUES ('35', '9231', '38', '1', '340000', '340000');
INSERT INTO `detail_pembelian` VALUES ('36', '9231', '39', '2', '45000', '90000');
INSERT INTO `detail_pembelian` VALUES ('37', '9231', '40', '4', '5000', '20000');
INSERT INTO `detail_pembelian` VALUES ('38', '9241', '41', '1', '285000', '285000');
INSERT INTO `detail_pembelian` VALUES ('39', '9241', '42', '2', '45000', '90000');
INSERT INTO `detail_pembelian` VALUES ('40', '9241', '43', '1', '25000', '25000');
INSERT INTO `detail_pembelian` VALUES ('41', '101', '44', '1', '1991000', '1991000');
INSERT INTO `detail_pembelian` VALUES ('42', '103', '44', '2', '1991000', '3982000');

-- ----------------------------
-- Table structure for `faktur_pembelian`
-- ----------------------------
DROP TABLE IF EXISTS `faktur_pembelian`;
CREATE TABLE `faktur_pembelian` (
  `id_faktur_pembelian` varchar(20) NOT NULL,
  `id_supplier` varchar(10) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  PRIMARY KEY (`id_faktur_pembelian`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of faktur_pembelian
-- ----------------------------
INSERT INTO `faktur_pembelian` VALUES ('001', '5', '2018-01-16');
INSERT INTO `faktur_pembelian` VALUES ('00142', '8', '2018-01-05');
INSERT INTO `faktur_pembelian` VALUES ('00781', '8', '2018-01-19');
INSERT INTO `faktur_pembelian` VALUES ('029425', '2', '2018-01-02');
INSERT INTO `faktur_pembelian` VALUES ('0294470', '2', '2018-01-04');
INSERT INTO `faktur_pembelian` VALUES ('029625', '2', '2018-01-11');
INSERT INTO `faktur_pembelian` VALUES ('029628', '2', '2018-01-12');
INSERT INTO `faktur_pembelian` VALUES ('029709', '2', '2018-01-16');
INSERT INTO `faktur_pembelian` VALUES ('029759', '2', '2018-01-19');
INSERT INTO `faktur_pembelian` VALUES ('101', '7', '2018-01-12');
INSERT INTO `faktur_pembelian` VALUES ('102', '7', '2018-01-17');
INSERT INTO `faktur_pembelian` VALUES ('103', '7', '2018-01-22');
INSERT INTO `faktur_pembelian` VALUES ('9231', '3', '2018-01-09');
INSERT INTO `faktur_pembelian` VALUES ('9241', '3', '2018-01-10');

-- ----------------------------
-- Table structure for `kategori_pengeluaran`
-- ----------------------------
DROP TABLE IF EXISTS `kategori_pengeluaran`;
CREATE TABLE `kategori_pengeluaran` (
  `id_kategori_pengeluaran` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_kategori_pengeluaran`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kategori_pengeluaran
-- ----------------------------
INSERT INTO `kategori_pengeluaran` VALUES ('1', 'Op');
INSERT INTO `kategori_pengeluaran` VALUES ('3', 'Giro');
INSERT INTO `kategori_pengeluaran` VALUES ('4', 'Hutang');
INSERT INTO `kategori_pengeluaran` VALUES ('5', 'Bus');
INSERT INTO `kategori_pengeluaran` VALUES ('6', 'Gaji');
INSERT INTO `kategori_pengeluaran` VALUES ('7', 'Kartu kredit');
INSERT INTO `kategori_pengeluaran` VALUES ('8', 'utang');
INSERT INTO `kategori_pengeluaran` VALUES ('9', 'Komisi');
INSERT INTO `kategori_pengeluaran` VALUES ('10', 'Lain-lain');
INSERT INTO `kategori_pengeluaran` VALUES ('11', 'Od');
INSERT INTO `kategori_pengeluaran` VALUES ('12', 'Pk');
INSERT INTO `kategori_pengeluaran` VALUES ('13', 'Pr');
INSERT INTO `kategori_pengeluaran` VALUES ('15', 'tt');

-- ----------------------------
-- Table structure for `marketing`
-- ----------------------------
DROP TABLE IF EXISTS `marketing`;
CREATE TABLE `marketing` (
  `id_marketing` varchar(255) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `warna` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_marketing`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of marketing
-- ----------------------------
INSERT INTO `marketing` VALUES ('AB', 'ABUNG HENDRAYANA', '#0000ff');
INSERT INTO `marketing` VALUES ('CK', 'CUCU KURNIA', '#0000ff');
INSERT INTO `marketing` VALUES ('IY', 'IYOS', '#ff0000');
INSERT INTO `marketing` VALUES ('WA', 'ACENG', '#ff0000');

-- ----------------------------
-- Table structure for `pegawai`
-- ----------------------------
DROP TABLE IF EXISTS `pegawai`;
CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL AUTO_INCREMENT,
  `nip` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_pegawai`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pegawai
-- ----------------------------
INSERT INTO `pegawai` VALUES ('3', null, 'Komar');
INSERT INTO `pegawai` VALUES ('4', null, 'Udin');
INSERT INTO `pegawai` VALUES ('6', null, 'caca');
INSERT INTO `pegawai` VALUES ('55', null, 'Amung');
INSERT INTO `pegawai` VALUES ('58', null, 'ade');

-- ----------------------------
-- Table structure for `pemakaian_sparepart`
-- ----------------------------
DROP TABLE IF EXISTS `pemakaian_sparepart`;
CREATE TABLE `pemakaian_sparepart` (
  `id_pemakaian_sparepart` int(10) NOT NULL AUTO_INCREMENT,
  `id_sparepart` varchar(10) DEFAULT NULL,
  `jumlah` varchar(100) DEFAULT NULL,
  `id_unit` varchar(10) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  PRIMARY KEY (`id_pemakaian_sparepart`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pemakaian_sparepart
-- ----------------------------
INSERT INTO `pemakaian_sparepart` VALUES ('1', '18', '0.5', '1', '2018-01-02');
INSERT INTO `pemakaian_sparepart` VALUES ('3', '20', '2', '10', '2018-01-02');
INSERT INTO `pemakaian_sparepart` VALUES ('5', '7', '2', '16', '2018-01-02');
INSERT INTO `pemakaian_sparepart` VALUES ('6', '16', '2', '12', '2018-01-04');
INSERT INTO `pemakaian_sparepart` VALUES ('7', '21', '1', '10', '2018-01-11');
INSERT INTO `pemakaian_sparepart` VALUES ('8', '9', '2', '10', '2018-01-11');
INSERT INTO `pemakaian_sparepart` VALUES ('9', '26', '1', '6', '2018-01-12');
INSERT INTO `pemakaian_sparepart` VALUES ('10', '34', '2', '6', '2018-01-12');
INSERT INTO `pemakaian_sparepart` VALUES ('11', '27', '1', '6', '2018-01-16');
INSERT INTO `pemakaian_sparepart` VALUES ('12', '28', '1', '6', '2018-01-16');
INSERT INTO `pemakaian_sparepart` VALUES ('13', '29', '1', '6', '2018-01-16');
INSERT INTO `pemakaian_sparepart` VALUES ('14', '30', '1', '6', '2018-01-16');
INSERT INTO `pemakaian_sparepart` VALUES ('15', '31', '1', '6', '2018-01-16');
INSERT INTO `pemakaian_sparepart` VALUES ('16', '35', '2', '6', '2018-01-16');
INSERT INTO `pemakaian_sparepart` VALUES ('17', '36', '1', '6', '2018-01-16');
INSERT INTO `pemakaian_sparepart` VALUES ('18', '38', '1', '1', '2018-01-09');
INSERT INTO `pemakaian_sparepart` VALUES ('19', '39', '2', '1', '2018-01-09');
INSERT INTO `pemakaian_sparepart` VALUES ('20', '40', '4', '1', '2018-01-09');
INSERT INTO `pemakaian_sparepart` VALUES ('21', '38', '1', '1', '2018-01-09');
INSERT INTO `pemakaian_sparepart` VALUES ('22', '41', '1', '3', '0000-00-00');
INSERT INTO `pemakaian_sparepart` VALUES ('23', '42', '2', '3', '2018-01-10');
INSERT INTO `pemakaian_sparepart` VALUES ('24', '43', '1', '3', '2018-01-10');
INSERT INTO `pemakaian_sparepart` VALUES ('25', '41', '1', '3', '2018-01-10');
INSERT INTO `pemakaian_sparepart` VALUES ('26', '42', '2', '3', '2018-01-10');
INSERT INTO `pemakaian_sparepart` VALUES ('27', '44', '1', '11', '2018-01-12');
INSERT INTO `pemakaian_sparepart` VALUES ('28', '45', '2', '12', '2018-01-17');
INSERT INTO `pemakaian_sparepart` VALUES ('29', '46', '2', '13', '2018-01-18');
INSERT INTO `pemakaian_sparepart` VALUES ('30', '46', '4', '27', '2018-01-19');
INSERT INTO `pemakaian_sparepart` VALUES ('31', '44', '2', '13', '2018-01-22');

-- ----------------------------
-- Table structure for `pembayaran`
-- ----------------------------
DROP TABLE IF EXISTS `pembayaran`;
CREATE TABLE `pembayaran` (
  `id_pembayaran` int(10) NOT NULL,
  `id_booking` int(11) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `untuk` varchar(200) DEFAULT NULL,
  `jumlah` varchar(20) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `sisa` varchar(20) DEFAULT NULL,
  `id_marketing` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_pembayaran`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pembayaran
-- ----------------------------
INSERT INTO `pembayaran` VALUES ('0', '1', 'yadi', 'sewa bus 31 seat', '1800000', '2018-01-05', 'LUNAS', '0', 'WA');
INSERT INTO `pembayaran` VALUES ('1', '3', 'xtrans', 'sewa bus medium', '6800000', '2018-01-05', 'LUNAS', '0', 'AB');
INSERT INTO `pembayaran` VALUES ('2', '4', 'yeta tour', 'sewa bus 29 seat', '2300000', '2018-01-05', 'LUNAS', '0', 'CK');
INSERT INTO `pembayaran` VALUES ('3', '5', 'yayan', 'sewa big bus', '19000000', '2018-01-05', 'LUNAS', '0', 'AB');
INSERT INTO `pembayaran` VALUES ('4', '6', 'widi', 'sewa bus 31 seat', '2000000', '2018-01-05', 'LUNAS', '0', 'CK');
INSERT INTO `pembayaran` VALUES ('5', '7', 'sd abdinegara', 'sewa bus 31 seat', '1500000', '2018-01-05', 'LUNAS', '0', 'CK');
INSERT INTO `pembayaran` VALUES ('6', '8', 'deden', 'sewa bus 31 seat', '2200000', '2018-01-05', 'LUNAS', '0', 'CK');
INSERT INTO `pembayaran` VALUES ('7', '9', '', '', '0', '2018-01-05', null, '3000000', 'AB');
INSERT INTO `pembayaran` VALUES ('8', '10', 'xtrans', 'sewa medium bus', '3400000', '2018-01-05', 'LUNAS', '0', 'AB');
INSERT INTO `pembayaran` VALUES ('9', '11', 'bangbang', 'sewa elf', '700000', '2018-01-05', 'LUNAS', '0', 'AB');
INSERT INTO `pembayaran` VALUES ('10', '12', 'hj.yoyoh', 'sewa bus 59 seat', '6000000', '2018-01-06', 'LUNAS', '0', 'IY');
INSERT INTO `pembayaran` VALUES ('11', '13', 'yayan', 'sewa bus 52 seat 1 unit', '16500000', '2018-01-06', 'LUNAS', '0', 'AB');
INSERT INTO `pembayaran` VALUES ('12', '14', 'bapak rahmat', 'sewa bus 59 seat 1 unit', '5500000', '2018-01-06', 'LUNAS', '0', 'AB');
INSERT INTO `pembayaran` VALUES ('13', '15', 'deni sopir', 'sewa bus 3 unit 52 seat dan 1 unit 31 seat', '21600000', '2018-01-06', 'LUNAS', '0', 'IY');
INSERT INTO `pembayaran` VALUES ('14', '16', 'iceu', 'sewa bus 1 unit 31 seat', '1800000', '2018-01-06', 'LUNAS', '0', 'AB');
INSERT INTO `pembayaran` VALUES ('15', '17', 'bayu', 'sewa bus shd 3 unit', '10200000', '2018-01-08', 'LUNAS', '0', 'AB');
INSERT INTO `pembayaran` VALUES ('16', '18', 'agung', 'sewa bus medium 1 unit', '1800000', '2018-01-08', 'LUNAS', '0', 'WA');
INSERT INTO `pembayaran` VALUES ('17', '19', 'asmul', 'sewa bus shd 1 unit', '9900000', '2018-01-08', 'LUNAS', '0', 'IY');
INSERT INTO `pembayaran` VALUES ('18', '20', 'irvan', 'sewa bus medium 1 unit', '4200000', '2018-01-08', 'LUNAS', '0', 'CK');
INSERT INTO `pembayaran` VALUES ('19', '21', 'BISMA', 'SEWA HIACE', '0', '2018-01-08', null, '1350000', 'AB');
INSERT INTO `pembayaran` VALUES ('20', '22', 'NUR FAUZI AJIZ', 'SEWA BIG BUS 1 UNIT', '5900000', '2018-01-08', 'LUNAS', '0', 'AB');
INSERT INTO `pembayaran` VALUES ('21', '23', 'HAMZAH', 'SEWA BIG BUS 1 UNIT', '6000000', '2018-01-08', 'LUNAS', '0', 'IY');
INSERT INTO `pembayaran` VALUES ('22', '24', 'SITI HANIFAH', 'SEWA BIG BUS 1 UNIT', '2800000', '2018-01-08', 'LUNAS', '0', 'AB');
INSERT INTO `pembayaran` VALUES ('23', '25', 'BP. ANYEP', 'SEWA BIG BUS 1 UNIT', '2300000', '2018-01-08', 'LUNAS', '0', 'WA');
INSERT INTO `pembayaran` VALUES ('24', '26', 'IBU LINA', 'SEWA BUS MEDIUM 1 UNIT', '3600000', '2018-01-08', 'LUNAS', '0', 'CK');
INSERT INTO `pembayaran` VALUES ('25', '27', 'GIENDA', 'SEWA BUS SHD', '3400000', '2018-01-08', 'LUNAS', '0', 'IY');
INSERT INTO `pembayaran` VALUES ('26', '28', 'BP DEDI', 'SEWA BIG BUS 1 UNIT', '5600000', '2018-01-08', 'LUNAS', '0', 'AB');
INSERT INTO `pembayaran` VALUES ('27', '29', 'YADI', 'SEWA BIG BUS 1 UNIT', '2600000', '2018-01-08', 'LUNAS', '0', 'WA');
INSERT INTO `pembayaran` VALUES ('28', '30', 'BANGBANG', 'SEWA ELF 1 UNIT', '700000', '2018-01-08', 'LUNAS', '0', 'IY');
INSERT INTO `pembayaran` VALUES ('29', '31', 'IBU LIA', 'SEWA BUS MEDIUM 1 UNIT', '1400000', '2018-01-08', 'LUNAS', '0', 'AB');
INSERT INTO `pembayaran` VALUES ('30', '32', 'ASEP MULYADI', 'SEWA BIG BUS 3 UNIT', '9600000', '2018-01-08', 'LUNAS', '0', 'IY');
INSERT INTO `pembayaran` VALUES ('31', '33', 'MIRNA', 'SEWA BUS MEDIUM 1 UNIT', '1700000', '2018-01-08', 'LUNAS', '0', 'IY');
INSERT INTO `pembayaran` VALUES ('32', '34', 'ANTONIUS', 'SEWA BUS SHD 1 UNIT', '3400000', '2018-01-08', 'LUNAS', '0', 'AB');
INSERT INTO `pembayaran` VALUES ('33', '35', 'LETI', 'SEWA BUS SHD 1 UNIT', '3400000', '2018-01-08', 'LUNAS', '0', 'IY');
INSERT INTO `pembayaran` VALUES ('34', '36', 'BP. CUCU', 'SEWA ELF', '1200000', '2018-01-08', 'LUNAS', '0', 'WA');
INSERT INTO `pembayaran` VALUES ('35', '37', 'PA DEDEN', 'SEWA BUS MEDIUM 2 UNIT', '0', '2018-01-08', null, '4200000', 'CK');
INSERT INTO `pembayaran` VALUES ('36', '38', 'IBU DEDEH', 'SEWA BUS MEDIUM 1 UNIT', '1550000', '2018-01-08', 'LUNAS', '0', 'WA');
INSERT INTO `pembayaran` VALUES ('37', '39', 'YENI', 'SEWA BUS MEDIUM + DEM', '3400000', '2018-01-08', 'LUNAS', '0', 'WA');
INSERT INTO `pembayaran` VALUES ('38', '40', 'ANDREAS', 'SEWA BUS SHD ', '3400000', '2018-01-08', 'LUNAS', '0', 'AB');
INSERT INTO `pembayaran` VALUES ('39', '41', 'AHMAD', 'SEWA BUS SHD', '3400000', '2018-01-08', 'LUNAS', '0', 'IY');
INSERT INTO `pembayaran` VALUES ('40', '42', 'AKONG', 'SEWA BUS MEDIUM', '1800000', '2018-01-08', 'LUNAS', '0', 'AB');
INSERT INTO `pembayaran` VALUES ('41', '43', 'BP. IYUS', 'SEWA BIG BUS', '3000000', '2018-01-08', 'LUNAS', '0', 'IY');
INSERT INTO `pembayaran` VALUES ('42', '44', 'XTRANS', 'SEWA MEDIUM BUS', '0', '2018-01-08', null, '3400000', 'AB');
INSERT INTO `pembayaran` VALUES ('43', '45', 'XTRANS', 'SEWA MEDIUM BUS', '0', '2018-01-08', null, '1700000', 'AB');
INSERT INTO `pembayaran` VALUES ('44', '46', '', 'PANJI', '26000000', '2018-01-09', 'LUNAS', '0', 'IY');
INSERT INTO `pembayaran` VALUES ('45', '47', 'DEBBI', 'SEWA BUS 29 SEAT 1 UNIT', '1600000', '2018-01-09', 'LUNAS', '0', 'CK');
INSERT INTO `pembayaran` VALUES ('46', '48', 'ABET', 'SEWA BUS 31 SEAT 1 UNIT', '1800000', '2018-01-09', 'LUNAS', '0', 'CK');
INSERT INTO `pembayaran` VALUES ('47', '49', 'TENDI SOPIYAN', 'SEWA BIG BUS 6 UNIT/ BCA 9/1', '1000000', '2018-01-10', 'DP1', '17100000', 'IY');
INSERT INTO `pembayaran` VALUES ('49', '51', 'BP. SANI', 'SEWA BIG  BUS 1 UNIT', '500000', '2018-01-02', 'DP1', '2000000', '');
INSERT INTO `pembayaran` VALUES ('50', '52', 'BP. IYOS', 'SEWA BUS MEDIUM 1 UNIT', '500000', '2018-01-02', 'DP1', '1300000', 'IY');
INSERT INTO `pembayaran` VALUES ('51', '53', 'BP. DIDIN', 'SEWA BUS SHD 1 UNIT', '800000', '2018-01-04', 'DP1', '2500000', 'IY');
INSERT INTO `pembayaran` VALUES ('52', '54', 'BP. DADAN', 'SEWA BIG BUS 1 UNIT', '2000000', '2018-01-05', 'DP1', '1200000', 'WA');
INSERT INTO `pembayaran` VALUES ('53', '55', 'PA DEDEN SOREANG', 'SEWA BUS SHD 1 UNIT', '6500000', '2018-01-10', 'LUNAS', '0', 'AB');
INSERT INTO `pembayaran` VALUES ('54', '56', 'IBU YULIU', 'SEWA BUS 59 SEAT 1 UNIT', '2750000', '2018-01-07', 'LUNAS', '0', 'WA');
INSERT INTO `pembayaran` VALUES ('55', '57', 'BP. TRI HARTATO', 'SEWA MEDIUM BUS 1 UNIT', '500000', '2018-01-08', 'DP1', '1300000', 'IY');
INSERT INTO `pembayaran` VALUES ('56', '58', 'BP. AGUS TAUPIK', 'SEWA 2 UNIT BUS 59 SEAT', '1000000', '2018-01-08', 'DP1', '10200000', 'IY');
INSERT INTO `pembayaran` VALUES ('57', '59', 'HAMZAH', 'SEWA BUS 48 SEAT 3 UNIT', '4000000', '2018-01-08', 'DP1', '25700000', 'IY');
INSERT INTO `pembayaran` VALUES ('58', '60', 'REKSA', 'SEWA BUS MEDIUM 1 UNIT', '6300000', '2018-01-08', 'LUNAS', '0', 'IY');
INSERT INTO `pembayaran` VALUES ('59', '61', 'IBU NENI', 'SEWA BUS MEDIUM 1 UNIT', '500000', '2018-01-09', 'DP1', '3000000', 'IY');
INSERT INTO `pembayaran` VALUES ('60', '62', 'BP. SANTO', 'SEWA MEDIUM BUS 1 UNIT', '1900000', '2018-01-09', 'LUNAS', '0', 'IY');
INSERT INTO `pembayaran` VALUES ('61', '63', 'IBU MILA', 'SEWA 4 UNIT BIG BUS', '11400000', '2018-01-09', 'LUNAS', '0', 'IY');
INSERT INTO `pembayaran` VALUES ('62', '64', 'RIAN', 'SEWA BUS 59 SEAT 1 UNIT', '1000000', '2018-01-09', 'DP1', '4500000', 'WA');
INSERT INTO `pembayaran` VALUES ('63', '65', 'BP. PANDI', 'SEWA BIG BUS 2 UNIT', '12400000', '2018-01-10', 'LUNAS', '0', 'WA');
INSERT INTO `pembayaran` VALUES ('64', '66', 'IBU NIA', 'SEWA BUS 59 SEAT 1 UNIT', '500000', '2018-01-10', 'DP1', '2000000', 'IY');
INSERT INTO `pembayaran` VALUES ('65', '67', 'IBU ALI', 'SEWA MEDIUM BUS 1 UNIT', '1000000', '2018-01-10', 'DP1', '950000', 'AB');
INSERT INTO `pembayaran` VALUES ('66', '68', 'IBU ALI ', 'SEWA BUS SHD 1 UNIT', '1000000', '2018-01-10', 'DP1', '2200000', 'AB');
INSERT INTO `pembayaran` VALUES ('67', '69', 'AGUNG', 'SEWA BUS MEDIUM', '1800000', '2018-01-10', 'LUNAS', '0', 'WA');
INSERT INTO `pembayaran` VALUES ('69', '70', 'BP. IWAN', 'SEWA BUS 59 SEAT 1 UNIT', '500000', '2018-01-10', 'DP1', '2100000', 'WA');
INSERT INTO `pembayaran` VALUES ('70', '73', 'YADI ', 'SEWA MEDIUM BUS', '200000', '2018-01-10', 'DP1', '1600000', 'WA');
INSERT INTO `pembayaran` VALUES ('71', '73', 'YADI ', 'SEWA MEDIUM BUS 1 UNIT', '1600000', '2018-01-11', 'LUNAS', '0', 'WA');
INSERT INTO `pembayaran` VALUES ('72', '74', 'IBU HABIBAH', 'SEWA BUS MEDIUM 1 UNIT', '1400000', '2018-01-10', 'LUNAS', '0', 'AB');
INSERT INTO `pembayaran` VALUES ('73', '45', 'XTRANS', 'SEWA BUS MEDIUM', '1700000', '2018-01-11', 'LUNAS', '0', 'AB');
INSERT INTO `pembayaran` VALUES ('74', '44', 'XTRANS', 'SEWA BUS MEDIUM', '3400000', '2018-01-11', 'LUNAS', '0', 'AB');
INSERT INTO `pembayaran` VALUES ('75', '75', 'LULU', 'SEWA 4 UNIT BIG BUS', '5000000', '2018-01-11', 'DP1', '10200000', 'IY');
INSERT INTO `pembayaran` VALUES ('76', '76', 'IBU ELI HERLINA', 'SEWA 2 UNIT SHD', '2000000', '2018-01-12', 'DP1', '4400000', 'IY');
INSERT INTO `pembayaran` VALUES ('77', '77', 'HERI', 'SEWA BUS MEDIUM 2 UNIT', '1000000', '2018-01-11', 'DP1', '2600000', 'AB');
INSERT INTO `pembayaran` VALUES ('78', '78', 'IBU LINA', 'SEWA BUS 59 SEAT 1 UNIT', '5400000', '2018-01-04', 'LUNAS', '0', 'AB');
INSERT INTO `pembayaran` VALUES ('79', '79', 'YADI', 'SEWA BUS SHD 1 UNIT', '3000000', '2018-01-09', 'LUNAS', '0', 'AB');
INSERT INTO `pembayaran` VALUES ('80', '80', 'MAMAH AUREL', 'SEWA MEDIUM BUS 1 UNIT', '1700000', '2018-01-09', 'LUNAS', '0', 'CK');
INSERT INTO `pembayaran` VALUES ('81', '81', 'RIZKI', 'SEWA BIG BUS 2 UNIT', '19500000', '2018-01-09', 'LUNAS', '0', 'CK');
INSERT INTO `pembayaran` VALUES ('82', '82', 'BU DEBORA', 'SEWA BIG BUS 1 UNIT', '3500000', '2018-01-08', 'LUNAS', '0', 'AB');
INSERT INTO `pembayaran` VALUES ('83', '83', 'NURMAULANA', 'SEWA BIG BUS 1 UNIT', '2900000', '2018-01-11', 'LUNAS', '0', 'AB');
INSERT INTO `pembayaran` VALUES ('84', '84', 'IBU HABIBAH', 'SEWA BUS MEDIUM 1 UNIT', '1400000', '2018-01-10', 'LUNAS', '0', 'AB');
INSERT INTO `pembayaran` VALUES ('85', '85', 'ANAK YATIM', 'SEWA MEDIUM BUS', '750000', '2018-01-11', 'LUNAS', '0', 'AB');
INSERT INTO `pembayaran` VALUES ('86', '86', 'BP. ABIDIN', 'SEWA BUS SHD 1 UNIT', '10200000', '2018-01-11', 'LUNAS', '0', 'IY');
INSERT INTO `pembayaran` VALUES ('87', '87', 'WINDY', 'SEWA BUS SHD 1 UNIT', '10500000', '2018-01-11', 'LUNAS', '0', 'WA');
INSERT INTO `pembayaran` VALUES ('88', '88', 'YADI', 'SEWA MEDIUM BUS 1 UNIT', '2100000', '2018-01-11', 'LUNAS', '0', 'WA');
INSERT INTO `pembayaran` VALUES ('89', '89', 'NO NAME', 'SEWA BIG BUS 1 UNIT', '2200000', '2018-01-11', 'LUNAS', '0', 'AB');
INSERT INTO `pembayaran` VALUES ('90', '90', 'RANGGA', 'SEWA BIG BUS 1 UNIT', '2300000', '2018-01-12', 'LUNAS', '0', 'AB');
INSERT INTO `pembayaran` VALUES ('91', '91', 'ABDUL AJIZ', 'SEWA BIG BUS 1 UNIT', '6000000', '2018-01-09', 'LUNAS', '0', 'CK');
INSERT INTO `pembayaran` VALUES ('92', '92', 'BOSEF', 'SEWA BIG BUS 2 UNIT', '11300000', '2017-12-30', 'LUNAS', '0', 'IY');
INSERT INTO `pembayaran` VALUES ('93', '93', 'BP. DAUS', 'SEWA BIG BUS 1 UNIT', '5400000', '2018-01-11', 'LUNAS', '0', 'AB');
INSERT INTO `pembayaran` VALUES ('94', '94', 'AGUS', 'SEWA MEDIUM BUS 2 UNIT', '1600000', '2018-01-11', 'DP1', '1600000', 'CK');
INSERT INTO `pembayaran` VALUES ('95', '95', 'NO NAME', 'SEWA MEDIUM BUS 2 UNIT', '2800000', '2018-01-11', 'LUNAS', '0', 'AB');
INSERT INTO `pembayaran` VALUES ('96', '57', 'BP. TRI HARTANTO', 'SEWA MEDIUM BUS 1 UNIT', '1300000', '2018-01-12', 'LUNAS', '0', 'IY');
INSERT INTO `pembayaran` VALUES ('97', '96', 'MAMAT ROCHIMAT', 'SEWA BUS SHD 1 UNIT', '3600000', '2018-01-09', 'LUNAS', '0', 'AB');
INSERT INTO `pembayaran` VALUES ('98', '97', 'WENDI', 'SEWA BUS MEDIUM 1 UNIT', '1500000', '2018-01-12', 'DP1', '700000', 'IY');
INSERT INTO `pembayaran` VALUES ('99', '98', 'MAMAT JP', 'SEWA BUS MEDIUM 1 UNIT', '1700000', '2018-01-12', 'LUNAS', '0', 'AB');
INSERT INTO `pembayaran` VALUES ('100', '99', 'ACENG', 'SEWA BUS SHD 1 UNIT', '1000000', '2018-01-11', 'DP1', '5800000', 'WA');
INSERT INTO `pembayaran` VALUES ('101', '100', 'BP. DEDE', 'SEWA BUS MEDIUM 1 UNIT', '1000000', '2018-01-11', 'DP1', '1600000', 'WA');
INSERT INTO `pembayaran` VALUES ('102', '101', 'HAMZAH', 'SEWA BIG BUS 5 UNIT', '3000000', '2018-01-11', 'DP1', '13700000', 'IY');
INSERT INTO `pembayaran` VALUES ('103', '101', 'HAMZAH', 'SEWA BIG BUS 5 UNIT', '3000000', '2018-01-12', 'DP2', '10700000', 'IY');
INSERT INTO `pembayaran` VALUES ('104', '101', 'HAMZAH', 'SEWA BIG BUS 5 UNIT', '3000000', '2018-01-12', 'DP2', '7700000', 'IY');
INSERT INTO `pembayaran` VALUES ('105', '102', 'BAMBANG', 'SEWA BUS SHD (tf bca)', '6400000', '2018-01-04', 'LUNAS', '0', 'AB');
INSERT INTO `pembayaran` VALUES ('106', '103', 'BAMBANG', 'SEWA BUS SHD', '3200000', '2018-01-04', 'LUNAS', '0', 'AB');
INSERT INTO `pembayaran` VALUES ('107', '104', 'H. USMAN', 'SEWA BIG BUS 4 UNIT (tf bca)', '4000000', '2018-01-05', 'DP1', '21200000', 'AB');
INSERT INTO `pembayaran` VALUES ('108', '105', 'H. AGUS', 'SEWA ELF', '1000000', '2018-01-13', 'LUNAS', '0', 'AB');
INSERT INTO `pembayaran` VALUES ('109', '106', 'RIDWAN', 'SEWA BUS SHD', '500000', '2018-01-09', 'DP1', '2800000', 'AB');
INSERT INTO `pembayaran` VALUES ('110', '97', 'WENDI', 'SEWA BUS MEDIUM 1 UNIT', '700000', '2018-01-13', 'LUNAS', '0', 'IY');
INSERT INTO `pembayaran` VALUES ('111', '107', 'TENDI OJAN', 'SEWA BIG BUS 6 UNIT', '1000000', '2018-01-09', 'DP1', '52700000', 'IY');
INSERT INTO `pembayaran` VALUES ('112', '108', 'BP. DUDI', 'SEWA BUS MEDIUM 1 UNIT', '1000000', '2018-01-10', 'DP1', '750000', 'AB');
INSERT INTO `pembayaran` VALUES ('114', '110', 'BP. IBETH', 'SEWA BIG BUS 1 UNIT', '700000', '2018-01-12', 'DP1', '2300000', 'CK');
INSERT INTO `pembayaran` VALUES ('115', '111', 'IBU NANI', 'SEWA BIG BUS 6 UNIT', '5000000', '2018-01-06', 'DP1', '15100000', 'IY');
INSERT INTO `pembayaran` VALUES ('116', '112', 'IBU NANI', 'SEWA BIG BUS 6 UNIT', '40500000', '2018-01-11', 'LUNAS', '0', 'IY');
INSERT INTO `pembayaran` VALUES ('117', '113', 'IBU NANI', 'SEWA BIG BUS 3 UNIT', '9500000', '2018-01-11', 'DP1', '46300000', 'IY');
INSERT INTO `pembayaran` VALUES ('118', '114', 'AL - IKHSAN', 'SEWA BIG BUS 2 UNIT', '5500000', '2018-01-13', 'LUNAS', '0', 'CK');
INSERT INTO `pembayaran` VALUES ('119', '115', 'BP. YUSUF', 'SEWA MEDIUM BUS 1 UNIT', '800000', '2018-01-13', 'DP1', '2700000', 'WA');
INSERT INTO `pembayaran` VALUES ('120', '116', 'BP. GINGIN', 'SEWA BIG BUS 2 UNIT', '3000000', '2018-01-13', 'DP1', '2400000', 'WA');
INSERT INTO `pembayaran` VALUES ('121', '94', 'AGUS', 'SEWA 2 UNIT MEDIUM BUS', '1600000', '2018-01-13', 'LUNAS', '0', 'CK');
INSERT INTO `pembayaran` VALUES ('122', '117', 'HAMZAH', 'SEWA BIG BUS 1 UNIT', '500000', '2018-01-13', 'DP1', '2100000', 'WA');
INSERT INTO `pembayaran` VALUES ('123', '118', 'FITRI YULIA', 'SEWA BIG BUS 1 UNIT', '1500000', '2018-01-13', 'DP1', '1900000', 'CK');
INSERT INTO `pembayaran` VALUES ('124', '119', 'IBU LITA', 'SEWA MEDIUM BUS 1 UNIT', '1000000', '2018-01-14', 'DP1', '1800000', 'IY');
INSERT INTO `pembayaran` VALUES ('125', '120', 'BP. SUPRIADI', 'SEWA BIG BUS 1 UNIT', '2700000', '2018-01-15', 'DP1', '3900000', 'CK');
INSERT INTO `pembayaran` VALUES ('126', '121', 'BP. BUDI', 'SEWA BIG BUS 1 UNIT', '5000000', '2018-01-15', 'DP1', '14200000', 'AB');
INSERT INTO `pembayaran` VALUES ('127', '122', 'BP. AGUS', 'SEWA BIG BUS 3 UNIT', '5000000', '2018-01-15', 'DP1', '3100000', 'AB');
INSERT INTO `pembayaran` VALUES ('128', '123', 'BP. MISBAH', 'SEWA BUS SHD 1 UNIT', '1500000', '2018-01-15', 'DP1', '8700000', 'IY');
INSERT INTO `pembayaran` VALUES ('129', '94', 'BALAI BAHASA UPI', 'SEWA BUS MEDIUM 2 UNIT', '0', '2018-01-15', 'LUNAS', '0', 'CK');
INSERT INTO `pembayaran` VALUES ('130', '124', 'BP CUCU', 'SEWA ELF 1 UNIT', '1200000', '2018-01-15', 'LUNAS', '0', 'WA');
INSERT INTO `pembayaran` VALUES ('131', '125', 'XTRANS', 'SEWA MEDIUM BUS 5 UNIT', '8500000', '2018-01-15', 'LUNAS', '0', 'AB');
INSERT INTO `pembayaran` VALUES ('132', '127', 'IBU EVI', 'SEWA 2 UNIT BUS SHD/PAKET', '1000000', '2018-01-17', 'DP1', '5800000', 'IY');
INSERT INTO `pembayaran` VALUES ('133', '128', 'YAYAN', 'SEWA MEDIUM BUS 1 UNIT', '6000000', '2018-01-15', 'LUNAS', '0', 'AB');
INSERT INTO `pembayaran` VALUES ('134', '129', 'BU LINA', 'SEWA SHD 1 UNIT ELF 1 UNIT', '4600000', '2018-01-15', 'LUNAS', '0', 'AB');
INSERT INTO `pembayaran` VALUES ('135', '130', 'BP. ROJAK', 'SEWA MEDIUM BUS 1 UNIT', '1750000', '2018-01-16', 'LUNAS', '0', 'AB');
INSERT INTO `pembayaran` VALUES ('136', '131', 'BP. ROJAK', 'SEWA MEDIUM BUS 1 UNIT', '1750000', '2018-01-16', 'LUNAS', '0', 'AB');
INSERT INTO `pembayaran` VALUES ('137', '66', 'IBU NIA', 'SEWA BIG BUS 1 UNIT MEDIUM BUS 1 UNIT', '3300000', '2018-01-16', 'LUNAS', '0', 'IY');
INSERT INTO `pembayaran` VALUES ('138', '132', 'YADI', 'SEWA MEDIUM BUS 1 UNIT', '2400000', '2018-01-16', 'LUNAS', '0', 'WA');
INSERT INTO `pembayaran` VALUES ('139', '116', 'BP. GINGIN', 'SEWA BIG BUS 2 UNIT', '2400000', '2018-01-16', 'LUNAS', '0', 'WA');
INSERT INTO `pembayaran` VALUES ('140', '133', 'BP. GUNGUN', 'SEWA BUS SHD 1 UNIT', '1000000', '2018-01-16', 'DP1', '2400000', 'WA');
INSERT INTO `pembayaran` VALUES ('141', '134', 'IBU MARI', 'SEWA BIG BUS 1 UNIT', '3250000', '2018-01-16', 'DP1', '9000000', 'WA');
INSERT INTO `pembayaran` VALUES ('142', '135', 'IBU ELI', 'PAKET GSA + AWA', '500000', '2018-01-16', 'DP1', '2900000', 'CK');
INSERT INTO `pembayaran` VALUES ('143', '136', 'IBU SUSI', 'SEWA ELF 1 UNIT', '200000', '2018-01-17', 'DP1', '1000000', 'WA');
INSERT INTO `pembayaran` VALUES ('144', '137', 'BP. AGUS SANTOSO', 'SEWA MEDIUM BUS 1 UNIT', '3000000', '2018-01-16', 'DP1', '1400000', 'CK');
INSERT INTO `pembayaran` VALUES ('145', '138', 'IYOS', 'SEWA BUS SHD NESS TRANS', '13200000', '2018-01-16', 'LUNAS', '0', 'IY');
INSERT INTO `pembayaran` VALUES ('146', '139', 'AHMAD', 'SEWA BIG BUS 1 UNIT', '3000000', '2017-12-16', 'LUNAS', '0', 'IY');
INSERT INTO `pembayaran` VALUES ('147', '140', 'BU DELLA', 'SEWA 7 UNIT BIG BUS DAN 1 UNIT MICRO BUS', '71400000', '2018-01-17', 'LUNAS', '0', 'IY');
INSERT INTO `pembayaran` VALUES ('148', '141', 'OKTRI', 'SEWA 1 UNIT MICRO BUS', '4900000', '2018-01-16', 'LUNAS', '0', 'IY');
INSERT INTO `pembayaran` VALUES ('149', '144', 'AULIA', 'SEWA BIG BUS 1 UNIT', '500000', '2018-01-15', 'DP1', '1800000', 'CK');
INSERT INTO `pembayaran` VALUES ('150', '145', 'YADI', 'SEWA BIG BUS 1 UNIT', '1000000', '2018-01-17', 'DP1', '2000000', 'WA');
INSERT INTO `pembayaran` VALUES ('151', '77', 'BP. HERI / ALUMNI SMA 24 UJUNG BERUNG', 'SEWA MICRO BUS 2 UNIT', '2600000', '2018-01-18', 'LUNAS', '0', 'AB');
INSERT INTO `pembayaran` VALUES ('152', '146', 'BU DELA', 'SEWA BUS SHD 1 UNIT', '3300000', '2018-01-18', 'LUNAS', '0', 'IY');
INSERT INTO `pembayaran` VALUES ('153', '147', 'PA DADANG', 'SEWA MICRO BUS 5 UNIT', '7250000', '2018-01-17', 'LUNAS', '0', 'IY');
INSERT INTO `pembayaran` VALUES ('154', '148', 'BP. PIPIN', 'SEWA BIG BUS 1 UNIT', '2800000', '2018-01-17', 'LUNAS', '0', 'WA');
INSERT INTO `pembayaran` VALUES ('155', '149', 'ROMI', 'SEWA BIG BUS 1 UNIT', '800000', '2018-01-17', 'DP1', '3000000', 'IY');
INSERT INTO `pembayaran` VALUES ('156', '149', 'ROMI', 'SEWA BIG BUS 1 UNIT', '3000000', '2018-01-18', 'LUNAS', '0', 'IY');
INSERT INTO `pembayaran` VALUES ('157', '99', 'ACENG', 'SEWA 1 UNIT BIG BUS', '5800000', '2018-01-18', 'LUNAS', '0', 'WA');
INSERT INTO `pembayaran` VALUES ('158', '150', 'HAMZAH', 'SEWA 3 UNIT BIG BUS', '20000000', '2018-01-18', 'DP1', '6700000', 'WA');
INSERT INTO `pembayaran` VALUES ('159', '151', 'IBU NENI', 'SEWA MEDIUM BUS 1 UNIT', '1400000', '2018-01-18', 'LUNAS', '0', '');
INSERT INTO `pembayaran` VALUES ('160', '152', 'BP. EDI', 'SEWA ELF 1 UNIT', '500000', '2018-01-18', 'DP1', '500000', '');
INSERT INTO `pembayaran` VALUES ('161', '52', 'BP IYOS', 'SEWA 1 UNIT MEDIUM BUS', '1300000', '2018-01-18', 'LUNAS', '0', 'IY');
INSERT INTO `pembayaran` VALUES ('163', '154', 'HASAN', 'SEWA MEDIUM BUS 1 UNIT', '1500000', '2018-01-15', 'DP1', '3100000', 'AB');
INSERT INTO `pembayaran` VALUES ('164', '155', 'BP. LILI', 'SEWA MEDIUM BUS 1 UNIT', '400000', '2018-01-18', 'DP1', '1100000', 'WA');
INSERT INTO `pembayaran` VALUES ('165', '113', 'IBU NANI', 'SEWA BIG BUS', '44500000', '2018-01-16', 'LUNAS', '0', 'IY');
INSERT INTO `pembayaran` VALUES ('166', '54', 'BP. DADAN', 'SEWA 2 UNIT BIG BUS', '3700000', '2018-01-18', 'DP2', '700000', 'WA');
INSERT INTO `pembayaran` VALUES ('167', '157', 'IBU NANI', 'SEWA BUS MEDIUN DAN BIG BUS', '1000000', '2018-01-16', 'DP1', '15400000', 'IY');
INSERT INTO `pembayaran` VALUES ('168', '158', 'HERU/ PA MEGA', 'SEWA BUS SHD 1 UNIT', '0', '2018-01-16', 'DP1', '7800000', 'CK');
INSERT INTO `pembayaran` VALUES ('169', '159', 'HENDRA', 'SEWA SHD 1 UNIT', '1000000', '2018-01-17', 'DP1', '2000000', 'IY');
INSERT INTO `pembayaran` VALUES ('170', '160', 'IBU ELI', 'SEWA ELF 1 UNIT', '200000', '2018-01-18', 'DP1', '1000000', 'WA');
INSERT INTO `pembayaran` VALUES ('171', '161', 'BP. BUDHIMAN', 'SEWA BIG BUS 1 UNIT', '960000', '2018-01-18', 'DP1', '2240000', 'CK');
INSERT INTO `pembayaran` VALUES ('172', '122', 'BP. AGUS', 'SEWA BIG BUS 3 UNIT', '3000000', '2018-01-17', 'DP2', '100000', 'AB');
INSERT INTO `pembayaran` VALUES ('173', '143', 'BP. DADAN', 'SEWA MEDIUM BUS 1 UNIT (TF BJB)', '1700000', '2018-01-18', 'LUNAS', '0', 'CK');
INSERT INTO `pembayaran` VALUES ('174', '37', 'PA DEDEN', 'SEWA 2 UNIT MICRO BUS (TF MANDIRI)', '3200000', '2018-01-18', 'DP1', '1000000', 'CK');
INSERT INTO `pembayaran` VALUES ('175', '162', 'BP. ADI', 'SEWA 2 UNIT BIG BUS', '3000000', '2018-01-19', 'DP1', '2800000', '');
INSERT INTO `pembayaran` VALUES ('176', '162', 'BP. ADI', 'SEWA 2 UNIT BIG BUS', '2800000', '2018-01-19', 'LUNAS', '0', 'CK');
INSERT INTO `pembayaran` VALUES ('177', '144', 'AULIA', 'SEWA BIG BUS 1 UNIT', '1800000', '2018-01-18', 'LUNAS', '0', 'CK');
INSERT INTO `pembayaran` VALUES ('178', '163', 'NO NAME', 'SEWA ELF 1 UNIT', '850000', '2018-01-18', 'LUNAS', '0', 'AB');
INSERT INTO `pembayaran` VALUES ('179', '164', 'PRODIMA TOUR', 'SEWA MEDIUM BUS 1 UNIT', '10000000', '2018-01-19', 'LUNAS', '0', 'IY');
INSERT INTO `pembayaran` VALUES ('180', '70', 'BP. IWAN', 'SEWA BIG BUS 1 UNIT DAN ELF 1 UNIT', '3200000', '2018-01-19', 'LUNAS', '0', 'WA');
INSERT INTO `pembayaran` VALUES ('181', '167', 'IBU ENUNG', 'SEWA BUS MEDIUM 1 UNIT', '1000000', '2018-01-19', 'DP1', '400000', 'WA');
INSERT INTO `pembayaran` VALUES ('182', '152', 'BPR ARTA GUNA MANDIRI', 'SEWA ELF 1 UNIT', '500000', '2018-01-19', 'LUNAS', '0', 'WA');
INSERT INTO `pembayaran` VALUES ('183', '64', 'RIAN', 'SEWA I UNIT BIG BUS', '4500000', '2018-01-19', 'LUNAS', '0', 'WA');
INSERT INTO `pembayaran` VALUES ('184', '168', 'BP. AGUS', 'SEWA 2 UNIT ELF', '200000', '2018-01-20', 'DP1', '3000000', 'WA');
INSERT INTO `pembayaran` VALUES ('185', '108', 'BP. DUDI', 'SEWA MICRO BUS 1 UNIT', '750000', '2018-01-19', 'LUNAS', '0', 'AB');
INSERT INTO `pembayaran` VALUES ('186', '120', 'BP. SUPRIYADI', 'SEWA BIG BUS 1 UNIT', '3900000', '2018-01-19', 'LUNAS', '0', 'CK');
INSERT INTO `pembayaran` VALUES ('187', '37', 'PA DEDEN', 'SEWA 2 UNIT MICRO BUS', '3200000', '2018-01-19', 'LUNAS', '-3200000', 'CK');
INSERT INTO `pembayaran` VALUES ('188', '169', 'BP. YADI', 'SEWA BIG BUS 1 UNIT', '2900000', '2018-01-19', 'LUNAS', '0', 'AB');
INSERT INTO `pembayaran` VALUES ('189', '137', 'AGUS SANTOSO', 'SEWA BUS MEDIUM 1 UNIT', '1400000', '2018-01-19', 'LUNAS', '0', 'CK');
INSERT INTO `pembayaran` VALUES ('190', '170', 'BP. ASEP ASOFA', 'SEWA BIG BUS SHD 1 UNIT', '6600000', '2018-01-20', 'LUNAS', '0', 'WA');
INSERT INTO `pembayaran` VALUES ('191', '119', 'IBU LITA', 'SEWA 1 UNIT MEDIUM BUS', '1800000', '2018-01-20', 'LUNAS', '0', 'IY');
INSERT INTO `pembayaran` VALUES ('192', '171', 'IBU YULI', 'SEWA BIG BUS 1 UNIT', '2750000', '2018-01-07', 'LUNAS', '0', 'WA');
INSERT INTO `pembayaran` VALUES ('193', '106', 'RIDWAN', 'SEWA BUS SHD 1 UNIT', '2800000', '2018-01-19', 'LUNAS', '0', 'AB');
INSERT INTO `pembayaran` VALUES ('194', '172', 'BP. SUPRIADI', 'SEWA MEDIUM BUS 1 UNIT', '2400000', '2018-01-19', 'LUNAS', '0', 'AB');
INSERT INTO `pembayaran` VALUES ('195', '118', 'FITRI YULIA', 'SEWA BIG BUS 1 UNIT', '1900000', '2018-01-19', 'LUNAS', '0', 'CK');
INSERT INTO `pembayaran` VALUES ('196', '173', 'AMIR', 'SEWA MICRO BUS 1 UNIT', '500000', '2018-01-18', 'DP1', '1700000', 'CK');
INSERT INTO `pembayaran` VALUES ('197', '122', 'BP AGUS', 'SEWA BIG BUS 1 UNIT', '100000', '2018-01-19', 'LUNAS', '0', 'AB');
INSERT INTO `pembayaran` VALUES ('198', '76', 'IBU ELI', 'SEWA BIG BUS 2 UNIT', '4400000', '2018-01-20', 'LUNAS', '0', 'CK');
INSERT INTO `pembayaran` VALUES ('199', '175', 'IBU ELI', 'SEWA MEDIUM BUS 1 UNIT', '1800000', '2018-01-20', 'LUNAS', '0', 'CK');
INSERT INTO `pembayaran` VALUES ('200', '177', 'BP. AEP', 'SEWA 1 UNIT BUS SHD', '12300000', '2018-01-20', 'LUNAS', '0', 'AB');
INSERT INTO `pembayaran` VALUES ('201', '178', 'IBU KARLINA', 'SEWA BIG BUS 1 UNIT', '200000', '2018-01-20', 'DP1', '5300000', 'WA');
INSERT INTO `pembayaran` VALUES ('202', '180', 'BP. AGUS', 'SEWA 1 UNIT MEDIUM BUS', '600000', '2018-01-22', 'DP1', '1000000', 'WA');
INSERT INTO `pembayaran` VALUES ('203', '173', 'AMIR', 'SEWA MEDIUM BUS 1 UNIT', '1700000', '2018-01-22', 'LUNAS', '0', 'CK');
INSERT INTO `pembayaran` VALUES ('204', '174', 'GERI', 'SEWA BIG BUS 1 UNIT', '3000000', '2018-01-21', 'LUNAS', '0', 'AB');
INSERT INTO `pembayaran` VALUES ('205', '179', 'YAYAN', 'SEWAQ BIG BUS 1 UNIT MEDIUM BUS 1 UNIT', '15200000', '2018-01-21', 'LUNAS', '0', 'AB');
INSERT INTO `pembayaran` VALUES ('206', '183', 'HELMI', 'SEWA ELF 1 UNIT', '500000', '2018-01-21', 'DP1', '500000', 'AB');
INSERT INTO `pembayaran` VALUES ('207', '184', 'BP. ENDANG', 'SEWA MEDIUM BUS 1 UNIT', '1700000', '2018-01-22', 'LUNAS', '0', 'WA');
INSERT INTO `pembayaran` VALUES ('208', '185', 'BP. SARWOEDI', 'SEWA BIG BUS 1 UNIT MICRO BUS 1 UNIT', '10400000', '2018-01-22', 'LUNAS', '0', 'IY');
INSERT INTO `pembayaran` VALUES ('209', '166', 'HERI', 'SEWA 2 UNIT MEDIUM BUS', '5300000', '2018-01-20', 'LUNAS', '0', 'AB');
INSERT INTO `pembayaran` VALUES ('210', '165', 'YADI', 'SEWA BIG BUS 1 UNIT', '2400000', '2018-01-20', 'LUNAS', '0', 'WA');
INSERT INTO `pembayaran` VALUES ('211', '186', 'BP. IYEP', 'SEWA BIG BUS 1 UNIT', '2000000', '2018-01-21', 'DP1', '1000000', 'WA');
INSERT INTO `pembayaran` VALUES ('212', '187', 'IYOS', 'SEWA BIG BUS 1 UNIT', '2000000', '2018-01-22', 'DP1', '3600000', 'IY');
INSERT INTO `pembayaran` VALUES ('213', '75', 'IBU LULU', 'SEWA 4 UNIT BIG BUS', '10200000', '2018-01-22', 'LUNAS', '0', 'IY');
INSERT INTO `pembayaran` VALUES ('214', '53', 'BP. DIDIN', 'SEWA BUS SHD 1 UNIT', '2500000', '2018-01-22', 'LUNAS', '0', 'IY');
INSERT INTO `pembayaran` VALUES ('215', '188', 'DICKY', 'SEWA MEDIUM BUS 1 UNIT', '500000', '2018-01-22', 'DP1', '1000000', 'WA');
INSERT INTO `pembayaran` VALUES ('216', '189', 'BP. DINAR', 'SEWA MEDIUM BUS 1 UNIT', '950000', '2017-11-28', 'LUNAS', '3050000', 'CK');
INSERT INTO `pembayaran` VALUES ('217', '189', 'BP. DINAR', 'SEWA MEDIUM BUS 1 UNIT', '3050000', '2018-01-23', 'LUNAS', '0', 'CK');
INSERT INTO `pembayaran` VALUES ('218', '160', 'IBU ELI', 'SEWA ELF 1 UNIT', '1000000', '2018-01-23', 'LUNAS', '0', 'WA');
INSERT INTO `pembayaran` VALUES ('219', '190', 'YADI', 'SEWA MEDIUM BUS 1 UNIT', '1000000', '2018-01-23', 'DP1', '4400000', 'WA');
INSERT INTO `pembayaran` VALUES ('220', '191', 'BISMA', 'SEWA BUS SHD 1 UNIT', '3300000', '2018-01-23', 'LUNAS', '0', 'AB');
INSERT INTO `pembayaran` VALUES ('221', '110', 'BP. IBET', 'SEWA BUS 1 UNIT', '2500000', '2018-01-23', 'LUNAS', '0', 'CK');
INSERT INTO `pembayaran` VALUES ('222', '192', 'IBU RODIAH', 'SEWA 2 UNIT BIG BUS', '3000000', '2018-01-23', 'DP1', '2800000', 'WA');

-- ----------------------------
-- Table structure for `pengeluaran`
-- ----------------------------
DROP TABLE IF EXISTS `pengeluaran`;
CREATE TABLE `pengeluaran` (
  `id_pengeluaran` int(10) NOT NULL AUTO_INCREMENT,
  `id_kategori_pengeluaran` int(10) DEFAULT NULL,
  `keterangan` varchar(200) DEFAULT NULL,
  `jumlah` varchar(20) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  PRIMARY KEY (`id_pengeluaran`)
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pengeluaran
-- ----------------------------
INSERT INTO `pengeluaran` VALUES ('1', '13', 'roko pa abung', '50000', '2018-01-01');
INSERT INTO `pengeluaran` VALUES ('2', '6', 'harian', '225000', '2018-01-01');
INSERT INTO `pengeluaran` VALUES ('3', '6', 'honor', '3625000', '2018-01-01');
INSERT INTO `pengeluaran` VALUES ('4', '1', 'op xtrans', '50000', '2018-01-02');
INSERT INTO `pengeluaran` VALUES ('5', '12', 'materai', '20000', '2018-01-02');
INSERT INTO `pengeluaran` VALUES ('6', '11', 'cicilan per', '1000000', '2018-01-02');
INSERT INTO `pengeluaran` VALUES ('7', '13', 'bon pa abung', '300000', '2018-01-02');
INSERT INTO `pengeluaran` VALUES ('8', '11', 'GPS D26', '700000', '2018-01-02');
INSERT INTO `pengeluaran` VALUES ('9', '11', 'cicilan abudemen GPS', '300000', '2018-01-02');
INSERT INTO `pengeluaran` VALUES ('10', '12', 'bon stabilo', '14000', '2018-01-02');
INSERT INTO `pengeluaran` VALUES ('11', '13', 'bon bu cucu RT', '200000', '2018-01-02');
INSERT INTO `pengeluaran` VALUES ('12', '6', 'harian', '420000', '2018-01-02');
INSERT INTO `pengeluaran` VALUES ('13', '13', 'rokok pa abung+tamu', '100000', '2018-01-03');
INSERT INTO `pengeluaran` VALUES ('14', '5', 'tambahan solar elf 26/12', '100000', '2018-01-03');
INSERT INTO `pengeluaran` VALUES ('15', '5', 'stor ness', '2000000', '2018-01-03');
INSERT INTO `pengeluaran` VALUES ('16', '6', 'harian', '495000', '2018-01-03');
INSERT INTO `pengeluaran` VALUES ('17', '6', 'pulsa waded', '50000', '2018-01-03');
INSERT INTO `pengeluaran` VALUES ('18', '12', 'aqua 1 dus', '44000', '2018-01-04');
INSERT INTO `pengeluaran` VALUES ('19', '13', 'NGASIH MG ENDANG DISHUB', '500000', '2018-01-04');
INSERT INTO `pengeluaran` VALUES ('20', '11', 'KIR D7, D16', '800000', '2018-01-04');
INSERT INTO `pengeluaran` VALUES ('21', '6', 'harian', '450000', '2018-01-04');
INSERT INTO `pengeluaran` VALUES ('22', '12', 'cicilan komputer baru', '1000000', '2018-01-04');
INSERT INTO `pengeluaran` VALUES ('23', '6', 'pulsa hendra + pa abang', '100000', '2018-01-05');
INSERT INTO `pengeluaran` VALUES ('24', '13', 'pinjaman heri koko', '500000', '2018-01-05');
INSERT INTO `pengeluaran` VALUES ('25', '13', 'bon pa abung', '100000', '2018-01-05');
INSERT INTO `pengeluaran` VALUES ('26', '11', 'BON KACA FILM D17 D26', '200000', '2018-01-05');
INSERT INTO `pengeluaran` VALUES ('27', '12', 'BAYAR PROGRAM', '1500000', '2018-01-05');
INSERT INTO `pengeluaran` VALUES ('28', '1', 'BON WARUNG', '92000', '2018-01-05');
INSERT INTO `pengeluaran` VALUES ('29', '6', 'HARIAN', '550000', '2018-01-05');
INSERT INTO `pengeluaran` VALUES ('30', '1', 'BENSIN VARIO', '30000', '2018-01-05');
INSERT INTO `pengeluaran` VALUES ('31', '13', 'BON PA ABUNG', '200000', '2018-01-06');
INSERT INTO `pengeluaran` VALUES ('32', '12', 'BON LISTRIK GARASI BARU', '98200', '2018-01-06');
INSERT INTO `pengeluaran` VALUES ('33', '12', 'BON LISTRIK BARU', '201700', '2018-01-06');
INSERT INTO `pengeluaran` VALUES ('34', '12', 'BON LISTRIK GARASI BARU', '18300', '2018-01-06');
INSERT INTO `pengeluaran` VALUES ('35', '1', 'bensin motor', '100000', '2018-01-06');
INSERT INTO `pengeluaran` VALUES ('36', '6', 'harian', '340000', '2018-01-06');
INSERT INTO `pengeluaran` VALUES ('37', '9', 'KOMISI MARKETING BLN DES', '3400000', '2018-01-06');
INSERT INTO `pengeluaran` VALUES ('38', '13', 'BON PUJA', '50000', '2018-01-07');
INSERT INTO `pengeluaran` VALUES ('39', '6', 'HARIAN', '265000', '2018-01-07');
INSERT INTO `pengeluaran` VALUES ('40', '13', 'NGALAYAD ISTRI MG IDEN', '100000', '2018-01-08');
INSERT INTO `pengeluaran` VALUES ('41', '13', 'BON PA ABUNG', '100000', '2018-01-08');
INSERT INTO `pengeluaran` VALUES ('42', '13', 'BON BU CUCU', '200000', '2018-01-08');
INSERT INTO `pengeluaran` VALUES ('43', '9', 'KOMISI MARKETING TGL 1-7 JAN', '2250000', '2018-01-12');
INSERT INTO `pengeluaran` VALUES ('44', '6', 'HARIAN', '520000', '2018-01-08');
INSERT INTO `pengeluaran` VALUES ('45', '1', 'OP XTRANS', '50000', '2018-01-09');
INSERT INTO `pengeluaran` VALUES ('46', '12', 'BON CATRIDGE PRINTER', '360000', '2018-01-09');
INSERT INTO `pengeluaran` VALUES ('47', '10', 'SUMBANGAN', '100000', '2018-01-09');
INSERT INTO `pengeluaran` VALUES ('48', '13', 'BON BASO', '40000', '2018-01-09');
INSERT INTO `pengeluaran` VALUES ('49', '9', 'KOMISI MARKETING TGL 8 JAN', '200000', '2018-01-09');
INSERT INTO `pengeluaran` VALUES ('50', '6', 'HARIAN', '535000', '2018-01-09');
INSERT INTO `pengeluaran` VALUES ('51', '9', 'SISA KOMISI MARKETING BLN DES ', '11100000', '2018-01-09');
INSERT INTO `pengeluaran` VALUES ('52', '13', 'BON BU CUCU', '250000', '2018-01-09');
INSERT INTO `pengeluaran` VALUES ('53', '12', 'CICILAN KOMPUTER BARU', '1000000', '2018-01-10');
INSERT INTO `pengeluaran` VALUES ('54', '11', 'BON CUTTING', '10000', '2018-01-10');
INSERT INTO `pengeluaran` VALUES ('55', '13', 'BON BU CUCU UTK GIA', '500000', '2018-01-10');
INSERT INTO `pengeluaran` VALUES ('56', '9', 'KOMISI MARKETING TGL 9/1', '750000', '2018-01-10');
INSERT INTO `pengeluaran` VALUES ('57', '12', 'BON PRINTER', '2150000', '2018-01-10');
INSERT INTO `pengeluaran` VALUES ('58', '6', 'HARIAN', '500000', '2018-01-10');
INSERT INTO `pengeluaran` VALUES ('59', '11', 'BON ONDERDIL D7', '80000', '2018-01-10');
INSERT INTO `pengeluaran` VALUES ('60', '13', 'BON BU CUCU', '250000', '2018-01-10');
INSERT INTO `pengeluaran` VALUES ('61', '12', 'BON SWITH HOME WIFI + RAM 1G', '150000', '2018-01-10');
INSERT INTO `pengeluaran` VALUES ('62', '11', 'CICILAN ABUDEMEN GPS', '700000', '2018-01-10');
INSERT INTO `pengeluaran` VALUES ('63', '12', 'LISTRIK', '102500', '2018-01-10');
INSERT INTO `pengeluaran` VALUES ('64', '3', 'STOR MY BANK', '10000000', '2018-01-11');
INSERT INTO `pengeluaran` VALUES ('65', '11', 'ongkos bongkar pasang kaca D7', '1500000', '2018-01-11');
INSERT INTO `pengeluaran` VALUES ('66', '11', 'cicilan per', '1000000', '2018-01-11');
INSERT INTO `pengeluaran` VALUES ('67', '13', 'cicilan fortuner', '6000000', '2018-01-11');
INSERT INTO `pengeluaran` VALUES ('68', '12', 'bon kertas printer', '325000', '2018-01-11');
INSERT INTO `pengeluaran` VALUES ('69', '1', 'bensin motor hendra', '20000', '2018-01-11');
INSERT INTO `pengeluaran` VALUES ('70', '11', 'ONDERDIL P5', '575000', '2018-01-11');
INSERT INTO `pengeluaran` VALUES ('71', '13', 'BON WARUNG', '114500', '2018-01-11');
INSERT INTO `pengeluaran` VALUES ('72', '6', 'PULSA AKONG', '50000', '2018-01-11');
INSERT INTO `pengeluaran` VALUES ('73', '6', 'HARIAN', '340000', '2018-01-11');
INSERT INTO `pengeluaran` VALUES ('74', '12', 'AQUA 1 DUS', '45000', '2018-01-12');
INSERT INTO `pengeluaran` VALUES ('75', '11', 'BON ONDERDIL D7', '139000', '2018-01-12');
INSERT INTO `pengeluaran` VALUES ('76', '9', 'KOMISI PA DEWA EX JUAL D10', '2000000', '2018-01-12');
INSERT INTO `pengeluaran` VALUES ('77', '12', 'BON FOTO COPY', '11500', '2018-01-12');
INSERT INTO `pengeluaran` VALUES ('78', '11', 'ONGKOS CAT D7 P10', '300000', '2018-01-12');
INSERT INTO `pengeluaran` VALUES ('79', '13', 'BON BU CUCU KE HENDRA', '35000', '2018-01-12');
INSERT INTO `pengeluaran` VALUES ('80', '6', 'HARIAN', '495000', '2018-01-12');
INSERT INTO `pengeluaran` VALUES ('81', '13', 'darmaga sunda (tarik bca)', '473550', '2018-01-01');
INSERT INTO `pengeluaran` VALUES ('82', '3', 'giro my bank', '29000000', '2018-01-02');
INSERT INTO `pengeluaran` VALUES ('83', '1', 'biaya tf giro my bank', '5000', '2018-01-02');
INSERT INTO `pengeluaran` VALUES ('84', '13', 'ALFAMART (tarik bca)', '171800', '2018-01-02');
INSERT INTO `pengeluaran` VALUES ('85', '11', 'onderdil P7 (tf bca)', '2406000', '2018-01-02');
INSERT INTO `pengeluaran` VALUES ('86', '7', 'kk mega', '2010000', '2018-01-02');
INSERT INTO `pengeluaran` VALUES ('87', '13', 'tarikan atm bca', '300000', '2018-01-03');
INSERT INTO `pengeluaran` VALUES ('88', '13', 'ngasih Lia (tf bca)', '200000', '2018-01-03');
INSERT INTO `pengeluaran` VALUES ('89', '3', 'giro a.n wahyu', '2005000', '2018-01-04');
INSERT INTO `pengeluaran` VALUES ('90', '8', 'CAHYO HANDOKO', '4500000', '2018-01-04');
INSERT INTO `pengeluaran` VALUES ('91', '13', 'ALFAMART DEBIT', '363000', '2018-01-04');
INSERT INTO `pengeluaran` VALUES ('92', '8', 'YEYEN NURYENI', '9500000', '2018-01-05');
INSERT INTO `pengeluaran` VALUES ('93', '3', 'GIRO MY BANK', '17505000', '2018-01-05');
INSERT INTO `pengeluaran` VALUES ('94', '13', 'LAZADA', '150000', '2018-01-05');
INSERT INTO `pengeluaran` VALUES ('95', '13', 'SIMPANG RAYA', '35000', '2018-01-05');
INSERT INTO `pengeluaran` VALUES ('96', '13', 'HARAPAN KELUARGA (debit bca)', '623000', '2018-01-05');
INSERT INTO `pengeluaran` VALUES ('97', '7', 'kk mandiri cucu kurnia', '2271500', '2018-01-05');
INSERT INTO `pengeluaran` VALUES ('98', '13', 'alfamart debit', '611100', '2018-01-06');
INSERT INTO `pengeluaran` VALUES ('99', '13', 'tarikan atm ', '1000000', '2018-01-06');
INSERT INTO `pengeluaran` VALUES ('100', '13', 'tarik atm', '200000', '2018-01-06');
INSERT INTO `pengeluaran` VALUES ('101', '13', 'food court BSM debit', '507500', '2018-01-06');
INSERT INTO `pengeluaran` VALUES ('102', '3', 'INDOMOBIL', '31005000', '2018-01-08');
INSERT INTO `pengeluaran` VALUES ('103', '13', 'TARIK ATM', '100000', '2018-01-08');
INSERT INTO `pengeluaran` VALUES ('104', '13', 'AMPERA CINUNUK (debit)', '123000', '2018-01-08');
INSERT INTO `pengeluaran` VALUES ('105', '5', 'angsuran MITSUI', '14852000', '2018-01-08');
INSERT INTO `pengeluaran` VALUES ('106', '13', 'ARISAN FORTY (trnsfer)', '500000', '2018-01-08');
INSERT INTO `pengeluaran` VALUES ('107', '13', 'BAJU MELUR', '700000', '2018-01-09');
INSERT INTO `pengeluaran` VALUES ('108', '13', 'BAYAR CEMILAN (tf bca)', '144000', '2018-01-10');
INSERT INTO `pengeluaran` VALUES ('109', '5', 'surat2 P30 P31 (tf H.ASEP SAEFULLOH)', '7000000', '2018-01-10');
INSERT INTO `pengeluaran` VALUES ('110', '8', 'YEYEN NURYENI', '9000000', '2018-01-10');
INSERT INTO `pengeluaran` VALUES ('111', '3', 'MY BANK', '18005000', '2018-01-11');
INSERT INTO `pengeluaran` VALUES ('112', '13', 'TAMBAH CICILAN FORTUNER (tf bca)', '3450000', '2018-01-11');
INSERT INTO `pengeluaran` VALUES ('113', '5', 'mitsui angsuran ke 21', '11193000', '2018-01-11');
INSERT INTO `pengeluaran` VALUES ('114', '13', 'arisan emas 5gr', '300000', '2018-01-11');
INSERT INTO `pengeluaran` VALUES ('115', '10', 'vbi (SULAEMAN NIHED)', '25000000', '2018-01-11');
INSERT INTO `pengeluaran` VALUES ('116', '7', 'CUST NO :015738581', '725000', '2018-01-11');
INSERT INTO `pengeluaran` VALUES ('117', '13', 'NUSKIN', '215000', '2018-01-12');
INSERT INTO `pengeluaran` VALUES ('118', '3', 'MY BANK', '26000000', '2018-01-12');
INSERT INTO `pengeluaran` VALUES ('119', '9', 'KOMISI DEWA EX JUAL D10', '30000000', '2018-01-12');
INSERT INTO `pengeluaran` VALUES ('120', '1', 'op ambil GPS D10', '300000', '2018-01-13');
INSERT INTO `pengeluaran` VALUES ('121', '13', 'BON BU CUCU', '500000', '2018-01-13');
INSERT INTO `pengeluaran` VALUES ('122', '6', 'HONOR AA MONTIR', '2000000', '2018-01-13');
INSERT INTO `pengeluaran` VALUES ('123', '1', 'BENSIN MOTOR HENDRA', '30000', '2018-01-13');
INSERT INTO `pengeluaran` VALUES ('124', '11', 'BON AUDIO D7', '100000', '2018-01-13');
INSERT INTO `pengeluaran` VALUES ('125', '6', 'HARIAN', '325000', '2018-01-13');
INSERT INTO `pengeluaran` VALUES ('126', '7', 'KK BUKOPIN', '2020000', '2018-01-13');
INSERT INTO `pengeluaran` VALUES ('127', '13', 'DEBIT ALFAMART', '360900', '2018-01-14');
INSERT INTO `pengeluaran` VALUES ('128', '3', 'GIRO MY BANK', '17505000', '2018-01-15');
INSERT INTO `pengeluaran` VALUES ('129', '6', 'HARIAN TGL 14/1', '340000', '2018-01-15');
INSERT INTO `pengeluaran` VALUES ('130', '12', 'TAGIHAN KORAN', '53000', '2018-01-15');
INSERT INTO `pengeluaran` VALUES ('131', '6', 'HONOR LILIS', '500000', '2018-01-15');
INSERT INTO `pengeluaran` VALUES ('132', '11', 'OMPANG P5', '100000', '2018-01-15');
INSERT INTO `pengeluaran` VALUES ('133', '1', 'TAMBAHAN SOLAR D17 TGL 11/1', '150000', '2018-01-15');
INSERT INTO `pengeluaran` VALUES ('134', '13', 'BON BU CUCU', '300000', '2018-01-15');
INSERT INTO `pengeluaran` VALUES ('135', '3', 'STOR BJB', '6000000', '2018-01-15');
INSERT INTO `pengeluaran` VALUES ('136', '12', 'MATERAI 20 + KOPI TAMU', '145000', '2018-01-15');
INSERT INTO `pengeluaran` VALUES ('137', '1', 'TAMBAHAN SOLAR P27 TGL 10/1', '50000', '2018-01-15');
INSERT INTO `pengeluaran` VALUES ('138', '1', 'OP XTRANS', '50000', '2018-01-15');
INSERT INTO `pengeluaran` VALUES ('139', '13', 'SPP BOLA PUJA', '100000', '2018-01-15');
INSERT INTO `pengeluaran` VALUES ('140', '13', 'SERVICE JAM TANGAN PA ABUNG', '105000', '2018-01-15');
INSERT INTO `pengeluaran` VALUES ('141', '1', 'OP KE JAWA PA ABUNG AMBIL UNIT BARU', '4000000', '2018-01-15');
INSERT INTO `pengeluaran` VALUES ('142', '6', 'HARIAN 15/1', '690000', '2018-01-15');
INSERT INTO `pengeluaran` VALUES ('143', '11', 'BON STIKER P6', '85000', '2018-01-16');
INSERT INTO `pengeluaran` VALUES ('144', '6', 'HARIAN', '485000', '2018-01-16');
INSERT INTO `pengeluaran` VALUES ('145', '13', 'BEKEL PUJA', '50000', '2018-01-16');
INSERT INTO `pengeluaran` VALUES ('146', '11', 'LONDRY SLIMUT D16', '150000', '2018-01-16');
INSERT INTO `pengeluaran` VALUES ('147', '3', 'BJB NESS TRANS', '4000000', '2018-01-15');
INSERT INTO `pengeluaran` VALUES ('148', '11', 'PAKING P5', '1700000', '2018-01-15');
INSERT INTO `pengeluaran` VALUES ('149', '3', 'MY BANK', '32005000', '2018-01-16');
INSERT INTO `pengeluaran` VALUES ('150', '13', 'LISTRIK RUMAH', '202500', '2018-01-16');
INSERT INTO `pengeluaran` VALUES ('151', '11', 'abudemen gps', '700000', '2018-01-17');
INSERT INTO `pengeluaran` VALUES ('152', '11', 'cicilan per', '1000000', '2018-01-17');
INSERT INTO `pengeluaran` VALUES ('153', '6', 'harian', '335000', '2018-01-17');
INSERT INTO `pengeluaran` VALUES ('154', '1', 'solar D16 (tes drive)', '50000', '2018-01-17');
INSERT INTO `pengeluaran` VALUES ('155', '1', 'DEREK D14', '350000', '2018-01-17');
INSERT INTO `pengeluaran` VALUES ('156', '4', 'OM LILI', '7500000', '2018-01-15');
INSERT INTO `pengeluaran` VALUES ('157', '13', 'ARISAN 25 GR', '1490000', '2018-01-16');
INSERT INTO `pengeluaran` VALUES ('158', '13', 'KAS FORTY', '650000', '2018-01-16');
INSERT INTO `pengeluaran` VALUES ('159', '13', 'ASURANSI ALIANS', '500000', '2018-01-17');
INSERT INTO `pengeluaran` VALUES ('160', '3', 'MY BANK', '21000000', '2018-01-17');
INSERT INTO `pengeluaran` VALUES ('161', '12', 'WEB', '750000', '2018-01-17');
INSERT INTO `pengeluaran` VALUES ('162', '3', 'MY BANK', '28505000', '2018-01-17');
INSERT INTO `pengeluaran` VALUES ('163', '5', 'STOR HARUM', '2800000', '2018-01-17');
INSERT INTO `pengeluaran` VALUES ('164', '5', 'beli bus baru P6', '244000000', '2018-01-17');
INSERT INTO `pengeluaran` VALUES ('165', '5', 'DP BUS D26 DAN D27', '61172600', '2018-01-17');
INSERT INTO `pengeluaran` VALUES ('166', '5', 'ANGSURAN TERAKHIR P16', '19994000', '2018-01-17');
INSERT INTO `pengeluaran` VALUES ('167', '1', 'PARKIR BUS NESS EX PA DADANG 18/1', '25000', '2018-01-17');
INSERT INTO `pengeluaran` VALUES ('168', '3', 'GIRO BJB', '18500000', '2018-01-18');
INSERT INTO `pengeluaran` VALUES ('169', '12', 'PELUNASAN KOMPUTER BARU', '3000000', '2018-01-18');
INSERT INTO `pengeluaran` VALUES ('170', '12', 'LISTRIK KANTOR', '102500', '2018-01-18');
INSERT INTO `pengeluaran` VALUES ('171', '10', 'ROKO UTK POLISI', '50000', '2018-01-18');
INSERT INTO `pengeluaran` VALUES ('172', '11', 'KIR D26 D27', '1000000', '2018-01-18');
INSERT INTO `pengeluaran` VALUES ('173', '13', 'BEKEL NIRMA', '150000', '2018-01-18');
INSERT INTO `pengeluaran` VALUES ('174', '1', 'ONGKOS ANTAR MOBIL STORING', '50000', '2018-01-18');
INSERT INTO `pengeluaran` VALUES ('175', '11', 'PLAT NO BUS D26 D27', '300000', '2018-01-18');
INSERT INTO `pengeluaran` VALUES ('176', '1', 'BENSIN MOTOR HENDRA', '20000', '2018-01-18');
INSERT INTO `pengeluaran` VALUES ('177', '13', 'ROKO PA ABUNG', '25000', '2018-01-18');
INSERT INTO `pengeluaran` VALUES ('178', '11', 'OMPANG D26 D27', '200000', '2018-01-18');
INSERT INTO `pengeluaran` VALUES ('179', '13', 'BON BU CUCU RT', '250000', '2018-01-18');
INSERT INTO `pengeluaran` VALUES ('180', '9', 'KOMISI MARKETING TGL 10/1 - 16/1', '2300000', '2018-01-18');
INSERT INTO `pengeluaran` VALUES ('181', '13', 'BELI IKAN + AYAM', '150000', '2018-01-19');
INSERT INTO `pengeluaran` VALUES ('182', '6', 'HONOR HENDRA', '800000', '2018-01-18');
INSERT INTO `pengeluaran` VALUES ('183', '6', 'PULSA LILIS', '50000', '2018-01-18');
INSERT INTO `pengeluaran` VALUES ('184', '6', 'HARIAN', '410000', '2018-01-18');
INSERT INTO `pengeluaran` VALUES ('185', '4', 'SUTRISNO', '5000000', '2018-01-18');
INSERT INTO `pengeluaran` VALUES ('186', '4', 'CAHYO', '4500000', '2018-01-18');
INSERT INTO `pengeluaran` VALUES ('187', '13', 'TF WIDASARI ', '309000', '2018-01-18');
INSERT INTO `pengeluaran` VALUES ('188', '5', 'STOR HIACE EX BISMA 7/1', '600000', '2018-01-18');
INSERT INTO `pengeluaran` VALUES ('189', '13', 'PINJAMAN WA ELIS', '3000000', '2018-01-19');
INSERT INTO `pengeluaran` VALUES ('190', '13', 'EX BAJU HJ YUYUN SUMITRA', '510000', '2018-01-19');
INSERT INTO `pengeluaran` VALUES ('191', '1', 'BIAYA ADM BCA', '17000', '2018-01-19');
INSERT INTO `pengeluaran` VALUES ('192', '10', 'SEWA GARASI BESAR', '30000000', '2018-01-20');
INSERT INTO `pengeluaran` VALUES ('193', '13', 'BON BERAS', '350000', '2018-01-19');
INSERT INTO `pengeluaran` VALUES ('194', '11', 'BON KIT D14', '40000', '2018-01-19');
INSERT INTO `pengeluaran` VALUES ('195', '11', 'BENSIN EX CUCI BLOK MESIN D16', '20000', '2018-01-19');
INSERT INTO `pengeluaran` VALUES ('196', '11', 'ONGKOS BONGKAR BAN P16', '100000', '2018-01-19');
INSERT INTO `pengeluaran` VALUES ('197', '11', 'BON OD P16', '112500', '2018-01-19');
INSERT INTO `pengeluaran` VALUES ('198', '11', 'BON OD D14', '1625000', '2018-01-19');
INSERT INTO `pengeluaran` VALUES ('199', '12', 'SAMBUNGAN LISTRIK', '75000', '2018-01-19');
INSERT INTO `pengeluaran` VALUES ('200', '12', 'SAMBUNGAN LISTRIK', '190000', '2018-01-19');
INSERT INTO `pengeluaran` VALUES ('201', '13', 'BON BU CUCU', '250000', '2018-01-19');
INSERT INTO `pengeluaran` VALUES ('202', '9', 'KOMISI MARKETING TGL 17/1 DAN 18/1', '3300000', '2018-01-19');
INSERT INTO `pengeluaran` VALUES ('203', '3', 'STOR BJB', '17000000', '2018-01-19');
INSERT INTO `pengeluaran` VALUES ('204', '11', 'CICILAN GPS D26 D27', '1000000', '2018-01-19');
INSERT INTO `pengeluaran` VALUES ('205', '12', 'BON AIR AL MASOEM', '54000', '2018-01-19');
INSERT INTO `pengeluaran` VALUES ('206', '1', 'BON BENSIN MOBIL STORING', '50000', '2018-01-19');
INSERT INTO `pengeluaran` VALUES ('207', '6', 'HARIAN', '430000', '2018-01-19');
INSERT INTO `pengeluaran` VALUES ('208', '11', 'BON OD D14', '117000', '2018-01-20');
INSERT INTO `pengeluaran` VALUES ('209', '11', 'BON OD P16', '422500', '2018-01-20');
INSERT INTO `pengeluaran` VALUES ('210', '11', 'BON DEMPUL P16', '380000', '2018-01-20');
INSERT INTO `pengeluaran` VALUES ('211', '13', 'BASO PA ABUNG', '30000', '2018-01-20');
INSERT INTO `pengeluaran` VALUES ('212', '11', 'BON AMPELAS P16', '150000', '2018-01-20');
INSERT INTO `pengeluaran` VALUES ('213', '13', 'BON NIRMA', '250000', '2018-01-20');
INSERT INTO `pengeluaran` VALUES ('214', '11', 'OMPANG D30', '100000', '2018-01-20');
INSERT INTO `pengeluaran` VALUES ('215', '11', 'KAS BON MG DIDI CAT', '1500000', '2018-01-20');
INSERT INTO `pengeluaran` VALUES ('216', '6', 'HARIAN', '525000', '2018-01-20');
INSERT INTO `pengeluaran` VALUES ('217', '6', 'HARIAN', '355000', '2018-01-21');
INSERT INTO `pengeluaran` VALUES ('218', '13', 'ALFAMART', '591600', '2018-01-20');
INSERT INTO `pengeluaran` VALUES ('219', '5', 'ANGSURAN MITSUI', '10967000', '2018-01-20');
INSERT INTO `pengeluaran` VALUES ('220', '13', 'KAS FORTY', '650000', '2018-01-20');
INSERT INTO `pengeluaran` VALUES ('221', '13', 'TELKOM RMH', '428707', '2018-01-21');
INSERT INTO `pengeluaran` VALUES ('222', '12', 'TELKOM KANTOR', '393326', '2018-01-22');
INSERT INTO `pengeluaran` VALUES ('223', '5', 'CICILAN BUS MNC', '61167600', '2018-01-21');
INSERT INTO `pengeluaran` VALUES ('224', '5', 'ANGSURAN P16', '19994000', '2018-01-22');
INSERT INTO `pengeluaran` VALUES ('225', '13', 'CICILAN AGYA', '3523000', '2018-01-22');
INSERT INTO `pengeluaran` VALUES ('226', '13', 'ASURANSI MANULIFE', '530200', '2018-01-22');
INSERT INTO `pengeluaran` VALUES ('227', '13', 'PULSA PA ABUNG', '101500', '2018-01-22');
INSERT INTO `pengeluaran` VALUES ('228', '3', 'MY BANK', '15000000', '2018-01-22');
INSERT INTO `pengeluaran` VALUES ('229', '13', 'TARIKAN PRIBADI', '500000', '2018-01-22');
INSERT INTO `pengeluaran` VALUES ('230', '4', 'YEYN NURYENI', '2000000', '2018-01-23');

-- ----------------------------
-- Table structure for `sparepart`
-- ----------------------------
DROP TABLE IF EXISTS `sparepart`;
CREATE TABLE `sparepart` (
  `id_sparepart` int(10) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT NULL,
  `stok` varchar(10) DEFAULT '0',
  PRIMARY KEY (`id_sparepart`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sparepart
-- ----------------------------
INSERT INTO `sparepart` VALUES ('7', 'pirodo blk hino RG', '-2');
INSERT INTO `sparepart` VALUES ('9', 'lampu LED merah', '0');
INSERT INTO `sparepart` VALUES ('10', 'shock beker bagasi PJG', '0');
INSERT INTO `sparepart` VALUES ('11', 'H1 24v 100w hella', '4');
INSERT INTO `sparepart` VALUES ('12', 'H7 24V 100w ', '4');
INSERT INTO `sparepart` VALUES ('13', 'Boglam seri 24 V', '10');
INSERT INTO `sparepart` VALUES ('14', 'Pompa solar only OH Denso', '2');
INSERT INTO `sparepart` VALUES ('15', 'Silikon kaca black', '2');
INSERT INTO `sparepart` VALUES ('16', 'R/kit Roler sepatu pirodo', '0');
INSERT INTO `sparepart` VALUES ('17', 'pirodo belakang RG spr black', '2');
INSERT INTO `sparepart` VALUES ('18', 'pirodo PS 136', '1.5');
INSERT INTO `sparepart` VALUES ('20', 'Shocbreaker bagasi panjang', '-2');
INSERT INTO `sparepart` VALUES ('21', 'pack tutup klep RG', '0');
INSERT INTO `sparepart` VALUES ('22', 'oli rem dot 4 fuso', '4');
INSERT INTO `sparepart` VALUES ('23', 'oli stir ATF', '4');
INSERT INTO `sparepart` VALUES ('24', 'rilay lampu 24 v k 5', '4');
INSERT INTO `sparepart` VALUES ('25', 'kabel accu paralel', '2');
INSERT INTO `sparepart` VALUES ('26', 'nepel over plue hino RG', '0');
INSERT INTO `sparepart` VALUES ('27', 'Piston only PS 136 KTB', '0');
INSERT INTO `sparepart` VALUES ('28', 'Ring piston PS 136 KTB', '0');
INSERT INTO `sparepart` VALUES ('29', 'Metal jalan Std PS 136 KTB', '0');
INSERT INTO `sparepart` VALUES ('30', 'Paking deksel PS 136 KTB', '0');
INSERT INTO `sparepart` VALUES ('31', 'Paking Charter PS 136', '0');
INSERT INTO `sparepart` VALUES ('32', 'Filter oli RG 1731', '2');
INSERT INTO `sparepart` VALUES ('33', 'Filter solar atas RG', '2');
INSERT INTO `sparepart` VALUES ('34', 'Rabber greace saiken', '0');
INSERT INTO `sparepart` VALUES ('35', 'gasket trebon ', '0');
INSERT INTO `sparepart` VALUES ('36', 'gasket sealer', '0');
INSERT INTO `sparepart` VALUES ('37', 'Ban Org 750x16', '0');
INSERT INTO `sparepart` VALUES ('38', 'Per belakang no 1 PS', '-1');
INSERT INTO `sparepart` VALUES ('39', 'Pen per belakang PS', '0');
INSERT INTO `sparepart` VALUES ('40', 'Ring penper blk PS', '0');
INSERT INTO `sparepart` VALUES ('41', 'Per depan no 3 PS', '-1');
INSERT INTO `sparepart` VALUES ('42', 'Strook per depan', '-2');
INSERT INTO `sparepart` VALUES ('43', 'Baud turen depan PS', '0');
INSERT INTO `sparepart` VALUES ('44', 'Accu N 150 Nagoya', '0');
INSERT INTO `sparepart` VALUES ('45', 'Accu N100 Nagoya', '-2');
INSERT INTO `sparepart` VALUES ('46', 'Ban org 11R', '-6');

-- ----------------------------
-- Table structure for `spj`
-- ----------------------------
DROP TABLE IF EXISTS `spj`;
CREATE TABLE `spj` (
  `id_spj` int(10) NOT NULL AUTO_INCREMENT,
  `id_booking` varchar(10) DEFAULT NULL,
  `id_unit` varchar(10) DEFAULT NULL,
  `id_sopir` int(10) DEFAULT NULL,
  `id_crew` int(10) DEFAULT NULL,
  `km_awal` varchar(10) DEFAULT NULL,
  `km_akhir` varchar(10) DEFAULT NULL,
  `biaya_sopir` varchar(20) DEFAULT NULL,
  `biaya_crew` varchar(20) DEFAULT NULL,
  `biaya_solar` varchar(20) DEFAULT NULL,
  `biaya_tol` varchar(20) DEFAULT NULL,
  `biaya_parkir` varchar(20) DEFAULT NULL,
  `biaya_tips` varchar(20) DEFAULT NULL,
  `biaya_penyebrangan` varchar(20) DEFAULT NULL,
  `biaya_lain` varchar(20) DEFAULT NULL,
  `biaya_total` varchar(20) DEFAULT NULL,
  `tipe_bus` varchar(50) NOT NULL,
  `jam_jemput` varchar(50) NOT NULL,
  `tanggal_spj` varchar(50) NOT NULL,
  `jumlah_solar` varchar(20) DEFAULT '0',
  PRIMARY KEY (`id_spj`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of spj
-- ----------------------------
INSERT INTO `spj` VALUES ('1', '1', '9', null, null, null, null, '110000', '90000', '437750', '0', '0', '0', '0', '10000', '647750', '', '17:00', '2018-01-01', '85');
INSERT INTO `spj` VALUES ('2', '2', '14', null, null, null, null, '125000', '100000', '721000', '0', '0', '0', '0', '10000', '956000', '', '10:00', '2018-01-01', '140');
INSERT INTO `spj` VALUES ('3', '2', '19', null, null, null, null, '125000', '100000', '721000', '0', '0', '0', '0', '10000', '956000', '', '10:00', '2018-01-01', '140');
INSERT INTO `spj` VALUES ('4', '3', '6', null, null, null, null, '110000', '90000', '412000', '150000', '0', '0', '0', '10000', '772000', '', '16:00', '2018-01-01', '80');
INSERT INTO `spj` VALUES ('5', '3', '7', null, null, null, null, '110000', '90000', '412000', '150000', '0', '0', '0', '10000', '772000', '', '16:00', '2018-01-01', '80');
INSERT INTO `spj` VALUES ('6', '3', '8', null, null, null, null, '110000', '90000', '412000', '150000', '0', '0', '0', '10000', '772000', '', '20:00', '2018-01-01', '80');
INSERT INTO `spj` VALUES ('7', '3', '4', null, null, null, null, '110000', '90000', '412000', '150000', '0', '0', '0', '10000', '772000', '', '18:00', '2018-01-01', '80');
INSERT INTO `spj` VALUES ('8', '4', '6', null, null, null, null, '110000', '90000', '437750', '150000', '0', '250000', '0', '10000', '1047750', '', '20:00', '2018-01-02', '85');
INSERT INTO `spj` VALUES ('9', '5', '15', null, null, null, null, '125000', '100000', '721000', '', '0', '', '0', '10000', '956000', '', '04:00', '2018-01-02', '140');
INSERT INTO `spj` VALUES ('10', '5', '14', null, null, null, null, '125000', '100000', '721000', '', '0', '', '0', '10000', '956000', '', '04:00', '2018-01-02', '140');
INSERT INTO `spj` VALUES ('11', '5', '16', null, null, null, null, '125000', '100000', '721000', '', '0', '', '0', '10000', '956000', '', '04:00', '2018-01-02', '140');
INSERT INTO `spj` VALUES ('12', '5', '17', null, null, null, null, '125000', '100000', '721000', '', '0', '', '0', '10000', '956000', '', '04:00', '2018-01-02', '140');
INSERT INTO `spj` VALUES ('13', '5', '18', null, null, null, null, '125000', '100000', '721000', '', '0', '', '0', '10000', '956000', '', '04:00', '2018-01-02', '140');
INSERT INTO `spj` VALUES ('14', '5', '19', null, null, null, null, '125000', '100000', '721000', '', '0', '', '0', '10000', '956000', '', '04:00', '2018-01-02', '140');
INSERT INTO `spj` VALUES ('15', '6', '9', null, null, null, null, '110000', '90000', '412000', '', '0', '', '0', '10000', '622000', '', '04:00', '2018-01-02', '80');
INSERT INTO `spj` VALUES ('16', '7', '7', null, null, null, null, '110000', '90000', '128750', '', '0', '', '0', '10000', '338750', '', '07:00', '2018-01-02', '25');
INSERT INTO `spj` VALUES ('17', '8', '8', null, null, null, null, '110000', '90000', '437750', '', '0', '', '0', '10000', '647750', '', '19:00', '2018-01-02', '85');
INSERT INTO `spj` VALUES ('18', '9', '13', null, null, null, null, '125000', '100000', '721000', '', '0', '', '0', '10000', '956000', '', '05:00', '2018-01-02', '140');
INSERT INTO `spj` VALUES ('19', '10', '1', null, null, null, null, '110000', '90000', '412000', '150000', '0', '', '0', '10000', '772000', '', '', '2018-01-02', '80');
INSERT INTO `spj` VALUES ('20', '10', '3', null, null, null, null, '110000', '90000', '412000', '150000', '0', '', '0', '10000', '772000', '', '', '2018-01-02', '80');
INSERT INTO `spj` VALUES ('21', '12', '10', null, null, null, null, '250000', '200000', '1030000', '400000', '0', '', '0', '20000', '1900000', '', '00:00', '2018-01-03', '200');
INSERT INTO `spj` VALUES ('22', '13', '18', null, null, null, null, '1250000', '500000', '3347500', '', '0', '', '0', '50000', '5147500', '', '04:00', '2018-01-03', '650');
INSERT INTO `spj` VALUES ('23', '14', '11', null, null, null, null, '250000', '200000', '1236000', '', '0', '', '0', '20000', '1706000', '', '', '2018-01-03', '240');
INSERT INTO `spj` VALUES ('24', '15', '7', null, null, null, null, '220000', '180000', '618000', '', '0', '', '0', '20000', '1038000', '', '01:00', '2018-01-03', '120');
INSERT INTO `spj` VALUES ('25', '15', '12', null, null, null, null, '250000', '200000', '1133000', '', '0', '', '0', '20000', '1603000', '', '01:00', '2018-01-03', '220');
INSERT INTO `spj` VALUES ('26', '15', '14', null, null, null, null, '250000', '200000', '1133000', '', '0', '', '0', '20000', '1603000', '', '', '2018-01-03', '220');
INSERT INTO `spj` VALUES ('27', '15', '15', null, null, null, null, '250000', '200000', '1133000', '', '0', '', '0', '20000', '1603000', '', '01:00', '2018-01-03', '220');
INSERT INTO `spj` VALUES ('28', '16', '4', null, null, null, null, '110000', '90000', '489250', '', '0', '', '0', '10000', '699250', '', '04:00', '2018-01-03', '95');
INSERT INTO `spj` VALUES ('29', '17', '16', null, null, null, null, '125000', '100000', '772500', '', '0', '', '0', '10000', '1007500', '', '01:00', '2018-01-04', '150');
INSERT INTO `spj` VALUES ('30', '17', '17', null, null, null, null, '125000', '100000', '772500', '', '0', '', '0', '10000', '1007500', '', '01:00', '2018-01-04', '150');
INSERT INTO `spj` VALUES ('31', '17', '19', null, null, null, null, '125000', '100000', '772500', '', '0', '', '0', '10000', '1007500', '', '01:00', '2018-01-04', '150');
INSERT INTO `spj` VALUES ('32', '18', '3', null, null, null, null, '110000', '90000', '412000', '', '0', '', '0', '10000', '622000', '', '', '2018-01-04', '80');
INSERT INTO `spj` VALUES ('33', '19', '19', null, null, null, null, '375000', '300000', '2060000', '', '0', '', '0', '30000', '2765000', '', '14:00', '2018-01-05', '400');
INSERT INTO `spj` VALUES ('34', '22', '15', null, null, null, null, '250000', '200000', '1030000', '', '0', '', '0', '20000', '1500000', '', '20:00', '2018-01-06', '200');
INSERT INTO `spj` VALUES ('35', '23', '14', null, null, null, null, '250000', '200000', '1184500', '', '0', '0', '0', '20000', '1654500', '', '01:00', '2018-01-06', '230');
INSERT INTO `spj` VALUES ('36', '24', '12', null, null, null, null, '125000', '100000', '412000', '', '0', '0', '0', '10000', '647000', '', '06:00', '2018-01-06', '80');
INSERT INTO `spj` VALUES ('37', '25', '11', null, null, null, null, '125000', '100000', '257500', '', '0', '0', '0', '10000', '492500', '', '', '2018-01-06', '50');
INSERT INTO `spj` VALUES ('38', '26', '3', null, null, null, null, '220000', '180000', '618000', '', '0', '0', '0', '20000', '1038000', '', '20:00', '2018-01-06', '120');
INSERT INTO `spj` VALUES ('39', '27', '17', null, null, null, null, '125000', '100000', '618000', '', '0', '0', '0', '10000', '853000', '', '06:00', '2018-01-06', '120');
INSERT INTO `spj` VALUES ('40', '28', '13', null, null, null, null, '250000', '200000', '1133000', '', '0', '0', '0', '20000', '1603000', '', '20:00', '2018-01-06', '220');
INSERT INTO `spj` VALUES ('41', '29', '10', null, null, null, null, '125000', '100000', '618000', '', '0', '0', '0', '10000', '853000', '', '10:00', '2018-01-06', '120');
INSERT INTO `spj` VALUES ('42', '31', '8', null, null, null, null, '110000', '90000', '180250', '', '0', '0', '0', '10000', '390250', '', '06:00', '2018-01-06', '35');
INSERT INTO `spj` VALUES ('43', '20', '9', null, null, null, null, '220000', '180000', '618000', '0', '0', '0', '0', '20000', '1038000', '', '04:00', '2018-01-06', '120');
INSERT INTO `spj` VALUES ('44', '21', '21', null, null, null, null, '130000', '', '206000', '0', '0', '0', '0', '5000', '341000', '', '05:00', '2018-01-06', '40');
INSERT INTO `spj` VALUES ('45', '30', '20', null, null, null, null, '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '00:00', '2018-01-06', '0');
INSERT INTO `spj` VALUES ('46', '36', '20', null, null, null, null, '130000', '0', '180250', '0', '0', '0', '0', '5000', '315250', '', '06:00', '2018-01-07', '35');
INSERT INTO `spj` VALUES ('47', '38', '1', null, null, null, null, '110000', '90000', '180250', '0', '0', '0', '0', '10000', '390250', '', '06:00', '2018-01-07', '35');
INSERT INTO `spj` VALUES ('48', '147', '1', null, null, null, null, '110000', '90000', '103000', '0', '15000', '0', '0', '10000', '328000', '', '07:00', '2018-01-18', '20');
INSERT INTO `spj` VALUES ('49', '147', '6', null, null, null, null, '110000', '90000', '103000', '0', '15000', '0', '0', '10000', '328000', '', '07:00', '2018-01-18', '20');
INSERT INTO `spj` VALUES ('50', '147', '25', null, null, null, null, '110000', '90000', '103000', '0', '15000', '0', '0', '10000', '328000', '', '07:00', '2018-01-18', '20');
INSERT INTO `spj` VALUES ('51', '147', '26', null, null, null, null, '110000', '90000', '103000', '0', '15000', '0', '0', '10000', '328000', '', '07:00', '2018-01-18', '20');
INSERT INTO `spj` VALUES ('52', '122', '10', null, null, null, null, '125000', '100000', '412000', '0', '', '0', '0', '10000', '647000', '', '04:00', '2018-01-18', '80');
INSERT INTO `spj` VALUES ('53', '144', '11', null, null, null, null, '125000', '100000', '360500', '0', '0', '0', '0', '10000', '595500', '', '07:00', '2018-01-18', '70');
INSERT INTO `spj` VALUES ('54', '163', '20', null, null, null, null, '130000', '0', '0', '0', '0', '0', '0', '5000', '135000', '', '20:00', '2018-01-18', '0');
INSERT INTO `spj` VALUES ('55', '52', '8', null, null, null, null, '110000', '90000', '257500', '0', '0', '0', '0', '10000', '467500', '', '04:00', '2018-01-20', '50');
INSERT INTO `spj` VALUES ('56', '64', '10', null, null, null, null, '250000', '200000', '927000', '0', '0', '0', '0', '20000', '1397000', '', '18:00', '2018-01-20', '180');
INSERT INTO `spj` VALUES ('57', '171', '11', null, null, null, null, '125000', '100000', '463500', '0', '0', '0', '0', '10000', '698500', '', '05:00', '2018-01-21', '90');
INSERT INTO `spj` VALUES ('58', '106', '16', null, null, null, null, '125000', '100000', '566500', '0', '0', '0', '0', '10000', '801500', '', '03:00', '2018-01-21', '110');
INSERT INTO `spj` VALUES ('59', '77', '8', null, null, null, null, '110000', '90000', '463500', '0', '0', '0', '0', '10000', '673500', '', '05:00', '2018-01-21', '90');
INSERT INTO `spj` VALUES ('60', '77', '7', null, null, null, null, '110000', '90000', '463500', '0', '0', '0', '0', '10000', '673500', '', '05:00', '2018-01-21', '90');
INSERT INTO `spj` VALUES ('61', '103', '17', null, null, null, null, '125000', '100000', '721000', '0', '0', '0', '0', '10000', '956000', '', '15:00', '2018-01-21', '140');
INSERT INTO `spj` VALUES ('62', '172', '25', null, null, null, null, '220000', '180000', '154500', '0', '0', '0', '0', '20000', '574500', '', '05:00', '2018-01-21', '30');
INSERT INTO `spj` VALUES ('63', '118', '14', null, null, null, null, '125000', '100000', '772500', '0', '0', '0', '0', '10000', '1007500', '', '05:00', '2018-01-21', '150');
INSERT INTO `spj` VALUES ('64', '124', '20', null, null, null, null, '130000', '0', '154500', '0', '0', '0', '0', '5000', '289500', '', '05:00', '2018-01-21', '30');
INSERT INTO `spj` VALUES ('65', '145', '13', null, null, null, null, '125000', '100000', '721000', '0', '0', '0', '0', '10000', '956000', '', '07:00', '2018-01-21', '140');
INSERT INTO `spj` VALUES ('66', '151', '1', null, null, null, null, '110000', '90000', '180250', '0', '0', '0', '0', '10000', '390250', '', '06:00', '2018-01-21', '35');
INSERT INTO `spj` VALUES ('67', '173', '26', null, null, null, null, '110000', '90000', '309000', '0', '0', '0', '0', '10000', '519000', '', '07:00', '2018-01-21', '60');
INSERT INTO `spj` VALUES ('68', '174', '15', null, null, null, null, '125000', '100000', '721000', '0', '0', '0', '0', '10000', '956000', '', '19:00', '2018-01-21', '140');
INSERT INTO `spj` VALUES ('70', '179', '14', null, null, null, null, '375000', '300000', '2060000', '0', '0', '0', '0', '30000', '2765000', '', '05:00', '2018-01-22', '400');
INSERT INTO `spj` VALUES ('71', '179', '26', null, null, null, null, '330000', '270000', '1133000', '0', '0', '0', '0', '30000', '1763000', '', '05:00', '2018-01-22', '220');
INSERT INTO `spj` VALUES ('72', '148', '11', null, null, null, null, '125000', '100000', '772500', '0', '0', '0', '0', '10000', '1007500', '', '00:00', '2018-01-19', '150');
INSERT INTO `spj` VALUES ('73', '165', '19', null, null, null, null, '125000', '100000', '206000', '0', '0', '0', '0', '10000', '441000', '', '00:00', '2018-01-19', '40');
INSERT INTO `spj` VALUES ('74', '149', '10', null, null, null, null, '187500', '150000', '1133000', '0', '0', '0', '0', '10000', '1480500', '', '', '2018-01-19', '220');
INSERT INTO `spj` VALUES ('75', '166', '1', null, null, null, null, '220000', '180000', '257500', '20000', '0', '0', '0', '20000', '697500', '', '00:00', '2018-01-19', '50');
INSERT INTO `spj` VALUES ('76', '166', '6', null, null, null, null, '220000', '180000', '257500', '20000', '0', '0', '0', '20000', '697500', '', '', '2018-01-19', '50');
INSERT INTO `spj` VALUES ('77', '177', '16', null, null, null, null, '375000', '300000', '2060000', '0', '0', '0', '0', '30000', '2765000', '', '02:00', '2018-01-23', '400');
INSERT INTO `spj` VALUES ('78', '185', '8', null, null, null, null, '220000', '180000', '618000', '0', '0', '0', '0', '20000', '1038000', '', '02:00', '2018-01-23', '120');
INSERT INTO `spj` VALUES ('79', '185', '15', null, null, null, null, '250000', '200000', '1133000', '0', '0', '0', '0', '20000', '1603000', '', '02:00', '2018-01-23', '220');
INSERT INTO `spj` VALUES ('80', '175', '7', null, null, null, null, '110000', '90000', '257500', '0', '0', '0', '0', '10000', '467500', '', '05:00', '2018-01-23', '50');
INSERT INTO `spj` VALUES ('81', '76', '17', null, null, null, null, '125000', '100000', '463500', '0', '0', '0', '0', '10000', '698500', '', '05:00', '2018-01-23', '90');
INSERT INTO `spj` VALUES ('82', '76', '18', null, null, null, null, '125000', '100000', '463500', '0', '0', '0', '0', '10000', '698500', '', '05:00', '2018-01-23', '90');
INSERT INTO `spj` VALUES ('83', '110', '12', null, null, null, null, '125000', '100000', '772500', '20000', '0', '0', '0', '10000', '1027500', '', '03:00', '2018-01-23', '150');
INSERT INTO `spj` VALUES ('84', '75', '10', null, null, null, null, '125000', '100000', '927000', '0', '0', '0', '0', '100000', '1252000', '', '00:00', '2018-01-24', '180');
INSERT INTO `spj` VALUES ('85', '75', '11', null, null, null, null, '125000', '100000', '927000', '0', '0', '0', '0', '100000', '1252000', '', '00:00', '2018-01-24', '180');
INSERT INTO `spj` VALUES ('86', '75', '12', null, null, null, null, '125000', '100000', '927000', '0', '0', '0', '0', '100000', '1252000', '', '00:00', '2018-01-24', '180');
INSERT INTO `spj` VALUES ('87', '75', '15', null, null, null, null, '125000', '100000', '927000', '0', '0', '0', '0', '100000', '1252000', '', '00:00', '2018-01-24', '180');
INSERT INTO `spj` VALUES ('88', '160', '20', null, null, null, null, '130000', '', '128750', '0', '0', '0', '0', '5000', '263750', '', '05:00', '2018-01-24', '25');
INSERT INTO `spj` VALUES ('89', '180', '9', null, null, null, null, '110000', '90000', '154500', '0', '0', '0', '0', '10000', '364500', '', '06:00', '2018-01-24', '30');
INSERT INTO `spj` VALUES ('90', '184', '25', null, null, null, null, '110000', '90000', '180250', '0', '0', '0', '0', '10000', '390250', '', '06:00', '2018-01-24', '35');
INSERT INTO `spj` VALUES ('91', '191', '19', null, null, null, null, '125000', '100000', '721000', '0', '0', '0', '0', '10000', '956000', '', '01:00', '2018-01-24', '140');

-- ----------------------------
-- Table structure for `supplier`
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier` (
  `id_supplier` int(10) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_supplier`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of supplier
-- ----------------------------
INSERT INTO `supplier` VALUES ('2', 'Berkah Mandiri Motor');
INSERT INTO `supplier` VALUES ('3', 'Barokah');
INSERT INTO `supplier` VALUES ('4', 'Darma ban');
INSERT INTO `supplier` VALUES ('5', 'Garasi');
INSERT INTO `supplier` VALUES ('7', 'Surya delima');
INSERT INTO `supplier` VALUES ('8', 'Dua saudara');

-- ----------------------------
-- Table structure for `unit`
-- ----------------------------
DROP TABLE IF EXISTS `unit`;
CREATE TABLE `unit` (
  `id_unit` int(10) NOT NULL AUTO_INCREMENT,
  `seri` varchar(10) DEFAULT NULL,
  `no_polisi` varchar(10) DEFAULT NULL,
  `stnk` date DEFAULT NULL,
  `kir` date DEFAULT NULL,
  PRIMARY KEY (`id_unit`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of unit
-- ----------------------------
INSERT INTO `unit` VALUES ('1', 'D07', 'D 7512 VC', '2018-12-05', '2018-01-06');
INSERT INTO `unit` VALUES ('3', 'D10', 'D 7634 AN', '2019-04-09', '2018-06-22');
INSERT INTO `unit` VALUES ('4', 'D14', 'D 7519 VC', '2018-07-10', '2018-02-08');
INSERT INTO `unit` VALUES ('6', 'D16', 'D 7522 VC', '2017-12-13', '2018-01-03');
INSERT INTO `unit` VALUES ('7', 'D17', 'D 7538 VC ', '2018-04-26', '2018-06-08');
INSERT INTO `unit` VALUES ('8', 'D20', 'D 7563 VC', '2018-07-26', '2018-02-01');
INSERT INTO `unit` VALUES ('9', 'D26', '', '0000-00-00', '0000-00-00');
INSERT INTO `unit` VALUES ('10', 'P05', '', '0000-00-00', '0000-00-00');
INSERT INTO `unit` VALUES ('11', 'P06', 'F 7888 SJ', '2018-06-28', '2018-04-03');
INSERT INTO `unit` VALUES ('12', 'P07', 'D 7536 VC', '2018-12-02', '2018-12-09');
INSERT INTO `unit` VALUES ('13', 'P10', 'D 7541 VC', '2018-11-22', '2018-12-14');
INSERT INTO `unit` VALUES ('14', 'P11', 'D 7540 VC', '2018-10-03', '2018-05-10');
INSERT INTO `unit` VALUES ('15', 'P17', 'D 7554 VC', '2018-01-20', '2018-01-31');
INSERT INTO `unit` VALUES ('16', 'P26', 'D 7559 VC', '2018-06-03', '2018-06-08');
INSERT INTO `unit` VALUES ('17', 'P27', 'D 7561 VC', '2018-06-03', '2018-06-08');
INSERT INTO `unit` VALUES ('18', 'P30', 'D 7565 VC', '2018-11-16', '2018-05-20');
INSERT INTO `unit` VALUES ('19', 'P31', 'D 7566 VC', '2018-11-16', '2018-05-20');
INSERT INTO `unit` VALUES ('20', 'ELF', 'D 7539 VC', '2018-06-14', '2018-06-21');
INSERT INTO `unit` VALUES ('21', 'HIACE', '', '0000-00-00', '0000-00-00');
INSERT INTO `unit` VALUES ('22', 'BUS LAIN', '', '0000-00-00', '0000-00-00');
INSERT INTO `unit` VALUES ('25', 'D27', '', '0000-00-00', '0000-00-00');
INSERT INTO `unit` VALUES ('26', 'D30', '', '0000-00-00', '0000-00-00');
INSERT INTO `unit` VALUES ('27', 'P16', 'AA ', '0000-00-00', '0000-00-00');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `tipe_user` varchar(10) DEFAULT NULL,
  `nama` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('4', 'admin', '90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad', 'ADMIN', '');
