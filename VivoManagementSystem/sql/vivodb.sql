/*
 Navicat Premium Data Transfer

 Source Schema         : vivodb

 Target Server Type    : MySQL
 Target Server Version : 50729
 File Encoding         : 65001

 Date: 17/08/2020 20:54:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for vivo_admin
-- ----------------------------
DROP TABLE IF EXISTS `vivo_admin`;
CREATE TABLE `vivo_admin`  (
  `v_aid` int(11) NOT NULL AUTO_INCREMENT,
  `v_aname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `v_apassword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`v_aid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vivo_admin
-- ----------------------------
INSERT INTO `vivo_admin` VALUES (1, 'admin', '123456');
INSERT INTO `vivo_admin` VALUES (2, 'TrouBles', '123456');

-- ----------------------------
-- Table structure for vivo_divisiongoods
-- ----------------------------
DROP TABLE IF EXISTS `vivo_divisiongoods`;
CREATE TABLE `vivo_divisiongoods`  (
  `v_did` int(11) NOT NULL AUTO_INCREMENT,
  `v_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `v_oid` int(11) NOT NULL,
  PRIMARY KEY (`v_did`) USING BTREE,
  INDEX `v_oid`(`v_oid`) USING BTREE,
  CONSTRAINT `vivo_divisiongoods_ibfk_1` FOREIGN KEY (`v_oid`) REFERENCES `vivo_outerwear` (`v_oid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vivo_divisiongoods
-- ----------------------------
INSERT INTO `vivo_divisiongoods` VALUES (1, 'images/7e1cb0f1ab34dbf7f284a29048f06af2.png', 1);
INSERT INTO `vivo_divisiongoods` VALUES (2, 'images/acca86feb4d3a6a19fce57664cae6ec4.png', 1);
INSERT INTO `vivo_divisiongoods` VALUES (3, 'images/b6c95df4e4fd799c6863eb30f3b1d81d.png', 1);
INSERT INTO `vivo_divisiongoods` VALUES (4, 'images/b714ee845e6e7442775874edee605745.png', 1);
INSERT INTO `vivo_divisiongoods` VALUES (5, 'images/61fe4625fa1f7c59f62764b10891a246.png', 1);
INSERT INTO `vivo_divisiongoods` VALUES (6, 'images/7e1cb0f1ab34dbf7f284a29048f06af2.png', 2);
INSERT INTO `vivo_divisiongoods` VALUES (7, 'images/acca86feb4d3a6a19fce57664cae6ec4.png', 2);
INSERT INTO `vivo_divisiongoods` VALUES (8, 'images/b6c95df4e4fd799c6863eb30f3b1d81d.png', 2);
INSERT INTO `vivo_divisiongoods` VALUES (9, 'images/45c2bf8b60a273170977edbfe55367b8.png', 2);
INSERT INTO `vivo_divisiongoods` VALUES (10, 'images/2b12b816e6e346b638c7be427140a651.png', 2);
INSERT INTO `vivo_divisiongoods` VALUES (11, 'images/347c4d1f7e7d5aab0ae9fd3993f2f7dc.png', 3);
INSERT INTO `vivo_divisiongoods` VALUES (12, 'images/9193dac9806dd73f0b90ed63c03050e5.png', 3);
INSERT INTO `vivo_divisiongoods` VALUES (13, 'images/706367be1162d0b0466149b0a96aced3.png', 3);
INSERT INTO `vivo_divisiongoods` VALUES (14, 'images/a58a4ec2f519099c14d0fcd73f1d8aec.png', 4);
INSERT INTO `vivo_divisiongoods` VALUES (15, 'images/1838c95336b30043fa2981faa32937a1.png', 4);
INSERT INTO `vivo_divisiongoods` VALUES (16, 'images/8cc9d05106aff4a3e8748730c96687d6.png', 4);
INSERT INTO `vivo_divisiongoods` VALUES (17, 'images/826f33355eb36456c1cf48ef952b2603.png', 5);
INSERT INTO `vivo_divisiongoods` VALUES (18, 'images/99ed1d51eb06cca2e8c37faa87007e14.png', 5);
INSERT INTO `vivo_divisiongoods` VALUES (19, 'images/8a43ea78785ce40d57549cd4e55ee472.png', 5);
INSERT INTO `vivo_divisiongoods` VALUES (20, 'images/d89018a178a5c9c511aece362ff85e8e.png', 6);
INSERT INTO `vivo_divisiongoods` VALUES (21, 'images/17c824d969c1c5cc53c003247ffa70a5.png', 6);
INSERT INTO `vivo_divisiongoods` VALUES (22, 'images/a58140a62b1189f49ea4f3a0abedb664.png', 6);

-- ----------------------------
-- Table structure for vivo_edition
-- ----------------------------
DROP TABLE IF EXISTS `vivo_edition`;
CREATE TABLE `vivo_edition`  (
  `v_eid` int(11) NOT NULL AUTO_INCREMENT,
  `v_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `v_editionNo` int(11) NOT NULL,
  PRIMARY KEY (`v_eid`) USING BTREE,
  INDEX `v_editionNo`(`v_editionNo`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vivo_edition
-- ----------------------------
INSERT INTO `vivo_edition` VALUES (1, '???????????? 8GB+256GB  ', 1);
INSERT INTO `vivo_edition` VALUES (2, '???????????? 12GB+256GB', 2);
INSERT INTO `vivo_edition` VALUES (3, '???????????? 6GB+128GB  ', 3);
INSERT INTO `vivo_edition` VALUES (4, '???????????? 8GB+128GB  ', 4);
INSERT INTO `vivo_edition` VALUES (5, '???????????? 12GB+128GB  ', 5);

-- ----------------------------
-- Table structure for vivo_enshrine
-- ----------------------------
DROP TABLE IF EXISTS `vivo_enshrine`;
CREATE TABLE `vivo_enshrine`  (
  `v_eid` int(11) NOT NULL AUTO_INCREMENT,
  `v_gid` int(255) NOT NULL COMMENT '??????',
  `v_time` datetime(0) NOT NULL,
  `v_uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????',
  PRIMARY KEY (`v_eid`) USING BTREE,
  INDEX `v_gid`(`v_gid`) USING BTREE,
  INDEX `v_uid`(`v_uid`) USING BTREE,
  CONSTRAINT `vivo_enshrine_ibfk_1` FOREIGN KEY (`v_gid`) REFERENCES `vivo_goods` (`v_gid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `vivo_enshrine_ibfk_2` FOREIGN KEY (`v_uid`) REFERENCES `vivo_user` (`v_uid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vivo_enshrine
-- ----------------------------
INSERT INTO `vivo_enshrine` VALUES (1, 1, '2019-10-16 15:27:33', '20f222bc-7404-4cb3-9a82-9a6bf745f4fd');

-- ----------------------------
-- Table structure for vivo_good_color
-- ----------------------------
DROP TABLE IF EXISTS `vivo_good_color`;
CREATE TABLE `vivo_good_color`  (
  `v_cid` int(11) NOT NULL AUTO_INCREMENT,
  `v_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `v_colorNo` int(11) NOT NULL,
  PRIMARY KEY (`v_cid`) USING BTREE,
  INDEX `v_colorNo`(`v_colorNo`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vivo_good_color
-- ----------------------------
INSERT INTO `vivo_good_color` VALUES (1, '???', 1);
INSERT INTO `vivo_good_color` VALUES (2, '???', 2);
INSERT INTO `vivo_good_color` VALUES (3, '???', 3);
INSERT INTO `vivo_good_color` VALUES (4, '???', 4);
INSERT INTO `vivo_good_color` VALUES (5, '???', 5);
INSERT INTO `vivo_good_color` VALUES (6, '???', 6);
INSERT INTO `vivo_good_color` VALUES (7, '???', 7);

-- ----------------------------
-- Table structure for vivo_good_series
-- ----------------------------
DROP TABLE IF EXISTS `vivo_good_series`;
CREATE TABLE `vivo_good_series`  (
  `v_sid` int(11) NOT NULL AUTO_INCREMENT,
  `v_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`v_sid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vivo_good_series
-- ----------------------------
INSERT INTO `vivo_good_series` VALUES (1, 'iQOO??????');
INSERT INTO `vivo_good_series` VALUES (2, 'NEX??????');
INSERT INTO `vivo_good_series` VALUES (3, 'X??????');
INSERT INTO `vivo_good_series` VALUES (4, 'S??????');
INSERT INTO `vivo_good_series` VALUES (5, 'Z??????');
INSERT INTO `vivo_good_series` VALUES (6, 'Y??????');
INSERT INTO `vivo_good_series` VALUES (7, 'U??????');

-- ----------------------------
-- Table structure for vivo_goods
-- ----------------------------
DROP TABLE IF EXISTS `vivo_goods`;
CREATE TABLE `vivo_goods`  (
  `v_gid` int(11) NOT NULL AUTO_INCREMENT,
  `v_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `v_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `v_gparticulars` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `v_host` int(11) NOT NULL DEFAULT 0 COMMENT '0????????? 1??????????????? 2???????????????   3???????????????',
  `v_price` decimal(10, 2) NOT NULL,
  `v_inventory` int(11) NOT NULL,
  `v_sid` int(11) NOT NULL COMMENT '?????? ????????????',
  `v_status` int(11) NOT NULL COMMENT '?????? ',
  PRIMARY KEY (`v_gid`) USING BTREE,
  INDEX `v_sid`(`v_sid`) USING BTREE,
  INDEX `v_status`(`v_status`) USING BTREE,
  CONSTRAINT `vivo_goods_ibfk_1` FOREIGN KEY (`v_sid`) REFERENCES `vivo_good_series` (`v_sid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `vivo_goods_ibfk_5` FOREIGN KEY (`v_status`) REFERENCES `vivo_goodsstate` (`v_gsid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vivo_goods
-- ----------------------------
INSERT INTO `vivo_goods` VALUES (1, 'images/10001399_1566442828100_750x750.png', 'iQOO Pro  ', '??????855 Plus/44W????????????', 0, 3198.00, 50, 1, 5);
INSERT INTO `vivo_goods` VALUES (2, 'images/10001280_1562051398747_750x750.png', 'iQOO Neo  ', '?????????????????????/????????????845', 0, 1898.00, 60, 1, 5);
INSERT INTO `vivo_goods` VALUES (3, 'images/10001477_1568011033880_750x750.png', 'NEX 3', '?????????/????????????855 Plus', 1, 4998.00, 60, 3, 5);
INSERT INTO `vivo_goods` VALUES (4, 'images/5532_1539680155499hd_bi_750x750.png', 'Z3 ????????? ', '????????????710AIE?????????', 1, 1898.00, 60, 5, 5);
INSERT INTO `vivo_goods` VALUES (5, 'images/5416_1537496552460hd_bi_750x750 (1).png', 'NEX????????? ', '????????????845?????????', 1, 4298.00, 60, 2, 5);
INSERT INTO `vivo_goods` VALUES (6, 'images/10000611_1557280325217_750x750.png', 'S1  ????????? ', '?????????AI??????', 1, 1598.00, 60, 4, 5);
INSERT INTO `vivo_goods` VALUES (7, 'images/10001285_1563172471042_750x750.png', 'Y7s  ', '??????????????????/???????????????', 1, 1798.00, 60, 6, 5);
INSERT INTO `vivo_goods` VALUES (8, 'images/10001559_1571643978736_750x750.png', 'iQOO Neo 855??? ', 'UFS 3.0/??????100???200', 0, 2298.00, 60, 1, 5);
INSERT INTO `vivo_goods` VALUES (9, 'images/20190923153432249205_original.jpg', 'Z5   ????????????', '??????712????????????4800????????????AI?????????4500mAh?????????', 4, 1798.00, 60, 5, 5);
INSERT INTO `vivo_goods` VALUES (10, 'images/10000534_1562657693939_750x750.png', 'X27  ', '?????????????????????19.5:9??????????????????4800??????????????????vivo??????', 1, 2698.00, 60, 3, 5);
INSERT INTO `vivo_goods` VALUES (11, 'images/4459_1534837465505hd_bi_750x750.png', '?????????????????????', '????????????|????????????', 2, 19.00, 200, 7, 5);
INSERT INTO `vivo_goods` VALUES (12, 'images/5071_1534845218553hd_bi_750x750.png', 'XE710????????????', '???????????????/???????????????', 2, 199.00, 50, 7, 5);
INSERT INTO `vivo_goods` VALUES (13, 'images/10001272_1562124483086_750x750.png', 'V.FRIENDS ?????????', 'vivo?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????PC??????????????????????????????????????????????????????', 2, 300.00, 60, 7, 5);
INSERT INTO `vivo_goods` VALUES (14, 'images/5156_1534841763291hd_bi_750x750.png', '?????????????????????', '????????????|??????????????????', 2, 199.00, 60, 7, 5);
INSERT INTO `vivo_goods` VALUES (20, '/upload/20191031d15bf66b3c8648eaaef1415b470d3288.png', 'Genuine?????????', '??????????????????', 2, 1692.00, 60, 1, 5);
INSERT INTO `vivo_goods` VALUES (22, 'upload/201910315e67a350f392400fa9d4f723a04709cc.png', 'TrouBles', 'Trouble  Love', 2, 99999.00, 60, 1, 5);
INSERT INTO `vivo_goods` VALUES (23, '/upload/201910318804c5775d0644369b5d37982585225d.png', '??????', '??????????????????', 2, 156.33, 60, 1, 5);
INSERT INTO `vivo_goods` VALUES (24, 'upload/20191031571e94cea60444b984e56a6fd6194295.png', '????????????', ' ??????????????????', 2, 652.56, 60, 1, 4);
INSERT INTO `vivo_goods` VALUES (25, 'upload/201910318086c3f7f30b4fa395df9aa0e0c05081.png', '??????', ' ??????????????????', 0, 123.00, 60, 1, 4);
INSERT INTO `vivo_goods` VALUES (26, 'upload/20191101c85618b56c8140bc93c3be4a7c5753d3.png', '????????????2222', ' ??????????????????????????????????????????????????????', 1, 65222.00, 120, 1, 4);
INSERT INTO `vivo_goods` VALUES (27, '/upload/20191101cfeae936c9d84160a1e13eb6b3efc0a3.png', '????????????', '????????????????????????', 0, 6666.00, 120, 1, 4);
INSERT INTO `vivo_goods` VALUES (28, '/upload/20191101edc4f2b3f7a44fee9688a75fc33d1569.png', '??????', ' ???????????? ', 2, 1652.00, 120, 1, 4);
INSERT INTO `vivo_goods` VALUES (29, '/upload/201911010efee3bc8cce4ed4b82911e0f20e9fa3.png', '????????????', ' ?????????', 0, 6666.00, 120, 1, 4);
INSERT INTO `vivo_goods` VALUES (30, '/upload/20191101417110f15a35471a9385cb83cf071ba6.png', 'oppo', ' ', 2, 1.00, 120, 1, 4);
INSERT INTO `vivo_goods` VALUES (31, '/upload/201911013bfe952a77de43dfa65482d4149d16b4.png', 'oppo', ' ', 2, 1111.00, 120, 1, 4);
INSERT INTO `vivo_goods` VALUES (32, '/upload/20191101279034e86e3d4ac2bdb8843db450141a.png', 'oppo', ' ', 2, 1.00, 120, 1, 4);
INSERT INTO `vivo_goods` VALUES (33, '/upload/201911012d99b1c2d3b248eb8d50c18f7a49986d.png', 'oppo', ' ', 2, 111.00, 120, 1, 4);
INSERT INTO `vivo_goods` VALUES (34, '/upload/20191101d06b2ca84aad4a52a3eab85bed549688.png', 'oppo', ' ', 2, 111.00, 120, 1, 4);
INSERT INTO `vivo_goods` VALUES (35, 'upload/201910318086c3f7f30b4fa395df9aa0e0c05081.png', 'oppo', ' asdwq', 2, 13112.00, 120, 1, 4);
INSERT INTO `vivo_goods` VALUES (37, '/upload/201911011eb531c6839e4b45bc8e93808133e5a2.png', 'iaaaa', ' ', 2, 1692.00, 120, 1, 4);
INSERT INTO `vivo_goods` VALUES (38, 'upload/201910318804c5775d0644369b5d37982585225d.png', 'zzh123', ' ??????', 0, 23.00, 120, 1, 4);
INSERT INTO `vivo_goods` VALUES (39, '/upload/20191211bc12131dc1f4499e91a50fcc6c06f1c5.jpg', '??????', ' ', 2, 123.00, 120, 1, 4);
INSERT INTO `vivo_goods` VALUES (40, '/upload/2019121181794f0ad8fb4aa0946ad66da05cb4bf.jpg', '????????????', ' ', 0, 200.00, 120, 3, 4);
INSERT INTO `vivo_goods` VALUES (41, '/upload/20191211b705cb70c3b645e9a30b2123129bef6b.jpg', '????????????', ' ', 0, 200.00, 120, 3, 4);
INSERT INTO `vivo_goods` VALUES (42, 'upload/2019121149737742839f4020b9fc35901b45efe2.jpg', '????????????', ' wqeqweqwe', 0, 200.00, 120, 3, 4);
INSERT INTO `vivo_goods` VALUES (43, '/upload/2019121149737742839f4020b9fc35901b45efe2.jpg', '13', ' ', 2, 123.00, 120, 1, 4);


-- ----------------------------
-- Table structure for vivo_goodsstate
-- ----------------------------
DROP TABLE IF EXISTS `vivo_goodsstate`;
CREATE TABLE `vivo_goodsstate`  (
  `v_gsid` int(11) NOT NULL AUTO_INCREMENT,
  `v_gsName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`v_gsid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vivo_goodsstate
-- ----------------------------
INSERT INTO `vivo_goodsstate` VALUES (1, '??????');
INSERT INTO `vivo_goodsstate` VALUES (2, '??????');
INSERT INTO `vivo_goodsstate` VALUES (3, '??????');
INSERT INTO `vivo_goodsstate` VALUES (4, '??????');
INSERT INTO `vivo_goodsstate` VALUES (5, '??????');

-- ----------------------------
-- Table structure for vivo_myorder
-- ----------------------------
DROP TABLE IF EXISTS `vivo_myorder`;
CREATE TABLE `vivo_myorder`  (
  `v_myOrderNo` bigint(50) NOT NULL COMMENT '???????????????',
  `v_time` datetime(0) NOT NULL,
  `v_status` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '1 ????????? \r\n2????????? \r\n3?????????\r\n 4?????????\r\n',
  `v_uid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `v_totlePrice` double(10, 2) NOT NULL,
  `v_takeNo` int(11) NOT NULL,
  PRIMARY KEY (`v_myOrderNo`) USING BTREE,
  INDEX `v_uid`(`v_uid`) USING BTREE,
  INDEX `v_takeNo`(`v_takeNo`) USING BTREE,
  CONSTRAINT `vivo_myorder_ibfk_1` FOREIGN KEY (`v_uid`) REFERENCES `vivo_user` (`v_uid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vivo_myorder
-- ----------------------------
INSERT INTO `vivo_myorder` VALUES (20191184029752, '2019-11-01 08:40:29', '2', 'bf460e44-c011-48cb-b49d-9ba91264a058', 4796.00, 52);
INSERT INTO `vivo_myorder` VALUES (20200592843585, '2020-05-03 09:28:43', '1', '119db872-b853-4a77-b36f-92d50bbd57c1', 7192.00, 67);
INSERT INTO `vivo_myorder` VALUES (20200593048093, '2020-05-03 09:30:48', '1', '119db872-b853-4a77-b36f-92d50bbd57c1', 99899.00, 67);
INSERT INTO `vivo_myorder` VALUES (201911104750469, '2019-11-04 10:47:50', '1', '26d0754c-fae4-40c0-a1d0-f86f073c9644', 2598.00, 64);
INSERT INTO `vivo_myorder` VALUES (201911150210979, '2019-11-24 03:02:10', '1', '1c59ccfd-19be-4c29-8128-98e5b19610dd', 30972.00, 2);
INSERT INTO `vivo_myorder` VALUES (201911154245988, '2019-11-15 03:42:45', '1', '26d0754c-fae4-40c0-a1d0-f86f073c9644', 2198.00, 64);
INSERT INTO `vivo_myorder` VALUES (201911171450400, '2019-11-03 05:14:50', '2', '26d0754c-fae4-40c0-a1d0-f86f073c9644', 3996.00, 64);
INSERT INTO `vivo_myorder` VALUES (201912101530674, '2019-12-11 10:15:30', '1', 'e26da565-a9df-47c0-8f2b-5af7e1b86b68', 30980.00, 65);
INSERT INTO `vivo_myorder` VALUES (202004181051376, '2020-04-04 06:10:51', '1', 'ce7304d0-d25c-4b05-8611-eab98625899b', 9796.00, 66);
INSERT INTO `vivo_myorder` VALUES (202005161120865, '2020-05-31 04:11:20', '1', '4d65e910-bd12-45d2-bad7-4973881215a3', 3596.00, 62);
INSERT INTO `vivo_myorder` VALUES (202006195330692, '2020-06-19 07:53:30', '1', '4d65e910-bd12-45d2-bad7-4973881215a3', 42168.00, 68);

-- ----------------------------
-- Table structure for vivo_orderdetails
-- ----------------------------
DROP TABLE IF EXISTS `vivo_orderdetails`;
CREATE TABLE `vivo_orderdetails`  (
  `v_orderNo` int(50) NOT NULL AUTO_INCREMENT,
  `v_myOrderNo` bigint(50) NOT NULL COMMENT '?????? ??????????????????',
  `v_goodId` int(11) NOT NULL COMMENT '??????',
  `v_count` int(255) NOT NULL,
  `v_price` decimal(10, 2) NOT NULL,
  `v_editionNo` int(11) NOT NULL,
  `v_colorNo` int(11) NOT NULL,
  PRIMARY KEY (`v_orderNo`) USING BTREE,
  INDEX `v_myOrderNo`(`v_myOrderNo`) USING BTREE,
  INDEX `v_goodId`(`v_goodId`) USING BTREE,
  CONSTRAINT `vivo_orderdetails_ibfk_2` FOREIGN KEY (`v_goodId`) REFERENCES `vivo_goods` (`v_gid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 105 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vivo_orderdetails
-- ----------------------------
INSERT INTO `vivo_orderdetails` VALUES (79, 20191184029752, 8, 1, 2298.00, 1, 1);
INSERT INTO `vivo_orderdetails` VALUES (80, 20191184029752, 10, 1, 2698.00, 1, 7);
INSERT INTO `vivo_orderdetails` VALUES (81, 201911104320241, 8, 1, 2298.00, 1, 1);
INSERT INTO `vivo_orderdetails` VALUES (82, 201911104320241, 2, 1, 1898.00, 1, 1);
INSERT INTO `vivo_orderdetails` VALUES (83, 201911104441307, 10, 1, 2698.00, 1, 7);
INSERT INTO `vivo_orderdetails` VALUES (84, 201911104441307, 26, 1, 65222.00, 1, 2);
INSERT INTO `vivo_orderdetails` VALUES (85, 201911171450400, 8, 1, 2298.00, 1, 1);
INSERT INTO `vivo_orderdetails` VALUES (86, 201911171450400, 2, 1, 1898.00, 1, 1);
INSERT INTO `vivo_orderdetails` VALUES (87, 201911104750469, 10, 1, 2698.00, 1, 7);
INSERT INTO `vivo_orderdetails` VALUES (88, 201911154245988, 8, 1, 2298.00, 1, 1);
INSERT INTO `vivo_orderdetails` VALUES (89, 201912101530674, 1, 5, 3198.00, 3, 1);
INSERT INTO `vivo_orderdetails` VALUES (90, 201912101530674, 1, 5, 3198.00, 3, 1);
INSERT INTO `vivo_orderdetails` VALUES (91, 201912194501109, 2, 2, 1898.00, 1, 1);
INSERT INTO `vivo_orderdetails` VALUES (92, 201912235008939, 44, 1, 321.00, 1, 3);
INSERT INTO `vivo_orderdetails` VALUES (93, 202004181051376, 3, 2, 4998.00, 3, 5);
INSERT INTO `vivo_orderdetails` VALUES (94, 20200592843585, 4, 4, 1898.00, 5, 1);
INSERT INTO `vivo_orderdetails` VALUES (95, 20200593048093, 22, 1, 99999.00, 3, 5);
INSERT INTO `vivo_orderdetails` VALUES (96, 202005161005655, 2, 2, 1898.00, 1, 7);
INSERT INTO `vivo_orderdetails` VALUES (97, 202005161009635, 2, 2, 1898.00, 1, 7);
INSERT INTO `vivo_orderdetails` VALUES (98, 202005161012872, 2, 2, 1898.00, 1, 7);
INSERT INTO `vivo_orderdetails` VALUES (99, 202005161019988, 2, 2, 1898.00, 1, 7);
INSERT INTO `vivo_orderdetails` VALUES (100, 202005161120865, 4, 2, 1898.00, 1, 3);
INSERT INTO `vivo_orderdetails` VALUES (101, 202006195330692, 2, 5, 1898.00, 3, 3);
INSERT INTO `vivo_orderdetails` VALUES (102, 202006195330692, 1, 5, 3198.00, 1, 7);
INSERT INTO `vivo_orderdetails` VALUES (103, 202006195330692, 1, 5, 3198.00, 1, 7);
INSERT INTO `vivo_orderdetails` VALUES (104, 202006195330692, 8, 1, 2298.00, 1, 2);

-- ----------------------------
-- Table structure for vivo_outerwear
-- ----------------------------
DROP TABLE IF EXISTS `vivo_outerwear`;
CREATE TABLE `vivo_outerwear`  (
  `v_oid` int(11) NOT NULL AUTO_INCREMENT,
  `v_oName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`v_oid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vivo_outerwear
-- ----------------------------
INSERT INTO `vivo_outerwear` VALUES (1, 'iQOO Pro');
INSERT INTO `vivo_outerwear` VALUES (2, 'iQOO');
INSERT INTO `vivo_outerwear` VALUES (3, 'iQOO Neo');
INSERT INTO `vivo_outerwear` VALUES (4, 'NEX?????????');
INSERT INTO `vivo_outerwear` VALUES (5, 'NEX?????????');
INSERT INTO `vivo_outerwear` VALUES (6, 'NEX&NEX???????????????');

-- ----------------------------
-- Table structure for vivo_shoppingcart
-- ----------------------------
DROP TABLE IF EXISTS `vivo_shoppingcart`;
CREATE TABLE `vivo_shoppingcart`  (
  `v_cid` int(255) NOT NULL AUTO_INCREMENT,
  `v_uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '????????????',
  `v_price` decimal(10, 2) DEFAULT NULL,
  `v_cprice` decimal(10, 2) DEFAULT NULL COMMENT '???????????????????????????  ??????*??????',
  `v_setMeal` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '????????????' COMMENT '?????? ????????????\r\n',
  `v_quanity` int(11) DEFAULT NULL,
  `v_gid` int(11) DEFAULT NULL,
  `v_sid` int(11) DEFAULT NULL,
  `v_editionNo` int(11) DEFAULT NULL,
  `v_colorNo` int(11) DEFAULT NULL,
  PRIMARY KEY (`v_cid`) USING BTREE,
  INDEX `v_uid`(`v_uid`) USING BTREE,
  INDEX `v_gid`(`v_gid`) USING BTREE,
  INDEX `v_editionNo`(`v_editionNo`) USING BTREE,
  INDEX `v_colorNo`(`v_colorNo`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 178 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vivo_shoppingcart
-- ----------------------------
INSERT INTO `vivo_shoppingcart` VALUES (169, 'fb555b3c-02b6-4da4-a657-b0a5426d4305', NULL, 0.00, '????????????', 1, 8, NULL, 3, 1);
INSERT INTO `vivo_shoppingcart` VALUES (172, '15ad61e0-a21f-44d7-bacf-1cbaa894fb52', NULL, 0.00, '????????????', 1, 1, NULL, 0, 0);
INSERT INTO `vivo_shoppingcart` VALUES (173, '15ad61e0-a21f-44d7-bacf-1cbaa894fb52', NULL, 0.00, '????????????', 1, 1, NULL, 0, 0);
INSERT INTO `vivo_shoppingcart` VALUES (174, '15ad61e0-a21f-44d7-bacf-1cbaa894fb52', NULL, 0.00, '????????????', 1, 1, NULL, 0, 0);
INSERT INTO `vivo_shoppingcart` VALUES (175, '15ad61e0-a21f-44d7-bacf-1cbaa894fb52', NULL, 15990.00, '????????????', 5, 1, NULL, 0, 0);
INSERT INTO `vivo_shoppingcart` VALUES (176, '15ad61e0-a21f-44d7-bacf-1cbaa894fb52', NULL, 0.00, '????????????', 1, 1, NULL, 1, 3);
INSERT INTO `vivo_shoppingcart` VALUES (177, '15ad61e0-a21f-44d7-bacf-1cbaa894fb52', NULL, 0.00, '????????????', 1, 1, NULL, 1, 3);

-- ----------------------------
-- Table structure for vivo_shoppingcart_copy
-- ----------------------------
DROP TABLE IF EXISTS `vivo_shoppingcart_copy`;
CREATE TABLE `vivo_shoppingcart_copy`  (
  `v_cid` int(255) NOT NULL AUTO_INCREMENT,
  `v_uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '????????????',
  `v_cprice` decimal(10, 2) NOT NULL COMMENT '???????????????????????????  ??????*??????',
  `v_setMeal` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '????????????' COMMENT '?????? ????????????\r\n',
  `v_quanity` int(11) NOT NULL,
  `v_gid` int(11) NOT NULL,
  PRIMARY KEY (`v_cid`) USING BTREE,
  INDEX `v_uid`(`v_uid`) USING BTREE,
  INDEX `v_gid`(`v_gid`) USING BTREE,
  CONSTRAINT `vivo_shoppingcart_copy_ibfk_1` FOREIGN KEY (`v_uid`) REFERENCES `vivo_user` (`v_uid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `vivo_shoppingcart_copy_ibfk_2` FOREIGN KEY (`v_gid`) REFERENCES `vivo_goods` (`v_gid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vivo_shoppingcart_copy
-- ----------------------------
INSERT INTO `vivo_shoppingcart_copy` VALUES (1, '3873b0bf-199b-48dc-a39f-775f4563d059', 3000.00, '????????????', 2, 1);
INSERT INTO `vivo_shoppingcart_copy` VALUES (2, '5d952301-8e1d-4ecd-9c10-4d78f284eac1', 9563.00, '????????????', 1, 2);

-- ----------------------------
-- Table structure for vivo_shoppingcartrelationship
-- ----------------------------
DROP TABLE IF EXISTS `vivo_shoppingcartrelationship`;
CREATE TABLE `vivo_shoppingcartrelationship`  (
  `v_cid` int(11) DEFAULT NULL,
  `v_gid` int(11) DEFAULT NULL,
  `v_quanity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for vivo_take
-- ----------------------------
DROP TABLE IF EXISTS `vivo_take`;
CREATE TABLE `vivo_take`  (
  `v_tid` int(11) NOT NULL AUTO_INCREMENT,
  `v_consignee` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `v_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `v_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `v_receivingArea` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `v_uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '??????',
  PRIMARY KEY (`v_tid`) USING BTREE,
  INDEX `v_uid`(`v_uid`) USING BTREE,
  CONSTRAINT `vivo_take_ibfk_1` FOREIGN KEY (`v_uid`) REFERENCES `vivo_user` (`v_uid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vivo_take
-- ----------------------------


-- ----------------------------
-- Table structure for vivo_user
-- ----------------------------
DROP TABLE IF EXISTS `vivo_user`;
CREATE TABLE `vivo_user`  (
  `v_uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `v_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `v_phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `v_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `v_Email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `v_headPortrait` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'images/111347us9sszkewzz5xso2.png',
  `v_sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `v_birthday` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `v_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`v_uid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vivo_user
-- ----------------------------


SET FOREIGN_KEY_CHECKS = 1;
