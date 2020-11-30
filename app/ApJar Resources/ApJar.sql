/*
 Navicat MySQL Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost:3306
 Source Schema         : arsysv8

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 01/12/2020 03:24:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for arsys_ee_milestone
-- ----------------------------
DROP TABLE IF EXISTS `arsys_ee_milestone`;
CREATE TABLE `arsys_ee_milestone` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `milestone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `propose_button` tinyint(1) DEFAULT NULL,
  `phase` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `sequence` int DEFAULT NULL,
  `description` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of arsys_ee_milestone
-- ----------------------------
BEGIN;
INSERT INTO `arsys_ee_milestone` VALUES (1, 'Proposal', 1, 'Created', 1, 'Research Proposal is created', '2020-09-16 10:53:23', '2020-09-16 10:53:26');
INSERT INTO `arsys_ee_milestone` VALUES (2, 'Proposal', NULL, 'Submitted', 2, 'Research proposal has been submitted', '2020-09-16 10:53:16', '2020-09-16 10:53:19');
INSERT INTO `arsys_ee_milestone` VALUES (3, 'Proposal', NULL, 'Review', 3, 'Research is being reviewed', '2020-09-16 10:55:09', '2020-09-16 10:55:11');
INSERT INTO `arsys_ee_milestone` VALUES (4, 'In-progress', 1, 'Supervise', 4, 'Research is in progress', '2020-09-16 10:59:17', '2020-09-16 10:59:19');
INSERT INTO `arsys_ee_milestone` VALUES (5, 'EE-seminar', NULL, 'Submitted', 5, 'EE-seminar approval is requested ', '2020-09-16 10:59:25', '2020-09-16 10:59:23');
INSERT INTO `arsys_ee_milestone` VALUES (6, 'EE-seminar', NULL, 'Approved', 6, 'EE-seminarhas been approved', '2020-11-13 15:17:10', '2020-11-13 15:17:13');
INSERT INTO `arsys_ee_milestone` VALUES (7, 'EE-seminar', NULL, 'Applied', 7, 'EE-seminar has been applied', '2020-11-13 15:17:16', '2020-11-13 15:17:18');
INSERT INTO `arsys_ee_milestone` VALUES (8, 'EE-seminar', NULL, 'Scheduled', 8, 'EE-seminar has been scheduled', '2020-11-13 15:17:39', '2020-11-13 15:17:42');
INSERT INTO `arsys_ee_milestone` VALUES (9, 'EE-seminar', NULL, 'Held', 9, 'EE-seminar is being held', '2020-11-13 15:17:22', '2020-11-13 15:17:45');
INSERT INTO `arsys_ee_milestone` VALUES (10, 'EE-seminar', NULL, 'Completed', 10, 'EE-seminar is completed', '2020-11-13 15:17:48', '2020-11-13 15:17:50');
COMMIT;

-- ----------------------------
-- Table structure for arsys_event
-- ----------------------------
DROP TABLE IF EXISTS `arsys_event`;
CREATE TABLE `arsys_event` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `event_id` char(12) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `event_type` int DEFAULT NULL,
  `application_deadline` datetime DEFAULT NULL,
  `event_date` datetime DEFAULT NULL,
  `draft_deadline` datetime DEFAULT NULL,
  `quota` int DEFAULT NULL,
  `current` int DEFAULT NULL,
  `creator` int DEFAULT NULL,
  `letter_number` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of arsys_event
-- ----------------------------
BEGIN;
INSERT INTO `arsys_event` VALUES (1, 'PRE-05042019', 1, '2019-03-29 23:55:00', '2019-04-05 08:30:00', NULL, 15, 5, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (2, 'PRE-26042019', 1, '2019-04-12 23:55:00', '2019-04-26 08:30:00', '2019-04-23 23:55:00', 15, 14, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (3, 'PUB-17052019', 2, '2019-05-08 11:55:00', '2019-05-17 07:00:00', '2019-05-13 23:55:00', 30, 12, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (4, 'PRE-02072019', 1, '2019-06-21 23:55:00', '2019-07-02 08:00:00', '2019-06-28 23:55:00', 15, 15, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (5, 'PRE-11072019', 1, '2019-06-25 23:55:00', '2019-07-11 08:30:00', '2019-07-08 23:55:00', 15, 15, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (6, 'PRE-12072019', 1, '2019-07-03 18:00:00', '2019-07-12 08:30:00', '2019-07-10 18:00:00', 15, 4, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (7, 'PRE-16082019', 1, '2019-08-09 17:00:00', '2019-08-16 08:30:00', '2019-08-14 17:00:00', 15, 15, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (8, 'PRE-23072019', 1, '2019-07-17 23:55:00', '2019-07-23 08:30:00', '2019-07-19 23:55:00', 15, 6, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (9, 'PRE-30072019', 1, '2019-07-24 23:55:00', '2019-07-30 08:30:00', '2019-07-26 23:55:00', 15, 2, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (10, 'PUB-31072019', 2, '2019-07-15 23:55:00', '2019-07-31 09:00:00', '2019-07-25 23:55:00', 45, 21, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (11, 'PRE-05082019', 1, '2019-07-29 23:55:00', '2019-08-05 08:30:00', '2019-08-02 14:19:00', 15, 15, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (12, 'PRE-15082019', 1, '2019-08-01 17:00:00', '2019-08-15 08:51:00', '2019-08-09 17:00:00', 15, 15, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (13, 'PUB-30082019', 2, '2019-08-27 17:00:00', '2019-08-30 08:30:00', '2019-08-28 17:00:00', 50, 50, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (14, 'STE-10072019', 3, '2019-07-08 11:00:00', '2019-07-10 09:00:00', '2019-07-08 18:00:00', 50, 25, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (15, 'PUB-19082019', 2, '2019-08-12 17:00:00', '2019-08-19 08:30:00', '2019-08-14 17:00:00', 25, 19, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (16, 'PRE-20082019', 1, '2019-08-14 17:00:00', '2019-08-20 08:30:00', '2019-08-16 17:00:00', 15, 12, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (17, 'PUB-26082019', 2, '2019-08-21 17:00:00', '2019-08-26 09:30:00', '2019-08-23 17:00:00', 21, 16, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (18, 'PRE-23082019', 1, '2019-08-20 07:02:00', '2019-08-23 08:00:00', '2019-08-20 07:03:00', 9, 9, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (19, 'PRE-27082019', 1, '2019-08-22 17:00:00', '2019-08-27 09:00:00', '2019-08-23 17:00:00', 9, 4, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (20, 'PRE-28082019', 1, '2019-08-26 17:00:00', '2019-08-28 09:00:00', '2019-08-26 17:00:00', 10, 2, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (21, 'STE-14012020', 3, '2019-12-24 17:00:00', '2020-01-14 21:00:00', '2020-01-10 17:00:00', 70, NULL, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (22, 'PRE-06122019', 1, '2019-12-02 17:00:00', '2019-12-06 08:00:00', '2019-12-04 17:00:00', 15, 12, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (23, 'PUB-06012020', 2, '2019-12-29 17:00:00', '2020-01-06 07:00:00', '2020-01-03 17:00:00', 15, 12, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (24, 'STE-20012020', 3, '2020-01-16 17:00:00', '2020-01-20 08:00:00', '2020-01-17 17:00:00', 50, 22, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (25, 'STE-16012020', 3, '2020-01-13 17:00:00', '2020-01-16 08:00:00', '2020-01-15 17:00:00', 100, 49, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (26, 'PRE-09012020', 1, '2020-01-03 17:00:00', '2020-01-09 08:30:00', '2020-01-06 17:00:00', 15, 14, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (27, 'PUB-30012020', 2, '2020-01-23 17:00:00', '2020-01-30 08:00:00', '2020-01-27 17:00:00', 30, 20, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (28, 'PRE-15012020', 1, '2020-01-07 17:00:00', '2020-01-15 08:30:00', '2020-01-13 17:00:00', 15, 6, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (29, 'PRE-21022020', 1, '2020-02-06 17:00:00', '2020-02-21 11:00:00', '2020-02-10 17:00:00', 15, 1, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (30, 'PRE-13032020', 1, '2020-03-02 17:00:00', '2020-03-13 10:00:00', '2020-03-02 17:00:00', 15, 4, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (31, 'PUB-17042020', 2, '2020-04-10 17:00:00', '2020-04-17 09:00:00', '2020-04-07 17:00:00', 30, 5, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (32, 'PRE-08072020', 1, '2020-06-26 17:00:00', '2020-07-08 09:30:00', '2020-07-06 17:00:00', 15, 6, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (33, 'STE-26062020', 3, '2020-06-23 17:00:00', '2020-06-26 08:00:00', '2020-06-23 17:00:00', 50, 4, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (34, 'PRE-10072020', 1, '2020-06-29 17:00:00', '2020-07-10 08:00:00', '2020-07-07 17:30:00', 15, 8, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (35, 'PUB-23072020', 2, '2020-07-17 17:00:00', '2020-07-23 09:00:00', '2020-07-20 17:00:00', 30, 13, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (36, 'STE-29062020', 3, '2020-06-26 17:00:00', '2020-06-29 09:00:00', '2020-06-27 17:00:00', 15, NULL, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (37, 'PRE-24072020', 1, '2020-07-20 17:00:00', '2020-07-24 09:00:00', '2020-07-21 17:00:00', 9, 6, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (38, 'PRE-27072020', 1, '2020-07-23 17:00:00', '2020-07-27 08:00:00', '2020-07-25 17:00:00', 6, 2, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (39, 'PUB-28082020', 2, '2020-08-26 17:00:00', '2020-08-28 08:30:00', '2020-08-24 17:00:00', 60, 60, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (40, 'PRE-29072020', 1, '2020-07-26 17:00:00', '2020-07-29 09:00:00', '2020-07-27 17:00:00', 6, NULL, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (41, 'PRE-05082020', 1, '2020-07-31 17:00:00', '2020-08-05 10:08:00', '2020-08-01 17:00:00', 9, 0, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (42, 'PRE-31072020', 1, '2020-07-28 17:00:00', '2020-07-31 09:00:00', '2020-07-29 17:00:00', 9, NULL, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (43, 'PRE-07082020', 1, '2020-08-04 17:00:00', '2020-08-07 09:00:00', '2020-08-05 17:00:00', 9, 7, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (44, 'PRE-10082020', 1, '2020-08-07 17:00:00', '2020-08-10 09:00:00', '2020-08-08 17:00:00', 15, 9, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (45, 'PRE-13082020', 1, '2020-08-09 17:00:00', '2020-08-13 08:00:00', '2020-08-11 17:00:00', 15, 9, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (46, 'PRE-18082020', 1, '2020-08-14 17:00:00', '2020-08-18 08:00:00', '2020-08-15 17:00:00', 15, 4, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (47, 'PRE-24082020', 1, '2020-08-20 17:00:00', '2020-08-24 08:03:00', '2020-08-23 17:00:00', 15, 12, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (48, 'PRE-14082020', 1, '2020-08-11 17:00:00', '2020-08-14 08:00:00', '2020-08-12 17:00:00', 15, 6, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (49, 'PRE-25082020', 1, '2020-08-23 17:00:00', '2020-08-25 07:00:00', '2020-08-24 17:00:00', 5, 2, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (50, 'PRE-06112020', 1, '2020-11-02 17:00:00', '2020-11-06 08:00:00', '2020-11-03 17:00:00', 9, NULL, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (51, 'PRE-13112020', 1, '2020-11-08 17:00:00', '2020-11-13 08:00:00', '2020-11-09 17:00:00', 9, NULL, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (52, 'PUB-11122020', 2, '2020-11-27 17:00:00', '2020-12-11 08:00:00', '2020-12-07 17:00:00', 18, NULL, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (53, 'STE-06012021', 3, '2021-01-02 17:00:00', '2021-01-06 08:00:00', '2021-01-04 17:00:00', 30, NULL, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (54, 'STE-30122020', 3, '2020-12-24 17:00:00', '2020-12-30 08:00:00', '2020-12-27 17:00:00', 30, NULL, NULL, NULL, '2020-11-24 15:04:45', '2020-11-24 15:04:45');
INSERT INTO `arsys_event` VALUES (55, 'PRE-27112020', 1, '2020-11-26 00:00:00', '2020-11-27 08:00:00', '2020-11-16 17:00:00', 9, 5, NULL, 435, '2020-11-29 02:23:42', '2020-11-28 19:23:42');
COMMIT;

-- ----------------------------
-- Table structure for arsys_event_applicant
-- ----------------------------
DROP TABLE IF EXISTS `arsys_event_applicant`;
CREATE TABLE `arsys_event_applicant` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `research_id` bigint DEFAULT NULL,
  `event_id` int DEFAULT NULL,
  `session_id` int DEFAULT NULL,
  `space_id` int DEFAULT NULL,
  `decision` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of arsys_event_applicant
-- ----------------------------
BEGIN;
INSERT INTO `arsys_event_applicant` VALUES (1, 263, 55, 2, 2, NULL, '2020-11-24 18:58:46', '2020-11-28 19:18:02');
INSERT INTO `arsys_event_applicant` VALUES (2, 220, 55, 1, 2, NULL, NULL, '2020-11-28 19:18:19');
INSERT INTO `arsys_event_applicant` VALUES (3, 150, 55, 1, 2, NULL, NULL, '2020-11-28 06:55:07');
INSERT INTO `arsys_event_applicant` VALUES (4, 45, 55, 1, 2, NULL, NULL, '2020-11-28 19:18:35');
INSERT INTO `arsys_event_applicant` VALUES (5, 56, 55, 3, 2, NULL, NULL, '2020-11-28 19:18:46');
INSERT INTO `arsys_event_applicant` VALUES (6, 100, 55, 2, 2, NULL, NULL, '2020-11-28 19:19:00');
INSERT INTO `arsys_event_applicant` VALUES (7, 99, 55, 4, 2, NULL, NULL, '2020-11-28 19:19:08');
INSERT INTO `arsys_event_applicant` VALUES (8, 75, 55, 2, 2, NULL, NULL, '2020-11-28 19:19:22');
INSERT INTO `arsys_event_applicant` VALUES (9, 200, 55, 2, 2, NULL, NULL, '2020-11-28 19:19:34');
COMMIT;

-- ----------------------------
-- Table structure for arsys_event_examiner
-- ----------------------------
DROP TABLE IF EXISTS `arsys_event_examiner`;
CREATE TABLE `arsys_event_examiner` (
  `id` int NOT NULL AUTO_INCREMENT,
  `event_id` int DEFAULT NULL,
  `applicant_id` int DEFAULT NULL,
  `examiner_id` int DEFAULT NULL,
  `presence` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `score` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of arsys_event_examiner
-- ----------------------------
BEGIN;
INSERT INTO `arsys_event_examiner` VALUES (1, 55, 3, 2, NULL, '2020-11-28 06:55:08', '2020-11-28 06:55:08', NULL);
INSERT INTO `arsys_event_examiner` VALUES (2, 55, 3, 15, NULL, '2020-11-28 06:55:10', '2020-11-28 06:55:10', NULL);
INSERT INTO `arsys_event_examiner` VALUES (3, 55, 1, 15, NULL, '2020-11-28 19:18:06', '2020-11-28 19:18:06', NULL);
INSERT INTO `arsys_event_examiner` VALUES (4, 55, 1, 26, NULL, '2020-11-28 19:18:08', '2020-11-28 19:18:08', NULL);
INSERT INTO `arsys_event_examiner` VALUES (5, 55, 1, 8, NULL, '2020-11-28 19:18:10', '2020-11-28 19:18:10', NULL);
INSERT INTO `arsys_event_examiner` VALUES (6, 55, 2, 2, NULL, '2020-11-28 19:18:20', '2020-11-28 19:18:20', NULL);
INSERT INTO `arsys_event_examiner` VALUES (7, 55, 2, 15, NULL, '2020-11-28 19:18:22', '2020-11-28 19:18:22', NULL);
INSERT INTO `arsys_event_examiner` VALUES (8, 55, 2, 13, NULL, '2020-11-28 19:18:23', '2020-11-28 19:18:23', NULL);
INSERT INTO `arsys_event_examiner` VALUES (9, 55, 3, 8, NULL, '2020-11-28 19:18:29', '2020-11-28 19:18:29', NULL);
INSERT INTO `arsys_event_examiner` VALUES (10, 55, 4, 15, NULL, '2020-11-28 19:18:37', '2020-11-28 19:18:37', NULL);
INSERT INTO `arsys_event_examiner` VALUES (11, 55, 4, 26, NULL, '2020-11-28 19:18:38', '2020-11-28 19:18:38', NULL);
INSERT INTO `arsys_event_examiner` VALUES (12, 55, 4, 13, NULL, '2020-11-28 19:18:39', '2020-11-28 19:18:39', NULL);
INSERT INTO `arsys_event_examiner` VALUES (13, 55, 5, 13, NULL, '2020-11-28 19:18:47', '2020-11-28 19:18:47', NULL);
INSERT INTO `arsys_event_examiner` VALUES (14, 55, 5, 8, NULL, '2020-11-28 19:18:48', '2020-11-28 19:18:48', NULL);
INSERT INTO `arsys_event_examiner` VALUES (15, 55, 5, 15, NULL, '2020-11-28 19:18:50', '2020-11-28 19:18:50', NULL);
INSERT INTO `arsys_event_examiner` VALUES (16, 55, 6, 1, NULL, '2020-11-28 19:19:01', '2020-11-28 19:19:01', NULL);
INSERT INTO `arsys_event_examiner` VALUES (17, 55, 6, 24, NULL, '2020-11-28 19:19:01', '2020-11-28 19:19:01', NULL);
INSERT INTO `arsys_event_examiner` VALUES (18, 55, 6, 3, NULL, '2020-11-28 19:19:02', '2020-11-28 19:19:02', NULL);
INSERT INTO `arsys_event_examiner` VALUES (19, 55, 7, 5, NULL, '2020-11-28 19:19:10', '2020-11-28 19:19:10', NULL);
INSERT INTO `arsys_event_examiner` VALUES (20, 55, 7, 6, NULL, '2020-11-28 19:19:10', '2020-11-28 19:19:10', NULL);
INSERT INTO `arsys_event_examiner` VALUES (21, 55, 7, 3, NULL, '2020-11-28 19:19:11', '2020-11-28 19:19:11', NULL);
INSERT INTO `arsys_event_examiner` VALUES (22, 55, 8, 1, NULL, '2020-11-28 19:19:17', '2020-11-28 19:19:17', NULL);
INSERT INTO `arsys_event_examiner` VALUES (23, 55, 8, 24, NULL, '2020-11-28 19:19:18', '2020-11-28 19:19:18', NULL);
INSERT INTO `arsys_event_examiner` VALUES (24, 55, 8, 3, NULL, '2020-11-28 19:19:19', '2020-11-28 19:19:19', NULL);
INSERT INTO `arsys_event_examiner` VALUES (25, 55, 9, 5, NULL, '2020-11-28 19:19:26', '2020-11-28 19:19:26', NULL);
INSERT INTO `arsys_event_examiner` VALUES (26, 55, 9, 18, NULL, '2020-11-28 19:19:29', '2020-11-28 19:19:29', NULL);
INSERT INTO `arsys_event_examiner` VALUES (27, 55, 9, 23, NULL, '2020-11-28 19:19:30', '2020-11-28 19:19:30', NULL);
COMMIT;

-- ----------------------------
-- Table structure for arsys_event_session
-- ----------------------------
DROP TABLE IF EXISTS `arsys_event_session`;
CREATE TABLE `arsys_event_session` (
  `id` int NOT NULL AUTO_INCREMENT,
  `time` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of arsys_event_session
-- ----------------------------
BEGIN;
INSERT INTO `arsys_event_session` VALUES (1, '07:00-08:00', '2020-11-25 05:38:05', NULL);
INSERT INTO `arsys_event_session` VALUES (2, '08:00-09:00', '2020-11-25 05:38:14', NULL);
INSERT INTO `arsys_event_session` VALUES (3, '09:00-10:00', '2020-11-25 05:38:46', NULL);
INSERT INTO `arsys_event_session` VALUES (4, '10:00-11:00', '2020-11-25 05:38:58', NULL);
INSERT INTO `arsys_event_session` VALUES (5, '11:00-12:00', '2020-11-25 05:39:09', NULL);
COMMIT;

-- ----------------------------
-- Table structure for arsys_event_space
-- ----------------------------
DROP TABLE IF EXISTS `arsys_event_space`;
CREATE TABLE `arsys_event_space` (
  `id` int NOT NULL AUTO_INCREMENT,
  `space` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `passcode` char(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of arsys_event_space
-- ----------------------------
BEGIN;
INSERT INTO `arsys_event_space` VALUES (1, '88976345', 'DDWMeeting', '2020-11-26 22:21:45', NULL);
INSERT INTO `arsys_event_space` VALUES (2, '89762534', 'PTEMeeting', '2020-11-26 22:22:00', NULL);
COMMIT;

-- ----------------------------
-- Table structure for arsys_event_type
-- ----------------------------
DROP TABLE IF EXISTS `arsys_event_type`;
CREATE TABLE `arsys_event_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `event_type` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `abbrev` char(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ina_description` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of arsys_event_type
-- ----------------------------
BEGIN;
INSERT INTO `arsys_event_type` VALUES (1, 'Pre-defense', 'PRE', 'Pre defense', 'Sidang Tertutup', '2019-03-16 21:03:41', '2019-03-16 21:03:41');
INSERT INTO `arsys_event_type` VALUES (2, 'Final-defense', 'PUB', 'Final defense', NULL, '2019-03-16 21:03:41', '2019-03-16 21:03:41');
INSERT INTO `arsys_event_type` VALUES (3, 'EE-seminar', 'STE', 'EE seminar', NULL, '2019-03-16 21:03:41', '2019-03-16 21:03:41');
INSERT INTO `arsys_event_type` VALUES (4, 'Industrial-practic', 'PRA', 'Seminar of industrial practical work', NULL, '2019-03-16 21:03:41', '2019-03-16 21:03:41');
INSERT INTO `arsys_event_type` VALUES (5, 'Proposal', 'PRO', 'Seminar of proposal', NULL, '2019-03-16 21:03:41', '2019-03-16 21:03:41');
INSERT INTO `arsys_event_type` VALUES (6, 'TK-seminar', 'TKS', NULL, NULL, '2019-08-05 03:11:09', '2019-08-05 03:11:09');
COMMIT;

-- ----------------------------
-- Table structure for arsys_faculty
-- ----------------------------
DROP TABLE IF EXISTS `arsys_faculty`;
CREATE TABLE `arsys_faculty` (
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
-- Records of arsys_faculty
-- ----------------------------
BEGIN;
INSERT INTO `arsys_faculty` VALUES (1, 'BMY', '1846', '196301091994022001', 5, 'Prof. Dr. Hj.', 'M.Si', 'Budi', 'Mulyanti', 'Lecture', NULL, 3, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `arsys_faculty` VALUES (2, 'AGF', '2055', '197211131999031001', 10, 'Dr.', 'S.Pd. M.Si', 'Ade Gafar', 'Abdullah', 'Lecture', NULL, 1, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `arsys_faculty` VALUES (3, 'DDW', '2934', '197608272009121001', 342, NULL, 'Ph.D', 'Didin', 'Wahyudin', 'Lecture', NULL, 1, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `arsys_faculty` VALUES (4, 'INK', '2338', '197709082003121002', 13, NULL, 'Ph.D', 'Iwan', 'Kustiawan', 'Lecture', 'E5051', 3, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `arsys_faculty` VALUES (5, 'DNK', '2654', '198006232008121002', 19, NULL, 'Ph.D', 'Dandhi', 'Kuswardhana', 'Lecture', 'EI', 1, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `arsys_faculty` VALUES (6, 'DLH', '2409', '196106041986031001', 3, 'Dr. H.', 'MT.', 'Dadang Lukman', 'Hakim', 'Lecture', NULL, 2, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `arsys_faculty` VALUES (7, 'SMT', '0541', '195507051981031005', 23, 'Prof. Dr.', 'MSIE.', NULL, 'Sumarto', 'Lecture', NULL, 2, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `arsys_faculty` VALUES (8, 'BCH', '0539', '195512042981031002', 85, 'Prof. Dr. H.', 'MSIE.', 'Bachtiar', 'Hasan', 'Lecture', NULL, 2, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `arsys_faculty` VALUES (9, 'ELM', '1751', '196404171992021001', 26, 'Dr.', 'M.Si.', 'Elih', 'Mulyana', 'Lecture', NULL, 2, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `arsys_faculty` VALUES (10, 'YYS', '0766', '195708051985031003', 21, 'Drs.', 'ST., M.Pd.', 'Yoyo', 'Somantri', 'Lecture', NULL, 1, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `arsys_faculty` VALUES (11, 'MMS', '2203', '197201192001121001', 11, 'Dr.', 'S.Pd. MT.', 'Maman', 'Somantri', 'Lecture', 'TE', 2, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `arsys_faculty` VALUES (12, 'SSE', '2202', '197311222001122002', 14, 'Dr.', 'S.Pd. MT.', 'Siscka', 'Elvyanti', 'Lecture', NULL, 3, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `arsys_faculty` VALUES (13, 'ARJ', '2108', '196406071995122001', 8, 'Ir.', 'MT.', 'Arjuni Budi', 'Pantjawati', 'Lecture', 'EK', 3, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `arsys_faculty` VALUES (14, 'ERH', '2407', '197605272001121002', 20, NULL, 'S.Pd. MT.', 'Erik', 'Haritman', 'Lecture', NULL, 1, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `arsys_faculty` VALUES (15, 'AHS', '2410', '197208262005011001', 71, NULL, 'MT.', 'Agus Heri Setya', 'Budi', 'Lecture', NULL, 3, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `arsys_faculty` VALUES (16, 'HSB', '2408', '197407162001121003', 17, 'Dr.', 'MT.', NULL, 'Hasbullah', 'Lecture', NULL, 2, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `arsys_faculty` VALUES (17, 'YDM', '1766', '196307271993021001', 15, 'Dr. H.', 'MT.', 'Yadi', 'Mulyadi', 'Lecture', 'E5231', 2, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `arsys_faculty` VALUES (18, 'TSM', '1748', '196410071991011001', 24, 'Dr.', 'MT.', 'Tasma ', 'Sucita', 'Lecture', 'E0451', 2, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `arsys_faculty` VALUES (19, 'MKH', '0535', '195311101980021001', 83, 'Prof. Dr. H.', 'M.Pd.', NULL, 'Mukhidin', 'Lecture', NULL, 3, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `arsys_faculty` VALUES (20, 'TSR', '1038', '196311211986032002', 27, 'Dr.', 'M.Pd', 'Tuti', 'Suartini', 'Lecture', NULL, 3, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `arsys_faculty` VALUES (21, 'IWR', '1036', '195802141986031002', 25, 'Dr.', 'ST. M.Pd.', 'I Wayan', 'Ratnata', 'Lecture', NULL, 2, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `arsys_faculty` VALUES (22, 'WAS', '2107', '197008081997021001', 18, NULL, 'MT.', 'Wasimudin Surya', 'Saputra', 'Lecture', NULL, 2, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `arsys_faculty` VALUES (23, 'TMH', '2745', '198204282009121006', 9, '', 'MT.', 'Tommi', 'Hariyadi', 'Lecture', NULL, 3, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `arsys_faculty` VALUES (24, 'BTM', '1235', '196103091986101001', 22, 'Dr. H.', 'MSIE.', 'Bambang ', 'Trisno', 'Lecture', NULL, 2, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `arsys_faculty` VALUES (25, 'JKR', '0767', '195912311985031022', 66, 'Dr.', 'M.Sc.', 'Jaja', 'Kustija', 'Lecture', NULL, 1, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `arsys_faculty` VALUES (26, 'AIP', '2355', '197004162005011016', 2, 'Dr.', 'MT.', 'Aip', 'Saripudin', 'Lecture', NULL, 3, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `arsys_faculty` VALUES (27, 'EAJ', '0755', '195508261981011001', 16, 'Dr.', 'M.Pd. MT.', 'Enjang A.', 'Juanda', 'Lecture', NULL, 3, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `arsys_faculty` VALUES (28, 'WWP', '1848', '196710261994031001', 12, 'Drs.', 'S.Pd. M.Si.', 'Wawan', 'Purnama', 'Lecture', NULL, 3, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `arsys_faculty` VALUES (29, 'REP', '3186', '920200419881019101', 339, '', 'S.Pd., M.Sc.', 'Roer', 'Eka Pawinanto', 'Lecture', NULL, 3, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `arsys_faculty` VALUES (30, 'MAR', '3178', '920200419921028101', 337, NULL, 'S.Pd., MT.', 'Muhammad ', 'Adli Rizqullah', 'Lecture', NULL, 3, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `arsys_faculty` VALUES (31, 'RPR', '3172', '920200419910418101', 338, NULL, 'S.Pd., MT.', 'Resa', 'Pramudita', 'Lecture', NULL, 3, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `arsys_faculty` VALUES (32, 'NFA', '3179', '920200419930905101', 336, NULL, 'S.Pd., MT.', 'Nurul', 'Fahmi', 'Lecture', NULL, 3, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `arsys_faculty` VALUES (33, 'STA', '3183', '920200419960203201', 340, NULL, 'ST., MT., ', 'Silmi', 'Ath Thahirah Al Azhi', 'Lecture', NULL, 3, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
INSERT INTO `arsys_faculty` VALUES (34, 'MAQ', '3204', '920200419890407201', 341, NULL, 'S.Si., MT.', 'Mariya', 'Al Qibtiya', 'Lecture', NULL, 3, NULL, NULL, NULL, '2020-11-10 07:10:26', '2020-11-10 07:10:26');
COMMIT;

-- ----------------------------
-- Table structure for arsys_proposal_approval
-- ----------------------------
DROP TABLE IF EXISTS `arsys_proposal_approval`;
CREATE TABLE `arsys_proposal_approval` (
  `id` int NOT NULL AUTO_INCREMENT,
  `research_id` bigint DEFAULT NULL,
  `reviewer` int DEFAULT NULL,
  `decision` int DEFAULT NULL,
  `comment` text,
  `approval_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for arsys_proposal_reviewer
-- ----------------------------
DROP TABLE IF EXISTS `arsys_proposal_reviewer`;
CREATE TABLE `arsys_proposal_reviewer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `research_id` bigint DEFAULT NULL,
  `reviewer` int DEFAULT NULL,
  `decision` int DEFAULT NULL,
  `comment` text,
  `approval_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of arsys_proposal_reviewer
-- ----------------------------
BEGIN;
INSERT INTO `arsys_proposal_reviewer` VALUES (1, 89, NULL, NULL, NULL, NULL, '2020-11-22 09:20:05', '2020-11-22 09:20:05');
INSERT INTO `arsys_proposal_reviewer` VALUES (2, 95, NULL, NULL, NULL, NULL, '2020-11-22 09:20:49', '2020-11-22 09:20:49');
INSERT INTO `arsys_proposal_reviewer` VALUES (6, 89, NULL, NULL, NULL, NULL, '2020-11-22 09:33:40', '2020-11-22 09:33:40');
INSERT INTO `arsys_proposal_reviewer` VALUES (7, 95, 2, NULL, NULL, NULL, '2020-11-22 09:34:15', '2020-11-22 09:34:15');
INSERT INTO `arsys_proposal_reviewer` VALUES (8, 95, 14, NULL, NULL, NULL, '2020-11-22 09:34:16', '2020-11-22 09:34:16');
INSERT INTO `arsys_proposal_reviewer` VALUES (9, 89, NULL, NULL, NULL, NULL, '2020-11-22 09:40:26', '2020-11-22 09:40:26');
INSERT INTO `arsys_proposal_reviewer` VALUES (10, 89, NULL, NULL, NULL, NULL, '2020-11-22 09:43:54', '2020-11-22 09:43:54');
INSERT INTO `arsys_proposal_reviewer` VALUES (14, 89, NULL, NULL, NULL, NULL, '2020-11-22 10:07:10', '2020-11-22 10:07:10');
INSERT INTO `arsys_proposal_reviewer` VALUES (15, 89, 14, NULL, NULL, NULL, '2020-11-22 10:07:46', '2020-11-22 10:07:46');
INSERT INTO `arsys_proposal_reviewer` VALUES (16, 89, 25, NULL, NULL, NULL, '2020-11-22 10:07:47', '2020-11-22 10:07:47');
INSERT INTO `arsys_proposal_reviewer` VALUES (17, 263, NULL, NULL, NULL, NULL, '2020-11-22 12:25:47', '2020-11-22 12:25:47');
INSERT INTO `arsys_proposal_reviewer` VALUES (18, 263, 2, 2, NULL, NULL, '2020-11-22 19:28:21', '2020-11-22 19:28:21');
INSERT INTO `arsys_proposal_reviewer` VALUES (19, 263, 3, 1, 'Lanjutkan', '2020-11-22 19:27:59', '2020-11-22 19:28:18', '2020-11-22 19:28:18');
INSERT INTO `arsys_proposal_reviewer` VALUES (20, 263, 5, 3, NULL, NULL, '2020-11-22 19:28:54', '2020-11-22 19:28:54');
INSERT INTO `arsys_proposal_reviewer` VALUES (21, 263, 14, NULL, NULL, NULL, '2020-11-22 12:28:30', '2020-11-22 12:28:30');
INSERT INTO `arsys_proposal_reviewer` VALUES (22, 263, 25, 4, NULL, NULL, '2020-11-22 19:29:00', '2020-11-22 19:29:00');
INSERT INTO `arsys_proposal_reviewer` VALUES (23, 264, NULL, NULL, NULL, NULL, '2020-11-24 04:00:21', '2020-11-24 04:00:21');
INSERT INTO `arsys_proposal_reviewer` VALUES (25, 264, 3, NULL, NULL, NULL, '2020-11-24 04:01:45', '2020-11-24 04:01:45');
INSERT INTO `arsys_proposal_reviewer` VALUES (26, 264, 14, NULL, NULL, NULL, '2020-11-24 04:01:49', '2020-11-24 04:01:49');
COMMIT;

-- ----------------------------
-- Table structure for arsys_research
-- ----------------------------
DROP TABLE IF EXISTS `arsys_research`;
CREATE TABLE `arsys_research` (
  `id` int NOT NULL AUTO_INCREMENT,
  `research_type` int DEFAULT NULL,
  `student_id` bigint DEFAULT NULL,
  `research_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `title` text,
  `abstract` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `research_milestone` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `approval_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=265 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of arsys_research
-- ----------------------------
BEGIN;
INSERT INTO `arsys_research` VALUES (1, 1, 15, 'SK-s1204044-1', 'TRAINER SIMULASI MOTOR INDUKSI 3 FASA SEBAGAI MEDIA PEMBELAJARAN UNTUK MENINGKATKAN PEMAHAMAN SISWA PADA MATA PELAJARAN INSTALASI MOTOR LISTRIK DI SMKN 4 BANDUNG', NULL, 17, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (2, 2, 2, 'TA-s1204127-1', 'ANALISIS PROFIL TEGANGAN DENGAN METODE NEWTON RAPHSON DAN FAST DECOUPLED PADA SISTEM TENAGA LISTRIK SALURAN 150 kV SUBSISTEM BANDUNG SELATAN', NULL, 17, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (3, 2, 14, 'TA-s1200342-1', 'RANCANG BANGUN SISTEM MINIATUR PENDETEKSI KEJANGGALAN BENANG PADA MESIN SPINNING BERBASIS MIKROKONTROLLER ARDUINO', NULL, 17, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (4, 1, 17, 'SK-s1206255-1', 'Studi Pemanfaatan Pendaftaran Peserta Didik Baru (PPDB) Online Dalam Pelayanan Peserta Didik Baru', NULL, 17, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (5, 1, 3, 'SK-s1204283-1', 'Sistem Pengamanan Sepeda Motor dengan Smart Card RFID', NULL, 16, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (6, 1, 4, 'SK-s1204926-1', 'ALAT PENGONTROL PH AIR OTOMATIS UNTUK TAMBAK IKAN BANDENG', NULL, 16, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (7, 1, 18, 'SK-s1200500-1', 'Implementasi Media Pembelajaran Berbasis Macromedia Flash 8 Pada Mata Pelajaran Perekayasaan Sistem Radio dan Televisi di SMKN 6 Bandung', NULL, 17, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (8, 2, 19, 'TA-s1506365-1', 'Analisis Prakiraan Kebutuhan Beban Energi Listrik Jangka Panjang (Long Term Load Forecasting) Untuk Berbagai Sektor Di PT. PLN Regional Jawa Barat', NULL, 17, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (9, 2, 27, 'TA-s1506850-1', 'Pembebanan Trafo Distribusi pada Jaringan Tegangan Rendah di Unit Layanan Pelanggan (ULP) Bandung Utara', NULL, 16, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (10, 2, 6, 'TA-s1500400-1', 'ANALISA KOORDINASI PROTEKSI OCR (OVER CURRENT RELAY) PADA GARDU INDUK CIANJUR 150KV', NULL, 16, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (11, 2, 28, 'TA-s1500538-1', 'OPTIMASI SISTEM OVERLOAD SHEDDING (OLS) PADA INTER BUS TRANSFORMER (IBT) 500 MVA DI SUB SISTEM BANDUNG SELATAN TERHADAP GANGGUAN BEBAN LEBIH', NULL, 17, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (12, 2, 9, 'TA-s1504316-1', 'Analisis Pengaruh Distributed Generation Terhadap Keandalan Penyulang Malanbong Coklat (MLBC)', NULL, 16, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (13, 2, 25, 'TA-s1503711-1', 'PERANCANGAN KEBUTUHAN KAPASITOR DAYA PT. PUPUK KUJANG CIKAMPEK', NULL, 16, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (14, 2, 29, 'TA-s1506006-1', 'ANALISIS HASIL PENGUJIAN TAHANAN ISOLASI TRANSFORMATOR DAYA BERDASARKAN HASIL UJI INDEKS POLARISASI DAN TANGEN DELTA\r\nPROYEK AKHIR', NULL, 16, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (15, 1, 16, 'SK-s1203169-1', 'Pembuatan Media Pembelajaran Pengujian Generator Beban Resistif', NULL, 17, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (16, 2, 39, 'TA-s1505307-1', 'Studi Analisis Susut Umur Transformator Distribusi 20kv Di Pt Pln Kota Bandung', NULL, 17, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (17, 1, 37, 'SK-s1205950-1', 'Analisis Pengaruh Cheat-sheet Pada Kemampuan Mahasiswa Dalam Mengerjakan Soal Ujian', NULL, 17, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (18, 1, 33, 'SK-s1206035-1', 'Persepsi Siswa Smkn 1 Cimahi Terhadap Kemampuan Mengajar Mahasiswa Ppl Upi Prodi Pendidikan Teknik Elektro Tahun 2017/2018', NULL, 17, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (19, 1, 11, 'SK-s1200356-1', 'Analisis Pengambilan Keputusan Dalam Memilih Program Studi Dan Pengalaman Belajar Mahasiswa Dpte Fptk Upi Terhadap Persepsi Kerja Bidang Teknik Elektro', NULL, 17, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (20, 1, 42, 'SK-s1400275-1', 'Kesiapan Smk Prodi Elektronika Industri Di Wilayah Bandung Raya Dalam Menghadapi Era Revolusi Industri 4.0', NULL, 17, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (21, 1, 43, 'SK-s1203616-1', 'Analisis Kualitas Soal Ulangan Semester Ganjil Pada Mata Pelajaran Produktif Program Keahlian Elektronika Pesawat Udara Di Smk Negeri 12 Bandung', NULL, 17, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (22, 2, 44, 'TA-s1500812-1', 'Analisis Perbaikan Profil Tegangan Saluran Transmisi 150 Kv Subsistem Cirata Menggunakan Metode Newthon-rhapson Dan Algoritma Ant Colony Optimization', NULL, 17, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (23, 2, 40, 'TA-s1501358-1', 'Analisis Perkiraan Umur Transformator 60 Mva 150/20 Kv Menggunakan Metode Degradasi Isolasi Di Gardu Induk Bandung Utara', NULL, 17, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (24, 1, 31, 'SK-s1301883-1', 'Penggunaan Augmented Reality Sebagai Media Pembelajaran Untuk Meningkatkan Kompetensi Pembelajaran Instalasi Plc Sebagai Pengendali Sistem Otomasi Industri Terhadap Siswa Smkn 1 Cimahi', NULL, 17, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (25, 2, 20, 'TA-s1500818-1', 'Desain Baru Pada Penerangan Jalan Dengan Pendekatan Homogeniuses Luminaires Dan Non-homogeniuses Luminaires', NULL, 17, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (26, 2, 21, 'TA-s1504381-1', 'Peramalan Kecepatan Angin Menggunakan Metode Penghalusan Eksponensial Dan Jaringan Syaraf Tiruan Untuk Rencana Pengaplikasian Pada Pltb (pembangkit Listrik Tenaga Bayu) Di Kota Bandung', NULL, 17, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (27, 2, 30, 'TA-s1500972-1', 'Perancangan Ulang Sistem Penerangan Jalan Umum (pju) Menggunakan Pendekatan Photometric', NULL, 17, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (28, 2, 1, 'TA-s1503510-1', 'Analisis Kinerja Lampu Light Emitting Diode, High Pressure Sodium Dan Metal Halide. Studi Kasus Pada Penerangan Jalan Umum Kota Bandung', NULL, 17, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (29, 2, 49, 'TA-s1501933-1', 'Analisis Kualitas Penerangan Jalan Umum Dan Desain Ulang Menggunakan Pendekatan Mesopic', NULL, 17, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (30, 1, 34, 'SK-s1200727-1', 'Relevansi Kurikulum Program Studi Pendidikan Teknik Elektro Dpte Fptk Upi Dengan Kebutuhan Guru Jurusan Teknik Instalasi Tenaga Listrik Smk Negeri Di Indramayu', NULL, 17, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (31, 2, 22, 'TA-s1506367-1', 'Perkiraan Jangka Panjang Konsumsi Energi Listrik Di Indonesia Menggunakan Jaringan Saraf Tiruan', NULL, 17, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (32, 2, 56, 'TA-s1302080-1', 'Implementasi Logika Fuzzy Pada Sistem Peredup Lampu Otomatis Ruangan', NULL, 17, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (33, 2, 10, 'TA-s1504873-1', 'Sistem Economic Dispatch (ed) Pembangkit Termal Dalam Interkoneksi Jawa-bali Menggunakan Algoritma Hybrid Back Propagation - Particle Swarm Optimization (pso) Dan Metode Iterasi Lambda', NULL, 17, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (34, 2, 35, 'TA-s1504417-1', 'Economic Dispatch Metode Iterasi Lambda Pembangkit Termal Interkoneksi Jawa-bali Dengan Beban Hari Libur Nasional Berbasis Feed Forward Back-propagation', NULL, 17, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (35, 1, 60, 'SK-s1500591-1', 'Analisis Standar Kompetensi Sektor Industri Telekomunikasi Yang Relevan Dengan Kurikulum 2013 Revisi Kompetensi Keahlian Teknik Elektronika Daya Dan Komunikasi Di Smk N 1 Cimahi', NULL, 17, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (36, 1, 54, 'SK-s1506342-1', 'Analisis Kompetensi Keahlian Teknik Jaringan Akses (tja) Yang Koheren Dengan Kurikulum 2013 Revisi Dan Sektor Industri Telekomunikasi', NULL, 17, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (37, 1, 58, 'SK-s1506337-1', 'Perancangan Alat Evaluasi Berjenjang Dalam Sistem Penilaian Autentik Pada Mata Pelajaran Produktif Di Smkn 6 Bandung', NULL, 17, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (38, 1, 55, 'SK-s1500051-1', 'Analisis Kesesuain Kompetensi Smk Kurikulum 2013 Revisi Kompetensi Keahlian Teknik Komputer Dan Jaringan (tkj) Dengan Kebutuhan Dunia Kerja Sektor Industri', NULL, 17, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (39, 1, 8, 'SK-s1203604-1', 'Analisis Faktor - Faktor Yang Mempengaruhi Daya Serap Dunia Industri Terhadap Lulusan Smk', NULL, 17, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (40, 1, 61, 'SK-s1506917-1', '“penerapan Modul Interaktif Internet Of Things Untuk Membantu Meningkatkan Keterampilan Siswa Kelas X Tja Smk Ut Pgii Bandung Pada Mata Pelajaran Elektronika Dan Mikroprosesor”', NULL, 17, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (41, 1, 62, 'SK-s1504210-1', 'Aplikasi New Fuzzy Expert System Dalam Mengevaluasi Kinerja Dan Potensi Akademik Siswa', NULL, 17, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (42, 1, 59, 'SK-s1501403-1', 'Analisis Faktor-faktor Kesulitan Belajar Siswa Pada Praktikum Instalasi Motor Listrik Di Smkn 4 Bandung', NULL, 17, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (43, 1, 53, 'SK-s1506923-1', 'Analisis Persepsi Mahasiswa Mengenai Literasi Gambar Teknik', NULL, 17, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (44, 1, 67, 'SK-s1501317-1', 'Penerapan Media Pembelajaran Software Optisystem Untuk Meningkatkan Hasil Belajar Peserta Didik Pada Mata Pelajaran Instalasi Jaringan Ftth Di Kelas Xi Tja Smk Ut Pgii Bandung', NULL, 17, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (45, 1, 66, 'SK-s1506776-1', 'Analisis Kesiapan Kerja Siswa Smk Di Wilayah Bandung Raya Pada Kompetensi Keahlian Teknik Telekomunikasi Dalam Menghadapi Era Revolusi Industri 4.0', NULL, 17, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (46, 1, 70, 'SK-s1204109-1', 'Analisis Model Pembelajaran Pbl (problem Based Learning) Kurikulum 2013 Di Smk Negeri 1 Cimahi', NULL, 17, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (47, 1, 63, 'SK-s1503449-1', 'Pengembangan Modul Latih (7,4) Hamming Code Channel Encoder Sebagai Media Pembelajaran Mata Kuliah Sistem Komunikasi Digital', NULL, 17, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (48, 1, 68, 'SK-s1503764-1', 'Pengembangan Modul Latih (7,4) Hamming Code Channel Decoder Sebagai Media Pembelajaran Mata Kuliah Sistem Komunikasi Digital.', NULL, 17, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (49, 2, 72, 'TA-s1606279-1', 'Analisis Jatuh Tegangan Jaringan Distribusi 20 Kv Pada Penyulang Cpk Pt. Pln (persero) Up3 Bandung', NULL, 17, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (50, 1, 69, 'SK-s1304081-1', 'Penerapan Media Pembelajaran Menggunakan Perangkat Lunak Autocad Untuk Meningkatkan Pemahaman Siswa Pada Kompetensi Dasar Gambar Teknik Di Smk Negeri 4 Bandung', NULL, 17, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (51, 1, 50, 'SK-s1304095-1', 'Pengembangan Media Pembelajaran Modul Latih Amplitude Shift Keying Modulation Di Kbk Telekomunikasi Departemen Pendidikan Teknik Elektro Upi Bandung', NULL, 17, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (52, 1, 38, 'SK-s1503467-1', 'Analisis Kelayakan Media Pembelajaran Fisika Listrik Berbasis Microcontroller', NULL, 17, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (53, 1, 45, 'SK-s1200728-1', 'Pemanfaatan Modul Latih Mydaq Sebagai Pengukur Komponen Elektronika Ac Dan Dc', NULL, 16, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (54, 2, 85, 'TA-s1304927-1', 'Automatic Feeding Machine And Monitoring Based Of Internet Of Thing', NULL, 16, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (55, 4, 77, 'SE-s1505889-1', 'Analisis Prediksi Kebutuhan Daya Dan Energi Listrik Jangka Panjang (studi Kasus Di Provinsi Jawa Tengah)', NULL, 10, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (56, 4, 82, 'SE-s1501809-1', 'Perancangan Papan Eksperimen Arduino Pada Mata Pelajaran Teknik Pemrograman Mikrokontroler Dan Mikroprosessor Di Smkn 4 Bandung', NULL, 10, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (57, 4, 92, 'SE-s1501656-1', 'Analisa Pelepasan Beban Tengangan Kerja Saluran Transmisi 150kv Subsistem Tasik Baru', NULL, 10, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (58, 4, 89, 'SE-s1603747-1', 'Sistem Gateway Untuk Finger Scanner Portable Berbasis Raspberry Pi Dan Lora Pada Perancangan Sistem Presensi Dosen Dalam Sidang Yudisium Dpte Fptk Upi', NULL, 10, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (59, 4, 75, 'SE-s1507133-1', 'Optimalisasi Pembangkit Listrik Tenaga Surya (plts) Off-grid Untuk Beban Penerangan Jalan Umum (pju) Dengan Lampu Led Daya 50 Watt', NULL, 10, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (60, 4, 91, 'SE-s1304072-1', 'Rancang Bangun Simulator Sistem Pergerakan Eskalator Otomatis Menggunakan Arduino', NULL, 10, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (61, 4, 102, 'SE-s1500819-1', 'Simulator Pengukur Ketinggian Pesawat Terbang Berbasis Iot', NULL, 10, NULL, NULL, '2020-11-22 10:03:33', '2020-11-22 10:03:33');
INSERT INTO `arsys_research` VALUES (62, 4, 88, 'SE-s1506338-1', 'Rancang Bangun Pengendali Jarak Jauh Mobil Eskavator Menggunakan Smartphone Melalui Jaringan Wireles Fideti ( Wi-fi)', NULL, 10, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (63, 4, 90, 'SE-s1500504-1', 'Simulator Kontrol Motor Listrik 1 Phasa Berbasis Phase Angle Control', NULL, 10, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (64, 4, 104, 'SE-s1501937-1', 'Angle Of Attack (aoa) Indicator Mini Simulator Berbasis Mikrokontroller', NULL, 10, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (65, 4, 98, 'SE-s1500429-1', 'Analisa Ketidak Seimbangan Beban Terhadap Arus Netral Dan Losses Pada Transformator Distribusi Rayon Bandung Selatan', NULL, 10, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (66, 2, 76, 'TA-s1504794-1', 'Optimasi Pemasangan Distributed Generation Untuk Mengurangi Rugi Daya Dengan Metode Particle Swarm Optimization (pso)', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (67, 4, 87, 'SE-s1502030-1', 'Rancang Bangun Mesin Pelarut Pcb Otomatis Berbasis Arduino', NULL, 10, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (68, 4, 94, 'SE-s1501848-1', 'Analisis Prediksi Kebutuhan Bahan Bakar Pltg Dan Pltgu Di Pulau Jawa Sampai Tahun 2021', NULL, 10, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (69, 4, 99, 'SE-s1507138-1', 'Analisis Ketidakseimbangan Beban Pada Gardu Distribusi Dengan Penyeimbangan Beban', NULL, 10, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (70, 4, 105, 'SE-s1507107-1', 'Optimasi Bts 4g Berdasarkan Tilting Antena Untuk Mengoptimalkan Coverage Area Pada Bts Pasteur', NULL, 10, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (71, 1, 73, 'SK-s1503975-1', 'Penerapan Model Pembelajaran Aktif Tipe Team Quiz Pada Mata Pelajaran Penerapan Sistem Radio Dan Televisi Di Smkn 6 Bandung', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (72, 1, 80, 'SK-s1501072-1', 'Perancangan Soal-soal Tipe Higher Order Thinking Skills (hots) Pada Mata Pelajaran Instalasi Tenaga Listrik Di Smkn 6 Bandung', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (73, 4, 103, 'SE-s1505329-1', 'Optimasi Besaran Kapasitor Untuk Mengurangi Rugi-rugi Daya Listrik Pada Jaringan Distribusi Di Penyulang Jampang Kulon Kabupaten Sukabumi', NULL, 10, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (74, 4, 95, 'SE-s1506336-1', 'Studi Pengaturan Tegangan Keluaran Generator Di Pt. Indonesia Power Ubp Kamojang Up Darajat Unit 1', NULL, 10, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (75, 1, 81, 'SK-s1504674-1', 'Implementasi Jaringan Saraf Tiruan Untuk Memprediksi Nilai Ujian Nasional Smk Negeri 2 Cimahi Dengan Metode Backpropagation', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (76, 4, 93, 'SE-s1501272-1', 'Analisis Rugi-rugi Daya Jaringan Distribusi 20 Kv Pada Penyulang Mlbc Rayon Leles Area Garut', NULL, 10, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (77, 4, 79, 'SE-s1500121-1', 'Rancang Bangun Sistem Kontrol Otomatis Untuk Pengangkut Sampah Di Pembangkit Listrik Pico-hydro', NULL, 10, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (78, 4, 100, 'SE-s1503446-1', 'Pengaruh Perubahan Temperatur Dan Iradiasi Terhadap Daya Keluaran Solar Cell Menggunakan Simulasi Matlab', NULL, 10, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (79, 4, 96, 'SE-s1500329-1', 'Rancang Bangun Simulator Alat Pengangkut Sampah Di Pembangkit Listrik Pico-hydro', NULL, 10, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (80, 4, 107, 'SE-s1505763-1', 'Rancang Bangun Pengaturan Kecepatan Motor Bldc (brushless Direct Current) Sensored Berbasis Mikrokontroller Arduino Uno', NULL, 10, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (81, 4, 48, 'SE-s1400047-1', 'Rancang Bangun Simulator Jembatan Hidrolik Secara Otomatis Berbasis Arduino Uno', NULL, 10, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (82, 4, 46, 'SE-s1501831-1', 'Pengusir Hama Tani Otomatis Berbasis Arduino Uno', NULL, 10, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (83, 2, 78, 'TA-s1505146-1', 'Analisis Keandalan Sistem Distribusi Tenaga Listrik 20kv Penyulang Bdkr Di Pt. Pln (persero) Ulp Leles', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (84, 1, 71, 'SK-s1506341-1', 'Tingkat Pemahaman Siswa Terhadap Besaran Dan Satuan Listrik Magnet', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (85, 2, 110, 'TA-s1602078-1', 'Perencanaan Penambahan Kubikel Untuk Keandalan Gardu Distribusi Wwr 20 Kv Pada Penyulang Kkh Milik Pt.pln (pesero) Up3 Bandung', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (86, 1, 51, 'SK-s1504586-1', 'Penerapan Model Pembelajaran Discovery Learning Terhadap Pemahaman Rangkaian Kontrol Motor Dengan Kontaktor Relai Mata Pelajaran Mesin Listrik Dan Kontrol Motor', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (87, 1, 57, 'SK-s1501987-1', 'Studi Komparatif Kompetensi Keahlian Teknik Jaringan Akses Di Smk Unggulan Terpadu Pgii Dengan Kebutuhan Keahlian Pt Telkom Dalam Menghadapi Revolusi Industri 4.0', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (88, 1, 74, 'SK-s1204923-1', 'Analisis Persepsi Guru Terhadap Sistem Informasi Management Berbasis Website Pada Praktik Kerja Industri Di Sekolah Menengah Kejuruan Negeri', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (90, 2, 114, 'TA-s1602104-1', 'Sistem Penyiraman Otomatis Dan Monitoring Tanaman', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (91, 2, 119, 'TA-s1401662-1', 'Analisis Pengaruh Konsentrator Lensa Fresnel Terhadap Efesiensi Daya Panel Surya', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (92, 2, 113, 'TA-s1605803-1', 'Analisis Pembebanan Transformator Pada Gardu Kbr 20 Kv Milik Pt. Pln (persero) Up3 Bandung', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (93, 2, 117, 'TA-s1607321-1', 'Evaluasi Daya Pada Gedung Perkuliahan Fakultas Ilmu Pendidikan (fip) Universitas Pendidikan Indonesia', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (94, 2, 124, 'TA-s1602080-1', 'Perancangan Pemasangan Daya Untuk Kebutuhan Tower Bts', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (95, 1, 84, 'SK-s1503967-1', 'Relevansi Kurikulum Program Produktif Kompetensi Keahlian Teknik Otomasi Industri Smkn 4 Bandung Terhadap Kebutuhan Dunia Industri', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (96, 2, 24, 'TA-s1506032-1', 'Low Interaction Honeypot Untuk Meminimalisir Serangan Distributed Denial Of Service (ddos): Slowloris Terhadap Web Server', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (97, 2, 127, 'TA-s1602092-1', 'Analisis Pengukuran Harmonisa Di Gedung Fakultas Ilmu Pendidikan (fip) Universitas Pendidikan Indonesia', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (98, 1, 118, 'SK-s1504845-1', 'Penerapan Dan Dampak Media Pembelajaran Sistem Absensi Berbasis Nodemcu Pada Mata Pelajaran Sistem Komputer Kompetensi Keahlian Teknik Komputer Dan Jaringan Di Smk Putra Nasional Cibodas', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (99, 2, 128, 'TA-s1602093-1', 'Analisis Hasil Pengujian Tahanan Isolasi Transformator Daya Berdasarkan Uji Indeks Polarisasi Dan Tangen Delta Di Pt. Pln (persero) Tjbt App Cirebon', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (100, 2, 129, 'TA-s1606582-1', 'Prototipe Sistem Monitoring Daya Pada Kwh Meter 1 Phasa Berbasis Iot (internet Of Things) Dengan Menggunakan Aplikasi Blynk Di Ponsel Android', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (101, 2, 125, 'TA-s1401410-1', 'Meningkatkan Kapasitas Pembangkit Listrik Tenaga Piko Hidro Menjadi 600 Watt Pada Potensi Aliran Air Di Dalam Kampus Universitas Pendidikan Indonesia', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (102, 2, 26, 'TA-s1506366-1', 'Analisis Delay Pada Perangkat Gigabit Passive Optical Network (gpon) Untuk Support Teknologi 4g/5g', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (103, 1, 7, 'SK-s1200589-1', 'Analisis Profil Laman Smkn Dalam Bidang Teknologi Dan Rekayasa Di Jawa Barat', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (104, 2, 13, 'TA-s1500550-1', 'Antena conical Ultra Wideband untuk aplikasi radar pasif', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (105, 2, 133, 'TA-s1606741-1', 'Perancangan Simulator Sistem Pengontrolan Conveyor Batubara Pltu Menggunakan Metode Pembacaan Putaran Motor Berbasis Arduino Atmega2560', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (106, 2, 65, 'TA-s1504696-1', 'Pembagi Daya Wilkinson Ultra Wideband Menggunakan Impedansi Bertahap dan Struktur Cincin', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (107, 2, 12, 'TA-s1505550-1', 'Antena Spiral Archimedean Ultrawide Band Dengan Pola Radiasi Directional', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (108, 2, 41, 'TA-s1204019-1', 'Perancangan Dan Pembuatan Pemutar 360 Derajat Prototype Tower Crane', NULL, 16, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (109, 1, 130, 'SK-s1503561-1', 'Implementasi Media Pembelajaran B-sos (blink Solar System) Berbasis Motor Dc Dan Huruf Braille Pada Pembelajaran Tata Surya Bagi Siswa Tunanetra Di Slb Negeri A Kota Bandung', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (110, 1, 136, 'SK-s1500171-1', '\"pengembangan Media Pembelajaran Motor Brushless Dc Pada Mata Pembelajaran Instalasi Motor Listrik', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (111, 1, 106, 'SK-s1507140-1', 'Analisis Pengaruh Self-efficacy Terhadap Keberhasilan Praktikum Siswa Perempuan Di Smk Unggulan Terpadu Pgii Dalam Bidang Keahlian Teknik Jaringan Akses', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (112, 1, 97, 'SK-s1503904-1', 'Identifikasi Sikap Siswa Terhadap Penerapan Kesehatan Dan Keselamatan Kerja (k3) Pada Praktik Instalasi Penerangan Listrik\r\nDi Smk Negeri 4 Bandung', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (113, 1, 86, 'SK-s150568-1', 'Pembuatan Jobsheet Trainer Proximity Sensor Sebagai Media Pembelajaran Pada Mata Pelajaran Piranti Sensor Dan Aktuator Di Smk Negeri 4 Bandung', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (114, 1, 135, 'SK-s1405131-1', 'Penerapan Model Pembelajaraan Kooperatif Tipe Think Talk Write (ttw) Pada Mata Pelajaran Sistem Robotik Di Smkn 2 Cimahi', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (115, 1, 111, 'SK-s1301997-1', 'Analisis Penerapan Literasi Online Pada Mata Pelajaran Penerapan Rangkaian Elektronika Di Smkn 1 Cirebon', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (116, 2, 139, 'TA-s1606400-1', 'Perencanaan Dan Pemasangan Kontroler Pada Mobil Listrik', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (117, 1, 115, 'SK-s1401970-1', 'Pengaruh Kegiatan Ekstrakurikuler Berbasis Kompetensi Keahlian Terhadap Prestasi Belajar Mata Pelajaran Dasar Program Keahlian Pada Siswa Kelas Xi Teknik Mekatronika Smk Negeri 2 Cimahi', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (118, 2, 138, 'TA-s1602086-1', 'Rancang Bangun Rangka Terhadap Kinerja Motor Pada Mobil Listrik', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (119, 2, 140, 'TA-s1602118-1', 'Perencanaan Pemilihan Baterai  Pada Mobil Listrik', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (120, 2, 121, 'TA-s1506969-1', 'Rancang Bangun Pengendali Kecepatan Motor Dc Pada Konveyor Berbasis Penerapan Adaptif Logika Fuzzy', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (121, 2, 134, 'TA-s1606718-1', 'Perancangan Dan Pembuatan  Alternatif Energi Berbasis Piezoelektrik Dengan Pemanfaatan Tetesan Air', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (122, 2, 141, 'TA-s1606280-1', 'Perencanaan Dan Pemasangan Sistem Kelistrikan Pada Mobil Listrik', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (123, 1, 142, 'SK-s1506780-1', 'Analisis Daya Serap Siswa Pada Materi Mata Pelajaran Mesin Listrik Dan Kontrol Motor', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (124, 1, 112, 'SK-s1304887-1', 'Pengembangan Jobsheet Robot Darwin Mini Untuk Implementasi Pembelajaran Mata Kuliah Robotika', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (125, 2, 144, 'TA-s1404347-1', 'Economic Dispatch Pada Pltu Batu Bara Menggunakan Metode Lagrange', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (126, 2, 148, 'TA-s1602123-1', 'Sistem Kontrol Dan Monitoring Gerbang Otomatis Berbasis Smartphone', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (127, 1, 126, 'SK-s1401029-1', 'Pengembangan Media Pembelajaran Augmented Reality Berbasis Sistem Operasi Android Pada Mata Pelajaran Dasar Listrik Dan Elektronika', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (128, 2, 145, 'TA-s1602112-1', 'Rancang Bangun Panel Surya Dinamis', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (129, 2, 36, 'TA-s1204286-1', 'SIMULASI ELECTRONIC LOAD CONTROLLER BERBASIS PERANGKAT LUNAK PROTEUS SEBAGAI SISTEM KONTROL PEMBANGKIT LISTRIK TENAGA MIKRO HIDRO', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (130, 2, 150, 'TA-s1606421-1', 'Rancang Bangun Sistem Penyortir Berdasarkan Ketinggian Barang Berbasis Arduino Uno', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (131, 2, 149, 'TA-s1204134-1', 'Rancang Bangun Sistem Kontrol Dan Automasi Gedung Berbasis Mikrokontroler', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (132, 1, 143, 'SK-s1204412-1', 'Analisis Kegiatan Belajar Mengajar Mahasiswa Program Pengalaman Lapangan (ppl) Departemen Pendidikan Teknik Elektro Universitas Pendidikan Indonesia Di Smkn 1 Cimahi', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (133, 2, 146, 'TA-s1607460-1', 'Rancang Bangun Alat Pelacak Dan Pengaman Kendaraan Bermotor Dengan Menggunakan Nodemcu Esp8266 Berbasis Aplikasi Blynk', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (134, 2, 151, 'TA-s1605817-1', 'Rancang Bangun Sistem Pengendalian Dan Monitoring Keamanan Pintu Rumah Berbasis Iot(internet Of Things) Dengan Menggunakan Aplikasi Blynk Di Ponsel Android', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (135, 2, 147, 'TA-s1305640-1', 'Perancangan Solar Home System Untuk Memenuhi Kebutuhan Energi Listrik Daerah Terpencil', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (136, 1, 122, 'SK-s1400666-1', 'Implementasi Media Pembelajaran Mikrokontroler Menggunakan Proteus Dan Trainer Di Smk Negeri 1 Cimahi', NULL, 16, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (137, 1, 154, 'SK-s1204910-1', 'Analisa Penerapan K3 Pada Siswa Smkn 1 Cimahi Jurusan Otomasi Industri', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (138, 1, 64, 'SK-s1203972-1', 'Perencanaan Jaringan Distribusi Tegangan Rendah Di Perum Padalarang Techno Regency', NULL, 16, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (139, 2, 155, 'TA-s1403380-1', 'Pembuatan Dc-dc Converter Tipe Boost Dengan Menggunakan Teknik Kendali Virtual Resistance', NULL, 16, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (140, 1, 83, 'SK-s1504623-1', 'Teknik Pembelajaran Brain Break Untuk Meningkatkan Hasil Belajar Pada Materi Rangkaian Digital Kombinasional', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (141, 2, 172, 'TA-s1502063-1', 'Analisis Economic Dispatch Menggunakan Metode Lambda Iteration \r\nPada Beban Anomali Hasil Peramalan Metode Fuzzy Subtractive Clustering', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (142, 2, 165, 'TA-s1500233-1', 'Peramalan Konsumsi Energi Listrik Jangka Panjang Menggunakan Jaringan Syaraf Tiruan', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (143, 2, 137, 'TA-s1301686-1', 'Analisis Harmonisa Energi Listrik Pada Gedung Fip Baru Universitas Pendidikan Indonesia', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (144, 2, 173, 'TA-s1302017-1', 'Analisis Audit Energi Pada Sistem Tenaga Listrik Di Gedung Fip Baru Universitas Pendidikan Indonesia', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (145, 1, 123, 'SK-s1501726-1', 'Studi Relevansi Kurikulum Mata Pelajaran Produktif Instalasi Penerangan Listrik Kompetensi Keahlian Teknik Instalasi Tenaga Listrik Di Smk Negeri 4 Bandung Dengan Kesesuaian Standar Kompetensi Kerja Nasional Indonesia Bidang Ketenagalistrikan', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (146, 4, 179, 'SE-s1705661-1', 'Remote Desktop System In Iot And Html 5-based Virtual Laboratory For Hmi (human Machine Interface) Practicum And Hydraulic Simulation', NULL, 10, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (147, 4, 192, 'SE-s1701824-1', 'Design Of Graphical User Interface (gui) On Iot-based Remote Laboratory For Programmable Logic Controller (plc) Practicum And Pneumatic Simulation', NULL, 10, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (148, 1, 195, 'SK-s1304233-1', 'Implementasi Media Pembelajaran Perangkat Lunak Oracle Vm Virtualbox Untuk Meningkatkan Hasil Belajar Pada Materi Sistem Operasi Di Smkn 4 Bandung', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (149, 1, 159, 'SK-s1503874-1', 'Pengembangan Media Pembelajaran Sistem Kontrol Pneumatik Berbasis Macromedia Flash Di Smk Negeri 4 Bandung', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (150, 1, 163, 'SK-s1505737-1', 'Analisis Kesesuaian Sarana Dan Prasarana Purbaratu Netsim Program Teknik Komputer Dan Jaringan Di Smk Negeri 4 Tasikmalaya Dengan Standar Kompetensi Kerja Nasional Indonesia (skkni)', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (151, 1, 153, 'SK-s1505698-1', 'Implementasi Mata Pelajaran Teknik Pemrograman Mikroprosesor Dan Mikrokontroller Kurikulum 2013 Di Smk Dan Industri', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (152, 2, 190, 'TA-s1203168-1', 'Prototype Of Jarvis Voice Control', NULL, 16, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (153, 1, 209, 'SK-s1501311-1', 'Studi Relevansi Mata Pelajaran Produktif Intalasi Penerangan Listrik Di Smk Cendekia Batujajar Dengan Standar Kompetensi Kerja Nasional Indonesia Sub Bidang Konstruksi', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (154, 4, 166, 'SE-s1600417-1', 'Rancang Bangun Evanescent Optical Fiber Sensors Menggunakan Single Mode Fiber Optic Untuk Mengukur Kadar Ammonia', NULL, 10, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (155, 4, 180, 'SE-s1605527-1', 'Rancang Bangun Prototipe Smart Quranic Garden System Menggunakan Mikrokontroller Atmega328 Dan Nodemcu Esp8266', NULL, 10, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (156, 4, 189, 'SE-s1600103-1', 'Analisis Pengaruh Kebersihan Maintenance Modul Surya Terhadap Produksi Plts Cirata 1 Mw', NULL, 10, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (157, 1, 116, 'SK-s1504967-1', 'Implementasi Trainer Plc Outseal Pada Mata Pelajaran Sistem Kendali Robotik', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (158, 2, 213, 'TA-s1600825-1', 'Perancangan Aplikasi Pemantau Pedagang Keliling Berbasis Android', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (159, 1, 181, 'SK-s1500554-1', 'Pengembangan Jobsheet Praktik Instalasi Penerangan Listrik Sebagai Media Pembelajaran Di Smk Negeri 1 Cirebon', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (160, 4, 158, 'SE-s1600986-1', 'Rancang Bangun Sistem Pendeteksi Dan Pengenalan Objek Menggunakan Metode Single Shot Multibox Detector Bagi Penyandang Tunanetra', NULL, 10, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (161, 1, 215, 'SK-s1500665-1', 'Relevansi Uji Kompetensi Keahlian Smk Bidang Teknik Elektro Dengan Uji Kompetensi Sesuai Standar Kompetensi Kerja Nasional Indonesia (skkni)  Di Lembaga Sertifikasi Pprofesi (lsp)', NULL, 17, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (162, 4, 176, 'SE-s1600046-1', 'Analysis Undervoltage Relay Generator Unit 1 Plta Saguling', NULL, 10, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (163, 4, 157, 'SE-s1602314-1', 'Sibi (sistem Bahasa Isyarat Indonesia) Recognition Dengan Webcam Menggunakan Metode Convolutional Neural Network (cnn)', NULL, 10, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (164, 4, 193, 'SE-s1603612-1', 'Analisis Pengaruh Pemasangan Kapasitor Terhadap Efisiensi Motor Induksi 3 Fasa Menggunakan Metode Segregated Loss', NULL, 10, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (165, 4, NULL, 'SE-s1603957-1', 'Iot Based Wearable Personal Air Monitoring For Sinusitis With Humidifier Output', NULL, 10, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (166, 4, 211, 'SE-s1405961-1', 'Perencanaan Smart Farm Pada Sistem Budidaya Jangkrik Berbasis Arduino Uno', NULL, 10, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (167, 4, 212, 'SE-s1607637-1', 'Analisis Penggunaan Relay Proteksi Rotor Groud Fault Generator Plta Saguling', NULL, 10, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (168, 4, 206, 'SE-s1606984-1', 'Development Of Webcare Based On Real Time Remote Monitoring Using Lora Device', NULL, 10, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (169, 4, 217, 'SE-s1600585-1', 'Perancangan Gateway Wsn Berbasis Lora Menggunakan Raspberry Pi Dan Rak 831', NULL, 10, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (170, 4, 182, 'SE-s1601183-1', 'Rancang Bangun Programmable Coupled Resonator Bandpass Filter Menggunakan Digitally Tunable Capacitors', NULL, 10, NULL, NULL, '2020-11-22 10:03:34', '2020-11-22 10:03:34');
INSERT INTO `arsys_research` VALUES (171, 4, 226, 'SE-s1301733-1', 'Rancang Bangun Trainer Plc', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (172, 4, 178, 'SE-s1605762-1', 'Optimasi Operasi Plta Dengan Memperhatikan Batasan Ketersediaan Air Menggunakan Linear Programming', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (173, 4, 197, 'SE-s1600846-1', 'Analisis Penempatan Titik Recloser Pada Penyulang Pkw 20kv Berdasarkan Nilai Fitness Maksimum', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (174, 4, 187, 'SE-s1601051-1', 'Hommath (media Pembelajaran Berbasis Audio Sebagai Alat Bantu Pembelajaran Penyandang Tuna Netra Pada Materi Bangun Ruang Kubus, Balok Dan Prisma Segitiga).', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (175, 4, 222, 'SE-s1607523-1', 'Fabrikasi Optical Power Meter Untuk Single-mode Optical Fiber Based Transmission System Dengan Menggunakan Arduino Pro Mini', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (176, 4, 185, 'SE-s1601897-1', 'Efek Forward Error Correction Menggunakan Kode Bch Terhadap Konstelasi Sinyal', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (177, 4, 160, 'SE-s1606292-1', 'Perancangan Sistem Pengukuran Kepadatan Lalu Lintas Berbasis Nvidia Jetson Nano Menggunakan Algoritma Single Shot Multibox-detector (ssd)', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (178, 4, 242, 'SE-s1604109-1', 'Identifikasi Penyakit Pada Daun Tanaman Cabai Menggunakan Ekstraksi Ciri Glcm (gray Level Co-occurrence Matrix) Dan L*a*b* Color Moment', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (179, 4, 221, 'SE-s1601109-1', 'Sistem Monitoring Energi Yang Terpakai Pada Instalasi Rumah', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (180, 4, 207, 'SE-s1602342-1', 'Analisis Nilai Indeks Keandalan Sistem Distribusi Tenaga Listrik Menggunakan Metode Section Technique', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (181, 4, 201, 'SE-s1607578-1', 'Sistem Presensi Pengenalan Wajah Menggunakan Alogaritma Haar Cascade Classifier', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (182, 4, 238, 'SE-s1607638-1', 'Analisa Pengaruh Iradiasi Matahari Terhadap Produksi Plts 1 Mw Cirata Pt. Pembangkitan Jawa-bali', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (183, 4, 191, 'SE-s1601218-1', 'Perancangan Jaringan Seluler Pada Frekuensi 1800mhz Di Daerah Sukasari Kota Bandung Menggunakan Software Atoll', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (184, 4, 214, 'SE-s1608212-1', 'Simulasi Optimasi Sinyal 4g Lte Xl Axiata Di Area Universitas Pendidikan Indonesia', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (185, 4, 171, 'SE-s1602146-1', 'Analisa Performance Ratio Plts 1 Mw Cirata Menggunakan Metode Perhitungan Overall Equipment Effectiveness', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (186, 4, 183, 'SE-s1601420-1', 'Analisis Rugi Daya Pada Jaringan Distribusi Gardu Kco Dan Gardu Graa Pada Penyulang Cido Kabupaten Bandung', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (187, 4, 223, 'SE-s1500923-1', 'Rancang Bangun Gateway Lora Dengan Menggunakan Platform Antares', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (188, 4, 220, 'SE-s1606041-1', 'Analisis Daya Pembangkit Listrik Tenaga Surya 1 Mw Cirata', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (189, 4, 208, 'SE-s1600363-1', 'Analisa Perbandingan Output Daya Solar Pv Fix Mounting Dan Floating Pv Di Plts 1 Mw Cirata', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (190, 4, 232, 'SE-s1606053-1', 'Efficiency Battery Pbc Lead Carbon In Plts 1 Mw Cirata', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (191, 4, 168, 'SE-s1505886-1', 'Analisis Pentanahan Kaki Menara Saluran Udara Tegangan Tinggi (sutt) Trasmisi 150 Kv Koto Panjang - Payakumbuh Pt. Pln (persero)  Gardu Induk Payakumbuh Bertahanan Tinggi Dan Usaha Menurunkannya', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (192, 4, 194, 'SE-s1604423-1', 'Penerapan Sistem Wireless Sensor Network (wsn) Pada Peternakan Kandang Ayam', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (193, 4, 235, 'SE-s1606382-1', 'Sistem Monitorig Keamanan Kebakaran Pada Gudang Berbasis Internet Of Things', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (194, 4, 162, 'SE-s1606508-1', 'Analisa Harmonic Distotion Effect Terhadap Arus Netral, Losses Dan Derating Pada Trafo Distribusi Rayon Bandung Utara', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (195, 4, 219, 'SE-s1606233-1', 'Pengaruh Harmonisa Terhadap Suhu Dan Rugi Daya Transformator Distribusi Rayon Bandung Utara', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (196, 4, 205, 'SE-s1607666-1', 'Perancangan Filter Finite Impulse Response (FIR) Menggunakkan Metode Windowing Pada Frekuensi Kerja Perangkat Pancar Siaran Radio Niaga', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (197, 2, 244, 'TA-s1601112-1', 'Desain Smart Meter Berbasis Lorawan Untuk Deteksi Tegangan Abnormal Pada Smartgrid', NULL, 17, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (198, 4, 198, 'SE-s1602348-1', 'Perbandingan Kurva Karakteristik Generator Sinkron Tipe Inner Dan Outter Magnet Permanen Menggunakan Software Design Electromagnetic Berbasis Finite Element Methode (fem) (studi Kasus Pada Motor Listrik 12 Alur 8 Kutub)', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (199, 4, 246, 'SE-s1603746-1', 'Analisis Ekonomi Dan Keandalan  Single Axis Solar Tracker And Fix Mounting Di Plts Cirata 1mw', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (200, 4, 225, 'SE-s1500284-1', 'Pembuatan Simulator Boost Converter Menggunakan Kendali Open Loop', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (201, 4, 245, 'SE-s1604461-1', 'Plugin Berita Acara Perkuliahan Berbasis Web (symposa Package)', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (202, 4, 199, 'SE-s1602028-1', 'Pemograman Robot Humanoid Tari Piring Menggunakan Software R+ Motion Untuk Pembelajaran Mata Kuliah Robotika', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (203, 4, 230, 'SE-s1601682-1', 'Rancang Bangun Pesawat Tanpa Awak Berbasis Quadcopter Dan Sistem Penyemprotan Pestisida Atau Pupuk Dibidang Petanian', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (204, 4, 228, 'SE-s1401016-1', 'Perancangan Vibration Wrist Sebagai Alat Bantu Challenge Untuk Referee Respones Speed  Berbasis Microcontroller', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (205, 4, 174, 'SE-s1604974-1', 'Peningkatan Bandwidth Antena Patch Mikrostrip Berpolarisasi Horizontal Dengan Menambahkan Metamaterial Split Ring Resonator (srr)', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (206, 4, 177, 'SE-s1603886-1', 'Rancang Bangun  Antena Mikrostrip X-band Untuk Sistem Circularly Polarized  Synthetic Aperture Radar (cp-sar)', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (207, 4, 196, 'SE-s1607011-1', 'Analisis Keandalan Recloser Pada Penyulang Cklw Jaringan Sutm 20 Kv Di Pt. Pln (persero) Up3 Cimahi', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (208, 4, 188, 'SE-s1601016-1', 'Off Grid System Design For Control Room At Plts 1 Mwp Pt. Pembangkitan Jawa Bali With Solar Photovoltaic', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (209, 4, 175, 'SE-s1602157-1', 'Sistem Review Program Kreativitas Mahasiswa (pkm) Berbasis Website (future Scienties)', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (210, 4, 170, 'SE-s1606388-1', 'Non-invasive Cholestrol Checker System', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (211, 4, 200, 'SE-s1605490-1', 'Simulator Sistem Kontrol Pada Mesin Stenter', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (212, 4, 227, 'SE-s1608203-1', 'Rancang Bangun Hotplate Stirrer Magnetik Terkendali Temperatur Dan Kecepatan Pengaduk Untuk Larutan Homogen', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (213, 4, 164, 'SE-s1607629-1', 'Analisis Kinerja Hybrid Optical  Amplifier Soa-edfa Dalam Mengatasi Efek Nonlinier Link Dense Wavelength Division Multiplexing', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (214, 4, 252, 'SE-s1606032-1', 'Rancang Bangun Implementasi Wireless Sensor Network Berbasis Mikrokontroler Atmega328 Dan Lora Pada Bidang Agrikultur', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (215, 4, 248, 'SE-s1608128-1', 'Carehelmet Pendeteksi (lokasi,waktu Dan Tingkat Benturan) Pada Kecelakaan Lalu Lintas Berbasis Sensor Fsr402 Dan Sensor Piezoelektrik Vibration', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (216, 4, 218, 'SE-s1607654-1', 'Sistem Pakar Diagnosa Kerusakan Pada Plc Menggunakan Algoritma Naive Bayes', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (217, 4, 251, 'SE-s1601375-1', 'Sistem Pakar Untuk Diagnosis Kerusakan Hardware Pada Notebook Menggunakan Metode Forward Chaining', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (218, 4, 243, 'SE-s1607636-1', 'Analisis Perbandingan Kinerja Penguat Edfa, Soa, Dan Raman Pada Sistem Wavelength Division Multiplexing Dengan Mekanisme Deinterleaver', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (219, 4, 234, 'SE-s1607158-1', 'Desain Alat Pendeteksi Kebocoran Udara Pada Casing Alat Komunikasi Berbasis Komputer', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (220, 4, 231, 'SE-s1607148-1', 'Prototype Kesetimbangan Kapal Laut Terhadap Dengan Menggunakan Sensor Gyroscope', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (221, 4, 167, 'SE-s1601874-1', 'Rancang Bangun Alat Pemberi Pakan Ikan Jarak Jauh Dan Dekat Menggunakan Plc Autonics Yang Terintegrasi Hmi', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (222, 4, 253, 'SE-s1606464-1', 'Perancangan Scada Pada Trainer Industrial Controll Work Cell Menggunakan Cx-supervisor Berbasis Plc Omron Cp1l L20dr-a', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (223, 2, 169, 'TA-s1601121-1', 'Perencanaan Dan Pemasangan Sistem Transportasi Elektrik Vertikal (elevator) Gedung Kantor Alat Kesehatan Di Lengkong Kecil Kota Bandung', NULL, 17, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (224, 4, 259, 'SE-s1607676-1', 'Monitoring Pembelajaran Siswa Dengan Rekognisi Wajah, Emosi Dan Kantuk (tidur) Berdasarkan Modifikasi Pada Histogram Gradien Berorientasi Dalam Kombinasi Linear Svm Dan Haar Cascade Untuk Klasifikasi Dengan Keras', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (225, 2, 265, 'TA-s1606976-1', 'Desain Dan Fabrikasi Antena Quasi-yagi Uda Mimo 2x2 Untuk Aplikasi Jaringan 5g Pada Perangkat Seluler', NULL, 17, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (226, 2, 266, 'TA-s1600818-1', 'Perbandingan Penggunaan Very Small Aperture Terimnal (VSAT) Dan Serat Optik Pada Jaringan Anjungan Tunai Mandiri (ATM) Di Bandung.', NULL, 17, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (227, 1, 258, 'SK-s1503978-1', 'PERAN MANAJEMEN KNOWLEDGE SHARING DALAM PENYELESAIAN PROYEK AKHIR MAHASISWA BEBRBASIS COLLABORATIVE PLATFORM', NULL, 17, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (228, 2, 271, 'TA-s1600658-1', 'Analisis Dampak Pemasangan Distributed Generation Pada Sistem Distribusi 20 Kv', NULL, 17, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (229, 2, 257, 'TA-s1604937-1', 'Analisis Koordinasi Relay Arus Lebih Atau Ocr (over Current Relay) Pada Penyulang Galanggang Gardu Induk Lagadar', NULL, 16, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (230, 2, 250, 'TA-s1605528-1', 'Analisis Sistem \"smart Grid\" Pada Tenaga Listrik', NULL, 17, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (231, 2, 272, 'TA-s1601864-1', 'Analisis Stabilitas Tegangan Sistem Tenaga Listrik 500 Kv Jawa Bali Dengan Fast Voltage Stability Index (fvsi)', NULL, 16, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (232, 2, 256, 'TA-s1607496-1', 'Evaluasi Keandalan Sistem Jaringan Distribusi 20 Kv Menggunakan Metode Reliability Network Equivalent Approach (rnea) Pada Sutm Penyulang Mars.', NULL, 16, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (233, 2, 278, 'TA-s1601010-1', 'Peramalan Beban Listrik Jangka Pendek Menggunakan Metode Artificial Neural Networks (ann)', NULL, 16, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (234, 1, 132, 'SK-s1501362-1', 'Analisis Penerapan Pembelajaran Daring  di SMK Negeri 1 Katapang', NULL, 17, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (235, 1, 283, 'SK-s1305639-1', 'EFEKTIVITAS PENGGUNAAN FESTO FLUIDSIM SEBAGAI MEDIA PEMBELAJARAN UNTUK MENINGKATKAN HASIL BELAJAR PNEUMATIK SISWA KELAS XI-A DAN XI-D DI SMKN 2 CIMAHI', NULL, 17, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (236, 2, 262, 'TA-s1601008-1', 'Perencanaan Penyediaan Energi Listrik Kawasan Strategis Pariwisata Nasional Sampai Tahun 2025', NULL, 17, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (237, 2, 261, 'TA-s1607081-1', 'Fungsi Tambahan Electric Vehicle Terhadap Grid Sebagai Penyimpanan Support System.', NULL, 17, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (238, 2, 260, 'TA-s1607331-1', 'Analisis Gangguan Pada Jaringan Distribusi Berbasis Fuzzy Logic Dan Jaringan Syaraf Tiruan', NULL, 17, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (239, 2, 288, 'TA-s1603417-1', 'OPTIMALISASI PENERANGAN JALAN UMUM DAN DESAIN ULANG PENERANGAN JALAN UMUM BERBASIS DIALUX DAN LOGIKA FUZZY', NULL, 17, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (240, 2, 275, 'TA-s1607118-1', 'Perbandingan Kinerja Sensor Ultrasonic, Infrared, dan KY-032 Pada Realtime Parking System Berbasis Website', NULL, 17, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (241, 2, 284, 'TA-s1606195-1', 'Pengaruh Kecepatan Angin Dan Variasi Jumlah Sudu Terhadap Performansi Turbin Angin Sumbu Horizontal Pada Pembangkit Listrik Tenaga Bayu', NULL, 17, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (242, 2, 120, 'TA-s1307189-1', 'Perancangan Sistem Panel Surya untuk Suplay Daya Windcube Lidar Di Pulau Tinjil', NULL, 16, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (243, 1, 269, 'SK-s1306721-1', 'Analisis Kemampuan Siswa Dalam Memahami Konsep Komponen Sensor Dan Tranduser Pada Mata Diklat Penerapan Rangkaian Elektrik (pre) Kelas Xi Di Jurusan Teknik Audio Video (tav) Smk Negeri 4 Bandung', NULL, 17, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (244, 1, 161, 'SK-s1605878-1', 'Implementasi Metode Certainly Of Response Index (cri) Untuk Meningkatkan Aktivitas Dan Hasil Belajar Pada Mata Pelajaran Mikroprosesor Dan Mikrokontroler Kelas XI Teknik Elektronika Industri (EIND) Di Smk Negeri 1 Majalaya Semester II (GENAP) Tahun Ajaran 2019/2020', NULL, 16, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (245, 2, 291, 'TA-s1605911-1', 'Penerapan Genetic Algorithm Dalam Optimasi Desain Ulang Penerangan Jalan Umum', NULL, 17, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (246, 2, 292, 'TA-s1601296-1', 'Prediksi Konsumsi Energi Menggunakan Metode Artificial Neural Network Pada Salah Satu Pusat Perbelanjaan di Kota Cirebon', NULL, 17, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (247, 2, 290, 'TA-s1601412-1', 'Penerapan Fuzzy Logic Untuk Peramalan Konsumsi Energi  Jangka Pendek Pada Salah Satu Pusat Perbelanjaan di Kota Cirebon', NULL, 17, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (248, 2, 239, 'TA-s1604526-1', 'Rancang Bangun Sistem Iot Pemantauan Sungai Berbasis Esp32, Lora, Dan Web-based Application', NULL, 17, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (249, 2, 296, 'TA-s1607633-1', 'Rancang Bangun Sistem Real Time Watermeter Berbasis Internet of Things (Iot)', NULL, 17, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (250, 2, 276, 'TA-s1607582-1', 'Peramalan Konsumsi Energi Listrik Jangka Panjang Di Provinsi Kalimantan Timur Menggunakan Pendekatan Logika Fuzzy', NULL, 17, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (251, 2, 295, 'TA-s1302098-1', 'Perbaikan Nilai Indeks  Keandalan Sistem Tenaga Listrik Menggunakan Section Technique Methode', NULL, 17, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (252, 1, 210, 'SK-s1600924-1', 'RANCANG BANGUN MEDIA PEMBELAJARAN AIRCRAFT ELECTRICAL BERBASIS EDMODO PADA KONDISI COVID -19.', NULL, 16, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (253, 2, 294, 'TA-s1307624-1', 'Analisis Karakteristik Isolasi Kabel Tegangan Rendah Dengan Pengujian Tegangan Tembus', NULL, 16, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (254, 2, 273, 'TA-s1601676-1', 'Steganografi Audio Digital Menggunakan Metode Least Significant Bit (LSB) Dan Discrete Cosine Transform (DCT)', NULL, 17, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (255, 4, 287, 'SE-s1600511-1', 'Analisis Perhitungan Rugi-rugi Daya Sistem Kelistrikan Coal Fire Power Plant (cfpp ) Dengan Etap 16.0.0 \r\nDi Pt. Pindo Deli 2', NULL, 10, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (256, 2, 297, 'TA-s1301663-1', 'Analisis Pemasangan Kapasitor Pada Penyulang Ndj Gardu Induk Bandung Utara 20kv', NULL, 17, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (257, 1, 5, 'SK-s1203590-1', 'STUDI PEMANFAATAN ICT (INFORMATION, COMMUNICATION, AND TECHNOLOGY) PADA PEMBELAJARAN PRODUKTIF DI SMKN 1 KOTA CIREBON', NULL, 17, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (258, 2, 23, 'TA-s1501224-1', 'Rancang Bangun Inkubator Bayi dengan Kamera Pengawas Berbasis Aplikasi Android', NULL, 17, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (259, 1, 277, 'SK-s1300991-1', 'Efektivitas Pembelajaran Daring Selama Pandemi Covid-19', NULL, 17, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (260, 1, 281, 'SK-s1307440-1', 'Tingkat Kepuasan Siswa terhadap Pembelajaran Daring dalam Mata Pelajaran Sistem Kontrol Terprogram pada Keahlian Teknik Otomasi Industri Kelas XI di SMK Negeri 4 Bandung', NULL, 17, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (261, 1, 282, 'SK-s1303435-1', 'Implementasi Team Game Tournament Dalam Pembelajaran Teknik Kontrol Di Kelas Xi Jurusan Mekatronika Smk Negeri 2 Cimahi', NULL, 17, NULL, NULL, '2020-11-22 10:03:35', '2020-11-22 10:03:35');
INSERT INTO `arsys_research` VALUES (263, 6, 47, 'DD-1301473-1', 'The Effect of Flip Learning Among Pupils in Elementary Education', 'The abstract', 7, 2, NULL, '2020-11-22 12:24:33', '2020-11-24 18:58:46');
INSERT INTO `arsys_research` VALUES (264, 4, 47, 'SE-1301473-93', 'Wearable Computing', 'Abstract', 4, NULL, NULL, '2020-11-24 03:59:02', '2020-11-24 04:00:21');
COMMIT;

-- ----------------------------
-- Table structure for arsys_research_approval
-- ----------------------------
DROP TABLE IF EXISTS `arsys_research_approval`;
CREATE TABLE `arsys_research_approval` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `research_id` bigint DEFAULT NULL,
  `approval_type` int DEFAULT NULL,
  `approver` int DEFAULT NULL,
  `research_role` int DEFAULT NULL,
  `decision` int DEFAULT NULL,
  `approval_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of arsys_research_approval
-- ----------------------------
BEGIN;
INSERT INTO `arsys_research_approval` VALUES (1, 263, 1, 2, 1, 1, NULL, '2020-11-23 05:44:37', '2020-11-22 22:44:37');
INSERT INTO `arsys_research_approval` VALUES (2, 263, 1, 15, 1, 1, NULL, '2020-11-23 05:22:27', '2020-11-22 22:22:27');
COMMIT;

-- ----------------------------
-- Table structure for arsys_research_decision_type
-- ----------------------------
DROP TABLE IF EXISTS `arsys_research_decision_type`;
CREATE TABLE `arsys_research_decision_type` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` char(3) DEFAULT NULL,
  `description` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of arsys_research_decision_type
-- ----------------------------
BEGIN;
INSERT INTO `arsys_research_decision_type` VALUES (1, 'RJC', 'Reject', NULL, NULL);
INSERT INTO `arsys_research_decision_type` VALUES (2, 'APV', 'Approve', NULL, NULL);
INSERT INTO `arsys_research_decision_type` VALUES (3, 'PRT', 'Presentation', NULL, NULL);
INSERT INTO `arsys_research_decision_type` VALUES (4, 'RVS', 'Revise', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for arsys_research_file
-- ----------------------------
DROP TABLE IF EXISTS `arsys_research_file`;
CREATE TABLE `arsys_research_file` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `research_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of arsys_research_file
-- ----------------------------
BEGIN;
INSERT INTO `arsys_research_file` VALUES (2, '263', 'Proposal', 'proposal/U6TjLT77vrCMU74YIWbBHkgOQVFUol6J06SxdioV.pdf', '2020-11-22 12:25:17', '2020-11-22 12:25:17');
INSERT INTO `arsys_research_file` VALUES (3, '264', 'Proposal', 'proposal/7xilbw7W9679BedzXMGsM2DTId6zl3hUHziUTtCv.pdf', '2020-11-24 03:59:51', '2020-11-24 03:59:51');
COMMIT;

-- ----------------------------
-- Table structure for arsys_research_files_type
-- ----------------------------
DROP TABLE IF EXISTS `arsys_research_files_type`;
CREATE TABLE `arsys_research_files_type` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` char(3) DEFAULT NULL,
  `description` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of arsys_research_files_type
-- ----------------------------
BEGIN;
INSERT INTO `arsys_research_files_type` VALUES (1, 'PRO', 'Proposal', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for arsys_research_milestone
-- ----------------------------
DROP TABLE IF EXISTS `arsys_research_milestone`;
CREATE TABLE `arsys_research_milestone` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `milestone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `propose_button` tinyint(1) DEFAULT NULL,
  `phase` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `sequence` int DEFAULT NULL,
  `description` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of arsys_research_milestone
-- ----------------------------
BEGIN;
INSERT INTO `arsys_research_milestone` VALUES (1, 'Proposal', 1, 'Created', 1, 'Research Proposal is created', '2020-09-16 10:53:23', '2020-09-16 10:53:26');
INSERT INTO `arsys_research_milestone` VALUES (2, 'Proposal', NULL, 'Submitted', 2, 'Research proposal has been submitted', '2020-09-16 10:53:16', '2020-09-16 10:53:19');
INSERT INTO `arsys_research_milestone` VALUES (3, 'Proposal', NULL, 'Review', 3, 'Research is being reviewed', '2020-09-16 10:55:09', '2020-09-16 10:55:11');
INSERT INTO `arsys_research_milestone` VALUES (4, 'In-progress', 1, 'Supervise', 4, 'Research is in progress', '2020-09-16 10:59:17', '2020-09-16 10:59:19');
INSERT INTO `arsys_research_milestone` VALUES (5, 'Pre-defense', NULL, 'Submitted', 5, 'Pre-defense approval is requested ', '2020-09-16 10:59:25', '2020-09-16 10:59:23');
INSERT INTO `arsys_research_milestone` VALUES (6, 'Pre-defense', NULL, 'Approved', 6, 'Pre-defense has been approved', '2020-11-13 15:17:10', '2020-11-13 15:17:13');
INSERT INTO `arsys_research_milestone` VALUES (7, 'Pre-defense', NULL, 'Applied', 7, 'Pre-defense has been applied', '2020-11-13 15:17:16', '2020-11-13 15:17:18');
INSERT INTO `arsys_research_milestone` VALUES (8, 'Pre-defense', NULL, 'Scheduled', 8, 'Pre-defense has been scheduled', '2020-11-13 15:17:39', '2020-11-13 15:17:42');
INSERT INTO `arsys_research_milestone` VALUES (9, 'Pre-defense', NULL, 'Held', 9, 'Pre-defense is being held', '2020-11-13 15:17:22', '2020-11-13 15:17:45');
INSERT INTO `arsys_research_milestone` VALUES (10, 'Pre-defense', 1, 'Completed', 10, NULL, '2020-11-13 15:17:48', '2020-11-13 15:17:50');
INSERT INTO `arsys_research_milestone` VALUES (11, 'Final-defense', NULL, 'Submitted', 11, NULL, '2020-11-13 15:17:54', '2020-11-13 15:17:57');
INSERT INTO `arsys_research_milestone` VALUES (12, 'Final-defense', NULL, 'Approved', 12, NULL, '2020-11-13 15:18:00', '2020-11-13 15:18:02');
INSERT INTO `arsys_research_milestone` VALUES (13, 'Final-defense', NULL, 'Applied', 13, NULL, '2020-11-13 15:18:05', '2020-11-13 15:18:07');
INSERT INTO `arsys_research_milestone` VALUES (14, 'Final-defense', NULL, 'Scheduled', 14, NULL, '2020-11-13 15:18:09', '2020-11-13 15:18:11');
INSERT INTO `arsys_research_milestone` VALUES (15, 'Final-defense', NULL, 'Held', 15, NULL, '2020-11-13 15:18:14', '2020-11-13 15:18:16');
INSERT INTO `arsys_research_milestone` VALUES (16, 'Final-defense', NULL, 'Completed', 16, NULL, '2020-11-13 15:18:18', '2020-11-13 15:18:20');
INSERT INTO `arsys_research_milestone` VALUES (17, 'Graduated', NULL, 'Graduated', 17, NULL, NULL, NULL);
INSERT INTO `arsys_research_milestone` VALUES (18, 'Rejected', NULL, 'Rejected', 0, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for arsys_research_review_type
-- ----------------------------
DROP TABLE IF EXISTS `arsys_research_review_type`;
CREATE TABLE `arsys_research_review_type` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` char(3) DEFAULT NULL,
  `description` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of arsys_research_review_type
-- ----------------------------
BEGIN;
INSERT INTO `arsys_research_review_type` VALUES (1, 'PRO', 'Proposal', '2020-11-17 04:05:24', '2020-11-17 04:05:26');
INSERT INTO `arsys_research_review_type` VALUES (2, 'PRE', 'Pre-defense', '2020-11-17 04:05:29', '2020-11-17 04:05:31');
INSERT INTO `arsys_research_review_type` VALUES (3, 'PUB', 'Final-defense', '2020-11-17 04:05:33', '2020-11-17 04:05:35');
COMMIT;

-- ----------------------------
-- Table structure for arsys_research_role
-- ----------------------------
DROP TABLE IF EXISTS `arsys_research_role`;
CREATE TABLE `arsys_research_role` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` char(3) DEFAULT NULL,
  `description` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of arsys_research_role
-- ----------------------------
BEGIN;
INSERT INTO `arsys_research_role` VALUES (1, 'SPV', 'Supervisor', NULL, NULL);
INSERT INTO `arsys_research_role` VALUES (2, 'EXM', 'Examiner', NULL, NULL);
INSERT INTO `arsys_research_role` VALUES (3, 'SPZ', 'Specialization', NULL, NULL);
INSERT INTO `arsys_research_role` VALUES (4, 'HSP', 'Study Program', NULL, NULL);
INSERT INTO `arsys_research_role` VALUES (5, 'DEA', 'Dean', NULL, NULL);
INSERT INTO `arsys_research_role` VALUES (6, 'VDE', 'Vice Dean', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for arsys_research_supervise
-- ----------------------------
DROP TABLE IF EXISTS `arsys_research_supervise`;
CREATE TABLE `arsys_research_supervise` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `research_id` int DEFAULT NULL,
  `supervisor` int DEFAULT NULL,
  `threader` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `topic` varchar(255) DEFAULT NULL,
  `message` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `read` tinyint(1) DEFAULT NULL,
  `approval_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of arsys_research_supervise
-- ----------------------------
BEGIN;
INSERT INTO `arsys_research_supervise` VALUES (1, 89, 15, 47, 1, 'Pak boleh bimbinga?', 'test', NULL, NULL, '2020-11-22 17:11:04', '2020-11-22 10:11:04');
INSERT INTO `arsys_research_supervise` VALUES (2, 89, 15, 15, NULL, 'Draft Bab II', 'Firsya tolong kirim bab II ke email', NULL, NULL, '2020-11-22 10:11:38', '2020-11-22 10:11:38');
INSERT INTO `arsys_research_supervise` VALUES (3, 263, 2, 47, 1, 'Review Jurnal', 'Pak saya telah melakukan review jurnal', NULL, NULL, '2020-11-23 02:26:05', '2020-11-22 19:26:05');
INSERT INTO `arsys_research_supervise` VALUES (4, 263, 15, 47, 1, 'Revisi Proposal', 'Pak saya telah melakukan revisi proposal', NULL, NULL, '2020-11-22 19:33:48', '2020-11-22 12:33:48');
INSERT INTO `arsys_research_supervise` VALUES (5, 263, 15, 47, 1, 'dsads', 'dsadsadsa', NULL, NULL, '2020-11-23 02:25:45', '2020-11-22 19:25:45');
INSERT INTO `arsys_research_supervise` VALUES (6, 263, 2, 2, 1, 'dsadsa', 'dsdasdsa', NULL, NULL, '2020-11-23 02:26:16', '2020-11-22 19:26:16');
INSERT INTO `arsys_research_supervise` VALUES (7, 263, 2, 2, 1, 'dsadsa', 'ddasdsad', NULL, NULL, '2020-11-23 02:26:27', '2020-11-22 19:26:27');
INSERT INTO `arsys_research_supervise` VALUES (8, 263, 2, 2, 1, 'sadsadsa', 'dsadsadsa', NULL, NULL, '2020-11-23 02:26:38', '2020-11-22 19:26:38');
INSERT INTO `arsys_research_supervise` VALUES (9, 263, 2, 2, 1, 'dsadsad', 'dsadsa', NULL, NULL, '2020-11-23 02:26:46', '2020-11-22 19:26:46');
INSERT INTO `arsys_research_supervise` VALUES (10, 264, 15, 47, 1, 'Penulisan BAB I', 'Pak... proposal sudah diacc, apakah bisa lanjut ke penulisan Bab I?', NULL, NULL, '2020-11-24 11:11:53', '2020-11-24 04:11:53');
COMMIT;

-- ----------------------------
-- Table structure for arsys_research_supervise_discussion
-- ----------------------------
DROP TABLE IF EXISTS `arsys_research_supervise_discussion`;
CREATE TABLE `arsys_research_supervise_discussion` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `thread_id` int DEFAULT NULL,
  `discussant` int DEFAULT NULL,
  `message` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of arsys_research_supervise_discussion
-- ----------------------------
BEGIN;
INSERT INTO `arsys_research_supervise_discussion` VALUES (2, 1, 15, 'Melalui email saja ya..', NULL, '2020-11-22 10:10:17', '2020-11-22 10:10:17');
INSERT INTO `arsys_research_supervise_discussion` VALUES (3, 1, 15, 'OK anda sudah bisa melanjutkan ke bab berikutnya', NULL, '2020-11-22 10:10:43', '2020-11-22 10:10:43');
INSERT INTO `arsys_research_supervise_discussion` VALUES (4, 1, 15, 'tambahkan lagi10 jurnal lain', NULL, '2020-11-22 10:11:02', '2020-11-22 10:11:02');
INSERT INTO `arsys_research_supervise_discussion` VALUES (5, 1, 15, 'tambahkan lagi10 jurnal lain', NULL, '2020-11-22 10:11:04', '2020-11-22 10:11:04');
INSERT INTO `arsys_research_supervise_discussion` VALUES (6, 2, 47, 'Baik pak... saya akan kirim melalui email', NULL, '2020-11-22 10:12:11', '2020-11-22 10:12:11');
INSERT INTO `arsys_research_supervise_discussion` VALUES (7, 2, 15, 'dssdasddada', NULL, '2020-11-22 10:49:52', '2020-11-22 10:49:52');
INSERT INTO `arsys_research_supervise_discussion` VALUES (8, 1, 15, 'adaDdaD', NULL, '2020-11-22 12:01:21', '2020-11-22 12:01:21');
INSERT INTO `arsys_research_supervise_discussion` VALUES (9, 1, 15, 'dasdsadasd', NULL, '2020-11-22 12:03:48', '2020-11-22 12:03:48');
INSERT INTO `arsys_research_supervise_discussion` VALUES (10, 3, 47, 'Jurnal tersebut dikumpulkan dari berbagai database artikel', NULL, '2020-11-22 12:31:39', '2020-11-22 12:31:39');
INSERT INTO `arsys_research_supervise_discussion` VALUES (11, 4, 15, 'Silahkan tambahkan berbagai artikel yang alin', NULL, '2020-11-22 12:33:23', '2020-11-22 12:33:23');
INSERT INTO `arsys_research_supervise_discussion` VALUES (12, 4, 15, 'Kemudian lakukan penulisan Bab II', NULL, '2020-11-22 12:33:48', '2020-11-22 12:33:48');
INSERT INTO `arsys_research_supervise_discussion` VALUES (13, 5, 15, 'dsadsada', NULL, '2020-11-22 19:25:45', '2020-11-22 19:25:45');
INSERT INTO `arsys_research_supervise_discussion` VALUES (14, 3, 2, 'sdsadsad', NULL, '2020-11-22 19:26:05', '2020-11-22 19:26:05');
INSERT INTO `arsys_research_supervise_discussion` VALUES (15, 6, 2, 'dsadsad', NULL, '2020-11-22 19:26:16', '2020-11-22 19:26:16');
INSERT INTO `arsys_research_supervise_discussion` VALUES (16, 7, 2, 'dsadsadsa', NULL, '2020-11-22 19:26:27', '2020-11-22 19:26:27');
INSERT INTO `arsys_research_supervise_discussion` VALUES (17, 8, 2, 'dsadsad', NULL, '2020-11-22 19:26:38', '2020-11-22 19:26:38');
INSERT INTO `arsys_research_supervise_discussion` VALUES (18, 9, 2, 'sadsadsa', NULL, '2020-11-22 19:26:46', '2020-11-22 19:26:46');
INSERT INTO `arsys_research_supervise_discussion` VALUES (19, 10, 47, 'Pa... mohon diapprove', NULL, '2020-11-24 04:10:30', '2020-11-24 04:10:30');
INSERT INTO `arsys_research_supervise_discussion` VALUES (21, 10, 15, 'OK Silahkan lanjutkan', NULL, '2020-11-24 04:11:53', '2020-11-24 04:11:53');
INSERT INTO `arsys_research_supervise_discussion` VALUES (22, 3, 47, 'dsadsadsadsa', NULL, '2020-11-24 19:44:49', '2020-11-24 19:44:49');
INSERT INTO `arsys_research_supervise_discussion` VALUES (23, 3, 47, 'dsadsadsadsa', NULL, '2020-11-24 19:44:50', '2020-11-24 19:44:50');
INSERT INTO `arsys_research_supervise_discussion` VALUES (24, 3, 47, 'dsadsadsadsa', NULL, '2020-11-24 19:44:52', '2020-11-24 19:44:52');
INSERT INTO `arsys_research_supervise_discussion` VALUES (25, 3, 47, 'dsadsadsadsa', NULL, '2020-11-24 19:44:54', '2020-11-24 19:44:54');
COMMIT;

-- ----------------------------
-- Table structure for arsys_research_supervisor
-- ----------------------------
DROP TABLE IF EXISTS `arsys_research_supervisor`;
CREATE TABLE `arsys_research_supervisor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `research_id` int DEFAULT NULL,
  `supervisor` int DEFAULT NULL,
  `role` int DEFAULT NULL,
  `bypass` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of arsys_research_supervisor
-- ----------------------------
BEGIN;
INSERT INTO `arsys_research_supervisor` VALUES (2, 89, 15, NULL, NULL, '2020-11-22 10:08:32', '2020-11-22 10:08:32');
INSERT INTO `arsys_research_supervisor` VALUES (3, 89, 2, NULL, NULL, '2020-11-22 10:08:41', '2020-11-22 10:08:41');
INSERT INTO `arsys_research_supervisor` VALUES (4, 263, 2, NULL, NULL, '2020-11-22 12:30:02', '2020-11-22 12:30:02');
INSERT INTO `arsys_research_supervisor` VALUES (5, 263, 15, NULL, NULL, '2020-11-22 12:30:03', '2020-11-22 12:30:03');
INSERT INTO `arsys_research_supervisor` VALUES (7, 264, 15, NULL, NULL, '2020-11-24 04:05:58', '2020-11-24 04:05:58');
INSERT INTO `arsys_research_supervisor` VALUES (8, 264, 2, NULL, NULL, '2020-11-24 04:06:21', '2020-11-24 04:06:21');
COMMIT;

-- ----------------------------
-- Table structure for arsys_research_type
-- ----------------------------
DROP TABLE IF EXISTS `arsys_research_type`;
CREATE TABLE `arsys_research_type` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` char(3) DEFAULT NULL,
  `description` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `supervisor_number` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of arsys_research_type
-- ----------------------------
BEGIN;
INSERT INTO `arsys_research_type` VALUES (1, 'SK', 'Skripsi', 2, '2020-09-16 10:48:29', '2020-09-16 10:48:31');
INSERT INTO `arsys_research_type` VALUES (2, 'TA', 'Tugas Akhir', 2, '2020-09-16 10:48:48', '2020-09-16 10:48:51');
INSERT INTO `arsys_research_type` VALUES (3, 'PI', 'Praktik Industr', 1, '2020-09-16 10:49:02', '2020-09-16 10:49:05');
INSERT INTO `arsys_research_type` VALUES (4, 'SE', 'Seminar', 1, '2020-09-16 10:49:25', '2020-09-16 10:49:27');
INSERT INTO `arsys_research_type` VALUES (5, 'TM', 'Tesis', 1, '2020-09-16 10:49:36', '2020-09-16 10:49:38');
INSERT INTO `arsys_research_type` VALUES (6, 'DD', 'Disertasi', 2, '2020-09-16 10:49:51', '2020-09-16 10:49:53');
COMMIT;

-- ----------------------------
-- Table structure for arsys_student
-- ----------------------------
DROP TABLE IF EXISTS `arsys_student`;
CREATE TABLE `arsys_student` (
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
-- Records of arsys_student
-- ----------------------------
BEGIN;
INSERT INTO `arsys_student` VALUES (1, 43, 2, '1503510', 2, 'Ibnu Malik', 'Al Hamas', 6, NULL, NULL, '085864153600', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (2, 30, 2, '1204127', 2, 'Muhammad Fitra', 'Ilhami', 17, NULL, NULL, '081214151043', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (3, 28, 1, '1204283', 1, 'wisnu', 'sukma wardana', 19, NULL, NULL, '08986059050', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (4, 29, 1, '1204926', 1, 'moh', 'zulfikar', 28, NULL, NULL, '089667860082', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (5, 45, 1, '1203590', 1, 'Allan', 'Anugraha Maharbid', 18, NULL, NULL, '082319018087', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (6, 42, 2, '1500400', 2, 'Alfin', 'Agusman Noor', 6, NULL, NULL, '087797878550', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (7, 46, 1, '1200589', 3, 'Hary', 'Dwyan Fitriana', 19, NULL, NULL, '082118923331', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (8, 62, 1, '1203604', 1, 'Olsa', 'Givana', 18, NULL, NULL, '082295065593', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (9, 33, 2, '1504316', 2, 'Rizal Daffa', 'Noer Sidik', 6, NULL, NULL, '082216768897', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (10, 32, 2, '1504873', 2, 'Trisina', 'Simanjuntak', 23, NULL, NULL, '089693824882', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (11, 48, 1, '1200356', 2, 'Ayu', 'Rakhmawati', 18, NULL, NULL, '083824534545', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (12, 55, 2, '1505550', 3, 'Ahmad Raihan', 'Abdurrahman', 23, NULL, NULL, '085524434597', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (13, 37, 2, '1500550', 3, 'Yudha', 'Hardiansyah', 6, NULL, NULL, '081222960086', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (14, 34, 2, '1200342', 2, 'Satrio', 'Budi Prasetyo', 23, NULL, NULL, '082128737852', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (15, 49, 1, '1204044', 2, 'Emil', 'Ramadhan', 19, NULL, NULL, '089695971650', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (16, 65, 1, '1203169', 2, 'Zaenal', 'Mutaqin', 18, NULL, NULL, '085864901450', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (17, 64, 1, '1206255', 3, 'OKKY', 'OKTA', 12, NULL, NULL, '081214622277', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (18, 31, 1, '1200500', 3, 'teguh', 'hermayadi', 19, NULL, NULL, '081320981684', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (19, 36, 2, '1506365', 2, 'Ivan', 'Hadian', 23, NULL, NULL, '089658108947', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (20, 50, 2, '1500818', 2, 'Dimas', 'Ariwibowo', 6, NULL, NULL, '081222401847', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (21, 58, 2, '1504381', 2, 'Muhammad', 'Fiqri Affan', 6, NULL, NULL, '087710311900', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (22, 54, 2, '1506367', 2, 'Rizka', 'Adhiswara', 23, NULL, NULL, '087825562598', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (23, 61, 2, '1501224', 3, 'Farid', 'Miftah Fauzi', 6, NULL, NULL, '083895298745', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (24, 40, 2, '1506032', 3, 'Nadya', 'Richna Fitri', 23, NULL, NULL, '081220372891', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (25, 47, 2, '1503711', 2, 'Deri Rio', 'Heryanto', 6, NULL, NULL, '081323555597', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (26, 41, 2, '1506366', 3, 'Julian Serly', 'Ayu', 23, NULL, NULL, '085320542222', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (27, 56, 3, '1506850', 2, 'Dinda', 'Fatirahmah', 28, NULL, NULL, '082321460867', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (28, 52, 2, '1500538', 2, 'ilza fauzan', 'ramadhan', 6, NULL, NULL, '082219349331', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (29, 57, 3, '1506006', 2, 'Fahmi', 'Chaerul Fadillah', 28, NULL, NULL, '082215262458', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (30, 53, 2, '1500972', 2, 'Irvan', 'Virgian', 6, NULL, NULL, '085703179962', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (31, 70, 1, '1301883', 2, 'Febrian Aditya', 'Ramadhan', 15, NULL, NULL, '08992899064', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (32, 69, 2, '1403769', 2, 'Fachrizal', 'Alfa Z.', 2, NULL, NULL, '081220620800', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (33, 76, 1, '1206035', 2, 'syahroni', 'anwar', 12, NULL, NULL, '087742034652', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (34, 78, 1, '1200727', 2, 'Moh Hafiezh', 'Annur', 19, NULL, NULL, '08996304086', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (35, 39, 2, '1504417', 2, 'Khansa Ratri', 'Haniya', 6, NULL, NULL, '081222491605', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (36, 79, 2, '1204286', 2, 'M Fachmi', 'Fachthurahman H', 17, NULL, NULL, '082295069202', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (37, 68, 1, '1205950', 3, 'Abdur rahman', 'Arraafi', 12, NULL, NULL, '082130510706', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (38, 72, 1, '1503467', 1, 'Muhammad Husni', 'Muttaqin', 15, NULL, NULL, '087720279644', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (39, 77, 2, '1505307', 2, 'Wahyu', 'Alfarobbi', 23, NULL, NULL, '08112346298', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (40, 59, 2, '1501358', 2, 'Ruly', 'Nuraliman', 6, NULL, NULL, '089639811758', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (41, 81, 1, '1204019', 2, 'Risyad Basyir', 'Ibrahim', 19, NULL, NULL, '08990491508', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (42, 86, 1, '1400275', 1, 'Chindy', 'Berliannanda', 10, NULL, NULL, '08156298240', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (43, 87, 1, '1203616', 3, 'Asro', 'Laila', 18, NULL, NULL, '083112708833', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (44, 51, 2, '1500812', 2, 'Faqih', 'Fakhruddin', 6, NULL, NULL, '081902753442', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (45, 90, 1, '1200728', 3, 'Asep', 'Syahbudi', 18, NULL, NULL, '08987306449', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (46, 80, 1, '1501831', 1, 'Muhammad Isa', 'Rahmani', 9, NULL, NULL, '089663288966', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (47, 91, 1, '1301473', 1, 'Firsya', 'Habibi', 13, NULL, NULL, '085860401072', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (48, 84, 1, '1400047', 2, 'Irfan', 'Nuroni', 10, NULL, NULL, '08156298240', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (49, 60, 2, '1501933', 2, 'Agung Yuda', 'Sulaksana', 6, NULL, NULL, '087820533306', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (50, 92, 1, '1304095', 3, 'M. Asep', 'Kurnia', 17, NULL, NULL, '085659884977', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (51, 105, 1, '1504586', 2, 'M. Habibul', 'Fallah', 18, NULL, NULL, '089657718793', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (52, 38, 1, '1501088', 3, 'Putri Ayu', 'Kencana', 15, NULL, NULL, '089655880641', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (53, 93, 1, '1506923', 1, 'Cici Puspita', 'Dewi', 20, NULL, NULL, '087821104227', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (54, 74, 1, '1506342', 3, 'Rini', 'Lestriani', 20, NULL, NULL, '085294179662', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (55, 75, 1, '1500051', 3, 'Silma', 'Kamilah', 11, NULL, NULL, '083825745106', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (56, 113, 2, '1302080', 2, 'Arif', 'Muhammad Shidiq', 25, NULL, NULL, '087784772190', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (57, 111, 1, '1501987', 3, 'Nurul', 'Annisa Septiani', 9, NULL, NULL, '081222871627', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (58, 107, 1, '1506337', 1, 'Muhamad Iqbal', 'Hambali', 18, NULL, NULL, '089698728271', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (59, 108, 1, '1501403', 2, 'Chandra', 'Maulidya', 9, NULL, NULL, '087796888358', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (60, 103, 1, '1500591', 3, 'Shita', 'Herfiah', 9, NULL, NULL, '081214627276', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (61, 88, 1, '1506917', 3, 'Dadan', 'Darmawan', 20, NULL, NULL, '082214060731', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (62, 99, 1, '1504210', 1, 'Aditya Taufanbayu', 'Nugraha', 15, NULL, NULL, '08992899064', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (63, 112, 1, '1503449', 3, 'Novia', 'Karostiani', 15, NULL, NULL, '082316620932', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (64, 109, 1, '1203972', 2, 'Sigit', 'Nuryana', 28, NULL, NULL, '087733777138', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (65, 44, 2, '1504696', 3, 'Regita', 'Nurmalita Yuniar', 23, NULL, NULL, '895422674042', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (66, 119, 1, '1506776', 3, 'Hilda', 'Yusri Fila Salazar', 20, NULL, NULL, '082126088598', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (67, 89, 1, '1501317', 3, 'Inggrid Fadilah', 'Akhmad', 9, NULL, NULL, '081322750646', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (68, 114, 1, '1503764', 3, 'Fikri', 'Arif Wicaksana', 15, NULL, NULL, '082127359370', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (69, 98, 1, '1304081', 1, 'Nur', 'Fajar Sarwati Edi', 17, NULL, NULL, '081573693774', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (70, 116, 1, '1204109', 3, 'Rizan', 'Syaifur Rahman', 19, NULL, NULL, '08818295652', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (71, 121, 1, '1506341', 2, 'Nur', 'Syifa', 20, NULL, NULL, '087700339531', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (72, 122, 3, '1606279', 2, 'Dina', 'Medina', 10, NULL, NULL, '082240015654', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (73, 115, 1, '1503975', 3, 'Dina', 'Rusyda Khoirini', 15, NULL, NULL, '082117837191', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (74, 118, 1, '1204923', 2, 'Rendi', 'Mochamad Taofik', 28, NULL, NULL, '089506288923', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (75, 124, 1, '1507133', 2, 'Ruly', 'Abdul Rasyid', 20, NULL, NULL, '081214331542', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (76, 35, 2, '1504794', 2, 'Mohammad Giri', 'Firmansyah', 23, NULL, NULL, '087823237500', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (77, 125, 1, '1505889', 2, 'Rafie', 'Ridwan Arrasyid', 18, NULL, NULL, '081312089727', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (78, 102, 2, '1505146', 2, 'Muhammad Hendra', 'Permana', 23, NULL, NULL, '08115225530', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (79, 128, 1, '1500121', 1, 'Fandi Ahmad', 'Sugiantoro', 25, NULL, NULL, '08112109087', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (80, 120, 1, '1501072', 2, 'Cindy', 'Dwi Lestari', 9, NULL, NULL, '082320257010', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (81, 95, 1, '1504674', 1, 'Haaniyah', 'Yarnida', 18, NULL, NULL, '081220858204', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (82, 94, 1, '1501809', 1, 'Andre', 'Yosnavy', 10, NULL, NULL, '08993336474', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (83, 100, 1, '1504623', 2, 'Cical Indra', 'Himawan', 18, NULL, NULL, '085797951161', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (84, 106, 1, '1503967', 1, 'Sri Puji', 'Lestari', 15, NULL, NULL, '085974785337', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (85, 82, 1, '1304927', 1, 'Adhitya', 'Sufarinto', 13, NULL, NULL, NULL, NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (86, 97, 1, '150568', 1, 'Uni', 'Parwati', 18, NULL, NULL, '82321346640', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (87, 96, 1, '1502030', 1, 'Sony', 'Hermawan', 9, NULL, NULL, '085894078944', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (88, 73, 1, '1506338', 1, 'Muhamad Luthfi', 'Amrullah', 20, NULL, NULL, '087705041770', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (89, 135, 1, '1603747', 1, 'Teguh', 'Pratama Nugraha', 3, NULL, NULL, '089644580675', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (90, 129, 1, '1500504', 1, 'Riky', 'Hidayat', 11, NULL, NULL, '082217808753', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (91, 136, 1, '1304072', 1, 'Riyadhi', 'Abdurrahman', 15, NULL, NULL, '08996191778', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (92, 131, 1, '1501656', 2, 'Sri', 'Wardana', 17, NULL, NULL, '083841331104', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (93, 141, 1, '1501272', 2, 'M. Hasbi', 'Ash Shiddiq', 9, NULL, NULL, '081903153256', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (94, 139, 1, '1501848', 2, 'Ridwan', 'Ahmad Fauzi', 24, NULL, NULL, '088218131669', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (95, 134, 1, '1506336', 2, 'Fhegiana', 'Damayanty Juniar', 18, NULL, NULL, '082114672409', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (96, 138, 1, '1500329', 1, 'Dede Rizki', 'Abdillah', 11, NULL, NULL, '081805880292', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (97, 137, 1, '1503904', 2, 'Dendi', 'Rukmana', 15, NULL, NULL, '081386859192', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (98, 140, 1, '1500429', 2, 'Fahmi', 'Azhar Santosa', 11, NULL, NULL, '089666904421', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (99, 130, 1, '1507138', 2, 'Shinta', 'Wahyu Yuliningtyas', 17, NULL, NULL, '085871813770', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (100, 143, 1, '1503446', 2, 'Taufik', 'Ismail', 15, NULL, NULL, '087829720800', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (101, 145, 1, '1403121', 2, 'Irna', 'Wahyuningsih', 21, NULL, NULL, '085860370140', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (102, 144, 1, '1500819', 1, 'Mirza', 'Maulana Sugiri', 9, NULL, NULL, '081386844926', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (103, 142, 1, '1505329', 2, 'Julia', 'Nurrizkiani', 11, NULL, NULL, '08112160407', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (104, 147, 1, '1501937', 1, 'Aam', 'Wahyudin', 9, NULL, NULL, '087887314080', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (105, 132, 1, '1507107', 3, 'Dejan', 'Yusup Faishal', 28, NULL, NULL, '081214642603', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (106, 110, 1, '1507140', 1, 'Sri', 'Rahayu Ningsih', 20, NULL, NULL, '081395391520', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (107, 148, 1, '1505763', 2, 'Zikrul', 'Rifki', 18, NULL, NULL, '082111558046', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (108, 150, 1, '1405712', 1, 'Nopran', 'Tri Aditya', 1, NULL, NULL, '08976029528', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (109, 146, 1, '1403243', 1, 'Solla', 'Nahari', 10, NULL, NULL, '+62817219537', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (110, 152, 3, '1602078', 2, 'Fitri Fajar', 'Fathonah', 9, NULL, NULL, '083816423483', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (111, 151, 1, '1301997', 2, 'Dina', 'Rahmatika', 15, NULL, NULL, '081320502505', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (112, 162, 1, '1304887', 1, 'Muhammad', 'Renaldy', 14, NULL, NULL, '081322044634', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (113, 155, 3, '1605803', 2, 'Dwi Ayu', 'Nurfiyanti Putri', 6, NULL, NULL, '083824509351', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (114, 163, 3, '1602104', 2, 'Moch. Alif', 'Rizky Maulana', 9, NULL, NULL, '081395543652', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (115, 161, 1, '1401970', 1, 'Dicky', 'Mardiansyah', 10, NULL, NULL, '089665467706', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (116, 168, 1, '1504967', 1, 'Irfan Maulana', 'Fauzi', 18, NULL, NULL, '087785698483', NULL, '2020-11-21 08:38:26', '2020-11-21 08:38:26');
INSERT INTO `arsys_student` VALUES (117, 154, 3, '1607321', 2, 'Arief Chandra', 'Pamungkas', 10, NULL, NULL, '081220667264', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (118, 167, 1, '1504845', 3, 'Irfan', 'Septian Suherman', 18, NULL, NULL, '089686868165', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (119, 169, 2, '1401662', 2, 'Rizki Zakaria', 'Faturochman', 26, NULL, NULL, '085294929496', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (120, 133, 2, '1307189', 2, 'Ismail', 'Sholeh', 22, NULL, NULL, '085353539469', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (121, 159, 2, '1506969', 2, 'Reida', 'Putra', 1, NULL, NULL, '082118259245', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (122, 173, 1, '1400666', 1, 'Teguh', 'Nugraha', 10, NULL, NULL, '082122661839', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (123, 171, 1, '1501726', 2, 'Muhammad', 'Fathurrachman', 9, NULL, NULL, '081257398878', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (124, 156, 3, '1602080', 2, 'Iswahyudi Setia', 'Ardiansyah', 9, NULL, NULL, '083822601987', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (125, 170, 2, '1401410', 2, 'Rizaldy', 'Kurniawan', 26, NULL, NULL, '081220092243', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (126, 174, 1, '1401029', 2, 'Reffky', 'Pratama', 10, NULL, NULL, '082120581408', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (127, 175, 3, '1602092', 2, 'Luthfi', 'Ihya Mahmudi', 9, NULL, NULL, '082122522603', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (128, 158, 3, '1602093', 2, 'Dzikri', 'Syaefullah', 9, NULL, NULL, '085804400225', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (129, 160, 3, '1606582', 2, 'Alvin Pratama', 'Yuliandri', 10, NULL, NULL, '081318094585', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (130, 67, 1, '1503561', 1, 'Renaldi', 'Pratama', 15, NULL, NULL, '081290029512', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (131, 46, 1, '1200589', 3, 'Hary', 'Dwyan Fitriana', 19, NULL, NULL, '082118923331', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (132, 180, 1, '1501362', 1, 'David Irman', 'Sam Putra', 9, NULL, NULL, '082240325680', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (133, 178, 3, '1606741', 2, 'Aditya', 'Hida Nurghafiri', 10, NULL, NULL, '085559140365', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (134, 179, 3, '1606718', 2, 'Tafaruq', 'Febrian', 10, NULL, NULL, '081910264493', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (135, 166, 1, '1405131', 1, 'Ridwan', 'Firdaus', 20, NULL, NULL, '087790002587', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (136, 177, 1, '1500171', 2, 'Hafid', 'Fadilah', 11, NULL, NULL, '085703276693', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (137, 176, 2, '1301686', 2, 'Gema', 'Ardhyana', 25, NULL, NULL, '085720327752', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (138, 181, 3, '1602086', 2, 'Runa', 'Adi Maulana', 9, NULL, NULL, '083816735063', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (139, 182, 3, '1606400', 2, 'Galuh', 'Dwi Putra', 10, NULL, NULL, '081563278090', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (140, 153, 3, '1602118', 2, 'Lutfi', 'Fahrul Fauzi', 6, NULL, NULL, '081214399800', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (141, 157, 3, '1606280', 2, 'Mahsus', 'Mushofa', 10, NULL, NULL, '081284176479', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (142, 104, 1, '1506780', 2, 'Evan', 'Manurung', 20, NULL, NULL, '081224473600', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (143, 117, 1, '1204412', 3, 'Ihsan', 'Ahmad Fadillah', 19, NULL, NULL, '081292910471', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (144, 186, 2, '1404347', 2, 'Rahman', 'Aziz', 17, NULL, NULL, '087821664550', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (145, 187, 3, '1602112', 2, 'Ronny', 'Zulkarnaen', 6, NULL, NULL, '082215397398', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (146, 164, 3, '1607460', 2, 'Muchamad', 'Nurfachrizal', 10, NULL, NULL, '08970548717', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (147, 184, 2, '1305640', 2, 'Ahmad', 'Muthi', 22, NULL, NULL, '089658160645', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (148, 185, 3, '1602123', 2, 'Rifaldy Fauzy', 'Ridwan', 6, NULL, NULL, '081902450301', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (149, 192, 2, '1204134', 2, 'Muhammad', 'Arif', 17, NULL, NULL, '08998299178', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (150, 193, 3, '1606421', 2, 'Reyhan', 'Hartanto', 10, NULL, NULL, '081290969748', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (151, 191, 3, '1605817', 2, 'M. Agfar', 'Dismawan', 6, NULL, NULL, '089679815208', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (152, 190, 3, '1505925', 2, 'Fauzan Adimas', 'Dicky', 21, NULL, NULL, '082217278046', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (153, 172, 1, '1505698', 3, 'Adryan Jaka', 'Lelana', 19, NULL, NULL, '08562205999', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (154, 195, 1, '1204910', 2, 'Yogi', 'Yogaswara', 28, NULL, NULL, '089644580675', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (155, 199, 2, '1403380', 2, 'Andra', 'Yovinda', 26, NULL, NULL, '083821779457', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (156, 198, 1, '1305901', 2, 'Cipta Cristian', 'Woren', 16, NULL, NULL, '08977033991', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (157, 204, 1, '1602314', 1, 'Iva', 'Rachmawati', 5, NULL, NULL, '089656878359', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (158, 202, 1, '1600986', 1, 'Khaesa Ananda', 'Putri', 5, NULL, NULL, '081322691300', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (159, 127, 1, '1503874', 1, 'Aulyanisa', 'Novatiara', 15, NULL, NULL, '081322970724', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (160, 221, 1, '1606292', 1, 'Hendra', 'Fauzi', 5, NULL, NULL, '082216806401', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (161, 222, 1, '1605878', 1, 'Fajri', 'Kemal Zaeny', 14, NULL, NULL, '081212778937', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (162, 200, 1, '1606508', 2, 'Mahesa', 'Rivaldi', 1, NULL, NULL, '082111454323', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (163, 205, 1, '1505737', 3, 'Muhammad Rizki', 'Dwi Putra', 27, NULL, NULL, '0811211138', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (164, 211, 1, '1607629', 3, 'Slamet Tita', 'Sumarti', 8, NULL, NULL, '088218034488', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (165, 206, 2, '1500233', 2, 'Muhammad Nur', 'Tastaftyan', 6, NULL, NULL, '082121888829', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (166, 212, 1, '1600417', 1, 'Rizki Dwi', 'Purnomo', 24, NULL, 'Rekognisi', '083829343380', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (167, 210, 1, '1601874', 1, 'Muhammad Ilham', 'Fauzan', 27, NULL, NULL, '081222797156', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (168, 207, 1, '1505886', 2, 'Niken', 'Tri Artha Mevia Putri', 18, NULL, NULL, '085222309320', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (169, 234, 2, '1601121', 2, 'Rifqi', 'Taufiqurrahman', 16, NULL, NULL, '087728367151', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (170, 225, 1, '1606388', 1, 'Hendra', 'Rangga Fahreza', 3, NULL, NULL, '085956244949', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (171, 214, 1, '1602146', 2, 'Muhammad Rashif', 'Farhan Asyir Shadiq', 11, NULL, NULL, '085794959509', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (172, 149, 2, '1502063', 2, 'Anggi Restu', 'Fauzi', 6, NULL, NULL, '085974303039', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (173, 244, 2, '1302017', 2, 'Rizqi', 'Adri Fauzan', 25, NULL, NULL, '081312743955', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (174, 240, 1, '1604974', 3, 'Nedya', 'Ulfah', 27, NULL, NULL, '085271051305', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (175, 235, 1, '1602157', 1, 'Lea', 'Naufal', 27, NULL, NULL, '085795270510', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (176, 239, 1, '1600046', 2, 'Aji', 'Wahyu Nugraha', 24, NULL, NULL, '082123213661', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (177, 220, 1, '1603886', 3, 'Falah', 'Khairullah', 24, NULL, NULL, '082316758097', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (178, 249, 1, '1605762', 2, 'Robby', 'Fauzan Jaelani', 8, NULL, NULL, '08977042277', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (179, 250, 1, '1705661', 1, 'Noval', 'Dwi Jayanto', 25, NULL, NULL, '0816619867', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (180, 208, 1, '1605527', 1, 'Muhamad Rafi', 'Anggara', 8, NULL, 'Rekognisi', '081547184903', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (181, 243, 1, '1500554', 2, 'Novita', 'Sarih', 11, NULL, NULL, '082219455595', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (182, 246, 1, '1601183', 3, 'Indah', 'Melania', 27, NULL, NULL, '089656622875', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (183, 241, 1, '1601420', 2, 'Siti Nunung', 'Nuraeni', 27, NULL, NULL, '081223104616', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (184, 223, 1, '1504582', 1, 'Maulidya Ajeng', 'Yulvia Wibowo', 15, NULL, NULL, '085693272398', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (185, 247, 1, '1601897', 3, 'Ayu', 'Azizah', 27, NULL, NULL, '089653487233', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (186, 236, 1, '1606251', 1, 'Rizki', 'Rachmat', 8, NULL, NULL, '085723205139', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (187, 219, 1, '1601051', 1, 'Hilmy', 'Zaky', 24, NULL, NULL, '895605967463', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (188, 255, 1, '1601016', 2, 'Hilmi', 'Hamdani', 24, NULL, NULL, '085722082205', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (189, 248, 1, '1600103', 2, 'Ripan', '', 24, NULL, NULL, '085722388400', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (190, 256, 1, '1203168', 1, 'Ari', 'Kusdinar', 18, NULL, NULL, '087822763936', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (191, 254, 1, '1601218', 3, 'Fidyah Niqo', 'Sabri', 27, NULL, NULL, '085398625639', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (192, 251, 1, '1701824', 2, 'Lutfi', 'Akbar Pratama', 25, NULL, NULL, '+62816619867', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (193, 228, 1, '1603612', 2, 'Mughni', 'Ardhianto', 24, NULL, NULL, '081324331871', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (194, 259, 1, '1604423', 3, 'Yaumil', 'Maghfira', 15, NULL, NULL, '081329914006', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (195, 165, 1, '1304233', 3, 'Furqon', 'Arfian', 17, NULL, NULL, '082215620204', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (196, 260, 1, '1607011', 2, 'Bayu Ihsan', 'Nugroho', 1, NULL, NULL, '085647407777', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (197, 216, 1, '1600846', 2, 'Eka', 'Putri Fitriani', 24, NULL, NULL, '085222736818', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (198, 258, 1, '1602348', 2, 'Mochamad Harland', 'Pradana', 27, NULL, NULL, '089673077741', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (199, 262, 1, '1602028', 1, 'Taufik Achmad', 'Ginanjar', 27, NULL, NULL, '087827561000', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (200, 253, 1, '1605490', 1, 'Richard', 'Sambera Sagala', 10, NULL, NULL, '081278281155', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (201, 215, 1, '1607578', 1, 'Andrian', 'Andrian', 5, NULL, NULL, '08882217290', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (202, 266, 3, '1505642', 2, 'Muhammad Fadel', 'Ilham Alhapidz', 21, NULL, NULL, '089622377492', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (203, 267, 3, '1606796', 2, 'Yoghafine', 'Agasti', 10, NULL, NULL, '08988975944', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (204, 265, 3, '1602124', 2, 'Al Hafiz Zhafran', 'Ismail', 10, NULL, NULL, '081999962509', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (205, 272, 1, '1607666', 3, 'Nurmala', 'Sari', 26, NULL, NULL, '085745446053', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (206, 229, 1, '1606984', 3, 'Andi Disbuhadi', 'Mattupuang', 1, NULL, NULL, '085353934588', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (207, 218, 1, '1602342', 2, 'Ai', 'Asiah Nuraeni', 24, NULL, NULL, '089662811658', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (208, 257, 1, '1600363', 2, 'Alvin', 'Renaldi', 24, NULL, NULL, '087811160960', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (209, 189, 1, '1501311', 2, 'Adli', 'Robbiansyah', 9, NULL, NULL, '081257398878', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (210, 273, 1, '1600924', 2, 'Muhamad', 'Rajib', 24, NULL, NULL, '085779007004', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (211, 188, 1, '1405961', 1, 'Uuf', 'Muttaqin', 20, NULL, NULL, '083820650343', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (212, 277, 1, '1607637', 2, 'Junjunan', 'Faturochman', 8, NULL, NULL, '08994782459', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (213, 278, 2, '1600825', 3, 'Dimas', 'Ramadhan Amrulloh', 3, NULL, NULL, '081411005362', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (214, 245, 1, '1608212', 3, 'Ilham', 'Ramadhan', 8, NULL, NULL, '083813436110', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (215, 281, 1, '1500665', 2, 'Mochamad', 'Arief Hidayah', 9, NULL, NULL, '085723938182', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (216, 201, 1, '1500179', 2, 'Arvin', 'Maulana', 11, NULL, NULL, '08987952269', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (217, 264, 1, '1600585', 3, 'Ridho', 'Muhammad Fikri', 24, NULL, NULL, '083811513873', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (218, 276, 1, '1607654', 1, 'Abdul', 'Hanif', 2, NULL, NULL, '081324996376', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (219, 233, 1, '1606233', 2, 'Muhammad Aulia', 'Rachman', 22, NULL, NULL, '08159212223', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (220, 224, 1, '1606041', 2, 'Naufal', 'Taufiqurrahman', 11, NULL, NULL, '081313119502', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (221, 217, 1, '1601109', 2, 'Triska', 'Junita', 24, NULL, NULL, '087821028093', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (222, 280, 1, '1607523', 3, 'Ardhia', 'Regita', 1, NULL, NULL, '081214446960', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (223, 271, 1, '1500923', 1, 'Zulfikar', 'Pamungkas', 9, NULL, NULL, '082117484211', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (224, 232, 1, '1605487', 1, 'Haekal', 'Audi', 24, NULL, NULL, '895605866354', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (225, 282, 1, '1500284', 1, 'Irdham', 'Kusuma', 11, NULL, NULL, '081903551926', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (226, 101, 1, '1301733', 1, 'Bagus', 'Baskara', 13, NULL, NULL, '081221186886', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (227, 203, 1, '1608203', 1, 'Muhamad', 'Zein Revolusi', 25, NULL, NULL, '082219511230', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (228, 283, 1, '1401016', 1, 'Risti Eka', 'Caputri', 10, NULL, NULL, '0895612501040', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (229, 275, 1, '1606221', 2, 'Ilham', 'Gema', 8, NULL, NULL, '085795516578', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (230, 263, 1, '1601682', 1, 'Bayu Erlangga Gerhana', 'Putra', 14, NULL, NULL, '081221702150', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (231, 230, 1, '1607148', 1, 'Tomi', 'Winata', 25, NULL, NULL, '082295209644', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (232, 252, 1, '1606053', 2, 'Yazid', 'Arrafi', 24, NULL, NULL, '085641745830', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (233, 230, 1, '1607148', 1, 'Tomi', 'Winata', 25, NULL, NULL, '082295209644', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (234, 286, 1, '1607158', 1, 'Monica', 'Umarni', 1, NULL, NULL, '085794691876', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (235, 287, 1, '1606382', 1, 'Nurul', 'Hasanah', 1, NULL, NULL, '081573659730', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (236, 284, 1, '1604079', 1, 'Kobie', 'Aulia', 27, NULL, NULL, '085793993695', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (237, 214, 1, '1602146', 2, 'Muhammad Rashif Farhan', 'Asyir Shadiq', 11, NULL, NULL, '085794959509', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (238, 237, 1, '1607638', 2, 'Sukma Dwijaya', 'Madawangi', 8, NULL, NULL, '08886002033', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (239, 196, 2, '1604526', 3, 'Najmi Najib Nasrulloh', 'Kurniadi', 3, NULL, NULL, '08170270798', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (240, 213, 1, '1600149', 2, 'Arif', 'Mariyandika', 22, NULL, NULL, '083894413029', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (241, 268, 1, '1606300', 1, 'Devara', 'Rayhansyah Chairul', 5, NULL, NULL, '085759217745', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (242, 227, 1, '1604109', 1, 'Adam Surya', 'Sutikno', 5, NULL, NULL, '0895365921820', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (243, 231, 1, '1607636', 3, 'Imas', 'Devina Fatonah', 13, NULL, NULL, '085721866693', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (244, 242, 2, '1601112', 2, 'Kukuh Putra', 'Prambodo', 16, NULL, NULL, '895344491745', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (245, 290, 1, '1604461', 1, 'Laras', 'Dian Maharani', 3, NULL, NULL, '085524672522', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (246, 274, 1, '1603746', 2, 'Azhar', 'Adhiyatso', 24, NULL, NULL, '82121914685', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (247, 289, 1, '1606660', 3, 'Deni Nurdin', 'Rahayu', 1, NULL, NULL, '085721969506', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (248, 285, 1, '1608128', 1, 'Anne', 'Rahmasari', 18, NULL, NULL, '085871452578', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (249, 238, 1, '1608208', 1, 'Wahid Fathoni', 'Sagita', 3, NULL, NULL, '087837766986', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (250, 279, 2, '1605528', 2, 'Efraimy Ruth', 'Sinaga', 16, NULL, NULL, '895369753853', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (251, 226, 1, '1601375', 1, 'Aditya', 'Mahendra', 10, NULL, NULL, '085722093717', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (252, 269, 1, '1606032', 1, 'Pandhu', 'Reksa', 10, NULL, NULL, '082115321500', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (253, 270, 1, '1606464', 1, 'Mochamad', 'Rizal Bachtiar', 1, NULL, NULL, '085891294398', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (254, 291, 1, '1606352', 3, 'Rizkia Fahmi Noviansyah', 'Imanudin', 3, NULL, NULL, '082213199693', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (255, 292, 2, '1604450', 2, 'In', 'Mustagisin', 17, NULL, NULL, '082112404136', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (256, 295, 2, '1607496', 2, 'Henry Prima', 'Martinus', 16, NULL, NULL, '082118448207', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (257, 297, 2, '1604937', 2, 'Rizki', 'Mochamad Fauzi', 16, NULL, NULL, '081573514842', NULL, '2020-11-21 08:38:27', '2020-11-21 08:38:27');
INSERT INTO `arsys_student` VALUES (258, 298, 1, '1503978', 1, 'Imania', 'Yuniar', 15, NULL, NULL, '082118877245', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (259, 293, 1, '1607676', 1, 'Eris', 'Rifaldi', 5, NULL, NULL, '085659920242', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (260, 294, 2, '1607331', 2, 'Devi Ivana', 'Athaliana', 16, NULL, NULL, '08119798113', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (261, 296, 2, '1607081', 2, 'Dwiky', 'Anugrah Heningputra', 2, NULL, NULL, '085974038490', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (262, 301, 2, '1601008', 2, 'Egin', 'Rahmat Ginanjar', 16, NULL, NULL, '085242857573', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (263, 261, 1, '1304138', 1, 'Mohamad Syamsul', 'Maarif', 17, NULL, NULL, '081802227730', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (264, 299, 1, '1606462', 3, 'Muhamad', 'Riyadi', 1, NULL, NULL, '082214637303', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (265, 310, 2, '1606976', 3, 'Haris', 'Arsyad', 23, NULL, NULL, '08115225530', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (266, 308, 2, '1600818', 3, 'Alvin Rakhmat', 'Wirakusumah', 3, NULL, NULL, '085721723729', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (267, 305, 2, '1602329', 3, 'Rian', 'Arta Prahesa', 3, NULL, NULL, '082115625464', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (268, 300, 1, '1403141', 1, 'Asri', 'Gania', 10, NULL, NULL, '08986183997', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (269, 197, 1, '1306721', 3, 'Wahyu', 'Mahardhika', 16, NULL, NULL, '081312219550', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (270, 315, 2, '1504849', 3, 'Boaz', '....', 23, NULL, NULL, '08115225530', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (271, 313, 2, '1600658', 2, 'Ghina Shofi', 'Nur Aisyah', 16, NULL, NULL, NULL, NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (272, 311, 2, '1601864', 2, 'Yuliani', '', 16, NULL, NULL, '085732450813', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (273, 303, 2, '1601676', 3, 'Dante Eka', 'Seviliana', 4, NULL, NULL, '088229257469', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (274, 302, 2, '1601538', 2, 'Muhammad Firyal', 'Firdaus', 16, NULL, NULL, '082126879511', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (275, 316, 2, '1607118', 3, 'Syaiful', 'Widyatmiko', 3, NULL, NULL, '087874480300', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (276, 314, 2, '1607582', 2, 'Galdin', 'Akbar Salihan', 16, NULL, NULL, '081914533596', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (277, 123, 1, '1300991', 1, 'Nety', 'Fitriani', 13, NULL, NULL, '082117588405', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (278, 318, 2, '1601010', 2, 'Anisa', 'Inggar Asti Yudianto', 16, NULL, NULL, '082217862154', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (279, 307, 2, '1604508', 3, 'Wildan', 'Khoirul Amri', 3, NULL, NULL, '08159686925', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (280, 317, 2, '1606411', 3, 'Abdul Fadhil', 'Al Mudzaki', 3, NULL, NULL, '085797976878', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (281, 183, 1, '1307440', 1, 'Khoirun', 'Nisa', 13, NULL, NULL, '0895361168016', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (282, 194, 1, '1303435', 1, 'Alexander', 'Ucok Yudanto', 15, NULL, NULL, '0895339472495', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (283, 320, 1, '1305639', 1, 'Mohammad', 'Fitra Permadi', 17, NULL, NULL, '0895411962928', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (284, 319, 2, '1606195', 2, 'Ilham', 'Ramadhani', 16, NULL, NULL, '082117812560', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (285, 306, 1, '1603853', 2, 'Gani', 'Gunawan', 24, NULL, NULL, '087737071730', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (286, 288, 1, '1608132', 1, 'Riyan', 'Mardiansyah', 1, NULL, NULL, '085862744514', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (287, 304, 1, '1600511', 2, 'Muhamad', 'Sampurna', 24, NULL, NULL, '081310698643', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (288, 322, 2, '1603417', 2, 'Haryo Iri', 'Satrio Wicaksono', 16, NULL, NULL, '088802086719', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (289, 323, 1, '1602070', 1, 'Kusnadi', 'Rusnawan', 27, NULL, NULL, '085859806224', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (290, 321, 2, '1601412', 2, 'Sylvia', 'Khadijah', 16, NULL, NULL, '08994115468', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (291, 324, 2, '1605911', 2, 'Rosena', 'Shintabella', 16, NULL, NULL, '082240672379', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (292, 325, 2, '1601296', 2, 'Dias Hegar', 'Pinanggih', 16, NULL, NULL, '082211013536', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (293, 328, 1, '180969', 1, 'Wahyu', 'Didin', 2, NULL, NULL, '089726334', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (294, 332, 2, '1307624', 2, 'Amirul', 'Ma\'ruf', 22, NULL, NULL, '081221216677', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (295, 327, 2, '1302098', 2, 'Fauzan', 'Anshori Natasasmita', 25, NULL, NULL, '088222066227', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (296, 312, 2, '1607633', 3, 'Ridwan', 'Amshari', 15, NULL, NULL, '082214841204', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (297, 330, 2, '1301663', 2, 'Nur Muhammad', 'Abdul Hafizh', 25, NULL, NULL, '089655656597', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (298, 334, 1, '1401476', 2, 'Achmad', 'Noviandi', 26, NULL, NULL, '085722336451', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (299, 335, 1, '1605054', 2, 'Muhammad Robbi', 'Awaludin', 27, NULL, NULL, '089696591401', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (300, 333, 2, '1501291', 2, 'Adi Sapta Hidayatullah', 'Suryaman', 24, NULL, NULL, '081281301465', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (301, 309, 2, '1604056', 2, 'Rudiyana', 'Rudiyana', 18, NULL, NULL, '0895325248397', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (302, 331, 2, '1605206', 2, 'Anggin Nisrina', 'Ulayya', 17, NULL, NULL, '081220077378', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (303, 347, 2, '1703006', 3, 'Arief', 'Khairi Irawan', 13, NULL, NULL, '083822089228', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (304, 354, 1, '1703770', 1, 'Asep Saepul', 'Rohman', 3, NULL, NULL, '082119042347', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (305, 344, 1, '1700904', 1, 'Andre', 'Yogaswara Herlambang', 10, NULL, NULL, '081290558376', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (306, 360, 1, '1701067', 1, 'Raffi', 'Erba', 3, NULL, NULL, '081221734652', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (307, 363, 1, '1806602', 1, 'Syahidah', 'Muthi\'ah', 5, NULL, NULL, '081322691300', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (308, 365, 1, '1703819', 1, 'Syifa Fajar', 'Qolbi', 3, NULL, NULL, '087847420614', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (309, 343, 1, '1604468', 2, 'Roni Ruslan', 'Abdul Gani', 27, NULL, NULL, '085607595377', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (310, 366, 1, '1704531', 1, 'Siska', 'Anggraeni', 3, NULL, NULL, '08892712985', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (311, 358, 1, '1703846', 1, 'Satria Ihsan', 'Ramadhan', 5, NULL, NULL, '089669592250', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (312, 361, 1, '1702673', 1, 'Nizar', 'Noer Insan', 5, NULL, NULL, '089684667526', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (313, 359, 1, '1700941', 1, 'Hilal', 'Ismail', 5, NULL, NULL, '081292615733', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (314, 349, 1, '1606109', 1, 'Kevin', 'Ankurien', 8, NULL, NULL, '081321414242', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
INSERT INTO `arsys_student` VALUES (315, 348, 2, '1301558', 2, 'Anthonyo', 'Jayanto Ramadhan', 25, NULL, NULL, '0816619867', NULL, '2020-11-21 08:38:28', '2020-11-21 08:38:28');
COMMIT;

-- ----------------------------
-- Table structure for arsys_study_program
-- ----------------------------
DROP TABLE IF EXISTS `arsys_study_program`;
CREATE TABLE `arsys_study_program` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(5) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `description_eng` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of arsys_study_program
-- ----------------------------
BEGIN;
INSERT INTO `arsys_study_program` VALUES (1, 'E0451', 'Pendidikan Teknik Elektro', NULL, '2020-09-16 10:47:37', '2020-09-16 10:47:41');
INSERT INTO `arsys_study_program` VALUES (2, 'E5051', 'Teknik Elektro', NULL, '2020-09-16 10:48:03', '2020-09-16 10:48:05');
COMMIT;

-- ----------------------------
-- Table structure for arsys_study_specialization
-- ----------------------------
DROP TABLE IF EXISTS `arsys_study_specialization`;
CREATE TABLE `arsys_study_specialization` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(5) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of arsys_study_specialization
-- ----------------------------
BEGIN;
INSERT INTO `arsys_study_specialization` VALUES (1, 'EI', 'Elektronika Industri', NULL, NULL);
INSERT INTO `arsys_study_specialization` VALUES (2, 'TE', 'Tenaga Elektrik', NULL, NULL);
INSERT INTO `arsys_study_specialization` VALUES (3, 'EK', 'Telekomunikasi', NULL, NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2020_11_03_092540_laratrust_setup_tables', 1);
INSERT INTO `migrations` VALUES (5, '2014_10_12_200000_add_two_factor_columns_to_users_table', 2);
INSERT INTO `migrations` VALUES (6, '2019_12_14_000001_create_personal_access_tokens_table', 2);
INSERT INTO `migrations` VALUES (7, '2020_11_08_082056_create_sessions_table', 2);
INSERT INTO `migrations` VALUES (8, '2020_11_11_135622_create_trix_rich_texts_table', 3);
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
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
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
) ENGINE=InnoDB AUTO_INCREMENT=471 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
INSERT INTO `role_user` VALUES (16, 3, 10, 'App\\Models\\User', NULL, NULL, NULL);
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
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of sessions
-- ----------------------------
BEGIN;
INSERT INTO `sessions` VALUES ('B5am17xqGkYTPOF3SKNJmwbluHJUKoSwL07qY27R', NULL, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_1_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.1 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZkRGb2NaZjYzSnFFU2paQ0ZGN3NScEtpVzFSaDJuZEdqR1JsOVUydCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZW9hcnN5cy9ob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1604853497);
INSERT INTO `sessions` VALUES ('G9HeBCPfr1cZuychIaTkaZdKYWWzHXguZ1ys7sPH', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.3 Safari/605.1.15', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMmxIUXBXR2ZPanY4ZXBDTHpMakJ1RElnaVl1WWdXN2pleFZaeHJtUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1604825756);
INSERT INTO `sessions` VALUES ('iNdUaW3M4OfKsw8a5ZdBDTSF485muwYLW1U3OBTG', 1, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.3 Safari/605.1.15', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiQ3FYVlhycng4Nk42N1oyRHhhdHNVR0VqdzZrejgwTnBTUEhNeGhqZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZW9hcnN5cy9ob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo4OiJjYXNfdXNlciI7czoxODoiMTk3NjA4MjcyMDA5MTIxMDAxIjtzOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtOO30=', 1604853509);
INSERT INTO `sessions` VALUES ('QgGQY2TlySR8Rm2MyBtGXNr9ntArI4o045YrMOAY', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT3BlY1c5elp3QlJ5T0d6RFlRRlp0SUFUUkg3eVZUWVZnWjZxckJHSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZW9hcnN5cy9ob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1604853496);
INSERT INTO `sessions` VALUES ('UcPl0JrYY0ps90GRj5Bf7wyDre1eJCkYAxWOWzWM', 1, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.3 Safari/605.1.15', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoib0ZMT2ZpRXMxcW1oMFNqNnRQSHFXV3BnbW9meVl6aU5SRG9TQnBnciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZW9hcnN5cy9ob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo4OiJjYXNfdXNlciI7czoxODoiMTk3NjA4MjcyMDA5MTIxMDAxIjtzOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtOO30=', 1604853447);
COMMIT;

-- ----------------------------
-- Table structure for teams
-- ----------------------------
DROP TABLE IF EXISTS `teams`;
CREATE TABLE `teams` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=428 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
INSERT INTO `users` VALUES (427, 'Didin Wahyudin', NULL, 'deewahyu@gmail.com', NULL, '$2y$10$Ci550S9NovCU/XUm2m6nKOjRyQJOi/Toc3/fVxe/chQGCtshWjqP.', NULL, '2020-11-24 08:53:50', '2020-11-24 08:53:50');
COMMIT;

-- ----------------------------
-- Table structure for usersOld
-- ----------------------------
DROP TABLE IF EXISTS `usersOld`;
CREATE TABLE `usersOld` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sso_username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duty` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signup_ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signup_confirmation_ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signup_sm_ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_name_unique` (`name`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=549 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of usersOld
-- ----------------------------
BEGIN;
INSERT INTO `usersOld` VALUES (15, 'AIP', '132314538', NULL, 'Aip', 'Saripudin', 'aipsaripudin@upi.edu', NULL, '$2y$10$S1FhZTlcbpln02O9390jAuEbfwwBjNA.6.Idqx7sTrVOr4CrEsdvK', 'sKHB62Ti3WfLh7wEIVDjwyKZe1cQmRniDwzzSQx6YDlGaOUGqDuWCktgaJb7', 1, '4j937Y8a8ndbYB4qM2F5jxO53RWJBEMgp2HmLr4JglrjmSNa2xqVnwhrFxGKxIsU', NULL, NULL, NULL, '0.0.0.0', '192.168.26.8', NULL, '2019-02-15 05:56:07', '2020-07-17 04:56:13', NULL);
INSERT INTO `usersOld` VALUES (16, 'DLH', '131614193', NULL, 'Dadang', 'Lukman Hakim', 'dadanglh@upi.edu', NULL, '$2y$10$oc94P.x69wqEeJyubMgRx.KSUZ8pru/t2BJAW94Z8Dt1ViCNFtFhe', 'kR1yOwomMPb93qq9KUdDkLbd5MWiDTDA9DtnuzP61zH2OawKfdo7zjpwfP7K', 1, 'zxfx95vzvo5hGs98y4NKd8ZBqZOa9aBc34uBVcToYvnXVJpDrANXyzd73ziBXb2K', NULL, NULL, NULL, '0.0.0.0', '192.168.26.8', NULL, '2019-02-15 16:41:12', '2020-07-10 23:30:53', NULL);
INSERT INTO `usersOld` VALUES (19, 'sekdep_ee', NULL, NULL, 'Secretary', 'EE Department', 'sekdep_ee@upi.edu', NULL, '$2y$10$OXwGMB5rOaP1ACmUCX37UuLOibBhiCnu6od3jbyNxmggAroPeVCyy', 'f3QztpYscBsFF4r8VuKrYdnElMjd0lqMV1NF7lQqdlnzavr2MCqc7WNig49h', 1, '1bhZWPXDeX1JpcJQxXwQ4oIs4qsqMrbqe8AWYaAH96ySzCiYIMnFdMC5Lji2rriG', NULL, NULL, NULL, '0.0.0.0', '192.168.26.8', NULL, '2019-02-21 13:44:57', '2019-03-17 04:07:08', NULL);
INSERT INTO `usersOld` VALUES (20, 'BMY', '132084280', NULL, 'Budi', 'Mulyanti', 'bmulyanti@upi.edu', NULL, '$2y$10$McRNVl2zOJyPO.a/1MlJO.ga7ZwbG1FMkg6bQ4ib07iFDC2D8XvSS', 'ioxGrDhtg3x9vPxBMHgYKcnxkX5WOs7FMqjzhBewAakAWaZ50YZsAm9fAXEs', 1, 'oMUVbN9Q4fGMeUP7jLpUnvpeKapnT0tvErPPM67pETUwXj0ul36jDOT4icSqo0dG', NULL, NULL, NULL, '0.0.0.0', '140.213.26.15', NULL, '2019-02-26 18:39:20', '2020-07-11 06:18:54', NULL);
INSERT INTO `usersOld` VALUES (22, 'E0451', NULL, NULL, 'Prodi', 'PTE', 'prodipte@upi.edu', NULL, '$2y$10$jJHnx.O5FJ1u0wmd1rR/vuOV6Et./Byzghf0baZ59xEybc.UEJR1q', 'VaEKlKtvzXvsp6i0vyjiyj4D3kfpqYSoo9fUMWvZncskhn1E3Pr8lDcWI6o0', 1, 'm5TF4bHZFGOuxooLCEpgh0xp8mAFCOLbxkfv44OfgD4LKCyJw8Y2IzpPOVl1lPxK', NULL, NULL, NULL, '0.0.0.0', '0.0.0.0', NULL, '2019-02-26 23:13:54', '2019-03-10 04:26:56', NULL);
INSERT INTO `usersOld` VALUES (31, 'E5051', NULL, NULL, 'Prodi', 'TE', 'prodite@upi.edu', NULL, '$2y$10$AaTtKFIzr3UMi/YDVltKtuU0Kq9yjnD8BfzBKULZ9YYlW6Q.a9LWK', 'WOwN9qu7kmX7yZ5OMOKibyHVHpiZDBlqPRN3xySbWi3DJeZotKHN6NFdduwu', 1, '6qXovjlNJoYdV0vN5osWgWqDVmqIKSpciLEqykIHQ0iURawBOU6bcTwop7IXRu8r', NULL, NULL, NULL, '0.0.0.0', '0.0.0.0', NULL, '2019-02-27 23:09:56', '2019-03-10 04:28:14', NULL);
INSERT INTO `usersOld` VALUES (35, 'ARJ', '132137918', NULL, 'Arjuni', 'Budi Pantjawati', 'arjunib@upi.edu', NULL, '$2y$10$BUJUEAOAipKJpvHeT5OJrOaQ4ErKIX6ZXiZU.98p2TYXWQecWLg.i', '3QkgD2d5O0TnQnG4uxBSna2FuAnr4SkoW4A0W5bs3jNvTowcgjI4VuxuCpfW', 1, 'kLRouoqPoMhbaEWbdaASu4ZoQXegesZQCHsJaD6lrTJtq2RG5AXF0h2mILXUeNz9', NULL, NULL, NULL, '0.0.0.0', '112.215.253.14', NULL, '2019-03-09 21:13:08', '2020-06-29 16:07:29', NULL);
INSERT INTO `usersOld` VALUES (36, 'TMH', '198204282009121006', NULL, 'Tommi', 'Hariyadi', 'tommi.hariyadi@upi.edu', NULL, '$2y$10$F8WzHJ1QI13bXiQqWDY7ze4NFnxeijjHusfMhqH2rDRhLR179RPl2', '4AbEwgnqHRYSqQFnLV1cR5SO1vGfSPFyw4HQAiWQDdnuNUBg3ER0uZ0Ccsrv', 1, '4tv8h0YKWm3OLkckgPkX9wABnmhRMqvZLuGpNJ38BbPYfdb5mAjb2uJsygr8s3ed', NULL, NULL, NULL, '0.0.0.0', '192.168.26.8', NULL, '2019-03-09 21:14:46', '2020-07-07 10:58:43', NULL);
INSERT INTO `usersOld` VALUES (37, 'AGF', '132231598', NULL, 'Ade', 'Gafar Abdullah', 'ade_gaffar@upi.edu', NULL, '$2y$10$EgdC90y5XJIpbA3EqYlnLOAm/Gs2BSJoY.7QQE8XOuXAYdJHmuWc6', 'L7yMrcwaSWFqAhFepPJRczGUfxeDPOXUrPlKlBvjpEHbxkNgzVTRuLH1JwMt', 1, 'iYCJsi4IiWczj9q8Q1CLWuyfaVGfw72FsijXYp2vMfcZKUcUzbfKgEwz4nq7OXKI', NULL, NULL, NULL, '0.0.0.0', '103.23.244.254', NULL, '2019-03-09 21:17:07', '2020-07-10 22:59:25', NULL);
INSERT INTO `usersOld` VALUES (38, 'MMS', '132296778', NULL, 'Maman', 'Somantri', 'msomantri@upi.edu', NULL, '$2y$10$IGCCHk9bTerh3gi7Pcwl3eGb76JFJJdS8bSVz2g1kcmUM6O/HWxry', '2HSGTI480Se04TeoEFyR3sjUI04mix6yM8VE8933ie8AsXsWYf3uGkbt8etC', 1, 'xTLpZjTa8Rrl461tjWzG0IhQnzjkZODCE4fwvahXjJAyU5G9mVHmQ1UhFtmkaGUZ', NULL, NULL, NULL, '0.0.0.0', '140.213.19.101', NULL, '2019-03-09 21:17:40', '2020-07-03 07:52:28', NULL);
INSERT INTO `usersOld` VALUES (40, 'WWP', '132086621', NULL, 'Wawan', 'Purnama', 'wawan_purnama@upi.edu', NULL, '$2y$10$U.id/8qvOIrq.rgDvxCoa.arTBj6dlPxS6PPLd8vpIkGJU6R7fLEm', 'muXzGTLVxReELiBCbxnFSE8n8QRK6WsqUiUnnHqkVDtjONhliUr6jIYStvhb', 1, 'GMbf84wefqP09x2nW0cah7xxsPlTJyluFowO4LgiaT3h5F2HnuFyJ3ZsgKMOCUtU', NULL, NULL, NULL, '0.0.0.0', '192.168.26.8', NULL, '2019-03-10 20:56:58', '2020-07-17 06:32:05', NULL);
INSERT INTO `usersOld` VALUES (41, 'INK', '132306520', NULL, 'Iwan', 'Kustiawan', 'iwan_kustiawan@upi.edu', NULL, '$2y$10$GmxFC/2iZZQJguFZ9Mg.Ru/Owrf6V7SJY.gJ.bKe.XQf/RubC69qu', 'tpR9NJYp8J5a1mpmunoJwZqLPtKxbhPpwcMHXBF4UG1lfv2IRpFxiO1fLXge', 1, 'dNZpjF6vadnFpiugMacG9NqCSrjGxy7cm6VwhTqmdAftWKoLpYPWujvgDjr5bJl4', NULL, NULL, NULL, '0.0.0.0', '140.213.26.74', NULL, '2019-03-10 21:02:20', '2020-07-17 09:44:52', NULL);
INSERT INTO `usersOld` VALUES (42, 'SSE', '132299062', NULL, 'Siscka', 'Elvyanti', 'sisckael@upi.edu', NULL, '$2y$10$ZdUdxoW2ZvdyqDXdnFlde.A80CPVBQhSZZSGhgO67FpVrbCbJbOC.', 's9IUkpv98BF2I5XKgmQIOsXKBw6kCvuIIkbrgNhm3sggDkPCnhFVKhKisIqd', 1, 'mciTaAtuhAeu1QGO2iIOar7k5WZBnEIU0SGJmtppQWzR9JsKnyCUB4c8V80ELy2r', NULL, NULL, NULL, '0.0.0.0', '192.168.26.8', NULL, '2019-03-10 21:05:20', '2020-07-07 05:12:52', NULL);
INSERT INTO `usersOld` VALUES (43, 'YDM', '132046213', NULL, 'Yadi', 'Mulyadi', 'yadielektro@upi.edu', NULL, '$2y$10$pvZBNtAqd7AmjFVQzgPGoOxfyE.yg5WMVSVYqINgMOeoEDn1fotMS', 'pY55U6ou0rBoqxAkJb2HvgpbsWVuVlPbU3DVVWrtbex2zxKiekkeJIVHBUlb', 1, 'jfrrnewO18py0IiH49hLmTNUp9uwwAY3eNw2XwXKPlSTsuOOlW79JB4Ip0kaf6nM', NULL, NULL, NULL, '0.0.0.0', '192.168.26.8', NULL, '2019-03-10 21:06:56', '2020-06-29 17:30:51', NULL);
INSERT INTO `usersOld` VALUES (44, 'EAJ', '130896534', NULL, 'Enjang', 'Ahmad Juanda', 'juanda@upi.edu', NULL, '$2y$10$ON1yykqTlBSIXv7FwGR2duydtIjjilHuxwTS4HMDvw2TXNGiJgiIG', 'Ii5COdaPS6LbAs5dtduAjrGSz3c2ZK1ID0my2R1qV0d1BXuC8wSF32qtCKKE', 1, '3fdpl3aJY1NmsiSgyjESxXvtoObvlBOrDVcLaDUW4DoyGtYM2reriFxcvAXrw1l0', NULL, NULL, NULL, '0.0.0.0', '103.23.244.254', NULL, '2019-03-10 21:07:47', '2020-06-29 08:03:10', NULL);
INSERT INTO `usersOld` VALUES (45, 'HSB', '132297303', NULL, 'Hasbullah', 'Hasbullah', 'hasbullah-elektro@upi.edu', NULL, '$2y$10$/sk3HKt/UkU0BliONVcQiuG45MeRdq0ZUBVfuEeS.MS.FBgOWaHku', 'Nw7wuWVcvPUU9WduJ1rNPYbp81L1tZO1ywhEaDGehNaCJMP0RbPhBgMZ141g', 1, 'CQ9E4LrJSVKBbZoxIRuucyUk1bJTjgTw5Jldpylbh3GrAdq7UBbyt9DkNr1e5Aek', NULL, NULL, NULL, '0.0.0.0', NULL, NULL, '2019-03-10 21:11:22', '2020-06-29 14:36:02', NULL);
INSERT INTO `usersOld` VALUES (46, 'WAS', '132163105', NULL, 'Wasimudin', 'Surya', 'wasimudin@upi.edu', NULL, '$2y$10$j9APM/hclVFvH7Jy0ljgE.OGRiLoJSM.WylueRdZl4u7bWTFSlKHu', 'uPXSxuQXL3LvSXjCVHrqtsCquCtAgbnbCEuDWYJTFGuZdAI0Oi0vZdjbx1Gx', 1, 'Ce4QU8QEGgEpWTGpiYMlpS5To6oLqnCY3WTS5nUr8ig7kXxJDiDA97AWRSHn3EWt', NULL, NULL, NULL, '0.0.0.0', '192.168.26.8', NULL, '2019-03-10 21:12:16', '2020-07-02 03:16:55', NULL);
INSERT INTO `usersOld` VALUES (47, 'DNK', '198006232008121002', NULL, 'Dandhi', 'Kuswardhana', 'dandhi@upi.edu', NULL, '$2y$10$K8BndnrZPmphaUW0hyd8POZjOdNStgu0x7lpvwCcB1HlY6LaYKMRW', 'rVsRqyzTGAqsiRqduToFxzpbKpp3ChYcuReBSR78eCMYjTiy9E9N7TH1ehPD', 1, 'v2zJiot0RpbVvkgU9VMY3UhmG61O982PWpziFsLgwYuIO5E4RjzSqsu50YEal65z', NULL, NULL, NULL, '0.0.0.0', '140.213.26.74', NULL, '2019-03-10 21:13:03', '2020-07-03 10:47:32', NULL);
INSERT INTO `usersOld` VALUES (48, 'ERH', '132296306', NULL, 'Erik', 'Haritman', 'erikharitman@upi.edu', NULL, '$2y$10$q3fY.4qXU08K5KCw2z074.2E03Yh2fuPTkLjCd.bowF9hlTzD0j7.', 'bMIk0skODRo4jYjLVwOF55gD05fBSKvlilgrPBnlaT82wR3DlW4xqHSpJb38', 1, 'WpxPTGA6qjAOlDF41EWV3svjcEjSPEyUcKKaAak6yAQGQXI5BlreZZEbBLF3Bj8y', NULL, NULL, NULL, '0.0.0.0', '140.213.26.74', NULL, '2019-03-10 21:15:18', '2020-06-29 02:14:39', NULL);
INSERT INTO `usersOld` VALUES (49, 'YYS', '131473889', NULL, 'Yoyo', 'Somantri', 'ysomantri@upi.edu', NULL, '$2y$10$JRmW.s56zi4kFO2jVjpG3.dTbinAQ0RL6dRcR2DHUx.UfIYqfc9s.', 'tYW4Wc64tK3SLfbuHMiESevloddSNjzAH8VIIx1fv7GGRpZzhzK7pJ3mTkjm', 1, 'bartJopwsuM2jmp9tlxRSoegWlzJFAnXKvKxvbQSBLullNcISez2Qq7MPuoLOgBK', NULL, NULL, NULL, '0.0.0.0', '112.215.253.14', NULL, '2019-03-10 21:15:56', '2020-06-30 02:43:57', NULL);
INSERT INTO `usersOld` VALUES (51, 'BTM', '131647624', NULL, 'Bambang', 'Trisno', 'bambangtrisno@upi.edu', NULL, '$2y$10$rDdfcwOXEhhPx1U6OuR87uCUT5c6m8n7C3JBOEIV66oT9QVX0wltG', 'WIBrsvKVO4l3nVy8YK3e1QjWUBxF2BN6OMt0oNP88tcYdI17z7eU8r9hVCXB', 1, '1yamKcoHBP7tW6U5DIdk3iiXTHyrKek5ZCkDISeegWexgo24EyWwQ1VGlP4J6omE', NULL, NULL, NULL, '0.0.0.0', '192.168.26.8', NULL, '2019-03-10 21:18:20', '2020-07-10 21:57:33', NULL);
INSERT INTO `usersOld` VALUES (52, 'SMT', '130935683', NULL, 'Sumarto', 'Sumarto', 'soemarto@upi.edu', NULL, '$2y$10$E57gJbxhwUlC54mPmyRHFeXXbV1g03g59ENY7e./ImVRAnlXt9/5.', 'GZmxOQxJgxpaMtphtLXVtAq2DVWOfEjGGNyaXRQWsXZqdb8Q6SzEdeP0Ver3', 1, 'YyaV2XY5qQwvdPEOWnn77TMjHMaakP0dXmw7SALYxXezOakhxev8cvqNOiMfDmA5', NULL, NULL, NULL, '0.0.0.0', '112.215.253.14', NULL, '2019-03-10 21:18:59', '2020-07-11 05:47:01', NULL);
INSERT INTO `usersOld` VALUES (53, 'TSM', '131930255', 'E0451', 'Tasma', 'Sucita', 'tasmasucita@upi.edu', NULL, '$2y$10$EQEiG7JF53mC5QZaZaZLhO7m4nY/8mjf8i4jwsTz4vxFjTiZI0bVC', 'wEUpJZqCH1yiudnwnwUKBfU8YRsB3foAhKcgMPRLOgDn3E7APmNTu6L8ry5l', 1, 'kKIDOeFIahhUXmgvDYcU10xNRpvk9RLOhI54VwEpdkitDf73cBf3UufiBI8ZgV4i', NULL, NULL, NULL, '0.0.0.0', '192.168.26.8', NULL, '2019-03-10 21:20:02', '2020-06-30 02:50:52', NULL);
INSERT INTO `usersOld` VALUES (54, 'IWR', '131627871', NULL, 'I Wayan', 'Ratnata', 'iwayanratnata@upi.edu', NULL, '$2y$10$SB3MBaZnCHCa9HzzPMyvSOnSmcRQWiX7FkediJnSLlWb1.VPlGi7m', 'X6fgDu1O2yaCBvfCSQ0p1UVxQLzVJjSp1MNgrMVmU6gN2zAnhXmTtxkmbYa3', 1, '2RMFjkL3j5rkkFpaMBiAWJFPozfsRCnFCpSk9X8Rk9LTP7dnvA2IClHeVU8g8SK8', NULL, NULL, NULL, '0.0.0.0', '192.168.26.8', NULL, '2019-03-10 21:22:20', '2020-07-02 02:54:03', NULL);
INSERT INTO `usersOld` VALUES (55, 'ELM', '131975871', NULL, 'Elih', 'Mulyana', 'elih_mulyana@upi.edu', NULL, '$2y$10$SW4c0k5Bvex4k8csHPOYUu3WgLgULUicnsFKyjNV973t1hmycKPrS', '3E9wbefRVJjlY0pOsnuTVtKDyw3rlGUCrc26TTdwM4rh6Q4QkLH0Tl4m8sVI', 1, '4sZxsSnfvh12f1c6BODmwsddpNClDb0HKI4ZvwkrtXkKFvJxAM3Fp5jlovf4aemb', NULL, NULL, NULL, '0.0.0.0', '140.213.26.74', NULL, '2019-03-10 21:23:22', '2020-07-18 14:55:13', NULL);
INSERT INTO `usersOld` VALUES (56, 'TSR', '131634849', NULL, 'Tuti', 'Suartini', 'tutisuartini@upi.edu', NULL, '$2y$10$UmdBFmZPE6kIIXTsaVbbJOclQ4T6lHpmNDkQtDA6.f1cqYxCFUP2K', 'HuC438mKILH6cAQDU8g41WIHvkyT43qPT2lT1V5BA4xLcjVZP3WTDYUYIxPn', 1, 'RoO0JEpsfxkZVH8hbeVLwDopN0fctaWnlWHZfpf1aStpVolPWIC6AOIwTxtArhcE', NULL, NULL, NULL, '0.0.0.0', '192.168.26.8', NULL, '2019-03-10 21:24:07', '2020-07-08 09:00:50', NULL);
INSERT INTO `usersOld` VALUES (58, 's1204283', NULL, NULL, 'Wisnu', 'Sukma wardana', 'wisnu.sukma@student.upi.edu', NULL, '$2y$10$utwIa89QVnaFEMg6aezC.OAEDSZ0ml8wJFenN4UKBx/HGj/MUh8Tu', 'Nzads95ma5aESmfhVc30B6X1nQp3ZZgarpJtpfxUcBA9ytPzB5kfvbGEt8Hc', 1, 'NUHSJEjhzLRw0KxoqPUQR6vafSBf2YK4kdw2yjFIVqln9ALIeZCRW8J8ixGiquYs', '192.168.27.212', '192.168.27.243', NULL, NULL, NULL, NULL, '2019-03-17 04:10:38', '2019-03-19 22:56:59', NULL);
INSERT INTO `usersOld` VALUES (59, 's1204926', NULL, NULL, 'moh', 'zulfikar', 'moh.zulfikar@student.upi.edu', NULL, '$2y$10$9.p9Enfyp3UL590Z.oB6IeD32wasPCqO05Bd70jQpO97y0zyfBgJy', 'fO6CKeLZGMWdT2Dq3SeFxkCyCujwMDkqdGZZ4dcxgwanHrywvGGnbPd7YQmr', 1, 'HWz00bOD7jpXdz8eYLyxmG1TdPz7QiXx0NXiiJtmUznmtEJq3nahrXOTUEsJTQOg', '192.168.27.243', '192.168.27.243', NULL, NULL, NULL, NULL, '2019-03-17 04:11:45', '2019-03-20 02:05:40', NULL);
INSERT INTO `usersOld` VALUES (60, 's1204127', NULL, NULL, 'muhammad', 'fitra ilhami', 'muhammad.fitra@student.upi.edu', NULL, '$2y$10$Xsz0CLvnZ/b36bEOyUtnnupcrD3Q5vZ5XkchoU7t.uqeFLdTaLh0u', 'DpKoz9oY2BWJpqbIBZm1Q4iaZHWDHyuP7ACAtkLJFx17aaHTvUttvfYhVSCI', 1, 'WhTu6xN6NspwFqEynHFAE0Xgf84LVI7GzvFXy3VSg0XiS3ON3MB56VdCzJLfNymC', '192.168.27.212', '192.168.27.212', NULL, NULL, NULL, NULL, '2019-03-17 23:50:52', '2019-03-19 22:56:50', NULL);
INSERT INTO `usersOld` VALUES (61, 's1200500', NULL, NULL, 'teguh', 'hermayadi', 'teguh.hermayadi@student.upi.edu', NULL, '$2y$10$FNZkupA7IyLTT1ygQvCSIOp9eLIJ0pdjgVFORO19tk8MmrbiolTeu', 'PcyTCiM7qQPtnAR1J7zCa0p7kPrUA6AWhV78pkSOYgkS6VrqGNAmPFi765EU', 1, 'ZccsCLHxrInlNtLXn7vYB13z3sxmjA9cbRFShhYmahK64owZben7X7hHBwwiBeL3', '192.168.27.212', '192.168.27.243', NULL, NULL, NULL, NULL, '2019-03-17 23:51:22', '2019-03-24 23:51:52', NULL);
INSERT INTO `usersOld` VALUES (62, 's1504873', NULL, NULL, 'Trisina', 'Simanjuntak', 'trisina.simanjuntak@student.upi.edu', NULL, '$2y$10$exMeKMzL/YWTeCqM1/jv7uYwHUQeQssz/72mi1qzAL0UdnNRhI7ey', 'uhdesUdTwAIrzP7fN7A8IVzGFmux64efQhalq2pjXrtDwysJ9HPgaw05Dhtv', 1, 'qt6JpWsfavaug265LMUzpqlGEbeTJz8WQ7xhzywkLpg5vvx22zFZgo1hab7wKPFt', '192.168.27.247', '192.168.27.247', NULL, NULL, NULL, NULL, '2019-03-18 01:49:10', '2019-03-23 02:32:19', NULL);
INSERT INTO `usersOld` VALUES (63, 's1504316', NULL, NULL, 'Rizal Daffa', 'Noer Sidik', 'rizaldaffa@student.upi.edu', NULL, '$2y$10$GagCTUnpvRFh3y0nUX.jS.AylSGgb1P29n8CtV7pm9Q5nETXIJTj.', 'KrLPHDiLubT0Xc1Av77PG9B8nxcEKS83mng6On4WDu2RkQl4MT9XcNSYpjHF', 1, '2d3XH1LCAnmuzRj4eO0LUiHsA0xqIUYmLhVj6Tg7uzIgm8lT5OQfLiKJOf1JisXQ', '192.168.202.92', '192.168.202.92', NULL, NULL, NULL, NULL, '2019-03-18 03:04:31', '2019-03-23 02:27:11', NULL);
INSERT INTO `usersOld` VALUES (64, 's1200342', NULL, NULL, 'Satrio', 'Budi Prasetyo', 'satrio.budi@student.upi.edu', NULL, '$2y$10$dZh.47dvsWkvvhVv6ISeveDA/CkNJVdo/0WbBodtkQVGdNo5qc/b2', 's2wRI1JRY19DFKQrITJ6JTYxupTQIY1jvyxEWKjc9tEXqGr2mj83fcLFUX93', 1, 'zdHgKbtZ1wk7AZ5qL6zcSFEc5eEyawTGxu0VubJ3Cn44qkn24a8pNwG3HCr8Q95p', '192.168.27.243', '192.168.27.243', NULL, NULL, NULL, NULL, '2019-03-18 03:16:53', '2019-03-24 02:05:37', NULL);
INSERT INTO `usersOld` VALUES (65, 's1504794', NULL, NULL, 'Mohammad Giri', 'Firmansyah', 'giri@student.upi.edu', NULL, '$2y$10$OPWBmnUFf40CUY9JdizfJOwzQt9TCWNYr8iSX4vrSsk.t5PfYy9.6', 'slUSiLtz0BEEBenUvLyjiz55HaSWNACnDUAQ58LOCQrvI05sdXoLbGgGdvQ9', 1, 'DXK8FS1DwBwGGezF7e4XJkhXyzPL8AEgdXdmXgv5vubEMJ3a9TNPWuRC5Z34eRwL', '192.168.27.211', '192.168.27.211', NULL, NULL, NULL, NULL, '2019-03-18 03:47:51', '2019-06-25 12:33:57', NULL);
INSERT INTO `usersOld` VALUES (66, 's1506365', NULL, NULL, 'ivan', 'hadian', 'Ivanhadian17@upi.edu', NULL, '$2y$10$YwT8JZ/YehGJ07jUy4GXkuDjIM8BIeOHFvP2dRM44Oou4./k.IU9.', 'r8N1s3ELKIr1xQwhg21SEVD56qW8n5OaIOLxh7tTbv81DZEO1Gv1Lay46DqI', 1, 'h3NTt2PV7U1ilNRncIlSI6K2hhO5XGyJ6wWFDjKWhMxrBgNszrUi9h8ECLwHW3MG', '192.168.27.242', '192.168.27.242', NULL, NULL, NULL, NULL, '2019-03-18 05:17:16', '2019-03-25 02:14:27', NULL);
INSERT INTO `usersOld` VALUES (67, 's1500550', NULL, NULL, 'Yudha', 'Hardiansyah', 'hardiyudha@student.upi.edu', NULL, '$2y$10$zYTIcMU0lUH0kjeLGi19ZuuaimjEounBhGFY81zjxJbbmqzbp/Wa2', 'RI692WOk2c886HdPi2WjUVJlU711I77hwlQpOxFnEcaB0ExcgZSs2ZozlWmY', 1, 'lffxROrm6ch8VmKAU3GjMUVJJxU7HL0oBXzD9pEgh214PFVwONcQzBqC6qx3pF9W', '192.168.27.242', '192.168.27.242', NULL, NULL, NULL, NULL, '2019-03-18 05:24:44', '2019-03-24 00:15:29', NULL);
INSERT INTO `usersOld` VALUES (68, 's1501088', NULL, NULL, 'Putri Ayu', 'Kencana', 'putrikncn@student.upi.edu', NULL, '$2y$10$8gQ7cRtUSTea9U6JjVIAT.1ZDHBOYTg7S/VZQKTG38ftdRxlJ4cMW', NULL, 1, 'ptouatV9btHwlng18pHJ93TkKU0LrDWkjDOF9XOPZjwukugcuQG74hCOMP01Sp4m', '192.168.27.247', '192.168.27.247', NULL, NULL, NULL, NULL, '2019-03-19 00:30:22', '2019-05-14 00:37:34', NULL);
INSERT INTO `usersOld` VALUES (69, 's1504417', NULL, NULL, 'Khansa Ratri', 'Haniya', 'khansasnahk@student.upi.edu', NULL, '$2y$10$1U3h6egO8vADIfFeZplv..7J05OQs1bTY8l6xhY0QB3yX7ss3DtlW', 'ZtH3kyIbgJ97RZapdlOWZ6HXLLqnNQwYThPboMC2AwRirCNlBDwCBvpVH858', 1, '6HX8BrMClOLlF8ydwBWeuMaWZgdJxmfK7HqQc9opPxOd7OGQn7BjLsLNF3osk2JR', '192.168.27.247', NULL, NULL, NULL, '192.168.26.8', NULL, '2019-03-19 02:28:28', '2019-04-06 19:42:01', NULL);
INSERT INTO `usersOld` VALUES (70, 's1506032', NULL, NULL, 'Nadya Richna', 'Fitri', 'nadyarichna27@student.upi.edu', NULL, '$2y$10$EeogU2p0ELMNQ3c87pg6oOdkAnrJ2rUpYjzWAc7vOk/lYNU1VpOsm', '0Id5mA74ib3UyCVovKAtQ1LsyntWKWpw5xyeXIELnTASvg0N6VUw7hF4wVQe', 1, 'Jn3sdUZ9SR8PkhEqYgXVdvCiHCmCTqgOIdhl9RcqIO5eGJtu67tmfojxrX9V5zFw', '192.168.27.247', NULL, NULL, NULL, '192.168.26.8', NULL, '2019-03-19 02:28:32', '2019-06-21 22:53:19', NULL);
INSERT INTO `usersOld` VALUES (71, 's1506366', NULL, NULL, 'Julian Serly', 'Ayu', 'julianserly@student.upi.edu', NULL, '$2y$10$XjhQvbqOuRGP33d3hKIq/O5FG76XCF/8fAQm5d1VGisDJDOkHuCny', 'qjK0ReJQuMn8oDsmUIMigAWY0Nm4jphtORYMFXbqMWXNBYm299mRmPI4sMZG', 1, 'Gua9he8eiDFlW4Jh09lrvQ18uNUfKuH8zhvM6GmfjZ2j93E0wcdngUj1Hhb3MWHH', '192.168.27.247', NULL, NULL, NULL, '192.168.26.8', NULL, '2019-03-19 02:28:45', '2019-03-27 00:48:53', NULL);
INSERT INTO `usersOld` VALUES (72, 's1500400', NULL, NULL, 'Alfin', 'Agusman Noor', 'alfinagusman@student.upi.edu', NULL, '$2y$10$GRisFptZ8WThZuuzW.50NuWlj1NCzdiewt17trQt7Z.TeVwuPyJCW', 'idnGF33WkKygxyq5YntgNWDhNPAQi9B1rmED2zUKP6yK7P1HGGPfTs8lwjIy', 1, 'hxqMhlT1IEeQCr1f1VV0b6OM5BTK2Nv7cG1laZta8BOil8oUEfXBIsBtjVxKUK9B', '192.168.27.212', NULL, NULL, NULL, '192.168.26.8', NULL, '2019-03-19 03:31:18', '2019-03-20 02:59:02', NULL);
INSERT INTO `usersOld` VALUES (74, 's1503510', NULL, NULL, 'Ibnu Malik', 'Al Hamas', 'Ibnumalik@student.upi.edu', NULL, '$2y$10$Jdy2pVpf4b4D3ITViH5HK.i4VkOZ23zbn0sHHQTfBHWhsZARHIT.a', 'tGBYmeImIGAjqFba91l4yt8ug3tEWL0Ht5IC6QmnnatamZOIVb6FgMxzclwW', 1, 'RsPYo3um8f6up6wNVjSnv7HgqbYStWSd3JvS8is6I51VVElWEzNRtF7FrZAvE0s2', '192.168.27.195', NULL, NULL, NULL, '192.168.26.8', NULL, '2019-03-19 03:37:20', '2019-03-19 05:44:50', NULL);
INSERT INTO `usersOld` VALUES (76, 's1504696', NULL, NULL, 'Regita', 'Nurmalita Yuniar', 'regita.nurmalitay@student.upi.edu', NULL, '$2y$10$bnXR8J.ZHxqDBdO6WiRbXOoZfYXudKD5j.mE6R59BYpEBNAaVxrJ6', 'jR1jJSKCXbExjfnd5n5rHaMmu77VUgajKa0C2en51HQ0eR5rl9ueC1xv8kPa', 1, 'IwhLQSxCFQaSP4lxoxUxEclbMDcHBjWxwyDK9zzSOsv3ussTCjoSO7pTsLEV8kx3', '192.168.27.247', NULL, NULL, NULL, '192.168.26.8', NULL, '2019-03-19 05:26:18', '2019-06-22 00:01:20', NULL);
INSERT INTO `usersOld` VALUES (77, 's1203590', '1203590', NULL, 'allan', 'anugraha maharbid', 'allan.anugraha@student.upi.edu', NULL, '$2y$10$2CNMO8QfBZdE7MX16NhTQuAGHOq7MHcbbqDaTfFrD1qmffoW6FVFK', 'IPazlzY0PkDowL3TqvqaDyaSrl0aWJ4P46aWu0RiWKbsUbGwoloqAxJq1rIv', 1, 'VNsYC6iivgCnsGPxZHItkNOq5xr54LEA9Y5aow0PyDnZwL4SaDQCSS2bJvTQebHu', '192.168.27.243', '192.168.27.243', NULL, NULL, NULL, NULL, '2019-03-19 21:08:30', '2020-07-02 15:37:14', NULL);
INSERT INTO `usersOld` VALUES (78, 's1200589', NULL, NULL, 'hary', 'dwyan fitriana', 'hary.dwyan@student.upi.edu', NULL, '$2y$10$9AxgWB11xTWovsGXsjcH4.27f7lYO5a9Uyi3yIfjf6T56r6T643b.', 'dONzrZrONODoT6bCP1UkzD2tUJIMipoSXR5wYcOjt0oMBQTzjQzdFrFX4Vly', 1, 'MMGb0WtZPc25uNgJBMDpgJTyaADU2UunuLP0jGepwR77MaoPshFtMBF7FNoFxg9Z', '192.168.27.212', '192.168.27.212', NULL, NULL, NULL, NULL, '2019-03-19 22:52:40', '2019-07-30 17:46:22', NULL);
INSERT INTO `usersOld` VALUES (79, 's1503711', NULL, NULL, 'Deri Rio', 'Heryanto', 'deririo@student.upi.edu', NULL, '$2y$10$HKKdBtCLp3HRu23/GtrldOYO4UTgTMl1kmko4NgMxWiIKBc90WR26', '6Tb0JMwwfOaO9ssUKzg0C3DiZ7RX2dRR4MAa1KMJdAbT8HWDk7Zy1bUAKyQB', 1, 'YvLfAANKCKdz0HRZsigckz9qj7oWR6Kq5GGRTlg5oEA53uk2Jk9YXcJvOa0pQjMB', '192.168.27.195', '192.168.27.195', NULL, NULL, NULL, NULL, '2019-03-20 03:26:55', '2019-03-27 00:30:48', NULL);
INSERT INTO `usersOld` VALUES (80, 's1200356', NULL, NULL, 'Ayu', 'Rakhmawati', 'ayu.rakhmawati@student.upi.edu', NULL, '$2y$10$3reBDqmFi1RhqTxfGWRxSu1YsnYFwmh1xChx.mGU9H5slioieL3NC', 'pve8kCN0tOMTgDCv3aOh7CR6G9p2qXcVSpbF1qVMuEooR2ZI94n7jXFF2voJ', 1, 'WiOPW9JW0imdHkaRgGDjjw0jyg02v6iCuPc0W9fYMm0BpKquztdApkQw93Su6I77', '192.168.202.9', '10.10.54.60', NULL, NULL, NULL, NULL, '2019-03-20 03:52:34', '2019-03-23 04:43:16', NULL);
INSERT INTO `usersOld` VALUES (81, 's1204044', NULL, NULL, 'Emil', 'Ramadhan', 'emil.ramadhan@student.upi.edu', NULL, '$2y$10$psyz8NhC8nTYWPR.jByYVOpPa91rGwV0v1fbFzLcZ3XNzy1V8KZO2', 'lHG3AldVIcQxi19ppmZQLfC34y3B5mCuPbw4VeDMqQBXvzq3i5uZjVMNWWaz', 1, 'YdusC2sUQoyfE0qg83Wb6jwsHm5ZbUG8quDbCR6lQQnvmN1hzuQW2L5tQS3jpLX4', '192.168.27.247', '192.168.27.247', NULL, NULL, NULL, NULL, '2019-03-20 04:42:37', '2019-03-24 02:31:31', NULL);
INSERT INTO `usersOld` VALUES (82, 's1500818', NULL, NULL, 'Dimas', 'Ariwibowo', 'dimasari911@student.upi.edu', NULL, '$2y$10$yNH1gR7IXK5DMasJlNBlQe93p129IfaqVZfEhVFm368rs2/M3DvQS', 'KXAJ1CUop1ORyXXoQPvUSl0Ws2Iw3NPqEcNqBUi82cwhRHy8yz0orySNf25j', 1, 'GiuoNf1qyujC4BbQrKLzpwqfLt4yzmuH6iFqd7EqQTOiWhwCtbDoUeCXHFLaV40W', '10.10.54.78', '10.10.54.78', NULL, NULL, NULL, NULL, '2019-03-20 04:43:19', '2019-03-25 02:55:51', NULL);
INSERT INTO `usersOld` VALUES (83, 's1500812', NULL, NULL, 'Faqih', 'Fakhruddin', 'ffakhruddin@student.upi.edu', NULL, '$2y$10$JwOOcMCuMNDQgBBSCi5Qau0KaJHtEKJxUNOmH4GEEX8xI0hmGgtcq', 'W1uHS9pyYZEtW5iu7FyDa9W0HlmVFBCVDf8b4MeJfZDZFFn5Zxh4AqOKMVJK', 1, 'hAeseSk0KkL02Q9OV3drFyQD5Ks59v8MXwzBSVigNF9M2hP2W9RPhTTUDoJ4GKAV', '192.168.27.212', '192.168.27.212', NULL, NULL, NULL, NULL, '2019-03-20 04:47:03', '2019-06-21 22:19:43', NULL);
INSERT INTO `usersOld` VALUES (84, 's1500538', NULL, NULL, 'Ilza fauzan', 'Ramadhan', 'ilzafauzan5@student.upi.edu', NULL, '$2y$10$9XOpPhEOCGjL47UnEiwtrO.PiSRUOMrz7BM40hl14UicOfTbRXbie', 'kPRZ1IcsCl5lKJaXxsHWm3tLLns9PAteNklB2qXNvf7NzpMNbKR9fUHxDsj9', 1, '9TMBso4fDxlwrgfCYyLfvraWwbzC4g1p2VHNch1ZrC3ixSH2y4Pn3FxVDcyDZ3DS', '192.168.27.212', '192.168.27.212', NULL, NULL, NULL, NULL, '2019-03-20 04:54:17', '2019-03-30 02:05:17', NULL);
INSERT INTO `usersOld` VALUES (85, 's1500972', '1500972', NULL, 'Irvan', 'Virgian', 'irvanvirgian@student.upi.edu', NULL, '$2y$10$/2mIdLsJMN29C.BN7x1lKOx.6Ieq86lqD30lwH5U0T6H/PitFvIdq', 'MQLwbXWCf6t5rWGLvs6AwHjBDBjhsUp1jqyuElgGeYRS3vwYLYhYigprzv8f', 1, 'yiu6WV7GbcQokIcRUndm0ZtWvqvZMYaYfzPaaS8DendStaTVQBGK6tq0WBzEWhXk', '192.168.27.212', '192.168.27.212', NULL, NULL, NULL, NULL, '2019-03-20 04:57:47', '2020-07-02 03:44:37', NULL);
INSERT INTO `usersOld` VALUES (86, 's1506367', NULL, NULL, 'Rizka', 'Adhiswara', 'radhiswara@student.upi.edu', NULL, '$2y$10$8wr2Ow.iZXYzoPjNv4DuPuyfkWMpl6ptCuVe8xcDcQaQaqY258AyK', 'yJDxiYx3fz0vzm5AypBlejRKz6TNeYIZUCuw5NV5xwtrlpbueLnHWDQkvEKb', 1, 'EqPg2O2y68KDlUn7MQCYHtdxX4TK8eGtJE9v6hzXuEvBdkphz3w1ABuwCQvW4FTs', '192.168.27.212', '192.168.27.212', NULL, NULL, NULL, NULL, '2019-03-20 05:00:05', '2019-03-26 03:59:05', NULL);
INSERT INTO `usersOld` VALUES (87, 's1505550', NULL, NULL, 'Ahmad', 'Abdurrahman', 'raihan.ara@student.upi.edu', NULL, '$2y$10$2xbq0ZebM/qR0oqqiXEwseD44eTmQWcWlygdQlYd4Ng5PBtAoVY4W', '3h7cvWeW4fycmV771sSg8lyUS1lPMDa95qkjfKJs3L6V4xoxgx6cyTnWotJV', 1, '4UgC3gzZHiKkXLXGcRnb6XP26vnmqiWJX1yeZfzyptxt49Ao3JeSEmaAUvmaQ8X2', '192.168.27.242', '192.168.27.242', NULL, NULL, NULL, NULL, '2019-03-20 07:58:47', '2019-03-24 00:07:04', NULL);
INSERT INTO `usersOld` VALUES (88, 's1506850', NULL, NULL, 'Dinda', 'Fatirahmah', 'dindafatirahmah@student.upi.edu', NULL, '$2y$10$WWKNrpJIwxBeJ7Z33Aj2AuvooGnDMNjHEBLRdafla98qNA2DTlKW.', 'TtIqIgr7DpRiqvNZuuTlnte0Yxq7Hx1Tce2VmrGAjedGrpKye2ZDpP2PP1qu', 1, 'o10jq4O4QdettfSIQV6YFZWpr1QR646eB1VtBySti1ieTkitrKSlYAIVNBmvvgRU', '192.168.202.43', '192.168.202.43', NULL, NULL, NULL, NULL, '2019-03-20 22:09:42', '2019-03-27 21:38:25', NULL);
INSERT INTO `usersOld` VALUES (89, 's1506006', NULL, NULL, 'Fahmi', 'Chaerul Fadillah', 'fahmichaerulfadillah@student.upi.edu', NULL, '$2y$10$RXbwST8JFv31y6JGIkg0wO7JGsIKa.i8MLyUPC6Zv6DQcG2WZ3Yae', 'Gp30QWN1aKS40gCQaWy21xXS6uXwGxPGupNF7sEP60t0Qd3oCu8UeOHfq29P', 1, 'Uapkv5sxAMVUsKXtS7XZujStafviaeUo6M2tJjb7hAY4m8rCR3i7KRXwGt3gNq0H', '192.168.202.43', '192.168.202.43', NULL, NULL, NULL, NULL, '2019-03-20 22:22:51', '2019-03-31 09:30:47', NULL);
INSERT INTO `usersOld` VALUES (90, 's1504381', NULL, NULL, 'Muhammad', 'Fiqri Affan', 'fiqriaffan@student.upi.edu', NULL, '$2y$10$h.xFaub2JKDU0KjKR/G9n.edkVkqiSEp3cCvM2xw7wYxogdCdReTC', 'wq8mEbaxlwwI6ADxAS3MsvCTs0yCtimb5N0o4lDCYaCRxCHFRUiuXw1QmFOC', 1, 'Q1WHptDCFt6lYSS3oNy8YROO5v37Tli70mFgwcup2MMio1jloEMviDGj4mzxcPOt', '192.168.222.99', '192.168.222.99', NULL, NULL, NULL, NULL, '2019-03-20 22:27:10', '2019-03-26 03:56:10', NULL);
INSERT INTO `usersOld` VALUES (91, 's1501358', NULL, NULL, 'Ruly', 'Nuraliman', 'rulynuraliman@student.upi.edu', NULL, '$2y$10$ViG2L70n8fuFwaIoOazuMOJm6FPNalS//7cTBofyxA0HFg0jq2IQS', '7Ne716gXmWVOQe0EFh2qrSanvEbmggR7UK3M6nTCP4F2TO3Wx38Pt5IQ0jjm', 1, 'ZUfqXQyy954WYH0wyW3XkjKYfxBFr3RDYdR1Hbru1MkO6wKri5lmlXrpRzqayRH9', '192.168.222.99', '192.168.222.99', NULL, NULL, NULL, NULL, '2019-03-20 22:36:08', '2019-04-14 01:59:25', NULL);
INSERT INTO `usersOld` VALUES (92, 's1501933', NULL, NULL, 'Agung', 'Yuda Sulaksana', 'agungyuda@student.upi.edu', NULL, '$2y$10$zUYo79plFbjHXyaAjR4w.eajhI5NBQph92X0UImWEb.hZUs9rnGkq', 'kHRe7Usbmm2TFcV4x3VkEPGxPSzIFKfZsivOqTF4pAsNZehhHw5YfoLg367b', 1, 'KVyw0mrPfiOQMeVDvhU1lHgJ04OGp0fq67nonwCUI3ZmLt9lHamaIOQ4U6VVszYx', '192.168.222.99', '192.168.222.99', NULL, NULL, NULL, NULL, '2019-03-20 22:54:48', '2019-05-06 23:06:34', NULL);
INSERT INTO `usersOld` VALUES (93, 's1501224', '1501224', NULL, 'Farid', 'Miftah Fauzi', 'faridmfauzi@student.upi.edu', NULL, '$2y$10$Knx9OKJGG17LQMS/oLUr3.plosp9EaLHvXfDhZnwYpkGGuO2skOFe', 'PD3tRcu6wwkf9Jzv9iy49IDC3puO9rm5XuF5Gg0K00345bDY6pLRfOd5dJwv', 1, '7gfMdT8eQmFSbgAMoiINsMECxCxM2VMNsOelID2p9xrp0ouoaRRgSBdFTsG2r0iu', '192.168.202.36', '192.168.202.36', NULL, NULL, NULL, NULL, '2019-03-22 01:45:40', '2020-07-13 19:32:41', NULL);
INSERT INTO `usersOld` VALUES (96, 's1203604', NULL, NULL, 'Olsa', 'Givana', 'olsa.givana@student.upi.edu', NULL, '$2y$10$LZe9Jin/1uEgXleoqQGrzebm4hPcg6z3vj91THJHnA3l/2S/eBcVS', '8MqcIQqT1ovCKYXX7LYKaHExkPl4A9GTF2SxFtd5K1LMpNz6c6Mv7snOI44L', 1, '42zzvTDcokBvHHZUHwUGAp8kNdd7y5NLP763Lh6KYdksWGJSvAc3wHHamTJ3vMft', '192.168.202.49', '192.168.202.49', NULL, NULL, NULL, NULL, '2019-03-23 01:04:03', '2019-08-25 05:55:22', NULL);
INSERT INTO `usersOld` VALUES (97, 's1500496', NULL, NULL, 'Trya Ratna', 'Utami', 'tryaratnautami@student.upi.edu', NULL, '$2y$10$STnPnWwMZQhshCF75YCWouY.nn3wSn82Df.bsd48gJLhaKc9RBWe.', NULL, 1, 'm4NgiDU8tTz6yRlHuc0eYUXlkhDLu1Nd4Mz6LQBwmCTEnn5YUzJikF6PAZhFLyyE', '192.168.27.247', NULL, NULL, NULL, '140.213.44.70', NULL, '2019-03-23 02:36:11', '2019-03-24 20:53:19', NULL);
INSERT INTO `usersOld` VALUES (98, 's1206255', NULL, NULL, 'Okky', 'Okta S', 'okky.okta@student.upi.edu', NULL, '$2y$10$1yrRC1QsgGNdt5zGKWS7X.sqXgcLCrarjRwToif49aBCWNx6mC73q', 'ZnFeLgRlyjE8IASSgQxuC3QZScb8cKMfWxKq4t4gLdAockzM50iCN1nZSPoN', 1, 'ES0hkMQxXaBX74Kjws8DOJglZC0UJSkHC1Id4bubezAhKmezsoDwQqx99yk2xoW1', '192.168.27.226', '192.168.27.226', NULL, NULL, NULL, NULL, '2019-03-23 23:27:09', '2019-03-24 05:00:08', NULL);
INSERT INTO `usersOld` VALUES (99, 's1203169', NULL, NULL, 'Zaenal', 'Mutaqin', 'z.mutaqin@student.upi.edu', NULL, '$2y$10$fkFD4GUJ7jfSdWzobu2Q9ORQJGrpaIpnUkSVQhobcDmr/sjGBNyAq', 'NTXeJbj1Cqssicg6CGd6XlWH5wRjAp6J49VV9pTjnpwQyonf9fdXfsYOfVsH', 1, '1er38MTMaaw9k23sGrwIdNUDOJhMcAQgKci7Qr5z8orux68dmFDLFgGqzLAcNBa2', '192.168.99.242', '192.168.99.242', NULL, NULL, NULL, NULL, '2019-03-24 03:08:10', '2019-03-24 04:22:48', NULL);
INSERT INTO `usersOld` VALUES (101, 'JKR', '131471355', NULL, 'Jaja', 'Kustija', 'jaja.kustija@upi.edu', NULL, '$2y$10$wl6.rsDg8P..3Yt5/neR.uoCO5TuTFITtYF1o5v0R6hZsC7drmpHO', 'gKnZ1tflLwMU5ns9MQmjSYZffeVeTFZnVpfRamaNAoZgQxHX2JvLyZ6wXDfC', 1, 'OLRkdoMwaYdfwHU96JcrrnvTN3hc8RKQEL3yNR7nQtAtNAB1nGFd8vnZg9d49FXC', NULL, NULL, NULL, '112.215.253.14', NULL, NULL, '2019-03-25 20:28:34', '2020-07-14 01:31:05', NULL);
INSERT INTO `usersOld` VALUES (102, 's1503561', NULL, NULL, 'Renaldi', 'Pratama', 'pratamar@student.upi.edu', NULL, '$2y$10$20lIShXh0DhFhXDESWzfj.iXUuot91tkyCEzTtmnUf83YNjbdgWJO', 'HsUivtz338kqWC26UBYvSzw8xBQ9MRMsniEGi45h9H2jwukiPS7vfma4WwJE', 1, 'PNhSHo0q93QBU9TUkY0quZ1cmCGgU5Dpr7FjmyvTfok42wqMOUROADNg3cfiPwPj', '192.168.27.243', '192.168.27.243', NULL, NULL, NULL, NULL, '2019-03-26 00:00:16', '2019-07-30 14:24:54', NULL);
INSERT INTO `usersOld` VALUES (103, 's1205950', NULL, NULL, 'abdur rahman', 'arraafi', 'abdur.rahman@student.upi.edu', NULL, '$2y$10$4GMZ5STEs73gCbFh6DEyMO/fClvgT/gqK/4rgsCi/Ay.NO22.7rQy', 'JdZgwvIG7xh5sW9kH9w75UprIgfa0e1Qge5FtKdVDUjlYzrrrIuBNa2c1qhU', 1, 'R8t980fSzEbvXirBAb9rPJIeUlzz0Ke19qLMA55rXSUjlG3CAuNMZx8vX5XWBNAb', '192.168.27.226', '192.168.27.226', NULL, NULL, NULL, NULL, '2019-03-26 00:19:00', '2019-04-07 06:15:51', NULL);
INSERT INTO `usersOld` VALUES (104, 's1403769', NULL, NULL, 'Fachrizal', 'Alfa Zamroni', 'fachlfaroni96@student.upi.edu', NULL, '$2y$10$ZIKHaUEb8GIEQzvMGikJtu7580DI6LzO2br/UNInUVYtrE0wi8Gj2', 'sUNsPpvx4pidLvpLtxN0hmYWcAuSJ84DqWTMu23UURHJDE3l6SL69iZlNchM', 1, 'OYMbZNBgdbIiYrNcocUxxEAQMfm8i1jrlEEkGbOMEUZkkC8dQ7c1sznhSOuLaqol', '192.168.27.211', '192.168.27.211', NULL, NULL, NULL, NULL, '2019-03-26 04:28:15', '2019-04-06 02:02:03', NULL);
INSERT INTO `usersOld` VALUES (105, 's1301883', NULL, NULL, 'Febrian Aditya', 'Ramadhan', 'febrian.aditya@student.upi.edu', NULL, '$2y$10$P4LiIooHq.dsMJ107PVSju0xwZu2f48CdFa2T.hUyUZoYRmxf6QGC', 'jQYdAe6ZNV0O9nJNx70QBQnrFmsW6riXZYhkZdHdIrZahPQUdzmgs0hRCElw', 1, '0XxO0Q3yGTpp2vdhMAvCFYBEb9rmitpDXuskiI6wChF8YuD8yCaMxedQgK8wGKTw', '10.10.54.38', '10.10.54.38', NULL, NULL, NULL, NULL, '2019-03-29 13:54:04', '2019-04-04 08:38:26', NULL);
INSERT INTO `usersOld` VALUES (106, 'AHS', '197208262005011001', NULL, 'Agus', 'Heri Setya Budi', 'agusheri@upi.edu', NULL, '$2y$10$NIHo3Mk.BK4WnWITlIv2h.5iScOcdO6zROfNThuVwGKw7bBDizfe6', '4HFPc0DwQuY4Lzs9nibZx9swSqV1T6E1x2tIAR9IjiRM4RdcUbbli7Gjw86H', 1, 'nLZx4HpnhUF2CPPjHLO7iIfpaNIa8FtedGbb5q2C5PLO4wav49XtCJ5EPYSwrWIX', NULL, NULL, NULL, '103.23.244.254', NULL, NULL, '2019-03-29 22:56:01', '2020-07-10 11:21:01', NULL);
INSERT INTO `usersOld` VALUES (107, 's1503467', NULL, NULL, 'Muhammad', 'Husni', 'husnimuttaqin@student.upi.edu', NULL, '$2y$10$52UF5JPXaQgv58IN1j6Fn.0jz1x.t1S.2vIKcltBt9dajQt0.IJFS', 'Bx7uzStk1GRT9gnG445SHIdfqYw8PbwblE4uVRKYrpl7JByuBx8jsLqJtBDO', 1, 'cnDF45JAjNQHjxObAkiDcSVF8vXMTiVv0N0fZ2f1Zji1HAs186eTDTXPg6oLaNvU', '192.168.27.243', '192.168.27.243', NULL, NULL, NULL, NULL, '2019-03-30 01:38:29', '2019-04-08 22:23:33', NULL);
INSERT INTO `usersOld` VALUES (108, 's1506338', NULL, NULL, 'Muhamad Luthfi', 'Amrullah', 'muhamadluthfi@student.upi.edu', NULL, '$2y$10$AX6C4icj0i/h5Qq3BhjDoOieXd9zdJfZ3ENhBO9PFGTyj9Dy5T4XO', 'V8peVIp9BOvk5wBk1z2yMgLUELcjZ9CYnuLMRiAZwNrPjICH3k7lgr7RV0DN', 1, 'iacN4PrziSwBnEIR7njny0wxE4HCIqivsfLaRxaDutPHYlZagGS3sIo79PvheVVx', '192.168.27.226', '192.168.27.226', NULL, NULL, NULL, NULL, '2019-03-30 01:43:42', '2019-07-03 10:11:23', NULL);
INSERT INTO `usersOld` VALUES (109, 's1506342', NULL, NULL, 'Rini', 'Lestriani', 'rinilestriani@student.upi.edu', NULL, '$2y$10$HclnVG0KeXxrBDLuo/zbC.DrlBfwBn.nNPvQMBOdrLcsYPDz8O/9C', 'HEnW6rhfM59Pqy6OWThqpFSw6ktNeryt5ldYQo0XFjEzT1enymzeAiWUk0ZJ', 1, 'xSlBHEmXXbuArEXQZzh48j1nPk3NMxKdBo2squFWwPnO9BRplTXk5EEJGfSVpwhQ', '192.168.27.242', '192.168.27.247', NULL, NULL, NULL, NULL, '2019-03-30 21:32:06', '2019-06-02 00:18:27', NULL);
INSERT INTO `usersOld` VALUES (110, 's1500051', NULL, NULL, 'Silma', 'Kamilah', 'silmakamilah@student.upi.edu', NULL, '$2y$10$ecHXqnpKCD1pLndYLbRgROgN.kuy7SZkeEkN0iCg4v.0a8Y9.GUVq', '9C9sfrHNkXcTMGh0f7hC8rEhGIkhj58m7V1skEfRuIQR41A1zic2SB7BFKye', 1, 'QKbHPUlz8oEKJl0Zv4CvVFtXBbiPky3yRWV631kjsmzJABh7IDEY0dRROI1fSlGd', '192.168.27.247', '192.168.27.247', NULL, NULL, NULL, NULL, '2019-03-30 21:32:22', '2019-06-02 21:38:06', NULL);
INSERT INTO `usersOld` VALUES (111, 's1206035', NULL, NULL, 'syahroni', 'anwar', 'syahroni12@student.upi.edu', NULL, '$2y$10$qhQWW9zpdnwubB5IECGYbeBCcg3zj6OMv5JUPXecn98cm4WSnDILi', 'BnbIaqD8QvqTLOO6TFJOZrDdOnTg3sP7dEFfmxh1adOQC5BeKmgS2TN81P9W', 1, 'j58MvP87D3p6zIhrNdOeQHwWvZAXooTc8omJabgQMOiJQqwnFcHH4QOSy4BSAl3b', '140.213.4.48', NULL, NULL, NULL, '36.71.238.237', NULL, '2019-03-31 21:58:41', '2019-04-06 03:43:59', NULL);
INSERT INTO `usersOld` VALUES (112, 's1505307', NULL, NULL, 'Wahyu', 'Alfarobbi', 'walfarobbi@student.upi.edu', NULL, '$2y$10$kuRxY4iZ.IQ7vTs7TSOFjuKZcb7Ou5ZORQJE8jqULuvOymsxHbN1q', 'FI7kr6WAN2mjcxNj4BNG0dwKY5gvfYzeKh2vxfA9gK61czsOJ3FBtK8FW7pr', 1, 'r5Zgtn4lOri1CRcYBjIclPGAgXreX0zWCScafpGMKzHGJEU1Qimyz8pKalCdnHww', '36.71.235.148', NULL, NULL, NULL, '36.71.238.237', NULL, '2019-04-01 00:42:41', '2019-04-14 00:50:01', NULL);
INSERT INTO `usersOld` VALUES (113, 's1200727', NULL, NULL, 'Moh Hafiezh', 'Annur', 'moh.hafiezh@student.upi.edu', NULL, '$2y$10$3O7RMYgoK/2E1Bbzbn2EquTE8lQO9ht7DMOhso977YVHkphh57szi', 'VuSl2RDu4tzQfz0Q1FKwNkcR0fzTALE1sXKtLXb0rBOJVIPczT5tr3hNyqlg', 1, 'cckexQWMJXtZQfncTCAvuhSGrUgEh6fjD9CJDe6kZQiHTzBlKYOBysaZlsEzz1P9', '103.23.244.254', '103.23.244.254', NULL, NULL, '116.206.15.45', NULL, '2019-04-06 03:03:20', '2019-08-13 19:58:53', NULL);
INSERT INTO `usersOld` VALUES (114, 's1204286', NULL, NULL, 'M Fachmi', 'Fachthurahman H', 'm.fachmi@student.upi.edu', NULL, '$2y$10$ruVYqWIIDsneY/z28qnDGe0wG8uh0x.1cxougC41byKRIVufI5A1a', 'eCurpsJBtZQlq5tPy1vquSZjacOAJwn7H5yyIAkQKHpAnllnDmYSTBAGaHDb', 1, 'VMHO7d70GAtcCSsgSZcgvOKdwPTsDHTVQUmNE1ZjfQD93gMkXohfZqj7OCENZGhi', '36.69.141.143', NULL, NULL, NULL, '103.23.244.254', NULL, '2019-04-07 01:55:43', '2019-04-07 03:38:43', NULL);
INSERT INTO `usersOld` VALUES (115, 's1501831', NULL, NULL, 'Muhammad isa', 'Rahmani', 'muhammadisarahmani@student.upi.edu', NULL, '$2y$10$jIuKM937dnL4JtE1VDhvT.aA.8A0tP2Ikw/YzbIR2aSKyhXDP8P0e', 'sT3DvHyf3jifgXZsiJJz2WsZff0xvnwyRNiCMe7yPJ6Hqy7KPyvauIE8oZFL', 1, 'Q2lmZSCih4vmHArpXwbizXnIWsYQJAxKArCBzVbc7uzHElOAJNFKm2lBHhK2uzZQ', '192.168.27.226', '192.168.27.226', NULL, NULL, NULL, NULL, '2019-04-08 23:45:41', '2019-04-29 21:30:31', NULL);
INSERT INTO `usersOld` VALUES (119, 's1204019', NULL, NULL, 'Risyad Basyir', 'Ibrahim', 'risyad.basyir@student.upi.edu', NULL, '$2y$10$dLvcvc1t8FTBQd4ZlijcJOcnmEXYI8m6BlYUH5ihjxjwgKGPS5OaG', '4ndwGJj80R9gODVX7yjenl4li1ju4CsQj6QVm30oqtXJPsHppC2eKfypiTY1', 1, 'ILMK06iUmPPKRXF2DMDY3BaFi9APKoG0ZDYrAsmw17rq8HXShDrpPcm5uODwh8Mf', '114.124.140.43', '180.253.249.175', NULL, NULL, NULL, NULL, '2019-04-11 08:41:43', '2019-04-14 03:56:03', NULL);
INSERT INTO `usersOld` VALUES (120, 's1304927', NULL, NULL, 'Adhitya', 'Sufarinto', 'adhitya.sufarinto@student.upi.edu', NULL, '$2y$10$H4cTq9qrVsT9DmnXwLPpv.yOvO2YbuDQlRQKNjXeKWGpjUNTg81jq', 'OWiLYcKlNokjDvYEwIGDgxZFoDZ7RQRV1wY9ms01xaixur0rwEAZnRMQY5tl', 1, 'wNXNE76cUQeJlV8lhW3h9Xf4e5JJH2zU6FnamfmFduw1O2PFeAvmXJruKyFLzoy6', '192.168.27.212', '192.168.27.212', NULL, NULL, NULL, NULL, '2019-04-12 23:30:59', '2019-07-03 03:58:09', NULL);
INSERT INTO `usersOld` VALUES (121, 'MKH', '130809446', NULL, 'mukhidin', 'mukhidin', 'mukhidin@upi.edu', NULL, '$2y$10$UF1owc.KKWWvHs.dh9he2ejvwGB/ABA3MKyxnYhYPRk3p4ofhnTpG', 'wAXXZZM1OszNIVl0nTywPr0TSRpVecJWDHaWYzWejSUcAzYDXNjpQrlqu2zi', 1, 'etz4c0FOdh0G1Dmzu0bC9KHhxJvh8rMDEb8gq3Y8hnIjrBFyVK3mgJGrgCW3G95Y', '36.71.234.248', '36.71.234.248', NULL, NULL, '140.213.24.147', NULL, '2019-04-13 08:39:39', '2020-07-02 04:28:18', NULL);
INSERT INTO `usersOld` VALUES (122, 's1400047', NULL, NULL, 'Irfan', 'Nuroni', 'irfan.nuroni@student.upi.edu', NULL, '$2y$10$zuqXQqxCQwMQCWvXbyw8jeduWZprthnwHFvyyQeJwaJv4RUwMfmw2', 'BJOS8wnEGGqOPw2cxyTja2GFt1s6oi6gif3I9dPVBewBCg3vYJz4k3oOtSfA', 1, 'XAug3Eh3SipBvavBS8bAy9xiHtQaUJp5zLF0l6iQQTxSg2Eo1EG3rJPaArLIIR9Q', '192.168.202.92', '192.168.202.92', NULL, NULL, NULL, NULL, '2019-04-14 01:48:06', '2019-08-25 06:02:46', NULL);
INSERT INTO `usersOld` VALUES (123, 'BCH', '195512041981031002', NULL, 'Bachtiar', 'Hasan', 'bachtiarhasan@upi.edu', NULL, '$2y$10$SCP.GnHs5KotOZBVmWD4pew95usNgJ5vNZagpZQbL876vFALhiXgi', 'v1r3OWo7tnY3CfDGpLD4W5AzKaG6jecAAkLbxczP5Nnevof1rdBADQLX9eYh', 1, '8EgNG795daSHhImIlX4aUEkl6PA3G5Vj47zX7DFrwKWrsJBmGWuasUghGTdgtiu6', NULL, NULL, NULL, '112.215.208.70', NULL, NULL, '2019-04-15 01:55:08', '2020-07-19 15:55:33', NULL);
INSERT INTO `usersOld` VALUES (124, 's1400275', NULL, NULL, 'chindy', 'berliannanda', 'chindyberlian@student.upi.edu', NULL, '$2y$10$bdl0Qpn1.qAPTsI4YbdplO/3YFw8pXliWD77/4t1DgBlb3RavalkG', 'woEfNyhvGHLjzplKPBAkTh2Zzche3mifGRvs7bfturtcnbU8FHXFAZkbMWDf', 1, 'F51gDUAhyC1oBUeRaIImkiAde9kgMVlxJIRj1FtZjM0lOlGIMNqgwKyQjSTVKe7p', '192.168.26.5', '192.168.26.5', NULL, NULL, NULL, NULL, '2019-04-16 03:13:23', '2019-04-16 04:23:35', NULL);
INSERT INTO `usersOld` VALUES (125, 's1203616', NULL, NULL, 'Asro', 'Laila', 'asro.laila@student.upi.edu', NULL, '$2y$10$GuT9JsLFvdZ6KKEeHIbq2u8PI2whkHOFA.zS9vY0qJs61tMRYKqwi', 'EGUiRdIA9lS012KKRtnP35D0oJIZ6eFGD665BhWWKJ23JkBElPcqqDkrUR5T', 1, 'laDlWxUAcdXorPdgxPYnb6TLLmGQfnt7nE5nfToTWner4S6gCv4piV6WOREOHJAm', '103.23.244.254', '103.23.244.254', NULL, NULL, NULL, NULL, '2019-04-16 10:57:50', '2019-05-25 03:14:59', NULL);
INSERT INTO `usersOld` VALUES (126, 's1506917', NULL, NULL, 'Dadan', 'Darmawan', 'dadandarmawan@student.upi.edu', NULL, '$2y$10$TKlSVLboyKX.Oy58yO5ffe3RxWz91NGRqplWOFqcBqtQEQQa8f0F6', 'RglD89pQcrn6PBndq6DJkeaXMIysYON0Lpso8DQdZZfHU57pltoWqaAdYDlH', 1, 'TODsAwXNC7At26f7yN3QqjmCRJpjYcw9omzyVhIixl3prpiazvW2bfmzRkcyEEO2', '192.168.27.242', '192.168.27.242', NULL, NULL, NULL, NULL, '2019-04-20 00:42:42', '2019-06-21 22:40:44', NULL);
INSERT INTO `usersOld` VALUES (127, 's1501317', NULL, NULL, 'Inggrid', 'Fadilah', 'inggridfadilah@student.upi.edu', NULL, '$2y$10$AtXKrB.THLtDHUVNADVaSugb7aVD/dotBVmdq8XHRMuVz8bhQYr3O', 'AUNQZIWVYlqTEQeFMMsjq11oFzLtm7PzGiB2XKD71gWXUyIxJkrQIDGTv2k2', 1, 'dLxGSpVviEHJgbcuyMbvkuoIBsz3gRuwPdh4fMuKw4M0Y69GPsKQ7iyjSEwtn8Xi', '192.168.27.242', '192.168.27.247', NULL, NULL, NULL, NULL, '2019-04-20 00:44:51', '2019-06-22 00:43:26', NULL);
INSERT INTO `usersOld` VALUES (128, 's1200728', NULL, NULL, 'asep', 'syahbudi', 'asep.syahbudi@student.upi.edu', NULL, '$2y$10$/LPmzEOy5MoajrpBgVA3UuJEBxFLVNJPyZTKT6ezZ.0cqPXHg2KV.', 't64ELIcrcuDF7BZvr4ZuY2ws3hVZ4SFPkiPFqhCKsaloSbnvbP2wibmgrwmU', 1, 'XIdsIO4nKuaCkEuS8uLkdRegaSrLrTix132CRT8doFbOM6wM2RyWKiqM8UYTyX4y', '103.84.145.95', '116.206.15.8', NULL, NULL, NULL, NULL, '2019-04-27 08:35:32', '2019-04-28 23:31:47', NULL);
INSERT INTO `usersOld` VALUES (129, 's1301473', NULL, NULL, 'Firsya', 'Habibi', 'firsya.habibi95@student.upi.edu', NULL, '$2y$10$sOKM4gmgGmxd4Kuir4szIOjkbhv8jscdBVpGZzoP1ic5XZJuQ.P8m', 'PpU7HqqBjCtBiKBUMerZnH2QU9ggo0GH0VK9vwkX2dkqyQJl0mnA9WuBcaXq', 1, 'H0gu9zlTahsyBpeDPTm2ZOszfmBo3rRPksSMwHRk65mkXGJFD67z8Ea4ztRaJWWd', '125.161.83.214', '125.161.83.214', NULL, NULL, NULL, NULL, '2019-04-28 01:29:06', '2019-04-30 05:26:47', NULL);
INSERT INTO `usersOld` VALUES (131, 's1304095', NULL, NULL, 'M. Asep', 'Kurnia', 'm.asep.kurnia@student.upi.edu', NULL, '$2y$10$jXAtv/PxzrUPPJQtZ/toZ.pU6j.egB./j1seEJwLLJwZ8ixxIYYx2', 'mDI4yOcnjXQgN46wUUfIGSS9i706MtAAUo5A5Ynrlp87blBQefOSyI1UeT5z', 1, 'fkbSWZXI11rx32mA0ipteb0gNeXcEDzRqafPFIxfuZHiKcP2bZuqZoAaJGTJAe8r', '120.188.5.30', '64.233.173.23', NULL, NULL, NULL, NULL, '2019-04-28 10:26:59', '2019-05-08 16:14:24', NULL);
INSERT INTO `usersOld` VALUES (132, 's1506923', NULL, NULL, 'cici', 'puspita dewi', 'hendrayanipuspita@student.upi.edu', NULL, '$2y$10$bhfRaXeQu97SC47lBCw55eh9unBDhAWlvfF0vfCBAXDALy/MJwhmu', 'sI6G4p5WobDuIxOXNgnLhIkF684dCQi6tnL4a6Eexy7vddobxbN6DaQl7psw', 1, 'oWdW7tiD2pGermO6j9WPbnz6yrL1jxABgWwszcMjKsuyOSr22lZatLtEVztQx1Fl', '192.168.27.226', '192.168.27.226', NULL, NULL, NULL, NULL, '2019-04-28 21:38:28', '2019-05-22 01:51:04', NULL);
INSERT INTO `usersOld` VALUES (133, 's1501809', NULL, NULL, 'Andre', 'Yosnavy', 'andrenavy@student.upi.edu', NULL, '$2y$10$jqlwWJQsH8iS4ie2ras.xuPh4lfNLaiLt8.HAOKM8kF/Tauipp6te', 'QyOlfqLCNLpIzS8887CgFfUwVKbwmYeY0FOl4RWLJ2Rc7nx55Z3maRFlsig9', 1, 'nBEnq7O63GRMqnLVsOdVXfmMXjz9meNK2XQXS2MrOW3RXvgz8tUtDxIXEZCtDAnG', '192.168.27.226', '192.168.27.226', NULL, NULL, NULL, NULL, '2019-04-28 22:17:36', '2019-07-01 08:31:00', NULL);
INSERT INTO `usersOld` VALUES (134, 's1504674', NULL, NULL, 'Haaniyah', 'Yarnida', 'haaniyahy@student.upi.edu', NULL, '$2y$10$jAeKoDv5DDD8lz5Hyi2JSu0xPRl1cKnXvRAHuCdpzx4j4.w.fLXI6', 'O7aex9CR4U4LzCM2DT2gun2YP2oiNxHinPHBPStQhMS9l8cDzm1ZBXFolKEw', 1, 'bfXCyeMP00GDzqCVgXbX85GFrQ4XTw7ydLGnKxAZMnZkbXPiZv7UY3mOE9qL4g90', '192.168.27.226', '192.168.27.226', NULL, NULL, NULL, NULL, '2019-04-28 22:29:54', '2019-06-30 13:51:04', NULL);
INSERT INTO `usersOld` VALUES (135, 's1502030', NULL, NULL, 'Sony', 'Hermawan', 'sonyherma.upi.edu@student.upi.edu', NULL, '$2y$10$IPlGyoF49Vfc.pZ3vwL0le0wlQpxqkbQ1IhMuMIfJEk3HnVGoayse', 'FGstf9PyLAGZsqQr7lL0PI33gth3ippfk8j5GbwAY9OFEEph3NbXRWuA00md', 1, 'y6PgVjsl1n8n5xEK3eUU7G911mdcLgxAaoTcA0hvvKFK2VogAl3Z8DqrS6N5xY37', '192.168.27.226', '192.168.27.226', NULL, NULL, NULL, NULL, '2019-04-28 22:42:32', '2019-07-03 06:21:11', NULL);
INSERT INTO `usersOld` VALUES (136, 's150568', NULL, NULL, 'Uni', 'Parwati', 'uniparwati@student.upi.edu', NULL, '$2y$10$xGB67UAPAsoFmYp0gL90OekXEb1Pk7hkVTqX1/QrUZXO34vGgGzBm', 'dd6ENmOL67QesqhDeFy47F1Gy36EE2r3joVk1qjg9KfECcAwi3XZlXXDSnaG', 1, 'tC5nTrl4jOAqmOg4gobQ1hAywJU4WU6tP8eOfhWz1RXoPAVewdT3Krj4489qhNoc', '192.168.27.212', '192.168.27.226', NULL, NULL, NULL, NULL, '2019-04-28 23:24:32', '2019-07-03 05:39:00', NULL);
INSERT INTO `usersOld` VALUES (137, 's1304081', NULL, NULL, 'Nur Fajar', 'Sarwati Edi', 'nur.fajar.sarwati@student.upi.edu', NULL, '$2y$10$MiZBCnd1sK9Plpv1PitNeeZbIiO0ejKCS5v6LxBC6kx7sgjZ19eQK', 'tNLhDoUwNAaFOnvN4oaUuukpuxvmqh65cZo94GavlXvfYPJDxbmPCfiywz8o', 1, 'WceY7t6Mh4GJ7V9RINdmtfwWHIbjiRA8rULM9FY3EOOWpAUYlIyK4cLxNanogJpC', '116.206.14.37', NULL, NULL, NULL, '192.168.27.243', NULL, '2019-04-30 05:33:57', '2019-06-22 01:36:04', NULL);
INSERT INTO `usersOld` VALUES (138, 's1504210', NULL, NULL, 'Aditya Taufanbayu', 'Nugraha', 'adityataufann@student.upi.edu', NULL, '$2y$10$xuAP0q9l2mOtep2dXhathOdIt3bvmK5EjaiC83K7M6SHWM1q./53W', 'L9zXzv2ZUsxRXQ7B5FBDKYyVVhgeQg1ZXP7NLdw0llEbItRpQr84XJn10tiN', 1, 'POkJYO9Cc4WzfCxJrkwy3rTutzDJNFs0IAo8DWoE5gGxEZMGCYeZrQ1q8MSwtNS0', '192.168.27.243', '192.168.27.243', NULL, NULL, NULL, NULL, '2019-04-30 23:41:46', '2019-06-21 22:50:33', NULL);
INSERT INTO `usersOld` VALUES (139, 's1504623', NULL, NULL, 'Cical Indra', 'Himawan', 'cicalindra@student.upi.edu', NULL, '$2y$10$B5n3kXAlRFnQXua.5X4C0.CypkJDH9y3JowgkARKZyeAy0nXfUsNW', 'AeSZiRiTZMj9E85e11S2oGkSpKGNZAMC7KvPRgUsFmTHipU14bhv7Fsoqpne', 1, 'NtMG4RqNX4M2S0pbap8TLp5bxd7tAVsKA2Ri63mvWo0pupszrMLJNDTOf4ADYW6P', '192.168.27.243', '192.168.27.243', NULL, NULL, NULL, NULL, '2019-05-01 00:12:50', '2019-07-03 00:46:28', NULL);
INSERT INTO `usersOld` VALUES (140, 's1301733', '1301733', NULL, 'Bagus', 'Baskara', 'bagus.baskara94@student.upi.edu', NULL, '$2y$10$WhE5AUTXAHI9K9hcsGBeZ.P9tGKh/7G71swjLnL6r3V9wmsvuumo2', NULL, 1, 'qsawDrKlERIB6cR6U9nU2200Wr4F06MWK5Lg0GmvWtYwi7yduneciN8MbxLIPMMn', '125.161.83.214', NULL, NULL, NULL, '192.168.27.243', NULL, '2019-05-01 02:47:24', '2020-07-03 03:51:00', NULL);
INSERT INTO `usersOld` VALUES (141, 's1505146', NULL, NULL, 'Hendra', 'Permana', 'hpermana@student.upi.edu', NULL, '$2y$10$GOUEaeg1IOZ7/zBKgH0wIe7mV6M/aFDDFWzVoy5NRmhTq7Ul0mYke', 'p0mVOIoB4VsM2dZHkWJbJmKjcHzokXINs7Q1m1aOKJG7d3H599AGqPTxbAlq', 1, '6kzFG77Zr05I0rKtuhEn6bMoIYs6PNNFOypoR8cmxaVnqYVeC9gq4XqWY6OuQ8Yp', '202.138.233.162', '192.168.27.226', NULL, NULL, NULL, NULL, '2019-05-07 01:17:22', '2019-06-29 07:52:39', NULL);
INSERT INTO `usersOld` VALUES (142, 's1500591', NULL, NULL, 'Shita', 'Herfiah', 'shitaherfiah@student.upi.edu', NULL, '$2y$10$bFtfYqFCQjw8wTUkWBTNw.t9.yOPTs3dtDk2ifDhMie1bx7J8uvc.', 'KzdfqbkpR2Tg95gZUIZEAIIUb8fiIvsXVU2s3rpPiFFnCca5LtBSBLIVxL9y', 1, 'a5tv6cziOe3B8ZQXw4qh1f7XVyujw3qqdFhBEzMnMyTV5Ssz7WS4R94zFgeF5d51', '192.168.27.194', '202.138.233.162', NULL, NULL, NULL, NULL, '2019-05-11 00:14:50', '2019-06-19 03:44:56', NULL);
INSERT INTO `usersOld` VALUES (144, 's1506780', NULL, NULL, 'Evan', 'Manurung', 'evanyosuapm@student.upi.edu', NULL, '$2y$10$m5r3y4pXejUzT5YATkvb9.6oZuZRVukDKSHV63iazvCQ8d.lTk.yW', NULL, 1, 'plmrnuQL3XeXfndh0J5pSQdGGrY43ZxmkYw1YcXmw0NLSCSEDAsLa2inmklLUOPe', '192.168.27.226', '192.168.27.226', NULL, NULL, NULL, NULL, '2019-05-12 03:04:37', '2019-08-05 09:29:47', NULL);
INSERT INTO `usersOld` VALUES (145, 's1504586', NULL, NULL, 'm. habibul', 'fallah', 'habibul.upi.edu@student.upi.edu', NULL, '$2y$10$zsOA.fP3SQ1tZ65o2rg/xOhptnGCHa.MCU1JdE.Lxhj1VcENyXBE6', 'QSOYol4LRSiYsWyQZPVplL4R0D6LM4zvjlTJRXjnTRwfQcuoNwVyVqGEXQjY', 1, 'CKFyO3oLUM4vZAmakclOvwNtOA1FRfMoNANasEh2oTy9PstOpuqSBDswOEggUykK', '192.168.27.226', '192.168.27.226', NULL, NULL, NULL, NULL, '2019-05-12 03:06:57', '2019-05-12 03:36:21', NULL);
INSERT INTO `usersOld` VALUES (146, 's1503967', NULL, NULL, 'Sri puji', 'Lestari', 'sripujilestari@student.upi.edu', NULL, '$2y$10$yIje1Ze44bnZtLIbdKn9cO9yCaPIzK7OF2LAYschmjmLs9vhuyas2', 'tkEivQibiGdb9dqcd8xIehDyPVTmeq8iSTgx94V1pBRLmtMXyK7xHKuWAsMq', 1, 'KKQu3wCpEoBJuIDNDgavC1OR6hbzkOr7vHZ36AMReUTtDHZjMF57P3QVf42N7gVN', '125.163.90.104', NULL, NULL, NULL, '192.168.26.8', NULL, '2019-05-13 09:55:27', '2019-07-03 03:47:07', NULL);
INSERT INTO `usersOld` VALUES (147, 's1506337', NULL, NULL, 'Muhamad Iqbal', 'Hambali', 'miqbalhambali@student.upi.edu', NULL, '$2y$10$aKc0cpyUQsZOm008ISN5ju9Z/lSJaZn8sOLLVSX9f/mEaSRztQbpq', 'jwHSil0CHnKGwRilMpjMtKxNqqPiBHnOWktG6q34p5yB5ZwM7F9kCqQWAen4', 1, 'qQMhit5dxscDbNOMUjA6mAjD1vMtryN7GxFXyAaoM3UAKxdCXcFk3CDez7EYzQYR', '192.168.27.226', NULL, NULL, NULL, '192.168.26.8', NULL, '2019-05-18 22:32:21', '2019-06-18 21:41:28', NULL);
INSERT INTO `usersOld` VALUES (148, 's1501403', NULL, NULL, 'chandra', 'maulidya', 'chandra.maulidya.01@student.upi.edu', NULL, '$2y$10$T2QBooui/FL1pKojvvQpiubOg43CRsZd4C6Y1r0q3ZNC8KEDhoGMW', 'YKFiuYfjxUmfW0Z6TvPFuU2AIMmajyfJKjWndWRLUlqPHp0BK9OdTWTiNIUU', 1, 'oZIyjiwUn5SsMkVVueCFP8eTDqzp7sAClhbUiXg4XnE5nZmeMnqrd6bxBZXWPax7', '192.168.27.247', '192.168.27.247', NULL, NULL, NULL, NULL, '2019-05-22 01:36:32', '2019-06-19 01:16:52', NULL);
INSERT INTO `usersOld` VALUES (149, 's1203972', NULL, NULL, 'Sigit', 'Nuryana', 'sigit.nuryana@student.upi.edu', NULL, '$2y$10$JA7utltyHxb7dKXUExxvXuvAvEG4r3BVI5KesJtDy82pdG0ug9k8u', 'xjG432JVNXYw5WI8xfQZMOIAn7Hlqg0I152u5cKo1TZPpXskgmTVdo4Evkxz', 1, 'v70oC04AddSZtsV7O5DRaWoWBt0KuDBUz67PvTjqK4hI7kJ9crg6WsNVwltLROW3', '192.168.202.83', '192.168.202.83', NULL, NULL, NULL, NULL, '2019-06-01 01:48:09', '2019-06-21 23:46:04', NULL);
INSERT INTO `usersOld` VALUES (150, 's1507140', NULL, NULL, 'Sri Rahayu', 'Ningsih', 'srirahayuningsih@student.upi.edu', NULL, '$2y$10$CnICkZ6KjLY.siG.zO3Ib.wpOZYNB4yrn/nOk41o0me7PePt.bPPa', '9agXDhPFV1ugkPMBZjPXqDh0GB6n6ds4pr7DsbTXYbGN0DCG4Mwqg20ZzLxH', 1, 'n5XHedqJpeXLbd7i2xHEKg2x20dfH7HrVwLXkSszkvTwldqiNNb1xsqgaXhUGef9', '192.168.27.242', '192.168.27.242', NULL, NULL, NULL, NULL, '2019-06-02 00:20:52', '2019-07-07 10:11:12', NULL);
INSERT INTO `usersOld` VALUES (151, 's1501987', '1501987', NULL, 'Nurul', 'Annisa Septiani', 'nurulas12@student.upi.edu', NULL, '$2y$10$wtvzNdGvSXDljI/5l60oseKol6xA23F/wDSrVdf5l13MgPQHUJnE2', '8PivxNlEoYSq4zfOGcO45soZTICYvyfbe5fuhK22wLxZiV1W12NZxsB3ItOY', 1, 'ajoR9n785c0NgqXtnXnkM8TWht8cDGUwhT74Q9nKbW7euGD1H7N6idbN50oESm3k', '192.168.27.242', '192.168.27.242', NULL, NULL, NULL, NULL, '2019-06-02 00:28:15', '2020-07-22 19:16:39', NULL);
INSERT INTO `usersOld` VALUES (152, 's1503449', NULL, NULL, 'Novia', 'Karostiani', 'noviakarostiani@student.upi.edu', NULL, '$2y$10$deRC1EvSeUf54CSQyEZZXefAzgTCkfyNwhlrKz2EK/U6G90LTFAmC', 'EtZyqWhXDRNAOTKu1D5DxsXwsbumObSe7PjGVn7MwRXLq6QQfpf2Jr7TVUAo', 1, 'Lgo4v5Qk8rJNAazREz1sFETLgUCe8nhSmQrIIzf9NavoWKd59MKNqTtLpotj0cOc', '192.168.27.247', '192.168.27.247', NULL, NULL, NULL, NULL, '2019-06-02 01:08:52', '2019-06-21 23:38:11', NULL);
INSERT INTO `usersOld` VALUES (153, 's1302080', NULL, NULL, 'Arif', 'Muhammad Shidiq', 'arif.muhammad.shidiq@student.upi.edu', NULL, '$2y$10$PiZPcGXu9bS7zlhxyqJvk.H02KzCyY65wYNRKHzCflAQ4Yc5dRqVy', 'pQhpsg2RoP2lMou2icoNZYl06cxwB9YMF0rkTgq4fSohRX68H2DI04NG5NzB', 1, 'aHtOwNiamuwkyBiP7RIMkVLkXAxeKWWXyK9w8ptZIFUDSutIzELENGMBy1TvyVUw', '192.168.27.211', '192.168.26.3', NULL, NULL, NULL, NULL, '2019-06-18 00:00:27', '2019-06-18 01:02:33', NULL);
INSERT INTO `usersOld` VALUES (154, 's1503764', NULL, NULL, 'Fikri', 'Arif Wicaksana', 'fikriarifw@student.upi.edu', NULL, '$2y$10$zyUHZ/HP7ssiROkZFkQQO.urlG05nciwUzjeeodnD1R1viN2hwRma', 'OkBK3ZqnVA3p4QrpQhHrbZMUBx0tfAsnzDUmi4pMOU9ztyz3KAGgoVTH0T7q', 1, 'syfORm8jDZTE0XJQ78kDUXMtrS9WIkRdfANuJvY0gHExt5teY3xA2h8XmR9MH03s', '192.168.27.212', '36.71.235.153', NULL, NULL, NULL, NULL, '2019-06-18 00:33:48', '2019-06-22 01:17:38', NULL);
INSERT INTO `usersOld` VALUES (155, 's1503975', NULL, NULL, 'Dina', 'Rusyda Khoirini', 'dinarusyda@student.upi.edu', NULL, '$2y$10$P6s6joQxK/HUgPEDAOX/VOlonVlYL6u7u6yWxIc4v7JHJiyY2Gmm.', 'URgcIqNZvEafVeffOIXNMBx5vBZ89rUGNZzuDVBPYqbuaYZklrzGfm89LJxj', 1, 'pg5xrSCpvbycGoVlqf007Uq8LITlvkhKS3UmYmYE4K8Dmi1mRBtwXUdvXaGxd8rY', '192.168.27.212', '192.168.27.212', NULL, NULL, NULL, NULL, '2019-06-18 21:40:23', '2019-06-23 02:07:28', NULL);
INSERT INTO `usersOld` VALUES (156, 's1204109', NULL, NULL, 'Rizan', 'Rahman', 'rizan.syaifur@student.upi.edu', NULL, '$2y$10$BThpU2HuChtNZK82ZvySHOgVtx60sf5xpvT2.mQ8Jcz5z55i4fSzy', 'V8EJuFElilZ69lqJxo0GJIIGQWegfKVxRcx9Mcmso6edIa1u9pyLK9LdUhux', 1, '0OQDaKeKUmkTUsjfFj13GjSGX8QoqjTuQT4v4B4spR65H9NZHLB9LHlTojAzd8Cw', '115.178.221.45', '115.178.221.45', NULL, NULL, NULL, NULL, '2019-06-19 04:19:29', '2019-06-22 02:06:08', NULL);
INSERT INTO `usersOld` VALUES (157, 's1204412', NULL, NULL, 'Ihsan', 'Ahmad Fadillah', 'ihsan.ahmad@student.upi.edu', NULL, '$2y$10$dZC05EzbbuKcI3Smj0LkseAQ1USIa2DgR53O1Qp1TnbB3b3k6eYVW', 'eOpkFVsIHpu4oVredaUfCLA2mcVVnQTmwCue0gW4qBVHsdSQeShPaAHHkIUs', 1, '8nPSt4gjm9dY5JBK6KT5xTc3oy26cYhFJCDOtHaagpfhi55lcTopjcvheWVbNg5M', '182.0.198.242', '64.233.173.138', NULL, NULL, NULL, NULL, '2019-06-19 04:24:26', '2019-08-06 05:33:27', NULL);
INSERT INTO `usersOld` VALUES (159, 's1204923', NULL, NULL, 'rendi', 'mochamad taofik', 'rendi.mochamad@student.upi.edu', NULL, '$2y$10$j4iMoyH2PydW.iJFYS528eYCkJhk4mTulgutg5TjFh9H2Aqj158qK', '03LuSGGyZNXBUScT9WJLJlkRtqgMfcaj0C6VVCTkFQBgHjgn1dGQIqSDpNlx', 1, 'f35DL2XLeJs3GhE92KKWEilPT8hsvpLJU9rf7wFed1gpH2Kb3oHfLuKc0TTtDRxb', '192.168.222.92', '192.168.222.92', NULL, NULL, NULL, NULL, '2019-06-21 23:34:58', '2019-06-25 00:25:37', NULL);
INSERT INTO `usersOld` VALUES (160, 's1506776', NULL, NULL, 'hilda', 'yfs', 'hildayfs@student.upi.edu', NULL, '$2y$10$sTjImm6XU0aZTmesAKyFt.ckQfHp648VA1oNhqi1TsSVr5.YLq/Ve', 'uUVgecfPiCfbxYd5womVdP6AhGZs9HMz1Hjgh1lK1vxvsz3JyVqkXwGcHBtO', 1, 'MazEKwDEHu8xrow4jQDMnG8QYZnDLn4zzzWSwiVj2m4Qae5cErtCOwGDFSmWKFuA', '192.168.27.246', '192.168.27.246', NULL, NULL, NULL, NULL, '2019-06-22 00:11:24', '2019-06-22 00:42:17', NULL);
INSERT INTO `usersOld` VALUES (161, 's1501072', NULL, NULL, 'Cindy', 'Dwi Lestari', 'Cindydlestari@student.upi.edu', NULL, '$2y$10$X9boxcnCMtwuyI7fn9WZa.14unh.GZyptPQTh0F.Et5aN5A.TEjOq', 'YgsOSMLxJpcnkzQ1ana5aY40DMzOpIvW63JuehNkkVdjf8MLtggqxzqWM7D3', 1, '4uxln7K3sjuGzcuMRAC8xgmsYSUdWRxNQ3E4474sdZNCE6YoH0mRaaUAP3i6i7Q2', '192.168.27.246', NULL, NULL, NULL, '192.168.26.6', NULL, '2019-06-22 00:22:16', '2019-08-25 05:58:44', NULL);
INSERT INTO `usersOld` VALUES (162, 's1506341', NULL, NULL, 'nur', 'syifa', 'nursyifa@student.upi.edu', NULL, '$2y$10$/GCNyByBn72gqrlQyD574eSeGlCK7d9.uD0dXpiIo5nu/dnNUZKeC', 'TKHkb2ky75yeAtjybMF9KSQwAsDo9MP9EKvcrw1rjs6lLqQu7sBwM8DZor80', 1, '71ngNn41NdHOnV2qG35di7myy2JKbgMxqVreBAWsehTlZoq4iluBcrmpLSMy8Jsw', '192.168.27.243', '192.168.27.243', NULL, NULL, NULL, NULL, '2019-06-22 00:27:57', '2019-06-22 02:56:33', NULL);
INSERT INTO `usersOld` VALUES (163, 's1606279', NULL, NULL, 'Dina', 'Medina', 'dinamedina@student.upi.edu', NULL, '$2y$10$tzByH31f0DzweNaRt8HZ0.6GYMZ4KgTwW6SFBz4w9kBF2/0x2ZEG2', '4bRrYJoWtRO99e0EXzwFc6NPhC3t932xQQm7bV6sLgXJhl0yozCk2FYxDpxR', 1, 'jsWpUW9U1OMr5rIAzy0hDMLO5skPsTBmgYrag289wEMwnUe8vWjsY8mHZLkAZuQH', '192.168.202.71', '192.168.27.211', NULL, NULL, NULL, NULL, '2019-06-22 03:03:17', '2019-06-22 03:16:25', NULL);
INSERT INTO `usersOld` VALUES (164, 's1300991', '1300991', NULL, 'nety', 'fitriani', 'nety.fitriani95@student.upi.edu', NULL, '$2y$10$fKMsQ..Z1YfowNSBqWQsvepMhKGHwudRzOy3vaqRT7wouqWF9fH4q', 'whYVW6iXXVYLfuvQjdTGqVg9eq34VABuiaPtpqwnUE7N5P3nKNIMnkXG47tq', 1, '6Vrd8oliy1eAZ29KPMhPF6miIRpYMyplgbhacswBKoybEQjtl3QMH3Depvzdg0SP', '10.10.54.98', '114.122.105.156', NULL, NULL, NULL, NULL, '2019-06-23 02:29:49', '2020-07-09 03:16:31', NULL);
INSERT INTO `usersOld` VALUES (165, 's1507133', NULL, NULL, 'Ruly Abdul', 'Rasyid', 'rulyrasyid@student.upi.edu', NULL, '$2y$10$TksVXy6b2V4KpTGxpeGKT.Jwq5mnnQp3VxzCxtcQnMtbFzlPVEXg.', 'QkdLAvI68IsINcOIbZOX199arTp6KLvffc9hsi9nY8LmBiIi8bXQBvzpM5rF', 1, '4LRzWDXWonlEAXljOVTSSEBbia5Sn7yZeCKZBQaj59jMDkPsUCQPTOktIREsOGJy', '192.168.25.23', '192.168.25.23', NULL, NULL, NULL, NULL, '2019-06-23 02:57:03', '2019-06-25 02:03:12', NULL);
INSERT INTO `usersOld` VALUES (166, 's1505889', NULL, NULL, 'rafie', 'ridwan arrasyid', 'rafie.ridwan29@student.upi.edu', NULL, '$2y$10$D2t4OSrYfk18mIqdF3oaK.nv6j8Dxiw0jd58ToW6v8yaQD9Gk/ESu', 'RaefT1OjWNiueX4l20BiuRHSzl36qazV02DLufp3ZfXr726ohTMsnPFONaGV', 1, 'wpY5YNAEPTjphgWis8hxG5bAIkzU3HaZlJP8U7eINBoHJRjUalKQWk6SRs00ZEbm', '192.168.27.244', '192.168.27.244', NULL, NULL, NULL, NULL, '2019-06-25 01:22:35', '2019-06-25 18:08:18', NULL);
INSERT INTO `usersOld` VALUES (175, 's9518093', NULL, NULL, 'syafshaf', 'syafshaf', 'syafshaf.channel@gmail.com', NULL, '$2y$10$z4lsdtb8g7I2Nl/lHHxS9el6pxwv5Gg1xDxK1Zc11KXYvKBf4n7UC', 'fJPErTTrqpurFs9JfoCHt07wogOdsmQRVbXqxGfLm8Xb5G6nrS120AaQ3fxa', 1, '7fTpstbXL9boqu9WWSx9jpPtGdYsNzAveaJcrjcSotPkBKYPs3omAKu357nzrbtu', '103.23.244.254', '103.23.244.254', NULL, NULL, '112.215.208.36', NULL, '2019-06-25 10:54:38', '2019-07-13 04:21:33', NULL);
INSERT INTO `usersOld` VALUES (177, 's1503874', NULL, NULL, 'aulyanisa', 'Novatiara', 'aulyanisa@student.upi.edu', NULL, '$2y$10$wbioK57iWNGcsPXVisob5.Y3.T5JMmSxlBiD9/0oR/1Rm/c3pAd36', 'lhGmfsHi2DtcwEQiYcw2rJEopaqc90KLJSQWaF8KwU8RJljLltV4T5p82OAX', 1, 'p3666dgPN0lplXNvRPhRSOwlbAcGkRAxK4pdYcRUowPUh3hRadMm8PeXr48JukfD', '36.79.250.190', '36.79.250.190', NULL, NULL, NULL, NULL, '2019-06-27 08:22:35', '2019-11-20 07:19:18', NULL);
INSERT INTO `usersOld` VALUES (178, 's1500121', NULL, NULL, 'Fandi Ahmad', 'Sugiantoro', 'fandia868@student.upi.edu', NULL, '$2y$10$P67suTX3pMBlCfvpbVtan.EmOlxwODjR2kfNkSxKZWb1j9ZScBO86', 'NBbupm965jzji3rZzLUxh60LrtBAxhsYyXnMicoPOjvEM22OVnsW0W25z6bL', 1, 'uVFlCFpcA6Wts0CkdIElU9UHnQVnF2hdOa3l2rGeiItkIQLrAjJ0cv6O4007Ywnq', '103.23.244.254', '103.23.244.254', NULL, NULL, NULL, NULL, '2019-06-29 04:06:28', '2019-06-29 16:04:50', NULL);
INSERT INTO `usersOld` VALUES (179, 's1500504', NULL, NULL, 'Riky', 'Hidayat', 'rikyhidayat21@student.upi.edu', NULL, '$2y$10$jbLJtD1h..aO6aR/BPfNl.2CWVUuuRPNIf1pwVZ9w3aOuSem7APOW', 'bb2weV1HlXcjpyeDhUn4FQAvMPUClKLVBMSzb8DMl9Q4WMQRgzUsepsYnSgz', 1, 'uSYkGWwWswGqIifx4r36jdjzF5aGYT3DC2lRUi9s7PIqmVqOi1QCFl9ULHpTsqvv', '103.23.244.254', '103.23.244.254', NULL, NULL, NULL, NULL, '2019-06-29 08:25:29', '2019-07-04 04:03:56', NULL);
INSERT INTO `usersOld` VALUES (180, 's1507138', NULL, NULL, 'Shinta', 'Yuliningtyas', 'shinta_wahyu@student.upi.edu', NULL, '$2y$10$fZKnWzO.eK55y/drf2xJXOrmbFdluSrR5PH4WZqlYGugdjsnFnTZK', 'qSJHotjcWxU03Cg6lJS7FvZ0dLN6xseJS6tsrS4bqNtTPltYPvIPleKNpJyg', 1, 't3D4a66PTI7lDoG3gTa9QfnJdSCEw4xZ6aYoqIn80PUXYzGUuohazMPW3rSnAja6', '116.206.14.5', '116.206.14.5', NULL, NULL, NULL, NULL, '2019-06-30 04:50:52', '2019-07-06 09:08:07', NULL);
INSERT INTO `usersOld` VALUES (181, 's1501656', NULL, NULL, 'Sri', 'Wardana', 'dana96@student.upi.edu', NULL, '$2y$10$UBjYYztysrMy420SBCJgqezgq/hKw9zECAOyCCf87lESSe.rtu9C.', 'KjNRAC4a8thAcehcmL9LuJvXdT1XQ6PEW0cdK627a1vvt0yRp6yqiRu7X6PY', 1, 'c3D9sfYfRp8wilzbhE3sk4MSl95uPDNXjBqx4s8Ennwkaa3WUD8ZHtltjvMnF5gs', '140.213.24.120', '140.213.24.120', NULL, NULL, NULL, NULL, '2019-06-30 09:54:58', '2019-07-04 07:51:34', NULL);
INSERT INTO `usersOld` VALUES (182, 's1507107', NULL, NULL, 'Dejan', 'Yusup Faishal', 'dejanyusup@student.upi.edu', NULL, '$2y$10$Bse0fK.Fx4kc5fCgSFf9kuZ5R4yLDJSio8j1J0Bx.jCNe/SuTACeW', '9l3Fxf1R6JvvusUz7thVrSAicCYyVgy7XdSo26gQorjVhP1ZsB7EaZoJvodg', 1, 'rtPWVgJrOV7XHbxwgnFoitHc7s2PsMp6Vwd073KLh6qNqWo954I3RPDD68zl3aBw', '114.124.173.67', '114.124.175.82', NULL, NULL, NULL, NULL, '2019-06-30 10:48:59', '2019-07-07 04:41:11', NULL);
INSERT INTO `usersOld` VALUES (184, 's1307189', '1307189', NULL, 'ismail', 'sholeh', 'ismail.sholeh@student.upi.edu', NULL, '$2y$10$aC9Gz5zyNH0CF7p6jDbCK.Ngc1bDEncQlLUMWnKX7rHl71Rmab5fu', 'XKXT2HFlPsG8eV0Q2GnCKfchYIQdFW3nYuMxOkqITfLeIILMXkKp8IdxwuOx', 1, 'fxfBasEv9XsgApXO8AMZde2XOU1N7Mm6rmfjyQ6jja6xJF0NGtCbMiKyuuAhxune', '118.99.93.166', '118.99.93.166', NULL, NULL, NULL, NULL, '2019-07-01 13:12:20', '2020-07-02 10:29:27', NULL);
INSERT INTO `usersOld` VALUES (185, 's1506336', NULL, NULL, 'Fhegiana', 'Damayanty Juniar', 'fhegianadj@student.upi.edu', NULL, '$2y$10$DqhRL26ECWd7ruocl7K0iu7JSmM2NqEsEyCWs8GlpFnv2CK4P56De', 'a2XJ6OdGxKJ4elo08B9BcrMFugLE3Zg58ar4AwMadMYwf6Vvws4SqKGGwGGg', 1, '7yuZMMtw4gcLeOGuGttfDlgHnFkds1dYHzIs343UKAV9P1jGokOZQ6SiEBVX8Vx6', '140.213.23.133', '140.213.23.133', NULL, NULL, NULL, NULL, '2019-07-01 15:54:54', '2019-07-05 12:52:02', NULL);
INSERT INTO `usersOld` VALUES (186, 's1603747', '1603747', NULL, 'Teguh', 'Pratama Nugraha', 'teguhprataman@student.upi.edu', NULL, '$2y$10$LLT6WHE6iF2QmxQBJorOHu5osVs2eQtHrCtp.DjnEIE3AOcXDu5Z6', 'hetLxdKZwEVwZRQOYsASJc7EMa2BrPG8a8wRGSTRJtQmkEVb60ouBCb1BDBu', 1, 'nxR1yL7KmBDjooWQ7q97nF4J8wiilZPMsD3kWXqoVFbWiP2F86PewY60qQEuJq76', '112.215.176.46', '112.215.176.46', NULL, NULL, NULL, NULL, '2019-07-02 05:16:22', '2020-07-02 02:25:24', NULL);
INSERT INTO `usersOld` VALUES (187, 's1304072', NULL, NULL, 'Riyadhi', 'Abdurrahman', 'riyadhi.abdurrahman96@student.upi.edu', NULL, '$2y$10$pcH4IkrH9Yxcswy/FX9wUeCMWrSEzw.mHpdKmZ5Rb/QWIYDbCxOtG', 'W29GXjej6wRSTOeKuHrQ7GvXIsMk2HVxlAbRDgFfL73hzL98Xao75wHJT3l8', 1, 'QLISwUyUJEwCFy9SaTRP0x4vgYzOWgWAGxzAHzXb8i6DsTqAw9azaw4TujUAAKlL', '103.23.244.254', '103.23.244.254', NULL, NULL, NULL, NULL, '2019-07-02 09:36:30', '2019-07-04 06:40:07', NULL);
INSERT INTO `usersOld` VALUES (188, 's1503904', NULL, NULL, 'Dendi', 'Rukmana', 'dendirukmana109@student.upi.edu', NULL, '$2y$10$8ubJ6Mi5BRftec0PVUpHG.oFDAa6mmlaDZ.cnd49LKwzZmzotK.BS', 'zjNFIE1MpFiDitEYBSgvHXsBiItc9abtTaCSWTJQjt2PLI7BBL8GFNPTkSrq', 1, 'LU7MudIqnOmHuKgIWGibIOxFCML8FBeb2VOc91J5ZIbWwFoqjUvZHfiWFJjwhkxD', '120.188.35.43', '120.188.35.43', NULL, NULL, NULL, NULL, '2019-07-03 06:45:09', '2019-07-06 06:26:37', NULL);
INSERT INTO `usersOld` VALUES (189, 's1500329', '1500329', NULL, 'Dede rizki', 'Abdillah', 'rizkyabd090796@student.upi.edu', NULL, '$2y$10$qdbEW6nAfdwbzuPDr4706uJ4h44Zcc5yBA9YJftWHNffU8uyZn49C', NULL, 1, 'HJxB0ZHcclQymrD2D9B1Yiq4kRLvK0dvXR0w39IwucR6Vka4TAsTaUVNlLy19gWq', '112.215.209.116', '112.215.209.116', NULL, NULL, NULL, NULL, '2019-07-03 08:11:07', '2020-07-03 10:25:09', NULL);
INSERT INTO `usersOld` VALUES (190, 's1501848', NULL, NULL, 'ridwan', 'ahmad fauzi', 'ridwanaf11@student.upi.edu', NULL, '$2y$10$S1t.mGy9qn.yzwdNwW7aW.qCqrkkHBZm6lj5kRa3z4wifYDmE8PRG', 'HjbkCWZvGIGcZKu6nNODVaDHk70K2pXpXIMEyVskY4OQnT1PNgvrKTM4ccbI', 1, 'Ir6OZiScXUHDfRL1JFYZBY5J5PkMp5Z2KpIVMdtPsnRLfMKyFOR0zqgRxaZZwxIl', '115.178.221.163', '115.178.221.163', NULL, NULL, NULL, NULL, '2019-07-03 08:11:48', '2019-07-04 20:01:18', NULL);
INSERT INTO `usersOld` VALUES (191, 's1500429', '1500429', NULL, 'Fahmi', 'Azhar santosa', 'fahmiazhar@student.upi.edu', NULL, '$2y$10$7/fBIQ04.lldhvGcO5r7duYpboVxbJbbJA4b3ymN9HTkaUCgK6.LG', 'Vr5Y9SRwt5zqBL8jU6MYrEYtMlUqLiXTP1Ssqb9M6O3RYCC82krG9omtt5zm', 1, '8BWYYM9u4cL8zcwo2rIyIQDGpTUpwU1KO9J6Nie4K4dJ6J4eXDDNzEyjtN0RsfCS', '180.214.233.126', '180.214.233.126', NULL, NULL, NULL, NULL, '2019-07-03 08:13:40', '2020-07-30 14:27:44', NULL);
INSERT INTO `usersOld` VALUES (192, 's1501272', NULL, NULL, 'M. Hasbi', 'Ash Shiddiq', 'mhasbi17@student.upi.edu', NULL, '$2y$10$gTgIkuSP1Q.X3y8KLiyJyOzGrSLlSHomjRJ4eH8Le0EhZgXXEh6dO', 'xQlSkMGuJUXu6V3s7cnpQKDgwd2PX5D8pOkATutnLbHiMrNK5w8jKromaPtw', 1, 'SvOJgIhhcaZVgaRKPFv4hrEbkaXyIYA0huJrq4FgUDN1nFiuHlevXS8kQKWQq1Wy', '103.85.122.164', '103.85.122.164', NULL, NULL, NULL, NULL, '2019-07-03 10:29:23', '2019-07-04 10:39:26', NULL);
INSERT INTO `usersOld` VALUES (194, 's1505329', NULL, NULL, 'Julia', 'Nurrizkiani', 'julia_nurrizkiani@student.upi.edu', NULL, '$2y$10$NXuVD2H11tUkTz8gAhAlOewz3aa.xqYFP4jtcm7qytoEY7wIe4gjq', 'tvJnCcnxfNj2VfMJk96R4K4hgYHoISZL829FrEvD6UozMJCp0OEZAIj4vAjO', 1, 'Xaja2rN8uUb3BgNbtxubLODiXPz8H7bxwHOLvBVoCqROBfe9kmmQt02knYgsfiA7', '140.213.0.227', '112.215.151.227', NULL, NULL, NULL, NULL, '2019-07-05 12:43:33', '2019-07-06 09:49:59', NULL);
INSERT INTO `usersOld` VALUES (195, 's1503446', NULL, NULL, 'Taufik', 'Ismail', 'taufikismail@student.upi.edu', NULL, '$2y$10$R9MecfPvV7l46.9KWV8Mju7q1V7/4NcUgsxmqNUItM7kyI/sSFPs.', 'eWiL8v17qXZryfWHxbOoN4PrX6TMyYYtVfOiTR67g3Avxqop8ft8QQY55Ep0', 1, 'ObHIRtZwOp2azENC3jMqvGvrBhkO9sFEIH0jWdZ0tL19txnVWASbZYcqfbBuM6P1', '140.213.8.44', '140.213.8.44', NULL, NULL, NULL, NULL, '2019-07-05 16:23:37', '2019-07-06 09:13:59', NULL);
INSERT INTO `usersOld` VALUES (197, 's1500819', '1500819', NULL, 'Mirza', 'Maulana sugiri', 'mirzamaulanasugiri@student.upi.edu', NULL, '$2y$10$.6GFVYiu9ZG3kAUrOuV.2uFIXbUV5/pWlsev2pYLj6QUCEk3yD4l2', '4CFCaf8LxR2FsVrdC0eu9lanIawXyXAk67MkUcJRMB4XIjpTb3UTAczFX3KQ', 1, 'bjVlyuY5BYhiwX8IdCAWiKEqT8x1AjKSi0o3VIvCtdDDaSB86nR0i2mYLWdguDJy', '114.122.72.92', '114.122.72.92', NULL, NULL, NULL, NULL, '2019-07-06 05:29:05', '2020-07-04 15:15:05', NULL);
INSERT INTO `usersOld` VALUES (198, 's1403121', '1403121', NULL, 'Irna', 'Wahyuningsih', 'irnawahyuningsih@student.upi.edu', NULL, '$2y$10$RJn14p3zc5cGweoKDFat1OdrzAYt1JhWIa4566xBWU.K1NCIMZGPu', 'YO7sBqFKG4mtQkqKstbaqJ1NwbWHiaXFxIfemUD9w2cfxy6cyuh75MmLGmDX', 1, '5V9YDW0ZUS5waPtBlR5dsENraOf8UqgvpkDI2gm4nWf8JyZKL9KNWiRCN27tIytO', '103.23.244.254', '103.23.244.254', NULL, NULL, NULL, NULL, '2019-07-06 06:29:18', '2020-07-31 10:09:47', NULL);
INSERT INTO `usersOld` VALUES (199, 's1403243', NULL, NULL, 'Solla', 'Nahari', 'sollanahari@student.upi.edu', NULL, '$2y$10$ocDo2EeFAp5Vb71kK9UGMe.aV8ztgAI9KBe5rqP1zd9kpT.yyJwT2', 'ljnzg4lhczBKDYpetZfXIpKHeRvy5fN5ud4iRoA9Oq0g2iAGGevAkEvDEQ7k', 1, 'oMyzoxtzgtkuYjr5VojEJTgnHzdV3pQbpwvsa51UGgI0ha01WxCtYiYuhYtHgW3D', '103.23.244.254', '103.23.244.254', NULL, NULL, NULL, NULL, '2019-07-06 06:41:54', '2019-07-08 19:30:58', NULL);
INSERT INTO `usersOld` VALUES (200, 's1501937', NULL, NULL, 'Aam', 'Wahyudin', 'aam_w@student.upi.edu', NULL, '$2y$10$4dxrBwyyMQTR/uis0/bWyuKT/UNpjPcfAjpNx7V2ERa78He2yyWCS', 'A0Bw4CBdKCergkg7yfz3bl1iT7HiviWLOuJ2vyKcIYet35U3m8ACKFVUoVdW', 1, 'eCPtULlG6MCvHq2osPUEDXDWG8Z6RGQ3lg8QRudcvTtXBw7DUu8aF5ie6BgC2M80', '112.215.253.188', '112.215.253.188', NULL, NULL, NULL, NULL, '2019-07-06 09:09:54', '2019-07-06 10:55:07', NULL);
INSERT INTO `usersOld` VALUES (202, 's1505763', NULL, NULL, 'Zikrul', 'Rifki', 'zikrulrifki@student.upi.edu', NULL, '$2y$10$SVRgzXTih/3UO.gv9ZSao.DvYVImuFtAolnvmBej0lyGFsFWK/8gO', 'YNHT4yZJIRPqX9cPZgLPUHVs9N8ZcFZ7KjrwS5Q6DpgtouHeg01ecS3sXsNN', 1, 'XqiDT2dTwHQQgQBmlxlAKTomRkAReO73RSPXvOd5TKDtgasWsGLtO16YOdGWSHeH', '114.124.205.4', '114.124.205.26', NULL, NULL, NULL, NULL, '2019-07-06 18:43:35', '2019-07-08 07:40:31', NULL);
INSERT INTO `usersOld` VALUES (203, 's1502063', NULL, NULL, 'Anggi Restu', 'Fauzi', 'anggirestufauzi@student.upi.edu', NULL, '$2y$10$DJ5cLsgo4d/0uGR8Gnfj1OB1A8WEgi2amSlYqbHzyCXw8KSkEuHGK', 'mQ0IyLTDkTl28onY6FHX6Uwxtala2Lgrk2xmiijFbUKsDqrAjf7RBhMLweTj', 1, 'aYuMh7vHEsqP3bfeFLSqkRyaPjfCNIMR0INtaOppD8KmcUi07xeo7O2n0ndmJ3bs', '140.213.18.148', '140.213.18.148', NULL, NULL, NULL, NULL, '2019-07-07 14:21:39', '2019-12-04 06:20:32', NULL);
INSERT INTO `usersOld` VALUES (204, 's1405712', '1405712', NULL, 'Nopran', 'Tri aditya', 'praaann@student.upi.edu', NULL, '$2y$10$owxedHzqCW0aW8GPDO32Au4oSli38fUEEr6XOmWl8z7Mm8RiMQGZC', 'SOUOcrnsznagCIgnEyd8Cp19pS07f9EfjCZJise8OXl7uM6sL32mBKKiyepa', 1, 'GnfVW32iLyC8Ffmpk7Mzqhj5tUWfsaEJXYPYikuKcGcb28MUIo8JhGmTjq9lyhfZ', '182.0.134.62', '182.0.134.62', NULL, NULL, NULL, NULL, '2019-07-08 08:12:22', '2020-10-21 09:02:13', NULL);
INSERT INTO `usersOld` VALUES (205, 's1301997', NULL, NULL, 'dina', 'rahmatika', 'dina.rahmatika95@student.upi.edu', NULL, '$2y$10$5kfkUqbBSLqHbvaee5xSOe/6H8LLr0gY5UjMA2EhFOw8S.rhol60i', '3o7JvTFCyYMlZDueMNXUFjEAmwZfqJAbSeHCtJJamSinBFyMlpHJO8WGOjeu', 1, 'gLzz4mDNhmG8CZFalrocj73OJNMkjMC3Nx5KjqUYlsniUdUKWbt2TKEaq0SH9MjQ', '103.23.244.254', '103.23.244.254', NULL, NULL, NULL, NULL, '2019-07-08 08:48:12', '2019-07-10 07:20:53', NULL);
INSERT INTO `usersOld` VALUES (206, 's1602078', NULL, NULL, 'Fitri Fajar', 'Fathonah', 'Fitrifajar30@student.upi.edu', NULL, '$2y$10$9PVU9F4qWw/vOeJORpHyn.PADVFfBptwF.LKcUSSX4OKv192ku/FO', 'tL2HgEj12BTiMO3xBmutbmaJS1kHVxOTQ8CyOtOcTPOwIj2T8Q2Uk3hh1D0z', 1, 'W8F5DllATc8YSvqnjZDD0AtaU1DbvwxgFDv3Y23GFrVZmReokQdVWYaASw0g1SWq', '103.23.244.254', '103.23.244.254', NULL, NULL, NULL, NULL, '2019-07-08 09:17:04', '2019-07-10 04:17:39', NULL);
INSERT INTO `usersOld` VALUES (207, 's1602118', NULL, NULL, 'Lutfi Fahrul', 'Fauzi', 'lutfifahrul35@student.upi.edu', NULL, '$2y$10$KmCLa9HCtYW9oQXm7mbxheeQqoWfUzifUTqJE8DH3quUgYCqA18WW', 'L8cGZQgUgihb2P1KjTtJq9LEyzvEekuQCOMCPvOJlRAS6ogHVyXmG790WRzG', 1, 'k36iGVb8O0UyQTDnlX62Skll2Uz1pxmVsHQGa2rAv6KkxWMQtId3odV42NEBiSq8', '103.23.244.254', '103.23.244.254', NULL, NULL, NULL, NULL, '2019-07-08 09:28:35', '2019-08-04 10:52:21', NULL);
INSERT INTO `usersOld` VALUES (208, 's1607321', NULL, NULL, 'Arief Chandra', 'Pamungkas', 'arief.0609@student.upi.edu', NULL, '$2y$10$Rf/4bMj7rtT6HoPbF2xnsegjqqAEirr698blMcmaoMDLEaBNPcsTO', 'knWUqgUArqtmUm3LZpUV7CUuXJtCwkFJhlTxuuXjZPrSGetAm8l4UY919Rll', 1, 'lRZYcSg6gA318OilPND6weX1XkxWsd6XLNV7rFWOaQPl7tf2W6yBxxiET2wzZke2', '103.23.244.254', '103.23.244.254', NULL, NULL, NULL, NULL, '2019-07-08 09:34:27', '2019-07-21 04:37:21', NULL);
INSERT INTO `usersOld` VALUES (209, 's1605803', NULL, NULL, 'Dwi Ayu Nurfiyanti', 'Putri', 'Dwiayu11@student.upi.edu', NULL, '$2y$10$ZK3.8zoKyN2k9Y.csDSid.fm/RKI04ViIw6JaytKuIeDB/iLkk.DS', 'fy75SnzVhCBcsdkS9SvT4Ea5iKEld2QvDMleIEHvyZo89gPrHF99QT6XUrZF', 1, '1C3KbabvKxuuRG2veA6HrcgDIbGjTJMFw8IJP5MBorqQE7brrEnlacVNZka2yJRI', '103.23.244.254', '103.23.244.254', NULL, NULL, NULL, NULL, '2019-07-08 09:46:06', '2019-07-13 12:15:52', NULL);
INSERT INTO `usersOld` VALUES (210, 's1602080', NULL, NULL, 'Iswahyudi Setia', 'Ardiansyah', 'iswahyudisetia55@student.upi.edu', NULL, '$2y$10$gHBG8amiNnq5K5CodU93YOwwfpyyDT/L3o/X2cschQqjINH.bCK1C', 'JiumfAFWXV3wladDfbLzJebiiMyf4KjUwhI4Q8wiKTFmQYMtwAhfCwPG5dqw', 1, 'XNjngB9VDjel2hEKskeUCIKTatWuAqo4ruP1XDLwZi2GxRzhgh9OwTMwo9Kw0RlA', '103.23.244.254', '103.23.244.254', NULL, NULL, NULL, NULL, '2019-07-08 09:53:34', '2019-07-27 06:57:52', NULL);
INSERT INTO `usersOld` VALUES (211, 's1606280', NULL, NULL, 'Mahsus', 'Mushofa', 'Mahsusmushofa@student.upi.edu', NULL, '$2y$10$FyeYYje6pBhrKZDTnsUapuCPp3EZNtpZ9IOZG2vWy.PJwvAuX8t4O', 'QTEV6x2cExOI8g7ZnT3myzZO8LyHEMKp5b1SmJlUmyoNPK6HI0xccInnAPlN', 1, 'oHu5xqc53ldlakO7KeBsJQ0llSusdMCf7XGE8l2R8BwpguTMFYU9XfOiCNBd0D6H', '103.23.244.254', '103.23.244.254', NULL, NULL, NULL, NULL, '2019-07-08 09:55:32', '2019-08-04 20:10:05', NULL);
INSERT INTO `usersOld` VALUES (212, 's1602093', NULL, NULL, 'Dzikri', 'Syaefullah', 'Dzikrisyaefullah@student.upi.edu', NULL, '$2y$10$r2.0bQ5MhANIwyNny1B5buuEjTBbMGz2kpTM10R.1IAJYhByK3.1a', 'uv0QzfAKAlA8CfQfpKLFg38Oi4SjpFt1LbNaXFr560yRBDyMuEhW63133xgr', 1, 'GuVysqWhA4si2tsTqrUiNR0jcX0vrcI88PjsVuZksg99ZiSiHEmiEO7CnocSSgJJ', '103.23.244.254', '103.23.244.254', NULL, NULL, NULL, NULL, '2019-07-08 10:04:23', '2019-07-29 10:25:12', NULL);
INSERT INTO `usersOld` VALUES (214, 's1506969', NULL, NULL, 'Reida', 'Pasgara Putra', 'reidapasgaraputra@student.upi.edu', NULL, '$2y$10$03v3ooMC3OWMKiiYl4oyM.K6wUt98xoasXmyGi9d/tneZsdV70wq2', 'lhYEwvO9GpwsiqZlPHGM6Nm6WgRS3Ehh9qvNwFcBWuOBKCDbM1aDgwgd5WUt', 1, 'VnWyPC68LlPIA9ZMy1g43Qwsut96XqwyCrd6Tx57px2Ukw09rvrQUuFd6GvYEqa9', '103.23.244.254', '103.23.244.254', NULL, NULL, NULL, NULL, '2019-07-08 10:27:13', '2019-07-23 07:39:41', NULL);
INSERT INTO `usersOld` VALUES (215, 's1606582', NULL, NULL, 'Alvin Pratama', 'Yuliandri', 'alvinpratama1598@student.upi.edu', NULL, '$2y$10$8XWvKvFhOgTfCd1P7hzeUOuuFpo80cA6daR/kvNzL1.CPrNB1Gu9m', 'CjwpavtI1dEwvCma5uf6Enfjbldzgrc4mMXLh3uld9CpO0eeDmP5K7UKBPWN', 1, 'vhE2TDSPswHKrXhGPMjKlh2ztu8rMBpbltYIQYzt1lGbgN8uoc0eo1xOcTThN1YU', '114.124.136.195', '114.124.137.67', NULL, NULL, NULL, NULL, '2019-07-08 14:47:54', '2019-07-29 11:23:43', NULL);
INSERT INTO `usersOld` VALUES (216, 's1401970', NULL, NULL, 'Dicky', 'Mardiansyah', 'dickymardiansyah@student.upi.edu', NULL, '$2y$10$1QZNa53wC0VxIwKZMwRFFe4tPQ7OTd2eA82iTteDO.Wq31LyPCFjq', 'HRc9ZOTGc3lGylQ75aXvgbLPOEwy2MRNaHGru261pmXpB70LCy86GyNIFkx9', 1, 'L15PTrUNLUmfsJgktbDLVL7oaVVqyPCy52h9z7jZWY2nAfLQdSztmq2jvIGXS640', '116.206.15.57', '116.206.15.57', NULL, NULL, NULL, NULL, '2019-07-09 08:38:08', '2019-07-20 05:55:28', NULL);
INSERT INTO `usersOld` VALUES (218, 's1304887', NULL, NULL, 'Muhammad', 'Renaldy', 'muhammad.renaldy@student.upi.edu', NULL, '$2y$10$9xUhNFULZQ5MshoiQbx/zuukycL0cAVuKOlxe2LBCBRhao3l8cmka', 'UbeiKiXfO9bzDAhr8Qsqs3uZjIVfd1QCqXt1H1KMoo6WHl9A4vH6csmgAgih', 1, '1yL5kClQSnLqWn6ADUJyR2erN66dIvB1WHpgcn7LvHJ3CH9DbtNBWTqYBCIyfXZU', '114.124.212.26', '114.124.212.26', NULL, NULL, NULL, NULL, '2019-07-11 04:16:31', '2019-07-12 12:07:04', NULL);
INSERT INTO `usersOld` VALUES (220, 's1602104', NULL, NULL, 'moch. alif', 'rizky maulana', 'alif.rizky@student.upi.edu', NULL, '$2y$10$z.8Cqn4zI3s1X/gwJq/aWum9x2sAYP7VVqEjfy6NxWTSTdmOzcFq.', 'nEeWJ9tiidPASSABVqxztw2N464sIDWBQ0HNNiX0FHGOXGay4srhDsQDm5fv', 1, 'iGgWS1AwwsMoY1hkaBqRF4kIg7Zm5VjDHg1KZQUndqfn4y8znFcyWqC5B4gOJEHg', '115.178.207.8', '115.178.207.8', NULL, NULL, NULL, NULL, '2019-07-13 09:15:14', '2019-07-14 12:40:26', NULL);
INSERT INTO `usersOld` VALUES (221, 's1607460', NULL, NULL, 'Muchamad', 'Nurfachrizal', 'izallatah@student.upi.edu', NULL, '$2y$10$312RFiMiIouBowwUqUmzbeQitC5EovZJdoOvA4n/D8PQYfkoCHjxC', 'jYouiIPQj02RLenWDFvQ5loBnGQmLHYR9mQlNaRaI3r8Fdn93imWflcI5g9O', 1, 'mADtb13FpFOdpIvYXq99PUVmwJg5mJRFIov0X8Nc36lvvXSNqkJfZlFe0gUonVrf', '103.23.244.254', '203.78.122.210', NULL, NULL, NULL, NULL, '2019-07-13 10:17:44', '2019-08-10 10:37:46', NULL);
INSERT INTO `usersOld` VALUES (222, 's1304233', NULL, NULL, 'Furqon', 'Arfian', 'furqon.arfian95@student.upi.edu', NULL, '$2y$10$pGtdTxToChBLEv9DwTETBOBae4BKaRXkGPU34iyVyENflT8Lo5XyC', 'LiLltDamBaQ2K3ZN746IGOSrqQDFt0hIP2w2XdXZZ6lCKjUIFi6Fb754RXtE', 1, 'W15V7D2D6i8o41XE03HVMDNY3lbHKE66BdB3wHLWb4PQThs0E0OAxG80yljjauly', '182.0.166.112', '182.0.164.221', NULL, NULL, NULL, NULL, '2019-07-13 10:36:34', '2019-12-17 15:38:00', NULL);
INSERT INTO `usersOld` VALUES (224, 's1405131', NULL, NULL, 'Ridwan', 'Firdaus', 'Ridwanfirdaus377@student.upi.edu', NULL, '$2y$10$P3TscM5gP3zAU/36FVNiruA/bcOvfI2WrVnXRzpuUWiz9o60LUALa', 'bVYfVDOiR98N9c5548lSlJ1YrihXdkXByNi2Lq0Ag32t6WnHWjOjxnLMr6bC', 1, 'swF1FWkKOnOMaXa8yaB4AApkVuPk51apwopz0QRjL9mlCI02pTuhSW1NsKLGtwxB', '140.213.26.235', '36.71.233.169', NULL, NULL, NULL, NULL, '2019-07-15 05:30:08', '2019-07-31 06:58:32', NULL);
INSERT INTO `usersOld` VALUES (225, 's1504845', NULL, NULL, 'Irfan', 'Septian Suherman', 'irfanseptian@student.upi.edu', NULL, '$2y$10$S/ToebQWZQS.UcMf2CBxzevjIX.FpNyf5qwsCu/eGPczA/sBNeIAu', 'Y38e91aGxAlSwJ2fniIjrNhFBr1Aju6YzCw1tFQ9tdjLgJQbd7x1tto6KS9k', 1, '4QsYzaFdi9OlNBQx9iviYCXzXOzJKkqMThZCf5Ayco0rsVcm7MfCpFS6yeLr6PMd', '116.206.14.28', '116.206.14.28', NULL, NULL, NULL, NULL, '2019-07-15 07:15:37', '2019-07-21 06:35:55', NULL);
INSERT INTO `usersOld` VALUES (226, 's1504967', NULL, NULL, 'Irfan Maulana', 'Fauzi', 'irfan.maulana15@student.upi.edu', NULL, '$2y$10$SwgAuF97fxmn4Tibs3CqOeW8X/rhkPeK/JyxuyNlBGXVvqIXBbTm6', 'vkwsPZ5wwibICitFUBNmET7EgZ6f6C63SRNgB5ZXWLq1CrueRL4xak6KKYsC', 1, 'dGjEvacZXfaz1sxSMSmzVoBCa93LeSZplhRLv6IBvyZKWF0HO0eybBwchvgGSfxj', '10.35.253.118', '140.213.17.244', NULL, NULL, NULL, NULL, '2019-07-16 05:56:47', '2019-07-20 17:25:20', NULL);
INSERT INTO `usersOld` VALUES (228, 's1401662', NULL, NULL, 'RIzki Zakaria', 'Faturochman', 'rizkizakaria@student.upi.edu', NULL, '$2y$10$wOmf9Ar3s9EVC2HxdxK2ju9V/yKAwpi.F31DExBK4lPXiMNH1MH/G', '4NSwJkb0klcNcoOuvLwxxfFTcjb59Zi5IB5Ln4A2bWc5HPQQrYT3XHNC5mGC', 1, 'SRYjpGcJHKRe5xykgFlCLGZcd357X280DOKLNsrUIfv41s1yUWvnlQEvqTre5Mwe', '10.35.42.49', '36.71.233.205', NULL, NULL, NULL, NULL, '2019-07-20 07:32:57', '2019-07-21 10:48:37', NULL);
INSERT INTO `usersOld` VALUES (229, 's1401410', NULL, NULL, 'Rizaldy', 'Kurniawan', 'r.kurniawan@student.upi.edu', NULL, '$2y$10$H3m26U16Hp8TvwERnLUDPu0SbMC0R8WxVWhF7hdec7AleC1mZQy2y', 'IGbaw4PXaL8yqixTpBeHwUjzFTpew3u8pTBvod51856sqUPuQ0noqKVzbgMs', 1, 'TJJCwaTHvsN8POWvDebn0P3M1gSzaUqMFXyy3jKngEfl5POvgqh2fnF3PA0K31u3', '202.80.213.225', '202.80.213.225', NULL, NULL, NULL, NULL, '2019-07-21 04:18:31', '2019-07-27 08:14:14', NULL);
INSERT INTO `usersOld` VALUES (230, 's1501726', NULL, NULL, 'Muhammad', 'Fathurrachman', 'fathur.rachman97@student.upi.edu', NULL, '$2y$10$Lwa6VXOnyebQOpQynTtzKeaAvVVtpRLSwRmFqRWyXszv6/MezI7we', 'SgTKc5otVwo9iRBA9VJ2HJEobuefHPDQiSJsOko6QQwj7lqxYow9zOrossE9', 1, 'NVdwyxAVALf6fNfgRWoBjIy0hTO7pfxfB0MMHiBaNxY7AvBVvzKVlwaRcW42LdRe', '180.245.141.135', '180.245.141.135', NULL, NULL, NULL, NULL, '2019-07-21 13:24:13', '2019-07-26 08:39:00', NULL);
INSERT INTO `usersOld` VALUES (231, 's1505698', '1505698', NULL, 'Adryan Jaka', 'Lelana', 'adryanjakalelana@student.upi.edu', NULL, '$2y$10$uxqq7KLR74Z7IxGrxMQFO.HS48ZRLFolGodiCDyRm11HFHoobh9O6', '8ukxdGjHMFxWG5aoEWec8H1FWBM5xXg7z00m4YwTj2j65bvPpCdQmNT3etkG', 1, 'fqpm4ojgDzeOtk8mJnx8DPsA0DhTumTmZi9XfQTqwkub2KC6QCUwj0xVSg6rwGfG', '120.188.65.80', '120.188.65.80', NULL, NULL, NULL, NULL, '2019-07-22 07:55:38', '2020-07-25 00:24:09', NULL);
INSERT INTO `usersOld` VALUES (232, 's1400666', NULL, NULL, 'Teguh', 'Nugraha', 'teguhnugraha@student.upi.edu', NULL, '$2y$10$uI/gJIFihYitoyZIP1aKneYDICogkJ.5JwXM3QIajWw7wTGLqQ07K', '9BVKOJahViXJHpFokgZCeLANxsdIcJJohWTBntqs4IluRY9XOc6PoOvxBGA5', 1, 'i01j2GILmBHVqtm66D6YF6qNwMCn5A61EW4za3ztJzanf9KkcPBCeP90VxdxahER', '10.35.14.168', '36.71.234.142', NULL, NULL, NULL, NULL, '2019-07-23 07:46:12', '2019-07-24 09:05:36', NULL);
INSERT INTO `usersOld` VALUES (234, 's1401029', NULL, NULL, 'Reffky', 'Pratama', 'reffky14@student.upi.edu', NULL, '$2y$10$pxnEEcV8N38BLWwks5SWaexq4W3W3NTxhpOFT7F/S7qf5CtnZLL/q', 'KZ5gnAVXlKEM7oqjzpzbzGaQvpLhimUJmpnS5P1hG8WsHqlM7daTDrO2N825', 1, 'AIUONhCV54sRU7dp22BELNRhw86IoqUWv5OYEDr18cjr6PEF3xfDuMhTMh7oRbUU', '10.35.14.168', '36.71.234.142', NULL, NULL, NULL, NULL, '2019-07-24 11:56:23', '2019-07-27 15:05:59', NULL);
INSERT INTO `usersOld` VALUES (235, 's1602092', NULL, NULL, 'Luthfi', 'Ihya Mahmudi', 'luthfiihya30@student.upi.edu', NULL, '$2y$10$3KCrP33SviNXdjXSmQ7vNeOJ/YFO7fHmRmF6525Ug8cFvfNN1VIL2', 'mNWzTFhxSVRgmVM0nv9ajKL3VpxjoNTiosKBBKyZjdUjlVxgoM128yrjnjZl', 1, 'AcnyM1gjClFRahmHdsAYyipyeUAexLUHiyK39XhHMaJwUd46Jzj2BxDEpd4HSKt8', '10.35.39.71', '36.71.235.237', NULL, NULL, NULL, NULL, '2019-07-24 17:58:17', '2019-07-28 09:23:17', NULL);
INSERT INTO `usersOld` VALUES (237, 's1301686', NULL, NULL, 'Gema', 'Ardhyana', 'gema.ardhyana94@student.upi.edu', NULL, '$2y$10$Z7nRNNmInAfpcDsmqEYkaOM.04iSyQbdhAd/J03DLeqJkFFCwZswu', 'jjfzZCPyO8wQ3Gdv9CYawD6yyvdZMRGK1vfarbu1SVNHHvDo09bg7e5piGJE', 1, '7ygYdM2r8kIg7oc15PB5cp3b7SGyxlV1iIyAZ3oVCRwEXGrVMT2sHGvy0yRR2FdW', '114.122.103.166', '114.122.106.25', NULL, NULL, NULL, NULL, '2019-07-27 10:31:50', '2019-08-03 10:04:55', NULL);
INSERT INTO `usersOld` VALUES (238, 's1500171', NULL, NULL, 'Hafid', 'Fadilah', 'hafidfadilah@student.upi.edu', NULL, '$2y$10$AZiMTk.eFa2OugNQ8Czme.PVZndHlhwWa4FVL4UJkStPo6wHlIAGa', 'AsK9sAGiL1kNfZB0P1dTFqhJa8OJPM8Uu7aBDza9cE2osGV6HcjWGYgQE7nG', 1, 'yoEJumPfEqqCPtBArCYWxB3p1ctRt7UEzld4rfUZkbWEMxSCxdw9ueXOlNVF3WRX', '114.124.173.15', '114.4.78.252', NULL, NULL, NULL, NULL, '2019-07-28 06:13:40', '2019-07-31 07:05:55', NULL);
INSERT INTO `usersOld` VALUES (239, 's1606741', NULL, NULL, 'Aditya', 'Hida Nurghafiri', 'adhiyat056@student.upi.edu', NULL, '$2y$10$6EgLKgWg/KPtrR0QtMnTJekFQXGr3tAA2AOioYTS1QLcz7usRiAje', '04bUdnenQsOydPRbCbc99UZrQFjU6Sbqg1YpSOcFEqWm1bmaeTmeOFEbgu1o', 1, 'UU1oHyRv5Nq9Zo63CzYB9vW9Lt81SJqc393iuSz6SoRf296GLYfv58tnKoYeFhHV', '120.188.7.203', '114.5.215.176', NULL, NULL, NULL, NULL, '2019-07-28 10:15:35', '2019-07-31 05:15:57', NULL);
INSERT INTO `usersOld` VALUES (240, 's1606718', NULL, NULL, 'Tafaruq', 'Febrian', 'febrian.tafaruq98@student.upi.edu', NULL, '$2y$10$0p3WPTiZjTYFXPcT8gQ1jO3mJSgGj7nw.XhZTMTqUfNA9/Xrqbp86', '9FzDgkZQIj2UbI6o6kmyW6alCBmIpezsYTDkLHgTYSqod5JHJfJKjyqQFeYc', 1, 'Df6oE1GH5brHsUBiVzGztfkeTOhvuKdrVOl5iSxjYUUiMRtD4VE3qgNXITnQMLdc', '103.23.244.254', '103.23.244.254', NULL, NULL, NULL, NULL, '2019-07-29 10:39:24', '2019-07-31 06:43:00', NULL);
INSERT INTO `usersOld` VALUES (241, 's1501362', '1501362', NULL, 'David', 'Irman', 'davidsmile.div@student.upi.edu', NULL, '$2y$10$G4038oLI/CjXj679L1vM4uC5mHre.kc5EyUFOSGaT8qs0m4n0nn6q', 'Cm7gLQYoAsIAEsfnfillKmUt9lE3lPnYYiYocOkpNe0RbhPgGJLfsWkTvcpX', 1, 'jpbuYTjPzojdrQt7rMh6wKZ8qC2igsYiZkGT6BkY9fEU0TNV1ZfsWu9GR9LQw8Hh', '182.0.231.239', '182.0.230.53', NULL, NULL, NULL, NULL, '2019-07-30 08:13:49', '2020-07-04 07:17:01', NULL);
INSERT INTO `usersOld` VALUES (242, 's1602086', NULL, NULL, 'Runa', 'Adi Maulana', 'runamaulana19@student.upi.edu', NULL, '$2y$10$y4AcL/HYiPRTKh5XcymEr.MlAW86UQZMYFKgqMN70BvdNUo5tJc0.', 'yW1BfSvKR5kzdbilzfATlUxw1UvXs2zqHQP5a9wZdDaGCrn9SSwdR7jd6HUG', 1, 'SLFUALE2ohTSpKwYVDnZLC24uGkFwveRmziNb8XzjuQAbCpwZktKDJ7zCVaJjtsl', '103.23.244.254', '115.178.219.103', NULL, NULL, NULL, NULL, '2019-07-30 09:31:46', '2019-08-04 10:28:01', NULL);
INSERT INTO `usersOld` VALUES (243, 's1606400', NULL, NULL, 'Galuh', 'Dwi Putra', 'dwiputragaluh5@student.upi.edu', NULL, '$2y$10$0ZsBODGXBewT.q0NS2193.YWJp6kHh.7a682ppF/Oaevup6HevnlO', '1gXn7cB5f8jmtOya9f8crG8gRufDv2YRJjlJE5gPoYbS0BYYJOyHBfvbTnLZ', 1, 'KbqWvAdTfQPeqhLfjX6oJ7FwyCjvZppLvtpgTQtKOU0gLr3RSUUFP8adGIWvyeQQ', '103.23.244.254', '120.188.92.36', NULL, NULL, NULL, NULL, '2019-07-30 09:47:22', '2019-08-04 10:44:01', NULL);
INSERT INTO `usersOld` VALUES (244, 's1307440', '1307440', NULL, 'Khoirun', 'Nisa', 'khoirun.nisa2013@student.upi.edu', NULL, '$2y$10$gOMKIMaC3tOV8.RpCsgyTesSUwCPF/gktxaKP1mTtWRQoL.IqKsEK', 'RrgTi8ZnqyO9IvfQlHem7uyKwWXviPdtzNv8RHz02aOvjMybSEhpQqjlDdoa', 1, 'RZnZ7wG2zJsR1vLAfM6wcfyKic6TIwloSKHXwlxeuVdKSvsqrzotlWI9OWpAfmYd', '116.206.15.56', NULL, NULL, NULL, '103.23.244.254', NULL, '2019-08-03 20:00:55', '2020-07-10 10:03:43', NULL);
INSERT INTO `usersOld` VALUES (245, 's1305640', NULL, NULL, 'Ahmad', 'Muthi', 'ahmad.muthi@student.upi.edu', NULL, '$2y$10$HQXmPEJo37dV10kA4gfml.EyIoFDdkG5THYBSuY8TgFswOxlLPwde', '2UTSI5A2hAoKCo5wZst8wMcsS8nHrbN91vOjKgOJyyx3DfP7aLbPALSxQQrD', 1, 'PGXpS5i9lIaP1lv5tlm7jBuK0R4aY4hXCPKk4tLtJOECuwwGDSddLDoTG1jCrpBb', '116.206.15.27', '116.206.15.27', NULL, NULL, NULL, NULL, '2019-08-04 05:40:35', '2019-08-25 05:51:25', NULL);
INSERT INTO `usersOld` VALUES (247, 's1602123', NULL, NULL, 'Rifaldy', 'Fauzy Ridwan', 'fauzyrifaldy@student.upi.edu', NULL, '$2y$10$LfHFhc1P1vlXwbGMGj89HeRmXVxhvoiGUNMvWROp/yfCxQwNp0I3.', NULL, 1, 'W4413eGuFT40a6lBVUba0OVpi45JPhrdyULriodQNrI2FszwOhD8KSwoc6VcEaBl', '114.124.132.30', NULL, NULL, NULL, '103.23.244.254', NULL, '2019-08-04 11:02:27', '2019-08-10 20:02:55', NULL);
INSERT INTO `usersOld` VALUES (248, 's1404347', NULL, NULL, 'Rahman', 'Aziz', 'rahman.aziz96@student.upi.edu', NULL, '$2y$10$2/p7silgWLBVMaH7KwIRo.3kxWbb7kx/flEz8/BkAPHBuSz9NOnAW', 'nWnIAUgRCdMusnp0AJR77sJrZjTecGCydal0OBzKQeZXIAx9S7drLJxKzykd', 1, 'gCVB4RpzWfFIUCQDzeq3cTjjalEAlfJ1RFESL0mnEDgvFSoIhslDvdArXDVUgma0', '115.178.205.191', '115.178.205.191', NULL, NULL, NULL, NULL, '2019-08-05 09:04:03', '2019-08-06 06:26:49', NULL);
INSERT INTO `usersOld` VALUES (250, 's1602112', NULL, NULL, 'Ronny', 'Zulkarnaen', 'ronnyzul@student.upi.edu', NULL, '$2y$10$alTjzgoNBW7dkNXFXMTTuu8NojV55S/Raysku8tm1FT1d9HlnNUbS', 'dimf6pYDFDdar9JSwQUsEIA8QUD9JQAcEXvix4wLZdUxrfpjvEpryw5f8IJy', 1, 'eqdlyihTBLx7YdtZVWnzWYj2GpaxPUGvjszOh0Ke3SFCvbdsKUdwx3CJvddpcqOw', '180.245.245.80', '36.71.232.83', NULL, NULL, NULL, NULL, '2019-08-05 21:11:37', '2019-08-07 17:02:23', NULL);
INSERT INTO `usersOld` VALUES (251, 's1405961', '1405961', NULL, 'uuf', 'muttaqin', 'uufmuttaqin@student.upi.edu', NULL, '$2y$10$XEB/cP6CLEr1q5LCW0tJpO70DQeCvuQsNiHMWL.zNqyQfOPK/NXBa', 'sq3BRa71YL3VDzpVNZ69RRRy6OJNXrMI9LOsaVJEtuhrL0gMx0q9i08eJK97', 1, 'lSy5wK4r7dhSVO61iXvVtQCaMUSvGSJ4uSONP14pZH7nMCDbJ4oqoMfQeXZH3BLE', '203.78.124.113', NULL, NULL, NULL, '103.23.244.254', NULL, '2019-08-06 11:01:40', '2020-07-02 00:10:17', NULL);
INSERT INTO `usersOld` VALUES (252, 's1501311', NULL, NULL, 'Adli', 'Robbiansyah', 'adlirobbiansyah@student.upi.edu', NULL, '$2y$10$Xl0oI0br4UpXitzCSnyZl.Z19QlL8s6ZHlUAl6ZxVS7snwJ829WFG', '2zaZtr740ZsI10HzYOIqFccQIiwTNJ60y2iJNa9Qrj7lg8Pb4CrUx1sis80N', 1, 'dl3z7GhZyVnVzvUnHwfQONsxzIPwl2VAKKJoFBLUcrFSjNNBvnlMkFmoNQKDjpdF', '157.230.40.221', '157.230.40.221', NULL, NULL, NULL, NULL, '2019-08-07 04:33:10', '2020-01-05 08:39:42', NULL);
INSERT INTO `usersOld` VALUES (253, 's1505925', NULL, NULL, 'Fauzan Adimas', 'Dicky', 'fauzan.adimas3@student.upi.edu', NULL, '$2y$10$iH9A/MlkMs1Qr1/RWnuVgu5kLAu0UL0TyM8WOJj3HD0uQ4UTIaYuC', '9ESCqFBINNxv5R5ih9OO83I25ysQjiTRvhXW5PiPRQLGOVJ5An1zK4pXNzl7', 1, 'dGg1iDmWeTmKBfOmOaAoCgsFqzVjZpZ2E61ZqG39yFsEXRndfsfSafOyPhOm0Sx4', '140.213.24.209', '140.213.24.209', NULL, NULL, NULL, NULL, '2019-08-07 10:27:40', '2019-08-14 10:13:07', NULL);
INSERT INTO `usersOld` VALUES (254, 's1605817', NULL, NULL, 'M. Agfar', 'Dismawan', 'agfar.dismawan@student.upi.edu', NULL, '$2y$10$G93s30WeRkyxSnjRZAdn4OQGu/QLGW.4IhhsNLghB6EdFovjdND/q', 'KKQcS09Uv4CjcpeDv9Lohsi0OZ6FQyU7wc3iM5BIJBq4HbpHe5bDFZkE1BUi', 1, 'O0d8nJWO9O5RKN9pdzZ5nN5aONQZVyySfKzsaC1hCpT7MuJILnn91g5K6CpGtdBw', '114.122.78.143', '114.122.68.22', NULL, NULL, NULL, NULL, '2019-08-10 06:58:27', '2019-08-14 03:57:57', NULL);
INSERT INTO `usersOld` VALUES (255, 's1204134', NULL, NULL, 'Muhammad', 'Arif', 'muhammad.arif@student.upi.edu', NULL, '$2y$10$bG.6DJm55YoUXDot0Nb8SOwuNC/KwD70pXUBpUCxp/ZtL74uLZ4Aq', '7Lxiy5harTuR95MwGlTBwnNvVpsyUlKoL1iwebptqrszrWGVy2awt0wPiea3', 1, 'Sn2pBClQWAKkJ2QHPvHNQCPTGTXkFAEXeI8nBTCwNXgqhSCdlL31kC028mkyPoM9', '114.142.172.36', '116.206.15.19', NULL, NULL, NULL, NULL, '2019-08-11 11:10:39', '2019-08-14 03:14:07', NULL);
INSERT INTO `usersOld` VALUES (256, 's1606421', NULL, NULL, 'REYHAN', 'HARTANTO', 'reyhan.hartanto@student.upi.edu', NULL, '$2y$10$7/qa5swCay89cqa1CWeV9.VOUHK/HEa5A7321tbnf2BWSZ/nTG8jG', 'c5XbWU2YgXuXGO5P8La5mV55ZdyOWiDb7hM65v3nqRz8mQuYrJ7fbXaQeOYI', 1, 'rNXrG8ETbtTKD1ZhNVOz51WC41TJam9cRcoGyDApk0hinKjluRfdIPf3Qz8D5e0n', '182.0.167.65', '182.0.132.95', NULL, NULL, NULL, NULL, '2019-08-11 13:00:27', '2019-08-14 03:48:03', NULL);
INSERT INTO `usersOld` VALUES (257, 's1303435', '1303435', NULL, 'Alexander Ucok', 'Yudanto', 'alexander.ucok95@student.upi.edu', NULL, '$2y$10$hIMJQecVa4.dHcxbnPAm5.93tKGed448b/NY4xhNvTxB7q.5wwsru', '0FCAC3aZs7Lues9iCtjO8tjcj2gdwlTDtOMsYbqCIAmnms1zI2bc1UlpwkTx', 1, 'pO4mqTmoi9XRsbCtwRxaKUqor9Tof61n4YfkqdU7ARMzLD4H9X8sRgZR4zVRPNqu', '103.23.244.254', '103.23.244.254', NULL, NULL, NULL, NULL, '2019-08-13 09:58:30', '2020-07-28 13:33:12', NULL);
INSERT INTO `usersOld` VALUES (258, 's1204910', NULL, NULL, 'yogi', 'yogaswara', 'yogi.yogaswara@student.upi.edu', NULL, '$2y$10$I27Eezw7.cFPxMS4h5yXXOXv2R892hnvAW2vcoXCe5a7i83TWZVZC', 'OT4Q8BdgCNuqgmpN3rAiykZUspZMbT6SGTBLOfacsQc92NPKM2AnDVItaoue', 1, 'Miv6pz5Q9brefY7EyNZXcyIiKWyJheUbyRfGhSjNsmcaVgMarxuNWPB6cpW3tABE', '140.213.11.157', '140.213.11.157', NULL, NULL, '103.23.244.254', NULL, '2019-08-13 19:06:14', '2019-08-27 09:45:21', NULL);
INSERT INTO `usersOld` VALUES (259, 's1604526', '1604526', NULL, 'Najmi', 'Najib N K', 'najminajibnk@student.upi.edu', NULL, '$2y$10$HvJBNEMZC5Wa3NTv62nDr.zPZXjMmzzOTmOVlujmJzD4kWi4xR/uC', 'FSEueJdsUnt20vJj8ts5TMSktSmeAKG7LQCP79J42tSJJ7s5gfniQdxjxSc3', 1, 'ikYdDFqaTohHHiNh3zjencc6Ax9jYTdeHp3G8h603Y2yNGFO3ukFiEIYk2oeNYzd', '140.213.17.15', '140.213.17.15', NULL, NULL, NULL, NULL, '2019-08-14 10:20:09', '2020-07-05 01:07:01', NULL);
INSERT INTO `usersOld` VALUES (261, 's1306721', '1306721', NULL, 'Wahyu', 'Mahardhika Muktiaji', 'wahyu.mahardhika.muktiaji@student.upi.edu', NULL, '$2y$10$A53AdbExgYVFPlu4DRwc5OFCgvh9zEtDPG6A5I.1V12Aj7fsoFUeu', 'VTl8mwPdXXmFWKiIzajIrk3hSaH1sJZMHJICCzFcF9CTyCDweUxYcxZH2QGR', 1, '5jife7VAHJ3KPkZskLw2Gz3R9V7CTRXiBHu4nOyDPVQ7zqTunKyPBpX2u6SrmrqC', '180.245.120.57', '180.245.120.57', NULL, NULL, NULL, NULL, '2019-08-25 16:47:48', '2020-07-29 01:38:26', NULL);
INSERT INTO `usersOld` VALUES (263, 's1305901', '1305901', NULL, 'Cipta', 'Cristian W', 'cipta.cristian.woren@student.upi.edu', NULL, '$2y$10$lZ4n9QFDwRdSNgukEoIyt.tqSjuaU22EXNMyX14BF4Nx9NGzlyMVi', 'DlbzrMZEzghsmlmyl3iIym5O3Cxiqt90iJJURIFKPDSSKDfcIBeJeqC32POX', 1, 'PAg3KOe2v2A3auk8zGLYZrA8L0DGTAw1K3EFIIyAca6UsagwXB6ZQrx0ZXGPWJ4p', '103.23.244.254', '103.23.244.254', NULL, NULL, NULL, NULL, '2019-08-27 10:35:25', '2020-07-06 16:30:56', NULL);
INSERT INTO `usersOld` VALUES (264, 's1403380', NULL, NULL, 'Andra', 'Yovinda', 'andra@student.upi.edu', NULL, '$2y$10$LUGhF/dYweXnp2Nn6htORe3ZEISRGZd.hOOlyJZpIBPTncQnm8tqi', 'RkiTQ3cN1s30IrLdwCLL6ENhvwW6zR8eMNQpLdT8xaElOfffvY90UQLucMlL', 1, 'uhcE1z3RLhoOlH9cHBqDOGjyDeevOiJp5oXnVSnGzc3XfvXGWUxrwsXNw1E05Zk0', '112.215.239.102', '112.215.239.102', NULL, NULL, NULL, NULL, '2019-08-27 15:17:47', '2019-09-01 14:20:50', NULL);
INSERT INTO `usersOld` VALUES (266, 's1606508', '1606508', NULL, 'Mahesa', 'Rivaldi', 'mahesarivaldi@student.upi.edu', NULL, '$2y$10$M5GWmmfop3q5h.4vsF/uK.3gJoTLpo4Q26hcAWCRP/XbFIqiz1Rza', 'oQnHM4dhSRV0WgofmDbgT8QSHsJ31SDOVKshekLd0EiKSdwXCGcavVGxhkNU', 1, 'X12iqs7XYHWpAx3zgijfCQNXvvdMiOUHhIIWSwR3AS3Lo0gPpmWSAVzG5m5olkuh', '180.245.14.47', '180.245.14.47', NULL, NULL, NULL, NULL, '2019-09-05 09:23:40', '2020-07-03 13:45:33', NULL);
INSERT INTO `usersOld` VALUES (269, 's1500179', '1500179', NULL, 'Arvin', 'Maulana', 'arvinmaulana7@student.upi.edu', NULL, '$2y$10$DS6mBhxI/1m8VB8.Hcbyh.xgkmVJGdYHcuwwmpZSf2r46/G.YNM1q', 'ccai72zBu8Hv3yZ042PgvWBMVDvRn1IUBhY8ZvJrH6OCWa7xZ3JsvL1C2ZlH', 1, 'JW8ABhEqLolJnvcEaerYHg0wMhIJtmETXu9JwOmCZZ4VjDCqjU7QdF2HGxpmxq5a', '103.23.244.254', '103.23.244.254', NULL, NULL, NULL, NULL, '2019-09-07 06:12:18', '2020-09-29 07:56:06', NULL);
INSERT INTO `usersOld` VALUES (270, 's1600986', '1600986', NULL, 'Khaesa Ananda', 'Putri', 'khaesaaputri.17@student.upi.edu', NULL, '$2y$10$Bn/0tfRs2zb4oBuMKbq2j.htn9qL2Gzsgi1bk94xoB.c4v8j9Y6p6', 'wgqSuyXpHA9iuGijSqDzdf7uZhoDzg1Q3MTPEdfnAQgS6iqSIMZ4SHDJ6x6T', 1, 'akqhqPPPMfelYKY9PXYLQBDxjFxTFXwDiXkFwsUEm0kOPZrGZ6wbCX8l7vTSbyxo', '103.23.244.254', '103.23.244.254', NULL, NULL, '0.0.0.0', NULL, '2019-09-08 10:04:36', '2020-07-02 02:59:23', NULL);
INSERT INTO `usersOld` VALUES (271, 's1608203', '1608203', NULL, 'Muhamad', 'Zein Revolusi', 'zeinrevo@student.upi.edu', NULL, '$2y$10$hgh3rLoaHdHUGCO25an3pOfL2MkAiiTCDPZl.kDt7jyRj2GFSDc9m', 'noXTjniqgiBl0ZHsulN2wQ77e3vUiJql1QxHWdySgYIdEpHFzq2hV9ZFSUiV', 1, 'saimpZhhB3Z5KGGDXb0kBWqZCVFa2w6bHdGGWX2x2l0mZILsAQzCm3R84FPT3De4', '10.141.194.65', '36.71.234.223', NULL, NULL, NULL, NULL, '2019-09-08 17:00:26', '2020-07-19 06:54:55', NULL);
INSERT INTO `usersOld` VALUES (276, 's1602314', '1602314', NULL, 'Iva', 'Rachmawati', 'ivarachma@student.upi.edu', NULL, '$2y$10$WeiGA/oCzmIhRIxEwl88aONI6mmtvOJPuRLBEhQv9KAdoUy3LClAu', 'jwU6bNRnT2dVPLdzk47ADlRfppvgGAnAgWhK6tcI24Aj0QMZZQAlKnlczXnH', 1, 'Z3VHm2EWslHfZkJDo50TNIIdzzHWy4oanSLdMPUTRmdTMckrEd8tOsUwwkiUThvh', '114.142.172.20', '114.142.172.20', NULL, NULL, NULL, NULL, '2019-09-10 04:31:16', '2020-07-02 03:50:53', NULL);
INSERT INTO `usersOld` VALUES (282, 's1505737', NULL, NULL, 'Muhammad Rizki', 'Dwi Putra', 'rizkidputra@student.upi.edu', NULL, '$2y$10$J/diQGwx6MpjNl09DjYZD.ZwtlzWzmfTkp.kp2NYJCo4mGE4iGWmC', 'UUABciaaxIwalw5rzGRj9bSjQOpBgazgU4HNGFtOrHxUMJfsks2eiVk1uAtT', 1, 'NmgHFct5RWGmd8dfLRVemqH38c4p0eEPBE9JKAvPvvTWjYERzAdXnCzTglUxEw9k', '182.0.229.131', '36.77.156.216', NULL, NULL, NULL, NULL, '2019-11-17 05:55:35', '2019-11-21 03:48:59', NULL);
INSERT INTO `usersOld` VALUES (283, 's1500233', NULL, NULL, 'Muhammad Nur', 'Tastaftyan', 'tastaftyan@student.upi.edu', NULL, '$2y$10$AqYkF239RJV23Aaqrf/swuXlSfL74BD0wF7K0G6TPqyh/YbDZT7g.', '2kaJgUZkW3p2eQgx2Zd0ugpuYbrfUAt9YowLyIqgB1ZYQfHVI5ZGrQ3BRbjB', 1, '6dwrLkBt2p5AzoKR9QVCumFoH3vFhJlQEI0lpjS6ZXYF8DwDNjo2w5zuOCkhETtx', '114.124.204.65', '114.124.212.97', NULL, NULL, NULL, NULL, '2019-11-19 07:09:05', '2019-11-21 08:22:22', NULL);
INSERT INTO `usersOld` VALUES (285, 's1505886', '1505886', NULL, 'Niken', 'Tri Artha Mevia Putri', 'nikentriartha@student.upi.edu', NULL, '$2y$10$eGRBtG0W4EmvFDXiNNkFn.3RDvX9vIV6Gp49b/3ohHjBlvZf/xoR6', '5ejPOc7HT94PwsVykwOD53iXewcyXDGUiFPzzdlnNnLEgo8Zfrx1LnNMwEH4', 1, 'JtSQ41BQRlKrOp8RBRStlDAwqRxrQMGTkGSWoUXHTqO7uxEuF5bKfjC1pWyFv3LM', '118.96.239.3', '118.96.239.3', NULL, NULL, NULL, NULL, '2019-11-19 17:57:25', '2020-07-30 14:00:12', NULL);
INSERT INTO `usersOld` VALUES (286, 's1605527', '1605527', NULL, 'Muhamad Rafi', 'Anggara', 'muhamadrafianggara@student.upi.edu', NULL, '$2y$10$HrjF5kledIdf.GMQMdQgwuQxkud8NT.FTUL9nFm9GrgyU/pi9ChYe', 'ZvJbNhB7foY9iFGGg91Eoy5nkop2pssOtGwNB9qohcDbSWNpYtCu8yrQMpmm', 1, '61K1ULrlnJqD46RozItqrp36vUaZbwyFHCWDoh4Wb38oolbjxxrxYskjX9RVAfgc', '103.23.244.254', '114.5.212.107', NULL, NULL, NULL, NULL, '2019-11-20 04:58:21', '2020-07-02 12:44:23', NULL);
INSERT INTO `usersOld` VALUES (287, 's1603957', '1603957', NULL, 'Ghina Nadifah', 'Amani', 'ghinanadifah@student.upi.edu', NULL, '$2y$10$NrNdxFmpnAfG7Rp0NLiiIeWeQz5j7KVlDSVVq5fJyNads04s/yRiO', 'lfiCwQH9k20PwSABZbf8GQOQLSvXgg7mYd15ulwQna2PATzcbVHvXy8QZtaN', 1, 'l5tI302ZLFkcNOATstV72sI2TA306NMu1Hb73tcKfUqkMc6MFRNModliFAwfKaOZ', '114.142.173.28', '114.142.173.28', NULL, NULL, NULL, NULL, '2019-11-20 04:59:19', '2020-07-02 07:02:32', NULL);
INSERT INTO `usersOld` VALUES (288, 's1601874', '1601874', NULL, 'muhammad ilham', 'fauzan', 'ifauzan@student.upi.edu', NULL, '$2y$10$1GLIjIvHYquKhFkdT7pvgOlZ168f5vQSXmkNPXkIvQ6Unb2uG56Cq', '9ZZiqnC1oTUChToVyAvlsjiUHTCXbd5hmyoyUgK1xAu9YoptcRK24hqPZeE3', 1, 'Zz7dUFl6jCpM4cmxQKut1B4WpaWehhA32kGQRaBS0TDQQ60Tve1RKIpal2kIm82F', '114.124.206.129', '114.122.103.164', NULL, NULL, NULL, NULL, '2019-11-20 05:07:26', '2020-07-15 13:25:41', NULL);
INSERT INTO `usersOld` VALUES (289, 's1607629', '1607629', NULL, 'Slamet Tita', 'Sumarti', 'slamettita97@student.upi.edu', NULL, '$2y$10$cqaa1e0ql3JeWCM0dib5Ru/rk3yGzfNzfvQx.IrHReEGIb0QKKErC', 'fiIubCEoWDEFiJGckVt6596ZFlzqgFaLRh48QU3SktODP15ajFQ1RWwJHIZo', 1, 'naAxngw010dhx95nGUUvORd0aUy2lewkzOvDuG2LtIqzqcIxg7m0wBGfdkYPygaQ', '114.79.55.112', '114.79.55.112', NULL, NULL, NULL, NULL, '2019-11-20 05:09:51', '2020-07-02 17:06:02', NULL);
INSERT INTO `usersOld` VALUES (290, 's1600417', '1600417', NULL, 'Rizki Dwi', 'Purnomo', 'rizkipurnomo@student.upi.edu', NULL, '$2y$10$mFOGB/bYF9Yo9jadpVICk.XT3oapTYNQdfsZ6NkGBKat9GagsD9CO', 'VAqb02dt7FSWwwUrFRh9zgi2UmXNkSBp3Lusm94xlYrAKKoKFztqWjAyaG3u', 1, 'SneZfVeclULQlDfpugR8U6QIVuTAWLTheztIIhGhM9QoLVevQ0fff24csUH2uk0m', '140.213.20.10', '140.213.20.10', NULL, NULL, NULL, NULL, '2019-11-20 06:18:32', '2020-07-04 07:45:17', NULL);
INSERT INTO `usersOld` VALUES (292, 's1600149', '1600149', NULL, 'Arif', 'Mariyandika', 'rifayu.mariyandika@student.upi.edu', NULL, '$2y$10$XtI6paOUrOEl.YkiqBCvsOYVRNBEP9wkYcocUKZ32u3snggVllYDe', 'IyY4ujqPrPXiltQu7HLJ54UvKvj9zOIk2hNVr9saCL7xWHWklv78Hl8TNKGB', 1, 'SlQwcC5h6DyZdYcdSKUcHMRM64YjZPRfY42ED69EHrs73SuQ6KM0uXBcN2H9aViw', '160.19.67.204', '160.19.67.204', NULL, NULL, NULL, NULL, '2019-11-20 06:33:36', '2020-09-15 19:48:37', NULL);
INSERT INTO `usersOld` VALUES (293, 's1602146', '1602146', NULL, 'Muhammad', 'Rashif', 'rashif.farhan@student.upi.edu', NULL, '$2y$10$Iuuod6bCk0R.xMEGFbkI/OcE8HlG9Plu.OfVtv8yIhL30vMG0caIq', 'OQoezbnde7DTCAXxz24mXmpRxudMBqoqP4QBxPvP58esNeMlR20gNcjYMiEX', 1, 'Wktnhrrz8mZTAUa7swyasPpvXJwHaWD0bxfqizTVdC0zVXbYhyVIVVxZdBr5BZqF', '120.188.4.81', '120.188.35.252', NULL, NULL, NULL, NULL, '2019-11-20 07:11:46', '2020-07-02 12:05:59', NULL);
INSERT INTO `usersOld` VALUES (295, 's1607578', '1607578', NULL, 'Andrian', 'Andrian', 'muhammadandrian@student.upi.edu', NULL, '$2y$10$uVzUZuH7Eq8dJgu1qwc18.IPkMSiDm9qv6CYfDG1wxxIOVbTeCW2G', 'q6qJoTo2jqGAu5b2zviMiynpLKOqZrcMk5DSEerXT4F78gbcaeTmlrS7FTvp', 1, 'DxOQyL5KFIrq2GUO30eNMHD9YmR0XULZjQUq95SjyldR8V0Eg8ZUcCLhEas3Sofn', '103.77.48.121', '103.77.48.121', NULL, NULL, NULL, NULL, '2019-11-20 07:17:15', '2020-09-13 16:57:51', NULL);
INSERT INTO `usersOld` VALUES (296, 's1600846', '1600846', NULL, 'Eka', 'Putri Fitriani', 'ekaputrifitriani24@student.upi.edu', NULL, '$2y$10$umHFoz9jq8MGYWflSDV9NevEWZKr5Cv1d.XJAW3UisCiww8/Z1gna', 'PDExHYAtk0fqoz7hu1omv6OKzAd8vjHps3fsIs30ZEpEpeIbz9iRJaD4isJC', 1, 'CmuoKTin4uQV6EAXx2FIlyoBl5adB0hXpucb06U55qVCHmJSxngRt2RhN7uK4i63', '114.79.55.176', '114.79.55.176', NULL, NULL, NULL, NULL, '2019-11-20 07:18:32', '2020-07-06 16:50:36', NULL);
INSERT INTO `usersOld` VALUES (297, 's1601109', '1601109', NULL, 'Triska', 'Junita', 'junitatriska01@student.upi.edu', NULL, '$2y$10$7Zi4O1tVIDbtJ70QQSBZqe.PpP4dXweyavhEkbYmKtjFBmXJbbUvW', 'hp8HTMSHUzZo57KyVwMZvEOftk6LpupjCIYtYdkpitWGX7oopnNlj52PUMKb', 1, 'W8Bkwtv7G2DbtqvsD0aCyP4Rn4hKV9Orf4Ou8ZUM17tpruZYtUHIS5ZBMWQ7ZmqZ', '112.215.208.74', '112.215.208.74', NULL, NULL, NULL, NULL, '2019-11-20 07:18:49', '2020-07-05 05:12:38', NULL);
INSERT INTO `usersOld` VALUES (298, 's1602342', '1602342', NULL, 'Ai Asiah', 'Nuraeni', 'aiasiahnuraeni@student.upi.edu', NULL, '$2y$10$JDtBd2O0oHpd1IrY9ZG4BuI508xehkCLA9v.5dbww1btdeqPgGCOa', 'sPjl5IhFuqnMoJJnVVp1n9vjmn7HNh3uChCoEkOjy1Gf136nbZg0gdadAiYy', 1, 'h8jjQNePdkSjbtIFu7ehBTS2jQrKWWlHbjNYiLoDisgK1PJU9PzWidKBUUCdNB2I', '114.142.172.50', '114.142.172.50', NULL, NULL, NULL, NULL, '2019-11-20 07:19:31', '2020-07-02 02:41:51', NULL);
INSERT INTO `usersOld` VALUES (299, 's1601051', '1601051', NULL, 'Hilmy', 'Zaky Fauzan', 'zekuzek@student.upi.edu', NULL, '$2y$10$JS7bGA44HjJxAteIFwJi8eQIqquj71eBY009geWpA.c16OOjNaYXu', 'Txm4b8VrZNdObXjGnqxWaivLHSlIGJ8n8vCzr4HWtZQqQIHTv8cF2ihB6LCX', 1, 'CiDDsDGKVoutqKZWQPEPsurWqSsjOaJmE6DAjU5FExZNTkcBmguGjaU9z0tLokLc', '114.79.55.179', '114.79.55.179', NULL, NULL, NULL, NULL, '2019-11-20 07:25:21', '2020-07-02 16:13:16', NULL);
INSERT INTO `usersOld` VALUES (300, 's1603886', '1603886', NULL, 'Falah', 'Khairulah', 'falahkhairullah@student.upi.edu', NULL, '$2y$10$ziXO948..Ev5LFDC5iVzfO1zo1R4umYsHpZ95B33iiM/OP21Fnwv2', '6dBJMAu0IDnkh3GsKQUNHA1kzpXhfuzxsBcv8oDEO5WlpkkqUkscBcai7ApT', 1, 'BwAljnj5V5pqu1aa15yVxFi7KR8PKIqsrRmvzrAY3kos7N8TkClCE1Mq8j2jQcmu', '175.158.52.16', '175.158.52.16', NULL, NULL, NULL, NULL, '2019-11-20 07:46:57', '2020-07-07 04:23:23', NULL);
INSERT INTO `usersOld` VALUES (301, 's1606292', '1606292', NULL, 'Hendra', 'Fauzi', 'hendrafauzi@student.upi.edu', NULL, '$2y$10$VaJdnCXaCkd9Mp73jv/w/.gYRXFupwgIQ1AVWn59oEb9jxqhy4DYS', 'kWbSw2EK53TSVfxyMl4ZbGvGQugO1Hv44uUQwi49Gdcd5Gn9dodRoSSi7Xx5', 1, 'Y9ASK7BdPI4XqAQAm1IpwqbJw6bTFNFS1JWU7L4Q585SxhAyJZpYVOjtFgdEg9hQ', '180.253.226.164', '180.253.226.164', NULL, NULL, NULL, NULL, '2019-11-20 10:56:03', '2020-07-03 15:34:45', NULL);
INSERT INTO `usersOld` VALUES (302, 's1605878', '1605878', NULL, 'fajri', 'kemal zaeny', 'fajrikemal@student.upi.edu', NULL, '$2y$10$q2SrL0PKErG8k0781w45uOPJa05aU8WVSSs2yziKppJ3ccUBnD4VO', 'MdbRYHx62BJ1y4JDu9lmJOMQEWiqSfUZyz57wuVxZcI85vDJP8Jk1sCod5Xe', 1, 'MCFx3yE1RaWfZLdFQSmi9x7bUNeroFU0iZpxPNBLq2Q6ccR12LUZSpJ3GkadKUG8', '125.163.25.13', '125.163.25.13', NULL, NULL, NULL, NULL, '2019-11-20 12:56:25', '2020-07-04 09:40:06', NULL);
INSERT INTO `usersOld` VALUES (304, 's1504582', NULL, NULL, 'Maulidya Ajeng', 'Yulvia Wibowo', 'ajengmaul@student.upi.edu', NULL, '$2y$10$gnIdRqVBqeYIa5trTK4SxuLmFDY6hLa4FsqMMWsW.btGgE.erJiKa', '5b4I4T2B7xNec49O9bdRDdazSS4qvtWjX7pDFhXOHxhNEphag0DWIaU9RTpU', 1, 'osQyr4hQflgXhHV3uptwxd2O31QWw1HUuzcPT62903aHe13J7OFJqbcVaiygOhGQ', '140.213.23.196', '103.23.244.254', NULL, NULL, NULL, NULL, '2019-11-23 06:23:45', '2019-12-10 06:51:57', NULL);
INSERT INTO `usersOld` VALUES (305, 's1606041', '1606041', NULL, 'Naufal', 'Taufiqurrahman', 'naufaltr@student.upi.edu', NULL, '$2y$10$7jn5Y.2dags4gayqgrvK9uMal7Foa.Z3zRTjcO3ZDQHyZ3mjooV6i', '4GgwmaWBc3akQ9voiOrDxBNJXknBHRIJZ27DlFpSHA8oqw9JrtAsH15SJTCc', 1, 'sRZil0eaauZU3sTLncTG8n0evxnNp0UbgWSUCpn31xVkHVLecSOM1PnPAjVePOpo', '114.5.145.20', '114.5.219.132', NULL, NULL, NULL, NULL, '2019-11-23 11:22:58', '2020-07-17 05:51:48', NULL);
INSERT INTO `usersOld` VALUES (306, 's1606388', '1606388', NULL, 'Hendra Rangga', 'Fahreza', 'hendrafahrezz@student.upi.edu', NULL, '$2y$10$aoP0sdryvyvnyLPN3xfHC.0yapnt0GKc5K2FI9MEm1huBQoJPC1P.', 'sQUkSjUCt13vVngS2C5040OkLX88AUwGQsl5FWUJRlJQXQNeNhubHWtSjnAu', 1, '85xshRCR46RKxIdJ58XUOxg41pnzq9eMyvkxTkFwEk8ChBTjjrSR8QsnRSwbDMJC', '114.142.172.62', '114.142.172.62', NULL, NULL, NULL, NULL, '2019-11-23 16:00:25', '2020-07-03 06:36:52', NULL);
INSERT INTO `usersOld` VALUES (307, 's1601375', '1601375', NULL, 'Aditya', 'Mahendra', 'mahendraaditya@student.upi.edu', NULL, '$2y$10$BRgZ36Thk0Oz0krHoNcyIO/KrzjTJ9FHyjLB8HE9UQQFE8NtpuQDS', 'CcmBh22VjLKIHUxh1pYnpRxMMeE7WedUDWmeiyyrjkKstLzj3fkfjfsJHQnv', 1, 'vtGRIzW4yHA5CzAEtMJ64jGuDgrVKlid28vunbMm9lazcYVa949azDeAgtdo6mWB', '125.163.91.83', '125.163.91.83', NULL, NULL, NULL, NULL, '2019-11-24 05:43:09', '2020-08-14 04:14:41', NULL);
INSERT INTO `usersOld` VALUES (308, 's1604109', '1604109', NULL, 'adam', 'sutikno', 'adamsuryas@student.upi.edu', NULL, '$2y$10$7/7xgt6K0NkmI.Wn4JoUa.xU2mvGYeYjc1naqHq.cdVEkTjlSPp9C', 'Kh1E864g66U92RnxQZyobvpUoc6k0ef1lK7evqOeFVKTpTAUGh7EYgXPpKyd', 1, '9V8WPsr5jQPPQiDPL90gLNFurDg93gZO28zl4nqkr8lIoYXrMHy6ikGL6MOJa3oY', '116.206.14.62', '116.206.14.62', NULL, NULL, NULL, NULL, '2019-11-24 05:46:04', '2020-07-02 11:48:08', NULL);
INSERT INTO `usersOld` VALUES (309, 's1603612', '1603612', NULL, 'Mughni', 'Ardhianto', 'mughni.a22@student.upi.edu', NULL, '$2y$10$XDE93hO.44DCqQ77Jmvxg.8E2B6V15B9XDSUAcv4fUWGuFNwq.bia', 'hyOVp9ZkiXaPFUxqvshGmnHZN7olShNDO1a00cpwjfcRsTN8dsk0TxGRlyxC', 1, '65mHrv3Ka3zzLEWk0BK5po2vAcG5gWj2vW9DSV4qTqLLObl8PiTZ1bSxMlRjH1zH', '114.122.105.201', '114.122.105.201', NULL, NULL, NULL, NULL, '2019-11-24 08:06:31', '2020-07-03 15:06:15', NULL);
INSERT INTO `usersOld` VALUES (310, 's1606984', '1606984', NULL, 'Andi Disbuhadi', 'Mattupuang', 'andidisbuhadi@student.upi.edu', NULL, '$2y$10$OkS.1fl3DSWiID/OKf3jaujuceUCPO0K0QJjymJvFy0A4y5hQp4Iy', 'c390hzownrxEGrZtMbRSvLcbBAFBmMKOy09Jw0cQncSfQUe4OZS7TMaEchmp', 1, 'DXcedMfzdx1uq1Jc6Kvjb7iaeMUUOk1OOmLcP7zm3o0aUBe1ziEGOoSUtriT64Is', '116.206.14.33', '116.206.14.33', NULL, NULL, NULL, NULL, '2019-11-24 08:10:12', '2020-07-03 03:10:23', NULL);
INSERT INTO `usersOld` VALUES (311, 's1607148', '1607148', NULL, 'Tomi', 'Winata', 'tomiwinata21@student.upi.edu', NULL, '$2y$10$7S849KpCkxkUqrKYKuooaOZMzYaA9/KTBddRmeV9Iiw6wKx.Pe96.', 'AtpPOfaZQ0jOr0iF4QZehU1GF0lkrL5wNrOl6N2YTOaIKjWDIPxd26mYBs4k', 1, 'UNLgwaqzvz3FSM9v7ud0vTaGOelCPYCugQmR3IZ7424VBX25SbIBOAJwJgZlaJFM', '116.206.15.13', '116.206.15.13', NULL, NULL, NULL, NULL, '2019-11-25 08:16:59', '2020-07-13 19:21:23', NULL);
INSERT INTO `usersOld` VALUES (312, 's1607636', '1607636', NULL, 'Imas', 'Devina Fatonah', 'imasdevinafatonah24@student.upi.edu', NULL, '$2y$10$ngFMphMA0m0bW/J1EfwiqeK6P1ZWkPHxSnK4mKQ/2qdcXAjfLFdYe', 'ftcOaKn72f6Cyr3sVyiyA0qXxe9eAr2ajOpLnKqAI8Auux8T9RM6Pp9BIAk7', 1, '1q91oMjeOFDjlsUfgRrs1FOVGkPZBnlZQidHbl4ZE4iXHA12IHuGW5OJMmyFsH5N', '103.23.244.254', '103.23.244.254', NULL, NULL, NULL, NULL, '2019-11-25 09:22:45', '2020-07-20 01:56:24', NULL);
INSERT INTO `usersOld` VALUES (313, 's1605487', '1605487', NULL, 'Haekal', 'Audi F', 'haekalaudi@student.upi.edu', NULL, '$2y$10$4u3wlxf1xAIVMDDITXh3pucNvWp37jNJHzNnfLcvC.ELZz7piX5Ku', 'xOZfcqp8wfotdiM74gNsxlAmfoQXxQwj9VrIotOpkrZ8DjDszQ0Jit1R12Jz', 1, 'NFPfpa2cqJM7YAkcF7Pk4NGw41XvK5t01hY3VWvbIRC1on3MD0JX4GchP8jGzYfx', '103.23.244.254', '103.23.244.254', NULL, NULL, NULL, NULL, '2019-11-25 11:25:05', '2020-09-13 10:51:37', NULL);
INSERT INTO `usersOld` VALUES (314, 's1606233', '1606233', NULL, 'Muhammad Aulia', 'Rachman', 'oi.aulia@student.upi.edu', NULL, '$2y$10$XFVY5S1ITCi4qs7uiTpbAeqY69rWZHfubw1r5nmPhlDiy.SPqEWmS', NULL, 1, 'TSu3RRaXPiLJ9yinUEM7G7cdO9HxLF3jifhGUlAtpvn674haGC7PMzOxCB7zBpeo', '120.188.64.156', '120.188.64.156', NULL, NULL, NULL, NULL, '2019-11-26 12:33:03', '2020-07-07 11:24:50', NULL);
INSERT INTO `usersOld` VALUES (315, 's1601121', '1601121', NULL, 'Rifqi', 'Taufiqurrahman', 'rifqirahman@student.upi.edu', NULL, '$2y$10$F186Nu5K6EadGKNrVt29JuT1whwIqxEsGelQy/poLx.b0moo5U5cG', 'ml21uILkydsZ3wQCV8POYuiqqoODDJOIv1kVC3eRE8qxbmTDiUGUhkxdEuIp', 1, 'qwzxaE9wFuFUgVLTdPY8HJKsDAruV7Tyh2cR0BG4UIc1vVLNKwNMKsQCCckOgNGj', '140.213.8.100', '140.213.8.100', NULL, NULL, NULL, NULL, '2019-11-26 12:35:37', '2020-07-02 02:25:38', NULL);
INSERT INTO `usersOld` VALUES (316, 's1602157', '1602157', NULL, 'lea', 'naufal', 'leanaufal@student.upi.edu', NULL, '$2y$10$bIp5ExykObeHryXdE6OCNuRQmgVbx1VynRs5W6wlr1.g0gQczEOHW', 'x7NNAg94JqibS2lP9e2LVmZQWyumSa254fdEyuN7QCcy1C0St4Zn9BbFxuXM', 1, 'fpWJFlhyInu2TOiG6ci5nk7fTUzEohIQl572n8d4FqzfvZJUWmQN4jm1Ixpq4ofa', '103.23.244.254', '103.23.244.254', NULL, NULL, NULL, NULL, '2019-11-27 04:07:31', '2020-07-06 15:12:50', NULL);
INSERT INTO `usersOld` VALUES (317, 's1606251', '1606251', NULL, 'Rizki', 'Rachmat', 'rizkirachmat97@student.upi.edu', NULL, '$2y$10$BBmJJTeecrakGtvFOrtADOdi02ReTMFnYZjGGOyRynOnc8rHVl.ye', 'tHY1ioYGoGHDUn4UccDwpPwBvn0q5F2jLcIkYTRQBCo7AEN6oIvHrflCd1aU', 1, 'VqBANrYBstU82nDmtFtWEUyQ0SFnBW5bBeCEQa5M0DSjNxZeE8QeIoJkr6NWStjx', '140.213.18.172', '114.4.82.108', NULL, NULL, NULL, NULL, '2019-11-27 04:10:11', '2020-09-13 18:23:12', NULL);
INSERT INTO `usersOld` VALUES (318, 's1607638', '1607638', NULL, 'Sukma', 'D Madawangi', 'sukmamadawangi@student.upi.edu', NULL, '$2y$10$7AT/nBW6zBAkJKVDXBoMWeX4er8KdBG5OEs8KMKXHciNRnuyd00qq', 'AGrX0TtxvjChV0EBhHtpMqwPs1qItmgndGLyAl5phSuKQxQkTffiTNPnQ2PN', 1, 'lUoypMHyztkcGCAyWt3Wd7gD5vrJOHPhjMaLEEOBxeSJtRHsQPQQh37YPkqUNmam', '114.79.54.207', '115.178.205.97', NULL, NULL, NULL, NULL, '2019-11-27 04:12:07', '2020-07-10 22:46:05', NULL);
INSERT INTO `usersOld` VALUES (319, 's1608208', '1608208', NULL, 'Wahid Fathoni', 'Sagita', 'wafaputera@student.upi.edu', NULL, '$2y$10$dagHBJwsBtrKagzT1e0ek.DUCWsS3zAyuAIdMyqlxJiuYg7985XBC', 'TlMGz2Tvl77D1u2M3OSHPJKsjwHBWci0n7Zu0mZX55ehJCi2ktmeVjHK6jZR', 1, 'K9kOyToU1BDomywNMzJS2o6VspCI7OoteupAs0BtaBGYMN5bGFxLDoaoSXzCeygf', '114.79.54.15', '114.79.54.15', NULL, NULL, NULL, NULL, '2019-11-27 08:31:56', '2020-09-16 17:26:01', NULL);
INSERT INTO `usersOld` VALUES (320, 's1600046', '1600046', NULL, 'Aji', 'Wahyu Nugraha', 'ajiwahyu9b344@student.upi.edu', NULL, '$2y$10$.nNCA2hdFVppSE7Q/GyxTOZGLWShTJiGjoqZsBNYYLGR..BomjnCe', 'Zl2mlRLF8zzxKtpRC2UGr8jCHBIX2iwlYzQPUYqXZgEd373S6mgalCOOzRpe', 1, 'TQdHoYPlN4UYfnzneIEHmIiQpiy8w1i7KAaOoP54kWEzBclCSaYRbUVYDllAyVQE', '114.142.173.62', '114.142.173.62', NULL, NULL, NULL, NULL, '2019-11-27 08:32:24', '2020-07-02 02:37:05', NULL);
INSERT INTO `usersOld` VALUES (322, 's1604974', '1604974', NULL, 'Nedya', 'Ulfah', 'ulfahnedya@student.upi.edu', NULL, '$2y$10$zBPFFHDg6lnR.DtXBUjLaeRUz2dtSK5CeCvoS5u4q382A4PZKiC0C', 'Ii8dJJAyWXXOqg8Q8aWqCADv6uSCdDG7adwirkCe68QtCQcNzkTpItitKWCb', 1, 'RE29V5ftmPTVUmOjgULU3jftZciDBHDWPsgMZvgXILdI1iiQq9kyIW79eTRgKffA', '125.163.11.135', '36.71.234.205', NULL, NULL, NULL, NULL, '2019-11-28 04:47:36', '2020-09-13 23:05:20', NULL);
INSERT INTO `usersOld` VALUES (323, 's1601420', '1601420', NULL, 'Siti Nunung', 'Nuraeni', 'sitinunungnuraeni05@student.upi.edu', NULL, '$2y$10$6AXvhNRDAf/0YyK6xXFcfeYU3xCS9S/FXDs6vjqgu/SVWUzddDzrq', 'LQ35CMaa6AuSiwHAme4ve55SjDS3xYkEzuITvnlFiwZlE60pmjr5sPZwfqSM', 1, 'WzW31wgSjTdhVnSojeXblXLOn3VJ1mS0QudhLTtGVk9sNqNn3hXA5elyTmyvaYBp', '203.207.57.239', '203.207.57.239', NULL, NULL, NULL, NULL, '2019-11-28 04:50:36', '2020-07-18 23:10:31', NULL);
INSERT INTO `usersOld` VALUES (324, 's1601112', '1601112', NULL, 'kukuh', 'putra', 'kukuh27@student.upi.edu', NULL, '$2y$10$mTkowBTagXlI72qhUCJEJuFIg0uumERhFYBlDdZf2xlJKrp16TP.2', 'Qtb9LSMUyGkQs3c5VcxOnU9uR5u81WMAxi9pYiXyXdJH3FJa9UzA6eZySfC3', 1, 'xZpaYNi9SpNuEjmuV2TkryyKzhZaB6daiYW8z7rh4QLn3G3sjujVj3k9l7YlPV7q', '118.99.93.64', '118.99.93.64', NULL, NULL, NULL, NULL, '2019-11-30 06:15:31', '2020-07-08 07:40:50', NULL);
INSERT INTO `usersOld` VALUES (325, 's1500554', NULL, NULL, 'Novita', 'Sarih', 'Novitasarih@student.upi.edu', NULL, '$2y$10$gIi9JTZGd8XRMJIkwMpDEOsvSIpgWxjoYCezMdxzqDQr7Bf1jjCRG', 'T4xC1JHLnJaA9v4PnIW9TS7B9qfg7Q6QMMTTOtzUsDKth7AgxMe88X09eRtF', 1, 'XmrCt0lWOOyrTXaIz0upfBmqiuumlT0eaozYsD4Bn8Ng8MOhjJBy7S8KdoD5qkjx', '114.122.71.44', '114.122.71.44', NULL, NULL, NULL, NULL, '2019-11-30 06:25:13', '2019-12-09 10:54:50', NULL);
INSERT INTO `usersOld` VALUES (326, 's1302017', NULL, NULL, 'Rizqi', 'Adri Fauzan', 'rizqi.adri.fauzan@student.upi.edu', NULL, '$2y$10$R4.ZhvbaG9pai0eEpFG8NeXDJLsNuwtEphmcl50Le71j91aV6wp2q', 'E2pFAMFzS8wlDzxJQYGcmQ4tsRpmGSLR1PXmDcradG7MJozqyqkdmCmSdUOB', 1, 'aNTEv4gxNSB94LnYYHXN5JLymCRj4Ui96a9ezizPUtYPGnWs1yJ07GYZlW8njyqE', '103.23.244.254', '103.23.244.254', NULL, NULL, NULL, NULL, '2019-12-04 03:45:19', '2019-12-04 09:29:35', NULL);
INSERT INTO `usersOld` VALUES (327, 's1608212', '1608212', NULL, 'Ilham', 'Ramadhan', 'ilhamramadhan06@student.upi.edu', NULL, '$2y$10$FyI3vMD5xVLjW4JSCBSFhu9p59dZHhKDokAGmfBGry9Lt62Jir6Ty', 'OS5sGERx9I50p7gxiSUa7xHVOm7ph8BVYufrgJ42V0Uqw3ZQhfilKACklAg4', 1, 'uVFeUVYooeDeXYG3cestazBFN1szI0MsYUFzRPDdp4x67sKhbFnzK8oWg22tpaz4', '140.213.19.129', '103.23.244.254', NULL, NULL, NULL, NULL, '2019-12-04 05:46:53', '2020-07-03 06:28:24', NULL);
INSERT INTO `usersOld` VALUES (329, 's1601183', '1601183', NULL, 'Indah', 'Melania', 'indahmelania@student.upi.edu', NULL, '$2y$10$RSN41wE2ezZo/m1BV3xcfemHSyu45laUEskyHh3fzEPXb4kqfSY..', 's4BN57lClOxWTzk1f9nQ7iqQk8XmFwlf2brdMrDrMna2LfQlV2dH8AcOWiLm', 1, 'UbL4NfTFJXfkJoLLh9vQWDuCBRPv8AJi25I6hltP5SoThNDqwoqS0LsNAkEWPimb', '202.80.218.65', '202.80.218.65', NULL, NULL, NULL, NULL, '2019-12-04 06:30:25', '2020-07-02 00:17:50', NULL);
INSERT INTO `usersOld` VALUES (330, 's1601897', '1601897', NULL, 'Ayu', 'Azizah', 'ayuazizah@student.upi.edu', NULL, '$2y$10$qWZ2fR14EYFcSfIhCJjf9u8ddf.fCK4l361BxHJ0hIys1s6b1HOLy', '0rGCizexaZx7ShQLaww7UsNqRdaOXgs4noDJtn0ESvs8PSx8H3nfO8Nil4Ip', 1, 'noR3UibzUlal7vNSzpWAG1TmRhgpHSzCqbRiZfHhwLxaZn0PfCTnCeG98zHSd6Hh', '36.72.109.97', '36.72.109.97', NULL, NULL, NULL, NULL, '2019-12-04 10:37:37', '2020-07-01 23:35:33', NULL);
INSERT INTO `usersOld` VALUES (331, 's1600103', '1600103', NULL, 'Ripan', '9', 'rifan@student.upi.edu', NULL, '$2y$10$pdj07e5DUmSgQNzHVFEMzOwOAFck1fCRUVkzcO2fWDsg1H7676QE6', '4qFEATpgqebDq28m4HPEjrJotS8VAMxt5yZtrIt6GdK9EyM73mcaBQ2sz0l6', 1, '2imjQKtyR4emzjxdxFypVvl49Yu4eoSUfI5EaNOTRB0xXvUgDkgXIWLhkZv8yntL', '103.85.123.32', '103.85.123.32', NULL, NULL, NULL, NULL, '2019-12-07 06:10:33', '2020-07-01 20:08:40', NULL);
INSERT INTO `usersOld` VALUES (332, 's1605762', '1605762', NULL, 'Robby', 'Fauzan Jaelani', 'robbyfauzanjaelani@student.upi.edu', NULL, '$2y$10$6Uv5ROjfWNoL2vhf6e9ME.cEy6utgjTQmnFmYLdxhxKLjN0pTzh2.', 'pttmvTUgWgNmOUUd2bGtggIi1F1zCQTOQnfg0E8TcAqRb92tr95uerkbeVbY', 1, 'mIQknl2zATx32nPvgGPSt21ELRH9OLC5APiASpLsaXT6lJ34j0d8bONqoRhNN4P9', '116.206.14.24', '116.206.14.24', NULL, NULL, NULL, NULL, '2019-12-07 08:41:49', '2020-07-03 17:58:15', NULL);
INSERT INTO `usersOld` VALUES (333, 's1705661', '1705661', NULL, 'Noval', 'Dwi Jayanto', 'novaldwijayanto@upi.edu', NULL, '$2y$10$0KOzpBUvbFC2UobjZiR/.eE3UE1Nx93QO3QOadPy/HwHDJ/o48zzS', 'qOVLtLsuQ7FkXvSmpD8jQnsCd9v2iJhU3jIAXoJpXIyfnrSaGqh0pxoODPzY', 1, 'h7aEYUPHvyYjtJO2SGjRbnpGUTbxkKH7nvetILuXNR2qXgxR7JFeEZQ5mEizwOog', '140.213.52.29', '103.23.244.254', NULL, NULL, NULL, NULL, '2019-12-08 10:18:31', '2020-09-14 13:57:32', NULL);
INSERT INTO `usersOld` VALUES (334, 's1701824', '1701824', NULL, 'Lutfi', 'Akbar Pratama', 'lutfiakbarp21@upi.edu', NULL, '$2y$10$2kZuxCg6BQPFNQJSfUKE.uB2yet8Dev4KyuELLMlQJq2OXQ0p0gLW', 'XZZUt5WNFxpYesUvTytxii6iCA85xhPG6kQtuk9ZoA4Pw65221HxWan4PsE8', 1, 'x1xFDrjYZLFP2Xk9dKsNXLj5R4KTqxufzEOrmqRi5pxyyuaOfGNCVDltl3NaP2m4', '140.213.52.29', '140.213.51.209', NULL, NULL, NULL, NULL, '2019-12-08 10:24:11', '2020-10-06 11:04:45', NULL);
INSERT INTO `usersOld` VALUES (335, 's1606053', '1606053', NULL, 'Yazid', 'Arrafi', 'yarrafi@student.upi.edu', NULL, '$2y$10$VOG1noy4bqbVWT2MtgjPqe8XzZ5zz9lzzKxJFYLJDlmRa0dHGs0yG', 's5zpoKbPgBc8bEcrww51JBr1u9l1cEb9gcsmkBa2YLLaxgOSjhkvPdr2JCAF', 1, 'IRkr2qDNYV0pd9RoCYPWQr9lgb1yTjQvuFViq2zoaLxzGIWDLdA2WtmUwTk7a7SH', '120.188.73.34', '114.5.217.223', NULL, NULL, NULL, NULL, '2019-12-10 15:11:36', '2020-08-11 09:07:27', NULL);
INSERT INTO `usersOld` VALUES (336, 's1605490', '1605490', NULL, 'Richard', 'Sambera Sagala', 'rch.samberasagala@student.upi.edu', NULL, '$2y$10$zXm0oBSyJzw973LzNY2HHuZ3Y1D8X.JeocxCAiIBFFfk6w2TVOb6u', 'Nrb00FRr4cRJAHjs3AYNlkrD41n7U8rC67Tmp0IHQM8TKvSbnVDF7Kv7K7pd', 1, 'RsVGUjxKP9Vih3EeRSsoGLoXZrKpnEvi6U9jtFZX4qi6SkVt1WcvOYpOFaM5eVIR', '61.94.135.13', '61.94.135.13', NULL, NULL, NULL, NULL, '2019-12-12 17:34:03', '2020-07-02 00:36:29', NULL);
INSERT INTO `usersOld` VALUES (337, 's1601218', '1601218', NULL, 'Fidyah Niqo', 'Sabri', 'niqosabri@student.upi.edu', NULL, '$2y$10$SYMy2EAnLxDRVRfmeqPAreRZK.bX/mOwshKQ/9Esg0QmZY/NqlKFq', '4qmAaaChRxi5b7I6m9nqne7EBGnivyAOB5oqaC5LNg6juc5jmscVV8nyG02V', 1, 'rNkeaOKRRMLecd0l0vAFByioSpwZdsT3OI3escJrz1tSs9970cqw10q4NtKdSkOo', '192.144.92.54', '192.144.92.54', NULL, NULL, NULL, NULL, '2019-12-13 15:33:49', '2020-07-19 09:31:40', NULL);
INSERT INTO `usersOld` VALUES (338, 's1601016', NULL, NULL, 'Hilmi', 'Hamdani', 'hilmihamdani@student.upi.edu', NULL, '$2y$10$zieoBVeFjk/1XJmlJkfGyeVjdUbvEz6a97sDQM4iiKmrBFZF6q2MS', 'ErjW089lJXdhbgRncKiNQQuFD0YgSyVFqM7bQbyMMIK1y7SuDbv8ysjpop9G', 1, '0A7kYZrGnyrdJ6BNmXoCZUHf6abUiGtIm8qi9HuvckkkEuuU8rTvd6VOtwill1jr', '114.79.55.167', '114.79.55.167', NULL, NULL, NULL, NULL, '2019-12-14 04:45:21', '2019-12-14 06:12:52', NULL);
INSERT INTO `usersOld` VALUES (340, 's1203168', NULL, NULL, 'Ari', 'Kusdinar', 'ari.kusdinar@student.upi.edu', NULL, '$2y$10$HfTLzZ.5AEt5UAkTzO20Me9.P2XR4/V1Au9Z8xc/ML8vas3NAnxFG', 'HBemVqkcrOSAGLRRJijkMYMzcVZhSIBUhutaaYatq6omzzMb6kYU8jIOdAYP', 1, 'MKt8lhiLybUfn6J7ThVEmV8W6P1U3fXeXIUr57jnyDgCZUTc0vs2ayD1lzeEhmlc', '140.213.23.49', '140.213.23.49', NULL, NULL, NULL, NULL, '2019-12-14 05:50:17', '2019-12-14 06:21:22', NULL);
INSERT INTO `usersOld` VALUES (341, 's1600363', '1600363', NULL, 'alvin', 'renaldi', 'alvinrenaldii22@student.upi.edu', NULL, '$2y$10$.NqbDrim7uMgxgZqILeXheEWMP2Pnm6awp2KT8iGANH2uhrjXBwAO', 'DgofXz4WUpH7kgABwYw5kKmV7Ky2qWyC4RNbfwOZMWRKvX9bGX6MooG6axVC', 1, '76Jwn4uhXHnGOlb9wsjPbJuvDeER3Ma5kwp6FVRxkUJ06Qrva5BzVzVFBVbtniut', '103.85.123.32', '103.85.123.32', NULL, NULL, NULL, NULL, '2019-12-14 05:58:26', '2020-07-23 01:00:50', NULL);
INSERT INTO `usersOld` VALUES (342, 's1602348', '1602348', NULL, 'Mochamad Harland', 'Pradana', 'mcharlandp27@student.upi.edu', NULL, '$2y$10$5BZ1id7cE5xAGSbvSLZYK.UqL65sUEMyv/6sxcE9Lo.Lf1xKSaLIG', 'zViASnIPlZ5CNJ7CheKEszE71vr1tB5FosGLqcks8N9pVW7J1zqk8j9D2xnL', 1, 'vuvcTpMygQ50TZbCBiax94KTKkHlLQkWAxD0gvmaOfikcTYxetjYFfjvooC95gHa', '116.206.14.4', '116.206.15.42', NULL, NULL, NULL, NULL, '2019-12-14 08:49:11', '2020-07-19 01:33:09', NULL);
INSERT INTO `usersOld` VALUES (343, 's1604423', '1604423', NULL, 'Yaumil', 'Maghfira', 'yaumilmf@student.upi.edu', NULL, '$2y$10$p3KOBKzbNEE83EPV6WxA5elbIZkchoTKUQR4iM9/n30AUw3L4vjtW', NULL, 1, 'FqslRAJfFl2afCqQz4x5FpkpQiUMDdudSAgRzHKKNJlFVKwApPKvUIRZam3gmpvH', '114.122.105.77', '125.161.29.62', NULL, NULL, NULL, NULL, '2019-12-14 10:20:44', '2020-10-16 13:17:26', NULL);
INSERT INTO `usersOld` VALUES (344, 's1607011', '1607011', NULL, 'Bayu Ihsan', 'Nugroho', 'bayu.ihsan@student.upi.edu', NULL, '$2y$10$xsLl1APncNzOY6E3ZE9MmuRtBgpboXRzUP7eA2hbMagFsTT0VFAvO', 'fMqNoBxik83MHAlGNapeMeU1p49isPNHc5hYux9didzdV9d2biJwuuZOJbN2', 1, 'GHciIPJxgAJ788f84sF6d4gTNiJFRerv46K8CwSPrFu7A718M3mRLYqVqpwd5WAq', '36.71.233.227', '36.71.233.227', NULL, NULL, NULL, NULL, '2019-12-15 12:58:01', '2020-07-02 04:43:48', NULL);
INSERT INTO `usersOld` VALUES (346, 's1304138', '1304138', NULL, 'Mohamad', 'Maarif', 'mohamad.syamsul.m@student.upi.edu', NULL, '$2y$10$H4Eal1AakWUuHSS5N8uFyuJEi5RMCVLHIGfFNvzX7wcPBbRcXLIEm', 'Kb6q9FOeWDs6lTurX7tHYqR7kiNw3s48LlB7gHgfhyGCCj1DbB2FVeMZgmgo', 1, 's2zGEjxyWaAQsgH3EM4YxWMHCp7s7Q7LEq4daMcNXPxTIDBZMJ8ZJfn4hFRXTkRJ', '103.23.244.254', '103.23.244.254', NULL, NULL, NULL, NULL, '2019-12-16 10:35:21', '2020-08-08 00:55:43', NULL);
INSERT INTO `usersOld` VALUES (347, 's1602028', '1602028', NULL, 'Taufik Achmad', 'Ginanjar', 'taufikginanjar04@student.upi.edu', NULL, '$2y$10$bQR3mPSbjqGbYXEU7NMl6uIUzAm5qerCSmRULfLuEVchIK.Aq0afK', '9AYP8feXgnRQd8Q7IAhDJneflPJMicujP8s6OkPyuptttq3UdMOU1PuyTqL5', 1, 'mWniwHhLz2eTavFEktIfJeXJfWGzNxQTQq811JP7IEieNJa8hvH63QS2wSYVDwIQ', '114.124.212.230', '114.124.213.95', NULL, NULL, NULL, NULL, '2019-12-17 06:32:18', '2020-07-13 21:33:07', NULL);
INSERT INTO `usersOld` VALUES (349, 's1601682', '1601682', NULL, 'Bayu Erlangga Gerhana', 'Putra', 'bayuerlangga55@student.upi.edu', NULL, '$2y$10$KsNGckV/iE90ojsmhZgu3OmUfIT5Z.RP/SQeLQu43tD3rYQPqC4uC', 'Y5pq6kSp0gVgwPPhIflchgiAjfT8sLCz8qTmWpPhGdPvIEEv3wtGPDCjg7lo', 1, 'm4VewN3E6z9sqe93GhU8Wr3b1kY6f6GAO3Ohvkd5BacEI7YhIsPvpyuG0R8mtFFF', '114.122.106.182', '114.122.100.54', NULL, NULL, NULL, NULL, '2019-12-21 14:31:28', '2020-09-30 13:04:23', NULL);
INSERT INTO `usersOld` VALUES (350, 's1600585', '1600585', NULL, 'Ridho', 'Muhammad fikri', 'ridhofikri33@student.upi.edu', NULL, '$2y$10$ziSJTmrdKoaeEA.4ZrhbzurpEoLoj/RHOJQk5VneaGrNTtjL/ahfG', 'iVuAuToa8scurGIN8n2OYt3vTqBoLVsW13mNGh8H2LZnwbQjMW0baXt48G3T', 1, '40ZTk1CNYrls4ZEVhsIhnC8tI8afdd5VYGEoi7TBGO0MGZQ3uqoCiIGtGG3aQ4Q1', '140.213.42.212', '140.213.11.152', NULL, NULL, NULL, NULL, '2019-12-22 05:48:14', '2020-07-03 03:24:17', NULL);
INSERT INTO `usersOld` VALUES (352, 's1602124', NULL, NULL, 'Al hafiz zhafran', 'Ismail', 'alhafizzhafran@student.upi.edu', NULL, '$2y$10$P5WuKcdS0pyJeEv.4CMEKOatC4eyyVwhgxlJvGd1fbBAZfU/Qx0tu', 'C1uotj0Yvm72bA5nO9TOuVO2M87tbJxVMAP6u4hw04E7qO0Vx6eiRYPti8hC', 1, 'K3Ox0Rfn5ynWaUnXLsDZG6yz90RX7ZmN5hpcUA9k5mgNlldq765lEFwaC6WT6u1Q', '36.71.232.137', '36.71.232.137', NULL, NULL, NULL, NULL, '2019-12-24 10:04:37', '2019-12-31 10:24:29', NULL);
INSERT INTO `usersOld` VALUES (353, 's1505642', NULL, NULL, 'Muhammad Fadel', 'Ilham Alhapidz', 'fadeldalbo99@student.upi.edu', NULL, '$2y$10$hqZuq/Dw2quHZgAhYOWo2eFXF3toZD7H/NQ0Ve9ThddNUIEZf/Ze2', 'cncbIONinwVht4cJ4HBdYXpEHb3oIqQqzasaLzmzsXPDriJ21Ot2NenlE9hE', 1, 'hBTt7vFvJn9KCT64cOFwJHzA0Ybuxgcu6PcXdLyejjYIC3c5sLo9z0PHPNWqkChU', '36.71.232.137', '36.71.232.137', NULL, NULL, NULL, NULL, '2019-12-24 10:12:25', '2019-12-30 17:14:07', NULL);
INSERT INTO `usersOld` VALUES (355, 's1606796', NULL, NULL, 'Yoghafine', 'Agasti', 'yoghafine@student.upi.edu', NULL, '$2y$10$rl2DUpoQXYjcTojH9xWSwOa19vfqwlVip.73NixxCVKI/yi2ZKDuK', 'HPQjSWYU1y8atlJiLb2EStxlwDGGhJcfht73m6zIsLNwBEl4NB1JLePM9706', 1, 'pw1XacZhoU4ncll5OrCKRCoT9VNednEXyNvd7hUTTajNUXwqqb0rKLj8jigAizNG', '36.71.233.195', '36.71.233.195', NULL, NULL, NULL, NULL, '2019-12-24 13:12:22', '2019-12-31 09:23:12', NULL);
INSERT INTO `usersOld` VALUES (356, 's1606300', '1606300', NULL, 'Devara', 'Rayhansyah', 'devarade@student.upi.edu', NULL, '$2y$10$BeIJnXBQKdwPHh1PAhNjJOHye7fz2b6m43KblN7UxXs7dLUnuvwG2', NULL, 1, '8HpKWr2Yd30UuTYDXWmNAQmv2ZBs0uVKH04s7Kusn5SU9YqC8HrpeYnDflv3kar7', '103.81.222.141', '103.81.222.141', NULL, NULL, NULL, NULL, '2019-12-25 02:42:31', '2020-09-13 08:59:21', NULL);
INSERT INTO `usersOld` VALUES (357, 's1606032', '1606032', NULL, 'Pandhu', 'Reksa', 'pandhu.reksa@student.upi.edu', NULL, '$2y$10$jySfF8hwf/kyKo1apNTdUOtrO5swiJ9TF.s.VkOCrCLkN/5vVG3Ry', 'gPFNoLNdSU7XAxIvj0UqwvXyTVsRDz02wahhHSruTFjnYv29VRDJGudWzTtt', 1, 'zr3d0jCNU2mWfcpq9Z0iIOuEkZrtVcP5VjQshCrVq3F49I5faO0aqeb7fdlkhe8A', '114.122.105.59', '114.122.105.59', NULL, NULL, NULL, NULL, '2019-12-25 11:02:59', '2020-09-13 13:21:28', NULL);
INSERT INTO `usersOld` VALUES (358, 's1606464', '1606464', NULL, 'Mochamad', 'Rizal Bachtiar', 'rizalbachtiar06@student.upi.edu', NULL, '$2y$10$YtIdILcsP5rafDtCxmCMBuz8KgegDbqF/s.LuQ04Y3qk3yT4JAWve', 'GRzjkXs9n8G7D9pJB0TstD3aer5h2C2TOKKml9kIrbinUh8CEHQqCStLrNp6', 1, 'kziRp4hGfLDxnOrWwXiX7KVY0sx48vL3r8SagcIHRBuUINyAdfVM1n9fFq72gJl3', '103.139.10.210', '114.4.79.146', NULL, NULL, NULL, NULL, '2019-12-25 11:04:30', '2020-09-26 22:56:00', NULL);
INSERT INTO `usersOld` VALUES (359, 's1500923', '1500923', NULL, 'Zulfikar', 'Pamungkas', 'zulfikarpamungkas@student.upi.edu', NULL, '$2y$10$KFDOswqCXxOSkJBRr.1XrurrkRhHynixdaYwVFuoYk18GQiSeTqaC', 'Z6RKgtNv5HaRxSjR5xUQV93sy00TLnllPi1RxFKIaDsmfiPxKmWID5cPLBZw', 1, 'm74xcpCimWDpyIvzjogVlvECR3wrnAwdDiR4lYYZiLHcu3eDLxZfQb34Foo034dS', '114.79.54.67', '114.79.55.91', NULL, NULL, NULL, NULL, '2019-12-31 06:00:20', '2020-07-04 15:26:30', NULL);
INSERT INTO `usersOld` VALUES (361, 's1607666', '1607666', NULL, 'Nurmala', 'Sari', 'nurmalasarii@student.upi.edu', NULL, '$2y$10$6UfCy9kK1ptZf/y4cbAVnuz.et/./kaRSSvX0KzaDQLNS3SE0uR2W', '40dAOI7F4X3HoWjtvZ2nU09X80YJb1xrbJNUB0PF1FAHZQeEENW4MThZtgie', 1, 'gC2exAydh1lU7l2Arwvm2zU75AFkwTXBMz1dOrlPs2sWUpgNCbBn8XfnvYmJjdDF', '114.5.208.82', '114.5.208.82', NULL, NULL, NULL, NULL, '2019-12-31 15:03:19', '2020-07-04 11:13:33', NULL);
INSERT INTO `usersOld` VALUES (362, 's1600924', '1600924', NULL, 'Muhamad', 'Rajib', 'rajib007@student.upi.edu', NULL, '$2y$10$iI0iJ3AzEdvkteppQQN5ceuz0nwMHGaHzjVPtDUJFKIW0D1yeAA2G', 'nHKbNOw6lAIVjXFxa2xsa5RtCvkFColvnXJLidAblm6tTmWLONnaedYW1BDx', 1, 'kehoyA7EBDCfJtV6LCK1Hxz91zsWRdfs7wksNKATx2nEIAkf6Q6rvx8Yfys8FWvc', '120.188.5.141', '120.188.5.141', NULL, NULL, NULL, NULL, '2020-01-04 05:02:06', '2020-07-02 02:48:52', NULL);
INSERT INTO `usersOld` VALUES (363, 's1603746', '1603746', NULL, 'Azhar', 'Adhiyatso', 'adhiyatsoazhar@student.upi.edu', NULL, '$2y$10$gZG3YAikCTSRgM7MzlHjUukjfXu.cdRzo.4Jcsxg6cm3l8uYld8MC', 'ZWVJa84NrT2YAsgYZqOOP8VpGX00wwFEXU5Ihl3l7hw1wV0SLoDnOS5KdDeJ', 1, 'jFGqyRMDFarwKVhOhj0autFHZmOkMkyDCKWsaEBiGdc2S5xmq8BlVXy7IycgNaJm', '140.213.19.86', '140.213.19.86', NULL, NULL, NULL, NULL, '2020-01-04 07:09:10', '2020-07-02 10:52:13', NULL);
INSERT INTO `usersOld` VALUES (364, 's1606221', '1606221', NULL, 'Ilham', 'Gema', 'Ilhamg@student.upi.edu', NULL, '$2y$10$jI6Z4s/td0EiwgmXSfCwRufeIYrMEAGrLW6i9Sb6GBX8tEDmO0axy', 'JjPO6ZvW3QMjWjKRGWWpHyfSbd7ijhjT5d31YLsOX6zp9EToCIQ7DZnljxzb', 1, 'VoNRaYHVCT8jfQXamFcQFeqeOA9iLO7cLNDKNSF6BTp8lGqUKggtt0LyhEy5eWQ7', '140.213.19.86', '140.213.19.86', NULL, NULL, NULL, NULL, '2020-01-04 07:16:59', '2020-07-02 01:01:09', NULL);
INSERT INTO `usersOld` VALUES (365, 's1607654', '1607654', NULL, 'Abdul', 'Hanif', 'abdulhanif0997@student.upi.edu', NULL, '$2y$10$3a0u0Ib6robZE8SKeBAkLOrqDTO/qHVYVNTtTI38tvKKwWcrSWR2i', 'qGEuNDEzzKlOhK7dGcPEiEV0HTcBcBX4btPIKQNj3DtYvIaZD8BVQKnkEqbv', 1, 'lq4AeJhtOgpjm06Jj0w6uc6HpuUqpc8jSeh6fjgskvhaXZdmEmoJCPiokeEZsaf1', '175.158.52.55', '114.122.74.101', NULL, NULL, NULL, NULL, '2020-01-04 07:28:46', '2020-09-13 09:11:15', NULL);
INSERT INTO `usersOld` VALUES (366, 's1607637', '1607637', NULL, 'Junjunan', 'Faturochman', 'Junjunan889@student.upi.edu', NULL, '$2y$10$0IaZBMm0p3gAG6NDPbXEvuXVbIzENNs6SU3QYEgazCck9NjzyjjQe', 'wMAlhjr033j0Vlrpc4BKXhs1LmMAyDDNveOx0f00fmA3x0hMrvUOXJijxcrG', 1, 'XYhMicoaAHzfVRVktFerZaMrWEegZfeDlwRqmnTfYl3yJKpPLHNHzJmWtJosHy7Z', '140.213.25.100', '140.213.25.100', NULL, NULL, NULL, NULL, '2020-01-05 08:51:59', '2020-07-23 23:35:32', NULL);
INSERT INTO `usersOld` VALUES (367, 's1600825', '1600825', NULL, 'Dimas', 'Ramadhan', 'dimas_dra@student.upi.edu', NULL, '$2y$10$mHR.EoFQW9THFbVqPf5d0.3At1B6JmkbLV7PtssvwY3UCYUI0rUUa', 'fqc3K4JHPzUmv7u89f92SRbOUgSXBwpHq3Z8oittbGHsEfkW8sXLE4Gac7rf', 1, 'tRYLdeCTbPtS6LwyovHb0Q1HelNqHRieXTeZf7pjAMLaL7uE7yql3Ef8j1IKNZWj', '114.5.208.227', '114.5.208.227', NULL, NULL, NULL, NULL, '2020-01-07 08:16:14', '2020-08-18 00:47:40', NULL);
INSERT INTO `usersOld` VALUES (368, 's1605528', NULL, NULL, 'Efraimy', 'Ruth', 'efraimyruth@student.upi.edu', NULL, '$2y$10$caC8vaDNOVM.WBNG4Widj.1eGW0/vtx7unpypKGq59NKXoV7dvxui', 'pD8KWp4M6BF85f2OzY2Y4W1ZcVwLFKgsSFLeJWnisLRgJ7bgfxyNPRKmxNzr', 1, 'I0r6WvFdc0rsgaOkIF1Xr50H5c2KvGSuMTpmPi56SiQrdQCGyidkYjkONs3oGItL', '116.206.15.14', '116.206.15.14', NULL, NULL, NULL, NULL, '2020-01-07 10:16:27', '2020-01-15 05:27:29', NULL);
INSERT INTO `usersOld` VALUES (369, 's1607523', '1607523', NULL, 'ardhia', 'regita', 'ardhia@student.upi.edu', NULL, '$2y$10$TG.VR5AT7xUTJUE9eOOgoeO.dpVszVkHrYK77/YbROjE0L8wL7l1S', 'KFskLNrIqKkuwUI5cVh04eeWDqmls88kMhJI0k6pHnc3h6PGBVqRm3KtzYpa', 1, 'uPwPhxrv7VvMY6wd7Ha20u95fD3uhD5g5baUQ20AbfBIucokBiG1iMQ5n3gEhw6n', '103.23.244.254', '103.23.244.254', NULL, NULL, NULL, NULL, '2020-01-07 11:26:36', '2020-07-04 15:05:18', NULL);
INSERT INTO `usersOld` VALUES (370, 's1500665', NULL, NULL, 'mochamad', 'arief hidayah', 'mochamadarief92@student.upi.edu', NULL, '$2y$10$rMF.MhyhEzm8P56awr0OhOCmhEYn5IR.ipYMIDqN4dTX3FIQeBGne', 'ggDzwOUd5IGolFCoNeDnamVw72ODL1KNbpjKNxKRJ8EumSLJDPvVb2sdA3C7', 1, '5DxcpKbQnoQe7FMUBM03iGig36AdLKCXfWF4B58KgfHqj3cV5YRDnt7uDDaEe76Z', '114.142.173.16', '114.142.173.16', NULL, NULL, NULL, NULL, '2020-01-07 12:42:39', '2020-01-08 08:38:11', NULL);
INSERT INTO `usersOld` VALUES (371, 's1500284', '1500284', NULL, 'Irdham', 'Kusuma', 'irdhamkusuma@student.upi.edu', NULL, '$2y$10$ocRKkS/OKqLfr/tIS90GbO5KK6k1BLqLWiBKIa2EgRSvHr1kTv2Bq', 'nyVz3wR3Z8UjkkQ2Fy6lukdmUmGcjdtyQ6QsoKUwgJSbskpQMEMfnLJ2zzj2', 1, 'VIlaevUG0pinKyQyeUpZyxF7ujaEda7q2kjR3QEXFtxkBZUkhrCRTUjwRxNCjosC', '140.213.25.129', '140.213.25.129', NULL, NULL, NULL, NULL, '2020-01-11 03:23:01', '2020-07-04 11:07:09', NULL);
INSERT INTO `usersOld` VALUES (372, 's1401016', '1401016', NULL, 'risti eka', 'caputri', 'ristiekacaputri@student.upi.edu', NULL, '$2y$10$BDF0bVHcakwdNrjaMNnLD../UbM4oE41SuOYIK6Yh0lvi6A7ip0Xq', '5RGtgEFybNomxOaGvdG2bZWA7tG52jkIuxdbtuO7gYMEZJMAJk3wUluOJ8BI', 1, 'dlyyGbt0uY3bSJpsgbz5FCJMhO1No8YHuS7OmtPF2m7dT7fLreDFc2NF4jPpbrrb', '114.5.218.146', '114.5.218.146', NULL, NULL, NULL, NULL, '2020-01-12 09:02:57', '2020-09-14 13:15:12', NULL);
INSERT INTO `usersOld` VALUES (373, 's1604079', '1604079', NULL, 'Kobie', 'Aulia', 'kobieaulia@student.upi.edu', NULL, '$2y$10$fK9AUVrHngjV7XAz98BwC.wl2iypWhtr3NVCCtTQB/t5H11kko33u', 'mQ3hy1f8lsTlnURytpRiUzSxvOKy7L7fP02Yoh3Yl7SDpsmJdT1N6gOQ4Zkd', 1, 'vXPFMu6nAxoyV3DOIiSR9vBgURnfK31rtZKvF52ryr7TQbZRY1Wqdj2He0z5pl5B', '103.23.244.254', '103.23.244.254', NULL, NULL, NULL, NULL, '2020-01-13 08:09:44', '2020-07-22 17:33:23', NULL);
INSERT INTO `usersOld` VALUES (374, 's1608128', '1608128', NULL, 'Anne', 'Rahmasari', 'annerahma98@student.upi.edu', NULL, '$2y$10$amK7l4jmMlZvQ43aib./he3S9TJ.tOKKzv6XPlxKvmf8lHCT0gSze', 'MWF6guxhel9CZyjiMDiui0wefcXH8lMmR2vPXK9z0SeCQcVsSlvhGTl3IfS6', 1, 'SfQ925JdvIcXuSFudS0xSbohtkPvgDyiFeOtc9gQjjumMIxLJwiODZyGq5cX8Kty', '120.188.6.51', '103.23.244.254', NULL, NULL, NULL, NULL, '2020-01-13 09:45:31', '2020-07-06 15:12:47', NULL);
INSERT INTO `usersOld` VALUES (375, 's1607158', '1607158', NULL, 'Monica', 'Umarni', 'monicaumarni@student.upi.edu', NULL, '$2y$10$ENwrhLz/Re3/VM4M5zj7ZerlSHAhVOaWAp42qthQaeGpKK/7RYEFm', '3QnK7NHsBCmgFZ36QSnZu4thYj7p1q5oyopAgB2OTSCur0xgWfu4x09vDyni', 1, '2gN5TjMTvbbJPuai8HT8CrbXX7wHik6FvrE6LtjxHItLqmG2CruU7UDolGe1gsI7', '180.246.26.232', '180.246.26.232', NULL, NULL, NULL, NULL, '2020-01-13 10:33:27', '2020-07-12 01:46:40', NULL);
INSERT INTO `usersOld` VALUES (376, 's1606382', '1606382', NULL, 'nurul', 'hasanah', 'hasanahnurul956@student.upi.edu', NULL, '$2y$10$hNVqzlT/ao8C2wAGy3FRQ.ee53dX9Vs101A/y06DSkNO8osq1Q8P2', 'Gwns0d9JSB06UtPrGLkcr8bOMJA6m2T1J7iuGRb6s9sGz14PjvIBh0zPlHUq', 1, '0eidgqtMeX0vJHktfs0oSHKhEu8gU4mgEhEhL091RZ3aS5wX3hRQxIdHua0j7Zgb', '114.122.72.203', '114.122.72.203', NULL, NULL, NULL, NULL, '2020-01-13 13:00:35', '2020-07-03 13:50:10', NULL);
INSERT INTO `usersOld` VALUES (377, 's1608132', NULL, NULL, 'Riyan', 'Mardiansyah', 'riyanmar27@student.upi.edu', NULL, '$2y$10$DvxTqLadX4JqHL7gxjSnRuksALqVZ2F2atlHClNp.bQQN4ADI4tdG', 'r5IbsrrB14RJgvcoJMEJJUNOqJptqYijDiGmvidXOKuSkGG9r9cJaW1m9Iwe', 1, '6i5TR38QGBkXZQ6L7sa7ZjZf298Fbud4Gg5zJrazBcHKTJWZzXR0W5FmYNaVR6Xc', '103.23.244.254', '36.72.58.14', NULL, NULL, NULL, NULL, '2020-01-13 14:13:58', '2020-03-05 18:21:24', NULL);
INSERT INTO `usersOld` VALUES (378, 's1606660', '1606660', NULL, 'Deni Nurdin', 'Rahayu', 'deninurdinrahayu29@student.upi.edu', NULL, '$2y$10$c6lqmdcnEKeuKPRDSpo9W.o7dxELCsiNW74nbib1zKX7LNH92BL4C', 'E0DO7Er5e4ojDGMRro0oViyk6BaDPEg6vhJmFAd4TjbHGaGkXMAhp9EvlLAU', 1, '1YLXnWfomtDEPiltL4E0In6xmKQPFNu3Yv7dC6PVxZsXfvFqQbEpl9wTiZBuroUW', '140.213.133.104', '140.213.133.104', NULL, NULL, NULL, NULL, '2020-01-14 04:17:03', '2020-07-29 22:14:05', NULL);
INSERT INTO `usersOld` VALUES (379, 's1604461', '1604461', NULL, 'Laras', 'Dian maharani', 'larasdianm@student.upi.edu', NULL, '$2y$10$7bvH00WBNZxeqtCBt139fuH/FmkNRYo/5M/kz95gNc2dNLC48xF36', 'wpr58hPaTkbfSufBXtDf1sI5RLphSo1IGIOeVUGN7bQEjJxj1oynbwTZx7bY', 1, '9Xk4WU716SKEDixANyJkRHZtoF35hNNkBMfTh0UOCbl5Y3FmCEECopw3TmTnvS5Q', '114.5.213.74', NULL, NULL, NULL, '103.23.244.254', NULL, '2020-01-14 09:54:20', '2020-07-11 02:53:36', NULL);
INSERT INTO `usersOld` VALUES (380, 's1606352', '1606352', NULL, 'Rizkia Fahmi Noviansyah', 'Imanudin', 'rfnoviansyah@student.upi.edu', NULL, '$2y$10$jEuLNYMAep9qoHqAgW50d.TLEmi/Ub469gz0/DctbroAP7MLyVduC', 'omAqum1Q9WVoudAJwrkjbHj6lMd7j0CHIRudN6O7MO7zxlZD3KEm3a6YRauW', 1, 'EWtlMHP8Ej8xhLz0uyVVhDn16KRqtq9LjetVI4nEfxRdZzmydJ45BPTGK6tw7bzR', '125.163.104.10', '125.163.104.10', NULL, NULL, NULL, NULL, '2020-01-15 04:41:48', '2020-07-23 20:58:52', NULL);
INSERT INTO `usersOld` VALUES (381, 's1604450', '1604450', NULL, 'In', 'Mustagisin', 'kakipadi@student.upi.edu', NULL, '$2y$10$cOhMPYmFDHhJx4DnNwOfE.EYcJX4HLMojMst79Gni9MhBfq4Y2bPy', 'G3nKoMZ92NLfbEiC2GQR5h9BOaxZ1KnsPhzAXKwlpYvMUgGOhftg73VpEyAx', 1, 'hyYlHqJIMO0Tv9cWQc00XhaF9x9KyYR9HKrzsCrZKd4AkZs1wOOIz0QCwNQk2mWp', '110.136.128.55', '114.122.105.205', NULL, NULL, '0.0.0.0', NULL, '2020-01-15 13:36:16', '2020-07-06 15:13:23', NULL);
INSERT INTO `usersOld` VALUES (382, 's1607676', NULL, NULL, 'Eris', 'Rifaldi', 'eris111213@student.upi.edu', NULL, '$2y$10$oryp84p2XhTMXdqjoIR2uOplYm6cVwkmkWVHyeQCtvY/3DSI3Lsu.', 'wNhWVZWVL3opQ2nUboIUKjqP1uoCrtSrRMNH0CY08Jry30cfdQ0y8qHa2xpt', 1, 'zhLLjhdTjo1Qi6hgErkwcQWSOIwHFqEbmFfTUBom3j7HzF990N2W89yeEWHwsbDF', '120.188.67.153', '120.188.67.153', NULL, NULL, NULL, NULL, '2020-01-21 01:35:34', '2020-02-22 00:31:34', NULL);
INSERT INTO `usersOld` VALUES (383, 's1607331', '1607331', NULL, 'Devi Ivana', 'Athaliana', 'deviivanaa@student.upi.edu', NULL, '$2y$10$GFgyWZyilEMhF7x/ruYPv.GfeMktxJvuMY8Sn/rEXqzlPKRr1VKAm', 'r6MpQQInpKMinteXB7fVbncfWMDuJ087h11mLzlxiZrMcQDEquxqi6MyjbaV', 1, 'J7uTq8EzVwLCA5IzlOgRPyEPysOiu1Y9s8FuSxZqEsyTFfMz8ZRMwwTRoV5kTBwm', '36.71.234.134', '36.71.234.134', NULL, NULL, NULL, NULL, '2020-01-23 09:43:50', '2020-07-02 01:36:04', NULL);
INSERT INTO `usersOld` VALUES (385, 's1607496', NULL, NULL, 'Henry Prima', 'Martinus', 'henryprima@student.upi.edu', NULL, '$2y$10$gCHChLo7p0QHBKa.OzUhaO/B1IjUZ45.OoixFa/oTgupM2lcqBzze', '2fwYGDaXg8iSZw1N0yPWXrYSiqMNOnOpaoRH4XfAccAkPH3R3QxekFpRNK9U', 1, 'x2RXTjB6fkWG8b7Us0KENzWbhis22KQo1kxPt1oKqPOV5SKWT600pO2NSgeqmYAZ', '202.80.214.14', '202.80.214.14', NULL, NULL, NULL, NULL, '2020-01-27 04:14:06', '2020-01-29 05:28:45', NULL);
INSERT INTO `usersOld` VALUES (386, 's1607081', '1607081', NULL, 'Dwiky', 'Anugrah Heningputra', 'dwikyhp@student.upi.edu', NULL, '$2y$10$a2WXnnJeF59amuBSt9MjRu3elGZ4yQxwS6G.tascf7j1DXq1ueXba', 'n4fFy0Oh2yaMhV12sa6tTf7zvxs8cwvtM6s4lEyg5SeQ1oCmxzVum4iKl1mE', 1, '8foN046SzeRIzA4FqzRzTjBNIdhS7TzFEnCmBxLcDCWtV3vGU46nJdOiDtbRh7Fv', '103.23.244.254', '103.23.244.254', NULL, NULL, NULL, NULL, '2020-01-30 02:43:47', '2020-07-08 16:56:36', NULL);
INSERT INTO `usersOld` VALUES (388, 's1604937', '1604937', NULL, 'Rizki', 'Mochamad Fauzi', 'mochamadrizki@student.upi.edu', NULL, '$2y$10$OL.Ra7WjO4G2j1kzR808beMNGmOtp.JCFLyebcOO2fLKhGOYrLn7a', 'Qg6635Uq9Q5F90s1QRrSFCuVbIAILfI6xbtIBZdFZOdg9ym8wmVQb0llZZnW', 1, 'jY5t6vqdSY31auolEtsBhajqqoEucY292xjc44hDJiIjin7F5QshMSscMEhn5qYB', '103.23.244.254', '103.23.244.254', NULL, NULL, NULL, NULL, '2020-02-03 11:29:57', '2020-07-12 23:09:26', NULL);
INSERT INTO `usersOld` VALUES (391, 's1503978', '1503978', NULL, 'Imania', 'Yuniar', 'imaniayuniar92@student.upi.edu', NULL, '$2y$10$uyvTyKfLTSFijP3oJXfXO.0robwTc6UQmHUwh9.0yizmMXncqRezW', 'YobX0oK7G4mxgdQEa1iuuO9i0fJ2MxpertuciNSkzHZKr5KX5od5PH8DNgXS', 1, 'yJkxkLUR0SLF1zomYIVfFkXW4xngneo5m7R66hqDfWl9HS04AdhAh2p8RKfGAPZL', '103.23.244.254', '103.23.244.254', NULL, NULL, NULL, NULL, '2020-02-15 10:03:20', '2020-07-04 14:08:07', NULL);
INSERT INTO `usersOld` VALUES (392, 's1606462', '1606462', NULL, 'Muhamad', 'Riyadi', 'riyadim94@student.upi.edu', NULL, '$2y$10$Bg8sVEytPlqTtpO8Oim1UOmf2OiTH6WIanFqgfsU9Bl5ICGOdoSp2', 'MGsJQFitZAdKBaHeUS37g6wkKAwBIWpbWRgElsuhA0MLWtw0zPml4KJ54Ezc', 1, 'HwcVQbeAS22IJUrKqup4JkPl93GoWVVznUSBbqEaRSdatexro7qUuU98aVXjbO26', '116.206.14.43', '116.206.14.43', NULL, NULL, NULL, NULL, '2020-02-16 05:03:03', '2020-07-29 22:11:15', NULL);
INSERT INTO `usersOld` VALUES (393, 's1403141', NULL, NULL, 'Asri', 'Gania', 'agania@student.upi.edu', NULL, '$2y$10$opXHZUwGRXgfLYuN6m1nD.X6YSeopNCPFjSCz.JbajPtg/O8wWyjO', '7KYSxS7Yc6bmpiiQ09t38zkVCp96lr68cIFmeXmTWehVfw0uxSXRltPBRrdN', 1, 'VTkpDNiWgV39afEOiD43MLxqHYFy5OCQ3e6gfyM32FRV6solOFZINGPyJ8JWmva4', '103.23.244.254', '103.23.244.254', NULL, NULL, NULL, NULL, '2020-02-17 15:42:14', '2020-02-24 10:16:31', NULL);
INSERT INTO `usersOld` VALUES (394, 's1601008', '1601008', NULL, 'Egin', 'Rahmat Ginanjar', 'eginrg@student.upi.edu', NULL, '$2y$10$ux9UXooLzvdtAzVbM8rraOOZ49rplXdA48LuCAbIGBnuUeUu5ctae', NULL, 1, '2eAxuZu0lr9y56jnJps9MRweoUHWe67PXKcP9Fztb3KyDm8zdI3XftsTnqRMtbh5', '114.122.74.249', '114.122.74.249', NULL, NULL, NULL, NULL, '2020-02-18 07:59:19', '2020-07-05 06:08:26', NULL);
INSERT INTO `usersOld` VALUES (395, 's1601538', '1601538', NULL, 'Muhammad Firyal', 'Firdaus', 'firyalfirdaus@student.upi.edu', NULL, '$2y$10$vOhlVscrgb8JJqu/GQcwreFT7RGIC3yrT7osy3hr5QEOZtRxH4rrG', 'lFG41BRHclWOZEq4DFxPKimYKA21FSMnELhPqxGSwupkE6hI1mo4bTYe5ZFM', 1, 'm4jNnupmnqciZeiTP4M7a2xpR06H93d2wQ9LOgi5XXP0FdmAXKvMKnUvkHAGgQqI', '103.23.244.254', '114.124.161.201', NULL, NULL, NULL, NULL, '2020-02-18 10:00:02', '2020-07-15 03:13:12', NULL);
INSERT INTO `usersOld` VALUES (396, 's1601676', '1601676', NULL, 'Dante Eka', 'Seviliana', 'danteeka99@student.upi.edu', NULL, '$2y$10$h0XBSC9p59izhLv7EXnSJ.eEQM2Nt1nFcOk8GmNzJM803duRG90wK', '0QRoR9N1HXKeaaYD7IjVEDPy2URSGgu00z7oowW5SbxsdwNEIBnTrRNQ78H4', 1, 'BjYrepJvm8CNAcR9OJyhGTI7ylCm6hAJWHfiYzAulziK297lFZm4ChXjiR1RJWFo', '103.23.244.254', '115.178.203.87', NULL, NULL, NULL, NULL, '2020-02-18 10:04:05', '2020-07-07 08:33:23', NULL);
INSERT INTO `usersOld` VALUES (397, 's1600511', '1600511', NULL, 'Muhamad', 'Sampurna', 'muhamad_sampurna@student.upi.edu', NULL, '$2y$10$opaDHeRPQ8g93vgElY771eqUf/zDUNoL.4p25ECqOemIt0/d/qeEK', 'wJmR4SVal4WTOQmsXAy5hVr71AAgZl6ljRcFw3zbhpqLnDyHQnRVXTTGx1Ds', 1, 'we8EDC8eYGHvR1HoWgIQHWADULe6G4djmfyfUcvV7UZUPhQ6iIAjOhKn64WNLQpS', '103.23.244.254', '103.14.20.106', NULL, NULL, NULL, NULL, '2020-02-18 10:05:38', '2020-07-02 03:54:58', NULL);
INSERT INTO `usersOld` VALUES (399, 's1602329', '1602329', NULL, 'Rian', 'Arta Prahesa', 'rian_arta_prahesa@student.upi.edu', NULL, '$2y$10$iED7DloGXNRo/PPyauwa0uqFRBliSOVtsnd46PUttBbJXymPmXBGG', NULL, 1, 'TMxPvPscYes5rwIQKvnQNkChk3LwkNE5nXtr6cbgYsQ2w4i5DDxjOomMcOAKqodU', '103.23.244.254', '103.23.244.254', NULL, NULL, NULL, NULL, '2020-02-18 13:41:03', '2020-09-14 11:04:30', NULL);
INSERT INTO `usersOld` VALUES (400, 's1603853', '1603853', NULL, 'Gani', 'Gunawan', 'ganigunawan19@student.upi.edu', NULL, '$2y$10$PzD8Q6oDcCMh4GtZIEaesun6xAsdl.BOjbsXGHVx4k.C1ABcS8PuO', NULL, 1, 'nLlVe8khMGLZq8y9WcUTFuqp97D9WXhbnB1tUpy8QcOZNtGMrbtgSPmvxxw6s8FG', '103.23.244.254', NULL, NULL, NULL, '103.23.244.254', NULL, '2020-02-18 19:37:47', '2020-09-13 06:01:46', NULL);
INSERT INTO `usersOld` VALUES (401, 's1604508', '1604508', NULL, 'Wildan', 'Khoirul Amri', 'wildankamri@student.upi.edu', NULL, '$2y$10$htE1uvdNkFK1bgy1.fKnf.lIa7XMkdcdEV2IsRPaEFrjf4A1qv8lO', 'd7PcRt1JctgOOBFLiKonPc17rgRPzedxFSVrvoSU1WBE0is2yFuplYbh2ell', 1, 'HbEwpWSvzEmVtJsEW01X8FGYCNvGUxLGCsDN9y9iGVfywZlVZlHy6TEGFjLQbWtm', '114.5.211.3', '114.5.211.3', NULL, NULL, NULL, NULL, '2020-02-22 03:42:52', '2020-07-07 10:39:29', NULL);
INSERT INTO `usersOld` VALUES (402, 's1600818', '1600818', NULL, 'Alvin', 'Rakhmat', 'alvinrakhmat@student.upi.edu', NULL, '$2y$10$zAF8ebu4lOBBFdyzxHpmi.K7oEA00.zRqivqFXnZBTvuD5IWSngqa', '0CjR3c4hfwUsJ8O4mfHYQbtJtXZEL0cJyI99Daixp09pJH41uX5cvDQezShl', 1, 'bmdMY3i0q9sUn54RQwE7DIdhdsYQW40Rrssmr0YJn31G88bvGXUCGzg6yegdJydb', '36.69.138.95', '36.69.138.95', NULL, NULL, NULL, NULL, '2020-02-22 04:11:21', '2020-07-02 09:22:49', NULL);
INSERT INTO `usersOld` VALUES (403, 's1604056', NULL, NULL, 'Rudiyana', 'Rudiyana', 'rudiyana@student.upi.edu', NULL, '$2y$10$hK5g88/99qO.upNi9BtO6uVfHw0WvwsmqIBTSXjO75QzgsR6Fxa4q', 'UQrtnaA1GJt9DaCZxfjHhFa97kMo2NMzYGUNL8VX9BCSRq0eoOCxurjT0a6f', 1, 'R8njXEQ5T2aQXOuNfbZb4jJ8SgbpB8P6UUx4QWXQvi6tcLMZYL20ynXnRb72LjHB', '116.206.15.47', '36.71.224.128', NULL, NULL, NULL, NULL, '2020-02-22 06:10:48', '2020-05-13 03:15:12', NULL);
INSERT INTO `usersOld` VALUES (404, 's1606976', '1606976', NULL, 'Haris', 'Arsyad', 'harisarsyad@student.upi.edu', NULL, '$2y$10$3r7VS0Yauzj7j/fSwyMr7e8DJvTBPXpTe/3/jGdEAUk73MiDbLRQq', 'WurjdAWoAz7vnBWv558OSUc164sNkMpUEhyyJLdBelPv7wZLNEXaWjvDwpzE', 1, 'sN1Bri2TEI5zSJQBqDubznlzXR85B1mGtNTt5Btsfmlt3OpDkEVRhF75LB6dHIIm', '110.136.152.67', '110.136.152.67', NULL, NULL, NULL, NULL, '2020-02-22 08:20:23', '2020-07-04 03:32:17', NULL);
INSERT INTO `usersOld` VALUES (406, 's1601864', '1601864', NULL, 'yuli', 'ani', 'yuliani_@student.upi.edu', NULL, '$2y$10$P3yw7tIihobK1tfxFDTTROsVnGGfYMGXdKvOSFpLGHsao.JCkYQze', 'HsHjmaxOJLHO3U86jA0UK7UAKzlbh3k8DhFBqlZeXemiYeP3h3beJPsPOMEX', 1, 'tuLPH1JHhJhgaFOFxN2w9srSZCr7F0MHEr1q1PuzfimXtY7dCmbZgdebaSVk3FS1', '120.188.81.204', '120.188.32.67', NULL, NULL, NULL, NULL, '2020-02-23 14:15:06', '2020-07-02 12:48:30', NULL);
INSERT INTO `usersOld` VALUES (407, 's1607633', '1607633', NULL, 'Ridwan', 'Amshari', 'ridwanamshari@student.upi.edu', NULL, '$2y$10$MP01ZgBtYDG125/vWzUIrOF.lYj1IHARxqaVnf9Zy62EIegGwoYNi', 'LMRF1y09sPQsSEALUdZp8tM2TgzrOrZxjPPtoKIHcxU9t8I3y48HQKXwMIwF', 1, 'm6MJjm4SxGSZULi2tMhq0cNIVIVcbrRpUhCFB1SBcud8P6nX86p9sDnabiVExa5w', '114.124.161.160', '114.124.161.160', NULL, NULL, NULL, NULL, '2020-02-24 04:38:54', '2020-07-13 17:54:16', NULL);
INSERT INTO `usersOld` VALUES (408, 's1600658', NULL, NULL, 'Ghina Shofi', 'Nur Aisyah', 'ghinashofi@student.upi.edu', NULL, '$2y$10$hxaGMMORpbshv.husDVOg.fVQl/KaEpi/6g3T8X6UM0u3HKUZ0GDm', 'wYcOf2EbUbL2JENLmMJ6JXzVgd4BbU9YPdch09nyp0HUmyUFJjEAH7X4zJxt', 1, 'ryccHeNeSN5LCZWm6nw60QOqFyiwTUO8m8kg7RQSw1qMJwMozMI9bK77xXFlx1Oj', '114.79.54.140', '114.79.54.140', NULL, NULL, NULL, NULL, '2020-02-24 14:07:28', '2020-02-27 04:46:55', NULL);
INSERT INTO `usersOld` VALUES (410, 's1607582', '1607582', NULL, 'GALDIN', 'AKBAR SALIHAN', 'galdinakbar@student.upi.edu', NULL, '$2y$10$4Z18dbzJ6NyFuK1iDDtfVOJgGlh6S1IQLKK/8b/ZKsM4MWmfPOyp6', 'zMsGgjmfOUJiO3NARC2hnCl4Y0q8JjmXDqwmWm7IBdVrwD9x8fmYYB3Monyj', 1, 'lzhWjiiWbb8W7T6WPjmRzsfQ4h7p8OLpR9PE2656M52i5db2ZHzJfQHfipnsZua7', '140.213.35.209', '140.213.35.209', NULL, NULL, NULL, NULL, '2020-02-25 08:45:05', '2020-07-02 20:54:36', NULL);
INSERT INTO `usersOld` VALUES (411, 's1504849', '1504849', NULL, 'Boaz', '....', 'bzzz@student.upi.edu', NULL, '$2y$10$tZGOM/1vccAS36qd6Rtr8O.pWj2iZfau3N8ZYm8wpt.wU9suytsLa', '4zujabObAaTcodKPOMuEiprmbl2wc12apDVma5BC8YnBElF0cdyAHNBJd9iV', 1, 'RI5nUgkmEtCMmnQrHsAqVBemQsNgTfxJMZxaI820oCnSAaHIafGPe4z4dDgg7n83', '103.23.244.254', '103.23.244.254', NULL, NULL, NULL, NULL, '2020-02-26 04:59:25', '2020-07-02 11:51:02', NULL);
INSERT INTO `usersOld` VALUES (412, 's1607118', '1607118', NULL, 'Syaiful', 'Widyatmiko', 'widyatmikos@student.upi.edu', NULL, '$2y$10$S75H.L1VBK/5wXzH.6FvdOMUkg26qNymyzTE6kaahBh83yibxInTG', 'xJWm8IcaUDymmkvSge4lJFYZqs1l3svjrfJqDF7FO02I1hx0fd98Oak1eklw', 1, 'zFt28UoIE8iNwsxKDvMDPmkX2uzwrddQnA3nNzS20Q8L08F37AJoSIgSP1pOf5E3', '114.124.161.144', '114.124.161.144', NULL, NULL, NULL, NULL, '2020-02-26 06:31:05', '2020-07-03 10:00:29', NULL);
INSERT INTO `usersOld` VALUES (413, 's1606411', '1606411', NULL, 'ABDUL FADHIL AL', 'MUDZAKI', 'fadhil@student.upi.edu', NULL, '$2y$10$Qll3ZGpApj5btvlW6JEL9.oZc5uNw1ftSxfx0i6qWh3RqhwNk5Oma', 'OI6ZGEI8sEY8OaIRQNxN0fqGXlaODld3hE06rPqSAu7myuRxifztXlmHozlq', 1, 'HBWMqvkSVG3TLkI0NGOoTPzrbbcvWBC6yZQDGVjZnwA4M4sy7ztbSXmQpcUUS8Xp', '36.71.253.248', '36.71.253.248', NULL, NULL, NULL, NULL, '2020-02-27 07:53:03', '2020-09-16 10:32:44', NULL);
INSERT INTO `usersOld` VALUES (414, 's1601010', NULL, NULL, 'Anisa', 'Inggar', 'anisainggar@student.upi.edu', NULL, '$2y$10$wtBW7cELkyUl.ZtLbwKIvOtmFu4La5ggiJiNZRUqCPvRvbde81bM.', 'mURIaCbbMb19GMSDFXWvuHssVyTylWqcu9OUmMlPf0xqd35I9i1VdGx25vEe', 1, 'LtpQv1emlKl4PN25A8qKbsPUCX6y75AQedIcUWTSikfNEjfalFvDO8IAH851aeLh', '203.207.56.128', '203.207.56.128', NULL, NULL, NULL, NULL, '2020-02-28 14:54:57', '2020-03-02 15:14:18', NULL);
INSERT INTO `usersOld` VALUES (416, 's1606195', '1606195', NULL, 'Ilham', 'Ramadhani', 'ramadhani@student.upi.edu', NULL, '$2y$10$VbfIt43ACKYKpu4LNYoXR.A2poXvOthFkXqyTnW/NPUzfYk3Lv7eW', 'qbdoSixQRGjdbMEQ7IONYYeO4sHZk6Poht1xid7CIDfRM33pgJMeGXtd6tLp', 1, 'W7hLktAIXXTMAeap0vaWfdAKaAweDpuvNYxtVP7orZ0QqRSrn5dE2cFG858I0myd', '110.136.153.233', '110.136.153.233', NULL, NULL, NULL, NULL, '2020-02-29 06:57:09', '2020-07-19 21:51:43', NULL);
INSERT INTO `usersOld` VALUES (417, 's1305639', '1305639', NULL, 'Mohammad', 'fitra permadi', 'mohammad.fitra.permadi@student.upi.edu', NULL, '$2y$10$gVElb2n8Qx4p3977t/YKZOKFcPLp499MNIxX6L2CErHt4YuozGFji', '3xJgL5OUu0z4iPpwS2w9Uq45Y7ROMpytC3oODUYkeahMDQUoehbNT2aeL41t', 1, 'quexsguiJkOF4HJyciFYxDfSJy3wgG0VQGBWULNp1GVopG40C9XruWvYBOchJKq5', '114.122.73.148', '114.122.73.148', NULL, NULL, NULL, NULL, '2020-03-02 09:52:42', '2020-08-21 05:36:41', NULL);
INSERT INTO `usersOld` VALUES (419, 's1601412', '1601412', NULL, 'Sylvia', 'Khadijah', 'sylviakhadijah93@student.upi.edu', NULL, '$2y$10$wYGx90NXGhw7dQXHruyWiOPr8.wyM0mhdZGD80quuEGVLwvBwzlf2', 'aSetUGgxlt8nVozYYDGQzR3UPYnLNCW97141vXIhqnzyJMIpOdsOFjD3hByq', 1, 'GzY5o0plBuih5C3quGI6u0NaJKHnXxOscce9UG4eCXxfqP1HHtL3irL3kufKx45p', '103.23.244.254', '103.101.106.84', NULL, NULL, NULL, NULL, '2020-03-03 09:38:59', '2020-07-02 03:09:09', NULL);
INSERT INTO `usersOld` VALUES (420, 's1603417', '1603417', NULL, 'Haryo Iri', 'Satrio Wicaksono', 'javasatrio@student.upi.edu', NULL, '$2y$10$GBN8Axdwp6arb5l77LemZ.Ts3iOZlubcBTyNe0b3NtIbbp3UMlAga', 'YgYqZ2Ot0gJCWYuyqrvZ59GbvAGjHshpOrEVKQL0xxRg0xncMNTIAVaGvgQW', 1, '1sxk0OSip6HULiEHZPe1sDEEGVJ5TMAeP5sk75aMphwOWIQLcLmqUZtHuVC2Ggd6', '114.79.55.187', '114.79.55.187', NULL, NULL, NULL, NULL, '2020-03-04 06:58:39', '2020-07-07 01:49:09', NULL);
INSERT INTO `usersOld` VALUES (421, 's1602070', '1602070', NULL, 'Kusnadi', 'Rusnawan', 'kusnadirusnawan13@student.upi.edu', NULL, '$2y$10$G1UgXMPGMyyD1Z6p/X0goOeCiuOjOoMKvaxRg7lm6j6FyjM2UIOBm', 'x9K8WwiyIf1ujLgE8y7dWKpngFUOT0zH65iiowV4jp6XxUYxsW26s8XtLEbi', 1, 'H2rYF0MHYEZv7AOarkzygIpC8tyIs5AhdWiLHfxt2816nOgmczgzbvZhYsZ7VEre', '114.5.217.77', '114.5.217.77', NULL, NULL, NULL, NULL, '2020-03-05 14:26:56', '2020-07-02 03:13:49', NULL);
INSERT INTO `usersOld` VALUES (422, 's1605911', '1605911', NULL, 'Rosena', 'Shintabella', 'rosenasbella@student.upi.edu', NULL, '$2y$10$E7s44TGlD51hZMDvyaTi/um3FvFOkuZebfWrC9CpdMctrf4sIGor.', 'R71lMLkrdvtEWrfsxCMS7Zq71y7pHK2cp2tfp5JWEV5CZ6xBUW1eWKAfwVIa', 1, 'mHz1VqfGvfOqbOWEfdPqiUqxW6UxGQ2iDTT8yAsR2dN9JjAUj8EiWaHQqcPgy0qz', '114.122.106.57', '114.124.231.220', NULL, NULL, NULL, NULL, '2020-03-08 08:29:24', '2020-07-02 03:59:29', NULL);
INSERT INTO `usersOld` VALUES (423, 's1601296', '1601296', NULL, 'Dias', 'Pinanggih', 'diashegar@student.upi.edu', NULL, '$2y$10$NjAzJKm0D1wQbrCpiFVulumyEVXH63C5bwda4xX8X2y/9Vu8nmoG.', '33uAM13fDptKHprL7oi032AI73LYOlyaUgBg3S82V24bB5XzfnlqcnIClaQX', 1, 'ZIIxedt7QP8zdsuDC2pkYgndvvwq8cN6HLBBzY2ugZqiB1tdImaGSuzuQfFbyZFK', '114.124.212.76', '114.124.212.76', NULL, NULL, NULL, NULL, '2020-03-08 08:30:00', '2020-07-02 12:14:57', NULL);
INSERT INTO `usersOld` VALUES (424, 'tendik_dpte', NULL, NULL, 'Komar', '-', 'komar@upi.edu', NULL, '$2y$10$PrYwPEJqUx/rDRCYOwKvbONkbeyC8EYTXW5Cv3BwVtaG4mv2iXVG6', NULL, 1, 'SxFwdKpIuAZMqxca0WnYZUcLYEPXDGGmawW59WRZKc5ZOqMNyYx0d3S4QQZZLB7L', NULL, NULL, NULL, '103.23.244.254', '36.72.196.130', NULL, '2020-03-09 06:09:29', '2020-06-07 22:44:14', NULL);
INSERT INTO `usersOld` VALUES (425, 's1302098', '1302098', NULL, 'fauzan', 'anshori', 'fauzan.anshori.n@student.upi.edu', NULL, '$2y$10$jGjAX7R2sPKk3yU.5OHzFeUdD5wwbz7rY2jcllRo3O8pkmCDae6uK', 'vskWaDesluh9MdQVlZfxxRFYPC322fXmF5P6UBgYgcHJgQwdqWVjyVRLQhqF', 1, 'zxSf4dNgHsSB71a51xZjzqBqEEII8DyEX3iTxEbg3nz1vf642mnq21pDiUjMssil', '103.23.244.254', '114.79.55.15', NULL, NULL, NULL, NULL, '2020-03-17 04:11:40', '2020-07-01 22:25:48', NULL);
INSERT INTO `usersOld` VALUES (428, 's180969', NULL, NULL, 'Didin', 'Wahyudin', 'deewahyu@gmail.com', NULL, '$2y$10$Y//.t7rAQPy6e51iK1MyGumat7y3BIF9Op3PneRm9MNS5BYCgU7Na', 'pLCYVH4gjMsHPEgO7f0xnq0FtaPZXyuAytKCRt58fUr6nVHKbWVCOdoWcCX5', 1, 'bEqlixrk8bnV0KZDEB8Zzqnbiy2B2P5j8oj7gTvGsOfYP6pGguJbQ5w3aPZ9rKlE', '0.0.0.0', '140.213.19.78', NULL, NULL, NULL, NULL, '2020-04-07 20:29:16', '2020-04-18 15:31:03', NULL);
INSERT INTO `usersOld` VALUES (429, 'admin_symposa', NULL, NULL, 'Admin', 'Symposa', 'symposa@upi.edu', NULL, '$2y$10$xpW5jNkNdaBmpLmuXPGUsOr/1l06rrH04EDgyqNTd5tK2fuWUJMPe', 'mgDOCJmq4zX0hkVhp1cOfIvXCSDgBwQHQEqpWBqkblNIzG6qPXSZyz0n4k0t', 1, 'tH9WHcztqjZF9wQLCLsROK3CwykqThGx2pDp1d5utXY7bsaIy5NxxmxBUY7wQNU9', NULL, NULL, NULL, '112.215.238.145', NULL, NULL, '2020-04-13 04:18:28', '2020-04-13 04:18:28', NULL);
INSERT INTO `usersOld` VALUES (431, 's1301663', '1301663', NULL, 'Nur Muhammad', 'Abdul Hafizh', 'nur.muhammad.abdul@student.upi.edu', NULL, '$2y$10$Rum5w/ma/X65qz86nKDODOQK9tL3Kk6zasQHM8cS1.UN0X.EtPN3W', 'I09zs7KEBThQmuhyNtdQb3CVjTsncipXUjrsYYtbWrlDEjQo1Ez1iat3c9Ak', 1, '8XXHezX8hpNsp6OqsIwh506jrxXkLiX5fiwfy5fe7xEK8iUV9xbfVXVbyX4fOAxX', '223.255.229.2', '223.255.229.2', NULL, NULL, NULL, NULL, '2020-04-14 20:31:06', '2020-07-02 05:25:38', NULL);
INSERT INTO `usersOld` VALUES (432, 's1605206', '1605206', NULL, 'Anggin Nisrina', 'Ulayya', 'angginnu@student.upi.edu', NULL, '$2y$10$HwQX1hjvaEgTmw5JCJKm2esH8Gyr4/K3iHXYE5ZVxwwAgOhGHMEgS', NULL, 1, 'tfyVfET34NSfIMctiGkyGtuQ36QjMpurOa8eUU0OyOl2R0RV2MNq8VmCHc5N9U7k', '114.142.173.13', '114.142.173.13', NULL, NULL, NULL, NULL, '2020-04-17 21:42:12', '2020-07-31 18:41:23', NULL);
INSERT INTO `usersOld` VALUES (434, 's1307624', '1307624', NULL, 'Amirul', 'Ma\'ruf', 'amirul.maruf@student.upi.edu', NULL, '$2y$10$hD91KyBznCmA2iKlpatDxu1dzIm2g5OhQWXxVstzxRxXzfh0eAyGm', 'TBXLwWg1WR4TJKldsL28DJOrVpCwasJxhx6ApSfXIVcnLr45ZnWcAe0du6pH', 1, 'N5VABLobmkLOI2EPkTyQd4d75iDCxSnSIr8zArnTScEVmOG1hAOi5oJTDADPpVuz', '36.69.109.129', '36.69.109.129', NULL, NULL, NULL, NULL, '2020-04-19 03:09:07', '2020-07-02 02:36:45', NULL);
INSERT INTO `usersOld` VALUES (435, 's1501291', '1501291', NULL, 'Adi Sapta Hidayatullah', 'Suryaman', 'adisapta@student.upi.edu', NULL, '$2y$10$euVn/tPITHVg17BaOKHbc.e5N3bI/SiVQfaQlgQ8BsfgbzAcyNJii', 'E1T9pWXGpMXlHooDFazqL7YGdUYqmokqM0QZgQc2LJdI537Bd6Pkfa1CNnO7', 1, 'G0GIMCCUgyUMhClYEfRYy5wBzGDdpScqRAEoxJX7pVAkVhn6bwf4zRmPADHeFRNa', '36.72.62.240', '36.72.62.240', NULL, NULL, NULL, NULL, '2020-04-25 20:29:38', '2020-08-12 03:55:27', NULL);
INSERT INTO `usersOld` VALUES (436, 's1401476', '1401476', NULL, 'achmad', 'noviandi', 'achmad41195@student.upi.edu', NULL, '$2y$10$rbxZnLxZPu/Vv.IVnIfiTu258hLa.QHaEOBiLtZowg5WCzo7IxifS', '61DcYLro8p8vf4LPqOkiITKHcgV7yOywPioUiQJsRiU3ZgwBaKeldUnIxKQt', 1, '1Mc032g7eFrkQxZu9U9Ys5PPdJeAHXwJ3TF2SCwz9VOKe139vseZ4in4SjtvzvRI', '36.71.234.249', '36.71.234.249', NULL, NULL, NULL, NULL, '2020-04-30 19:33:06', '2020-07-10 05:28:24', NULL);
INSERT INTO `usersOld` VALUES (437, 's1605054', '1605054', NULL, 'Muhammad Robbi', 'Awaludin', 'robbiawaludin23@student.upi.edu', NULL, '$2y$10$ulfBAHh4wZMY7mhDAhzl1OPsllbAj/Jrt0ls6xOlmxtcgqln.zsgS', 'kS73qDwyWHUKQZMxB08lJBrf4utSAAdWootS1dxFyLpppsglaEhNKYHTKTDc', 1, '5qGQCJekA6EgTeT9w5Qi7dyVN2SjxFMPxHMgODJVGQmJepZYTTEqtq4O5DCgoZy7', '116.206.9.55', '116.206.9.55', NULL, NULL, NULL, NULL, '2020-05-06 22:00:53', '2020-07-15 19:52:01', NULL);
INSERT INTO `usersOld` VALUES (450, 'NFA', '920200419930905101', NULL, 'Nurul', 'Fahmi Arief Hakim', 'nurulfahmi@upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-30 16:31:50', NULL);
INSERT INTO `usersOld` VALUES (451, 'MAR', '920200419921028101', NULL, 'Muhammad', 'Adli Rizqullah', 'muhammad.adli.riz@upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-01 08:20:00', NULL);
INSERT INTO `usersOld` VALUES (452, 'RPR', NULL, NULL, 'Resa', 'Pramudita', 'resa.pd@upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usersOld` VALUES (453, 'REP', NULL, NULL, 'Roer', 'Eka Pawinanti', 'roer_eka@upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usersOld` VALUES (454, 'STA', '920200419960203201', NULL, 'Silmi', 'Ath Thahirah Al Azhima', 'silmithahirah@upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-30 16:07:53', NULL);
INSERT INTO `usersOld` VALUES (455, 'MAQ', NULL, NULL, 'Mariya', 'Al Qibtiya', 'mariyalqibtiya@upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usersOld` VALUES (464, 'DDW', '197608272009121001', NULL, 'Didin', 'Wahyudin', 'deewahyu@upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `usersOld` VALUES (465, 's1604468', '1604468', NULL, 'Roni Ruslan', 'Adul Gani', 'rorugan@student.upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-13 05:04:53', '2020-09-16 19:44:58', NULL);
INSERT INTO `usersOld` VALUES (466, 's1700904', '1700904', NULL, 'Andre Yogaswara', 'Herlambang', 'andreyogaswara@upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-13 05:31:37', '2020-09-16 16:01:16', NULL);
INSERT INTO `usersOld` VALUES (467, 's1602143', '1602143', NULL, 'Muhammad', 'Fariz', 'muhammadfariz@student.upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-13 17:58:59', '2020-09-13 17:59:15', NULL);
INSERT INTO `usersOld` VALUES (468, 's1506837', '1506837', NULL, 'Ahmad', 'Syaifullah', 'ahmadsyaifullah68@gmail.com', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-14 10:09:06', '2020-09-14 10:09:59', NULL);
INSERT INTO `usersOld` VALUES (469, 's1703006', '1703006', NULL, 'Arief Khairi', 'Irawan', 'arief.khairy4@upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-14 11:05:03', '2020-09-14 11:05:25', NULL);
INSERT INTO `usersOld` VALUES (470, 's1301558', '1301558', NULL, 'anthony', 'jayanto ramadhan', 'anthony.jayanto.ramadhan@student.upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-14 11:36:41', '2020-09-18 13:48:10', NULL);
INSERT INTO `usersOld` VALUES (471, 's1606109', '1606109', NULL, 'Kevin', 'Ankurien', 'ankurienkevin@student.upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-14 13:07:00', '2020-09-17 14:37:53', NULL);
INSERT INTO `usersOld` VALUES (472, 's1700835', '1700835', NULL, 'Jejen', 'Jaenal Aripin', 'jaenalaripin14@upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-14 13:23:56', '2020-09-14 13:49:58', NULL);
INSERT INTO `usersOld` VALUES (473, 's1403337', '1403337', NULL, 'Raka', 'Saripianto', 'rakasaripianto@studen.upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-14 13:44:57', '2020-09-14 13:45:49', NULL);
INSERT INTO `usersOld` VALUES (474, 's1701017', '1701017', NULL, 'Vena', 'Febrina', 'venafadilah75@upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-14 14:10:15', '2020-09-14 14:10:43', NULL);
INSERT INTO `usersOld` VALUES (475, 's1702825', '1702825', NULL, 'Sidiq Andika', 'Maulana', 'Sidiqandika@upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-14 14:10:18', '2020-09-20 22:41:19', NULL);
INSERT INTO `usersOld` VALUES (476, 's1703770', '1703770', NULL, 'Asep', 'Saepul Rohman', 'asepsaepulrohman@upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-14 14:11:38', '2020-09-16 13:54:42', NULL);
INSERT INTO `usersOld` VALUES (477, 's1703961', '1703961', NULL, 'Wilda Asifa', 'Salsabila', 'salsabilawilda@upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-14 14:24:53', '2020-09-14 14:25:39', NULL);
INSERT INTO `usersOld` VALUES (478, 's1704818', '1704818', NULL, 'Reni', 'Oktadianingsih', 'Renioktadia@upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-14 14:26:25', '2020-09-14 14:27:40', NULL);
INSERT INTO `usersOld` VALUES (479, 's1704753', '1704753', NULL, 'Geronimo', 'Karseno', 'geronimokarseno@upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-14 14:27:40', '2020-09-14 14:27:57', NULL);
INSERT INTO `usersOld` VALUES (480, 's1703846', '1703846', NULL, 'Satria Ihsan', 'Ramadhan', 'satria18@upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-15 15:08:12', '2020-09-16 19:59:43', NULL);
INSERT INTO `usersOld` VALUES (481, 's1700941', '1700941', NULL, 'Hilal', 'Ismail', 'hilalisma64@upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-16 16:25:40', '2020-09-17 10:18:14', NULL);
INSERT INTO `usersOld` VALUES (482, 's1701067', '1701067', NULL, 'Raffi', 'Erba', 'erbaraffi20@upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-16 16:37:06', '2020-09-16 16:48:01', NULL);
INSERT INTO `usersOld` VALUES (483, 's1702673', '1702673', NULL, 'Nizar', 'Noer Insan', 'nizarnoeri@upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-16 16:58:27', '2020-09-16 20:15:39', NULL);
INSERT INTO `usersOld` VALUES (484, 's1702563', '1702563', NULL, 'Ariawan', 'Akbar Nugraha', 'akbar.ariawan25@upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-16 17:04:40', '2020-09-16 17:05:23', NULL);
INSERT INTO `usersOld` VALUES (485, 's1806602', '1806602', NULL, 'Syahidah', 'Muthi\'ah', 'syahidahmuthiah@upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-16 17:29:46', '2020-09-16 17:40:05', NULL);
INSERT INTO `usersOld` VALUES (486, 's1705696', '1705696', NULL, 'Harisa', 'Rahmah', 'harisarahmah12@upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-16 18:42:08', '2020-09-16 18:42:44', NULL);
INSERT INTO `usersOld` VALUES (487, 's1703819', '1703819', NULL, 'Syifa Fajar', 'Qolbi', 'syifafajarqolbi@gmail.com', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-16 19:30:26', '2020-09-16 19:34:08', NULL);
INSERT INTO `usersOld` VALUES (488, 's1704531', '1704531', NULL, 'Siska', 'Anggraeni', 'sissiska23@upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-16 19:48:48', '2020-09-16 19:55:12', NULL);
INSERT INTO `usersOld` VALUES (489, 's1702157', '1702157', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-16 20:30:37', '2020-09-16 20:30:37', NULL);
INSERT INTO `usersOld` VALUES (490, 's1705339', '1705339', NULL, 'Salsabila', 'Asrofa', 'salsabilaasrofa@upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-17 10:30:55', '2020-09-17 10:32:27', NULL);
INSERT INTO `usersOld` VALUES (491, 's1900194', '1900194', NULL, 'Heru', 'Purnama', 'herupurnama@upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-19 19:21:12', '2020-09-19 19:21:36', NULL);
INSERT INTO `usersOld` VALUES (492, 's1705121', '1705121', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-21 07:49:00', '2020-09-21 07:49:00', NULL);
INSERT INTO `usersOld` VALUES (493, 's1900426', '1900426', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-21 23:06:22', '2020-09-21 23:06:22', NULL);
INSERT INTO `usersOld` VALUES (494, 's1700292', '1700292', NULL, 'seno adji wahyu prabowo', 'prabowo', 'senoadjiwahyuprabowo@upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-25 11:31:59', '2020-09-25 11:32:42', NULL);
INSERT INTO `usersOld` VALUES (495, 's1704585', '1704585', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-02 18:22:30', '2020-10-02 18:22:30', NULL);
INSERT INTO `usersOld` VALUES (496, 's1702184', '1702184', NULL, 'Revytanova', 'Candra Ningrum', 'revytanovacn@upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-05 14:13:26', '2020-10-10 13:39:56', NULL);
INSERT INTO `usersOld` VALUES (497, 's1700506', '1700506', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-06 09:29:25', '2020-10-06 09:29:25', NULL);
INSERT INTO `usersOld` VALUES (498, 's1701201', '1701201', NULL, 'Muhammad', 'Mauluddin', 'Mudin.ghifar@upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-06 09:32:43', '2020-10-06 09:33:27', NULL);
INSERT INTO `usersOld` VALUES (499, 's1700760', '1700760', NULL, 'Ahmad', 'Sahrul Kamal', 'ahmadsahrulkamal@upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-06 09:33:20', '2020-10-06 10:01:52', NULL);
INSERT INTO `usersOld` VALUES (500, 's1701025', '1701025', NULL, 'Afif', 'Lukmansyah', 'Afiflukmansyah58@upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-06 09:36:20', '2020-10-06 09:36:50', NULL);
INSERT INTO `usersOld` VALUES (501, 's1704405', '1704405', NULL, 'Alfi', 'Syahrin', 'alfisy334@gmail.com', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-06 09:41:31', '2020-10-06 10:40:06', NULL);
INSERT INTO `usersOld` VALUES (502, 's1702551', '1702551', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-06 09:47:58', '2020-10-06 09:47:58', NULL);
INSERT INTO `usersOld` VALUES (503, 's1700286', '1700286', NULL, 'Naufal Akmal Mufid', NULL, 'naufalakmal@upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-06 09:52:00', '2020-10-06 09:55:21', NULL);
INSERT INTO `usersOld` VALUES (504, 's1505321', '1505321', NULL, 'Kris May', 'Anggara', 'Krismagara5@gmail.com', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-06 10:25:15', '2020-10-06 10:25:56', NULL);
INSERT INTO `usersOld` VALUES (505, 's1705242', '1705242', NULL, 'Muhammad Syifa', 'Yudhaswara', 'syifayudha12@gmail.com', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-06 10:35:00', '2020-10-06 10:35:33', NULL);
INSERT INTO `usersOld` VALUES (506, 's1705693', '1705693', NULL, 'Nur Soleh', 'Guntara', 'guntara69@upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-06 10:39:05', '2020-10-06 10:40:12', NULL);
INSERT INTO `usersOld` VALUES (507, 's1701959', '1701959', NULL, 'Tony', 'Rifadi', '29.tonyrifadi.9e@gmail.com', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-06 10:40:41', '2020-10-06 10:40:57', NULL);
INSERT INTO `usersOld` VALUES (508, 's1704451', '1704451', NULL, 'Muhammad Faishal', 'Erbakan', 'faishalerbakan@upi.com', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-06 10:41:24', '2020-10-06 10:42:02', NULL);
INSERT INTO `usersOld` VALUES (509, 's1700285', '1700285', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-06 12:50:14', '2020-10-06 12:50:14', NULL);
INSERT INTO `usersOld` VALUES (510, 's1704603', '1704603', NULL, 'Ifthar Riza', 'Muzakki', 'ifthariza123@upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-06 12:52:46', '2020-10-06 12:53:39', NULL);
INSERT INTO `usersOld` VALUES (511, 's1701770', '1701770', NULL, 'Rizki', 'Sundara', 'rizkisundara@upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-06 12:54:56', '2020-10-06 12:58:10', NULL);
INSERT INTO `usersOld` VALUES (512, 's1702585', '1702585', NULL, 'Muhammad', 'Farhan', 'mfarhan2918@upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-06 13:04:06', '2020-10-06 13:04:58', NULL);
INSERT INTO `usersOld` VALUES (513, 's1703715', '1703715', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-06 13:04:49', '2020-10-06 13:04:49', NULL);
INSERT INTO `usersOld` VALUES (514, 's1701353', '1701353', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-06 13:25:07', '2020-10-06 13:25:07', NULL);
INSERT INTO `usersOld` VALUES (515, 's1902781', '1902781', NULL, 'Ilham', 'Maulana', 'Maulanailham601@gmail.com', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-07 07:06:34', '2020-10-07 07:06:48', NULL);
INSERT INTO `usersOld` VALUES (516, 's1904935', '1904935', NULL, 'Eri', 'Arfan Rizqi', 'eri.arfan@gmail.com', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-07 07:07:58', '2020-10-07 07:08:44', NULL);
INSERT INTO `usersOld` VALUES (517, 's1903173', '1903173', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-07 07:08:12', '2020-10-07 07:08:12', NULL);
INSERT INTO `usersOld` VALUES (518, 's1904913', '1904913', NULL, 'Pratidina', 'Evadianty', 'diantyeva@upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-07 07:24:45', '2020-10-07 07:25:35', NULL);
INSERT INTO `usersOld` VALUES (519, 's1909222', '1909222', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-07 08:06:33', '2020-10-07 08:06:33', NULL);
INSERT INTO `usersOld` VALUES (520, 's1909645', '1909645', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-07 08:13:22', '2020-10-07 08:13:22', NULL);
INSERT INTO `usersOld` VALUES (521, 's1903340', '1903340', NULL, 'Ghasan', 'Z', 'ghasanzet72@gmail.com7', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-07 08:23:34', '2020-10-07 08:34:01', NULL);
INSERT INTO `usersOld` VALUES (522, 's1902588', '1902588', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-07 08:25:04', '2020-10-07 08:25:04', NULL);
INSERT INTO `usersOld` VALUES (523, 's1906055', '1906055', NULL, 'Farrel', 'Ghiffari', 'farrelghffr7@gmail.com', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-07 08:48:19', '2020-10-07 08:49:26', NULL);
INSERT INTO `usersOld` VALUES (524, 's1701651', '1701651', NULL, 'Ibnu', 'Hanifah Alem', 'Alemibnu@gmail.com', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-07 10:45:42', '2020-10-07 10:46:07', NULL);
INSERT INTO `usersOld` VALUES (525, 's1703700', '1703700', NULL, 'Sapitri', 'Hermawati', 'sapitriherma11@upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-07 21:35:17', '2020-10-07 21:35:55', NULL);
INSERT INTO `usersOld` VALUES (526, 's1805565', '1805565', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-08 08:07:36', '2020-10-08 08:07:36', NULL);
INSERT INTO `usersOld` VALUES (527, 's1804912', '1804912', NULL, 'Sinta', 'Agustina', 'Sintaagustina@upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-08 08:11:46', '2020-10-08 08:12:35', NULL);
INSERT INTO `usersOld` VALUES (528, 's1400011', '1400011', NULL, 'Anis', 'Rengganis', 'rengganis@student.upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-08 19:15:09', '2020-10-08 19:15:58', NULL);
INSERT INTO `usersOld` VALUES (529, 's1700100', '1700100', NULL, 'Muhammad Hadi', 'Dermawan', 'dermawanhadi@upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-12 06:08:25', '2020-10-12 06:08:46', NULL);
INSERT INTO `usersOld` VALUES (530, 's1705629', '1705629', NULL, 'Fredy', 'Sidabutar', 'fredysidabutar1@upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-12 14:44:00', '2020-10-12 14:45:22', NULL);
INSERT INTO `usersOld` VALUES (531, 's1701724', '1701724', NULL, 'Bagas', 'Alfaridzi', 'bagasalfaridzi@upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-13 09:16:58', '2020-10-13 09:20:51', NULL);
INSERT INTO `usersOld` VALUES (532, 's1705150', '1705150', NULL, 'Gina', 'Purnama', 'ginapurnama@upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-13 12:48:45', '2020-10-13 12:53:40', NULL);
INSERT INTO `usersOld` VALUES (533, 's1801389', '1801389', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-13 16:37:48', '2020-10-13 16:37:48', NULL);
INSERT INTO `usersOld` VALUES (534, 's1700652', '1700652', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-14 08:43:00', '2020-10-14 08:43:00', NULL);
INSERT INTO `usersOld` VALUES (535, 's1905599', '1905599', NULL, 'Shalih Jayadiprana', NULL, 'jayashalih@gmail.com', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-14 08:44:36', '2020-10-14 08:51:09', NULL);
INSERT INTO `usersOld` VALUES (536, 's1705686', '1705686', NULL, 'Dandy', 'Indrawan', 'dandyindrawan@upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-14 13:40:38', '2020-10-14 13:41:38', NULL);
INSERT INTO `usersOld` VALUES (537, 's1704764', '1704764', NULL, 'Johari', 'Butarbutar', 'johari@upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-15 17:17:30', '2020-10-15 20:50:47', NULL);
INSERT INTO `usersOld` VALUES (538, 's1704258', '1704258', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-15 20:09:13', '2020-10-15 20:09:13', NULL);
INSERT INTO `usersOld` VALUES (539, 's1809697', '1700542', NULL, 'Tari', 'Pramanik', 'taripramanik@upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-18 09:24:09', '2020-10-21 05:31:00', NULL);
INSERT INTO `usersOld` VALUES (540, 's1703538', '1703538', NULL, 'Hanifa', 'Nurul Aulia', 'hnfaulia@upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-18 10:39:11', '2020-10-18 10:39:41', NULL);
INSERT INTO `usersOld` VALUES (541, 's1702379', '1702379', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-19 01:10:20', '2020-10-19 01:10:20', NULL);
INSERT INTO `usersOld` VALUES (542, 's1705656', '1705656', NULL, 'Wahyudin', NULL, 'wahyudinatf11@upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-19 09:43:09', '2020-10-19 09:43:36', NULL);
INSERT INTO `usersOld` VALUES (543, 's1702640', '1702640', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-19 14:04:47', '2020-10-19 14:04:47', NULL);
INSERT INTO `usersOld` VALUES (544, 's1701631', '1701631', NULL, 'Hanif', 'Abdurrafi', 'hanifabdurrafi@upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-20 12:06:39', '2020-10-20 12:07:26', NULL);
INSERT INTO `usersOld` VALUES (545, 's1705113', '1705113', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-20 13:51:11', '2020-10-20 13:51:11', NULL);
INSERT INTO `usersOld` VALUES (546, 's1702881', '1702881', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-20 21:19:23', '2020-10-20 21:19:23', NULL);
INSERT INTO `usersOld` VALUES (547, 's1703228', '1703228', NULL, 'Rd Siti Sekar', 'Azzahra', 'rdsekarazzahra@upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-21 10:51:36', '2020-10-21 11:00:47', NULL);
INSERT INTO `usersOld` VALUES (548, 's1705327', '1705327', NULL, 'Riadh', 'Alfy', 'alfyriadh@upi.edu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-21 12:25:16', '2020-10-21 12:25:38', NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
