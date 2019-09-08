/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100316
 Source Host           : localhost:3306
 Source Schema         : pariwisata

 Target Server Type    : MySQL
 Target Server Version : 100316
 File Encoding         : 65001

 Date: 09/09/2019 05:27:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for pariwisata
-- ----------------------------
DROP TABLE IF EXISTS `pariwisata`;
CREATE TABLE `pariwisata`  (
  `id_pariwisata` int(5) NOT NULL,
  `nama_pariwisata` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `lat` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `long` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_pariwisata`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pariwisata
-- ----------------------------
INSERT INTO `pariwisata` VALUES (1, 'Lawang Sewu', 'Jl. Pemuda, Sekayu, Semarang T', '-6.9839838', '110.4097825');
INSERT INTO `pariwisata` VALUES (2, 'Kuil Sam Poo Kong', 'Jl. Simongan No.129, Bongsari,', '-6.9959811', '110.3961827');
INSERT INTO `pariwisata` VALUES (3, 'Masjid Agung Jawa Tengah', 'Jl. Gajah Raya, Sambirejo, Gay', '-6.9836792', '110.443832');
INSERT INTO `pariwisata` VALUES (4, 'Brown Canyon Semarang', 'Rowosari, Tembalang, Semarang ', '-7.0565487', '110.4839172');
INSERT INTO `pariwisata` VALUES (5, 'Gereja Dome Blenduk', 'Jl. Letjen Suprapto No.32, Tj.', '-6.9681578', '110.4252718');
INSERT INTO `pariwisata` VALUES (6, 'Kota Lama Semarang', 'Bandarharjo, North Semarang, S', '-6.9682652', '110.4243436');
INSERT INTO `pariwisata` VALUES (7, 'Tugu Muda', 'Jl. Yudistira No.5, Pendrikan ', '-6.9843228', '110.4071145');
INSERT INTO `pariwisata` VALUES (8, 'Kampung Pelangi', 'Jl. DR. Sutomo No.89, Randusar', '-6.9888768', '110.4061895');
INSERT INTO `pariwisata` VALUES (9, 'Taman Indonesia Kaya', 'Jl. Menteri Supeno, Mugassari,', '-6.9924063', '110.4178206');
INSERT INTO `pariwisata` VALUES (10, 'Grand Maerakaca Kota Semarang', 'Tawangsari, West Semarang, Sem', '-6.9823905', '110.3949371');

SET FOREIGN_KEY_CHECKS = 1;
