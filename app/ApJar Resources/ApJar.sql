/*
 Navicat MySQL Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost:3306
 Source Schema         : apjar

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 11/12/2020 07:13:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for apjar_faculty
-- ----------------------------
DROP TABLE IF EXISTS `apjar_faculty`;
CREATE TABLE `apjar_faculty` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` char(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `upi_code` char(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `nip` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `front_title` varchar(15) DEFAULT NULL,
  `rear_title` varchar(20) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `status` char(7) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `duty` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `specialization` int DEFAULT NULL,
  `homebase` char(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of apjar_faculty
-- ----------------------------
BEGIN;
INSERT INTO `apjar_faculty` VALUES (1, 'BMY', '1846', '196301091994022001', 5, 'Prof. Dr. Hj.', 'M.Si', 'Budi', 'Mulyanti', 'Lecture', NULL, 3, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `apjar_faculty` VALUES (2, 'AGF', '2055', '197211131999031001', 10, 'Dr.', 'S.Pd. M.Si', 'Ade Gafar', 'Abdullah', 'Lecture', NULL, 1, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `apjar_faculty` VALUES (3, 'DDW', '2934', '197608272009121001', 342, NULL, 'Ph.D', 'Didin', 'Wahyudin', 'Lecture', NULL, 1, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `apjar_faculty` VALUES (4, 'INK', '2338', '197709082003121002', 13, NULL, 'Ph.D', 'Iwan', 'Kustiawan', 'Lecture', 'E5051', 3, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `apjar_faculty` VALUES (5, 'DNK', '2654', '198006232008121002', 19, NULL, 'Ph.D', 'Dandhi', 'Kuswardhana', 'Lecture', 'EI', 1, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `apjar_faculty` VALUES (6, 'DLH', '2409', '196106041986031001', 3, 'Dr. H.', 'MT.', 'Dadang Lukman', 'Hakim', 'Lecture', NULL, 2, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `apjar_faculty` VALUES (7, 'SMT', '0541', '195507051981031005', 23, 'Prof. Dr.', 'MSIE.', NULL, 'Sumarto', 'Lecture', NULL, 2, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `apjar_faculty` VALUES (8, 'BCH', '0539', '195512042981031002', 85, 'Prof. Dr. H.', 'MSIE.', 'Bachtiar', 'Hasan', 'Lecture', NULL, 2, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `apjar_faculty` VALUES (9, 'ELM', '1751', '196404171992021001', 26, 'Dr.', 'M.Si.', 'Elih', 'Mulyana', 'Lecture', NULL, 2, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `apjar_faculty` VALUES (10, 'YYS', '0766', '195708051985031003', 21, 'Drs.', 'ST., M.Pd.', 'Yoyo', 'Somantri', 'Lecture', NULL, 1, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `apjar_faculty` VALUES (11, 'MMS', '2203', '197201192001121001', 11, 'Dr.', 'S.Pd. MT.', 'Maman', 'Somantri', 'Lecture', 'TE', 2, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `apjar_faculty` VALUES (12, 'SSE', '2202', '197311222001122002', 14, 'Dr.', 'S.Pd. MT.', 'Siscka', 'Elvyanti', 'Lecture', NULL, 3, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `apjar_faculty` VALUES (13, 'ARJ', '2108', '196406071995122001', 8, 'Ir.', 'MT.', 'Arjuni Budi', 'Pantjawati', 'Lecture', 'EK', 3, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `apjar_faculty` VALUES (14, 'ERH', '2407', '197605272001121002', 20, NULL, 'S.Pd. MT.', 'Erik', 'Haritman', 'Lecture', NULL, 1, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `apjar_faculty` VALUES (15, 'AHS', '2410', '197208262005011001', 71, NULL, 'MT.', 'Agus Heri Setya', 'Budi', 'Lecture', NULL, 3, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `apjar_faculty` VALUES (16, 'HSB', '2408', '197407162001121003', 17, 'Dr.', 'MT.', NULL, 'Hasbullah', 'Lecture', NULL, 2, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `apjar_faculty` VALUES (17, 'YDM', '1766', '196307271993021001', 15, 'Dr. H.', 'MT.', 'Yadi', 'Mulyadi', 'Lecture', 'E5231', 2, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `apjar_faculty` VALUES (18, 'TSM', '1748', '196410071991011001', 24, 'Dr.', 'MT.', 'Tasma ', 'Sucita', 'Lecture', 'E0451', 2, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `apjar_faculty` VALUES (19, 'MKH', '0535', '195311101980021001', 83, 'Prof. Dr. H.', 'M.Pd.', NULL, 'Mukhidin', 'Lecture', NULL, 3, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `apjar_faculty` VALUES (20, 'TSR', '1038', '196311211986032002', 27, 'Dr.', 'M.Pd', 'Tuti', 'Suartini', 'Lecture', NULL, 3, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `apjar_faculty` VALUES (21, 'IWR', '1036', '195802141986031002', 25, 'Dr.', 'ST. M.Pd.', 'I Wayan', 'Ratnata', 'Lecture', NULL, 2, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `apjar_faculty` VALUES (22, 'WAS', '2107', '197008081997021001', 18, NULL, 'MT.', 'Wasimudin Surya', 'Saputra', 'Lecture', NULL, 2, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `apjar_faculty` VALUES (23, 'TMH', '2745', '198204282009121006', 9, '', 'MT.', 'Tommi', 'Hariyadi', 'Lecture', NULL, 3, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `apjar_faculty` VALUES (24, 'BTM', '1235', '196103091986101001', 22, 'Dr. H.', 'MSIE.', 'Bambang ', 'Trisno', 'Lecture', NULL, 2, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `apjar_faculty` VALUES (25, 'JKR', '0767', '195912311985031022', 66, 'Dr.', 'M.Sc.', 'Jaja', 'Kustija', 'Lecture', NULL, 1, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `apjar_faculty` VALUES (26, 'AIP', '2355', '197004162005011016', 2, 'Dr.', 'MT.', 'Aip', 'Saripudin', 'Lecture', NULL, 3, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `apjar_faculty` VALUES (27, 'EAJ', '0755', '195508261981011001', 16, 'Dr.', 'M.Pd. MT.', 'Enjang A.', 'Juanda', 'Lecture', NULL, 3, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `apjar_faculty` VALUES (28, 'WWP', '1848', '196710261994031001', 12, 'Drs.', 'S.Pd. M.Si.', 'Wawan', 'Purnama', 'Lecture', NULL, 3, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `apjar_faculty` VALUES (29, 'REP', '3186', '920200419881019101', 339, '', 'S.Pd., M.Sc.', 'Roer', 'Eka Pawinanto', 'Lecture', NULL, 3, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `apjar_faculty` VALUES (30, 'MAR', '3178', '920200419921028101', 337, NULL, 'S.Pd., MT.', 'Muhammad ', 'Adli Rizqullah', 'Lecture', NULL, 3, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `apjar_faculty` VALUES (31, 'RPR', '3172', '920200419910418101', 338, NULL, 'S.Pd., MT.', 'Resa', 'Pramudita', 'Lecture', NULL, 3, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `apjar_faculty` VALUES (32, 'NFA', '3179', '920200419930905101', 336, NULL, 'S.Pd., MT.', 'Nurul', 'Fahmi', 'Lecture', NULL, 3, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `apjar_faculty` VALUES (33, 'STA', '3183', '920200419960203201', 340, NULL, 'ST., MT., ', 'Silmi', 'Ath Thahirah Al Azhi', 'Lecture', NULL, 3, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `apjar_faculty` VALUES (34, 'MAQ', '3204', '920200419890407201', 341, NULL, 'S.Si., MT.', 'Mariya', 'Al Qibtiya', 'Lecture', NULL, 3, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
COMMIT;

-- ----------------------------
-- Table structure for apjar_student
-- ----------------------------
DROP TABLE IF EXISTS `apjar_student`;
CREATE TABLE `apjar_student` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `study_program` int DEFAULT NULL,
  `student_number` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `specialization` int DEFAULT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `supervisor` int DEFAULT NULL,
  `GPA` char(4) DEFAULT NULL,
  `status` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone` char(13) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=316 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of apjar_student
-- ----------------------------
BEGIN;
INSERT INTO `apjar_student` VALUES (1, 43, 2, '1503510', 2, 'Ibnu Malik', 'Al Hamas', 6, NULL, NULL, '085864153600', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (2, 30, 2, '1204127', 2, 'Muhammad Fitra', 'Ilhami', 17, NULL, NULL, '081214151043', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (3, 28, 1, '1204283', 1, 'wisnu', 'sukma wardana', 19, NULL, NULL, '08986059050', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (4, 29, 1, '1204926', 1, 'moh', 'zulfikar', 28, NULL, NULL, '089667860082', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (5, 45, 1, '1203590', 1, 'Allan', 'Anugraha Maharbid', 18, NULL, NULL, '082319018087', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (6, 42, 2, '1500400', 2, 'Alfin', 'Agusman Noor', 6, NULL, NULL, '087797878550', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (7, 46, 1, '1200589', 3, 'Hary', 'Dwyan Fitriana', 19, NULL, NULL, '082118923331', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (8, 62, 1, '1203604', 1, 'Olsa', 'Givana', 18, NULL, NULL, '082295065593', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (9, 33, 2, '1504316', 2, 'Rizal Daffa', 'Noer Sidik', 6, NULL, NULL, '082216768897', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (10, 32, 2, '1504873', 2, 'Trisina', 'Simanjuntak', 23, NULL, NULL, '089693824882', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (11, 48, 1, '1200356', 2, 'Ayu', 'Rakhmawati', 18, NULL, NULL, '083824534545', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (12, 55, 2, '1505550', 3, 'Ahmad Raihan', 'Abdurrahman', 23, NULL, NULL, '085524434597', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (13, 37, 2, '1500550', 3, 'Yudha', 'Hardiansyah', 6, NULL, NULL, '081222960086', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (14, 34, 2, '1200342', 2, 'Satrio', 'Budi Prasetyo', 23, NULL, NULL, '082128737852', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (15, 49, 1, '1204044', 2, 'Emil', 'Ramadhan', 19, NULL, NULL, '089695971650', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (16, 65, 1, '1203169', 2, 'Zaenal', 'Mutaqin', 18, NULL, NULL, '085864901450', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (17, 64, 1, '1206255', 3, 'OKKY', 'OKTA', 12, NULL, NULL, '081214622277', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (18, 31, 1, '1200500', 3, 'teguh', 'hermayadi', 19, NULL, NULL, '081320981684', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (19, 36, 2, '1506365', 2, 'Ivan', 'Hadian', 23, NULL, NULL, '089658108947', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (20, 50, 2, '1500818', 2, 'Dimas', 'Ariwibowo', 6, NULL, NULL, '081222401847', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (21, 58, 2, '1504381', 2, 'Muhammad', 'Fiqri Affan', 6, NULL, NULL, '087710311900', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (22, 54, 2, '1506367', 2, 'Rizka', 'Adhiswara', 23, NULL, NULL, '087825562598', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (23, 61, 2, '1501224', 3, 'Farid', 'Miftah Fauzi', 6, NULL, NULL, '083895298745', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (24, 40, 2, '1506032', 3, 'Nadya', 'Richna Fitri', 23, NULL, NULL, '081220372891', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (25, 47, 2, '1503711', 2, 'Deri Rio', 'Heryanto', 6, NULL, NULL, '081323555597', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (26, 41, 2, '1506366', 3, 'Julian Serly', 'Ayu', 23, NULL, NULL, '085320542222', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (27, 56, 3, '1506850', 2, 'Dinda', 'Fatirahmah', 28, NULL, NULL, '082321460867', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (28, 52, 2, '1500538', 2, 'ilza fauzan', 'ramadhan', 6, NULL, NULL, '082219349331', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (29, 57, 3, '1506006', 2, 'Fahmi', 'Chaerul Fadillah', 28, NULL, NULL, '082215262458', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (30, 53, 2, '1500972', 2, 'Irvan', 'Virgian', 6, NULL, NULL, '085703179962', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (31, 70, 1, '1301883', 2, 'Febrian Aditya', 'Ramadhan', 15, NULL, NULL, '08992899064', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (32, 69, 2, '1403769', 2, 'Fachrizal', 'Alfa Z.', 2, NULL, NULL, '081220620800', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (33, 76, 1, '1206035', 2, 'syahroni', 'anwar', 12, NULL, NULL, '087742034652', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (34, 78, 1, '1200727', 2, 'Moh Hafiezh', 'Annur', 19, NULL, NULL, '08996304086', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (35, 39, 2, '1504417', 2, 'Khansa Ratri', 'Haniya', 6, NULL, NULL, '081222491605', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (36, 79, 2, '1204286', 2, 'M Fachmi', 'Fachthurahman H', 17, NULL, NULL, '082295069202', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (37, 68, 1, '1205950', 3, 'Abdur rahman', 'Arraafi', 12, NULL, NULL, '082130510706', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (38, 72, 1, '1503467', 1, 'Muhammad Husni', 'Muttaqin', 15, NULL, NULL, '087720279644', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (39, 77, 2, '1505307', 2, 'Wahyu', 'Alfarobbi', 23, NULL, NULL, '08112346298', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (40, 59, 2, '1501358', 2, 'Ruly', 'Nuraliman', 6, NULL, NULL, '089639811758', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (41, 81, 1, '1204019', 2, 'Risyad Basyir', 'Ibrahim', 19, NULL, NULL, '08990491508', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (42, 86, 1, '1400275', 1, 'Chindy', 'Berliannanda', 10, NULL, NULL, '08156298240', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (43, 87, 1, '1203616', 3, 'Asro', 'Laila', 18, NULL, NULL, '083112708833', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (44, 51, 2, '1500812', 2, 'Faqih', 'Fakhruddin', 6, NULL, NULL, '081902753442', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (45, 90, 1, '1200728', 3, 'Asep', 'Syahbudi', 18, NULL, NULL, '08987306449', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (46, 80, 1, '1501831', 1, 'Muhammad Isa', 'Rahmani', 9, NULL, NULL, '089663288966', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (47, 91, 1, '1301473', 1, 'Firsya', 'Habibi', 13, NULL, NULL, '085860401072', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (48, 84, 1, '1400047', 2, 'Irfan', 'Nuroni', 10, NULL, NULL, '08156298240', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (49, 60, 2, '1501933', 2, 'Agung Yuda', 'Sulaksana', 6, NULL, NULL, '087820533306', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (50, 92, 1, '1304095', 3, 'M. Asep', 'Kurnia', 17, NULL, NULL, '085659884977', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (51, 105, 1, '1504586', 2, 'M. Habibul', 'Fallah', 18, NULL, NULL, '089657718793', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (52, 38, 1, '1501088', 3, 'Putri Ayu', 'Kencana', 15, NULL, NULL, '089655880641', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (53, 93, 1, '1506923', 1, 'Cici Puspita', 'Dewi', 20, NULL, NULL, '087821104227', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (54, 74, 1, '1506342', 3, 'Rini', 'Lestriani', 20, NULL, NULL, '085294179662', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (55, 75, 1, '1500051', 3, 'Silma', 'Kamilah', 11, NULL, NULL, '083825745106', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (56, 113, 2, '1302080', 2, 'Arif', 'Muhammad Shidiq', 25, NULL, NULL, '087784772190', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (57, 111, 1, '1501987', 3, 'Nurul', 'Annisa Septiani', 9, NULL, NULL, '081222871627', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (58, 107, 1, '1506337', 1, 'Muhamad Iqbal', 'Hambali', 18, NULL, NULL, '089698728271', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (59, 108, 1, '1501403', 2, 'Chandra', 'Maulidya', 9, NULL, NULL, '087796888358', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (60, 103, 1, '1500591', 3, 'Shita', 'Herfiah', 9, NULL, NULL, '081214627276', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (61, 88, 1, '1506917', 3, 'Dadan', 'Darmawan', 20, NULL, NULL, '082214060731', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (62, 99, 1, '1504210', 1, 'Aditya Taufanbayu', 'Nugraha', 15, NULL, NULL, '08992899064', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (63, 112, 1, '1503449', 3, 'Novia', 'Karostiani', 15, NULL, NULL, '082316620932', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (64, 109, 1, '1203972', 2, 'Sigit', 'Nuryana', 28, NULL, NULL, '087733777138', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (65, 44, 2, '1504696', 3, 'Regita', 'Nurmalita Yuniar', 23, NULL, NULL, '895422674042', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (66, 119, 1, '1506776', 3, 'Hilda', 'Yusri Fila Salazar', 20, NULL, NULL, '082126088598', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (67, 89, 1, '1501317', 3, 'Inggrid Fadilah', 'Akhmad', 9, NULL, NULL, '081322750646', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (68, 114, 1, '1503764', 3, 'Fikri', 'Arif Wicaksana', 15, NULL, NULL, '082127359370', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (69, 98, 1, '1304081', 1, 'Nur', 'Fajar Sarwati Edi', 17, NULL, NULL, '081573693774', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (70, 116, 1, '1204109', 3, 'Rizan', 'Syaifur Rahman', 19, NULL, NULL, '08818295652', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (71, 121, 1, '1506341', 2, 'Nur', 'Syifa', 20, NULL, NULL, '087700339531', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (72, 122, 3, '1606279', 2, 'Dina', 'Medina', 10, NULL, NULL, '082240015654', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (73, 115, 1, '1503975', 3, 'Dina', 'Rusyda Khoirini', 15, NULL, NULL, '082117837191', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (74, 118, 1, '1204923', 2, 'Rendi', 'Mochamad Taofik', 28, NULL, NULL, '089506288923', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (75, 124, 1, '1507133', 2, 'Ruly', 'Abdul Rasyid', 20, NULL, NULL, '081214331542', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (76, 35, 2, '1504794', 2, 'Mohammad Giri', 'Firmansyah', 23, NULL, NULL, '087823237500', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (77, 125, 1, '1505889', 2, 'Rafie', 'Ridwan Arrasyid', 18, NULL, NULL, '081312089727', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (78, 102, 2, '1505146', 2, 'Muhammad Hendra', 'Permana', 23, NULL, NULL, '08115225530', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (79, 128, 1, '1500121', 1, 'Fandi Ahmad', 'Sugiantoro', 25, NULL, NULL, '08112109087', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (80, 120, 1, '1501072', 2, 'Cindy', 'Dwi Lestari', 9, NULL, NULL, '082320257010', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (81, 95, 1, '1504674', 1, 'Haaniyah', 'Yarnida', 18, NULL, NULL, '081220858204', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (82, 94, 1, '1501809', 1, 'Andre', 'Yosnavy', 10, NULL, NULL, '08993336474', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (83, 100, 1, '1504623', 2, 'Cical Indra', 'Himawan', 18, NULL, NULL, '085797951161', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (84, 106, 1, '1503967', 1, 'Sri Puji', 'Lestari', 15, NULL, NULL, '085974785337', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (85, 82, 1, '1304927', 1, 'Adhitya', 'Sufarinto', 13, NULL, NULL, NULL, NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (86, 97, 1, '150568', 1, 'Uni', 'Parwati', 18, NULL, NULL, '82321346640', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (87, 96, 1, '1502030', 1, 'Sony', 'Hermawan', 9, NULL, NULL, '085894078944', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (88, 73, 1, '1506338', 1, 'Muhamad Luthfi', 'Amrullah', 20, NULL, NULL, '087705041770', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (89, 135, 1, '1603747', 1, 'Teguh', 'Pratama Nugraha', 3, NULL, NULL, '089644580675', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (90, 129, 1, '1500504', 1, 'Riky', 'Hidayat', 11, NULL, NULL, '082217808753', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (91, 136, 1, '1304072', 1, 'Riyadhi', 'Abdurrahman', 15, NULL, NULL, '08996191778', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (92, 131, 1, '1501656', 2, 'Sri', 'Wardana', 17, NULL, NULL, '083841331104', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (93, 141, 1, '1501272', 2, 'M. Hasbi', 'Ash Shiddiq', 9, NULL, NULL, '081903153256', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (94, 139, 1, '1501848', 2, 'Ridwan', 'Ahmad Fauzi', 24, NULL, NULL, '088218131669', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (95, 134, 1, '1506336', 2, 'Fhegiana', 'Damayanty Juniar', 18, NULL, NULL, '082114672409', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (96, 138, 1, '1500329', 1, 'Dede Rizki', 'Abdillah', 11, NULL, NULL, '081805880292', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (97, 137, 1, '1503904', 2, 'Dendi', 'Rukmana', 15, NULL, NULL, '081386859192', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (98, 140, 1, '1500429', 2, 'Fahmi', 'Azhar Santosa', 11, NULL, NULL, '089666904421', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (99, 130, 1, '1507138', 2, 'Shinta', 'Wahyu Yuliningtyas', 17, NULL, NULL, '085871813770', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (100, 143, 1, '1503446', 2, 'Taufik', 'Ismail', 15, NULL, NULL, '087829720800', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (101, 145, 1, '1403121', 2, 'Irna', 'Wahyuningsih', 21, NULL, NULL, '085860370140', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (102, 144, 1, '1500819', 1, 'Mirza', 'Maulana Sugiri', 9, NULL, NULL, '081386844926', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (103, 142, 1, '1505329', 2, 'Julia', 'Nurrizkiani', 11, NULL, NULL, '08112160407', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (104, 147, 1, '1501937', 1, 'Aam', 'Wahyudin', 9, NULL, NULL, '087887314080', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (105, 132, 1, '1507107', 3, 'Dejan', 'Yusup Faishal', 28, NULL, NULL, '081214642603', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (106, 110, 1, '1507140', 1, 'Sri', 'Rahayu Ningsih', 20, NULL, NULL, '081395391520', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (107, 148, 1, '1505763', 2, 'Zikrul', 'Rifki', 18, NULL, NULL, '082111558046', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (108, 150, 1, '1405712', 1, 'Nopran', 'Tri Aditya', 1, NULL, NULL, '08976029528', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (109, 146, 1, '1403243', 1, 'Solla', 'Nahari', 10, NULL, NULL, '+62817219537', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (110, 152, 3, '1602078', 2, 'Fitri Fajar', 'Fathonah', 9, NULL, NULL, '083816423483', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (111, 151, 1, '1301997', 2, 'Dina', 'Rahmatika', 15, NULL, NULL, '081320502505', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (112, 162, 1, '1304887', 1, 'Muhammad', 'Renaldy', 14, NULL, NULL, '081322044634', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (113, 155, 3, '1605803', 2, 'Dwi Ayu', 'Nurfiyanti Putri', 6, NULL, NULL, '083824509351', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (114, 163, 3, '1602104', 2, 'Moch. Alif', 'Rizky Maulana', 9, NULL, NULL, '081395543652', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (115, 161, 1, '1401970', 1, 'Dicky', 'Mardiansyah', 10, NULL, NULL, '089665467706', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (116, 168, 1, '1504967', 1, 'Irfan Maulana', 'Fauzi', 18, NULL, NULL, '087785698483', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `apjar_student` VALUES (117, 154, 3, '1607321', 2, 'Arief Chandra', 'Pamungkas', 10, NULL, NULL, '081220667264', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (118, 167, 1, '1504845', 3, 'Irfan', 'Septian Suherman', 18, NULL, NULL, '089686868165', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (119, 169, 2, '1401662', 2, 'Rizki Zakaria', 'Faturochman', 26, NULL, NULL, '085294929496', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (120, 133, 2, '1307189', 2, 'Ismail', 'Sholeh', 22, NULL, NULL, '085353539469', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (121, 159, 2, '1506969', 2, 'Reida', 'Putra', 1, NULL, NULL, '082118259245', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (122, 173, 1, '1400666', 1, 'Teguh', 'Nugraha', 10, NULL, NULL, '082122661839', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (123, 171, 1, '1501726', 2, 'Muhammad', 'Fathurrachman', 9, NULL, NULL, '081257398878', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (124, 156, 3, '1602080', 2, 'Iswahyudi Setia', 'Ardiansyah', 9, NULL, NULL, '083822601987', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (125, 170, 2, '1401410', 2, 'Rizaldy', 'Kurniawan', 26, NULL, NULL, '081220092243', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (126, 174, 1, '1401029', 2, 'Reffky', 'Pratama', 10, NULL, NULL, '082120581408', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (127, 175, 3, '1602092', 2, 'Luthfi', 'Ihya Mahmudi', 9, NULL, NULL, '082122522603', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (128, 158, 3, '1602093', 2, 'Dzikri', 'Syaefullah', 9, NULL, NULL, '085804400225', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (129, 160, 3, '1606582', 2, 'Alvin Pratama', 'Yuliandri', 10, NULL, NULL, '081318094585', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (130, 67, 1, '1503561', 1, 'Renaldi', 'Pratama', 15, NULL, NULL, '081290029512', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (131, 46, 1, '1200589', 3, 'Hary', 'Dwyan Fitriana', 19, NULL, NULL, '082118923331', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (132, 180, 1, '1501362', 1, 'David Irman', 'Sam Putra', 9, NULL, NULL, '082240325680', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (133, 178, 3, '1606741', 2, 'Aditya', 'Hida Nurghafiri', 10, NULL, NULL, '085559140365', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (134, 179, 3, '1606718', 2, 'Tafaruq', 'Febrian', 10, NULL, NULL, '081910264493', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (135, 166, 1, '1405131', 1, 'Ridwan', 'Firdaus', 20, NULL, NULL, '087790002587', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (136, 177, 1, '1500171', 2, 'Hafid', 'Fadilah', 11, NULL, NULL, '085703276693', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (137, 176, 2, '1301686', 2, 'Gema', 'Ardhyana', 25, NULL, NULL, '085720327752', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (138, 181, 3, '1602086', 2, 'Runa', 'Adi Maulana', 9, NULL, NULL, '083816735063', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (139, 182, 3, '1606400', 2, 'Galuh', 'Dwi Putra', 10, NULL, NULL, '081563278090', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (140, 153, 3, '1602118', 2, 'Lutfi', 'Fahrul Fauzi', 6, NULL, NULL, '081214399800', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (141, 157, 3, '1606280', 2, 'Mahsus', 'Mushofa', 10, NULL, NULL, '081284176479', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (142, 104, 1, '1506780', 2, 'Evan', 'Manurung', 20, NULL, NULL, '081224473600', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (143, 117, 1, '1204412', 3, 'Ihsan', 'Ahmad Fadillah', 19, NULL, NULL, '081292910471', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (144, 186, 2, '1404347', 2, 'Rahman', 'Aziz', 17, NULL, NULL, '087821664550', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (145, 187, 3, '1602112', 2, 'Ronny', 'Zulkarnaen', 6, NULL, NULL, '082215397398', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (146, 164, 3, '1607460', 2, 'Muchamad', 'Nurfachrizal', 10, NULL, NULL, '08970548717', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (147, 184, 2, '1305640', 2, 'Ahmad', 'Muthi', 22, NULL, NULL, '089658160645', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (148, 185, 3, '1602123', 2, 'Rifaldy Fauzy', 'Ridwan', 6, NULL, NULL, '081902450301', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (149, 192, 2, '1204134', 2, 'Muhammad', 'Arif', 17, NULL, NULL, '08998299178', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (150, 193, 3, '1606421', 2, 'Reyhan', 'Hartanto', 10, NULL, NULL, '081290969748', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (151, 191, 3, '1605817', 2, 'M. Agfar', 'Dismawan', 6, NULL, NULL, '089679815208', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (152, 190, 3, '1505925', 2, 'Fauzan Adimas', 'Dicky', 21, NULL, NULL, '082217278046', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (153, 172, 1, '1505698', 3, 'Adryan Jaka', 'Lelana', 19, NULL, NULL, '08562205999', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (154, 195, 1, '1204910', 2, 'Yogi', 'Yogaswara', 28, NULL, NULL, '089644580675', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (155, 199, 2, '1403380', 2, 'Andra', 'Yovinda', 26, NULL, NULL, '083821779457', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (156, 198, 1, '1305901', 2, 'Cipta Cristian', 'Woren', 16, NULL, NULL, '08977033991', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (157, 204, 1, '1602314', 1, 'Iva', 'Rachmawati', 5, NULL, NULL, '089656878359', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (158, 202, 1, '1600986', 1, 'Khaesa Ananda', 'Putri', 5, NULL, NULL, '081322691300', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (159, 127, 1, '1503874', 1, 'Aulyanisa', 'Novatiara', 15, NULL, NULL, '081322970724', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (160, 221, 1, '1606292', 1, 'Hendra', 'Fauzi', 5, NULL, NULL, '082216806401', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (161, 222, 1, '1605878', 1, 'Fajri', 'Kemal Zaeny', 14, NULL, NULL, '081212778937', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (162, 200, 1, '1606508', 2, 'Mahesa', 'Rivaldi', 1, NULL, NULL, '082111454323', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (163, 205, 1, '1505737', 3, 'Muhammad Rizki', 'Dwi Putra', 27, NULL, NULL, '0811211138', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (164, 211, 1, '1607629', 3, 'Slamet Tita', 'Sumarti', 8, NULL, NULL, '088218034488', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (165, 206, 2, '1500233', 2, 'Muhammad Nur', 'Tastaftyan', 6, NULL, NULL, '082121888829', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (166, 212, 1, '1600417', 1, 'Rizki Dwi', 'Purnomo', 24, NULL, 'Rekognisi', '083829343380', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (167, 210, 1, '1601874', 1, 'Muhammad Ilham', 'Fauzan', 27, NULL, NULL, '081222797156', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (168, 207, 1, '1505886', 2, 'Niken', 'Tri Artha Mevia Putri', 18, NULL, NULL, '085222309320', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (169, 234, 2, '1601121', 2, 'Rifqi', 'Taufiqurrahman', 16, NULL, NULL, '087728367151', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (170, 225, 1, '1606388', 1, 'Hendra', 'Rangga Fahreza', 3, NULL, NULL, '085956244949', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (171, 214, 1, '1602146', 2, 'Muhammad Rashif', 'Farhan Asyir Shadiq', 11, NULL, NULL, '085794959509', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (172, 149, 2, '1502063', 2, 'Anggi Restu', 'Fauzi', 6, NULL, NULL, '085974303039', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (173, 244, 2, '1302017', 2, 'Rizqi', 'Adri Fauzan', 25, NULL, NULL, '081312743955', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (174, 240, 1, '1604974', 3, 'Nedya', 'Ulfah', 27, NULL, NULL, '085271051305', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (175, 235, 1, '1602157', 1, 'Lea', 'Naufal', 27, NULL, NULL, '085795270510', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (176, 239, 1, '1600046', 2, 'Aji', 'Wahyu Nugraha', 24, NULL, NULL, '082123213661', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (177, 220, 1, '1603886', 3, 'Falah', 'Khairullah', 24, NULL, NULL, '082316758097', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (178, 249, 1, '1605762', 2, 'Robby', 'Fauzan Jaelani', 8, NULL, NULL, '08977042277', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (179, 250, 1, '1705661', 1, 'Noval', 'Dwi Jayanto', 25, NULL, NULL, '0816619867', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (180, 208, 1, '1605527', 1, 'Muhamad Rafi', 'Anggara', 8, NULL, 'Rekognisi', '081547184903', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (181, 243, 1, '1500554', 2, 'Novita', 'Sarih', 11, NULL, NULL, '082219455595', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (182, 246, 1, '1601183', 3, 'Indah', 'Melania', 27, NULL, NULL, '089656622875', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (183, 241, 1, '1601420', 2, 'Siti Nunung', 'Nuraeni', 27, NULL, NULL, '081223104616', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (184, 223, 1, '1504582', 1, 'Maulidya Ajeng', 'Yulvia Wibowo', 15, NULL, NULL, '085693272398', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (185, 247, 1, '1601897', 3, 'Ayu', 'Azizah', 27, NULL, NULL, '089653487233', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (186, 236, 1, '1606251', 1, 'Rizki', 'Rachmat', 8, NULL, NULL, '085723205139', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (187, 219, 1, '1601051', 1, 'Hilmy', 'Zaky', 24, NULL, NULL, '895605967463', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (188, 255, 1, '1601016', 2, 'Hilmi', 'Hamdani', 24, NULL, NULL, '085722082205', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (189, 248, 1, '1600103', 2, 'Ripan', '', 24, NULL, NULL, '085722388400', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (190, 256, 1, '1203168', 1, 'Ari', 'Kusdinar', 18, NULL, NULL, '087822763936', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (191, 254, 1, '1601218', 3, 'Fidyah Niqo', 'Sabri', 27, NULL, NULL, '085398625639', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (192, 251, 1, '1701824', 2, 'Lutfi', 'Akbar Pratama', 25, NULL, NULL, '+62816619867', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (193, 228, 1, '1603612', 2, 'Mughni', 'Ardhianto', 24, NULL, NULL, '081324331871', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (194, 259, 1, '1604423', 3, 'Yaumil', 'Maghfira', 15, NULL, NULL, '081329914006', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (195, 165, 1, '1304233', 3, 'Furqon', 'Arfian', 17, NULL, NULL, '082215620204', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (196, 260, 1, '1607011', 2, 'Bayu Ihsan', 'Nugroho', 1, NULL, NULL, '085647407777', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (197, 216, 1, '1600846', 2, 'Eka', 'Putri Fitriani', 24, NULL, NULL, '085222736818', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (198, 258, 1, '1602348', 2, 'Mochamad Harland', 'Pradana', 27, NULL, NULL, '089673077741', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (199, 262, 1, '1602028', 1, 'Taufik Achmad', 'Ginanjar', 27, NULL, NULL, '087827561000', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (200, 253, 1, '1605490', 1, 'Richard', 'Sambera Sagala', 10, NULL, NULL, '081278281155', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (201, 215, 1, '1607578', 1, 'Andrian', 'Andrian', 5, NULL, NULL, '08882217290', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (202, 266, 3, '1505642', 2, 'Muhammad Fadel', 'Ilham Alhapidz', 21, NULL, NULL, '089622377492', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (203, 267, 3, '1606796', 2, 'Yoghafine', 'Agasti', 10, NULL, NULL, '08988975944', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (204, 265, 3, '1602124', 2, 'Al Hafiz Zhafran', 'Ismail', 10, NULL, NULL, '081999962509', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (205, 272, 1, '1607666', 3, 'Nurmala', 'Sari', 26, NULL, NULL, '085745446053', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (206, 229, 1, '1606984', 3, 'Andi Disbuhadi', 'Mattupuang', 1, NULL, NULL, '085353934588', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (207, 218, 1, '1602342', 2, 'Ai', 'Asiah Nuraeni', 24, NULL, NULL, '089662811658', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (208, 257, 1, '1600363', 2, 'Alvin', 'Renaldi', 24, NULL, NULL, '087811160960', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (209, 189, 1, '1501311', 2, 'Adli', 'Robbiansyah', 9, NULL, NULL, '081257398878', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (210, 273, 1, '1600924', 2, 'Muhamad', 'Rajib', 24, NULL, NULL, '085779007004', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (211, 188, 1, '1405961', 1, 'Uuf', 'Muttaqin', 20, NULL, NULL, '083820650343', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (212, 277, 1, '1607637', 2, 'Junjunan', 'Faturochman', 8, NULL, NULL, '08994782459', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (213, 278, 2, '1600825', 3, 'Dimas', 'Ramadhan Amrulloh', 3, NULL, NULL, '081411005362', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (214, 245, 1, '1608212', 3, 'Ilham', 'Ramadhan', 8, NULL, NULL, '083813436110', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (215, 281, 1, '1500665', 2, 'Mochamad', 'Arief Hidayah', 9, NULL, NULL, '085723938182', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (216, 201, 1, '1500179', 2, 'Arvin', 'Maulana', 11, NULL, NULL, '08987952269', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (217, 264, 1, '1600585', 3, 'Ridho', 'Muhammad Fikri', 24, NULL, NULL, '083811513873', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (218, 276, 1, '1607654', 1, 'Abdul', 'Hanif', 2, NULL, NULL, '081324996376', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (219, 233, 1, '1606233', 2, 'Muhammad Aulia', 'Rachman', 22, NULL, NULL, '08159212223', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (220, 224, 1, '1606041', 2, 'Naufal', 'Taufiqurrahman', 11, NULL, NULL, '081313119502', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (221, 217, 1, '1601109', 2, 'Triska', 'Junita', 24, NULL, NULL, '087821028093', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (222, 280, 1, '1607523', 3, 'Ardhia', 'Regita', 1, NULL, NULL, '081214446960', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (223, 271, 1, '1500923', 1, 'Zulfikar', 'Pamungkas', 9, NULL, NULL, '082117484211', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (224, 232, 1, '1605487', 1, 'Haekal', 'Audi', 24, NULL, NULL, '895605866354', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (225, 282, 1, '1500284', 1, 'Irdham', 'Kusuma', 11, NULL, NULL, '081903551926', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (226, 101, 1, '1301733', 1, 'Bagus', 'Baskara', 13, NULL, NULL, '081221186886', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (227, 203, 1, '1608203', 1, 'Muhamad', 'Zein Revolusi', 25, NULL, NULL, '082219511230', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (228, 283, 1, '1401016', 1, 'Risti Eka', 'Caputri', 10, NULL, NULL, '0895612501040', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (229, 275, 1, '1606221', 2, 'Ilham', 'Gema', 8, NULL, NULL, '085795516578', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (230, 263, 1, '1601682', 1, 'Bayu Erlangga Gerhana', 'Putra', 14, NULL, NULL, '081221702150', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (231, 230, 1, '1607148', 1, 'Tomi', 'Winata', 25, NULL, NULL, '082295209644', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (232, 252, 1, '1606053', 2, 'Yazid', 'Arrafi', 24, NULL, NULL, '085641745830', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (233, 230, 1, '1607148', 1, 'Tomi', 'Winata', 25, NULL, NULL, '082295209644', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (234, 286, 1, '1607158', 1, 'Monica', 'Umarni', 1, NULL, NULL, '085794691876', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (235, 287, 1, '1606382', 1, 'Nurul', 'Hasanah', 1, NULL, NULL, '081573659730', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (236, 284, 1, '1604079', 1, 'Kobie', 'Aulia', 27, NULL, NULL, '085793993695', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (237, 214, 1, '1602146', 2, 'Muhammad Rashif Farhan', 'Asyir Shadiq', 11, NULL, NULL, '085794959509', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (238, 237, 1, '1607638', 2, 'Sukma Dwijaya', 'Madawangi', 8, NULL, NULL, '08886002033', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (239, 196, 2, '1604526', 3, 'Najmi Najib Nasrulloh', 'Kurniadi', 3, NULL, NULL, '08170270798', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (240, 213, 1, '1600149', 2, 'Arif', 'Mariyandika', 22, NULL, NULL, '083894413029', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (241, 268, 1, '1606300', 1, 'Devara', 'Rayhansyah Chairul', 5, NULL, NULL, '085759217745', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (242, 227, 1, '1604109', 1, 'Adam Surya', 'Sutikno', 5, NULL, NULL, '0895365921820', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (243, 231, 1, '1607636', 3, 'Imas', 'Devina Fatonah', 13, NULL, NULL, '085721866693', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (244, 242, 2, '1601112', 2, 'Kukuh Putra', 'Prambodo', 16, NULL, NULL, '895344491745', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (245, 290, 1, '1604461', 1, 'Laras', 'Dian Maharani', 3, NULL, NULL, '085524672522', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (246, 274, 1, '1603746', 2, 'Azhar', 'Adhiyatso', 24, NULL, NULL, '82121914685', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (247, 289, 1, '1606660', 3, 'Deni Nurdin', 'Rahayu', 1, NULL, NULL, '085721969506', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (248, 285, 1, '1608128', 1, 'Anne', 'Rahmasari', 18, NULL, NULL, '085871452578', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (249, 238, 1, '1608208', 1, 'Wahid Fathoni', 'Sagita', 3, NULL, NULL, '087837766986', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (250, 279, 2, '1605528', 2, 'Efraimy Ruth', 'Sinaga', 16, NULL, NULL, '895369753853', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (251, 226, 1, '1601375', 1, 'Aditya', 'Mahendra', 10, NULL, NULL, '085722093717', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (252, 269, 1, '1606032', 1, 'Pandhu', 'Reksa', 10, NULL, NULL, '082115321500', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (253, 270, 1, '1606464', 1, 'Mochamad', 'Rizal Bachtiar', 1, NULL, NULL, '085891294398', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (254, 291, 1, '1606352', 3, 'Rizkia Fahmi Noviansyah', 'Imanudin', 3, NULL, NULL, '082213199693', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (255, 292, 2, '1604450', 2, 'In', 'Mustagisin', 17, NULL, NULL, '082112404136', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (256, 295, 2, '1607496', 2, 'Henry Prima', 'Martinus', 16, NULL, NULL, '082118448207', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (257, 297, 2, '1604937', 2, 'Rizki', 'Mochamad Fauzi', 16, NULL, NULL, '081573514842', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `apjar_student` VALUES (258, 298, 1, '1503978', 1, 'Imania', 'Yuniar', 15, NULL, NULL, '082118877245', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (259, 293, 1, '1607676', 1, 'Eris', 'Rifaldi', 5, NULL, NULL, '085659920242', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (260, 294, 2, '1607331', 2, 'Devi Ivana', 'Athaliana', 16, NULL, NULL, '08119798113', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (261, 296, 2, '1607081', 2, 'Dwiky', 'Anugrah Heningputra', 2, NULL, NULL, '085974038490', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (262, 301, 2, '1601008', 2, 'Egin', 'Rahmat Ginanjar', 16, NULL, NULL, '085242857573', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (263, 261, 1, '1304138', 1, 'Mohamad Syamsul', 'Maarif', 17, NULL, NULL, '081802227730', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (264, 299, 1, '1606462', 3, 'Muhamad', 'Riyadi', 1, NULL, NULL, '082214637303', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (265, 310, 2, '1606976', 3, 'Haris', 'Arsyad', 23, NULL, NULL, '08115225530', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (266, 308, 2, '1600818', 3, 'Alvin Rakhmat', 'Wirakusumah', 3, NULL, NULL, '085721723729', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (267, 305, 2, '1602329', 3, 'Rian', 'Arta Prahesa', 3, NULL, NULL, '082115625464', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (268, 300, 1, '1403141', 1, 'Asri', 'Gania', 10, NULL, NULL, '08986183997', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (269, 197, 1, '1306721', 3, 'Wahyu', 'Mahardhika', 16, NULL, NULL, '081312219550', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (270, 315, 2, '1504849', 3, 'Boaz', '....', 23, NULL, NULL, '08115225530', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (271, 313, 2, '1600658', 2, 'Ghina Shofi', 'Nur Aisyah', 16, NULL, NULL, NULL, NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (272, 311, 2, '1601864', 2, 'Yuliani', '', 16, NULL, NULL, '085732450813', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (273, 303, 2, '1601676', 3, 'Dante Eka', 'Seviliana', 4, NULL, NULL, '088229257469', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (274, 302, 2, '1601538', 2, 'Muhammad Firyal', 'Firdaus', 16, NULL, NULL, '082126879511', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (275, 316, 2, '1607118', 3, 'Syaiful', 'Widyatmiko', 3, NULL, NULL, '087874480300', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (276, 314, 2, '1607582', 2, 'Galdin', 'Akbar Salihan', 16, NULL, NULL, '081914533596', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (277, 123, 1, '1300991', 1, 'Nety', 'Fitriani', 13, NULL, NULL, '082117588405', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (278, 318, 2, '1601010', 2, 'Anisa', 'Inggar Asti Yudianto', 16, NULL, NULL, '082217862154', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (279, 307, 2, '1604508', 3, 'Wildan', 'Khoirul Amri', 3, NULL, NULL, '08159686925', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (280, 317, 2, '1606411', 3, 'Abdul Fadhil', 'Al Mudzaki', 3, NULL, NULL, '085797976878', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (281, 183, 1, '1307440', 1, 'Khoirun', 'Nisa', 13, NULL, NULL, '0895361168016', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (282, 194, 1, '1303435', 1, 'Alexander', 'Ucok Yudanto', 15, NULL, NULL, '0895339472495', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (283, 320, 1, '1305639', 1, 'Mohammad', 'Fitra Permadi', 17, NULL, NULL, '0895411962928', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (284, 319, 2, '1606195', 2, 'Ilham', 'Ramadhani', 16, NULL, NULL, '082117812560', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (285, 306, 1, '1603853', 2, 'Gani', 'Gunawan', 24, NULL, NULL, '087737071730', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (286, 288, 1, '1608132', 1, 'Riyan', 'Mardiansyah', 1, NULL, NULL, '085862744514', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (287, 304, 1, '1600511', 2, 'Muhamad', 'Sampurna', 24, NULL, NULL, '081310698643', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (288, 322, 2, '1603417', 2, 'Haryo Iri', 'Satrio Wicaksono', 16, NULL, NULL, '088802086719', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (289, 323, 1, '1602070', 1, 'Kusnadi', 'Rusnawan', 27, NULL, NULL, '085859806224', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (290, 321, 2, '1601412', 2, 'Sylvia', 'Khadijah', 16, NULL, NULL, '08994115468', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (291, 324, 2, '1605911', 2, 'Rosena', 'Shintabella', 16, NULL, NULL, '082240672379', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (292, 325, 2, '1601296', 2, 'Dias Hegar', 'Pinanggih', 16, NULL, NULL, '082211013536', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (293, 328, 1, '180969', 1, 'Wahyu', 'Didin', 2, NULL, NULL, '089726334', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (294, 332, 2, '1307624', 2, 'Amirul', 'Ma\'ruf', 22, NULL, NULL, '081221216677', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (295, 327, 2, '1302098', 2, 'Fauzan', 'Anshori Natasasmita', 25, NULL, NULL, '088222066227', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (296, 312, 2, '1607633', 3, 'Ridwan', 'Amshari', 15, NULL, NULL, '082214841204', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (297, 330, 2, '1301663', 2, 'Nur Muhammad', 'Abdul Hafizh', 25, NULL, NULL, '089655656597', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (298, 334, 1, '1401476', 2, 'Achmad', 'Noviandi', 26, NULL, NULL, '085722336451', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (299, 335, 1, '1605054', 2, 'Muhammad Robbi', 'Awaludin', 27, NULL, NULL, '089696591401', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (300, 333, 2, '1501291', 2, 'Adi Sapta Hidayatullah', 'Suryaman', 24, NULL, NULL, '081281301465', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (301, 309, 2, '1604056', 2, 'Rudiyana', 'Rudiyana', 18, NULL, NULL, '0895325248397', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (302, 331, 2, '1605206', 2, 'Anggin Nisrina', 'Ulayya', 17, NULL, NULL, '081220077378', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (303, 347, 2, '1703006', 3, 'Arief', 'Khairi Irawan', 13, NULL, NULL, '083822089228', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (304, 354, 1, '1703770', 1, 'Asep Saepul', 'Rohman', 3, NULL, NULL, '082119042347', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (305, 344, 1, '1700904', 1, 'Andre', 'Yogaswara Herlambang', 10, NULL, NULL, '081290558376', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (306, 360, 1, '1701067', 1, 'Raffi', 'Erba', 3, NULL, NULL, '081221734652', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (307, 363, 1, '1806602', 1, 'Syahidah', 'Muthi\'ah', 5, NULL, NULL, '081322691300', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (308, 365, 1, '1703819', 1, 'Syifa Fajar', 'Qolbi', 3, NULL, NULL, '087847420614', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (309, 343, 1, '1604468', 2, 'Roni Ruslan', 'Abdul Gani', 27, NULL, NULL, '085607595377', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (310, 366, 1, '1704531', 1, 'Siska', 'Anggraeni', 3, NULL, NULL, '08892712985', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (311, 358, 1, '1703846', 1, 'Satria Ihsan', 'Ramadhan', 5, NULL, NULL, '089669592250', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (312, 361, 1, '1702673', 1, 'Nizar', 'Noer Insan', 5, NULL, NULL, '089684667526', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (313, 359, 1, '1700941', 1, 'Hilal', 'Ismail', 5, NULL, NULL, '081292615733', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (314, 349, 1, '1606109', 1, 'Kevin', 'Ankurien', 8, NULL, NULL, '081321414242', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `apjar_student` VALUES (315, 348, 2, '1301558', 2, 'Anthonyo', 'Jayanto Ramadhan', 25, NULL, NULL, '0816619867', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
COMMIT;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2020_11_24_031801_laratrust_setup_tables', 1);
COMMIT;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for permission_role
-- ----------------------------
DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE `permission_role` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`),
  CONSTRAINT `permission_role_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permission_role_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for permission_user
-- ----------------------------
DROP TABLE IF EXISTS `permission_user`;
CREATE TABLE `permission_user` (
  `permission_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `user_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `team_id` bigint unsigned DEFAULT NULL,
  UNIQUE KEY `permission_user_user_id_permission_id_user_type_team_id_unique` (`user_id`,`permission_id`,`user_type`,`team_id`),
  KEY `permission_user_permission_id_foreign` (`permission_id`),
  KEY `permission_user_team_id_foreign` (`team_id`),
  CONSTRAINT `permission_user_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permission_user_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for role_user
-- ----------------------------
DROP TABLE IF EXISTS `role_user`;
CREATE TABLE `role_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `role_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `user_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `team_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `role_user_user_id_role_id_user_type_team_id_unique` (`user_id`,`role_id`,`user_type`,`team_id`),
  KEY `role_user_role_id_foreign` (`role_id`),
  KEY `role_user_team_id_foreign` (`team_id`),
  CONSTRAINT `role_user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_user_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=480 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of role_user
-- ----------------------------
BEGIN;
INSERT INTO `role_user` VALUES (1, 3, 1, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (2, 1, 1, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (3, 3, 2, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (5, 3, 3, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (7, 2, 4, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (8, 3, 5, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (10, 2, 6, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (11, 2, 7, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (12, 3, 8, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (14, 3, 9, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (18, 3, 11, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (20, 3, 12, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (22, 3, 13, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (24, 3, 14, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (26, 3, 15, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (28, 3, 16, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (30, 3, 17, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (32, 3, 18, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (34, 3, 19, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (36, 3, 20, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (38, 3, 21, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (40, 3, 22, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (42, 3, 23, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (44, 3, 24, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (46, 3, 25, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (48, 3, 26, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (50, 3, 27, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (52, 2, 28, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (53, 2, 29, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (54, 2, 30, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (55, 2, 31, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (56, 2, 32, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (57, 2, 33, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (58, 2, 34, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (59, 2, 35, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (60, 2, 36, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (61, 2, 37, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (62, 2, 38, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (63, 2, 39, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (64, 2, 40, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (65, 2, 41, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (66, 2, 42, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (67, 2, 43, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (68, 2, 44, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (69, 2, 45, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (70, 2, 46, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (71, 2, 47, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (72, 2, 48, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (73, 2, 49, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (74, 2, 50, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (75, 2, 51, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (76, 2, 52, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (77, 2, 53, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (78, 2, 54, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (79, 2, 55, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (80, 2, 56, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (81, 2, 57, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (82, 2, 58, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (83, 2, 59, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (84, 2, 60, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (85, 2, 61, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (86, 2, 62, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (87, 2, 63, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (88, 2, 64, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (89, 2, 65, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (90, 3, 66, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (92, 2, 67, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (93, 2, 68, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (94, 2, 69, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (95, 2, 70, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (96, 3, 71, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (98, 2, 72, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (99, 2, 73, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (100, 2, 74, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (101, 2, 75, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (102, 2, 76, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (103, 2, 77, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (104, 2, 78, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (105, 2, 79, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (106, 2, 80, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (107, 2, 81, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (108, 2, 82, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (109, 3, 83, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (111, 2, 84, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (112, 3, 85, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (114, 2, 86, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (115, 2, 87, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (116, 2, 88, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (117, 2, 89, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (118, 2, 90, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (119, 2, 91, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (120, 2, 92, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (121, 2, 93, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (122, 2, 94, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (123, 2, 95, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (124, 2, 96, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (125, 2, 97, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (126, 2, 98, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (127, 2, 99, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (128, 2, 100, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (129, 2, 101, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (130, 2, 102, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (131, 2, 103, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (132, 2, 104, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (133, 2, 105, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (134, 2, 106, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (135, 2, 107, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (136, 2, 108, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (137, 2, 109, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (138, 2, 110, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (139, 2, 111, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (140, 2, 112, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (141, 2, 113, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (142, 2, 114, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (143, 2, 115, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (144, 2, 116, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (145, 2, 117, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (146, 2, 118, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (147, 2, 119, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (148, 2, 120, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (149, 2, 121, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (150, 2, 122, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (151, 2, 123, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (152, 2, 124, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (153, 2, 125, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (154, 2, 126, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (155, 2, 127, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (156, 2, 128, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (157, 2, 129, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (158, 2, 130, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (159, 2, 131, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (160, 2, 132, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (161, 2, 133, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (162, 2, 134, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (163, 2, 135, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (164, 2, 136, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (165, 2, 137, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (166, 2, 138, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (167, 2, 139, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (168, 2, 140, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (169, 2, 141, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (170, 2, 142, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (171, 2, 143, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (172, 2, 144, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (173, 2, 145, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (174, 2, 146, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (175, 2, 147, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (176, 2, 148, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (177, 2, 149, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (178, 2, 150, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (179, 2, 151, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (180, 2, 152, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (181, 2, 153, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (182, 2, 154, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (183, 2, 155, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (184, 2, 156, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (185, 2, 157, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (186, 2, 158, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (187, 2, 159, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (188, 2, 160, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (189, 2, 161, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (190, 2, 162, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (191, 2, 163, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (192, 2, 164, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (193, 2, 165, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (194, 2, 166, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (195, 2, 167, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (196, 2, 168, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (197, 2, 169, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (198, 2, 170, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (199, 2, 171, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (200, 2, 172, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (201, 2, 173, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (202, 2, 174, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (203, 2, 175, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (204, 2, 176, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (205, 2, 177, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (206, 2, 178, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (207, 2, 179, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (208, 2, 180, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (209, 2, 181, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (210, 2, 182, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (211, 2, 183, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (212, 2, 184, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (213, 2, 185, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (214, 2, 186, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (215, 2, 187, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (216, 2, 188, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (217, 2, 189, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (218, 2, 190, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (219, 2, 191, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (220, 2, 192, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (221, 2, 193, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (222, 2, 194, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (223, 2, 195, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (224, 2, 196, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (225, 2, 197, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (226, 2, 198, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (227, 2, 199, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (228, 2, 200, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (229, 2, 201, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (230, 2, 202, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (231, 2, 203, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (232, 2, 204, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (233, 2, 205, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (234, 2, 206, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (235, 2, 207, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (236, 2, 208, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (237, 2, 209, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (238, 2, 210, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (239, 2, 211, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (240, 2, 212, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (241, 2, 213, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (242, 2, 214, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (243, 2, 215, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (244, 2, 216, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (245, 2, 217, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (246, 2, 218, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (247, 2, 219, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (248, 2, 220, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (249, 2, 221, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (250, 2, 222, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (251, 2, 223, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (252, 2, 224, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (253, 2, 225, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (254, 2, 226, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (255, 2, 227, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (256, 2, 228, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (257, 2, 229, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (258, 2, 230, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (259, 2, 231, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (260, 2, 232, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (261, 2, 233, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (262, 2, 234, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (263, 2, 235, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (264, 2, 236, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (265, 2, 237, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (266, 2, 238, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (267, 2, 239, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (268, 2, 240, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (269, 2, 241, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (270, 2, 242, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (271, 2, 243, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (272, 2, 244, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (273, 2, 245, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (274, 2, 246, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (275, 2, 247, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (276, 2, 248, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (277, 2, 249, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (278, 2, 250, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (279, 2, 251, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (280, 2, 252, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (281, 2, 253, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (282, 2, 254, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (283, 2, 255, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (284, 2, 256, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (285, 2, 257, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (286, 2, 258, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (287, 2, 259, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (288, 2, 260, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (289, 2, 261, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (290, 2, 262, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (291, 2, 263, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (292, 2, 264, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (293, 2, 265, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (294, 2, 266, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (295, 2, 267, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (296, 2, 268, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (297, 2, 269, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (298, 2, 270, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (299, 2, 271, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (300, 2, 272, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (301, 2, 273, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (302, 2, 274, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (303, 2, 275, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (304, 2, 276, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (305, 2, 277, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (306, 2, 278, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (307, 2, 279, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (308, 2, 280, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (309, 2, 281, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (310, 2, 282, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (311, 2, 283, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (312, 2, 284, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (313, 2, 285, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (314, 2, 286, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (315, 2, 287, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (316, 2, 288, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (317, 2, 289, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (318, 2, 290, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (319, 2, 291, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (320, 2, 292, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (321, 2, 293, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (322, 2, 294, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (323, 2, 295, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (324, 2, 296, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (325, 2, 297, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (326, 2, 298, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (327, 2, 299, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (328, 2, 300, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (329, 2, 301, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (330, 2, 302, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (331, 2, 303, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (332, 2, 304, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (333, 2, 305, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (334, 2, 306, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (335, 2, 307, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (336, 2, 308, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (337, 2, 309, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (338, 2, 310, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (339, 2, 311, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (340, 2, 312, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (341, 2, 313, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (342, 2, 314, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (343, 2, 315, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (344, 2, 316, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (345, 2, 317, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (346, 2, 318, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (347, 2, 319, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (348, 2, 320, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (349, 2, 321, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (350, 2, 322, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (351, 2, 323, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (352, 2, 324, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (353, 2, 325, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (354, 2, 326, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (355, 2, 327, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (356, 2, 328, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (357, 2, 329, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (358, 2, 330, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (359, 2, 331, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (360, 2, 332, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (361, 2, 333, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (362, 2, 334, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (363, 2, 335, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (364, 3, 336, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (366, 3, 337, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (370, 3, 340, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (373, 3, 342, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (375, 2, 343, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (376, 2, 344, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (377, 2, 345, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (378, 2, 346, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (379, 2, 347, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (380, 2, 348, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (381, 2, 349, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (382, 2, 350, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (383, 2, 351, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (384, 2, 352, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (385, 2, 353, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (386, 2, 354, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (387, 2, 355, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (388, 2, 356, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (389, 2, 357, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (390, 2, 358, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (391, 2, 359, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (392, 2, 360, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (393, 2, 361, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (394, 2, 362, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (395, 2, 363, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (396, 2, 364, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (397, 2, 365, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (398, 2, 366, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (399, 2, 367, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (400, 2, 368, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (401, 2, 369, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (402, 2, 370, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (403, 2, 371, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (404, 2, 372, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (405, 2, 373, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (406, 2, 374, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (407, 2, 375, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (408, 2, 376, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (409, 2, 377, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (410, 2, 378, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (411, 2, 379, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (412, 2, 380, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (413, 2, 381, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (414, 2, 382, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (415, 2, 383, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (416, 2, 384, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (417, 2, 385, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (418, 2, 386, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (419, 2, 387, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (420, 2, 388, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (421, 2, 389, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (422, 2, 390, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (423, 2, 391, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (424, 2, 392, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (425, 2, 393, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (426, 2, 394, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (427, 2, 395, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (428, 2, 396, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (429, 2, 397, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (430, 2, 398, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (431, 2, 399, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (432, 2, 400, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (433, 2, 401, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (434, 2, 402, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (435, 2, 403, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (436, 2, 404, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (437, 2, 405, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (438, 2, 406, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (439, 2, 407, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (440, 2, 408, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (441, 2, 409, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (442, 2, 410, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (443, 2, 411, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (444, 2, 412, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (445, 2, 413, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (446, 2, 414, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (447, 2, 415, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (448, 2, 416, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (449, 2, 417, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (450, 2, 418, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (451, 2, 419, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (452, 2, 420, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (453, 2, 421, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (454, 2, 422, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (455, 2, 423, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (456, 2, 424, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (457, 2, 425, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (458, 2, 426, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (461, 4, 8, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (463, 1, 342, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (465, 3, 341, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (466, 3, 339, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (467, 3, 338, 'App\\Models\\User', NULL, NULL, NULL);
INSERT INTO `role_user` VALUES (468, 4, 19, 'App\\Models\\User', NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
BEGIN;
INSERT INTO `roles` VALUES (1, 'admin', 'Admin', 'Administrator', '2020-10-07 13:19:06', '2020-10-07 13:19:09');
INSERT INTO `roles` VALUES (2, 'student', 'Student', 'Student', '2020-10-07 13:19:24', '2020-10-07 13:19:26');
INSERT INTO `roles` VALUES (3, 'faculty', 'Faculty', 'Faculty', '2020-10-08 05:11:35', '2020-10-08 05:11:37');
INSERT INTO `roles` VALUES (4, 'specialization', 'Specialization', 'Head of Specialization', '2020-11-16 20:57:12', '2020-11-16 20:57:14');
COMMIT;

-- ----------------------------
-- Table structure for teams
-- ----------------------------
DROP TABLE IF EXISTS `teams`;
CREATE TABLE `teams` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `teams_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sso_username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=427 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, '197608272009121001', '197608272009121001', NULL, NULL, NULL, NULL, '2020-11-10 07:06:44', '2020-11-10 07:06:44');
INSERT INTO `users` VALUES (2, 'AIP', '132314538', NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (3, 'DLH', '131614193', NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (4, 'sekdep_ee', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (5, 'BMY', '132084280', NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (6, 'E0451', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (7, 'E5051', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (8, 'ARJ', '132137918', NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (9, 'TMH', '198204282009121006', NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (10, 'AGF', '132231598', NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (11, 'MMS', '132296778', NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (12, 'WWP', '132086621', NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (13, 'INK', '132306520', NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (14, 'SSE', '132299062', NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (15, 'YDM', '132046213', NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (16, 'EAJ', '130896534', NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (17, 'HSB', '132297303', NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (18, 'WAS', '132163105', NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (19, 'DNK', '198006232008121002', NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (20, 'ERH', '132296306', NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (21, 'YYS', '131473889', NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (22, 'BTM', '131647624', NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (23, 'SMT', '130935683', NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (24, 'TSM', '131930255', NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (25, 'IWR', '131627871', NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (26, 'ELM', '131975871', NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (27, 'TSR', '131634849', NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (28, 's1204283', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (29, 's1204926', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (30, 's1204127', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (31, 's1200500', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (32, 's1504873', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (33, 's1504316', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (34, 's1200342', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (35, 's1504794', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (36, 's1506365', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (37, 's1500550', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (38, 's1501088', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (39, 's1504417', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (40, 's1506032', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (41, 's1506366', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (42, 's1500400', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (43, 's1503510', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (44, 's1504696', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (45, 's1203590', '1203590', NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (46, 's1200589', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (47, 's1503711', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (48, 's1200356', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (49, 's1204044', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (50, 's1500818', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (51, 's1500812', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (52, 's1500538', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (53, 's1500972', '1500972', NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (54, 's1506367', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (55, 's1505550', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (56, 's1506850', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (57, 's1506006', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (58, 's1504381', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (59, 's1501358', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (60, 's1501933', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (61, 's1501224', '1501224', NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (62, 's1203604', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (63, 's1500496', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (64, 's1206255', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (65, 's1203169', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (66, 'JKR', '131471355', NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (67, 's1503561', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (68, 's1205950', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (69, 's1403769', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (70, 's1301883', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (71, 'AHS', '197208262005011001', NULL, NULL, NULL, NULL, '2020-11-10 07:09:18', '2020-11-10 07:09:18');
INSERT INTO `users` VALUES (72, 's1503467', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (73, 's1506338', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (74, 's1506342', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (75, 's1500051', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (76, 's1206035', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (77, 's1505307', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (78, 's1200727', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (79, 's1204286', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (80, 's1501831', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (81, 's1204019', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (82, 's1304927', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (83, 'MKH', '130809446', NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (84, 's1400047', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (85, 'BCH', '195512041981031002', NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (86, 's1400275', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (87, 's1203616', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (88, 's1506917', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (89, 's1501317', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (90, 's1200728', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (91, 's1301473', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (92, 's1304095', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (93, 's1506923', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (94, 's1501809', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (95, 's1504674', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (96, 's1502030', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (97, 's150568', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (98, 's1304081', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (99, 's1504210', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (100, 's1504623', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (101, 's1301733', '1301733', NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (102, 's1505146', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (103, 's1500591', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (104, 's1506780', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (105, 's1504586', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (106, 's1503967', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (107, 's1506337', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (108, 's1501403', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (109, 's1203972', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (110, 's1507140', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (111, 's1501987', '1501987', NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (112, 's1503449', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (113, 's1302080', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (114, 's1503764', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (115, 's1503975', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (116, 's1204109', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (117, 's1204412', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (118, 's1204923', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (119, 's1506776', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (120, 's1501072', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (121, 's1506341', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (122, 's1606279', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (123, 's1300991', '1300991', NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (124, 's1507133', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (125, 's1505889', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (126, 's9518093', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (127, 's1503874', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (128, 's1500121', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (129, 's1500504', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (130, 's1507138', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (131, 's1501656', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (132, 's1507107', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (133, 's1307189', '1307189', NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (134, 's1506336', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (135, 's1603747', '1603747', NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (136, 's1304072', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (137, 's1503904', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (138, 's1500329', '1500329', NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (139, 's1501848', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (140, 's1500429', '1500429', NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (141, 's1501272', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (142, 's1505329', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (143, 's1503446', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (144, 's1500819', '1500819', NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (145, 's1403121', '1403121', NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (146, 's1403243', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (147, 's1501937', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (148, 's1505763', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (149, 's1502063', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (150, 's1405712', '1405712', NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (151, 's1301997', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (152, 's1602078', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (153, 's1602118', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (154, 's1607321', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (155, 's1605803', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (156, 's1602080', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (157, 's1606280', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (158, 's1602093', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (159, 's1506969', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (160, 's1606582', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (161, 's1401970', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (162, 's1304887', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (163, 's1602104', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (164, 's1607460', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (165, 's1304233', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (166, 's1405131', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (167, 's1504845', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (168, 's1504967', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (169, 's1401662', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (170, 's1401410', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (171, 's1501726', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (172, 's1505698', '1505698', NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (173, 's1400666', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (174, 's1401029', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (175, 's1602092', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (176, 's1301686', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (177, 's1500171', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (178, 's1606741', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (179, 's1606718', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (180, 's1501362', '1501362', NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (181, 's1602086', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (182, 's1606400', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (183, 's1307440', '1307440', NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (184, 's1305640', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (185, 's1602123', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (186, 's1404347', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (187, 's1602112', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (188, 's1405961', '1405961', NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (189, 's1501311', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (190, 's1505925', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (191, 's1605817', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (192, 's1204134', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (193, 's1606421', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (194, 's1303435', '1303435', NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (195, 's1204910', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (196, 's1604526', '1604526', NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (197, 's1306721', '1306721', NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (198, 's1305901', '1305901', NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (199, 's1403380', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (200, 's1606508', '1606508', NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (201, 's1500179', '1500179', NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (202, 's1600986', '1600986', NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (203, 's1608203', '1608203', NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (204, 's1602314', '1602314', NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (205, 's1505737', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (206, 's1500233', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (207, 's1505886', '1505886', NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (208, 's1605527', '1605527', NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (209, 's1603957', '1603957', NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (210, 's1601874', '1601874', NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (211, 's1607629', '1607629', NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (212, 's1600417', '1600417', NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (213, 's1600149', '1600149', NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (214, 's1602146', '1602146', NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (215, 's1607578', '1607578', NULL, NULL, NULL, NULL, '2020-11-10 07:09:19', '2020-11-10 07:09:19');
INSERT INTO `users` VALUES (216, 's1600846', '1600846', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (217, 's1601109', '1601109', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (218, 's1602342', '1602342', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (219, 's1601051', '1601051', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (220, 's1603886', '1603886', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (221, 's1606292', '1606292', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (222, 's1605878', '1605878', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (223, 's1504582', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (224, 's1606041', '1606041', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (225, 's1606388', '1606388', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (226, 's1601375', '1601375', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (227, 's1604109', '1604109', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (228, 's1603612', '1603612', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (229, 's1606984', '1606984', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (230, 's1607148', '1607148', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (231, 's1607636', '1607636', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (232, 's1605487', '1605487', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (233, 's1606233', '1606233', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (234, 's1601121', '1601121', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (235, 's1602157', '1602157', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (236, 's1606251', '1606251', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (237, 's1607638', '1607638', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (238, 's1608208', '1608208', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (239, 's1600046', '1600046', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (240, 's1604974', '1604974', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (241, 's1601420', '1601420', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (242, 's1601112', '1601112', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (243, 's1500554', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (244, 's1302017', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (245, 's1608212', '1608212', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (246, 's1601183', '1601183', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (247, 's1601897', '1601897', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (248, 's1600103', '1600103', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (249, 's1605762', '1605762', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (250, 's1705661', '1705661', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (251, 's1701824', '1701824', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (252, 's1606053', '1606053', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (253, 's1605490', '1605490', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (254, 's1601218', '1601218', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (255, 's1601016', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (256, 's1203168', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (257, 's1600363', '1600363', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (258, 's1602348', '1602348', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (259, 's1604423', '1604423', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (260, 's1607011', '1607011', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (261, 's1304138', '1304138', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (262, 's1602028', '1602028', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (263, 's1601682', '1601682', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (264, 's1600585', '1600585', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (265, 's1602124', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (266, 's1505642', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (267, 's1606796', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (268, 's1606300', '1606300', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (269, 's1606032', '1606032', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (270, 's1606464', '1606464', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (271, 's1500923', '1500923', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (272, 's1607666', '1607666', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (273, 's1600924', '1600924', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (274, 's1603746', '1603746', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (275, 's1606221', '1606221', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (276, 's1607654', '1607654', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (277, 's1607637', '1607637', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (278, 's1600825', '1600825', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (279, 's1605528', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (280, 's1607523', '1607523', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (281, 's1500665', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (282, 's1500284', '1500284', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (283, 's1401016', '1401016', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (284, 's1604079', '1604079', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (285, 's1608128', '1608128', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (286, 's1607158', '1607158', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (287, 's1606382', '1606382', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (288, 's1608132', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (289, 's1606660', '1606660', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (290, 's1604461', '1604461', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (291, 's1606352', '1606352', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (292, 's1604450', '1604450', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (293, 's1607676', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (294, 's1607331', '1607331', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (295, 's1607496', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (296, 's1607081', '1607081', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (297, 's1604937', '1604937', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (298, 's1503978', '1503978', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (299, 's1606462', '1606462', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (300, 's1403141', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (301, 's1601008', '1601008', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (302, 's1601538', '1601538', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (303, 's1601676', '1601676', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (304, 's1600511', '1600511', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (305, 's1602329', '1602329', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (306, 's1603853', '1603853', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (307, 's1604508', '1604508', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (308, 's1600818', '1600818', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (309, 's1604056', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (310, 's1606976', '1606976', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (311, 's1601864', '1601864', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (312, 's1607633', '1607633', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (313, 's1600658', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (314, 's1607582', '1607582', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (315, 's1504849', '1504849', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (316, 's1607118', '1607118', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (317, 's1606411', '1606411', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (318, 's1601010', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (319, 's1606195', '1606195', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (320, 's1305639', '1305639', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (321, 's1601412', '1601412', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (322, 's1603417', '1603417', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (323, 's1602070', '1602070', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (324, 's1605911', '1605911', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (325, 's1601296', '1601296', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (326, 'tendik_dpte', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (327, 's1302098', '1302098', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (328, 's180969', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (329, 'admin_symposa', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (330, 's1301663', '1301663', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (331, 's1605206', '1605206', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (332, 's1307624', '1307624', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (333, 's1501291', '1501291', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (334, 's1401476', '1401476', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (335, 's1605054', '1605054', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (336, 'NFA', '920200419930905101', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (337, 'MAR', '920200419921028101', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (338, 'RPR', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (339, 'REP', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (340, 'STA', '920200419960203201', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (341, 'MAQ', NULL, NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (342, 'DDW', '197608272009121001', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (343, 's1604468', '1604468', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (344, 's1700904', '1700904', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (345, 's1602143', '1602143', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (346, 's1506837', '1506837', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (347, 's1703006', '1703006', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (348, 's1301558', '1301558', NULL, NULL, NULL, NULL, '2020-11-10 07:09:20', '2020-11-10 07:09:20');
INSERT INTO `users` VALUES (349, 's1606109', '1606109', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (350, 's1700835', '1700835', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (351, 's1403337', '1403337', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (352, 's1701017', '1701017', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (353, 's1702825', '1702825', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (354, 's1703770', '1703770', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (355, 's1703961', '1703961', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (356, 's1704818', '1704818', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (357, 's1704753', '1704753', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (358, 's1703846', '1703846', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (359, 's1700941', '1700941', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (360, 's1701067', '1701067', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (361, 's1702673', '1702673', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (362, 's1702563', '1702563', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (363, 's1806602', '1806602', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (364, 's1705696', '1705696', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (365, 's1703819', '1703819', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (366, 's1704531', '1704531', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (367, 's1702157', '1702157', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (368, 's1705339', '1705339', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (369, 's1900194', '1900194', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (370, 's1705121', '1705121', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (371, 's1900426', '1900426', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (372, 's1700292', '1700292', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (373, 's1704585', '1704585', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (374, 's1702184', '1702184', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (375, 's1700506', '1700506', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (376, 's1701201', '1701201', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (377, 's1700760', '1700760', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (378, 's1701025', '1701025', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (379, 's1704405', '1704405', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (380, 's1702551', '1702551', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (381, 's1700286', '1700286', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (382, 's1505321', '1505321', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (383, 's1705242', '1705242', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (384, 's1705693', '1705693', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (385, 's1701959', '1701959', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (386, 's1704451', '1704451', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (387, 's1700285', '1700285', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (388, 's1704603', '1704603', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (389, 's1701770', '1701770', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (390, 's1702585', '1702585', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (391, 's1703715', '1703715', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (392, 's1701353', '1701353', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (393, 's1902781', '1902781', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (394, 's1904935', '1904935', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (395, 's1903173', '1903173', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (396, 's1904913', '1904913', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (397, 's1909222', '1909222', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (398, 's1909645', '1909645', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (399, 's1903340', '1903340', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (400, 's1902588', '1902588', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (401, 's1906055', '1906055', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (402, 's1701651', '1701651', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (403, 's1703700', '1703700', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (404, 's1805565', '1805565', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (405, 's1804912', '1804912', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (406, 's1400011', '1400011', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (407, 's1700100', '1700100', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (408, 's1705629', '1705629', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (409, 's1701724', '1701724', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (410, 's1705150', '1705150', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (411, 's1801389', '1801389', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (412, 's1700652', '1700652', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (413, 's1905599', '1905599', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (414, 's1705686', '1705686', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (415, 's1704764', '1704764', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (416, 's1704258', '1704258', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (417, 's1809697', '1700542', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (418, 's1703538', '1703538', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (419, 's1702379', '1702379', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (420, 's1705656', '1705656', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (421, 's1702640', '1702640', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (422, 's1701631', '1701631', NULL, NULL, NULL, NULL, '2020-11-10 07:09:21', '2020-11-10 07:09:21');
INSERT INTO `users` VALUES (423, 's1705113', '1705113', NULL, NULL, NULL, NULL, '2020-11-10 07:09:22', '2020-11-10 07:09:22');
INSERT INTO `users` VALUES (424, 's1702881', '1702881', NULL, NULL, NULL, NULL, '2020-11-10 07:09:22', '2020-11-10 07:09:22');
INSERT INTO `users` VALUES (425, 's1703228', '1703228', NULL, NULL, NULL, NULL, '2020-11-10 07:09:22', '2020-11-10 07:09:22');
INSERT INTO `users` VALUES (426, 's1705327', '1705327', NULL, NULL, NULL, NULL, '2020-11-10 07:09:22', '2020-11-10 07:09:22');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
