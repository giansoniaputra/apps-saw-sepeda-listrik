/*
 Navicat Premium Data Transfer

 Source Server         : Localhost
 Source Server Type    : MySQL
 Source Server Version : 100432 (10.4.32-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : spk_saw

 Target Server Type    : MySQL
 Target Server Version : 100432 (10.4.32-MariaDB)
 File Encoding         : 65001

 Date: 26/04/2025 19:44:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for alternatifs
-- ----------------------------
DROP TABLE IF EXISTS `alternatifs`;
CREATE TABLE `alternatifs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alternatif` int NOT NULL,
  `keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `harga` int NULL DEFAULT NULL,
  `batrai` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `power` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `kecepatan` int NULL DEFAULT NULL,
  `jarak` int NULL DEFAULT NULL,
  `daya` int NULL DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `alternatifs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of alternatifs
-- ----------------------------
INSERT INTO `alternatifs` VALUES (1, '9ec3f4eb-0130-4508-8bd8-999844865651', 1, 'D60', 'Kuat', 10000, '10000', '10000', 10000, 10000, 10000, 'photo/7Oxjs6H6sPayRLNf3VQhCwYs9LBTY7Y0w57SNJcv.avif', '2025-04-26 05:17:28', '2025-04-26 10:16:59');
INSERT INTO `alternatifs` VALUES (2, '9ec3f4eb-0978-4d8f-9add-2c9e053bcd6a', 2, 'D70', 'Kuat', 10000, '10000', '10000', 10000, 10000, 10000, 'photo/7Oxjs6H6sPayRLNf3VQhCwYs9LBTY7Y0w57SNJcv.avif', '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `alternatifs` VALUES (3, '9ec3f4eb-0af4-4bfd-a92e-2b04a6a575a6', 3, 'T70', 'Kuat', 10000, '10000', '10000', 10000, 10000, 10000, 'photo/7Oxjs6H6sPayRLNf3VQhCwYs9LBTY7Y0w57SNJcv.avif', '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `alternatifs` VALUES (4, '9ec3f4eb-0b6e-4235-b82d-82d52153c1f8', 4, 'M70', 'Kuat', 10000, '10000', '10000', 10000, 10000, 10000, 'photo/7Oxjs6H6sPayRLNf3VQhCwYs9LBTY7Y0w57SNJcv.avif', '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `alternatifs` VALUES (5, '9ec3f4eb-0bd7-4841-b60f-642b0e2d71f9', 5, 'M60', 'Kuat', 10000, '10000', '10000', 10000, 10000, 10000, 'photo/7Oxjs6H6sPayRLNf3VQhCwYs9LBTY7Y0w57SNJcv.avif', '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `alternatifs` VALUES (6, '9ec3f4eb-0c3e-4537-b051-3bcbccfce7b4', 6, 'D60 Adv', 'Kuat', 10000, '10000', '10000', 10000, 10000, 10000, 'photo/7Oxjs6H6sPayRLNf3VQhCwYs9LBTY7Y0w57SNJcv.avif', '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `alternatifs` VALUES (7, '9ec3f4eb-0ca1-4de4-a16e-87ecc9b1ccb7', 7, 'D75', 'Kuat', 10000, '10000', '10000', 10000, 10000, 10000, 'photo/7Oxjs6H6sPayRLNf3VQhCwYs9LBTY7Y0w57SNJcv.avif', '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `alternatifs` VALUES (8, '9ec3f4eb-0d01-4f87-b78c-c3672f23957e', 8, 'T60', 'Kuat', 10000, '10000', '10000', 10000, 10000, 10000, 'photo/7Oxjs6H6sPayRLNf3VQhCwYs9LBTY7Y0w57SNJcv.avif', '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `alternatifs` VALUES (9, '9ec3f4eb-0d62-4752-b463-af84ccf94f53', 9, 'T65L', 'Kuat', 10000, '10000', '10000', 10000, 10000, 10000, 'photo/7Oxjs6H6sPayRLNf3VQhCwYs9LBTY7Y0w57SNJcv.avif', '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `alternatifs` VALUES (10, '9ec3f4eb-0dc0-4433-b98a-2e387f5703bb', 10, 'M75', 'Kuat', 10000, '10000', '10000', 10000, 10000, 10000, 'photo/7Oxjs6H6sPayRLNf3VQhCwYs9LBTY7Y0w57SNJcv.avif', '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `alternatifs` VALUES (11, '9ec3f4eb-0e20-4a44-b57e-972d47521e7a', 11, 'Ledo2', 'Kuat', 10000, '10000', '10000', 10000, 10000, 10000, 'photo/7Oxjs6H6sPayRLNf3VQhCwYs9LBTY7Y0w57SNJcv.avif', '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `alternatifs` VALUES (12, '9ec3f4eb-0e89-49ef-acb2-3f75fca3cd6e', 12, 'Magical  3 Lit', 'Kuat', 10000, '10000', '10000', 10000, 10000, 10000, 'photo/7Oxjs6H6sPayRLNf3VQhCwYs9LBTY7Y0w57SNJcv.avif', '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `alternatifs` VALUES (13, '9ec3f4eb-0f04-4806-a803-163a8ad9d652', 13, 'Ledo 3 Lit', 'Kuat', 10000, '10000', '10000', 10000, 10000, 10000, 'photo/7Oxjs6H6sPayRLNf3VQhCwYs9LBTY7Y0w57SNJcv.avif', '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `alternatifs` VALUES (14, '9ec3f4eb-0f67-43af-989d-0bc45f1b1e0c', 14, 'Galaxy 3 Lit', 'Kuat', 10000, '10000', '10000', 10000, 10000, 10000, 'photo/7Oxjs6H6sPayRLNf3VQhCwYs9LBTY7Y0w57SNJcv.avif', '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `alternatifs` VALUES (15, '9ec3f4eb-0fca-4558-af49-8d56ad9fa762', 15, 'C3', 'Kuat', 10000, '10000', '10000', 10000, 10000, 10000, 'photo/7Oxjs6H6sPayRLNf3VQhCwYs9LBTY7Y0w57SNJcv.avif', '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `alternatifs` VALUES (16, '9ec3f4eb-1052-4530-98f7-b14e1a97b5f3', 16, 'Uno 4', 'Kuat', 10000, '10000', '10000', 10000, 10000, 10000, 'photo/7Oxjs6H6sPayRLNf3VQhCwYs9LBTY7Y0w57SNJcv.avif', '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `alternatifs` VALUES (17, '9ec3f4eb-10db-4635-92a2-7b84cf12e95d', 17, 'Akasha 3', 'Kuat', 10000, '10000', '10000', 10000, 10000, 10000, 'photo/7Oxjs6H6sPayRLNf3VQhCwYs9LBTY7Y0w57SNJcv.avif', '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `alternatifs` VALUES (18, '9ec3f4eb-114c-4ba1-9962-fc4e234cd493', 18, 'A2', 'Kuat', 10000, '10000', '10000', 10000, 10000, 10000, 'photo/7Oxjs6H6sPayRLNf3VQhCwYs9LBTY7Y0w57SNJcv.avif', '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `alternatifs` VALUES (19, '9ec3f4eb-11b5-4277-8943-b3abe00adeba', 19, 'GD 122', 'Kuat', 10000, '10000', '10000', 10000, 10000, 10000, 'photo/7Oxjs6H6sPayRLNf3VQhCwYs9LBTY7Y0w57SNJcv.avif', '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `alternatifs` VALUES (20, '9ec3f4eb-121d-49f3-bfe3-e6c7debf42dd', 20, '140D/111', 'Kuat', 10000, '10000', '10000', 10000, 10000, 10000, 'photo/7Oxjs6H6sPayRLNf3VQhCwYs9LBTY7Y0w57SNJcv.avif', '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `alternatifs` VALUES (21, '9ec3f4eb-1283-44f8-bce0-9421167eca3b', 21, 'GD 155A Panda', 'Kuat', 10000, '10000', '10000', 10000, 10000, 10000, 'photo/7Oxjs6H6sPayRLNf3VQhCwYs9LBTY7Y0w57SNJcv.avif', '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `alternatifs` VALUES (22, '9ec3f4eb-12e5-418a-a50e-9ef1d06b7700', 22, 'GD 115 Aurora', 'Kuat', 10000, '10000', '10000', 10000, 10000, 10000, 'photo/7Oxjs6H6sPayRLNf3VQhCwYs9LBTY7Y0w57SNJcv.avif', '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `alternatifs` VALUES (23, '9ec3f4eb-1347-4b86-a605-07f247f03339', 23, 'Veloci V3', 'Kuat', 10000, '10000', '10000', 10000, 10000, 10000, 'photo/7Oxjs6H6sPayRLNf3VQhCwYs9LBTY7Y0w57SNJcv.avif', '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `alternatifs` VALUES (24, '9ec3f4eb-13a4-481e-9976-655a3a6f234c', 24, 'X650', 'Kuat', 10000, '10000', '10000', 10000, 10000, 10000, 'photo/7Oxjs6H6sPayRLNf3VQhCwYs9LBTY7Y0w57SNJcv.avif', '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `alternatifs` VALUES (25, '9ec3f4eb-1421-45f7-b16d-f93d9beb991a', 25, 'Zeckrom 300', 'Kuat', 10000, '10000', '10000', 10000, 10000, 10000, 'photo/7Oxjs6H6sPayRLNf3VQhCwYs9LBTY7Y0w57SNJcv.avif', '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `alternatifs` VALUES (26, '9ec3f4eb-148e-41df-8008-12e312080e1b', 26, 'Ventura R2', 'Kuat', 10000, '10000', '10000', 10000, 10000, 10000, 'photo/7Oxjs6H6sPayRLNf3VQhCwYs9LBTY7Y0w57SNJcv.avif', '2025-04-26 05:17:28', '2025-04-26 09:50:58');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for kriterias
-- ----------------------------
DROP TABLE IF EXISTS `kriterias`;
CREATE TABLE `kriterias`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode` int NOT NULL,
  `kriteria` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `atribut` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bobot` double(8, 2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `kriterias_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kriterias
-- ----------------------------
INSERT INTO `kriterias` VALUES (1, '9ec3f4eb-150a-430b-acfd-c328ffcc880f', 1, 'Harga (jt)', 'COST', 0.15, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `kriterias` VALUES (2, '9ec3f4eb-1753-4670-ac55-be3eb6c8e5d9', 2, 'Motor Power (Watt)', 'BENEFIT', 0.10, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `kriterias` VALUES (3, '9ec3f4eb-17d2-4d38-bc1e-8b5e1b9cbdb8', 3, 'Battery (Wh)', 'BENEFIT', 0.15, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `kriterias` VALUES (4, '9ec3f4eb-1848-49eb-8941-f645a36a79ef', 4, 'Jarak Tempuh (KM)', 'BENEFIT', 0.15, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `kriterias` VALUES (5, '9ec3f4eb-18b6-4509-ad84-80da42844fb2', 5, 'Daya Angkut (KG)', 'BENEFIT', 0.10, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `kriterias` VALUES (6, '9ec3f4eb-1921-43ba-9fa3-9a2f400dfdd3', 6, 'Kecepatan Max (km/h)', 'BENEFIT', 0.15, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `kriterias` VALUES (7, '9ec3f4eb-198a-4b0b-b3b8-421f4fe50e18', 7, 'Skor Jenis Rem', 'BENEFIT', 0.05, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `kriterias` VALUES (8, '9ec3f4eb-19f0-48e9-b7e7-4a24c77c5ee1', 8, 'Bobot Sepeda', 'COST', 0.05, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `kriterias` VALUES (9, '9ec3f4eb-1a5d-48fb-85f9-6448895bcfd7', 9, 'Diameter Ban', 'BENEFIT', 0.05, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `kriterias` VALUES (10, '9ec3f4eb-1ad3-4f35-9a1d-f6e08d35af8a', 10, 'Skor Fitur', 'BENEFIT', 0.05, '2025-04-26 05:17:28', '2025-04-26 05:17:28');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_reset_tokens_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2024_01_22_023856_create_kriterias_table', 1);
INSERT INTO `migrations` VALUES (6, '2024_01_22_150054_create_sub_kriterias_table', 1);
INSERT INTO `migrations` VALUES (7, '2024_01_23_154905_create_alternatifs_table', 1);
INSERT INTO `migrations` VALUES (8, '2024_01_24_030310_create_perhitungans_table', 1);

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for perhitungans
-- ----------------------------
DROP TABLE IF EXISTS `perhitungans`;
CREATE TABLE `perhitungans`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alternatif_uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kriteria_uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bobot` double(8, 2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `perhitungans_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 261 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of perhitungans
-- ----------------------------
INSERT INTO `perhitungans` VALUES (1, '9ec3f4eb-1deb-4814-935d-b9056ca8e6f0', '9ec3f4eb-0130-4508-8bd8-999844865651', '9ec3f4eb-150a-430b-acfd-c328ffcc880f', 3.40, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (2, '9ec3f4eb-2004-4c59-bff2-eb806bc2fe13', '9ec3f4eb-0130-4508-8bd8-999844865651', '9ec3f4eb-1753-4670-ac55-be3eb6c8e5d9', 450.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (3, '9ec3f4eb-22e3-4e09-9662-b7899907292d', '9ec3f4eb-0130-4508-8bd8-999844865651', '9ec3f4eb-17d2-4d38-bc1e-8b5e1b9cbdb8', 576.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (4, '9ec3f4eb-2362-4878-a0eb-bb214f8b318c', '9ec3f4eb-0130-4508-8bd8-999844865651', '9ec3f4eb-1848-49eb-8941-f645a36a79ef', 45.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (5, '9ec3f4eb-23f8-4b7c-830f-793eb57ce06c', '9ec3f4eb-0130-4508-8bd8-999844865651', '9ec3f4eb-18b6-4509-ad84-80da42844fb2', 150.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (6, '9ec3f4eb-2464-46f0-8c2c-394c410d9d11', '9ec3f4eb-0130-4508-8bd8-999844865651', '9ec3f4eb-1921-43ba-9fa3-9a2f400dfdd3', 40.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (7, '9ec3f4eb-24c8-4570-a3e3-9f4e4de7be29', '9ec3f4eb-0130-4508-8bd8-999844865651', '9ec3f4eb-198a-4b0b-b3b8-421f4fe50e18', 1.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (8, '9ec3f4eb-252c-4a01-bed1-79d29c03d9ab', '9ec3f4eb-0130-4508-8bd8-999844865651', '9ec3f4eb-19f0-48e9-b7e7-4a24c77c5ee1', 55.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (9, '9ec3f4eb-258f-446b-ba56-ee22a795d651', '9ec3f4eb-0130-4508-8bd8-999844865651', '9ec3f4eb-1a5d-48fb-85f9-6448895bcfd7', 14.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (10, '9ec3f4eb-2603-4d8d-9fb0-be3aa72b37b5', '9ec3f4eb-0130-4508-8bd8-999844865651', '9ec3f4eb-1ad3-4f35-9a1d-f6e08d35af8a', 1.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (11, '9ec3f4eb-26a4-45b8-bde7-cb9bdc2b8298', '9ec3f4eb-0978-4d8f-9add-2c9e053bcd6a', '9ec3f4eb-150a-430b-acfd-c328ffcc880f', 3.70, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (12, '9ec3f4eb-2739-4b67-8f5d-dc1b4706840c', '9ec3f4eb-0978-4d8f-9add-2c9e053bcd6a', '9ec3f4eb-1753-4670-ac55-be3eb6c8e5d9', 450.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (13, '9ec3f4eb-27c4-43ab-9647-c8262dc2b22d', '9ec3f4eb-0978-4d8f-9add-2c9e053bcd6a', '9ec3f4eb-17d2-4d38-bc1e-8b5e1b9cbdb8', 576.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (14, '9ec3f4eb-2840-4a58-8577-7df2441cd2fc', '9ec3f4eb-0978-4d8f-9add-2c9e053bcd6a', '9ec3f4eb-1848-49eb-8941-f645a36a79ef', 45.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (15, '9ec3f4eb-28b6-4828-adda-88c4649a5f9f', '9ec3f4eb-0978-4d8f-9add-2c9e053bcd6a', '9ec3f4eb-18b6-4509-ad84-80da42844fb2', 150.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (16, '9ec3f4eb-2926-444e-a991-83ec5eafb7f3', '9ec3f4eb-0978-4d8f-9add-2c9e053bcd6a', '9ec3f4eb-1921-43ba-9fa3-9a2f400dfdd3', 45.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (17, '9ec3f4eb-2990-4cc7-ab13-f1c825c84d90', '9ec3f4eb-0978-4d8f-9add-2c9e053bcd6a', '9ec3f4eb-198a-4b0b-b3b8-421f4fe50e18', 1.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (18, '9ec3f4eb-2a0a-415c-b33e-0896d0c6971b', '9ec3f4eb-0978-4d8f-9add-2c9e053bcd6a', '9ec3f4eb-19f0-48e9-b7e7-4a24c77c5ee1', 70.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (19, '9ec3f4eb-2aa3-46ff-be0b-4a538f247f59', '9ec3f4eb-0978-4d8f-9add-2c9e053bcd6a', '9ec3f4eb-1a5d-48fb-85f9-6448895bcfd7', 14.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (20, '9ec3f4eb-2b1b-4b6c-a00f-3d563b103219', '9ec3f4eb-0978-4d8f-9add-2c9e053bcd6a', '9ec3f4eb-1ad3-4f35-9a1d-f6e08d35af8a', 1.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (21, '9ec3f4eb-2bb9-41e8-aa72-dabe1297fc88', '9ec3f4eb-0af4-4bfd-a92e-2b04a6a575a6', '9ec3f4eb-150a-430b-acfd-c328ffcc880f', 5.60, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (22, '9ec3f4eb-2c23-4c92-8af8-dba63ff5d587', '9ec3f4eb-0af4-4bfd-a92e-2b04a6a575a6', '9ec3f4eb-1753-4670-ac55-be3eb6c8e5d9', 500.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (23, '9ec3f4eb-2c90-44f5-9613-92527a804156', '9ec3f4eb-0af4-4bfd-a92e-2b04a6a575a6', '9ec3f4eb-17d2-4d38-bc1e-8b5e1b9cbdb8', 1152.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (24, '9ec3f4eb-2cf8-4bc7-8a09-a82dcbf7ad24', '9ec3f4eb-0af4-4bfd-a92e-2b04a6a575a6', '9ec3f4eb-1848-49eb-8941-f645a36a79ef', 40.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (25, '9ec3f4eb-2d60-4ab4-a896-dc1ca9cbadeb', '9ec3f4eb-0af4-4bfd-a92e-2b04a6a575a6', '9ec3f4eb-18b6-4509-ad84-80da42844fb2', 150.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (26, '9ec3f4eb-2dca-491b-8bfe-aabfb1f2667f', '9ec3f4eb-0af4-4bfd-a92e-2b04a6a575a6', '9ec3f4eb-1921-43ba-9fa3-9a2f400dfdd3', 35.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (27, '9ec3f4eb-2e2d-4f1b-af3f-6439fec84462', '9ec3f4eb-0af4-4bfd-a92e-2b04a6a575a6', '9ec3f4eb-198a-4b0b-b3b8-421f4fe50e18', 1.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (28, '9ec3f4eb-2e8f-41a7-a298-c5405aac2a86', '9ec3f4eb-0af4-4bfd-a92e-2b04a6a575a6', '9ec3f4eb-19f0-48e9-b7e7-4a24c77c5ee1', 70.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (29, '9ec3f4eb-2ef2-4efb-9739-5812f73f1f8a', '9ec3f4eb-0af4-4bfd-a92e-2b04a6a575a6', '9ec3f4eb-1a5d-48fb-85f9-6448895bcfd7', 14.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (30, '9ec3f4eb-2f53-4ca8-a636-1288c487b3fb', '9ec3f4eb-0af4-4bfd-a92e-2b04a6a575a6', '9ec3f4eb-1ad3-4f35-9a1d-f6e08d35af8a', 2.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (31, '9ec3f4eb-2fde-4efe-af38-7af121a972ed', '9ec3f4eb-0b6e-4235-b82d-82d52153c1f8', '9ec3f4eb-150a-430b-acfd-c328ffcc880f', 4.60, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (32, '9ec3f4eb-3040-4d68-a37b-8510d60ed7ae', '9ec3f4eb-0b6e-4235-b82d-82d52153c1f8', '9ec3f4eb-1753-4670-ac55-be3eb6c8e5d9', 500.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (33, '9ec3f4eb-30b8-441f-ad6c-cbc92f121c8b', '9ec3f4eb-0b6e-4235-b82d-82d52153c1f8', '9ec3f4eb-17d2-4d38-bc1e-8b5e1b9cbdb8', 576.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (34, '9ec3f4eb-315e-4921-a22e-21a74c2fd5bb', '9ec3f4eb-0b6e-4235-b82d-82d52153c1f8', '9ec3f4eb-1848-49eb-8941-f645a36a79ef', 40.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (35, '9ec3f4eb-31d8-4cd8-b522-59f0b9488f22', '9ec3f4eb-0b6e-4235-b82d-82d52153c1f8', '9ec3f4eb-18b6-4509-ad84-80da42844fb2', 150.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (36, '9ec3f4eb-3241-4425-9f3a-d8b14d35071d', '9ec3f4eb-0b6e-4235-b82d-82d52153c1f8', '9ec3f4eb-1921-43ba-9fa3-9a2f400dfdd3', 40.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (37, '9ec3f4eb-32b4-4252-8ef8-40691cbe87c3', '9ec3f4eb-0b6e-4235-b82d-82d52153c1f8', '9ec3f4eb-198a-4b0b-b3b8-421f4fe50e18', 1.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (38, '9ec3f4eb-3318-4a80-b893-248b00e3dca6', '9ec3f4eb-0b6e-4235-b82d-82d52153c1f8', '9ec3f4eb-19f0-48e9-b7e7-4a24c77c5ee1', 55.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (39, '9ec3f4eb-337e-43e3-8b4f-6671cd375f4f', '9ec3f4eb-0b6e-4235-b82d-82d52153c1f8', '9ec3f4eb-1a5d-48fb-85f9-6448895bcfd7', 14.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (40, '9ec3f4eb-33e9-408a-a0fe-f8d52f910469', '9ec3f4eb-0b6e-4235-b82d-82d52153c1f8', '9ec3f4eb-1ad3-4f35-9a1d-f6e08d35af8a', 2.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (41, '9ec3f4eb-34a8-48e3-b9a5-55a4216d2bd4', '9ec3f4eb-0bd7-4841-b60f-642b0e2d71f9', '9ec3f4eb-150a-430b-acfd-c328ffcc880f', 3.80, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (42, '9ec3f4eb-3511-4c04-88e0-6a3ddd12e785', '9ec3f4eb-0bd7-4841-b60f-642b0e2d71f9', '9ec3f4eb-1753-4670-ac55-be3eb6c8e5d9', 500.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (43, '9ec3f4eb-3577-49e7-8efc-cd3d857b1e86', '9ec3f4eb-0bd7-4841-b60f-642b0e2d71f9', '9ec3f4eb-17d2-4d38-bc1e-8b5e1b9cbdb8', 576.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (44, '9ec3f4eb-35dd-4904-bdc2-631fa7f97e0c', '9ec3f4eb-0bd7-4841-b60f-642b0e2d71f9', '9ec3f4eb-1848-49eb-8941-f645a36a79ef', 40.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (45, '9ec3f4eb-3640-4d5a-bf57-57dd4b771040', '9ec3f4eb-0bd7-4841-b60f-642b0e2d71f9', '9ec3f4eb-18b6-4509-ad84-80da42844fb2', 150.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (46, '9ec3f4eb-36a2-4c3a-b593-3988d5e05520', '9ec3f4eb-0bd7-4841-b60f-642b0e2d71f9', '9ec3f4eb-1921-43ba-9fa3-9a2f400dfdd3', 35.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (47, '9ec3f4eb-3712-44cc-98c2-b5189b4737c9', '9ec3f4eb-0bd7-4841-b60f-642b0e2d71f9', '9ec3f4eb-198a-4b0b-b3b8-421f4fe50e18', 1.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (48, '9ec3f4eb-37ab-4d86-95f7-5f39d58972c6', '9ec3f4eb-0bd7-4841-b60f-642b0e2d71f9', '9ec3f4eb-19f0-48e9-b7e7-4a24c77c5ee1', 50.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (49, '9ec3f4eb-3819-476f-a176-3eb00eb58767', '9ec3f4eb-0bd7-4841-b60f-642b0e2d71f9', '9ec3f4eb-1a5d-48fb-85f9-6448895bcfd7', 14.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (50, '9ec3f4eb-3882-4ccf-82dc-8421bb12c965', '9ec3f4eb-0bd7-4841-b60f-642b0e2d71f9', '9ec3f4eb-1ad3-4f35-9a1d-f6e08d35af8a', 3.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (51, '9ec3f4eb-392a-4e4e-a801-34dd653c3e3c', '9ec3f4eb-0c3e-4537-b051-3bcbccfce7b4', '9ec3f4eb-150a-430b-acfd-c328ffcc880f', 4.30, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (52, '9ec3f4eb-3998-4083-8b37-5782b3979dc7', '9ec3f4eb-0c3e-4537-b051-3bcbccfce7b4', '9ec3f4eb-1753-4670-ac55-be3eb6c8e5d9', 450.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (53, '9ec3f4eb-39fe-4e95-ae22-9f65ffbdc83c', '9ec3f4eb-0c3e-4537-b051-3bcbccfce7b4', '9ec3f4eb-17d2-4d38-bc1e-8b5e1b9cbdb8', 576.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (54, '9ec3f4eb-3a62-4c9d-ae9b-7f1249cacab3', '9ec3f4eb-0c3e-4537-b051-3bcbccfce7b4', '9ec3f4eb-1848-49eb-8941-f645a36a79ef', 40.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (55, '9ec3f4eb-3ac2-47fb-a756-9eb6d1894896', '9ec3f4eb-0c3e-4537-b051-3bcbccfce7b4', '9ec3f4eb-18b6-4509-ad84-80da42844fb2', 150.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (56, '9ec3f4eb-3b1f-491c-89a7-b813a3bc21ba', '9ec3f4eb-0c3e-4537-b051-3bcbccfce7b4', '9ec3f4eb-1921-43ba-9fa3-9a2f400dfdd3', 45.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (57, '9ec3f4eb-3b7c-406f-873e-24124db07790', '9ec3f4eb-0c3e-4537-b051-3bcbccfce7b4', '9ec3f4eb-198a-4b0b-b3b8-421f4fe50e18', 1.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (58, '9ec3f4eb-3bd9-4f6a-bf08-ce26022d4bac', '9ec3f4eb-0c3e-4537-b051-3bcbccfce7b4', '9ec3f4eb-19f0-48e9-b7e7-4a24c77c5ee1', 55.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (59, '9ec3f4eb-3c36-4be3-90a6-975060a6d1e5', '9ec3f4eb-0c3e-4537-b051-3bcbccfce7b4', '9ec3f4eb-1a5d-48fb-85f9-6448895bcfd7', 14.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (60, '9ec3f4eb-3c93-4e39-bc3a-5c962374f8e6', '9ec3f4eb-0c3e-4537-b051-3bcbccfce7b4', '9ec3f4eb-1ad3-4f35-9a1d-f6e08d35af8a', 3.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (61, '9ec3f4eb-3d1f-4a45-9940-a6f3dddbf003', '9ec3f4eb-0ca1-4de4-a16e-87ecc9b1ccb7', '9ec3f4eb-150a-430b-acfd-c328ffcc880f', 3.90, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (62, '9ec3f4eb-3d82-4a71-9c83-6d60b09e34a1', '9ec3f4eb-0ca1-4de4-a16e-87ecc9b1ccb7', '9ec3f4eb-1753-4670-ac55-be3eb6c8e5d9', 600.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (63, '9ec3f4eb-3e01-4512-a025-6694a63f57d9', '9ec3f4eb-0ca1-4de4-a16e-87ecc9b1ccb7', '9ec3f4eb-17d2-4d38-bc1e-8b5e1b9cbdb8', 576.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (64, '9ec3f4eb-3e63-47b7-8b90-dbebdcbd682a', '9ec3f4eb-0ca1-4de4-a16e-87ecc9b1ccb7', '9ec3f4eb-1848-49eb-8941-f645a36a79ef', 40.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (65, '9ec3f4eb-3ec4-4649-8049-714ed1500c85', '9ec3f4eb-0ca1-4de4-a16e-87ecc9b1ccb7', '9ec3f4eb-18b6-4509-ad84-80da42844fb2', 150.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (66, '9ec3f4eb-3f58-4398-a3ca-c8ea9ab8bbf5', '9ec3f4eb-0ca1-4de4-a16e-87ecc9b1ccb7', '9ec3f4eb-1921-43ba-9fa3-9a2f400dfdd3', 45.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (67, '9ec3f4eb-3fc4-4254-b392-064be06fc470', '9ec3f4eb-0ca1-4de4-a16e-87ecc9b1ccb7', '9ec3f4eb-198a-4b0b-b3b8-421f4fe50e18', 1.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (68, '9ec3f4eb-402c-43a4-abc5-3d017458aff1', '9ec3f4eb-0ca1-4de4-a16e-87ecc9b1ccb7', '9ec3f4eb-19f0-48e9-b7e7-4a24c77c5ee1', 70.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (69, '9ec3f4eb-4092-4e6d-bc55-57d3e04e887f', '9ec3f4eb-0ca1-4de4-a16e-87ecc9b1ccb7', '9ec3f4eb-1a5d-48fb-85f9-6448895bcfd7', 14.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (70, '9ec3f4eb-40fa-47e0-b306-9d12dcb4f174', '9ec3f4eb-0ca1-4de4-a16e-87ecc9b1ccb7', '9ec3f4eb-1ad3-4f35-9a1d-f6e08d35af8a', 3.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (71, '9ec3f4eb-4192-4e88-8831-7f6adabde832', '9ec3f4eb-0d01-4f87-b78c-c3672f23957e', '9ec3f4eb-150a-430b-acfd-c328ffcc880f', 4.20, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (72, '9ec3f4eb-41f5-4cae-8ae8-1a180489a746', '9ec3f4eb-0d01-4f87-b78c-c3672f23957e', '9ec3f4eb-1753-4670-ac55-be3eb6c8e5d9', 500.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (73, '9ec3f4eb-4258-4889-9cea-192b2314d3e0', '9ec3f4eb-0d01-4f87-b78c-c3672f23957e', '9ec3f4eb-17d2-4d38-bc1e-8b5e1b9cbdb8', 576.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (74, '9ec3f4eb-42ba-4659-97b8-aff4066822db', '9ec3f4eb-0d01-4f87-b78c-c3672f23957e', '9ec3f4eb-1848-49eb-8941-f645a36a79ef', 45.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (75, '9ec3f4eb-431b-493e-966f-ed5f1499f1ce', '9ec3f4eb-0d01-4f87-b78c-c3672f23957e', '9ec3f4eb-18b6-4509-ad84-80da42844fb2', 150.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (76, '9ec3f4eb-437b-462c-9a88-5b638e5a4c76', '9ec3f4eb-0d01-4f87-b78c-c3672f23957e', '9ec3f4eb-1921-43ba-9fa3-9a2f400dfdd3', 40.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (77, '9ec3f4eb-43dc-4563-9101-d4cf818188c6', '9ec3f4eb-0d01-4f87-b78c-c3672f23957e', '9ec3f4eb-198a-4b0b-b3b8-421f4fe50e18', 1.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (78, '9ec3f4eb-447d-4928-a0ce-3d41385347c4', '9ec3f4eb-0d01-4f87-b78c-c3672f23957e', '9ec3f4eb-19f0-48e9-b7e7-4a24c77c5ee1', 80.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (79, '9ec3f4eb-452c-4526-a893-2f5383d7dcf7', '9ec3f4eb-0d01-4f87-b78c-c3672f23957e', '9ec3f4eb-1a5d-48fb-85f9-6448895bcfd7', 14.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (80, '9ec3f4eb-45a0-4157-b2aa-832db969ab24', '9ec3f4eb-0d01-4f87-b78c-c3672f23957e', '9ec3f4eb-1ad3-4f35-9a1d-f6e08d35af8a', 2.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (81, '9ec3f4eb-4637-4a02-9280-c86af8ae7db6', '9ec3f4eb-0d62-4752-b463-af84ccf94f53', '9ec3f4eb-150a-430b-acfd-c328ffcc880f', 5.30, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (82, '9ec3f4eb-46a2-4b33-9b8c-7e1fe45a79fe', '9ec3f4eb-0d62-4752-b463-af84ccf94f53', '9ec3f4eb-1753-4670-ac55-be3eb6c8e5d9', 600.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (83, '9ec3f4eb-472f-416f-ba21-3443fa350e33', '9ec3f4eb-0d62-4752-b463-af84ccf94f53', '9ec3f4eb-17d2-4d38-bc1e-8b5e1b9cbdb8', 1152.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (84, '9ec3f4eb-4796-4f5c-a493-08ca5347669e', '9ec3f4eb-0d62-4752-b463-af84ccf94f53', '9ec3f4eb-1848-49eb-8941-f645a36a79ef', 40.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (85, '9ec3f4eb-47fd-4698-ad15-3b954332b613', '9ec3f4eb-0d62-4752-b463-af84ccf94f53', '9ec3f4eb-18b6-4509-ad84-80da42844fb2', 150.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (86, '9ec3f4eb-4864-4d93-a9e4-2c5dfa451aee', '9ec3f4eb-0d62-4752-b463-af84ccf94f53', '9ec3f4eb-1921-43ba-9fa3-9a2f400dfdd3', 45.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (87, '9ec3f4eb-48ce-4176-a2d5-6c423e84d6d0', '9ec3f4eb-0d62-4752-b463-af84ccf94f53', '9ec3f4eb-198a-4b0b-b3b8-421f4fe50e18', 1.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (88, '9ec3f4eb-493f-4241-b5ba-12cde91585ba', '9ec3f4eb-0d62-4752-b463-af84ccf94f53', '9ec3f4eb-19f0-48e9-b7e7-4a24c77c5ee1', 75.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (89, '9ec3f4eb-49a3-4a8c-a291-2848622187ee', '9ec3f4eb-0d62-4752-b463-af84ccf94f53', '9ec3f4eb-1a5d-48fb-85f9-6448895bcfd7', 14.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (90, '9ec3f4eb-4a02-49e8-a7ef-e30823e41922', '9ec3f4eb-0d62-4752-b463-af84ccf94f53', '9ec3f4eb-1ad3-4f35-9a1d-f6e08d35af8a', 3.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (91, '9ec3f4eb-4a95-498b-ac63-1fc08298596e', '9ec3f4eb-0dc0-4433-b98a-2e387f5703bb', '9ec3f4eb-150a-430b-acfd-c328ffcc880f', 5.75, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (92, '9ec3f4eb-4b34-4075-9398-7f5587f05e4f', '9ec3f4eb-0dc0-4433-b98a-2e387f5703bb', '9ec3f4eb-1753-4670-ac55-be3eb6c8e5d9', 800.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (93, '9ec3f4eb-4bd2-4d44-b101-f0672597fc5a', '9ec3f4eb-0dc0-4433-b98a-2e387f5703bb', '9ec3f4eb-17d2-4d38-bc1e-8b5e1b9cbdb8', 576.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (94, '9ec3f4eb-4c49-479e-934f-9b9e986b951f', '9ec3f4eb-0dc0-4433-b98a-2e387f5703bb', '9ec3f4eb-1848-49eb-8941-f645a36a79ef', 50.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (95, '9ec3f4eb-4cb2-49ae-90f0-c0bb8b386980', '9ec3f4eb-0dc0-4433-b98a-2e387f5703bb', '9ec3f4eb-18b6-4509-ad84-80da42844fb2', 150.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (96, '9ec3f4eb-4d22-41b2-be74-a8ab90c4e78d', '9ec3f4eb-0dc0-4433-b98a-2e387f5703bb', '9ec3f4eb-1921-43ba-9fa3-9a2f400dfdd3', 45.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (97, '9ec3f4eb-4d95-41f3-9c70-30b860fa70c1', '9ec3f4eb-0dc0-4433-b98a-2e387f5703bb', '9ec3f4eb-198a-4b0b-b3b8-421f4fe50e18', 2.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (98, '9ec3f4eb-4dfe-4070-992f-6fc0d5cc9cd9', '9ec3f4eb-0dc0-4433-b98a-2e387f5703bb', '9ec3f4eb-19f0-48e9-b7e7-4a24c77c5ee1', 70.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (99, '9ec3f4eb-4e65-457c-b071-ac930e88e626', '9ec3f4eb-0dc0-4433-b98a-2e387f5703bb', '9ec3f4eb-1a5d-48fb-85f9-6448895bcfd7', 14.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (100, '9ec3f4eb-4f20-4067-8e82-9b76b7308c79', '9ec3f4eb-0dc0-4433-b98a-2e387f5703bb', '9ec3f4eb-1ad3-4f35-9a1d-f6e08d35af8a', 5.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (101, '9ec3f4eb-4fb8-4ca2-892e-e3fe549350a8', '9ec3f4eb-0e20-4a44-b57e-972d47521e7a', '9ec3f4eb-150a-430b-acfd-c328ffcc880f', 4.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (102, '9ec3f4eb-501b-4f4d-b4d8-5a7344db9f50', '9ec3f4eb-0e20-4a44-b57e-972d47521e7a', '9ec3f4eb-1753-4670-ac55-be3eb6c8e5d9', 500.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (103, '9ec3f4eb-507f-4227-bef7-8a53691d8cef', '9ec3f4eb-0e20-4a44-b57e-972d47521e7a', '9ec3f4eb-17d2-4d38-bc1e-8b5e1b9cbdb8', 960.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (104, '9ec3f4eb-50ee-4f19-b88f-17de58e6908b', '9ec3f4eb-0e20-4a44-b57e-972d47521e7a', '9ec3f4eb-1848-49eb-8941-f645a36a79ef', 40.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (105, '9ec3f4eb-5179-4ea2-a951-03d6473c811d', '9ec3f4eb-0e20-4a44-b57e-972d47521e7a', '9ec3f4eb-18b6-4509-ad84-80da42844fb2', 150.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (106, '9ec3f4eb-51f6-4f2b-8273-fac3d2577486', '9ec3f4eb-0e20-4a44-b57e-972d47521e7a', '9ec3f4eb-1921-43ba-9fa3-9a2f400dfdd3', 37.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (107, '9ec3f4eb-525e-4c0d-8d6b-5d982845f7c3', '9ec3f4eb-0e20-4a44-b57e-972d47521e7a', '9ec3f4eb-198a-4b0b-b3b8-421f4fe50e18', 1.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (108, '9ec3f4eb-52c5-4089-8e7c-b47225fb6f44', '9ec3f4eb-0e20-4a44-b57e-972d47521e7a', '9ec3f4eb-19f0-48e9-b7e7-4a24c77c5ee1', 50.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (109, '9ec3f4eb-532b-4011-a056-3144ff4e53d3', '9ec3f4eb-0e20-4a44-b57e-972d47521e7a', '9ec3f4eb-1a5d-48fb-85f9-6448895bcfd7', 14.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (110, '9ec3f4eb-538a-4fa2-a216-fbce584df06b', '9ec3f4eb-0e20-4a44-b57e-972d47521e7a', '9ec3f4eb-1ad3-4f35-9a1d-f6e08d35af8a', 2.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (111, '9ec3f4eb-5412-4ca7-8ad2-646feb42933c', '9ec3f4eb-0e89-49ef-acb2-3f75fca3cd6e', '9ec3f4eb-150a-430b-acfd-c328ffcc880f', 7.60, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (112, '9ec3f4eb-5471-4b7f-832b-e70aa2c859b0', '9ec3f4eb-0e89-49ef-acb2-3f75fca3cd6e', '9ec3f4eb-1753-4670-ac55-be3eb6c8e5d9', 600.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (113, '9ec3f4eb-54e6-4552-8d8e-7ed9a8084543', '9ec3f4eb-0e89-49ef-acb2-3f75fca3cd6e', '9ec3f4eb-17d2-4d38-bc1e-8b5e1b9cbdb8', 1920.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (114, '9ec3f4eb-5551-415a-a983-0063e41eea54', '9ec3f4eb-0e89-49ef-acb2-3f75fca3cd6e', '9ec3f4eb-1848-49eb-8941-f645a36a79ef', 60.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (115, '9ec3f4eb-55b5-48a6-985d-c19c0fa63596', '9ec3f4eb-0e89-49ef-acb2-3f75fca3cd6e', '9ec3f4eb-18b6-4509-ad84-80da42844fb2', 180.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (116, '9ec3f4eb-5618-4943-9ed3-a5395e806139', '9ec3f4eb-0e89-49ef-acb2-3f75fca3cd6e', '9ec3f4eb-1921-43ba-9fa3-9a2f400dfdd3', 42.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (117, '9ec3f4eb-567a-42e9-9626-89b1be3a663d', '9ec3f4eb-0e89-49ef-acb2-3f75fca3cd6e', '9ec3f4eb-198a-4b0b-b3b8-421f4fe50e18', 1.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (118, '9ec3f4eb-56dc-4a1f-9c83-bdcf0d153dc9', '9ec3f4eb-0e89-49ef-acb2-3f75fca3cd6e', '9ec3f4eb-19f0-48e9-b7e7-4a24c77c5ee1', 48.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (119, '9ec3f4eb-573c-484a-8bad-eedf5b9fa6e4', '9ec3f4eb-0e89-49ef-acb2-3f75fca3cd6e', '9ec3f4eb-1a5d-48fb-85f9-6448895bcfd7', 14.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (120, '9ec3f4eb-57aa-4ca8-a692-a7e34b21e8b1', '9ec3f4eb-0e89-49ef-acb2-3f75fca3cd6e', '9ec3f4eb-1ad3-4f35-9a1d-f6e08d35af8a', 3.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (121, '9ec3f4eb-5868-4276-b664-9d5314ef76f4', '9ec3f4eb-0f04-4806-a803-163a8ad9d652', '9ec3f4eb-150a-430b-acfd-c328ffcc880f', 4.15, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (122, '9ec3f4eb-58d1-4444-a646-09ab2aefb35e', '9ec3f4eb-0f04-4806-a803-163a8ad9d652', '9ec3f4eb-1753-4670-ac55-be3eb6c8e5d9', 500.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (123, '9ec3f4eb-5933-48b2-bff4-3ad7cfd15c0d', '9ec3f4eb-0f04-4806-a803-163a8ad9d652', '9ec3f4eb-17d2-4d38-bc1e-8b5e1b9cbdb8', 1152.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (124, '9ec3f4eb-59a1-40aa-922f-4a7f3329968b', '9ec3f4eb-0f04-4806-a803-163a8ad9d652', '9ec3f4eb-1848-49eb-8941-f645a36a79ef', 45.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (125, '9ec3f4eb-5a0a-4faf-a6a6-aff8559738b5', '9ec3f4eb-0f04-4806-a803-163a8ad9d652', '9ec3f4eb-18b6-4509-ad84-80da42844fb2', 150.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (126, '9ec3f4eb-5a6d-47ba-a7f4-8ae92343c3e0', '9ec3f4eb-0f04-4806-a803-163a8ad9d652', '9ec3f4eb-1921-43ba-9fa3-9a2f400dfdd3', 38.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (127, '9ec3f4eb-5ad2-4175-b76e-45c182d6fb01', '9ec3f4eb-0f04-4806-a803-163a8ad9d652', '9ec3f4eb-198a-4b0b-b3b8-421f4fe50e18', 1.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (128, '9ec3f4eb-5b33-449e-93d8-b300c70aee24', '9ec3f4eb-0f04-4806-a803-163a8ad9d652', '9ec3f4eb-19f0-48e9-b7e7-4a24c77c5ee1', 48.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (129, '9ec3f4eb-5b95-453a-ae72-fe016967a941', '9ec3f4eb-0f04-4806-a803-163a8ad9d652', '9ec3f4eb-1a5d-48fb-85f9-6448895bcfd7', 14.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (130, '9ec3f4eb-5bf4-4552-a85e-4c2934caa714', '9ec3f4eb-0f04-4806-a803-163a8ad9d652', '9ec3f4eb-1ad3-4f35-9a1d-f6e08d35af8a', 1.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (131, '9ec3f4eb-5c82-4a91-b7e2-edc7ee52d3a5', '9ec3f4eb-0f67-43af-989d-0bc45f1b1e0c', '9ec3f4eb-150a-430b-acfd-c328ffcc880f', 5.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (132, '9ec3f4eb-5ce2-48f2-a6a0-937dfe59b10c', '9ec3f4eb-0f67-43af-989d-0bc45f1b1e0c', '9ec3f4eb-1753-4670-ac55-be3eb6c8e5d9', 500.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (133, '9ec3f4eb-5d40-42dc-b521-a86def1cd859', '9ec3f4eb-0f67-43af-989d-0bc45f1b1e0c', '9ec3f4eb-17d2-4d38-bc1e-8b5e1b9cbdb8', 1152.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (134, '9ec3f4eb-5d9d-490d-8a2c-e82930de5509', '9ec3f4eb-0f67-43af-989d-0bc45f1b1e0c', '9ec3f4eb-1848-49eb-8941-f645a36a79ef', 45.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (135, '9ec3f4eb-5dfb-499c-9edb-21962af86792', '9ec3f4eb-0f67-43af-989d-0bc45f1b1e0c', '9ec3f4eb-18b6-4509-ad84-80da42844fb2', 150.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (136, '9ec3f4eb-5ebc-4f08-a975-e58da357e1a5', '9ec3f4eb-0f67-43af-989d-0bc45f1b1e0c', '9ec3f4eb-1921-43ba-9fa3-9a2f400dfdd3', 40.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (137, '9ec3f4eb-5f35-4a94-8e10-532e3d55803a', '9ec3f4eb-0f67-43af-989d-0bc45f1b1e0c', '9ec3f4eb-198a-4b0b-b3b8-421f4fe50e18', 1.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (138, '9ec3f4eb-5f95-4376-9c6a-729d0056aa47', '9ec3f4eb-0f67-43af-989d-0bc45f1b1e0c', '9ec3f4eb-19f0-48e9-b7e7-4a24c77c5ee1', 50.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (139, '9ec3f4eb-6005-4a7e-a4a3-49c9f6bad88f', '9ec3f4eb-0f67-43af-989d-0bc45f1b1e0c', '9ec3f4eb-1a5d-48fb-85f9-6448895bcfd7', 14.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (140, '9ec3f4eb-6089-401e-8c88-bdb73b558dc5', '9ec3f4eb-0f67-43af-989d-0bc45f1b1e0c', '9ec3f4eb-1ad3-4f35-9a1d-f6e08d35af8a', 3.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (141, '9ec3f4eb-6138-4207-97ac-38c18dd7b251', '9ec3f4eb-0fca-4558-af49-8d56ad9fa762', '9ec3f4eb-150a-430b-acfd-c328ffcc880f', 5.40, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (142, '9ec3f4eb-61a3-447c-abdd-546a31f09612', '9ec3f4eb-0fca-4558-af49-8d56ad9fa762', '9ec3f4eb-1753-4670-ac55-be3eb6c8e5d9', 875.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (143, '9ec3f4eb-620a-40dc-a5fc-096982bd65ef', '9ec3f4eb-0fca-4558-af49-8d56ad9fa762', '9ec3f4eb-17d2-4d38-bc1e-8b5e1b9cbdb8', 960.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (144, '9ec3f4eb-6272-4d84-b34d-78260b036e54', '9ec3f4eb-0fca-4558-af49-8d56ad9fa762', '9ec3f4eb-1848-49eb-8941-f645a36a79ef', 60.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (145, '9ec3f4eb-62d5-4734-b34a-7cb303dd5076', '9ec3f4eb-0fca-4558-af49-8d56ad9fa762', '9ec3f4eb-18b6-4509-ad84-80da42844fb2', 150.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (146, '9ec3f4eb-6338-4fd2-8260-dc3939599c33', '9ec3f4eb-0fca-4558-af49-8d56ad9fa762', '9ec3f4eb-1921-43ba-9fa3-9a2f400dfdd3', 25.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (147, '9ec3f4eb-639c-47bc-a886-93ff7f355653', '9ec3f4eb-0fca-4558-af49-8d56ad9fa762', '9ec3f4eb-198a-4b0b-b3b8-421f4fe50e18', 2.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (148, '9ec3f4eb-6419-4da5-9a33-399743ff9568', '9ec3f4eb-0fca-4558-af49-8d56ad9fa762', '9ec3f4eb-19f0-48e9-b7e7-4a24c77c5ee1', 80.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (149, '9ec3f4eb-6516-4b9a-90d6-dd4f62af4b0e', '9ec3f4eb-0fca-4558-af49-8d56ad9fa762', '9ec3f4eb-1a5d-48fb-85f9-6448895bcfd7', 14.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (150, '9ec3f4eb-659f-4427-82e7-ff0e898d45d0', '9ec3f4eb-0fca-4558-af49-8d56ad9fa762', '9ec3f4eb-1ad3-4f35-9a1d-f6e08d35af8a', 1.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (151, '9ec3f4eb-6643-4a5b-80f9-f1bb2a9fb64f', '9ec3f4eb-1052-4530-98f7-b14e1a97b5f3', '9ec3f4eb-150a-430b-acfd-c328ffcc880f', 3.75, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (152, '9ec3f4eb-66bb-4282-a8f3-5b56849b35ec', '9ec3f4eb-1052-4530-98f7-b14e1a97b5f3', '9ec3f4eb-1753-4670-ac55-be3eb6c8e5d9', 525.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (153, '9ec3f4eb-6730-45b3-81d4-76a2834a5048', '9ec3f4eb-1052-4530-98f7-b14e1a97b5f3', '9ec3f4eb-17d2-4d38-bc1e-8b5e1b9cbdb8', 576.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (154, '9ec3f4eb-679d-4806-9878-310ec97867b6', '9ec3f4eb-1052-4530-98f7-b14e1a97b5f3', '9ec3f4eb-1848-49eb-8941-f645a36a79ef', 40.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (155, '9ec3f4eb-6805-4130-9792-6a4ef230abc5', '9ec3f4eb-1052-4530-98f7-b14e1a97b5f3', '9ec3f4eb-18b6-4509-ad84-80da42844fb2', 150.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (156, '9ec3f4eb-6878-4319-ad74-81b504092419', '9ec3f4eb-1052-4530-98f7-b14e1a97b5f3', '9ec3f4eb-1921-43ba-9fa3-9a2f400dfdd3', 25.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (157, '9ec3f4eb-68de-48ee-8ff9-57263f2e6079', '9ec3f4eb-1052-4530-98f7-b14e1a97b5f3', '9ec3f4eb-198a-4b0b-b3b8-421f4fe50e18', 1.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (158, '9ec3f4eb-6944-48a6-871d-85dccab95eb0', '9ec3f4eb-1052-4530-98f7-b14e1a97b5f3', '9ec3f4eb-19f0-48e9-b7e7-4a24c77c5ee1', 60.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (159, '9ec3f4eb-69ab-4a0d-9d02-bcd15c07e50d', '9ec3f4eb-1052-4530-98f7-b14e1a97b5f3', '9ec3f4eb-1a5d-48fb-85f9-6448895bcfd7', 14.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (160, '9ec3f4eb-6a10-4fef-abb5-c103eed4e0a3', '9ec3f4eb-1052-4530-98f7-b14e1a97b5f3', '9ec3f4eb-1ad3-4f35-9a1d-f6e08d35af8a', 1.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (161, '9ec3f4eb-6ab1-4e9b-8f72-87d0aef088a2', '9ec3f4eb-10db-4635-92a2-7b84cf12e95d', '9ec3f4eb-150a-430b-acfd-c328ffcc880f', 4.80, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (162, '9ec3f4eb-6b30-4088-b3b0-e96722424799', '9ec3f4eb-10db-4635-92a2-7b84cf12e95d', '9ec3f4eb-1753-4670-ac55-be3eb6c8e5d9', 350.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (163, '9ec3f4eb-6bba-4b1f-a6d6-c495aae823ab', '9ec3f4eb-10db-4635-92a2-7b84cf12e95d', '9ec3f4eb-17d2-4d38-bc1e-8b5e1b9cbdb8', 960.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (164, '9ec3f4eb-6c2c-4740-8ef3-bca0efbac3cd', '9ec3f4eb-10db-4635-92a2-7b84cf12e95d', '9ec3f4eb-1848-49eb-8941-f645a36a79ef', 50.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (165, '9ec3f4eb-6c96-41c5-a43c-b432d0850519', '9ec3f4eb-10db-4635-92a2-7b84cf12e95d', '9ec3f4eb-18b6-4509-ad84-80da42844fb2', 150.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (166, '9ec3f4eb-6cfe-4d93-9baf-e55df68ab342', '9ec3f4eb-10db-4635-92a2-7b84cf12e95d', '9ec3f4eb-1921-43ba-9fa3-9a2f400dfdd3', 25.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (167, '9ec3f4eb-6d66-4b5a-a0dc-2539421f2db5', '9ec3f4eb-10db-4635-92a2-7b84cf12e95d', '9ec3f4eb-198a-4b0b-b3b8-421f4fe50e18', 1.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (168, '9ec3f4eb-6dcc-4dcd-8250-84e420eab97c', '9ec3f4eb-10db-4635-92a2-7b84cf12e95d', '9ec3f4eb-19f0-48e9-b7e7-4a24c77c5ee1', 80.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (169, '9ec3f4eb-6e31-483b-aba1-4d8b9c5b1ba9', '9ec3f4eb-10db-4635-92a2-7b84cf12e95d', '9ec3f4eb-1a5d-48fb-85f9-6448895bcfd7', 14.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (170, '9ec3f4eb-6e95-4a51-81fc-f0e541f11665', '9ec3f4eb-10db-4635-92a2-7b84cf12e95d', '9ec3f4eb-1ad3-4f35-9a1d-f6e08d35af8a', 1.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (171, '9ec3f4eb-6f28-4af1-ab16-8b3c3124f6a7', '9ec3f4eb-114c-4ba1-9962-fc4e234cd493', '9ec3f4eb-150a-430b-acfd-c328ffcc880f', 4.95, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (172, '9ec3f4eb-6f90-46eb-bcc0-1509d64f0454', '9ec3f4eb-114c-4ba1-9962-fc4e234cd493', '9ec3f4eb-1753-4670-ac55-be3eb6c8e5d9', 350.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (173, '9ec3f4eb-6ffb-4632-b206-751e7e884fd6', '9ec3f4eb-114c-4ba1-9962-fc4e234cd493', '9ec3f4eb-17d2-4d38-bc1e-8b5e1b9cbdb8', 960.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (174, '9ec3f4eb-706f-4539-ba0c-9a596793e389', '9ec3f4eb-114c-4ba1-9962-fc4e234cd493', '9ec3f4eb-1848-49eb-8941-f645a36a79ef', 60.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (175, '9ec3f4eb-70e5-4784-860c-051fd32b1fb5', '9ec3f4eb-114c-4ba1-9962-fc4e234cd493', '9ec3f4eb-18b6-4509-ad84-80da42844fb2', 150.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (176, '9ec3f4eb-715b-4743-b806-fdd4302e18cc', '9ec3f4eb-114c-4ba1-9962-fc4e234cd493', '9ec3f4eb-1921-43ba-9fa3-9a2f400dfdd3', 25.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (177, '9ec3f4eb-71dd-40c5-b29f-ad1378ae6d0a', '9ec3f4eb-114c-4ba1-9962-fc4e234cd493', '9ec3f4eb-198a-4b0b-b3b8-421f4fe50e18', 1.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (178, '9ec3f4eb-7255-48da-901c-5c2cb03f7150', '9ec3f4eb-114c-4ba1-9962-fc4e234cd493', '9ec3f4eb-19f0-48e9-b7e7-4a24c77c5ee1', 50.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (179, '9ec3f4eb-72c0-4e8a-a971-25d190af4939', '9ec3f4eb-114c-4ba1-9962-fc4e234cd493', '9ec3f4eb-1a5d-48fb-85f9-6448895bcfd7', 14.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (180, '9ec3f4eb-732c-47f3-bab0-0424d37aa911', '9ec3f4eb-114c-4ba1-9962-fc4e234cd493', '9ec3f4eb-1ad3-4f35-9a1d-f6e08d35af8a', 2.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (181, '9ec3f4eb-73c6-48b5-a151-915c87105cc5', '9ec3f4eb-11b5-4277-8943-b3abe00adeba', '9ec3f4eb-150a-430b-acfd-c328ffcc880f', 3.55, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (182, '9ec3f4eb-742c-497c-aed3-cf4c5a9d7f27', '9ec3f4eb-11b5-4277-8943-b3abe00adeba', '9ec3f4eb-1753-4670-ac55-be3eb6c8e5d9', 550.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (183, '9ec3f4eb-748f-469a-a060-5c40b57b997a', '9ec3f4eb-11b5-4277-8943-b3abe00adeba', '9ec3f4eb-17d2-4d38-bc1e-8b5e1b9cbdb8', 576.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (184, '9ec3f4eb-74f0-49f7-838e-39c5bda23238', '9ec3f4eb-11b5-4277-8943-b3abe00adeba', '9ec3f4eb-1848-49eb-8941-f645a36a79ef', 45.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (185, '9ec3f4eb-7551-4573-a86c-944ce4141e26', '9ec3f4eb-11b5-4277-8943-b3abe00adeba', '9ec3f4eb-18b6-4509-ad84-80da42844fb2', 130.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (186, '9ec3f4eb-75d3-4494-973a-fc57b6ab343d', '9ec3f4eb-11b5-4277-8943-b3abe00adeba', '9ec3f4eb-1921-43ba-9fa3-9a2f400dfdd3', 40.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (187, '9ec3f4eb-7643-4ab0-adcf-a930b2a60a26', '9ec3f4eb-11b5-4277-8943-b3abe00adeba', '9ec3f4eb-198a-4b0b-b3b8-421f4fe50e18', 1.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (188, '9ec3f4eb-76ab-4165-ae18-56a2b55ecdf6', '9ec3f4eb-11b5-4277-8943-b3abe00adeba', '9ec3f4eb-19f0-48e9-b7e7-4a24c77c5ee1', 48.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (189, '9ec3f4eb-7721-482e-a513-d1b2eb5cafd1', '9ec3f4eb-11b5-4277-8943-b3abe00adeba', '9ec3f4eb-1a5d-48fb-85f9-6448895bcfd7', 14.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (190, '9ec3f4eb-778e-4f68-a9bb-b4f8c5922dc8', '9ec3f4eb-11b5-4277-8943-b3abe00adeba', '9ec3f4eb-1ad3-4f35-9a1d-f6e08d35af8a', 1.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (191, '9ec3f4eb-7843-4c79-a27b-ab84d48da46b', '9ec3f4eb-121d-49f3-bfe3-e6c7debf42dd', '9ec3f4eb-150a-430b-acfd-c328ffcc880f', 3.70, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (192, '9ec3f4eb-78dc-4eb9-a6ba-d9ca154abdc3', '9ec3f4eb-121d-49f3-bfe3-e6c7debf42dd', '9ec3f4eb-1753-4670-ac55-be3eb6c8e5d9', 500.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (193, '9ec3f4eb-794a-4452-8181-150d1ee60aa5', '9ec3f4eb-121d-49f3-bfe3-e6c7debf42dd', '9ec3f4eb-17d2-4d38-bc1e-8b5e1b9cbdb8', 576.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (194, '9ec3f4eb-79b2-4a00-8e21-d21cf2e2050d', '9ec3f4eb-121d-49f3-bfe3-e6c7debf42dd', '9ec3f4eb-1848-49eb-8941-f645a36a79ef', 40.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (195, '9ec3f4eb-7a19-4cba-a7f2-e44b72dd074f', '9ec3f4eb-121d-49f3-bfe3-e6c7debf42dd', '9ec3f4eb-18b6-4509-ad84-80da42844fb2', 150.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (196, '9ec3f4eb-7a7b-4e3f-9917-c4e486f3b07e', '9ec3f4eb-121d-49f3-bfe3-e6c7debf42dd', '9ec3f4eb-1921-43ba-9fa3-9a2f400dfdd3', 40.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (197, '9ec3f4eb-7ada-440a-b972-e34e27721836', '9ec3f4eb-121d-49f3-bfe3-e6c7debf42dd', '9ec3f4eb-198a-4b0b-b3b8-421f4fe50e18', 1.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (198, '9ec3f4eb-7b38-4db8-9faa-7d2b002a07d1', '9ec3f4eb-121d-49f3-bfe3-e6c7debf42dd', '9ec3f4eb-19f0-48e9-b7e7-4a24c77c5ee1', 52.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (199, '9ec3f4eb-7b97-4222-874c-498791958a4e', '9ec3f4eb-121d-49f3-bfe3-e6c7debf42dd', '9ec3f4eb-1a5d-48fb-85f9-6448895bcfd7', 14.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (200, '9ec3f4eb-7bfa-4579-bcf9-da19732500e8', '9ec3f4eb-121d-49f3-bfe3-e6c7debf42dd', '9ec3f4eb-1ad3-4f35-9a1d-f6e08d35af8a', 1.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (201, '9ec3f4eb-7c83-44dd-9e03-0830709d6b01', '9ec3f4eb-1283-44f8-bce0-9421167eca3b', '9ec3f4eb-150a-430b-acfd-c328ffcc880f', 3.85, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (202, '9ec3f4eb-7ce1-4f0d-95a8-3c17253cea02', '9ec3f4eb-1283-44f8-bce0-9421167eca3b', '9ec3f4eb-1753-4670-ac55-be3eb6c8e5d9', 550.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (203, '9ec3f4eb-7d43-4e56-840b-b3b4a6643f41', '9ec3f4eb-1283-44f8-bce0-9421167eca3b', '9ec3f4eb-17d2-4d38-bc1e-8b5e1b9cbdb8', 576.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (204, '9ec3f4eb-7dca-4a13-9756-e961de2caac4', '9ec3f4eb-1283-44f8-bce0-9421167eca3b', '9ec3f4eb-1848-49eb-8941-f645a36a79ef', 40.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (205, '9ec3f4eb-7e3b-4b87-b6fd-c11c27a5e802', '9ec3f4eb-1283-44f8-bce0-9421167eca3b', '9ec3f4eb-18b6-4509-ad84-80da42844fb2', 130.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (206, '9ec3f4eb-7ea6-44f5-8e7c-8f4252f5bb8b', '9ec3f4eb-1283-44f8-bce0-9421167eca3b', '9ec3f4eb-1921-43ba-9fa3-9a2f400dfdd3', 40.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (207, '9ec3f4eb-7f50-41ef-a2d6-79832ee2889c', '9ec3f4eb-1283-44f8-bce0-9421167eca3b', '9ec3f4eb-198a-4b0b-b3b8-421f4fe50e18', 1.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (208, '9ec3f4eb-7fcd-4b66-baac-59563512bf2b', '9ec3f4eb-1283-44f8-bce0-9421167eca3b', '9ec3f4eb-19f0-48e9-b7e7-4a24c77c5ee1', 48.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (209, '9ec3f4eb-8043-48c0-9dc3-0fb64061c746', '9ec3f4eb-1283-44f8-bce0-9421167eca3b', '9ec3f4eb-1a5d-48fb-85f9-6448895bcfd7', 14.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (210, '9ec3f4eb-80b5-4879-83ae-8c9028d8b196', '9ec3f4eb-1283-44f8-bce0-9421167eca3b', '9ec3f4eb-1ad3-4f35-9a1d-f6e08d35af8a', 1.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (211, '9ec3f4eb-814e-4235-994e-ffed939e4034', '9ec3f4eb-12e5-418a-a50e-9ef1d06b7700', '9ec3f4eb-150a-430b-acfd-c328ffcc880f', 4.50, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (212, '9ec3f4eb-81b1-4de4-b46a-60c88622b8c0', '9ec3f4eb-12e5-418a-a50e-9ef1d06b7700', '9ec3f4eb-1753-4670-ac55-be3eb6c8e5d9', 550.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (213, '9ec3f4eb-8213-4eaf-8c3f-32e81bc2addb', '9ec3f4eb-12e5-418a-a50e-9ef1d06b7700', '9ec3f4eb-17d2-4d38-bc1e-8b5e1b9cbdb8', 576.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (214, '9ec3f4eb-8275-4cf0-99cc-39e40b691199', '9ec3f4eb-12e5-418a-a50e-9ef1d06b7700', '9ec3f4eb-1848-49eb-8941-f645a36a79ef', 40.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (215, '9ec3f4eb-82d8-4890-845a-26e0d6fda4e1', '9ec3f4eb-12e5-418a-a50e-9ef1d06b7700', '9ec3f4eb-18b6-4509-ad84-80da42844fb2', 150.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (216, '9ec3f4eb-833b-416d-a391-9fadb9ae3a78', '9ec3f4eb-12e5-418a-a50e-9ef1d06b7700', '9ec3f4eb-1921-43ba-9fa3-9a2f400dfdd3', 40.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (217, '9ec3f4eb-83b0-4643-bde7-d0698b31e30c', '9ec3f4eb-12e5-418a-a50e-9ef1d06b7700', '9ec3f4eb-198a-4b0b-b3b8-421f4fe50e18', 1.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (218, '9ec3f4eb-841a-48d7-8feb-3508417745d9', '9ec3f4eb-12e5-418a-a50e-9ef1d06b7700', '9ec3f4eb-19f0-48e9-b7e7-4a24c77c5ee1', 53.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (219, '9ec3f4eb-847e-4f63-a77b-376fbc076717', '9ec3f4eb-12e5-418a-a50e-9ef1d06b7700', '9ec3f4eb-1a5d-48fb-85f9-6448895bcfd7', 14.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (220, '9ec3f4eb-84e2-4128-ac9c-75bfa332610d', '9ec3f4eb-12e5-418a-a50e-9ef1d06b7700', '9ec3f4eb-1ad3-4f35-9a1d-f6e08d35af8a', 1.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (221, '9ec3f4eb-8592-451e-a7a1-3ab97f2c947b', '9ec3f4eb-1347-4b86-a605-07f247f03339', '9ec3f4eb-150a-430b-acfd-c328ffcc880f', 3.90, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (222, '9ec3f4eb-8612-4349-a044-1991e13871d5', '9ec3f4eb-1347-4b86-a605-07f247f03339', '9ec3f4eb-1753-4670-ac55-be3eb6c8e5d9', 500.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (223, '9ec3f4eb-8686-4af2-9e32-ae5824105da1', '9ec3f4eb-1347-4b86-a605-07f247f03339', '9ec3f4eb-17d2-4d38-bc1e-8b5e1b9cbdb8', 576.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (224, '9ec3f4eb-86f5-44d4-84e7-6e85f6b92d10', '9ec3f4eb-1347-4b86-a605-07f247f03339', '9ec3f4eb-1848-49eb-8941-f645a36a79ef', 40.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (225, '9ec3f4eb-875f-44ee-a487-86cecb4c5e7d', '9ec3f4eb-1347-4b86-a605-07f247f03339', '9ec3f4eb-18b6-4509-ad84-80da42844fb2', 130.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (226, '9ec3f4eb-87c6-489b-ad16-806fc025af7f', '9ec3f4eb-1347-4b86-a605-07f247f03339', '9ec3f4eb-1921-43ba-9fa3-9a2f400dfdd3', 40.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (227, '9ec3f4eb-882a-4aea-b7ee-f0a1ee048264', '9ec3f4eb-1347-4b86-a605-07f247f03339', '9ec3f4eb-198a-4b0b-b3b8-421f4fe50e18', 1.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (228, '9ec3f4eb-888d-4007-ab11-5a95916b8d67', '9ec3f4eb-1347-4b86-a605-07f247f03339', '9ec3f4eb-19f0-48e9-b7e7-4a24c77c5ee1', 54.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (229, '9ec3f4eb-88f0-4a7d-8248-7132b5f3b0e7', '9ec3f4eb-1347-4b86-a605-07f247f03339', '9ec3f4eb-1a5d-48fb-85f9-6448895bcfd7', 14.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (230, '9ec3f4eb-8953-4882-acdb-49b0197101f5', '9ec3f4eb-1347-4b86-a605-07f247f03339', '9ec3f4eb-1ad3-4f35-9a1d-f6e08d35af8a', 1.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (231, '9ec3f4eb-89fe-4d3a-8ffe-24d0a69712e5', '9ec3f4eb-13a4-481e-9976-655a3a6f234c', '9ec3f4eb-150a-430b-acfd-c328ffcc880f', 3.95, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (232, '9ec3f4eb-8a69-4aa4-89a0-e5ecc3028045', '9ec3f4eb-13a4-481e-9976-655a3a6f234c', '9ec3f4eb-1753-4670-ac55-be3eb6c8e5d9', 500.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (233, '9ec3f4eb-8ace-48cb-9bb4-1adb77bde80b', '9ec3f4eb-13a4-481e-9976-655a3a6f234c', '9ec3f4eb-17d2-4d38-bc1e-8b5e1b9cbdb8', 576.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (234, '9ec3f4eb-8b33-4e52-ac9d-c6e4adbb184d', '9ec3f4eb-13a4-481e-9976-655a3a6f234c', '9ec3f4eb-1848-49eb-8941-f645a36a79ef', 40.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (235, '9ec3f4eb-8b95-433d-bf3c-7bf41375699b', '9ec3f4eb-13a4-481e-9976-655a3a6f234c', '9ec3f4eb-18b6-4509-ad84-80da42844fb2', 150.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (236, '9ec3f4eb-8c21-4759-bb2d-3eb6687429ec', '9ec3f4eb-13a4-481e-9976-655a3a6f234c', '9ec3f4eb-1921-43ba-9fa3-9a2f400dfdd3', 40.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (237, '9ec3f4eb-8c93-4154-bc25-af93c08218f9', '9ec3f4eb-13a4-481e-9976-655a3a6f234c', '9ec3f4eb-198a-4b0b-b3b8-421f4fe50e18', 1.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (238, '9ec3f4eb-8d03-43ea-8dec-2c931f4a2fb6', '9ec3f4eb-13a4-481e-9976-655a3a6f234c', '9ec3f4eb-19f0-48e9-b7e7-4a24c77c5ee1', 54.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (239, '9ec3f4eb-8d6d-48ca-bfbc-41827a495190', '9ec3f4eb-13a4-481e-9976-655a3a6f234c', '9ec3f4eb-1a5d-48fb-85f9-6448895bcfd7', 14.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (240, '9ec3f4eb-8dd3-4bbd-a727-e15fd9dde22c', '9ec3f4eb-13a4-481e-9976-655a3a6f234c', '9ec3f4eb-1ad3-4f35-9a1d-f6e08d35af8a', 1.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (241, '9ec3f4eb-8e6b-4613-977c-b408982cd1c7', '9ec3f4eb-1421-45f7-b16d-f93d9beb991a', '9ec3f4eb-150a-430b-acfd-c328ffcc880f', 3.60, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (242, '9ec3f4eb-8ecd-4023-a271-173bd31dcb08', '9ec3f4eb-1421-45f7-b16d-f93d9beb991a', '9ec3f4eb-1753-4670-ac55-be3eb6c8e5d9', 500.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (243, '9ec3f4eb-8f2e-47bf-b255-6a0dde558bf6', '9ec3f4eb-1421-45f7-b16d-f93d9beb991a', '9ec3f4eb-17d2-4d38-bc1e-8b5e1b9cbdb8', 576.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (244, '9ec3f4eb-8f8f-45d7-9215-21bb916f6123', '9ec3f4eb-1421-45f7-b16d-f93d9beb991a', '9ec3f4eb-1848-49eb-8941-f645a36a79ef', 40.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (245, '9ec3f4eb-8fef-4b90-b996-425565e92995', '9ec3f4eb-1421-45f7-b16d-f93d9beb991a', '9ec3f4eb-18b6-4509-ad84-80da42844fb2', 150.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (246, '9ec3f4eb-9064-4fbe-8d54-6d75b0b4b528', '9ec3f4eb-1421-45f7-b16d-f93d9beb991a', '9ec3f4eb-1921-43ba-9fa3-9a2f400dfdd3', 40.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (247, '9ec3f4eb-911c-47dc-ae77-23bf8f99c990', '9ec3f4eb-1421-45f7-b16d-f93d9beb991a', '9ec3f4eb-198a-4b0b-b3b8-421f4fe50e18', 1.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (248, '9ec3f4eb-9184-4bb8-861a-3fe13e3f604f', '9ec3f4eb-1421-45f7-b16d-f93d9beb991a', '9ec3f4eb-19f0-48e9-b7e7-4a24c77c5ee1', 72.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (249, '9ec3f4eb-91eb-4386-8206-df65dbd5f5fd', '9ec3f4eb-1421-45f7-b16d-f93d9beb991a', '9ec3f4eb-1a5d-48fb-85f9-6448895bcfd7', 14.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (250, '9ec3f4eb-9274-41f5-a3dd-8e515bbc6760', '9ec3f4eb-1421-45f7-b16d-f93d9beb991a', '9ec3f4eb-1ad3-4f35-9a1d-f6e08d35af8a', 1.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (251, '9ec3f4eb-9343-4e5a-b57f-e838ae5e1f9d', '9ec3f4eb-148e-41df-8008-12e312080e1b', '9ec3f4eb-150a-430b-acfd-c328ffcc880f', 4.35, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (252, '9ec3f4eb-93af-45ef-97e0-bc4da42e7039', '9ec3f4eb-148e-41df-8008-12e312080e1b', '9ec3f4eb-1753-4670-ac55-be3eb6c8e5d9', 600.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (253, '9ec3f4eb-9416-41b9-89dd-36dcb215d95d', '9ec3f4eb-148e-41df-8008-12e312080e1b', '9ec3f4eb-17d2-4d38-bc1e-8b5e1b9cbdb8', 576.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (254, '9ec3f4eb-947d-4663-8886-19cba56cff06', '9ec3f4eb-148e-41df-8008-12e312080e1b', '9ec3f4eb-1848-49eb-8941-f645a36a79ef', 40.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (255, '9ec3f4eb-94ec-4255-879c-647e503b5ac8', '9ec3f4eb-148e-41df-8008-12e312080e1b', '9ec3f4eb-18b6-4509-ad84-80da42844fb2', 150.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (256, '9ec3f4eb-9553-4b8e-a51c-0fadb21a39c9', '9ec3f4eb-148e-41df-8008-12e312080e1b', '9ec3f4eb-1921-43ba-9fa3-9a2f400dfdd3', 40.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (257, '9ec3f4eb-95b8-4650-ab26-38a32ebc4503', '9ec3f4eb-148e-41df-8008-12e312080e1b', '9ec3f4eb-198a-4b0b-b3b8-421f4fe50e18', 1.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (258, '9ec3f4eb-961d-4a31-9ff8-9c5ecbf85ed2', '9ec3f4eb-148e-41df-8008-12e312080e1b', '9ec3f4eb-19f0-48e9-b7e7-4a24c77c5ee1', 52.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (259, '9ec3f4eb-969f-42d5-9abc-cabcc263a24d', '9ec3f4eb-148e-41df-8008-12e312080e1b', '9ec3f4eb-1a5d-48fb-85f9-6448895bcfd7', 14.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');
INSERT INTO `perhitungans` VALUES (260, '9ec3f4eb-9708-42a2-bb01-7382f4a39a14', '9ec3f4eb-148e-41df-8008-12e312080e1b', '9ec3f4eb-1ad3-4f35-9a1d-f6e08d35af8a', 3.00, '2025-04-26 05:17:28', '2025-04-26 05:17:28');

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token` ASC) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type` ASC, `tokenable_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for sub_kriterias
-- ----------------------------
DROP TABLE IF EXISTS `sub_kriterias`;
CREATE TABLE `sub_kriterias`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kriteria_uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_kriteria` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bobot` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sub_kriterias_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sub_kriterias
-- ----------------------------
INSERT INTO `sub_kriterias` VALUES (31, '156c2146-225f-11f0-bf29-00e04ccd07d4', '9ec3f4eb-150a-430b-acfd-c328ffcc880f', 'Harga murah', 3, '2025-04-26 12:27:02', '2025-04-26 12:27:02');
INSERT INTO `sub_kriterias` VALUES (32, '156c4799-225f-11f0-bf29-00e04ccd07d4', '9ec3f4eb-150a-430b-acfd-c328ffcc880f', 'Harga sedang', 5, '2025-04-26 12:27:02', '2025-04-26 12:27:02');
INSERT INTO `sub_kriterias` VALUES (33, '156c4849-225f-11f0-bf29-00e04ccd07d4', '9ec3f4eb-150a-430b-acfd-c328ffcc880f', 'Harga mahal', 8, '2025-04-26 12:27:02', '2025-04-26 12:27:02');
INSERT INTO `sub_kriterias` VALUES (34, '156c48a8-225f-11f0-bf29-00e04ccd07d4', '9ec3f4eb-1753-4670-ac55-be3eb6c8e5d9', 'Motor Power rendah', 350, '2025-04-26 12:27:02', '2025-04-26 12:27:02');
INSERT INTO `sub_kriterias` VALUES (35, '156c4905-225f-11f0-bf29-00e04ccd07d4', '9ec3f4eb-1753-4670-ac55-be3eb6c8e5d9', 'Motor Power sedang', 500, '2025-04-26 12:27:02', '2025-04-26 12:27:02');
INSERT INTO `sub_kriterias` VALUES (36, '156c495f-225f-11f0-bf29-00e04ccd07d4', '9ec3f4eb-1753-4670-ac55-be3eb6c8e5d9', 'Motor Power tinggi', 600, '2025-04-26 12:27:02', '2025-04-26 12:27:02');
INSERT INTO `sub_kriterias` VALUES (37, '156c49b2-225f-11f0-bf29-00e04ccd07d4', '9ec3f4eb-17d2-4d38-bc1e-8b5e1b9cbdb8', 'Battery rendah', 576, '2025-04-26 12:27:02', '2025-04-26 12:27:02');
INSERT INTO `sub_kriterias` VALUES (38, '156c4a06-225f-11f0-bf29-00e04ccd07d4', '9ec3f4eb-17d2-4d38-bc1e-8b5e1b9cbdb8', 'Battery sedang', 1152, '2025-04-26 12:27:02', '2025-04-26 12:27:02');
INSERT INTO `sub_kriterias` VALUES (39, '156c4a5e-225f-11f0-bf29-00e04ccd07d4', '9ec3f4eb-17d2-4d38-bc1e-8b5e1b9cbdb8', 'Battery tinggi', 1920, '2025-04-26 12:27:02', '2025-04-26 12:27:02');
INSERT INTO `sub_kriterias` VALUES (40, '156c4ab0-225f-11f0-bf29-00e04ccd07d4', '9ec3f4eb-1848-49eb-8941-f645a36a79ef', 'Jarak tempuh pendek', 40, '2025-04-26 12:27:02', '2025-04-26 12:27:02');
INSERT INTO `sub_kriterias` VALUES (41, '156c4b01-225f-11f0-bf29-00e04ccd07d4', '9ec3f4eb-1848-49eb-8941-f645a36a79ef', 'Jarak tempuh sedang', 45, '2025-04-26 12:27:02', '2025-04-26 12:27:02');
INSERT INTO `sub_kriterias` VALUES (42, '156c4b54-225f-11f0-bf29-00e04ccd07d4', '9ec3f4eb-1848-49eb-8941-f645a36a79ef', 'Jarak tempuh jauh', 60, '2025-04-26 12:27:02', '2025-04-26 12:27:02');
INSERT INTO `sub_kriterias` VALUES (43, '156c4ba8-225f-11f0-bf29-00e04ccd07d4', '9ec3f4eb-18b6-4509-ad84-80da42844fb2', 'Daya angkut ringan', 130, '2025-04-26 12:27:02', '2025-04-26 12:27:02');
INSERT INTO `sub_kriterias` VALUES (44, '156c4bfa-225f-11f0-bf29-00e04ccd07d4', '9ec3f4eb-18b6-4509-ad84-80da42844fb2', 'Daya angkut sedang', 150, '2025-04-26 12:27:02', '2025-04-26 12:27:02');
INSERT INTO `sub_kriterias` VALUES (45, '156c4c4b-225f-11f0-bf29-00e04ccd07d4', '9ec3f4eb-18b6-4509-ad84-80da42844fb2', 'Daya angkut berat', 180, '2025-04-26 12:27:02', '2025-04-26 12:27:02');
INSERT INTO `sub_kriterias` VALUES (46, '156c4c9e-225f-11f0-bf29-00e04ccd07d4', '9ec3f4eb-1921-43ba-9fa3-9a2f400dfdd3', 'Kecepatan rendah', 25, '2025-04-26 12:27:02', '2025-04-26 12:27:02');
INSERT INTO `sub_kriterias` VALUES (47, '156c4cf0-225f-11f0-bf29-00e04ccd07d4', '9ec3f4eb-1921-43ba-9fa3-9a2f400dfdd3', 'Kecepatan sedang', 35, '2025-04-26 12:27:02', '2025-04-26 12:27:02');
INSERT INTO `sub_kriterias` VALUES (48, '156c4d43-225f-11f0-bf29-00e04ccd07d4', '9ec3f4eb-1921-43ba-9fa3-9a2f400dfdd3', 'Kecepatan tinggi', 45, '2025-04-26 12:27:02', '2025-04-26 12:27:02');
INSERT INTO `sub_kriterias` VALUES (49, '156c4d97-225f-11f0-bf29-00e04ccd07d4', '9ec3f4eb-198a-4b0b-b3b8-421f4fe50e18', 'Rem standar', 1, '2025-04-26 12:27:02', '2025-04-26 12:27:02');
INSERT INTO `sub_kriterias` VALUES (50, '156c4de9-225f-11f0-bf29-00e04ccd07d4', '9ec3f4eb-198a-4b0b-b3b8-421f4fe50e18', 'Rem baik', 2, '2025-04-26 12:27:02', '2025-04-26 12:27:02');
INSERT INTO `sub_kriterias` VALUES (51, '156c4e3b-225f-11f0-bf29-00e04ccd07d4', '9ec3f4eb-198a-4b0b-b3b8-421f4fe50e18', 'Rem sangat baik', 3, '2025-04-26 12:27:02', '2025-04-26 12:27:02');
INSERT INTO `sub_kriterias` VALUES (52, '156c4e8c-225f-11f0-bf29-00e04ccd07d4', '9ec3f4eb-19f0-48e9-b7e7-4a24c77c5ee1', 'Bobot ringan', 48, '2025-04-26 12:27:02', '2025-04-26 12:27:02');
INSERT INTO `sub_kriterias` VALUES (53, '156c4edc-225f-11f0-bf29-00e04ccd07d4', '9ec3f4eb-19f0-48e9-b7e7-4a24c77c5ee1', 'Bobot sedang', 54, '2025-04-26 12:27:02', '2025-04-26 12:27:02');
INSERT INTO `sub_kriterias` VALUES (54, '156c4f2d-225f-11f0-bf29-00e04ccd07d4', '9ec3f4eb-19f0-48e9-b7e7-4a24c77c5ee1', 'Bobot berat', 80, '2025-04-26 12:27:02', '2025-04-26 12:27:02');
INSERT INTO `sub_kriterias` VALUES (55, '156c4f80-225f-11f0-bf29-00e04ccd07d4', '9ec3f4eb-1a5d-48fb-85f9-6448895bcfd7', 'Diameter kecil', 14, '2025-04-26 12:27:02', '2025-04-26 12:27:02');
INSERT INTO `sub_kriterias` VALUES (56, '156c4fd4-225f-11f0-bf29-00e04ccd07d4', '9ec3f4eb-1a5d-48fb-85f9-6448895bcfd7', 'Diameter sedang', 14, '2025-04-26 12:27:02', '2025-04-26 12:27:02');
INSERT INTO `sub_kriterias` VALUES (57, '156c5024-225f-11f0-bf29-00e04ccd07d4', '9ec3f4eb-1a5d-48fb-85f9-6448895bcfd7', 'Diameter besar', 14, '2025-04-26 12:27:02', '2025-04-26 12:27:02');
INSERT INTO `sub_kriterias` VALUES (58, '156c5073-225f-11f0-bf29-00e04ccd07d4', '9ec3f4eb-1ad3-4f35-9a1d-f6e08d35af8a', 'Fitur standar', 1, '2025-04-26 12:27:02', '2025-04-26 12:27:02');
INSERT INTO `sub_kriterias` VALUES (59, '156c50c6-225f-11f0-bf29-00e04ccd07d4', '9ec3f4eb-1ad3-4f35-9a1d-f6e08d35af8a', 'Fitur lengkap', 2, '2025-04-26 12:27:02', '2025-04-26 12:27:02');
INSERT INTO `sub_kriterias` VALUES (60, '156c5118-225f-11f0-bf29-00e04ccd07d4', '9ec3f4eb-1ad3-4f35-9a1d-f6e08d35af8a', 'Fitur sangat lengkap', 3, '2025-04-26 12:27:02', '2025-04-26 12:27:02');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Rizal', 'admin', 'test@example.com', '2025-04-26 05:17:13', '$2y$12$cq3xPJ.MhUXV6g/s5nVMguuaETJEDm7WBDeZfmEHcNyxbWGRBCl/q', 'yubp0Wca8ATlkJWYUr0pwcViGpf2xDEvmh1Cg6mK5EcHaRA2bBAuWWJuAUUX', '2025-04-26 05:17:13', '2025-04-26 05:17:13');

SET FOREIGN_KEY_CHECKS = 1;
