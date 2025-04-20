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

 Date: 20/04/2025 14:06:05
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `alternatifs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of alternatifs
-- ----------------------------
INSERT INTO `alternatifs` VALUES (1, '9eb652e3-aff5-4fd4-9103-89eea2c02e75', 1, 'D60', '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `alternatifs` VALUES (2, '9eb652e3-b89d-44e8-bb59-d03f5326de64', 2, 'D70', '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `alternatifs` VALUES (3, '9eb652e3-ba2b-4bc2-9037-d518aa990746', 3, 'T70', '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `alternatifs` VALUES (4, '9eb652e3-bab0-44f7-976e-18c42062a978', 4, 'M70', '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `alternatifs` VALUES (5, '9eb652e3-bb18-47f4-9b69-0e1ff8453a83', 5, 'M60', '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `alternatifs` VALUES (6, '9eb652e3-bb77-454f-bf28-4c3c7403d895', 6, 'D60 Adv', '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `alternatifs` VALUES (7, '9eb652e3-bbd6-413c-b9c2-0d59c9ef3db6', 7, 'D75', '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `alternatifs` VALUES (8, '9eb652e3-bc33-48f5-a5dc-1a92bb806729', 8, 'T60', '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `alternatifs` VALUES (9, '9eb652e3-bc92-4dcf-a7db-b8120bbc263a', 9, 'T65L', '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `alternatifs` VALUES (10, '9eb652e3-bced-49bf-8b99-e3ea747c53c2', 10, 'M75', '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `alternatifs` VALUES (11, '9eb652e3-bd49-4903-b8fb-e426af85b000', 11, 'Ledo2', '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `alternatifs` VALUES (12, '9eb652e3-bda4-4f69-a8bf-2bab8b1e16ef', 12, 'Magical  3 Lit', '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `alternatifs` VALUES (13, '9eb652e3-be00-444f-9e22-3fd478b96fa5', 13, 'Ledo 3 Lit', '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `alternatifs` VALUES (14, '9eb652e3-be81-44cd-940d-b71d4d7d8a83', 14, 'Galaxy 3 Lit', '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `alternatifs` VALUES (15, '9eb652e3-bf11-482e-af3e-e89cbf273d87', 15, 'C3', '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `alternatifs` VALUES (16, '9eb652e3-bf88-4040-b6df-7724dd9a3896', 16, 'Uno 4', '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `alternatifs` VALUES (17, '9eb652e3-bfee-43f9-9c8b-de6e104eeed2', 17, 'Akasha 3', '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `alternatifs` VALUES (18, '9eb652e3-c050-4e5d-a7da-5349f156a019', 18, 'A2', '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `alternatifs` VALUES (19, '9eb652e3-c0bd-4203-ab60-92fd1ea2121c', 19, 'GD 122', '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `alternatifs` VALUES (20, '9eb652e3-c133-4b62-9510-34fc00d1ee40', 20, '140D/111', '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `alternatifs` VALUES (21, '9eb652e3-c194-45e3-8662-d63db908a12b', 21, 'GD 155A Panda', '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `alternatifs` VALUES (22, '9eb652e3-c1f5-4ac9-8c23-3def062e6e43', 22, 'GD 115 Aurora', '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `alternatifs` VALUES (23, '9eb652e3-c256-42ad-a0b4-f84bb4f611fd', 23, 'Veloci V3', '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `alternatifs` VALUES (24, '9eb652e3-c2b6-456e-91d6-006ebc1c2448', 24, 'X650', '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `alternatifs` VALUES (25, '9eb652e3-c312-4b8b-b36c-1ea09adc89e9', 25, 'Zeckrom 300', '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `alternatifs` VALUES (26, '9eb652e3-c36b-4d89-885a-4af3ffe36434', 26, 'Ventura R2', '2025-04-19 10:38:38', '2025-04-19 10:38:38');

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
INSERT INTO `kriterias` VALUES (1, '9eb652e3-c3cf-4269-908e-b4b09e57e0e8', 1, 'Harga (jt)', 'COST', 0.15, '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `kriterias` VALUES (2, '9eb652e3-c64f-417a-a0e4-3f5eca3f9eb0', 2, 'Motor Power (Watt)', 'BENEFIT', 0.10, '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `kriterias` VALUES (3, '9eb652e3-c6ce-465a-a0c0-6988b55be90c', 3, 'Battery (Wh)', 'BENEFIT', 0.15, '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `kriterias` VALUES (4, '9eb652e3-c743-46ef-886e-d622c6fb01fb', 4, 'Jarak Tempuh (KM)', 'BENEFIT', 0.15, '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `kriterias` VALUES (5, '9eb652e3-c7ae-4190-9e1b-ccb58cdf0802', 5, 'Daya Angkut (KG)', 'BENEFIT', 0.10, '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `kriterias` VALUES (6, '9eb652e3-c811-4a03-bcb0-f717905853f7', 6, 'Kecepatan Max (km/h)', 'BENEFIT', 0.15, '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `kriterias` VALUES (7, '9eb652e3-c874-4c60-b905-bd11a3091be0', 7, 'Skor Jenis Rem', 'BENEFIT', 0.05, '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `kriterias` VALUES (8, '9eb652e3-c8d8-451c-af55-30fb4448938c', 8, 'Bobot Sepeda', 'COST', 0.05, '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `kriterias` VALUES (9, '9eb652e3-c93a-4276-8813-f9c9e5c51740', 9, 'Diameter Ban', 'BENEFIT', 0.05, '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `kriterias` VALUES (10, '9eb652e3-c99c-49d9-b226-b9425155f588', 10, 'Skor Fitur', 'BENEFIT', 0.05, '2025-04-19 10:38:38', '2025-04-19 10:38:38');

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
INSERT INTO `perhitungans` VALUES (1, '9eb652e3-cc99-49f5-85d5-629723220475', '9eb652e3-aff5-4fd4-9103-89eea2c02e75', '9eb652e3-c3cf-4269-908e-b4b09e57e0e8', 3.40, '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `perhitungans` VALUES (2, '9eb652e3-ceb4-4aa0-bb3a-74e6a4977a33', '9eb652e3-aff5-4fd4-9103-89eea2c02e75', '9eb652e3-c64f-417a-a0e4-3f5eca3f9eb0', 450.00, '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `perhitungans` VALUES (3, '9eb652e3-d034-4816-938c-48f75198ddd2', '9eb652e3-aff5-4fd4-9103-89eea2c02e75', '9eb652e3-c6ce-465a-a0c0-6988b55be90c', 576.00, '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `perhitungans` VALUES (4, '9eb652e3-d0a6-4770-8727-9acdd4b5ad23', '9eb652e3-aff5-4fd4-9103-89eea2c02e75', '9eb652e3-c743-46ef-886e-d622c6fb01fb', 45.00, '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `perhitungans` VALUES (5, '9eb652e3-d117-4f3b-8c99-853105b48f62', '9eb652e3-aff5-4fd4-9103-89eea2c02e75', '9eb652e3-c7ae-4190-9e1b-ccb58cdf0802', 150.00, '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `perhitungans` VALUES (6, '9eb652e3-d182-40d4-8b7c-bfce9295fe89', '9eb652e3-aff5-4fd4-9103-89eea2c02e75', '9eb652e3-c811-4a03-bcb0-f717905853f7', 40.00, '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `perhitungans` VALUES (7, '9eb652e3-d20c-478b-b762-d5242318d471', '9eb652e3-aff5-4fd4-9103-89eea2c02e75', '9eb652e3-c874-4c60-b905-bd11a3091be0', 1.00, '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `perhitungans` VALUES (8, '9eb652e3-d2a9-4d70-82de-343b851b72c8', '9eb652e3-aff5-4fd4-9103-89eea2c02e75', '9eb652e3-c8d8-451c-af55-30fb4448938c', 55.00, '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `perhitungans` VALUES (9, '9eb652e3-d31d-4866-a986-42a511e82cfe', '9eb652e3-aff5-4fd4-9103-89eea2c02e75', '9eb652e3-c93a-4276-8813-f9c9e5c51740', 14.00, '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `perhitungans` VALUES (10, '9eb652e3-d384-4b3b-8a20-ab9b0da9a043', '9eb652e3-aff5-4fd4-9103-89eea2c02e75', '9eb652e3-c99c-49d9-b226-b9425155f588', 1.00, '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `perhitungans` VALUES (11, '9eb652e3-d418-478b-8f85-35c83a82bf21', '9eb652e3-b89d-44e8-bb59-d03f5326de64', '9eb652e3-c3cf-4269-908e-b4b09e57e0e8', 3.70, '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `perhitungans` VALUES (12, '9eb652e3-d47b-425a-aa49-7ed56d739232', '9eb652e3-b89d-44e8-bb59-d03f5326de64', '9eb652e3-c64f-417a-a0e4-3f5eca3f9eb0', 450.00, '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `perhitungans` VALUES (13, '9eb652e3-d4de-4f28-b20e-96e4ee193ca0', '9eb652e3-b89d-44e8-bb59-d03f5326de64', '9eb652e3-c6ce-465a-a0c0-6988b55be90c', 576.00, '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `perhitungans` VALUES (14, '9eb652e3-d53f-46bc-90e5-3021904d0e15', '9eb652e3-b89d-44e8-bb59-d03f5326de64', '9eb652e3-c743-46ef-886e-d622c6fb01fb', 45.00, '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `perhitungans` VALUES (15, '9eb652e3-d59f-49e8-9217-3c613d93788e', '9eb652e3-b89d-44e8-bb59-d03f5326de64', '9eb652e3-c7ae-4190-9e1b-ccb58cdf0802', 150.00, '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `perhitungans` VALUES (16, '9eb652e3-d601-4071-afbe-595ebc558851', '9eb652e3-b89d-44e8-bb59-d03f5326de64', '9eb652e3-c811-4a03-bcb0-f717905853f7', 45.00, '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `perhitungans` VALUES (17, '9eb652e3-d663-4ca8-a2b6-ccdfd8e91170', '9eb652e3-b89d-44e8-bb59-d03f5326de64', '9eb652e3-c874-4c60-b905-bd11a3091be0', 1.00, '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `perhitungans` VALUES (18, '9eb652e3-d6c4-4225-aa53-b063f2a0903d', '9eb652e3-b89d-44e8-bb59-d03f5326de64', '9eb652e3-c8d8-451c-af55-30fb4448938c', 70.00, '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `perhitungans` VALUES (19, '9eb652e3-d726-4207-9c8d-231c71c8ad45', '9eb652e3-b89d-44e8-bb59-d03f5326de64', '9eb652e3-c93a-4276-8813-f9c9e5c51740', 14.00, '2025-04-19 10:38:38', '2025-04-19 10:38:38');
INSERT INTO `perhitungans` VALUES (20, '9eb652e3-d789-4878-b290-d2e735d3d69f', '9eb652e3-b89d-44e8-bb59-d03f5326de64', '9eb652e3-c99c-49d9-b226-b9425155f588', 1.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (21, '9eb652e3-d813-4cf2-81ae-002df154d61b', '9eb652e3-ba2b-4bc2-9037-d518aa990746', '9eb652e3-c3cf-4269-908e-b4b09e57e0e8', 5.60, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (22, '9eb652e3-d895-49a0-829d-70270e66787b', '9eb652e3-ba2b-4bc2-9037-d518aa990746', '9eb652e3-c64f-417a-a0e4-3f5eca3f9eb0', 500.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (23, '9eb652e3-d8fd-4fbf-b062-89b353337155', '9eb652e3-ba2b-4bc2-9037-d518aa990746', '9eb652e3-c6ce-465a-a0c0-6988b55be90c', 1152.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (24, '9eb652e3-d980-4cb1-a481-17977c6d2308', '9eb652e3-ba2b-4bc2-9037-d518aa990746', '9eb652e3-c743-46ef-886e-d622c6fb01fb', 40.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (25, '9eb652e3-d9e7-48a2-8eae-edfaf735093c', '9eb652e3-ba2b-4bc2-9037-d518aa990746', '9eb652e3-c7ae-4190-9e1b-ccb58cdf0802', 150.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (26, '9eb652e3-da4d-4a86-b6c8-8214d9af4286', '9eb652e3-ba2b-4bc2-9037-d518aa990746', '9eb652e3-c811-4a03-bcb0-f717905853f7', 35.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (27, '9eb652e3-dab2-4c77-aa83-d7563818952c', '9eb652e3-ba2b-4bc2-9037-d518aa990746', '9eb652e3-c874-4c60-b905-bd11a3091be0', 1.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (28, '9eb652e3-db18-48ae-bfb5-99166fb4050d', '9eb652e3-ba2b-4bc2-9037-d518aa990746', '9eb652e3-c8d8-451c-af55-30fb4448938c', 70.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (29, '9eb652e3-db79-4dcd-a9a5-179470930574', '9eb652e3-ba2b-4bc2-9037-d518aa990746', '9eb652e3-c93a-4276-8813-f9c9e5c51740', 14.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (30, '9eb652e3-dbda-4f21-a93a-2723d543058d', '9eb652e3-ba2b-4bc2-9037-d518aa990746', '9eb652e3-c99c-49d9-b226-b9425155f588', 2.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (31, '9eb652e3-dc64-4115-838b-c285742fd3eb', '9eb652e3-bab0-44f7-976e-18c42062a978', '9eb652e3-c3cf-4269-908e-b4b09e57e0e8', 4.60, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (32, '9eb652e3-dcc6-4019-8d06-bae9000af752', '9eb652e3-bab0-44f7-976e-18c42062a978', '9eb652e3-c64f-417a-a0e4-3f5eca3f9eb0', 500.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (33, '9eb652e3-dd27-46b2-95a1-2c613c83477d', '9eb652e3-bab0-44f7-976e-18c42062a978', '9eb652e3-c6ce-465a-a0c0-6988b55be90c', 576.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (34, '9eb652e3-dd89-48c8-835d-b1a64b3fbb76', '9eb652e3-bab0-44f7-976e-18c42062a978', '9eb652e3-c743-46ef-886e-d622c6fb01fb', 40.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (35, '9eb652e3-ddea-470f-bbe0-fbd49a317657', '9eb652e3-bab0-44f7-976e-18c42062a978', '9eb652e3-c7ae-4190-9e1b-ccb58cdf0802', 150.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (36, '9eb652e3-de4b-49b0-9caa-d6ac8aae8cc4', '9eb652e3-bab0-44f7-976e-18c42062a978', '9eb652e3-c811-4a03-bcb0-f717905853f7', 40.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (37, '9eb652e3-dead-49ab-bbab-71c255b34854', '9eb652e3-bab0-44f7-976e-18c42062a978', '9eb652e3-c874-4c60-b905-bd11a3091be0', 1.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (38, '9eb652e3-df2b-4681-b422-13b9adfff930', '9eb652e3-bab0-44f7-976e-18c42062a978', '9eb652e3-c8d8-451c-af55-30fb4448938c', 55.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (39, '9eb652e3-df9d-493e-a4de-fb72c21efe04', '9eb652e3-bab0-44f7-976e-18c42062a978', '9eb652e3-c93a-4276-8813-f9c9e5c51740', 14.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (40, '9eb652e3-e004-411c-8bb1-e8278147ed84', '9eb652e3-bab0-44f7-976e-18c42062a978', '9eb652e3-c99c-49d9-b226-b9425155f588', 2.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (41, '9eb652e3-e095-4ddc-ac01-1a7fe518b67c', '9eb652e3-bb18-47f4-9b69-0e1ff8453a83', '9eb652e3-c3cf-4269-908e-b4b09e57e0e8', 3.80, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (42, '9eb652e3-e0f8-4f21-a5e8-77d1c52141e1', '9eb652e3-bb18-47f4-9b69-0e1ff8453a83', '9eb652e3-c64f-417a-a0e4-3f5eca3f9eb0', 500.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (43, '9eb652e3-e15a-4b01-bab0-eaacaf26a7c7', '9eb652e3-bb18-47f4-9b69-0e1ff8453a83', '9eb652e3-c6ce-465a-a0c0-6988b55be90c', 576.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (44, '9eb652e3-e1bc-4507-8243-0b3cc39959de', '9eb652e3-bb18-47f4-9b69-0e1ff8453a83', '9eb652e3-c743-46ef-886e-d622c6fb01fb', 40.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (45, '9eb652e3-e21b-4a88-8cff-14d138dce47a', '9eb652e3-bb18-47f4-9b69-0e1ff8453a83', '9eb652e3-c7ae-4190-9e1b-ccb58cdf0802', 150.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (46, '9eb652e3-e27d-4656-8969-1abee928d7ba', '9eb652e3-bb18-47f4-9b69-0e1ff8453a83', '9eb652e3-c811-4a03-bcb0-f717905853f7', 35.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (47, '9eb652e3-e2dd-4509-abb7-0d0cef692f0d', '9eb652e3-bb18-47f4-9b69-0e1ff8453a83', '9eb652e3-c874-4c60-b905-bd11a3091be0', 1.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (48, '9eb652e3-e341-4804-bfc6-03edef248ac0', '9eb652e3-bb18-47f4-9b69-0e1ff8453a83', '9eb652e3-c8d8-451c-af55-30fb4448938c', 50.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (49, '9eb652e3-e3a2-4af2-ac56-feeb1e9a7d15', '9eb652e3-bb18-47f4-9b69-0e1ff8453a83', '9eb652e3-c93a-4276-8813-f9c9e5c51740', 14.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (50, '9eb652e3-e404-4824-9e32-fc4db5339312', '9eb652e3-bb18-47f4-9b69-0e1ff8453a83', '9eb652e3-c99c-49d9-b226-b9425155f588', 3.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (51, '9eb652e3-e48e-4c8a-8d8d-54e0a706bb6a', '9eb652e3-bb77-454f-bf28-4c3c7403d895', '9eb652e3-c3cf-4269-908e-b4b09e57e0e8', 4.30, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (52, '9eb652e3-e4ef-40f4-8820-79bbdb38d424', '9eb652e3-bb77-454f-bf28-4c3c7403d895', '9eb652e3-c64f-417a-a0e4-3f5eca3f9eb0', 450.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (53, '9eb652e3-e564-421b-babf-8e333fe4d39b', '9eb652e3-bb77-454f-bf28-4c3c7403d895', '9eb652e3-c6ce-465a-a0c0-6988b55be90c', 576.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (54, '9eb652e3-e5f2-40b4-838e-2df5c6bf7499', '9eb652e3-bb77-454f-bf28-4c3c7403d895', '9eb652e3-c743-46ef-886e-d622c6fb01fb', 40.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (55, '9eb652e3-e675-48cd-ba78-2d0a1d6aaba4', '9eb652e3-bb77-454f-bf28-4c3c7403d895', '9eb652e3-c7ae-4190-9e1b-ccb58cdf0802', 150.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (56, '9eb652e3-e6dc-432d-880d-40835fa0556c', '9eb652e3-bb77-454f-bf28-4c3c7403d895', '9eb652e3-c811-4a03-bcb0-f717905853f7', 45.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (57, '9eb652e3-e740-4d00-b6e1-255a2fdab6d5', '9eb652e3-bb77-454f-bf28-4c3c7403d895', '9eb652e3-c874-4c60-b905-bd11a3091be0', 1.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (58, '9eb652e3-e7a3-40c1-bed7-768e318643c2', '9eb652e3-bb77-454f-bf28-4c3c7403d895', '9eb652e3-c8d8-451c-af55-30fb4448938c', 55.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (59, '9eb652e3-e801-4b94-8956-68d87e56b27e', '9eb652e3-bb77-454f-bf28-4c3c7403d895', '9eb652e3-c93a-4276-8813-f9c9e5c51740', 14.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (60, '9eb652e3-e85f-47d9-973e-98eb62c1bedc', '9eb652e3-bb77-454f-bf28-4c3c7403d895', '9eb652e3-c99c-49d9-b226-b9425155f588', 3.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (61, '9eb652e3-e8e3-4965-a233-30b5d0d4acc7', '9eb652e3-bbd6-413c-b9c2-0d59c9ef3db6', '9eb652e3-c3cf-4269-908e-b4b09e57e0e8', 3.90, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (62, '9eb652e3-e940-4657-b0b3-9448ec6c99d0', '9eb652e3-bbd6-413c-b9c2-0d59c9ef3db6', '9eb652e3-c64f-417a-a0e4-3f5eca3f9eb0', 600.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (63, '9eb652e3-e99d-4b12-a4b7-7e0eec0b69e9', '9eb652e3-bbd6-413c-b9c2-0d59c9ef3db6', '9eb652e3-c6ce-465a-a0c0-6988b55be90c', 576.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (64, '9eb652e3-e9fa-4a73-ac34-876ef28caffd', '9eb652e3-bbd6-413c-b9c2-0d59c9ef3db6', '9eb652e3-c743-46ef-886e-d622c6fb01fb', 40.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (65, '9eb652e3-ea57-4dbd-bda3-7172008a6a78', '9eb652e3-bbd6-413c-b9c2-0d59c9ef3db6', '9eb652e3-c7ae-4190-9e1b-ccb58cdf0802', 150.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (66, '9eb652e3-eac4-475f-b851-7e757a2389af', '9eb652e3-bbd6-413c-b9c2-0d59c9ef3db6', '9eb652e3-c811-4a03-bcb0-f717905853f7', 45.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (67, '9eb652e3-eb21-492a-8411-4aeb23d989a7', '9eb652e3-bbd6-413c-b9c2-0d59c9ef3db6', '9eb652e3-c874-4c60-b905-bd11a3091be0', 1.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (68, '9eb652e3-eb7e-49db-8f43-01633bc19750', '9eb652e3-bbd6-413c-b9c2-0d59c9ef3db6', '9eb652e3-c8d8-451c-af55-30fb4448938c', 70.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (69, '9eb652e3-ebfc-4c8c-a616-f942cb1886d0', '9eb652e3-bbd6-413c-b9c2-0d59c9ef3db6', '9eb652e3-c93a-4276-8813-f9c9e5c51740', 14.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (70, '9eb652e3-eca4-4ff6-8b5e-1d79a1d7b647', '9eb652e3-bbd6-413c-b9c2-0d59c9ef3db6', '9eb652e3-c99c-49d9-b226-b9425155f588', 3.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (71, '9eb652e3-ed37-494a-b2da-6b56d69d575e', '9eb652e3-bc33-48f5-a5dc-1a92bb806729', '9eb652e3-c3cf-4269-908e-b4b09e57e0e8', 4.20, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (72, '9eb652e3-ed99-4e12-89ae-201a69c4298a', '9eb652e3-bc33-48f5-a5dc-1a92bb806729', '9eb652e3-c64f-417a-a0e4-3f5eca3f9eb0', 500.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (73, '9eb652e3-ee01-4706-9bd9-cf2b410389ab', '9eb652e3-bc33-48f5-a5dc-1a92bb806729', '9eb652e3-c6ce-465a-a0c0-6988b55be90c', 576.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (74, '9eb652e3-ee6a-43e0-98e1-e37427afde33', '9eb652e3-bc33-48f5-a5dc-1a92bb806729', '9eb652e3-c743-46ef-886e-d622c6fb01fb', 45.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (75, '9eb652e3-eecf-45c8-9a6a-98cef96eeea0', '9eb652e3-bc33-48f5-a5dc-1a92bb806729', '9eb652e3-c7ae-4190-9e1b-ccb58cdf0802', 150.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (76, '9eb652e3-ef34-463b-97e9-06d205877f08', '9eb652e3-bc33-48f5-a5dc-1a92bb806729', '9eb652e3-c811-4a03-bcb0-f717905853f7', 40.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (77, '9eb652e3-ef98-4cc1-8317-c10f24efc07f', '9eb652e3-bc33-48f5-a5dc-1a92bb806729', '9eb652e3-c874-4c60-b905-bd11a3091be0', 1.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (78, '9eb652e3-effd-4d0d-8ac2-7e6d057d3052', '9eb652e3-bc33-48f5-a5dc-1a92bb806729', '9eb652e3-c8d8-451c-af55-30fb4448938c', 80.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (79, '9eb652e3-f061-47e5-8ebc-e6ae6982db5f', '9eb652e3-bc33-48f5-a5dc-1a92bb806729', '9eb652e3-c93a-4276-8813-f9c9e5c51740', 14.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (80, '9eb652e3-f0c5-46b8-a782-e2ba385cec81', '9eb652e3-bc33-48f5-a5dc-1a92bb806729', '9eb652e3-c99c-49d9-b226-b9425155f588', 2.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (81, '9eb652e3-f156-49d3-849f-e6469a4ddd67', '9eb652e3-bc92-4dcf-a7db-b8120bbc263a', '9eb652e3-c3cf-4269-908e-b4b09e57e0e8', 5.30, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (82, '9eb652e3-f1b9-4989-b475-738c0d0e05c2', '9eb652e3-bc92-4dcf-a7db-b8120bbc263a', '9eb652e3-c64f-417a-a0e4-3f5eca3f9eb0', 600.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (83, '9eb652e3-f226-4bf6-9d5a-248db41d0f56', '9eb652e3-bc92-4dcf-a7db-b8120bbc263a', '9eb652e3-c6ce-465a-a0c0-6988b55be90c', 1152.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (84, '9eb652e3-f2b0-4ee6-9ee2-f20188cf5e4d', '9eb652e3-bc92-4dcf-a7db-b8120bbc263a', '9eb652e3-c743-46ef-886e-d622c6fb01fb', 40.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (85, '9eb652e3-f342-4745-a445-e0e2a44dc2e2', '9eb652e3-bc92-4dcf-a7db-b8120bbc263a', '9eb652e3-c7ae-4190-9e1b-ccb58cdf0802', 150.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (86, '9eb652e3-f3b2-489f-8dad-ea3eb3f2b02b', '9eb652e3-bc92-4dcf-a7db-b8120bbc263a', '9eb652e3-c811-4a03-bcb0-f717905853f7', 45.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (87, '9eb652e3-f41d-49c2-898b-adc1901adad0', '9eb652e3-bc92-4dcf-a7db-b8120bbc263a', '9eb652e3-c874-4c60-b905-bd11a3091be0', 1.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (88, '9eb652e3-f493-4798-b877-d8c4f98a73b3', '9eb652e3-bc92-4dcf-a7db-b8120bbc263a', '9eb652e3-c8d8-451c-af55-30fb4448938c', 75.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (89, '9eb652e3-f509-4fb2-9188-0af688540b1d', '9eb652e3-bc92-4dcf-a7db-b8120bbc263a', '9eb652e3-c93a-4276-8813-f9c9e5c51740', 14.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (90, '9eb652e3-f575-4239-9460-3a74cf3fd31d', '9eb652e3-bc92-4dcf-a7db-b8120bbc263a', '9eb652e3-c99c-49d9-b226-b9425155f588', 3.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (91, '9eb652e3-f60c-489b-ba47-47d2622463b7', '9eb652e3-bced-49bf-8b99-e3ea747c53c2', '9eb652e3-c3cf-4269-908e-b4b09e57e0e8', 5.75, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (92, '9eb652e3-f673-48cf-990b-6bdbb7dbd3a5', '9eb652e3-bced-49bf-8b99-e3ea747c53c2', '9eb652e3-c64f-417a-a0e4-3f5eca3f9eb0', 800.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (93, '9eb652e3-f6d9-42d9-bc18-145c60afdbcd', '9eb652e3-bced-49bf-8b99-e3ea747c53c2', '9eb652e3-c6ce-465a-a0c0-6988b55be90c', 576.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (94, '9eb652e3-f73f-4828-ac11-f0420a10d11f', '9eb652e3-bced-49bf-8b99-e3ea747c53c2', '9eb652e3-c743-46ef-886e-d622c6fb01fb', 50.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (95, '9eb652e3-f7a6-40d0-9b08-dcff31bba681', '9eb652e3-bced-49bf-8b99-e3ea747c53c2', '9eb652e3-c7ae-4190-9e1b-ccb58cdf0802', 150.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (96, '9eb652e3-f814-44e4-8b98-52ee50e2a0b4', '9eb652e3-bced-49bf-8b99-e3ea747c53c2', '9eb652e3-c811-4a03-bcb0-f717905853f7', 45.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (97, '9eb652e3-f87a-4d74-8575-13387e236060', '9eb652e3-bced-49bf-8b99-e3ea747c53c2', '9eb652e3-c874-4c60-b905-bd11a3091be0', 2.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (98, '9eb652e3-f8e8-4ef5-a3b9-6b458af8ce84', '9eb652e3-bced-49bf-8b99-e3ea747c53c2', '9eb652e3-c8d8-451c-af55-30fb4448938c', 70.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (99, '9eb652e3-f94f-47ce-a744-bc9d4bda9017', '9eb652e3-bced-49bf-8b99-e3ea747c53c2', '9eb652e3-c93a-4276-8813-f9c9e5c51740', 14.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (100, '9eb652e3-fa02-4a87-b14b-ed5c68d55b08', '9eb652e3-bced-49bf-8b99-e3ea747c53c2', '9eb652e3-c99c-49d9-b226-b9425155f588', 5.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (101, '9eb652e3-fa97-434d-ac2d-04779e5c98c8', '9eb652e3-bd49-4903-b8fb-e426af85b000', '9eb652e3-c3cf-4269-908e-b4b09e57e0e8', 4.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (102, '9eb652e3-fafe-4b2e-967a-82a8b69fe6b9', '9eb652e3-bd49-4903-b8fb-e426af85b000', '9eb652e3-c64f-417a-a0e4-3f5eca3f9eb0', 500.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (103, '9eb652e3-fb63-4d10-b91d-8722b28488be', '9eb652e3-bd49-4903-b8fb-e426af85b000', '9eb652e3-c6ce-465a-a0c0-6988b55be90c', 960.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (104, '9eb652e3-fbc8-4f8a-adac-ea4b97c23854', '9eb652e3-bd49-4903-b8fb-e426af85b000', '9eb652e3-c743-46ef-886e-d622c6fb01fb', 40.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (105, '9eb652e3-fc2d-41d7-85a8-ed63f7853f23', '9eb652e3-bd49-4903-b8fb-e426af85b000', '9eb652e3-c7ae-4190-9e1b-ccb58cdf0802', 150.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (106, '9eb652e3-fc91-4d20-93fd-431763b391ab', '9eb652e3-bd49-4903-b8fb-e426af85b000', '9eb652e3-c811-4a03-bcb0-f717905853f7', 37.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (107, '9eb652e3-fcf6-4217-84b6-980bf5a11396', '9eb652e3-bd49-4903-b8fb-e426af85b000', '9eb652e3-c874-4c60-b905-bd11a3091be0', 1.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (108, '9eb652e3-fd5a-4f8f-9c19-6be2194a05ec', '9eb652e3-bd49-4903-b8fb-e426af85b000', '9eb652e3-c8d8-451c-af55-30fb4448938c', 50.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (109, '9eb652e3-fdbf-43bb-ab5f-2235f9abf71f', '9eb652e3-bd49-4903-b8fb-e426af85b000', '9eb652e3-c93a-4276-8813-f9c9e5c51740', 14.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (110, '9eb652e3-fe46-4652-badb-55736e3aa03a', '9eb652e3-bd49-4903-b8fb-e426af85b000', '9eb652e3-c99c-49d9-b226-b9425155f588', 2.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (111, '9eb652e3-fed6-424b-b005-320d55c62e3f', '9eb652e3-bda4-4f69-a8bf-2bab8b1e16ef', '9eb652e3-c3cf-4269-908e-b4b09e57e0e8', 7.60, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (112, '9eb652e3-ff3b-4afe-aa76-016ebf4e22c4', '9eb652e3-bda4-4f69-a8bf-2bab8b1e16ef', '9eb652e3-c64f-417a-a0e4-3f5eca3f9eb0', 600.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (113, '9eb652e3-ffba-445c-9552-2b9b44e51b4a', '9eb652e3-bda4-4f69-a8bf-2bab8b1e16ef', '9eb652e3-c6ce-465a-a0c0-6988b55be90c', 1920.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (114, '9eb652e4-0034-437d-b044-6d40ea904962', '9eb652e3-bda4-4f69-a8bf-2bab8b1e16ef', '9eb652e3-c743-46ef-886e-d622c6fb01fb', 60.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (115, '9eb652e4-009b-4e13-bed0-3085de3b8cc8', '9eb652e3-bda4-4f69-a8bf-2bab8b1e16ef', '9eb652e3-c7ae-4190-9e1b-ccb58cdf0802', 180.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (116, '9eb652e4-0100-45f9-953b-bbf836422bcf', '9eb652e3-bda4-4f69-a8bf-2bab8b1e16ef', '9eb652e3-c811-4a03-bcb0-f717905853f7', 42.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (117, '9eb652e4-0166-475b-b141-072b351a938b', '9eb652e3-bda4-4f69-a8bf-2bab8b1e16ef', '9eb652e3-c874-4c60-b905-bd11a3091be0', 1.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (118, '9eb652e4-01c9-4776-be6f-ae1cf9ceee7d', '9eb652e3-bda4-4f69-a8bf-2bab8b1e16ef', '9eb652e3-c8d8-451c-af55-30fb4448938c', 48.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (119, '9eb652e4-022c-47bf-9611-7fcfbd66c46a', '9eb652e3-bda4-4f69-a8bf-2bab8b1e16ef', '9eb652e3-c93a-4276-8813-f9c9e5c51740', 14.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (120, '9eb652e4-028e-4c84-a1c1-bc24da3e380a', '9eb652e3-bda4-4f69-a8bf-2bab8b1e16ef', '9eb652e3-c99c-49d9-b226-b9425155f588', 3.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (121, '9eb652e4-031b-4e54-bf8b-b5d4e283e8df', '9eb652e3-be00-444f-9e22-3fd478b96fa5', '9eb652e3-c3cf-4269-908e-b4b09e57e0e8', 4.15, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (122, '9eb652e4-037d-4799-a75b-c88c172d3bf1', '9eb652e3-be00-444f-9e22-3fd478b96fa5', '9eb652e3-c64f-417a-a0e4-3f5eca3f9eb0', 500.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (123, '9eb652e4-03df-4d08-b209-8f74670df1a9', '9eb652e3-be00-444f-9e22-3fd478b96fa5', '9eb652e3-c6ce-465a-a0c0-6988b55be90c', 1152.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (124, '9eb652e4-044a-4ea8-b5d7-e3a51f5f986d', '9eb652e3-be00-444f-9e22-3fd478b96fa5', '9eb652e3-c743-46ef-886e-d622c6fb01fb', 45.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (125, '9eb652e4-04ae-4428-9937-68ef8d107eb8', '9eb652e3-be00-444f-9e22-3fd478b96fa5', '9eb652e3-c7ae-4190-9e1b-ccb58cdf0802', 150.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (126, '9eb652e4-0512-49c1-90bd-457026fa1dce', '9eb652e3-be00-444f-9e22-3fd478b96fa5', '9eb652e3-c811-4a03-bcb0-f717905853f7', 38.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (127, '9eb652e4-0575-461a-9eff-140a8e061df9', '9eb652e3-be00-444f-9e22-3fd478b96fa5', '9eb652e3-c874-4c60-b905-bd11a3091be0', 1.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (128, '9eb652e4-05e7-4425-921f-1736b7fbaa47', '9eb652e3-be00-444f-9e22-3fd478b96fa5', '9eb652e3-c8d8-451c-af55-30fb4448938c', 48.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (129, '9eb652e4-0685-4d31-ae5f-7daafab10ebf', '9eb652e3-be00-444f-9e22-3fd478b96fa5', '9eb652e3-c93a-4276-8813-f9c9e5c51740', 14.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (130, '9eb652e4-06f4-4f1f-ad0d-18404bc20753', '9eb652e3-be00-444f-9e22-3fd478b96fa5', '9eb652e3-c99c-49d9-b226-b9425155f588', 1.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (131, '9eb652e4-0786-4748-9869-b2e50bb7c0c2', '9eb652e3-be81-44cd-940d-b71d4d7d8a83', '9eb652e3-c3cf-4269-908e-b4b09e57e0e8', 5.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (132, '9eb652e4-07ed-4f3f-a094-4362edf238c3', '9eb652e3-be81-44cd-940d-b71d4d7d8a83', '9eb652e3-c64f-417a-a0e4-3f5eca3f9eb0', 500.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (133, '9eb652e4-0852-4087-a570-bc9b93f547c9', '9eb652e3-be81-44cd-940d-b71d4d7d8a83', '9eb652e3-c6ce-465a-a0c0-6988b55be90c', 1152.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (134, '9eb652e4-08b8-4005-b8da-8ebab8d8f445', '9eb652e3-be81-44cd-940d-b71d4d7d8a83', '9eb652e3-c743-46ef-886e-d622c6fb01fb', 45.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (135, '9eb652e4-091c-49c7-b527-b072572bbaac', '9eb652e3-be81-44cd-940d-b71d4d7d8a83', '9eb652e3-c7ae-4190-9e1b-ccb58cdf0802', 150.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (136, '9eb652e4-097f-4284-8cf6-720780dcf4d9', '9eb652e3-be81-44cd-940d-b71d4d7d8a83', '9eb652e3-c811-4a03-bcb0-f717905853f7', 40.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (137, '9eb652e4-09e3-4412-9280-fd6c89365fa9', '9eb652e3-be81-44cd-940d-b71d4d7d8a83', '9eb652e3-c874-4c60-b905-bd11a3091be0', 1.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (138, '9eb652e4-0a49-4d7b-a447-5ae792a2ff35', '9eb652e3-be81-44cd-940d-b71d4d7d8a83', '9eb652e3-c8d8-451c-af55-30fb4448938c', 50.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (139, '9eb652e4-0ad6-4a23-a248-08030f74606f', '9eb652e3-be81-44cd-940d-b71d4d7d8a83', '9eb652e3-c93a-4276-8813-f9c9e5c51740', 14.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (140, '9eb652e4-0b3e-423e-bbb1-1a914fd28e64', '9eb652e3-be81-44cd-940d-b71d4d7d8a83', '9eb652e3-c99c-49d9-b226-b9425155f588', 3.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (141, '9eb652e4-0bce-4731-b047-2869cefe41de', '9eb652e3-bf11-482e-af3e-e89cbf273d87', '9eb652e3-c3cf-4269-908e-b4b09e57e0e8', 5.40, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (142, '9eb652e4-0c33-4e7f-9af2-5729f70700b3', '9eb652e3-bf11-482e-af3e-e89cbf273d87', '9eb652e3-c64f-417a-a0e4-3f5eca3f9eb0', 875.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (143, '9eb652e4-0cba-4df9-a8e7-54d779026ae3', '9eb652e3-bf11-482e-af3e-e89cbf273d87', '9eb652e3-c6ce-465a-a0c0-6988b55be90c', 960.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (144, '9eb652e4-0d24-4106-8731-993d91d3d5fa', '9eb652e3-bf11-482e-af3e-e89cbf273d87', '9eb652e3-c743-46ef-886e-d622c6fb01fb', 60.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (145, '9eb652e4-0d86-4760-860b-78695e580897', '9eb652e3-bf11-482e-af3e-e89cbf273d87', '9eb652e3-c7ae-4190-9e1b-ccb58cdf0802', 150.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (146, '9eb652e4-0de7-4dfc-bd9a-6aba5da3868f', '9eb652e3-bf11-482e-af3e-e89cbf273d87', '9eb652e3-c811-4a03-bcb0-f717905853f7', 25.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (147, '9eb652e4-0e48-470b-9360-e9c21ddf9a2c', '9eb652e3-bf11-482e-af3e-e89cbf273d87', '9eb652e3-c874-4c60-b905-bd11a3091be0', 2.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (148, '9eb652e4-0ea6-4ee2-98d1-e350c97d06be', '9eb652e3-bf11-482e-af3e-e89cbf273d87', '9eb652e3-c8d8-451c-af55-30fb4448938c', 80.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (149, '9eb652e4-0f48-4c6c-a445-5232a969d7fe', '9eb652e3-bf11-482e-af3e-e89cbf273d87', '9eb652e3-c93a-4276-8813-f9c9e5c51740', 14.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (150, '9eb652e4-0fa8-4746-8e7c-b919652b5c5a', '9eb652e3-bf11-482e-af3e-e89cbf273d87', '9eb652e3-c99c-49d9-b226-b9425155f588', 1.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (151, '9eb652e4-1032-4759-aa88-17b1bba2db78', '9eb652e3-bf88-4040-b6df-7724dd9a3896', '9eb652e3-c3cf-4269-908e-b4b09e57e0e8', 3.75, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (152, '9eb652e4-109f-42d5-83d9-a440f56671ba', '9eb652e3-bf88-4040-b6df-7724dd9a3896', '9eb652e3-c64f-417a-a0e4-3f5eca3f9eb0', 525.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (153, '9eb652e4-1149-4460-bb20-4e537f26d53c', '9eb652e3-bf88-4040-b6df-7724dd9a3896', '9eb652e3-c6ce-465a-a0c0-6988b55be90c', 576.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (154, '9eb652e4-11e7-4f4d-87e4-b67a4a77c8c3', '9eb652e3-bf88-4040-b6df-7724dd9a3896', '9eb652e3-c743-46ef-886e-d622c6fb01fb', 40.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (155, '9eb652e4-126c-4ed0-82d9-763f749e8cce', '9eb652e3-bf88-4040-b6df-7724dd9a3896', '9eb652e3-c7ae-4190-9e1b-ccb58cdf0802', 150.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (156, '9eb652e4-12f0-4b85-98b4-35d1cca3dfcd', '9eb652e3-bf88-4040-b6df-7724dd9a3896', '9eb652e3-c811-4a03-bcb0-f717905853f7', 25.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (157, '9eb652e4-1372-4adc-b4a1-a21e4ddad6cd', '9eb652e3-bf88-4040-b6df-7724dd9a3896', '9eb652e3-c874-4c60-b905-bd11a3091be0', 1.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (158, '9eb652e4-13e2-4fe0-9413-3d9d56b301e7', '9eb652e3-bf88-4040-b6df-7724dd9a3896', '9eb652e3-c8d8-451c-af55-30fb4448938c', 60.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (159, '9eb652e4-144e-4cec-95a0-068ebe7a384e', '9eb652e3-bf88-4040-b6df-7724dd9a3896', '9eb652e3-c93a-4276-8813-f9c9e5c51740', 14.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (160, '9eb652e4-14bf-472a-b373-6f90a887dcbd', '9eb652e3-bf88-4040-b6df-7724dd9a3896', '9eb652e3-c99c-49d9-b226-b9425155f588', 1.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (161, '9eb652e4-155a-4b7a-b9f6-37d06c704dd1', '9eb652e3-bfee-43f9-9c8b-de6e104eeed2', '9eb652e3-c3cf-4269-908e-b4b09e57e0e8', 4.80, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (162, '9eb652e4-15c0-45a0-bb79-eae916aa2250', '9eb652e3-bfee-43f9-9c8b-de6e104eeed2', '9eb652e3-c64f-417a-a0e4-3f5eca3f9eb0', 350.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (163, '9eb652e4-1626-4b71-8b78-4ebc35a47079', '9eb652e3-bfee-43f9-9c8b-de6e104eeed2', '9eb652e3-c6ce-465a-a0c0-6988b55be90c', 960.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (164, '9eb652e4-1688-4e36-90ec-c9ba700a4f54', '9eb652e3-bfee-43f9-9c8b-de6e104eeed2', '9eb652e3-c743-46ef-886e-d622c6fb01fb', 50.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (165, '9eb652e4-16fa-426f-bc51-7ce9f2d8e585', '9eb652e3-bfee-43f9-9c8b-de6e104eeed2', '9eb652e3-c7ae-4190-9e1b-ccb58cdf0802', 150.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (166, '9eb652e4-1760-436c-a7fa-4525a8317641', '9eb652e3-bfee-43f9-9c8b-de6e104eeed2', '9eb652e3-c811-4a03-bcb0-f717905853f7', 25.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (167, '9eb652e4-17c0-4227-915e-b9433e338105', '9eb652e3-bfee-43f9-9c8b-de6e104eeed2', '9eb652e3-c874-4c60-b905-bd11a3091be0', 1.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (168, '9eb652e4-1820-403d-b171-b3a68124fcc8', '9eb652e3-bfee-43f9-9c8b-de6e104eeed2', '9eb652e3-c8d8-451c-af55-30fb4448938c', 80.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (169, '9eb652e4-187e-4b2b-87f6-cf9b053c2943', '9eb652e3-bfee-43f9-9c8b-de6e104eeed2', '9eb652e3-c93a-4276-8813-f9c9e5c51740', 14.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (170, '9eb652e4-18dc-495d-b1e2-a0601dc7a85d', '9eb652e3-bfee-43f9-9c8b-de6e104eeed2', '9eb652e3-c99c-49d9-b226-b9425155f588', 1.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (171, '9eb652e4-196b-4f6d-89c8-f47e2bfba11b', '9eb652e3-c050-4e5d-a7da-5349f156a019', '9eb652e3-c3cf-4269-908e-b4b09e57e0e8', 4.95, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (172, '9eb652e4-19fb-4f4c-b393-5ffd44e1865b', '9eb652e3-c050-4e5d-a7da-5349f156a019', '9eb652e3-c64f-417a-a0e4-3f5eca3f9eb0', 350.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (173, '9eb652e4-1a66-449e-af0b-f9a56303fe69', '9eb652e3-c050-4e5d-a7da-5349f156a019', '9eb652e3-c6ce-465a-a0c0-6988b55be90c', 960.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (174, '9eb652e4-1ac8-4af4-98c9-646889707899', '9eb652e3-c050-4e5d-a7da-5349f156a019', '9eb652e3-c743-46ef-886e-d622c6fb01fb', 60.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (175, '9eb652e4-1b2a-4594-bbd4-d5197d789d1d', '9eb652e3-c050-4e5d-a7da-5349f156a019', '9eb652e3-c7ae-4190-9e1b-ccb58cdf0802', 150.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (176, '9eb652e4-1b8a-4b3f-b722-38d16e2ac1af', '9eb652e3-c050-4e5d-a7da-5349f156a019', '9eb652e3-c811-4a03-bcb0-f717905853f7', 25.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (177, '9eb652e4-1be7-4042-837a-9a2a315e247b', '9eb652e3-c050-4e5d-a7da-5349f156a019', '9eb652e3-c874-4c60-b905-bd11a3091be0', 1.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (178, '9eb652e4-1c44-4838-a03a-ed8434351616', '9eb652e3-c050-4e5d-a7da-5349f156a019', '9eb652e3-c8d8-451c-af55-30fb4448938c', 50.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (179, '9eb652e4-1ca1-43e1-b137-17a638360aa4', '9eb652e3-c050-4e5d-a7da-5349f156a019', '9eb652e3-c93a-4276-8813-f9c9e5c51740', 14.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (180, '9eb652e4-1cfd-4b21-8f20-eaac65bb04ec', '9eb652e3-c050-4e5d-a7da-5349f156a019', '9eb652e3-c99c-49d9-b226-b9425155f588', 2.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (181, '9eb652e4-1d87-4009-96ee-1e377decae78', '9eb652e3-c0bd-4203-ab60-92fd1ea2121c', '9eb652e3-c3cf-4269-908e-b4b09e57e0e8', 3.55, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (182, '9eb652e4-1de4-4aee-bb67-52bd3eaa327f', '9eb652e3-c0bd-4203-ab60-92fd1ea2121c', '9eb652e3-c64f-417a-a0e4-3f5eca3f9eb0', 550.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (183, '9eb652e4-1e40-4c42-a380-c3edea7d7a18', '9eb652e3-c0bd-4203-ab60-92fd1ea2121c', '9eb652e3-c6ce-465a-a0c0-6988b55be90c', 576.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (184, '9eb652e4-1e9c-42ef-b196-73c2b6fb25b7', '9eb652e3-c0bd-4203-ab60-92fd1ea2121c', '9eb652e3-c743-46ef-886e-d622c6fb01fb', 45.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (185, '9eb652e4-1ef9-4b3f-9dac-156b775081ff', '9eb652e3-c0bd-4203-ab60-92fd1ea2121c', '9eb652e3-c7ae-4190-9e1b-ccb58cdf0802', 130.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (186, '9eb652e4-1f55-4f1f-8ec4-7fccd5428614', '9eb652e3-c0bd-4203-ab60-92fd1ea2121c', '9eb652e3-c811-4a03-bcb0-f717905853f7', 40.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (187, '9eb652e4-1fb1-482c-8b22-1728d859873b', '9eb652e3-c0bd-4203-ab60-92fd1ea2121c', '9eb652e3-c874-4c60-b905-bd11a3091be0', 1.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (188, '9eb652e4-203d-4b05-8e73-bb2812ae15b6', '9eb652e3-c0bd-4203-ab60-92fd1ea2121c', '9eb652e3-c8d8-451c-af55-30fb4448938c', 48.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (189, '9eb652e4-20bd-4c61-bcb8-ee969075cf04', '9eb652e3-c0bd-4203-ab60-92fd1ea2121c', '9eb652e3-c93a-4276-8813-f9c9e5c51740', 14.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (190, '9eb652e4-2120-41c7-8885-a1e2de98c270', '9eb652e3-c0bd-4203-ab60-92fd1ea2121c', '9eb652e3-c99c-49d9-b226-b9425155f588', 1.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (191, '9eb652e4-21ab-4a54-9b7a-5a757626cbdd', '9eb652e3-c133-4b62-9510-34fc00d1ee40', '9eb652e3-c3cf-4269-908e-b4b09e57e0e8', 3.70, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (192, '9eb652e4-2209-44c2-a293-1e2aff9bea6c', '9eb652e3-c133-4b62-9510-34fc00d1ee40', '9eb652e3-c64f-417a-a0e4-3f5eca3f9eb0', 500.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (193, '9eb652e4-2267-4406-bca7-1670a5030884', '9eb652e3-c133-4b62-9510-34fc00d1ee40', '9eb652e3-c6ce-465a-a0c0-6988b55be90c', 576.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (194, '9eb652e4-22c4-433b-84ab-b4f23cfd7230', '9eb652e3-c133-4b62-9510-34fc00d1ee40', '9eb652e3-c743-46ef-886e-d622c6fb01fb', 40.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (195, '9eb652e4-2321-436b-8eff-8fc4a5e882a6', '9eb652e3-c133-4b62-9510-34fc00d1ee40', '9eb652e3-c7ae-4190-9e1b-ccb58cdf0802', 150.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (196, '9eb652e4-23a8-4805-bc73-83650aaa32d7', '9eb652e3-c133-4b62-9510-34fc00d1ee40', '9eb652e3-c811-4a03-bcb0-f717905853f7', 40.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (197, '9eb652e4-240c-41b1-b1f4-588c8a2da9ae', '9eb652e3-c133-4b62-9510-34fc00d1ee40', '9eb652e3-c874-4c60-b905-bd11a3091be0', 1.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (198, '9eb652e4-246d-4d05-a794-4803c7c0174e', '9eb652e3-c133-4b62-9510-34fc00d1ee40', '9eb652e3-c8d8-451c-af55-30fb4448938c', 52.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (199, '9eb652e4-24ce-4dc6-b11f-e7ac7594b9c2', '9eb652e3-c133-4b62-9510-34fc00d1ee40', '9eb652e3-c93a-4276-8813-f9c9e5c51740', 14.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (200, '9eb652e4-252e-489d-956a-b19e47d5efd7', '9eb652e3-c133-4b62-9510-34fc00d1ee40', '9eb652e3-c99c-49d9-b226-b9425155f588', 1.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (201, '9eb652e4-25b7-4b4e-b66a-e5c993647a49', '9eb652e3-c194-45e3-8662-d63db908a12b', '9eb652e3-c3cf-4269-908e-b4b09e57e0e8', 3.85, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (202, '9eb652e4-2613-4477-aa8e-477175a1b205', '9eb652e3-c194-45e3-8662-d63db908a12b', '9eb652e3-c64f-417a-a0e4-3f5eca3f9eb0', 550.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (203, '9eb652e4-2674-44bb-b231-3ad6c1ef0671', '9eb652e3-c194-45e3-8662-d63db908a12b', '9eb652e3-c6ce-465a-a0c0-6988b55be90c', 576.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (204, '9eb652e4-26e2-43a5-8abc-7697ec9fd185', '9eb652e3-c194-45e3-8662-d63db908a12b', '9eb652e3-c743-46ef-886e-d622c6fb01fb', 40.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (205, '9eb652e4-2740-4860-b8b4-f3f553c5249e', '9eb652e3-c194-45e3-8662-d63db908a12b', '9eb652e3-c7ae-4190-9e1b-ccb58cdf0802', 130.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (206, '9eb652e4-279d-4eee-a476-87ae14d24b85', '9eb652e3-c194-45e3-8662-d63db908a12b', '9eb652e3-c811-4a03-bcb0-f717905853f7', 40.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (207, '9eb652e4-27f9-4870-bd71-c9e94b4d5e35', '9eb652e3-c194-45e3-8662-d63db908a12b', '9eb652e3-c874-4c60-b905-bd11a3091be0', 1.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (208, '9eb652e4-2856-4efd-8fe0-1920e5d3ada4', '9eb652e3-c194-45e3-8662-d63db908a12b', '9eb652e3-c8d8-451c-af55-30fb4448938c', 48.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (209, '9eb652e4-28b1-4ab0-8191-8a230956c3f1', '9eb652e3-c194-45e3-8662-d63db908a12b', '9eb652e3-c93a-4276-8813-f9c9e5c51740', 14.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (210, '9eb652e4-290e-4d23-ba89-91da030a0c4a', '9eb652e3-c194-45e3-8662-d63db908a12b', '9eb652e3-c99c-49d9-b226-b9425155f588', 1.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (211, '9eb652e4-2999-4645-975f-10e9c2983bd4', '9eb652e3-c1f5-4ac9-8c23-3def062e6e43', '9eb652e3-c3cf-4269-908e-b4b09e57e0e8', 4.50, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (212, '9eb652e4-29f8-4e71-bab2-cee9044e201f', '9eb652e3-c1f5-4ac9-8c23-3def062e6e43', '9eb652e3-c64f-417a-a0e4-3f5eca3f9eb0', 550.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (213, '9eb652e4-2a55-484f-9ba9-5543aedc5114', '9eb652e3-c1f5-4ac9-8c23-3def062e6e43', '9eb652e3-c6ce-465a-a0c0-6988b55be90c', 576.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (214, '9eb652e4-2ab1-45b5-9a8c-22d55bf58087', '9eb652e3-c1f5-4ac9-8c23-3def062e6e43', '9eb652e3-c743-46ef-886e-d622c6fb01fb', 40.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (215, '9eb652e4-2b0e-4981-90f6-2fd14577e268', '9eb652e3-c1f5-4ac9-8c23-3def062e6e43', '9eb652e3-c7ae-4190-9e1b-ccb58cdf0802', 150.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (216, '9eb652e4-2b68-4b86-bf3b-fe1b925cf161', '9eb652e3-c1f5-4ac9-8c23-3def062e6e43', '9eb652e3-c811-4a03-bcb0-f717905853f7', 40.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (217, '9eb652e4-2bc5-44ea-8b51-3d9f8ec667f6', '9eb652e3-c1f5-4ac9-8c23-3def062e6e43', '9eb652e3-c874-4c60-b905-bd11a3091be0', 1.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (218, '9eb652e4-2c21-412e-b9e7-f1a9d62059bd', '9eb652e3-c1f5-4ac9-8c23-3def062e6e43', '9eb652e3-c8d8-451c-af55-30fb4448938c', 53.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (219, '9eb652e4-2c7e-40a3-9ff9-b0957230497e', '9eb652e3-c1f5-4ac9-8c23-3def062e6e43', '9eb652e3-c93a-4276-8813-f9c9e5c51740', 14.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (220, '9eb652e4-2ce4-4087-a720-07edc552e573', '9eb652e3-c1f5-4ac9-8c23-3def062e6e43', '9eb652e3-c99c-49d9-b226-b9425155f588', 1.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (221, '9eb652e4-2d78-4413-b86b-31ae8f1a061b', '9eb652e3-c256-42ad-a0b4-f84bb4f611fd', '9eb652e3-c3cf-4269-908e-b4b09e57e0e8', 3.90, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (222, '9eb652e4-2dd9-4f0c-b217-1f0c34fcf4f9', '9eb652e3-c256-42ad-a0b4-f84bb4f611fd', '9eb652e3-c64f-417a-a0e4-3f5eca3f9eb0', 500.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (223, '9eb652e4-2e41-4655-9400-29d5ba16ca50', '9eb652e3-c256-42ad-a0b4-f84bb4f611fd', '9eb652e3-c6ce-465a-a0c0-6988b55be90c', 576.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (224, '9eb652e4-2ea0-42b0-8a8e-4ebbb6f4b3ef', '9eb652e3-c256-42ad-a0b4-f84bb4f611fd', '9eb652e3-c743-46ef-886e-d622c6fb01fb', 40.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (225, '9eb652e4-2f00-4eb6-8481-8ace40245888', '9eb652e3-c256-42ad-a0b4-f84bb4f611fd', '9eb652e3-c7ae-4190-9e1b-ccb58cdf0802', 130.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (226, '9eb652e4-2f5f-4c54-9d5c-db2c4a1f7794', '9eb652e3-c256-42ad-a0b4-f84bb4f611fd', '9eb652e3-c811-4a03-bcb0-f717905853f7', 40.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (227, '9eb652e4-2fbd-477f-b536-2ca7d72f64bc', '9eb652e3-c256-42ad-a0b4-f84bb4f611fd', '9eb652e3-c874-4c60-b905-bd11a3091be0', 1.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (228, '9eb652e4-3049-486d-b5d4-e3f9cb48fc4f', '9eb652e3-c256-42ad-a0b4-f84bb4f611fd', '9eb652e3-c8d8-451c-af55-30fb4448938c', 54.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (229, '9eb652e4-30b0-4820-a281-7dd7e33163d5', '9eb652e3-c256-42ad-a0b4-f84bb4f611fd', '9eb652e3-c93a-4276-8813-f9c9e5c51740', 14.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (230, '9eb652e4-310f-4d16-a44c-b370f6d6da9c', '9eb652e3-c256-42ad-a0b4-f84bb4f611fd', '9eb652e3-c99c-49d9-b226-b9425155f588', 1.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (231, '9eb652e4-3195-40e6-b084-ab23c4ae4325', '9eb652e3-c2b6-456e-91d6-006ebc1c2448', '9eb652e3-c3cf-4269-908e-b4b09e57e0e8', 3.95, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (232, '9eb652e4-31f2-4b12-9140-e119c30ad4a6', '9eb652e3-c2b6-456e-91d6-006ebc1c2448', '9eb652e3-c64f-417a-a0e4-3f5eca3f9eb0', 500.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (233, '9eb652e4-324f-47ce-be90-68b296a40192', '9eb652e3-c2b6-456e-91d6-006ebc1c2448', '9eb652e3-c6ce-465a-a0c0-6988b55be90c', 576.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (234, '9eb652e4-32ab-43b0-a720-d8627bd40cb1', '9eb652e3-c2b6-456e-91d6-006ebc1c2448', '9eb652e3-c743-46ef-886e-d622c6fb01fb', 40.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (235, '9eb652e4-3309-43ad-9354-a6dd09420f5d', '9eb652e3-c2b6-456e-91d6-006ebc1c2448', '9eb652e3-c7ae-4190-9e1b-ccb58cdf0802', 150.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (236, '9eb652e4-3371-4380-92b7-5a20b7549730', '9eb652e3-c2b6-456e-91d6-006ebc1c2448', '9eb652e3-c811-4a03-bcb0-f717905853f7', 40.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (237, '9eb652e4-3400-4d52-9ec4-fd9bfdca2570', '9eb652e3-c2b6-456e-91d6-006ebc1c2448', '9eb652e3-c874-4c60-b905-bd11a3091be0', 1.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (238, '9eb652e4-346c-4f50-9486-bcded7367bbc', '9eb652e3-c2b6-456e-91d6-006ebc1c2448', '9eb652e3-c8d8-451c-af55-30fb4448938c', 54.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (239, '9eb652e4-34ce-4764-8416-5361d7124145', '9eb652e3-c2b6-456e-91d6-006ebc1c2448', '9eb652e3-c93a-4276-8813-f9c9e5c51740', 14.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (240, '9eb652e4-352f-49f5-8c79-ba81c11f5ca8', '9eb652e3-c2b6-456e-91d6-006ebc1c2448', '9eb652e3-c99c-49d9-b226-b9425155f588', 1.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (241, '9eb652e4-35b9-4e97-bf53-2248aa90d2a7', '9eb652e3-c312-4b8b-b36c-1ea09adc89e9', '9eb652e3-c3cf-4269-908e-b4b09e57e0e8', 3.60, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (242, '9eb652e4-361c-4293-998c-740c2f351222', '9eb652e3-c312-4b8b-b36c-1ea09adc89e9', '9eb652e3-c64f-417a-a0e4-3f5eca3f9eb0', 500.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (243, '9eb652e4-3678-4d53-8725-1a66c6138d5a', '9eb652e3-c312-4b8b-b36c-1ea09adc89e9', '9eb652e3-c6ce-465a-a0c0-6988b55be90c', 576.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (244, '9eb652e4-36d5-49d4-831a-79f40a0efb10', '9eb652e3-c312-4b8b-b36c-1ea09adc89e9', '9eb652e3-c743-46ef-886e-d622c6fb01fb', 40.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (245, '9eb652e4-3732-490b-9b2d-9be40fda3f41', '9eb652e3-c312-4b8b-b36c-1ea09adc89e9', '9eb652e3-c7ae-4190-9e1b-ccb58cdf0802', 150.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (246, '9eb652e4-378f-48f6-bbe9-411991973f78', '9eb652e3-c312-4b8b-b36c-1ea09adc89e9', '9eb652e3-c811-4a03-bcb0-f717905853f7', 40.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (247, '9eb652e4-3833-45ef-887f-5d55b814905a', '9eb652e3-c312-4b8b-b36c-1ea09adc89e9', '9eb652e3-c874-4c60-b905-bd11a3091be0', 1.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (248, '9eb652e4-388f-4e80-a8b2-acf19632051b', '9eb652e3-c312-4b8b-b36c-1ea09adc89e9', '9eb652e3-c8d8-451c-af55-30fb4448938c', 72.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (249, '9eb652e4-38eb-48b4-8ee8-4d2677b1129c', '9eb652e3-c312-4b8b-b36c-1ea09adc89e9', '9eb652e3-c93a-4276-8813-f9c9e5c51740', 14.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (250, '9eb652e4-3946-47c4-beab-c9764e0787f7', '9eb652e3-c312-4b8b-b36c-1ea09adc89e9', '9eb652e3-c99c-49d9-b226-b9425155f588', 1.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (251, '9eb652e4-39c8-4633-8323-2107f23a3856', '9eb652e3-c36b-4d89-885a-4af3ffe36434', '9eb652e3-c3cf-4269-908e-b4b09e57e0e8', 4.35, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (252, '9eb652e4-3a4d-4c63-8105-ef0970bda5f1', '9eb652e3-c36b-4d89-885a-4af3ffe36434', '9eb652e3-c64f-417a-a0e4-3f5eca3f9eb0', 600.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (253, '9eb652e4-3ac8-401f-a15e-f0e11b909280', '9eb652e3-c36b-4d89-885a-4af3ffe36434', '9eb652e3-c6ce-465a-a0c0-6988b55be90c', 576.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (254, '9eb652e4-3b27-4b21-af03-a3b5199abadc', '9eb652e3-c36b-4d89-885a-4af3ffe36434', '9eb652e3-c743-46ef-886e-d622c6fb01fb', 40.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (255, '9eb652e4-3b85-490a-b75d-92bc1bc61f66', '9eb652e3-c36b-4d89-885a-4af3ffe36434', '9eb652e3-c7ae-4190-9e1b-ccb58cdf0802', 150.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (256, '9eb652e4-3be3-4322-8711-89bb6488deeb', '9eb652e3-c36b-4d89-885a-4af3ffe36434', '9eb652e3-c811-4a03-bcb0-f717905853f7', 40.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (257, '9eb652e4-3c42-44e9-afe4-2f94f00f6331', '9eb652e3-c36b-4d89-885a-4af3ffe36434', '9eb652e3-c874-4c60-b905-bd11a3091be0', 1.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (258, '9eb652e4-3cc6-4312-b0c3-a63f3fdb4e97', '9eb652e3-c36b-4d89-885a-4af3ffe36434', '9eb652e3-c8d8-451c-af55-30fb4448938c', 52.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (259, '9eb652e4-3d2e-4286-ba19-ec87b6dad770', '9eb652e3-c36b-4d89-885a-4af3ffe36434', '9eb652e3-c93a-4276-8813-f9c9e5c51740', 14.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');
INSERT INTO `perhitungans` VALUES (260, '9eb652e4-3d90-4689-9169-29c99fa247f8', '9eb652e3-c36b-4d89-885a-4af3ffe36434', '9eb652e3-c99c-49d9-b226-b9425155f588', 3.00, '2025-04-19 10:38:39', '2025-04-19 10:38:39');

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
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sub_kriterias
-- ----------------------------
INSERT INTO `sub_kriterias` VALUES (1, '9931ca04-1d9d-11f0-aa98-00e04ccd07d4', '9eb652e3-c3cf-4269-908e-b4b09e57e0e8', 'Harga murah', 3, '2025-04-20 11:11:56', '2025-04-20 11:11:56');
INSERT INTO `sub_kriterias` VALUES (2, '9931daf0-1d9d-11f0-aa98-00e04ccd07d4', '9eb652e3-c3cf-4269-908e-b4b09e57e0e8', 'Harga sedang', 5, '2025-04-20 11:11:56', '2025-04-20 11:11:56');
INSERT INTO `sub_kriterias` VALUES (3, '9931dbcc-1d9d-11f0-aa98-00e04ccd07d4', '9eb652e3-c3cf-4269-908e-b4b09e57e0e8', 'Harga mahal', 8, '2025-04-20 11:11:56', '2025-04-20 11:11:56');
INSERT INTO `sub_kriterias` VALUES (4, '9931dc7b-1d9d-11f0-aa98-00e04ccd07d4', '9eb652e3-c64f-417a-a0e4-3f5eca3f9eb0', 'Motor Power rendah', 350, '2025-04-20 11:11:56', '2025-04-20 11:11:56');
INSERT INTO `sub_kriterias` VALUES (5, '9931dcd8-1d9d-11f0-aa98-00e04ccd07d4', '9eb652e3-c64f-417a-a0e4-3f5eca3f9eb0', 'Motor Power sedang', 500, '2025-04-20 11:11:56', '2025-04-20 11:11:56');
INSERT INTO `sub_kriterias` VALUES (6, '9931dd2f-1d9d-11f0-aa98-00e04ccd07d4', '9eb652e3-c64f-417a-a0e4-3f5eca3f9eb0', 'Motor Power tinggi', 600, '2025-04-20 11:11:56', '2025-04-20 11:11:56');
INSERT INTO `sub_kriterias` VALUES (7, '9931dd81-1d9d-11f0-aa98-00e04ccd07d4', '9eb652e3-c6ce-465a-a0c0-6988b55be90c', 'Battery rendah', 576, '2025-04-20 11:11:56', '2025-04-20 11:11:56');
INSERT INTO `sub_kriterias` VALUES (8, '9931ddd1-1d9d-11f0-aa98-00e04ccd07d4', '9eb652e3-c6ce-465a-a0c0-6988b55be90c', 'Battery sedang', 1152, '2025-04-20 11:11:56', '2025-04-20 11:11:56');
INSERT INTO `sub_kriterias` VALUES (9, '9931de41-1d9d-11f0-aa98-00e04ccd07d4', '9eb652e3-c6ce-465a-a0c0-6988b55be90c', 'Battery tinggi', 1920, '2025-04-20 11:11:56', '2025-04-20 11:11:56');
INSERT INTO `sub_kriterias` VALUES (10, '9931dea5-1d9d-11f0-aa98-00e04ccd07d4', '9eb652e3-c743-46ef-886e-d622c6fb01fb', 'Jarak tempuh pendek', 40, '2025-04-20 11:11:56', '2025-04-20 11:11:56');
INSERT INTO `sub_kriterias` VALUES (11, '9931def5-1d9d-11f0-aa98-00e04ccd07d4', '9eb652e3-c743-46ef-886e-d622c6fb01fb', 'Jarak tempuh sedang', 45, '2025-04-20 11:11:56', '2025-04-20 11:11:56');
INSERT INTO `sub_kriterias` VALUES (12, '9931df42-1d9d-11f0-aa98-00e04ccd07d4', '9eb652e3-c743-46ef-886e-d622c6fb01fb', 'Jarak tempuh jauh', 60, '2025-04-20 11:11:56', '2025-04-20 11:11:56');
INSERT INTO `sub_kriterias` VALUES (13, '9931df92-1d9d-11f0-aa98-00e04ccd07d4', '9eb652e3-c7ae-4190-9e1b-ccb58cdf0802', 'Daya angkut ringan', 130, '2025-04-20 11:11:56', '2025-04-20 11:11:56');
INSERT INTO `sub_kriterias` VALUES (14, '9931dfe0-1d9d-11f0-aa98-00e04ccd07d4', '9eb652e3-c7ae-4190-9e1b-ccb58cdf0802', 'Daya angkut sedang', 150, '2025-04-20 11:11:56', '2025-04-20 11:11:56');
INSERT INTO `sub_kriterias` VALUES (15, '9931e031-1d9d-11f0-aa98-00e04ccd07d4', '9eb652e3-c7ae-4190-9e1b-ccb58cdf0802', 'Daya angkut berat', 180, '2025-04-20 11:11:56', '2025-04-20 11:11:56');
INSERT INTO `sub_kriterias` VALUES (16, '9931e07f-1d9d-11f0-aa98-00e04ccd07d4', '9eb652e3-c811-4a03-bcb0-f717905853f7', 'Kecepatan rendah', 25, '2025-04-20 11:11:56', '2025-04-20 11:11:56');
INSERT INTO `sub_kriterias` VALUES (17, '9931e0cf-1d9d-11f0-aa98-00e04ccd07d4', '9eb652e3-c811-4a03-bcb0-f717905853f7', 'Kecepatan sedang', 35, '2025-04-20 11:11:56', '2025-04-20 11:11:56');
INSERT INTO `sub_kriterias` VALUES (18, '9931e126-1d9d-11f0-aa98-00e04ccd07d4', '9eb652e3-c811-4a03-bcb0-f717905853f7', 'Kecepatan tinggi', 45, '2025-04-20 11:11:56', '2025-04-20 11:11:56');
INSERT INTO `sub_kriterias` VALUES (19, '9931e174-1d9d-11f0-aa98-00e04ccd07d4', '9eb652e3-c874-4c60-b905-bd11a3091be0', 'Rem standar', 1, '2025-04-20 11:11:56', '2025-04-20 11:11:56');
INSERT INTO `sub_kriterias` VALUES (20, '9931e1c4-1d9d-11f0-aa98-00e04ccd07d4', '9eb652e3-c874-4c60-b905-bd11a3091be0', 'Rem baik', 2, '2025-04-20 11:11:56', '2025-04-20 11:11:56');
INSERT INTO `sub_kriterias` VALUES (21, '9931e213-1d9d-11f0-aa98-00e04ccd07d4', '9eb652e3-c874-4c60-b905-bd11a3091be0', 'Rem sangat baik', 3, '2025-04-20 11:11:56', '2025-04-20 11:11:56');
INSERT INTO `sub_kriterias` VALUES (22, '9931e263-1d9d-11f0-aa98-00e04ccd07d4', '9eb652e3-c8d8-451c-af55-30fb4448938c', 'Bobot ringan', 48, '2025-04-20 11:11:56', '2025-04-20 11:11:56');
INSERT INTO `sub_kriterias` VALUES (23, '9931e2b3-1d9d-11f0-aa98-00e04ccd07d4', '9eb652e3-c8d8-451c-af55-30fb4448938c', 'Bobot sedang', 54, '2025-04-20 11:11:56', '2025-04-20 11:11:56');
INSERT INTO `sub_kriterias` VALUES (24, '9931e34b-1d9d-11f0-aa98-00e04ccd07d4', '9eb652e3-c8d8-451c-af55-30fb4448938c', 'Bobot berat', 80, '2025-04-20 11:11:56', '2025-04-20 11:11:56');
INSERT INTO `sub_kriterias` VALUES (25, '9931e39e-1d9d-11f0-aa98-00e04ccd07d4', '9eb652e3-c93a-4276-8813-f9c9e5c51740', 'Diameter kecil', 14, '2025-04-20 11:11:56', '2025-04-20 11:11:56');
INSERT INTO `sub_kriterias` VALUES (26, '9931e3ec-1d9d-11f0-aa98-00e04ccd07d4', '9eb652e3-c93a-4276-8813-f9c9e5c51740', 'Diameter sedang', 14, '2025-04-20 11:11:56', '2025-04-20 11:11:56');
INSERT INTO `sub_kriterias` VALUES (27, '9931e436-1d9d-11f0-aa98-00e04ccd07d4', '9eb652e3-c93a-4276-8813-f9c9e5c51740', 'Diameter besar', 14, '2025-04-20 11:11:56', '2025-04-20 11:11:56');
INSERT INTO `sub_kriterias` VALUES (28, '9931e481-1d9d-11f0-aa98-00e04ccd07d4', '9eb652e3-c99c-49d9-b226-b9425155f588', 'Fitur standar', 1, '2025-04-20 11:11:56', '2025-04-20 11:11:56');
INSERT INTO `sub_kriterias` VALUES (29, '9931e4cd-1d9d-11f0-aa98-00e04ccd07d4', '9eb652e3-c99c-49d9-b226-b9425155f588', 'Fitur lengkap', 2, '2025-04-20 11:11:56', '2025-04-20 11:11:56');
INSERT INTO `sub_kriterias` VALUES (30, '9931e518-1d9d-11f0-aa98-00e04ccd07d4', '9eb652e3-c99c-49d9-b226-b9425155f588', 'Fitur sangat lengkap', 3, '2025-04-20 11:11:56', '2025-04-20 11:11:56');

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
INSERT INTO `users` VALUES (1, 'Rizal', 'admin', 'test@example.com', '2025-04-19 10:37:33', '$2y$12$uSIowUTyJb4lSYqp6m0qJeyAg6Z4UcLBANElf0zFnq/5yUarXQXHe', 'B1LJgyBxP4', '2025-04-19 10:37:34', '2025-04-19 10:37:34');

SET FOREIGN_KEY_CHECKS = 1;
