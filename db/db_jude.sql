/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : localhost:3306
 Source Schema         : db_jude

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 31/10/2021 20:34:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence`  (
    `next_val` bigint(20) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
INSERT INTO `hibernate_sequence` VALUES (2834);
INSERT INTO `hibernate_sequence` VALUES (2834);
INSERT INTO `hibernate_sequence` VALUES (2834);
INSERT INTO `hibernate_sequence` VALUES (2834);
INSERT INTO `hibernate_sequence` VALUES (2834);
INSERT INTO `hibernate_sequence` VALUES (2834);
INSERT INTO `hibernate_sequence` VALUES (2834);
INSERT INTO `hibernate_sequence` VALUES (2834);
INSERT INTO `hibernate_sequence` VALUES (2834);
INSERT INTO `hibernate_sequence` VALUES (2834);
INSERT INTO `hibernate_sequence` VALUES (2834);
INSERT INTO `hibernate_sequence` VALUES (2834);
INSERT INTO `hibernate_sequence` VALUES (2834);
INSERT INTO `hibernate_sequence` VALUES (2834);
INSERT INTO `hibernate_sequence` VALUES (2834);
INSERT INTO `hibernate_sequence` VALUES (2834);
INSERT INTO `hibernate_sequence` VALUES (2834);
INSERT INTO `hibernate_sequence` VALUES (2834);
INSERT INTO `hibernate_sequence` VALUES (2834);
INSERT INTO `hibernate_sequence` VALUES (2834);
INSERT INTO `hibernate_sequence` VALUES (2834);
INSERT INTO `hibernate_sequence` VALUES (2834);
INSERT INTO `hibernate_sequence` VALUES (2834);

-- ----------------------------
-- Table structure for t_customer
-- ----------------------------
DROP TABLE IF EXISTS `t_customer`;
CREATE TABLE `t_customer`  (
                               `id` int(11) NOT NULL AUTO_INCREMENT,
                               `address` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                               `contact` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                               `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                               `number` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                               `remarks` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                               `create_time` datetime(0) NULL DEFAULT NULL,
                               PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_customer
-- ----------------------------
INSERT INTO `t_customer` VALUES (1, '福州新弯曲5号', '小李子', '福州艾玛超市', '2132-23213421', '', NULL);
INSERT INTO `t_customer` VALUES (2, '天津兴达大街888号', '小张', '天津王大连锁酒店', '23432222311', '优质客户', NULL);
INSERT INTO `t_customer` VALUES (3, '大凉山妥洛村', '小爱', '大凉山希望小学', '233243211', '照顾客户2', NULL);
INSERT INTO `t_customer` VALUES (4, '南通通州新金路888号', '王二小', '南通通州综艺集团', '1832132321', '', NULL);

-- ----------------------------
-- Table structure for t_customer_return_list
-- ----------------------------
DROP TABLE IF EXISTS `t_customer_return_list`;
CREATE TABLE `t_customer_return_list`  (
                                           `id` int(11) NOT NULL AUTO_INCREMENT,
                                           `amount_paid` float NOT NULL,
                                           `amount_payable` float NOT NULL,
                                           `customer_return_date` datetime(0) NULL DEFAULT NULL,
                                           `customer_return_number` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                           `remarks` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                           `state` int(11) NULL DEFAULT NULL,
                                           `user_id` int(11) NULL DEFAULT NULL,
                                           `customer_id` int(11) NULL DEFAULT NULL,
                                           PRIMARY KEY (`id`) USING BTREE,
                                           INDEX `FKd55ju83f0ntixagdvdrsmw10c`(`user_id`) USING BTREE,
                                           INDEX `FKl0ahdwa8slkocbfe57opembfx`(`customer_id`) USING BTREE,
                                           CONSTRAINT `FKd55ju83f0ntixagdvdrsmw10c` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
                                           CONSTRAINT `FKl0ahdwa8slkocbfe57opembfx` FOREIGN KEY (`customer_id`) REFERENCES `t_customer` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2493 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_customer_return_list
-- ----------------------------
INSERT INTO `t_customer_return_list` VALUES (2, 2200, 2200, '2017-10-27 00:00:00', 'XT201710270001', 'cc', 1, 1, 3);
INSERT INTO `t_customer_return_list` VALUES (3, 4514, 4514, '2017-10-28 00:00:00', 'XT201710280001', 'cc', 1, 1, 3);
INSERT INTO `t_customer_return_list` VALUES (4, 4400, 4400, '2017-10-30 00:00:00', 'XT201710300001', 'cc', 1, 1, 3);
INSERT INTO `t_customer_return_list` VALUES (5, 139, 139, '2017-10-30 00:00:00', 'XT201710300002', 'cc', 1, 1, 2);
INSERT INTO `t_customer_return_list` VALUES (6, 38, 38, '2017-11-03 00:00:00', 'XT201711030001', 'cc', 1, 1, 2);
INSERT INTO `t_customer_return_list` VALUES (667, 17, 17, '2021-09-01 00:00:00', 'XT202109010001', '', 1, 1, 2);
INSERT INTO `t_customer_return_list` VALUES (1474, 8.5, 8.5, '2021-09-17 00:00:00', 'XT202109170001', '', 1, 1, 1);
INSERT INTO `t_customer_return_list` VALUES (1533, 7300, 7300, '2021-10-08 00:00:00', 'XT202110080001', '', 1, 1, 3);
INSERT INTO `t_customer_return_list` VALUES (2492, 30, 30, '2021-10-18 00:00:00', 'XT202110180001', '', 1, 1, 2);

-- ----------------------------
-- Table structure for t_customer_return_list_goods
-- ----------------------------
DROP TABLE IF EXISTS `t_customer_return_list_goods`;
CREATE TABLE `t_customer_return_list_goods`  (
                                                 `id` int(11) NOT NULL AUTO_INCREMENT,
                                                 `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                                 `model` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                                 `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                                 `num` int(11) NOT NULL,
                                                 `price` float NOT NULL,
                                                 `total` float NOT NULL,
                                                 `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                                 `customer_return_list_id` int(11) NULL DEFAULT NULL,
                                                 `type_id` int(11) NULL DEFAULT NULL,
                                                 `goods_id` int(11) NULL DEFAULT NULL,
                                                 PRIMARY KEY (`id`) USING BTREE,
                                                 INDEX `FKtqt67mbn96lxn8hvtl4piblhi`(`customer_return_list_id`) USING BTREE,
                                                 INDEX `FK4sm5si4swbj3gae46jfk441yx`(`type_id`) USING BTREE,
                                                 CONSTRAINT `FK4sm5si4swbj3gae46jfk441yx` FOREIGN KEY (`type_id`) REFERENCES `t_goodstype` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
                                                 CONSTRAINT `FKtqt67mbn96lxn8hvtl4piblhi` FOREIGN KEY (`customer_return_list_id`) REFERENCES `t_customer_return_list` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2492 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_customer_return_list_goods
-- ----------------------------
INSERT INTO `t_customer_return_list_goods` VALUES (3, '0002', 'Note8', '华为荣耀Note8', 1, 2200, 2200, '台', 2, 16, 2);
INSERT INTO `t_customer_return_list_goods` VALUES (4, '0002', 'Note8', '华为荣耀Note8', 2, 2200, 4400, '台', 3, 16, 2);
INSERT INTO `t_customer_return_list_goods` VALUES (5, '0003', '500g装', '野生东北黑木耳', 3, 38, 114, '袋', 3, 11, 11);
INSERT INTO `t_customer_return_list_goods` VALUES (6, '0002', 'Note8', '华为荣耀Note8', 2, 2200, 4400, '台', 4, 16, 2);
INSERT INTO `t_customer_return_list_goods` VALUES (7, '0007', '500g装', '吉利人家牛肉味蛋糕', 2, 10, 20, '袋', 5, 11, 15);
INSERT INTO `t_customer_return_list_goods` VALUES (8, '0009', '240g装', '休闲零食坚果特产精品干果无漂白大个开心果', 3, 33, 99, '袋', 5, 11, 17);
INSERT INTO `t_customer_return_list_goods` VALUES (9, '0010', '250g装', '劲仔小鱼干', 1, 20, 20, '袋', 5, 11, 18);
INSERT INTO `t_customer_return_list_goods` VALUES (10, '0003', '500g装', '野生东北黑木耳', 1, 38, 38, '袋', 6, 11, 11);
INSERT INTO `t_customer_return_list_goods` VALUES (666, '0001', '红色装', '陶华碧老干妈香辣脆油辣椒', 2, 8.5, 17, '瓶', 667, 10, 1);
INSERT INTO `t_customer_return_list_goods` VALUES (1473, '0001', '红色装', '陶华碧老干妈香辣脆油辣椒', 1, 8.5, 8.5, '瓶', 1474, 10, 1);
INSERT INTO `t_customer_return_list_goods` VALUES (1532, '0017', 'ILCE-A6000L', 'Sony/索尼 ILCE-A6000L WIFI微单数码相机高清单电', 2, 3650, 7300, '台', 1533, 15, 26);
INSERT INTO `t_customer_return_list_goods` VALUES (2491, '0005', '散装500克', '麦片燕麦巧克力', 2, 15, 30, '袋', 2492, 11, 13);

-- ----------------------------
-- Table structure for t_damage_list
-- ----------------------------
DROP TABLE IF EXISTS `t_damage_list`;
CREATE TABLE `t_damage_list`  (
                                  `id` int(11) NOT NULL AUTO_INCREMENT,
                                  `damage_date` datetime(0) NULL DEFAULT NULL,
                                  `damage_number` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                  `remarks` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                  `user_id` int(11) NULL DEFAULT NULL,
                                  PRIMARY KEY (`id`) USING BTREE,
                                  INDEX `FKpn094ma69sch1icjc2gu7xus`(`user_id`) USING BTREE,
                                  CONSTRAINT `FKpn094ma69sch1icjc2gu7xus` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2758 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_damage_list
-- ----------------------------
INSERT INTO `t_damage_list` VALUES (137, '2021-08-30 00:00:00', 'BS202108300001', '', 1);
INSERT INTO `t_damage_list` VALUES (152, '2021-08-30 00:00:00', 'BS202108300002', '', 1);
INSERT INTO `t_damage_list` VALUES (166, '2021-08-30 00:00:00', 'BS202108300003', '', 1);
INSERT INTO `t_damage_list` VALUES (675, '2021-09-01 00:00:00', 'BS202109010001', '', 1);
INSERT INTO `t_damage_list` VALUES (1541, '2021-10-08 00:00:00', 'BS202110080001', '', 1);
INSERT INTO `t_damage_list` VALUES (2757, '2021-10-19 00:00:00', 'BS202110190001', '', 1);

-- ----------------------------
-- Table structure for t_damage_list_goods
-- ----------------------------
DROP TABLE IF EXISTS `t_damage_list_goods`;
CREATE TABLE `t_damage_list_goods`  (
                                        `id` int(11) NOT NULL AUTO_INCREMENT,
                                        `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                        `model` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                        `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                        `num` int(11) NOT NULL,
                                        `price` float NOT NULL,
                                        `total` float NOT NULL,
                                        `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                        `damage_list_id` int(11) NULL DEFAULT NULL,
                                        `type_id` int(11) NULL DEFAULT NULL,
                                        `goods_id` int(11) NULL DEFAULT NULL,
                                        PRIMARY KEY (`id`) USING BTREE,
                                        INDEX `FKbf5m8mm3gctrnuubr9xkjamj8`(`damage_list_id`) USING BTREE,
                                        INDEX `FKdbdfmp09hlf2raktincwroe9n`(`type_id`) USING BTREE,
                                        CONSTRAINT `FKbf5m8mm3gctrnuubr9xkjamj8` FOREIGN KEY (`damage_list_id`) REFERENCES `t_damage_list` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
                                        CONSTRAINT `FKdbdfmp09hlf2raktincwroe9n` FOREIGN KEY (`type_id`) REFERENCES `t_goodstype` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2757 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_damage_list_goods
-- ----------------------------
INSERT INTO `t_damage_list_goods` VALUES (4, '0003', '500g装', '野生东北黑木耳', 2, 23, 46, '袋', 3, 11, 11);
INSERT INTO `t_damage_list_goods` VALUES (5, '0006', '300g装', '冰糖金桔干', 2, 5, 10, '盒', 3, 11, 14);
INSERT INTO `t_damage_list_goods` VALUES (6, '0003', '500g装', '野生东北黑木耳', 2, 23, 46, '袋', 4, 11, 11);
INSERT INTO `t_damage_list_goods` VALUES (7, '0005', '散装500克', '麦片燕麦巧克力', 32, 8, 256, '袋', 4, 11, 13);
INSERT INTO `t_damage_list_goods` VALUES (8, '0007', '500g装', '吉利人家牛肉味蛋糕', 2, 4.5, 9, '袋', 4, 11, 15);
INSERT INTO `t_damage_list_goods` VALUES (9, '0002', 'Note8', '华为荣耀Note8', 1, 2220, 2220, '台', 5, 16, 2);
INSERT INTO `t_damage_list_goods` VALUES (10, '0003', '500g装', '野生东北黑木耳', 1, 23, 23, '袋', 6, 11, 11);
INSERT INTO `t_damage_list_goods` VALUES (136, '0001', '红色装', '陶华碧老干妈香辣脆油辣椒', 1, 8.5, 8.5, '瓶', 137, 10, 1);
INSERT INTO `t_damage_list_goods` VALUES (151, '0001', '红色装', '陶华碧老干妈香辣脆油辣椒', 2, 8.5, 17, '瓶', 152, 10, 1);
INSERT INTO `t_damage_list_goods` VALUES (165, '0001', '红色装', '陶华碧老干妈香辣脆油辣椒', 2, 8.5, 17, '瓶', 166, 10, 1);
INSERT INTO `t_damage_list_goods` VALUES (674, '0003', '500g装', '野生东北黑木耳', 1, 23, 23, '袋', 675, 11, 11);
INSERT INTO `t_damage_list_goods` VALUES (1540, '0007', '500g装', '吉利人家牛肉味蛋糕', 2, 4.5, 9, '袋', 1541, 11, 15);
INSERT INTO `t_damage_list_goods` VALUES (2756, '0001', '红色装', '陶华碧老干妈香辣脆油辣椒', 2, 8.5, 17, '瓶', 2757, 10, 1);

-- ----------------------------
-- Table structure for t_goods
-- ----------------------------
DROP TABLE IF EXISTS `t_goods`;
CREATE TABLE `t_goods`  (
                            `id` int(11) NOT NULL AUTO_INCREMENT,
                            `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                            `inventory_quantity` int(11) NOT NULL,
                            `min_num` int(11) NOT NULL,
                            `model` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                            `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                            `producer` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                            `purchasing_price` float NOT NULL,
                            `remarks` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                            `selling_price` float NOT NULL,
                            `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                            `type_id` int(11) NULL DEFAULT NULL,
                            `state` int(11) NOT NULL,
                            `last_purchasing_price` float NOT NULL,
                            PRIMARY KEY (`id`) USING BTREE,
                            INDEX `FKlxnna5ngumghp4f279mmbjtyo`(`type_id`) USING BTREE,
                            CONSTRAINT `FKlxnna5ngumghp4f279mmbjtyo` FOREIGN KEY (`type_id`) REFERENCES `t_goodstype` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_goods
-- ----------------------------
INSERT INTO `t_goods` VALUES (1, '0001', 22, 1000, '红色装', '陶华碧老干妈香辣脆油辣椒', '贵州省贵阳南明老干妈风味食品有限公司', 19.87, '好卖', 8.5, '瓶', 10, 2, 8.5);
INSERT INTO `t_goods` VALUES (2, '0002', 1, 400, 'Note8', '华为荣耀Note8', '华为计算机系统有限公司', 1951.94, '热销', 2200, '台', 16, 2, 2220);
INSERT INTO `t_goods` VALUES (11, '0003', 2, 400, '500g装', '野生东北黑木耳', '辉南县博康土特产有限公司', 23, '够黑2', 38, '袋', 11, 2, 23);
INSERT INTO `t_goods` VALUES (13, '0005', 24, 1000, '散装500克', '麦片燕麦巧克力', '福建省麦德好食品工业有限公司', 8, 'Goods', 15, '袋', 11, 2, 8);
INSERT INTO `t_goods` VALUES (14, '0006', 36, 1999, '300g装', '冰糖金桔干', '揭西县同心食品有限公司', 5.09, '', 13, '盒', 11, 2, 5);
INSERT INTO `t_goods` VALUES (15, '0007', 100651, 400, '500g装', '吉利人家牛肉味蛋糕', '合肥吉利人家食品有限公司', 4.5, 'good', 10, '袋', 11, 2, 4.5);
INSERT INTO `t_goods` VALUES (16, '0008', 860, 500, '128g装', '奕森奶油桃肉蜜饯果脯果干桃肉干休闲零食品', '潮州市潮安区正大食品有限公司', 3, '', 10, '盒', 11, 2, 3);
INSERT INTO `t_goods` VALUES (17, '0009', 366, 1000, '240g装', '休闲零食坚果特产精品干果无漂白大个开心果', '石家庄博群食品有限公司', 20, '', 33, '袋', 11, 2, 20);
INSERT INTO `t_goods` VALUES (18, '0010', -317, 300, '250g装', '劲仔小鱼干', '湖南省华文食品有限公司', 12, '', 20, '袋', 11, 2, 12);
INSERT INTO `t_goods` VALUES (19, '0011', 11, 300, '198g装', '山楂条', '临朐县七贤升利食品厂', 3.2, '', 10, '袋', 11, 0, 3.2);
INSERT INTO `t_goods` VALUES (20, '0012', 22, 200, '500g装', '大乌梅干', '长春市鼎丰真食品有限责任公司', 20, '', 25, '袋', 11, 0, 20);
INSERT INTO `t_goods` VALUES (21, '0013', 400, 100, '250g装', '手工制作芝麻香酥麻通', '桂林兰雨食品有限公司', 3, '', 8, '袋', 11, 2, 3);
INSERT INTO `t_goods` VALUES (22, '0014', 12, 200, '250g装', '美国青豆原味 蒜香', '菲律宾', 5, '', 8, '袋', 11, 2, 5);
INSERT INTO `t_goods` VALUES (24, '0015', 1, 100, 'X', ' iPhone X', 'xx2', 8000, 'xxx2', 9500, '台', 16, 2, 8000);
INSERT INTO `t_goods` VALUES (25, '0016', 23, 12, 'X', '21', '32', 100, '21', 120, '盒', 3, 2, 100);
INSERT INTO `t_goods` VALUES (26, '0017', 1, 100, 'ILCE-A6000L', 'Sony/索尼 ILCE-A6000L WIFI微单数码相机高清单电', 'xxx', 3000, 'xxx', 3650, '台', 15, 2, 3000);
INSERT INTO `t_goods` VALUES (27, '0018', -1, 400, 'IXUS 285 HS', 'Canon/佳能 IXUS 285 HS 数码相机 2020万像素高清拍摄', 'xx', 800, 'xxx', 1299, '台', 15, 2, 800);
INSERT INTO `t_goods` VALUES (28, '0019', 1, 300, 'Q8', 'Golden Field/金河田 Q8电脑音响台式多媒体家用音箱低音炮重低音', 'xxxx', 1, '', 129, '台', 17, 0, 60);
INSERT INTO `t_goods` VALUES (29, '0020', 22, 50, '190WDPT', 'Haier/海尔冰箱BCD-190WDPT双门电冰箱大两门冷藏冷冻', 'cc', 20, '', 1699, '台', 14, 0, 1000);
INSERT INTO `t_goods` VALUES (30, '0021', 22, 320, '4A ', 'Xiaomi/小米 小米电视4A 32英寸 智能液晶平板电视机', 'cc', 20, '', 1199, '台', 12, 0, 700);
INSERT INTO `t_goods` VALUES (31, '0022', 0, 40, 'XQB55-36SP', 'TCL XQB55-36SP 5.5公斤全自动波轮迷你小型洗衣机家用单脱抗菌', 'cc', 400, '', 729, '台', 13, 0, 400);
INSERT INTO `t_goods` VALUES (32, '0023', 0, 1000, '80g*2', '台湾进口膨化零食品张君雅小妹妹日式串烧丸子80g*2', 'cc', 7, '', 15, '袋', 9, 0, 0);
INSERT INTO `t_goods` VALUES (33, '0024', 0, 10, 'A字裙', '卓图女装立领针织格子印花拼接高腰A字裙2017秋冬新款碎花连衣裙', 'cc', 168, '', 298, '件', 6, 0, 168);
INSERT INTO `t_goods` VALUES (34, '0025', 0, 10, '三件套秋', '西服套装男三件套秋季新款商务修身职业正装男士西装新郎结婚礼服', 'cc', 189, '', 299, '件', 7, 0, 189);
INSERT INTO `t_goods` VALUES (35, '0026', 12, 10, 'AFS JEEP', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', 'c', 56.92, '', 89, '条', 8, 2, 60);

-- ----------------------------
-- Table structure for t_goodstype
-- ----------------------------
DROP TABLE IF EXISTS `t_goodstype`;
CREATE TABLE `t_goodstype`  (
                                `id` int(11) NOT NULL AUTO_INCREMENT,
                                `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                `p_id` int(11) NULL DEFAULT NULL,
                                `state` int(11) NULL DEFAULT NULL,
                                `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2728 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_goodstype
-- ----------------------------
INSERT INTO `t_goodstype` VALUES (1, '所有类别', -1, 1, 'icon-folderOpen');
INSERT INTO `t_goodstype` VALUES (2, '服饰', 1, 1, 'icon-folder');
INSERT INTO `t_goodstype` VALUES (3, '食品', 1, 1, 'icon-folder');
INSERT INTO `t_goodstype` VALUES (4, '家电', 1, 1, 'icon-folder');
INSERT INTO `t_goodstype` VALUES (5, '数码', 1, 1, 'icon-folder');
INSERT INTO `t_goodstype` VALUES (6, '连衣裙', 2, 0, 'icon-folder');
INSERT INTO `t_goodstype` VALUES (7, '男士西装', 2, 0, 'icon-folder');
INSERT INTO `t_goodstype` VALUES (8, '牛仔裤', 2, 0, 'icon-folder');
INSERT INTO `t_goodstype` VALUES (9, '进口食品', 3, 0, 'icon-folder');
INSERT INTO `t_goodstype` VALUES (10, '地方特产', 3, 0, 'icon-folder');
INSERT INTO `t_goodstype` VALUES (11, '休闲食品', 3, 0, 'icon-folder');
INSERT INTO `t_goodstype` VALUES (12, '电视机', 4, 0, 'icon-folder');
INSERT INTO `t_goodstype` VALUES (13, '洗衣机', 4, 0, 'icon-folder');
INSERT INTO `t_goodstype` VALUES (14, '冰箱', 4, 0, 'icon-folder');
INSERT INTO `t_goodstype` VALUES (15, '相机', 5, 0, 'icon-folder');
INSERT INTO `t_goodstype` VALUES (16, '手机', 5, 0, 'icon-folder');
INSERT INTO `t_goodstype` VALUES (17, '音箱', 5, 0, 'icon-folder');
INSERT INTO `t_goodstype` VALUES (2727, '2', 1, 0, 'icon-folder');

-- ----------------------------
-- Table structure for t_goodsunit
-- ----------------------------
DROP TABLE IF EXISTS `t_goodsunit`;
CREATE TABLE `t_goodsunit`  (
                                `id` int(11) NOT NULL AUTO_INCREMENT,
                                `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_goodsunit
-- ----------------------------
INSERT INTO `t_goodsunit` VALUES (1, '个');
INSERT INTO `t_goodsunit` VALUES (2, '袋');
INSERT INTO `t_goodsunit` VALUES (3, '盒');
INSERT INTO `t_goodsunit` VALUES (4, '箱');
INSERT INTO `t_goodsunit` VALUES (5, '台');
INSERT INTO `t_goodsunit` VALUES (6, '包');
INSERT INTO `t_goodsunit` VALUES (11, '件');
INSERT INTO `t_goodsunit` VALUES (12, '条');

-- ----------------------------
-- Table structure for t_log
-- ----------------------------
DROP TABLE IF EXISTS `t_log`;
CREATE TABLE `t_log`  (
                          `id` int(11) NOT NULL AUTO_INCREMENT,
                          `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                          `time` datetime(0) NULL DEFAULT NULL,
                          `type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                          `user_id` int(11) NULL DEFAULT NULL,
                          PRIMARY KEY (`id`) USING BTREE,
                          INDEX `FKbvn5yabu3vqwvtjoh32i9r4ip`(`user_id`) USING BTREE,
                          CONSTRAINT `FKbvn5yabu3vqwvtjoh32i9r4ip` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2834 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_log
-- ----------------------------
INSERT INTO `t_log` VALUES (222, '查询商品库存信息', '2021-08-30 10:47:53', '查询操作', 1);
INSERT INTO `t_log` VALUES (223, '查询角色信息', '2021-08-30 10:48:00', '查询操作', 1);
INSERT INTO `t_log` VALUES (224, '查询角色信息', '2021-08-30 10:48:00', '查询操作', 1);
INSERT INTO `t_log` VALUES (225, '查询商品信息（无库存）', '2021-08-30 10:48:01', '查询操作', 1);
INSERT INTO `t_log` VALUES (226, '查询商品信息（有库存）', '2021-08-30 10:48:01', '查询操作', 1);
INSERT INTO `t_log` VALUES (227, '查询商品信息（无库存）', '2021-08-30 10:48:01', '查询操作', 1);
INSERT INTO `t_log` VALUES (228, '查询商品信息（有库存）', '2021-08-30 10:48:01', '查询操作', 1);
INSERT INTO `t_log` VALUES (229, '查询商品信息', '2021-08-30 10:48:02', '查询操作', 1);
INSERT INTO `t_log` VALUES (230, '查询商品单位信息', '2021-08-30 10:48:02', '查询操作', 1);
INSERT INTO `t_log` VALUES (231, '查询商品类别信息', '2021-08-30 10:48:02', '查询操作', 1);
INSERT INTO `t_log` VALUES (232, '查询商品信息', '2021-08-30 10:48:03', '查询操作', 1);
INSERT INTO `t_log` VALUES (233, '查询商品单位信息', '2021-08-30 10:48:03', '查询操作', 1);
INSERT INTO `t_log` VALUES (234, '查询客户信息', '2021-08-30 10:48:05', '查询操作', 1);
INSERT INTO `t_log` VALUES (235, '查询供应商信息', '2021-08-30 10:48:06', '查询操作', 1);
INSERT INTO `t_log` VALUES (236, '查询供应商信息', '2021-08-30 10:48:06', '查询操作', 1);
INSERT INTO `t_log` VALUES (237, '查询商品库存信息', '2021-08-30 10:48:07', '查询操作', 1);
INSERT INTO `t_log` VALUES (238, '查询商品信息', '2021-08-30 10:48:10', '查询操作', 1);
INSERT INTO `t_log` VALUES (239, '查询商品信息', '2021-08-30 10:48:11', '查询操作', 1);
INSERT INTO `t_log` VALUES (240, '查询商品信息', '2021-08-30 10:48:16', '查询操作', 1);
INSERT INTO `t_log` VALUES (241, '查询商品信息', '2021-08-30 10:48:16', '查询操作', 1);
INSERT INTO `t_log` VALUES (242, '查询商品信息', '2021-08-30 10:48:19', '查询操作', 1);
INSERT INTO `t_log` VALUES (243, '查询商品信息', '2021-08-30 10:48:19', '查询操作', 1);
INSERT INTO `t_log` VALUES (244, '用户登录', '2021-08-30 11:31:35', '登录操作', 1);
INSERT INTO `t_log` VALUES (245, '查询商品库存信息', '2021-08-30 11:31:36', '查询操作', 1);
INSERT INTO `t_log` VALUES (246, '查询商品库存信息', '2021-08-30 11:31:42', '查询操作', 1);
INSERT INTO `t_log` VALUES (247, '查询商品库存信息', '2021-08-30 11:31:44', '查询操作', 1);
INSERT INTO `t_log` VALUES (248, '查询商品信息', '2021-08-30 11:31:55', '查询操作', 1);
INSERT INTO `t_log` VALUES (249, '查询商品信息', '2021-08-30 11:31:55', '查询操作', 1);
INSERT INTO `t_log` VALUES (250, '查询商品信息', '2021-08-30 11:32:06', '查询操作', 1);
INSERT INTO `t_log` VALUES (251, '查询商品信息', '2021-08-30 11:32:06', '查询操作', 1);
INSERT INTO `t_log` VALUES (252, '查询商品信息', '2021-08-30 11:32:08', '查询操作', 1);
INSERT INTO `t_log` VALUES (253, '查询商品信息', '2021-08-30 11:32:08', '查询操作', 1);
INSERT INTO `t_log` VALUES (254, '查询商品类别信息', '2021-08-30 11:32:19', '查询操作', 1);
INSERT INTO `t_log` VALUES (257, '添加进货单', '2021-08-30 11:32:28', '添加操作', 1);
INSERT INTO `t_log` VALUES (258, '查询商品信息', '2021-08-30 11:32:29', '查询操作', 1);
INSERT INTO `t_log` VALUES (259, '查询商品信息', '2021-08-30 11:32:29', '查询操作', 1);
INSERT INTO `t_log` VALUES (260, '查询商品类别信息', '2021-08-30 11:32:33', '查询操作', 1);
INSERT INTO `t_log` VALUES (263, '添加退货单', '2021-08-30 11:32:43', '添加操作', 1);
INSERT INTO `t_log` VALUES (264, '查询商品信息', '2021-08-30 11:32:46', '查询操作', 1);
INSERT INTO `t_log` VALUES (265, '查询商品信息', '2021-08-30 11:32:46', '查询操作', 1);
INSERT INTO `t_log` VALUES (266, '查询商品类别信息', '2021-08-30 11:32:51', '查询操作', 1);
INSERT INTO `t_log` VALUES (267, '查询商品类别信息', '2021-08-30 11:33:23', '查询操作', 1);
INSERT INTO `t_log` VALUES (271, '添加退货单', '2021-08-30 11:33:32', '添加操作', 1);
INSERT INTO `t_log` VALUES (272, '查询商品信息', '2021-08-30 11:33:33', '查询操作', 1);
INSERT INTO `t_log` VALUES (273, '查询商品信息', '2021-08-30 11:33:33', '查询操作', 1);
INSERT INTO `t_log` VALUES (274, '查询商品类别信息', '2021-08-30 11:33:35', '查询操作', 1);
INSERT INTO `t_log` VALUES (277, '添加退货单', '2021-08-30 11:33:42', '添加操作', 1);
INSERT INTO `t_log` VALUES (278, '查询商品信息', '2021-08-30 11:33:44', '查询操作', 1);
INSERT INTO `t_log` VALUES (279, '查询商品信息', '2021-08-30 11:33:44', '查询操作', 1);
INSERT INTO `t_log` VALUES (280, '查询商品信息', '2021-08-30 11:34:07', '查询操作', 1);
INSERT INTO `t_log` VALUES (281, '查询商品信息', '2021-08-30 11:34:07', '查询操作', 1);
INSERT INTO `t_log` VALUES (282, '查询商品类别信息', '2021-08-30 11:34:14', '查询操作', 1);
INSERT INTO `t_log` VALUES (285, '添加销售单', '2021-08-30 11:34:25', '添加操作', 1);
INSERT INTO `t_log` VALUES (286, '查询商品信息', '2021-08-30 11:34:27', '查询操作', 1);
INSERT INTO `t_log` VALUES (287, '查询商品信息', '2021-08-30 11:34:27', '查询操作', 1);
INSERT INTO `t_log` VALUES (288, '查询商品类别信息', '2021-08-30 11:34:30', '查询操作', 1);
INSERT INTO `t_log` VALUES (291, '添加销售单', '2021-08-30 11:34:40', '添加操作', 1);
INSERT INTO `t_log` VALUES (292, '查询商品信息', '2021-08-30 11:34:42', '查询操作', 1);
INSERT INTO `t_log` VALUES (293, '查询商品信息', '2021-08-30 11:34:42', '查询操作', 1);
INSERT INTO `t_log` VALUES (294, '查询商品类别信息', '2021-08-30 11:34:44', '查询操作', 1);
INSERT INTO `t_log` VALUES (297, '添加销售单', '2021-08-30 11:34:54', '添加操作', 1);
INSERT INTO `t_log` VALUES (298, '查询商品信息', '2021-08-30 11:34:55', '查询操作', 1);
INSERT INTO `t_log` VALUES (299, '查询商品信息', '2021-08-30 11:34:55', '查询操作', 1);
INSERT INTO `t_log` VALUES (300, '查询商品信息', '2021-08-30 11:35:26', '查询操作', 1);
INSERT INTO `t_log` VALUES (301, '查询商品信息', '2021-08-30 11:35:26', '查询操作', 1);
INSERT INTO `t_log` VALUES (302, '查询商品类别信息', '2021-08-30 11:36:09', '查询操作', 1);
INSERT INTO `t_log` VALUES (303, '查询客户信息', '2021-08-30 11:37:20', '查询操作', 1);
INSERT INTO `t_log` VALUES (304, '查询供应商信息', '2021-08-30 11:37:23', '查询操作', 1);
INSERT INTO `t_log` VALUES (305, '查询供应商信息', '2021-08-30 11:37:23', '查询操作', 1);
INSERT INTO `t_log` VALUES (306, '查询商品信息', '2021-08-30 11:37:24', '查询操作', 1);
INSERT INTO `t_log` VALUES (307, '查询商品单位信息', '2021-08-30 11:37:24', '查询操作', 1);
INSERT INTO `t_log` VALUES (308, '查询商品类别信息', '2021-08-30 11:37:24', '查询操作', 1);
INSERT INTO `t_log` VALUES (309, '查询商品信息', '2021-08-30 11:37:24', '查询操作', 1);
INSERT INTO `t_log` VALUES (310, '查询商品单位信息', '2021-08-30 11:37:24', '查询操作', 1);
INSERT INTO `t_log` VALUES (311, '查询商品信息（无库存）', '2021-08-30 11:37:41', '查询操作', 1);
INSERT INTO `t_log` VALUES (312, '查询商品信息（有库存）', '2021-08-30 11:37:41', '查询操作', 1);
INSERT INTO `t_log` VALUES (313, '查询商品信息（无库存）', '2021-08-30 11:37:41', '查询操作', 1);
INSERT INTO `t_log` VALUES (314, '查询商品信息（有库存）', '2021-08-30 11:37:41', '查询操作', 1);
INSERT INTO `t_log` VALUES (315, '修改商品[id=11, code=0003, name=野生东北黑木耳, model=500g装, unit=袋, purchasingPrice=23.0, sellingPrice=38.0, inventoryQuantity=1, minNum=400, producer=辉南县博康土特产有限公司, remarks=够黑2]，价格=23.0,库存=1', '2021-08-30 11:38:12', '更新操作', 1);
INSERT INTO `t_log` VALUES (316, '查询商品信息（有库存）', '2021-08-30 11:38:12', '查询操作', 1);
INSERT INTO `t_log` VALUES (317, '查询商品信息（无库存）', '2021-08-30 11:38:12', '查询操作', 1);
INSERT INTO `t_log` VALUES (318, '修改商品[id=35, code=0026, name=加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子, model=AFS JEEP, unit=条, purchasingPrice=23.0, sellingPrice=89.0, inventoryQuantity=1, minNum=10, producer=c, remarks=]，价格=23.0,库存=1', '2021-08-30 11:38:24', '更新操作', 1);
INSERT INTO `t_log` VALUES (319, '查询商品信息（无库存）', '2021-08-30 11:38:24', '查询操作', 1);
INSERT INTO `t_log` VALUES (320, '查询商品信息（有库存）', '2021-08-30 11:38:24', '查询操作', 1);
INSERT INTO `t_log` VALUES (321, '查询商品信息', '2021-08-30 11:39:05', '查询操作', 1);
INSERT INTO `t_log` VALUES (322, '查询商品信息', '2021-08-30 11:39:05', '查询操作', 1);
INSERT INTO `t_log` VALUES (323, '用户登录', '2021-08-30 15:29:18', '登录操作', 1);
INSERT INTO `t_log` VALUES (324, '查询商品库存信息', '2021-08-30 15:29:19', '查询操作', 1);
INSERT INTO `t_log` VALUES (325, '查询角色信息', '2021-08-30 15:29:26', '查询操作', 1);
INSERT INTO `t_log` VALUES (326, '查询角色信息', '2021-08-30 15:29:26', '查询操作', 1);
INSERT INTO `t_log` VALUES (327, '查询用户信息', '2021-08-30 15:29:26', '查询操作', 1);
INSERT INTO `t_log` VALUES (328, '查询用户信息', '2021-08-30 15:29:26', '查询操作', 1);
INSERT INTO `t_log` VALUES (329, '用户注销', '2021-08-30 15:29:36', '注销操作', 1);
INSERT INTO `t_log` VALUES (330, '用户登录', '2021-08-30 15:29:39', '登录操作', 2);
INSERT INTO `t_log` VALUES (331, '查询商品库存信息', '2021-08-30 15:29:41', '查询操作', 2);
INSERT INTO `t_log` VALUES (332, '查询商品库存信息', '2021-08-30 15:29:44', '查询操作', 2);
INSERT INTO `t_log` VALUES (333, '查询商品信息', '2021-08-30 15:29:44', '查询操作', 2);
INSERT INTO `t_log` VALUES (334, '查询商品信息', '2021-08-30 15:29:44', '查询操作', 2);
INSERT INTO `t_log` VALUES (335, '查询商品信息', '2021-08-30 15:29:45', '查询操作', 2);
INSERT INTO `t_log` VALUES (336, '查询商品信息', '2021-08-30 15:29:45', '查询操作', 2);
INSERT INTO `t_log` VALUES (337, '查询商品库存信息', '2021-08-30 15:30:29', '查询操作', 2);
INSERT INTO `t_log` VALUES (338, '用户登录', '2021-08-30 15:30:39', '登录操作', 1);
INSERT INTO `t_log` VALUES (339, '查询商品库存信息', '2021-08-30 15:30:40', '查询操作', 1);
INSERT INTO `t_log` VALUES (340, '查询商品信息', '2021-08-30 15:30:49', '查询操作', 1);
INSERT INTO `t_log` VALUES (341, '查询商品单位信息', '2021-08-30 15:30:49', '查询操作', 1);
INSERT INTO `t_log` VALUES (342, '查询商品类别信息', '2021-08-30 15:30:49', '查询操作', 1);
INSERT INTO `t_log` VALUES (343, '查询商品信息', '2021-08-30 15:30:49', '查询操作', 1);
INSERT INTO `t_log` VALUES (344, '查询商品单位信息', '2021-08-30 15:30:49', '查询操作', 1);
INSERT INTO `t_log` VALUES (345, '查询商品信息（无库存）', '2021-08-30 15:30:49', '查询操作', 1);
INSERT INTO `t_log` VALUES (346, '查询商品信息（有库存）', '2021-08-30 15:30:49', '查询操作', 1);
INSERT INTO `t_log` VALUES (347, '查询商品信息（无库存）', '2021-08-30 15:30:49', '查询操作', 1);
INSERT INTO `t_log` VALUES (348, '查询商品信息（有库存）', '2021-08-30 15:30:49', '查询操作', 1);
INSERT INTO `t_log` VALUES (349, '修改商品[id=25, code=0016, name=21, model=X, unit=盒, purchasingPrice=23.0, sellingPrice=120.0, inventoryQuantity=1, minNum=12, producer=32, remarks=21]，价格=23.0,库存=1', '2021-08-30 15:31:08', '更新操作', 1);
INSERT INTO `t_log` VALUES (350, '查询商品信息（有库存）', '2021-08-30 15:31:08', '查询操作', 1);
INSERT INTO `t_log` VALUES (351, '查询商品信息（无库存）', '2021-08-30 15:31:08', '查询操作', 1);
INSERT INTO `t_log` VALUES (352, '查询商品库存信息', '2021-08-30 15:44:14', '查询操作', 1);
INSERT INTO `t_log` VALUES (353, '查询商品信息', '2021-08-30 15:44:15', '查询操作', 1);
INSERT INTO `t_log` VALUES (354, '查询商品信息', '2021-08-30 15:44:15', '查询操作', 1);
INSERT INTO `t_log` VALUES (355, '查询商品信息', '2021-08-30 15:44:16', '查询操作', 1);
INSERT INTO `t_log` VALUES (356, '查询商品信息', '2021-08-30 15:44:16', '查询操作', 1);
INSERT INTO `t_log` VALUES (357, '查询供应商信息', '2021-08-30 16:08:04', '查询操作', 1);
INSERT INTO `t_log` VALUES (358, '查询供应商信息', '2021-08-30 16:08:04', '查询操作', 1);
INSERT INTO `t_log` VALUES (359, '查询客户信息', '2021-08-30 16:09:32', '查询操作', 1);
INSERT INTO `t_log` VALUES (360, '查询角色信息', '2021-08-30 16:09:35', '查询操作', 1);
INSERT INTO `t_log` VALUES (361, '查询角色信息', '2021-08-30 16:09:35', '查询操作', 1);
INSERT INTO `t_log` VALUES (362, '查询用户信息', '2021-08-30 16:09:36', '查询操作', 1);
INSERT INTO `t_log` VALUES (363, '查询用户信息', '2021-08-30 16:09:36', '查询操作', 1);
INSERT INTO `t_log` VALUES (364, '查询商品信息', '2021-08-30 16:09:44', '查询操作', 1);
INSERT INTO `t_log` VALUES (365, '查询商品信息', '2021-08-30 16:09:44', '查询操作', 1);
INSERT INTO `t_log` VALUES (366, '查询商品信息', '2021-08-30 16:09:45', '查询操作', 1);
INSERT INTO `t_log` VALUES (367, '查询商品信息', '2021-08-30 16:09:45', '查询操作', 1);
INSERT INTO `t_log` VALUES (368, '查询商品信息', '2021-08-30 16:10:21', '查询操作', 1);
INSERT INTO `t_log` VALUES (369, '查询商品信息', '2021-08-30 16:10:21', '查询操作', 1);
INSERT INTO `t_log` VALUES (370, '查询商品信息', '2021-08-30 16:10:34', '查询操作', 1);
INSERT INTO `t_log` VALUES (371, '查询商品信息', '2021-08-30 16:10:34', '查询操作', 1);
INSERT INTO `t_log` VALUES (372, '用户登录', '2021-08-30 17:18:09', '登录操作', 1);
INSERT INTO `t_log` VALUES (373, '查询商品库存信息', '2021-08-30 17:18:09', '查询操作', 1);
INSERT INTO `t_log` VALUES (374, '查询商品信息（无库存）', '2021-08-30 17:18:32', '查询操作', 1);
INSERT INTO `t_log` VALUES (375, '查询商品信息（有库存）', '2021-08-30 17:18:32', '查询操作', 1);
INSERT INTO `t_log` VALUES (376, '查询商品信息（无库存）', '2021-08-30 17:18:32', '查询操作', 1);
INSERT INTO `t_log` VALUES (377, '查询商品信息（有库存）', '2021-08-30 17:18:32', '查询操作', 1);
INSERT INTO `t_log` VALUES (378, '查询商品库存信息', '2021-08-30 17:18:36', '查询操作', 1);
INSERT INTO `t_log` VALUES (379, '查询商品信息', '2021-08-30 17:18:39', '查询操作', 1);
INSERT INTO `t_log` VALUES (380, '查询商品信息', '2021-08-30 17:18:39', '查询操作', 1);
INSERT INTO `t_log` VALUES (381, '用户登录', '2021-08-30 20:35:41', '登录操作', 1);
INSERT INTO `t_log` VALUES (382, '查询商品库存信息', '2021-08-30 20:35:42', '查询操作', 1);
INSERT INTO `t_log` VALUES (383, '查询客户信息', '2021-08-30 20:35:43', '查询操作', 1);
INSERT INTO `t_log` VALUES (384, '查询商品信息（无库存）', '2021-08-30 20:35:43', '查询操作', 1);
INSERT INTO `t_log` VALUES (385, '查询商品信息（有库存）', '2021-08-30 20:35:43', '查询操作', 1);
INSERT INTO `t_log` VALUES (386, '查询商品信息（无库存）', '2021-08-30 20:35:43', '查询操作', 1);
INSERT INTO `t_log` VALUES (387, '查询商品信息（有库存）', '2021-08-30 20:35:43', '查询操作', 1);
INSERT INTO `t_log` VALUES (388, '修改商品[id=28, code=0019, name=Golden Field/金河田 Q8电脑音响台式多媒体家用音箱低音炮重低音, model=Q8, unit=台, purchasingPrice=1.0, sellingPrice=129.0, inventoryQuantity=1, minNum=300, producer=xxxx, remarks=]，价格=1.0,库存=1', '2021-08-30 20:35:50', '更新操作', 1);
INSERT INTO `t_log` VALUES (389, '查询商品信息（无库存）', '2021-08-30 20:35:50', '查询操作', 1);
INSERT INTO `t_log` VALUES (390, '查询商品信息（有库存）', '2021-08-30 20:35:50', '查询操作', 1);
INSERT INTO `t_log` VALUES (391, '查询商品信息', '2021-08-30 20:50:01', '查询操作', 1);
INSERT INTO `t_log` VALUES (392, '查询商品信息', '2021-08-30 20:50:01', '查询操作', 1);
INSERT INTO `t_log` VALUES (393, '查询商品库存信息', '2021-08-30 20:50:05', '查询操作', 1);
INSERT INTO `t_log` VALUES (394, '查询商品信息', '2021-08-30 20:50:09', '查询操作', 1);
INSERT INTO `t_log` VALUES (395, '查询商品信息', '2021-08-30 20:50:09', '查询操作', 1);
INSERT INTO `t_log` VALUES (396, '用户登录', '2021-08-30 21:26:51', '登录操作', 1);
INSERT INTO `t_log` VALUES (397, '查询商品库存信息', '2021-08-30 21:26:51', '查询操作', 1);
INSERT INTO `t_log` VALUES (398, '查询商品库存信息', '2021-08-30 21:26:52', '查询操作', 1);
INSERT INTO `t_log` VALUES (399, '查询商品库存信息', '2021-08-30 21:26:54', '查询操作', 1);
INSERT INTO `t_log` VALUES (400, '查询商品库存信息', '2021-08-30 21:26:54', '查询操作', 1);
INSERT INTO `t_log` VALUES (401, '查询商品库存信息', '2021-08-30 21:26:54', '查询操作', 1);
INSERT INTO `t_log` VALUES (402, '查询商品库存信息', '2021-08-30 21:26:54', '查询操作', 1);
INSERT INTO `t_log` VALUES (403, '查询商品库存信息', '2021-08-30 21:26:54', '查询操作', 1);
INSERT INTO `t_log` VALUES (404, '查询供应商信息', '2021-08-30 21:27:30', '查询操作', 1);
INSERT INTO `t_log` VALUES (405, '查询供应商信息', '2021-08-30 21:27:30', '查询操作', 1);
INSERT INTO `t_log` VALUES (406, '查询角色信息', '2021-08-30 21:29:55', '查询操作', 1);
INSERT INTO `t_log` VALUES (407, '查询角色信息', '2021-08-30 21:29:55', '查询操作', 1);
INSERT INTO `t_log` VALUES (408, '查询用户信息', '2021-08-30 21:30:01', '查询操作', 1);
INSERT INTO `t_log` VALUES (409, '查询用户信息', '2021-08-30 21:30:01', '查询操作', 1);
INSERT INTO `t_log` VALUES (410, '用户注销', '2021-08-30 21:31:18', '注销操作', 1);
INSERT INTO `t_log` VALUES (411, '用户登录', '2021-08-30 21:31:35', '登录操作', 3);
INSERT INTO `t_log` VALUES (412, '查询商品库存信息', '2021-08-30 21:31:38', '查询操作', 3);
INSERT INTO `t_log` VALUES (413, '查询商品信息', '2021-08-30 21:31:45', '查询操作', 3);
INSERT INTO `t_log` VALUES (414, '查询商品信息', '2021-08-30 21:31:45', '查询操作', 3);
INSERT INTO `t_log` VALUES (415, '查询商品类别信息', '2021-08-30 21:31:48', '查询操作', 3);
INSERT INTO `t_log` VALUES (418, '添加进货单', '2021-08-30 21:31:58', '添加操作', 3);
INSERT INTO `t_log` VALUES (419, '查询商品信息', '2021-08-30 21:32:00', '查询操作', 3);
INSERT INTO `t_log` VALUES (420, '查询商品信息', '2021-08-30 21:32:00', '查询操作', 3);
INSERT INTO `t_log` VALUES (421, '查询商品库存信息', '2021-08-30 21:32:02', '查询操作', 3);
INSERT INTO `t_log` VALUES (422, '查询商品信息', '2021-08-30 21:33:03', '查询操作', 3);
INSERT INTO `t_log` VALUES (423, '查询商品信息', '2021-08-30 21:33:03', '查询操作', 3);
INSERT INTO `t_log` VALUES (424, '查询商品信息', '2021-08-30 21:33:04', '查询操作', 3);
INSERT INTO `t_log` VALUES (425, '查询商品信息', '2021-08-30 21:33:04', '查询操作', 3);
INSERT INTO `t_log` VALUES (426, '用户登录', '2021-08-30 21:34:01', '登录操作', 1);
INSERT INTO `t_log` VALUES (427, '查询商品库存信息', '2021-08-30 21:34:01', '查询操作', 1);
INSERT INTO `t_log` VALUES (428, '查询供应商信息', '2021-08-30 21:44:44', '查询操作', 1);
INSERT INTO `t_log` VALUES (429, '查询供应商信息', '2021-08-30 21:44:44', '查询操作', 1);
INSERT INTO `t_log` VALUES (430, '查询客户信息', '2021-08-30 21:44:50', '查询操作', 1);
INSERT INTO `t_log` VALUES (431, '查询商品信息', '2021-08-30 21:45:11', '查询操作', 1);
INSERT INTO `t_log` VALUES (432, '查询商品信息', '2021-08-30 21:45:11', '查询操作', 1);
INSERT INTO `t_log` VALUES (433, '查询商品信息', '2021-08-30 21:45:27', '查询操作', 1);
INSERT INTO `t_log` VALUES (434, '查询商品信息', '2021-08-30 21:45:27', '查询操作', 1);
INSERT INTO `t_log` VALUES (435, '查询商品类别信息', '2021-08-30 21:45:36', '查询操作', 1);
INSERT INTO `t_log` VALUES (436, '查询商品信息', '2021-08-30 21:45:40', '查询操作', 1);
INSERT INTO `t_log` VALUES (437, '查询商品信息', '2021-08-30 21:45:41', '查询操作', 1);
INSERT INTO `t_log` VALUES (440, '添加进货单', '2021-08-30 21:45:56', '添加操作', 1);
INSERT INTO `t_log` VALUES (441, '查询商品信息', '2021-08-30 21:45:57', '查询操作', 1);
INSERT INTO `t_log` VALUES (442, '查询商品信息', '2021-08-30 21:45:57', '查询操作', 1);
INSERT INTO `t_log` VALUES (443, '查询商品库存信息', '2021-08-30 21:46:04', '查询操作', 1);
INSERT INTO `t_log` VALUES (444, '查询商品库存信息', '2021-08-30 21:46:08', '查询操作', 1);
INSERT INTO `t_log` VALUES (445, '查询供应商信息', '2021-08-30 21:46:32', '查询操作', 1);
INSERT INTO `t_log` VALUES (446, '查询供应商信息', '2021-08-30 21:46:32', '查询操作', 1);
INSERT INTO `t_log` VALUES (447, '查询商品信息（无库存）', '2021-08-30 21:46:34', '查询操作', 1);
INSERT INTO `t_log` VALUES (448, '查询商品信息（有库存）', '2021-08-30 21:46:34', '查询操作', 1);
INSERT INTO `t_log` VALUES (449, '查询商品信息（无库存）', '2021-08-30 21:46:34', '查询操作', 1);
INSERT INTO `t_log` VALUES (450, '查询商品信息（有库存）', '2021-08-30 21:46:34', '查询操作', 1);
INSERT INTO `t_log` VALUES (451, '查询商品信息', '2021-08-30 21:46:36', '查询操作', 1);
INSERT INTO `t_log` VALUES (452, '查询商品单位信息', '2021-08-30 21:46:36', '查询操作', 1);
INSERT INTO `t_log` VALUES (453, '查询商品类别信息', '2021-08-30 21:46:36', '查询操作', 1);
INSERT INTO `t_log` VALUES (454, '查询商品信息', '2021-08-30 21:46:36', '查询操作', 1);
INSERT INTO `t_log` VALUES (455, '查询商品单位信息', '2021-08-30 21:46:36', '查询操作', 1);
INSERT INTO `t_log` VALUES (456, '查询角色信息', '2021-08-30 21:47:38', '查询操作', 1);
INSERT INTO `t_log` VALUES (457, '查询角色信息', '2021-08-30 21:47:38', '查询操作', 1);
INSERT INTO `t_log` VALUES (458, '查询商品信息（有库存）', '2021-08-30 21:57:03', '查询操作', 1);
INSERT INTO `t_log` VALUES (459, '查询商品信息（无库存）', '2021-08-30 21:57:15', '查询操作', 1);
INSERT INTO `t_log` VALUES (460, '修改商品[id=29, code=0020, name=Haier/海尔冰箱BCD-190WDPT双门电冰箱大两门冷藏冷冻, model=190WDPT, unit=台, purchasingPrice=20.0, sellingPrice=1699.0, inventoryQuantity=22, minNum=50, producer=cc, remarks=]，价格=20.0,库存=22', '2021-08-30 21:57:22', '更新操作', 1);
INSERT INTO `t_log` VALUES (461, '查询商品信息（无库存）', '2021-08-30 21:57:22', '查询操作', 1);
INSERT INTO `t_log` VALUES (462, '查询商品信息（有库存）', '2021-08-30 21:57:22', '查询操作', 1);
INSERT INTO `t_log` VALUES (463, '查询商品信息（有库存）', '2021-08-30 21:57:30', '查询操作', 1);
INSERT INTO `t_log` VALUES (464, '查询商品信息（有库存）', '2021-08-30 21:57:31', '查询操作', 1);
INSERT INTO `t_log` VALUES (465, '修改商品[id=30, code=0021, name=Xiaomi/小米 小米电视4A 32英寸 智能液晶平板电视机, model=4A , unit=台, purchasingPrice=20.0, sellingPrice=1199.0, inventoryQuantity=22, minNum=320, producer=cc, remarks=]，价格=20.0,库存=22', '2021-08-30 21:57:37', '更新操作', 1);
INSERT INTO `t_log` VALUES (466, '查询商品信息（无库存）', '2021-08-30 21:57:37', '查询操作', 1);
INSERT INTO `t_log` VALUES (467, '查询商品信息（有库存）', '2021-08-30 21:57:37', '查询操作', 1);
INSERT INTO `t_log` VALUES (468, '查询商品信息（有库存）', '2021-08-30 21:57:39', '查询操作', 1);
INSERT INTO `t_log` VALUES (469, '查询商品信息（有库存）', '2021-08-30 21:57:51', '查询操作', 1);
INSERT INTO `t_log` VALUES (470, '查询商品信息（无库存）', '2021-08-30 21:57:58', '查询操作', 1);
INSERT INTO `t_log` VALUES (471, '查询商品信息（有库存）', '2021-08-30 21:57:58', '查询操作', 1);
INSERT INTO `t_log` VALUES (472, '查询客户信息', '2021-08-30 21:58:13', '查询操作', 1);
INSERT INTO `t_log` VALUES (473, '查询商品库存信息', '2021-08-30 21:58:27', '查询操作', 1);
INSERT INTO `t_log` VALUES (474, '查询商品信息', '2021-08-30 21:59:03', '查询操作', 1);
INSERT INTO `t_log` VALUES (475, '查询商品信息', '2021-08-30 21:59:03', '查询操作', 1);
INSERT INTO `t_log` VALUES (476, '查询商品信息', '2021-08-30 21:59:05', '查询操作', 1);
INSERT INTO `t_log` VALUES (477, '查询商品信息', '2021-08-30 21:59:05', '查询操作', 1);
INSERT INTO `t_log` VALUES (478, '查询商品信息', '2021-08-30 21:59:08', '查询操作', 1);
INSERT INTO `t_log` VALUES (479, '查询商品信息', '2021-08-30 21:59:08', '查询操作', 1);
INSERT INTO `t_log` VALUES (480, '查询商品信息', '2021-08-30 21:59:09', '查询操作', 1);
INSERT INTO `t_log` VALUES (481, '查询商品信息', '2021-08-30 21:59:09', '查询操作', 1);
INSERT INTO `t_log` VALUES (482, '查询商品类别信息', '2021-08-30 21:59:12', '查询操作', 1);
INSERT INTO `t_log` VALUES (485, '添加进货单', '2021-08-30 21:59:30', '添加操作', 1);
INSERT INTO `t_log` VALUES (486, '查询商品信息', '2021-08-30 21:59:31', '查询操作', 1);
INSERT INTO `t_log` VALUES (487, '查询商品信息', '2021-08-30 21:59:31', '查询操作', 1);
INSERT INTO `t_log` VALUES (488, '查询商品类别信息', '2021-08-30 21:59:35', '查询操作', 1);
INSERT INTO `t_log` VALUES (489, '查询商品信息', '2021-08-30 21:59:40', '查询操作', 1);
INSERT INTO `t_log` VALUES (492, '添加进货单', '2021-08-30 21:59:54', '添加操作', 1);
INSERT INTO `t_log` VALUES (493, '查询商品信息', '2021-08-30 21:59:55', '查询操作', 1);
INSERT INTO `t_log` VALUES (494, '查询商品信息', '2021-08-30 21:59:55', '查询操作', 1);
INSERT INTO `t_log` VALUES (495, '查询商品库存信息', '2021-08-30 22:00:03', '查询操作', 1);
INSERT INTO `t_log` VALUES (496, '查询用户信息', '2021-08-30 22:01:54', '查询操作', 1);
INSERT INTO `t_log` VALUES (497, '查询用户信息', '2021-08-30 22:01:54', '查询操作', 1);
INSERT INTO `t_log` VALUES (498, '查询角色信息', '2021-08-30 22:01:55', '查询操作', 1);
INSERT INTO `t_log` VALUES (499, '查询角色信息', '2021-08-30 22:01:55', '查询操作', 1);
INSERT INTO `t_log` VALUES (500, '查询商品信息', '2021-08-30 22:02:15', '查询操作', 1);
INSERT INTO `t_log` VALUES (501, '查询商品信息', '2021-08-30 22:02:15', '查询操作', 1);
INSERT INTO `t_log` VALUES (502, '查询供应商信息', '2021-08-30 22:02:16', '查询操作', 1);
INSERT INTO `t_log` VALUES (503, '查询供应商信息', '2021-08-30 22:02:16', '查询操作', 1);
INSERT INTO `t_log` VALUES (504, '用户登录', '2021-09-01 20:20:26', '登录操作', 1);
INSERT INTO `t_log` VALUES (505, '查询商品库存信息', '2021-09-01 20:20:26', '查询操作', 1);
INSERT INTO `t_log` VALUES (506, '查询商品库存信息', '2021-09-01 20:21:17', '查询操作', 1);
INSERT INTO `t_log` VALUES (507, '查询商品信息', '2021-09-01 20:23:28', '查询操作', 1);
INSERT INTO `t_log` VALUES (508, '查询商品信息', '2021-09-01 20:23:28', '查询操作', 1);
INSERT INTO `t_log` VALUES (509, '查询商品信息（无库存）', '2021-09-01 20:24:03', '查询操作', 1);
INSERT INTO `t_log` VALUES (510, '查询商品信息（有库存）', '2021-09-01 20:24:03', '查询操作', 1);
INSERT INTO `t_log` VALUES (511, '查询商品信息（无库存）', '2021-09-01 20:24:03', '查询操作', 1);
INSERT INTO `t_log` VALUES (512, '查询商品信息（有库存）', '2021-09-01 20:24:03', '查询操作', 1);
INSERT INTO `t_log` VALUES (513, '查询商品信息', '2021-09-01 20:26:25', '查询操作', 1);
INSERT INTO `t_log` VALUES (514, '查询商品信息', '2021-09-01 20:26:25', '查询操作', 1);
INSERT INTO `t_log` VALUES (515, '查询商品信息', '2021-09-01 20:26:26', '查询操作', 1);
INSERT INTO `t_log` VALUES (516, '查询商品信息', '2021-09-01 20:26:26', '查询操作', 1);
INSERT INTO `t_log` VALUES (517, '查询供应商信息', '2021-09-01 20:26:33', '查询操作', 1);
INSERT INTO `t_log` VALUES (518, '查询供应商信息', '2021-09-01 20:26:33', '查询操作', 1);
INSERT INTO `t_log` VALUES (519, '查询客户信息', '2021-09-01 20:26:34', '查询操作', 1);
INSERT INTO `t_log` VALUES (520, '查询商品信息', '2021-09-01 20:26:34', '查询操作', 1);
INSERT INTO `t_log` VALUES (521, '查询商品单位信息', '2021-09-01 20:26:34', '查询操作', 1);
INSERT INTO `t_log` VALUES (522, '查询商品类别信息', '2021-09-01 20:26:34', '查询操作', 1);
INSERT INTO `t_log` VALUES (523, '查询商品信息', '2021-09-01 20:26:34', '查询操作', 1);
INSERT INTO `t_log` VALUES (524, '查询商品单位信息', '2021-09-01 20:26:34', '查询操作', 1);
INSERT INTO `t_log` VALUES (525, '查询商品信息', '2021-09-01 20:26:49', '查询操作', 1);
INSERT INTO `t_log` VALUES (526, '查询商品信息', '2021-09-01 20:26:49', '查询操作', 1);
INSERT INTO `t_log` VALUES (527, '查询角色信息', '2021-09-01 20:26:51', '查询操作', 1);
INSERT INTO `t_log` VALUES (528, '查询角色信息', '2021-09-01 20:26:51', '查询操作', 1);
INSERT INTO `t_log` VALUES (529, '添加角色信息[id=null, name=部长, remarks=]', '2021-09-01 20:27:09', '添加操作', 1);
INSERT INTO `t_log` VALUES (531, '添加角色信息[id=null, name=部长, remarks=]', '2021-09-01 20:27:13', '添加操作', 1);
INSERT INTO `t_log` VALUES (533, '查询角色信息', '2021-09-01 20:27:15', '查询操作', 1);
INSERT INTO `t_log` VALUES (534, '添加角色信息[id=null, name=部长, remarks=1]', '2021-09-01 20:27:16', '添加操作', 1);
INSERT INTO `t_log` VALUES (535, '添加角色信息[id=null, name=部长, remarks=1]', '2021-09-01 20:27:16', '添加操作', 1);
INSERT INTO `t_log` VALUES (538, '查询角色信息', '2021-09-01 20:27:21', '查询操作', 1);
INSERT INTO `t_log` VALUES (539, '删除角色信息[id=532, name=部长, remarks=]', '2021-09-01 20:27:36', '删除操作', 1);
INSERT INTO `t_log` VALUES (540, '查询商品库存信息', '2021-09-01 20:27:41', '查询操作', 1);
INSERT INTO `t_log` VALUES (541, '用户登录', '2021-09-01 20:28:41', '登录操作', 1);
INSERT INTO `t_log` VALUES (542, '查询商品库存信息', '2021-09-01 20:28:41', '查询操作', 1);
INSERT INTO `t_log` VALUES (543, '查询商品库存信息', '2021-09-01 20:29:04', '查询操作', 1);
INSERT INTO `t_log` VALUES (544, '查询商品信息（无库存）', '2021-09-01 20:29:13', '查询操作', 1);
INSERT INTO `t_log` VALUES (545, '查询商品信息（有库存）', '2021-09-01 20:29:13', '查询操作', 1);
INSERT INTO `t_log` VALUES (546, '查询商品信息（无库存）', '2021-09-01 20:29:13', '查询操作', 1);
INSERT INTO `t_log` VALUES (547, '查询商品信息（有库存）', '2021-09-01 20:29:13', '查询操作', 1);
INSERT INTO `t_log` VALUES (548, '查询供应商信息', '2021-09-01 20:29:14', '查询操作', 1);
INSERT INTO `t_log` VALUES (549, '查询供应商信息', '2021-09-01 20:29:14', '查询操作', 1);
INSERT INTO `t_log` VALUES (550, '查询角色信息', '2021-09-01 20:29:17', '查询操作', 1);
INSERT INTO `t_log` VALUES (551, '查询角色信息', '2021-09-01 20:29:17', '查询操作', 1);
INSERT INTO `t_log` VALUES (552, '查询用户信息', '2021-09-01 20:29:20', '查询操作', 1);
INSERT INTO `t_log` VALUES (553, '查询用户信息', '2021-09-01 20:29:20', '查询操作', 1);
INSERT INTO `t_log` VALUES (554, '删除角色信息[id=537, name=部长, remarks=1]', '2021-09-01 20:29:25', '删除操作', 1);
INSERT INTO `t_log` VALUES (555, '查询角色信息', '2021-09-01 20:29:25', '查询操作', 1);
INSERT INTO `t_log` VALUES (556, '删除角色信息[id=536, name=部长, remarks=1]', '2021-09-01 20:29:30', '删除操作', 1);
INSERT INTO `t_log` VALUES (557, '查询角色信息', '2021-09-01 20:29:30', '查询操作', 1);
INSERT INTO `t_log` VALUES (558, '添加角色信息[id=null, name=员工, remarks=]', '2021-09-01 20:29:38', '添加操作', 1);
INSERT INTO `t_log` VALUES (560, '查询角色信息', '2021-09-01 20:29:38', '查询操作', 1);
INSERT INTO `t_log` VALUES (561, '查询所有角色信息', '2021-09-01 20:29:43', '查询操作', 1);
INSERT INTO `t_log` VALUES (566, '保存用户角色设置', '2021-09-01 20:29:47', '更新操作', 1);
INSERT INTO `t_log` VALUES (567, '查询用户信息', '2021-09-01 20:29:47', '查询操作', 1);
INSERT INTO `t_log` VALUES (581, '保存角色权限设置', '2021-09-01 20:30:10', '添加操作', 1);
INSERT INTO `t_log` VALUES (582, '查询客户信息', '2021-09-01 20:31:04', '查询操作', 1);
INSERT INTO `t_log` VALUES (583, '查询商品信息', '2021-09-01 20:31:05', '查询操作', 1);
INSERT INTO `t_log` VALUES (584, '查询商品单位信息', '2021-09-01 20:31:05', '查询操作', 1);
INSERT INTO `t_log` VALUES (585, '查询商品类别信息', '2021-09-01 20:31:05', '查询操作', 1);
INSERT INTO `t_log` VALUES (586, '查询商品信息', '2021-09-01 20:31:05', '查询操作', 1);
INSERT INTO `t_log` VALUES (587, '查询商品单位信息', '2021-09-01 20:31:05', '查询操作', 1);
INSERT INTO `t_log` VALUES (588, '查询商品信息', '2021-09-01 20:31:20', '查询操作', 1);
INSERT INTO `t_log` VALUES (589, '查询商品信息', '2021-09-01 20:31:20', '查询操作', 1);
INSERT INTO `t_log` VALUES (590, '查询商品库存信息', '2021-09-01 20:31:25', '查询操作', 1);
INSERT INTO `t_log` VALUES (591, '用户注销', '2021-09-01 20:31:41', '注销操作', 1);
INSERT INTO `t_log` VALUES (592, '用户登录', '2021-09-01 20:31:47', '登录操作', 1);
INSERT INTO `t_log` VALUES (593, '查询商品库存信息', '2021-09-01 20:31:47', '查询操作', 1);
INSERT INTO `t_log` VALUES (594, '查询商品库存信息', '2021-09-01 20:34:21', '查询操作', 1);
INSERT INTO `t_log` VALUES (595, '查询商品信息', '2021-09-01 20:34:24', '查询操作', 1);
INSERT INTO `t_log` VALUES (596, '查询商品单位信息', '2021-09-01 20:34:24', '查询操作', 1);
INSERT INTO `t_log` VALUES (597, '查询商品类别信息', '2021-09-01 20:34:24', '查询操作', 1);
INSERT INTO `t_log` VALUES (598, '查询商品信息', '2021-09-01 20:34:24', '查询操作', 1);
INSERT INTO `t_log` VALUES (599, '查询商品单位信息', '2021-09-01 20:34:24', '查询操作', 1);
INSERT INTO `t_log` VALUES (600, '查询商品信息', '2021-09-01 20:34:28', '查询操作', 1);
INSERT INTO `t_log` VALUES (601, '查询商品信息', '2021-09-01 20:34:29', '查询操作', 1);
INSERT INTO `t_log` VALUES (602, '查询商品信息', '2021-09-01 20:34:29', '查询操作', 1);
INSERT INTO `t_log` VALUES (603, '用户注销', '2021-09-01 20:34:33', '注销操作', 1);
INSERT INTO `t_log` VALUES (604, '用户登录', '2021-09-01 20:34:40', '登录操作', 1);
INSERT INTO `t_log` VALUES (605, '查询商品库存信息', '2021-09-01 20:34:41', '查询操作', 1);
INSERT INTO `t_log` VALUES (606, '查询商品信息', '2021-09-01 20:34:44', '查询操作', 1);
INSERT INTO `t_log` VALUES (607, '查询商品信息', '2021-09-01 20:34:44', '查询操作', 1);
INSERT INTO `t_log` VALUES (608, '查询商品库存信息', '2021-09-01 20:36:14', '查询操作', 1);
INSERT INTO `t_log` VALUES (609, '用户注销', '2021-09-01 20:36:16', '注销操作', 1);
INSERT INTO `t_log` VALUES (610, '用户登录', '2021-09-01 20:36:17', '登录操作', 1);
INSERT INTO `t_log` VALUES (611, '查询商品库存信息', '2021-09-01 20:36:17', '查询操作', 1);
INSERT INTO `t_log` VALUES (612, '查询商品信息', '2021-09-01 20:36:19', '查询操作', 1);
INSERT INTO `t_log` VALUES (613, '查询商品信息', '2021-09-01 20:36:19', '查询操作', 1);
INSERT INTO `t_log` VALUES (614, '用户登录', '2021-09-01 20:37:23', '登录操作', 1);
INSERT INTO `t_log` VALUES (615, '查询商品库存信息', '2021-09-01 20:37:23', '查询操作', 1);
INSERT INTO `t_log` VALUES (616, '查询商品信息', '2021-09-01 20:37:24', '查询操作', 1);
INSERT INTO `t_log` VALUES (617, '查询商品信息', '2021-09-01 20:37:24', '查询操作', 1);
INSERT INTO `t_log` VALUES (618, '用户登录', '2021-09-01 20:37:57', '登录操作', 1);
INSERT INTO `t_log` VALUES (619, '查询商品库存信息', '2021-09-01 20:37:58', '查询操作', 1);
INSERT INTO `t_log` VALUES (620, '查询商品信息', '2021-09-01 20:37:59', '查询操作', 1);
INSERT INTO `t_log` VALUES (621, '查询商品信息', '2021-09-01 20:37:59', '查询操作', 1);
INSERT INTO `t_log` VALUES (622, '查询商品库存信息', '2021-09-01 20:38:11', '查询操作', 1);
INSERT INTO `t_log` VALUES (623, '查询商品信息', '2021-09-01 20:38:11', '查询操作', 1);
INSERT INTO `t_log` VALUES (624, '查询商品信息', '2021-09-01 20:38:12', '查询操作', 1);
INSERT INTO `t_log` VALUES (625, '查询商品信息', '2021-09-01 20:38:19', '查询操作', 1);
INSERT INTO `t_log` VALUES (626, '查询商品信息', '2021-09-01 20:38:19', '查询操作', 1);
INSERT INTO `t_log` VALUES (627, '查询商品类别信息', '2021-09-01 20:38:24', '查询操作', 1);
INSERT INTO `t_log` VALUES (628, '用户登录', '2021-09-01 20:40:51', '登录操作', 1);
INSERT INTO `t_log` VALUES (629, '查询商品库存信息', '2021-09-01 20:40:52', '查询操作', 1);
INSERT INTO `t_log` VALUES (630, '查询商品信息', '2021-09-01 20:40:56', '查询操作', 1);
INSERT INTO `t_log` VALUES (631, '查询商品信息', '2021-09-01 20:40:56', '查询操作', 1);
INSERT INTO `t_log` VALUES (632, '查询商品类别信息', '2021-09-01 20:41:00', '查询操作', 1);
INSERT INTO `t_log` VALUES (633, '查询商品信息', '2021-09-01 20:41:02', '查询操作', 1);
INSERT INTO `t_log` VALUES (634, '查询商品信息', '2021-09-01 20:41:03', '查询操作', 1);
INSERT INTO `t_log` VALUES (635, '查询商品信息', '2021-09-01 20:41:03', '查询操作', 1);
INSERT INTO `t_log` VALUES (636, '查询商品信息', '2021-09-01 20:41:04', '查询操作', 1);
INSERT INTO `t_log` VALUES (637, '查询商品信息', '2021-09-01 20:41:04', '查询操作', 1);
INSERT INTO `t_log` VALUES (638, '查询商品信息', '2021-09-01 20:41:05', '查询操作', 1);
INSERT INTO `t_log` VALUES (639, '查询商品信息', '2021-09-01 20:41:05', '查询操作', 1);
INSERT INTO `t_log` VALUES (640, '查询商品信息', '2021-09-01 20:41:06', '查询操作', 1);
INSERT INTO `t_log` VALUES (643, '添加进货单', '2021-09-01 20:41:17', '添加操作', 1);
INSERT INTO `t_log` VALUES (644, '查询商品信息', '2021-09-01 20:41:18', '查询操作', 1);
INSERT INTO `t_log` VALUES (645, '查询商品信息', '2021-09-01 20:41:18', '查询操作', 1);
INSERT INTO `t_log` VALUES (646, '查询商品信息', '2021-09-01 20:41:20', '查询操作', 1);
INSERT INTO `t_log` VALUES (647, '查询商品信息', '2021-09-01 20:41:20', '查询操作', 1);
INSERT INTO `t_log` VALUES (648, '查询商品类别信息', '2021-09-01 20:41:33', '查询操作', 1);
INSERT INTO `t_log` VALUES (651, '添加退货单', '2021-09-01 20:41:43', '添加操作', 1);
INSERT INTO `t_log` VALUES (652, '查询商品信息', '2021-09-01 20:41:45', '查询操作', 1);
INSERT INTO `t_log` VALUES (653, '查询商品信息', '2021-09-01 20:41:45', '查询操作', 1);
INSERT INTO `t_log` VALUES (654, '查询商品库存信息', '2021-09-01 20:41:46', '查询操作', 1);
INSERT INTO `t_log` VALUES (655, '查询商品信息', '2021-09-01 20:42:00', '查询操作', 1);
INSERT INTO `t_log` VALUES (656, '查询商品信息', '2021-09-01 20:42:00', '查询操作', 1);
INSERT INTO `t_log` VALUES (657, '查询商品类别信息', '2021-09-01 20:42:05', '查询操作', 1);
INSERT INTO `t_log` VALUES (660, '添加销售单', '2021-09-01 20:42:14', '添加操作', 1);
INSERT INTO `t_log` VALUES (661, '查询商品信息', '2021-09-01 20:42:15', '查询操作', 1);
INSERT INTO `t_log` VALUES (662, '查询商品信息', '2021-09-01 20:42:15', '查询操作', 1);
INSERT INTO `t_log` VALUES (663, '查询商品信息', '2021-09-01 20:42:16', '查询操作', 1);
INSERT INTO `t_log` VALUES (664, '查询商品信息', '2021-09-01 20:42:16', '查询操作', 1);
INSERT INTO `t_log` VALUES (665, '查询商品类别信息', '2021-09-01 20:42:20', '查询操作', 1);
INSERT INTO `t_log` VALUES (668, '添加客户退货单', '2021-09-01 20:42:25', '添加操作', 1);
INSERT INTO `t_log` VALUES (669, '查询商品信息', '2021-09-01 20:42:26', '查询操作', 1);
INSERT INTO `t_log` VALUES (670, '查询商品信息', '2021-09-01 20:42:26', '查询操作', 1);
INSERT INTO `t_log` VALUES (671, '查询商品信息', '2021-09-01 20:42:40', '查询操作', 1);
INSERT INTO `t_log` VALUES (672, '查询商品信息', '2021-09-01 20:42:40', '查询操作', 1);
INSERT INTO `t_log` VALUES (673, '查询商品类别信息', '2021-09-01 20:42:41', '查询操作', 1);
INSERT INTO `t_log` VALUES (676, '添加过期单', '2021-09-01 20:42:48', '添加操作', 1);
INSERT INTO `t_log` VALUES (677, '查询商品信息', '2021-09-01 20:42:50', '查询操作', 1);
INSERT INTO `t_log` VALUES (678, '查询商品信息', '2021-09-01 20:42:50', '查询操作', 1);
INSERT INTO `t_log` VALUES (679, '查询商品信息', '2021-09-01 20:42:56', '查询操作', 1);
INSERT INTO `t_log` VALUES (680, '查询商品信息', '2021-09-01 20:42:56', '查询操作', 1);
INSERT INTO `t_log` VALUES (681, '查询商品类别信息', '2021-09-01 20:42:58', '查询操作', 1);
INSERT INTO `t_log` VALUES (684, '添加报溢单', '2021-09-01 20:43:03', '添加操作', 1);
INSERT INTO `t_log` VALUES (685, '查询商品信息', '2021-09-01 20:43:04', '查询操作', 1);
INSERT INTO `t_log` VALUES (686, '查询商品信息', '2021-09-01 20:43:04', '查询操作', 1);
INSERT INTO `t_log` VALUES (687, '查询供应商信息', '2021-09-01 20:44:18', '查询操作', 1);
INSERT INTO `t_log` VALUES (688, '查询供应商信息', '2021-09-01 20:44:18', '查询操作', 1);
INSERT INTO `t_log` VALUES (689, '查询客户信息', '2021-09-01 20:44:29', '查询操作', 1);
INSERT INTO `t_log` VALUES (690, '查询商品信息', '2021-09-01 20:44:31', '查询操作', 1);
INSERT INTO `t_log` VALUES (691, '查询商品单位信息', '2021-09-01 20:44:31', '查询操作', 1);
INSERT INTO `t_log` VALUES (692, '查询商品类别信息', '2021-09-01 20:44:31', '查询操作', 1);
INSERT INTO `t_log` VALUES (693, '查询商品信息', '2021-09-01 20:44:31', '查询操作', 1);
INSERT INTO `t_log` VALUES (694, '查询商品单位信息', '2021-09-01 20:44:31', '查询操作', 1);
INSERT INTO `t_log` VALUES (695, '查询角色信息', '2021-09-01 20:44:35', '查询操作', 1);
INSERT INTO `t_log` VALUES (696, '查询角色信息', '2021-09-01 20:44:35', '查询操作', 1);
INSERT INTO `t_log` VALUES (697, '查询用户信息', '2021-09-01 20:44:44', '查询操作', 1);
INSERT INTO `t_log` VALUES (698, '查询用户信息', '2021-09-01 20:44:44', '查询操作', 1);
INSERT INTO `t_log` VALUES (699, '查询所有角色信息', '2021-09-01 20:44:47', '查询操作', 1);
INSERT INTO `t_log` VALUES (707, '保存角色权限设置', '2021-09-01 20:44:57', '添加操作', 1);
INSERT INTO `t_log` VALUES (708, '用户注销', '2021-09-01 20:45:05', '注销操作', 1);
INSERT INTO `t_log` VALUES (709, '用户登录', '2021-09-01 20:45:09', '登录操作', 3);
INSERT INTO `t_log` VALUES (710, '查询商品库存信息', '2021-09-01 20:45:13', '查询操作', 3);
INSERT INTO `t_log` VALUES (711, '查询商品信息', '2021-09-01 20:45:15', '查询操作', 3);
INSERT INTO `t_log` VALUES (712, '查询商品信息', '2021-09-01 20:45:15', '查询操作', 3);
INSERT INTO `t_log` VALUES (713, '查询商品信息', '2021-09-01 20:45:16', '查询操作', 3);
INSERT INTO `t_log` VALUES (714, '查询商品信息', '2021-09-01 20:45:16', '查询操作', 3);
INSERT INTO `t_log` VALUES (715, '查询商品库存信息', '2021-09-01 20:45:17', '查询操作', 3);
INSERT INTO `t_log` VALUES (716, '用户登录', '2021-09-01 20:45:27', '登录操作', 2);
INSERT INTO `t_log` VALUES (717, '查询商品库存信息', '2021-09-01 20:45:30', '查询操作', 2);
INSERT INTO `t_log` VALUES (718, '查询商品信息', '2021-09-01 20:45:31', '查询操作', 2);
INSERT INTO `t_log` VALUES (719, '查询商品信息', '2021-09-01 20:45:31', '查询操作', 2);
INSERT INTO `t_log` VALUES (720, '查询商品信息', '2021-09-01 20:45:32', '查询操作', 2);
INSERT INTO `t_log` VALUES (721, '查询商品信息', '2021-09-01 20:45:32', '查询操作', 2);
INSERT INTO `t_log` VALUES (722, '查询商品库存信息', '2021-09-01 20:45:33', '查询操作', 2);
INSERT INTO `t_log` VALUES (723, '用户登录', '2021-09-01 21:30:10', '登录操作', 1);
INSERT INTO `t_log` VALUES (724, '查询商品库存信息', '2021-09-01 21:30:11', '查询操作', 1);
INSERT INTO `t_log` VALUES (725, '查询角色信息', '2021-09-01 21:35:13', '查询操作', 1);
INSERT INTO `t_log` VALUES (726, '查询角色信息', '2021-09-01 21:35:13', '查询操作', 1);
INSERT INTO `t_log` VALUES (727, '添加角色信息[id=null, name=444, remarks=111]', '2021-09-01 21:35:39', '添加操作', 1);
INSERT INTO `t_log` VALUES (729, '查询角色信息', '2021-09-01 21:35:39', '查询操作', 1);
INSERT INTO `t_log` VALUES (730, '删除角色信息[id=4, name=采购员, remarks=null]', '2021-09-01 21:36:40', '删除操作', 1);
INSERT INTO `t_log` VALUES (731, '查询商品库存信息', '2021-09-01 21:36:51', '查询操作', 1);
INSERT INTO `t_log` VALUES (732, '查询角色信息', '2021-09-01 21:36:54', '查询操作', 1);
INSERT INTO `t_log` VALUES (733, '查询角色信息', '2021-09-01 21:36:54', '查询操作', 1);
INSERT INTO `t_log` VALUES (734, '删除角色信息[id=4, name=采购员, remarks=null]', '2021-09-01 21:36:58', '删除操作', 1);
INSERT INTO `t_log` VALUES (735, '查询商品库存信息', '2021-09-01 21:37:02', '查询操作', 1);
INSERT INTO `t_log` VALUES (736, '查询角色信息', '2021-09-01 21:37:03', '查询操作', 1);
INSERT INTO `t_log` VALUES (737, '查询角色信息', '2021-09-01 21:37:03', '查询操作', 1);
INSERT INTO `t_log` VALUES (738, '删除角色信息[id=728, name=444, remarks=111]', '2021-09-01 21:37:09', '删除操作', 1);
INSERT INTO `t_log` VALUES (739, '查询角色信息', '2021-09-01 21:37:09', '查询操作', 1);
INSERT INTO `t_log` VALUES (740, '保存角色权限设置', '2021-09-01 21:37:46', '添加操作', 1);
INSERT INTO `t_log` VALUES (741, '查询用户信息', '2021-09-01 21:37:54', '查询操作', 1);
INSERT INTO `t_log` VALUES (742, '查询用户信息', '2021-09-01 21:37:54', '查询操作', 1);
INSERT INTO `t_log` VALUES (743, '查询所有角色信息', '2021-09-01 21:38:18', '查询操作', 1);
INSERT INTO `t_log` VALUES (746, '保存用户角色设置', '2021-09-01 21:38:20', '更新操作', 1);
INSERT INTO `t_log` VALUES (747, '查询用户信息', '2021-09-01 21:38:20', '查询操作', 1);
INSERT INTO `t_log` VALUES (748, '删除角色信息[id=7, name=仓库管理员, remarks=null]', '2021-09-01 21:38:25', '删除操作', 1);
INSERT INTO `t_log` VALUES (749, '查询商品库存信息', '2021-09-01 21:38:28', '查询操作', 1);
INSERT INTO `t_log` VALUES (750, '查询角色信息', '2021-09-01 21:38:30', '查询操作', 1);
INSERT INTO `t_log` VALUES (751, '查询角色信息', '2021-09-01 21:38:30', '查询操作', 1);
INSERT INTO `t_log` VALUES (752, '删除角色信息[id=559, name=员工, remarks=]', '2021-09-01 21:39:51', '删除操作', 1);
INSERT INTO `t_log` VALUES (753, '查询用户信息', '2021-09-01 21:39:52', '查询操作', 1);
INSERT INTO `t_log` VALUES (754, '查询用户信息', '2021-09-01 21:39:52', '查询操作', 1);
INSERT INTO `t_log` VALUES (755, '查询商品库存信息', '2021-09-01 21:39:58', '查询操作', 1);
INSERT INTO `t_log` VALUES (756, '查询用户信息', '2021-09-01 21:39:59', '查询操作', 1);
INSERT INTO `t_log` VALUES (757, '查询用户信息', '2021-09-01 21:39:59', '查询操作', 1);
INSERT INTO `t_log` VALUES (758, '查询角色信息', '2021-09-01 21:40:02', '查询操作', 1);
INSERT INTO `t_log` VALUES (759, '查询角色信息', '2021-09-01 21:40:02', '查询操作', 1);
INSERT INTO `t_log` VALUES (760, '删除角色信息[id=559, name=员工, remarks=]', '2021-09-01 21:40:28', '删除操作', 1);
INSERT INTO `t_log` VALUES (761, '删除角色信息[id=530, name=部长, remarks=]', '2021-09-01 21:41:29', '删除操作', 1);
INSERT INTO `t_log` VALUES (762, '添加角色信息[id=null, name=1231, remarks=21]', '2021-09-01 21:41:36', '添加操作', 1);
INSERT INTO `t_log` VALUES (764, '查询角色信息', '2021-09-01 21:41:36', '查询操作', 1);
INSERT INTO `t_log` VALUES (765, '删除角色信息[id=763, name=1231, remarks=21]', '2021-09-01 21:41:39', '删除操作', 1);
INSERT INTO `t_log` VALUES (766, '查询角色信息', '2021-09-01 21:41:39', '查询操作', 1);
INSERT INTO `t_log` VALUES (767, '查询所有角色信息', '2021-09-01 21:42:38', '查询操作', 1);
INSERT INTO `t_log` VALUES (770, '保存用户角色设置', '2021-09-01 21:42:42', '更新操作', 1);
INSERT INTO `t_log` VALUES (771, '查询用户信息', '2021-09-01 21:42:42', '查询操作', 1);
INSERT INTO `t_log` VALUES (772, '查询所有角色信息', '2021-09-01 21:42:46', '查询操作', 1);
INSERT INTO `t_log` VALUES (774, '保存用户角色设置', '2021-09-01 21:42:47', '更新操作', 1);
INSERT INTO `t_log` VALUES (775, '查询用户信息', '2021-09-01 21:42:47', '查询操作', 1);
INSERT INTO `t_log` VALUES (776, '用户注销', '2021-09-01 21:42:53', '注销操作', 1);
INSERT INTO `t_log` VALUES (777, '用户登录', '2021-09-01 21:42:54', '登录操作', 1);
INSERT INTO `t_log` VALUES (778, '查询商品库存信息', '2021-09-01 21:42:54', '查询操作', 1);
INSERT INTO `t_log` VALUES (779, '查询角色信息', '2021-09-01 21:43:30', '查询操作', 1);
INSERT INTO `t_log` VALUES (780, '查询角色信息', '2021-09-01 21:43:30', '查询操作', 1);
INSERT INTO `t_log` VALUES (781, '删除角色信息[id=7, name=仓库管理员, remarks=null]', '2021-09-01 21:43:39', '删除操作', 1);
INSERT INTO `t_log` VALUES (782, '查询角色信息', '2021-09-01 21:43:39', '查询操作', 1);
INSERT INTO `t_log` VALUES (783, '查询商品信息', '2021-09-01 21:44:18', '查询操作', 1);
INSERT INTO `t_log` VALUES (784, '查询商品信息', '2021-09-01 21:44:18', '查询操作', 1);
INSERT INTO `t_log` VALUES (785, '查询供应商信息', '2021-09-01 21:44:26', '查询操作', 1);
INSERT INTO `t_log` VALUES (786, '查询供应商信息', '2021-09-01 21:44:26', '查询操作', 1);
INSERT INTO `t_log` VALUES (787, '查询客户信息', '2021-09-01 21:44:35', '查询操作', 1);
INSERT INTO `t_log` VALUES (788, '查询商品信息', '2021-09-01 21:44:35', '查询操作', 1);
INSERT INTO `t_log` VALUES (789, '查询商品单位信息', '2021-09-01 21:44:35', '查询操作', 1);
INSERT INTO `t_log` VALUES (790, '查询商品类别信息', '2021-09-01 21:44:35', '查询操作', 1);
INSERT INTO `t_log` VALUES (791, '查询商品信息', '2021-09-01 21:44:35', '查询操作', 1);
INSERT INTO `t_log` VALUES (792, '查询商品单位信息', '2021-09-01 21:44:35', '查询操作', 1);
INSERT INTO `t_log` VALUES (793, '添加供应商信息[id=null, name=qq q, contact=xiaoiao, number=18561525250, address=黄岛区, remarks=sas]', '2021-09-01 21:45:05', '添加操作', 1);
INSERT INTO `t_log` VALUES (795, '查询供应商信息', '2021-09-01 21:45:05', '查询操作', 1);
INSERT INTO `t_log` VALUES (796, '查询商品库存信息', '2021-09-01 21:45:09', '查询操作', 1);
INSERT INTO `t_log` VALUES (797, '查询供应商信息', '2021-09-01 21:45:12', '查询操作', 1);
INSERT INTO `t_log` VALUES (798, '查询供应商信息', '2021-09-01 21:45:12', '查询操作', 1);
INSERT INTO `t_log` VALUES (799, '查询客户信息', '2021-09-01 21:45:16', '查询操作', 1);
INSERT INTO `t_log` VALUES (800, '添加供应商信息[id=null, name=内蒙古, contact=小红帽和 123, number=18561525250, address=黄岛区, remarks=]', '2021-09-01 21:46:38', '添加操作', 1);
INSERT INTO `t_log` VALUES (802, '查询供应商信息', '2021-09-01 21:46:39', '查询操作', 1);
INSERT INTO `t_log` VALUES (803, '查询商品库存信息', '2021-09-01 21:46:42', '查询操作', 1);
INSERT INTO `t_log` VALUES (804, '查询商品信息', '2021-09-01 21:46:43', '查询操作', 1);
INSERT INTO `t_log` VALUES (805, '查询商品信息', '2021-09-01 21:46:44', '查询操作', 1);
INSERT INTO `t_log` VALUES (806, '查询商品信息', '2021-09-01 21:46:46', '查询操作', 1);
INSERT INTO `t_log` VALUES (807, '查询商品信息', '2021-09-01 21:46:46', '查询操作', 1);
INSERT INTO `t_log` VALUES (808, '查询供应商信息', '2021-09-01 21:46:50', '查询操作', 1);
INSERT INTO `t_log` VALUES (809, '查询供应商信息', '2021-09-01 21:46:50', '查询操作', 1);
INSERT INTO `t_log` VALUES (810, '查询供应商信息', '2021-09-01 21:46:52', '查询操作', 1);
INSERT INTO `t_log` VALUES (811, '查询客户信息', '2021-09-01 21:47:04', '查询操作', 1);
INSERT INTO `t_log` VALUES (812, '查询商品信息', '2021-09-01 21:47:08', '查询操作', 1);
INSERT INTO `t_log` VALUES (813, '查询商品单位信息', '2021-09-01 21:47:08', '查询操作', 1);
INSERT INTO `t_log` VALUES (814, '查询商品类别信息', '2021-09-01 21:47:08', '查询操作', 1);
INSERT INTO `t_log` VALUES (815, '查询商品信息', '2021-09-01 21:47:08', '查询操作', 1);
INSERT INTO `t_log` VALUES (816, '查询商品单位信息', '2021-09-01 21:47:08', '查询操作', 1);
INSERT INTO `t_log` VALUES (817, '用户登录', '2021-09-01 21:51:55', '登录操作', 1);
INSERT INTO `t_log` VALUES (818, '查询商品库存信息', '2021-09-01 21:51:55', '查询操作', 1);
INSERT INTO `t_log` VALUES (819, '查询客户信息', '2021-09-01 21:52:14', '查询操作', 1);
INSERT INTO `t_log` VALUES (820, '查询商品信息', '2021-09-01 21:52:16', '查询操作', 1);
INSERT INTO `t_log` VALUES (821, '查询商品单位信息', '2021-09-01 21:52:16', '查询操作', 1);
INSERT INTO `t_log` VALUES (822, '查询商品类别信息', '2021-09-01 21:52:16', '查询操作', 1);
INSERT INTO `t_log` VALUES (823, '查询商品信息', '2021-09-01 21:52:16', '查询操作', 1);
INSERT INTO `t_log` VALUES (824, '查询商品单位信息', '2021-09-01 21:52:16', '查询操作', 1);
INSERT INTO `t_log` VALUES (825, '查询商品类别信息', '2021-09-01 21:52:20', '查询操作', 1);
INSERT INTO `t_log` VALUES (826, '添加商品信息[id=null, code=0027, name=吃, model=红色, unit=袋, purchasingPrice=11.0, sellingPrice=11.0, inventoryQuantity=0, minNum=11, producer=华为, remarks=]', '2021-09-01 21:53:04', '添加操作', 1);
INSERT INTO `t_log` VALUES (828, '查询商品信息', '2021-09-01 21:53:04', '查询操作', 1);
INSERT INTO `t_log` VALUES (829, '查询商品库存信息', '2021-09-01 21:53:16', '查询操作', 1);
INSERT INTO `t_log` VALUES (830, '查询商品信息', '2021-09-01 21:53:18', '查询操作', 1);
INSERT INTO `t_log` VALUES (831, '查询商品单位信息', '2021-09-01 21:53:18', '查询操作', 1);
INSERT INTO `t_log` VALUES (832, '查询商品类别信息', '2021-09-01 21:53:19', '查询操作', 1);
INSERT INTO `t_log` VALUES (833, '查询商品信息', '2021-09-01 21:53:19', '查询操作', 1);
INSERT INTO `t_log` VALUES (834, '查询商品单位信息', '2021-09-01 21:53:19', '查询操作', 1);
INSERT INTO `t_log` VALUES (835, '查询商品信息', '2021-09-01 21:53:22', '查询操作', 1);
INSERT INTO `t_log` VALUES (836, '查询商品信息', '2021-09-01 21:53:23', '查询操作', 1);
INSERT INTO `t_log` VALUES (837, '更新商品信息[id=32, code=0023, name=台湾进口膨化零食品张君雅小妹妹日式串烧丸子80g*2, model=80g*2, unit=袋, purchasingPrice=7.0, sellingPrice=15.0, inventoryQuantity=0, minNum=1000, producer=cc, remarks=]', '2021-09-01 21:53:48', '更新操作', 1);
INSERT INTO `t_log` VALUES (838, '查询商品信息', '2021-09-01 21:53:48', '查询操作', 1);
INSERT INTO `t_log` VALUES (839, '查询商品库存信息', '2021-09-01 21:53:55', '查询操作', 1);
INSERT INTO `t_log` VALUES (840, '查询商品信息', '2021-09-01 21:53:57', '查询操作', 1);
INSERT INTO `t_log` VALUES (841, '查询商品单位信息', '2021-09-01 21:53:57', '查询操作', 1);
INSERT INTO `t_log` VALUES (842, '查询商品类别信息', '2021-09-01 21:53:57', '查询操作', 1);
INSERT INTO `t_log` VALUES (843, '查询商品信息', '2021-09-01 21:53:57', '查询操作', 1);
INSERT INTO `t_log` VALUES (844, '查询商品单位信息', '2021-09-01 21:53:57', '查询操作', 1);
INSERT INTO `t_log` VALUES (845, '查询商品信息', '2021-09-01 21:54:06', '查询操作', 1);
INSERT INTO `t_log` VALUES (846, '查询商品信息', '2021-09-01 21:54:15', '查询操作', 1);
INSERT INTO `t_log` VALUES (847, '查询商品信息', '2021-09-01 21:54:16', '查询操作', 1);
INSERT INTO `t_log` VALUES (848, '查询商品信息', '2021-09-01 21:54:22', '查询操作', 1);
INSERT INTO `t_log` VALUES (849, '更新商品信息[id=12, code=0004, name=新疆红枣, model=2斤装, unit=袋, purchasingPrice=5.0, sellingPrice=25.0, inventoryQuantity=0, minNum=300, producer=沧州铭鑫食品有限公司, remarks=好吃]', '2021-09-01 21:54:32', '更新操作', 1);
INSERT INTO `t_log` VALUES (850, '查询商品信息', '2021-09-01 21:54:32', '查询操作', 1);
INSERT INTO `t_log` VALUES (851, '删除商品信息[id=12, code=0004, name=新疆红枣, model=2斤装, unit=袋, purchasingPrice=5.0, sellingPrice=25.0, inventoryQuantity=0, minNum=300, producer=沧州铭鑫食品有限公司, remarks=好吃]', '2021-09-01 21:54:49', '删除操作', 1);
INSERT INTO `t_log` VALUES (852, '查询商品信息', '2021-09-01 21:54:49', '查询操作', 1);
INSERT INTO `t_log` VALUES (853, '查询商品信息', '2021-09-01 21:54:59', '查询操作', 1);
INSERT INTO `t_log` VALUES (854, '查询商品信息', '2021-09-01 21:55:06', '查询操作', 1);
INSERT INTO `t_log` VALUES (855, '查询商品信息', '2021-09-01 21:55:07', '查询操作', 1);
INSERT INTO `t_log` VALUES (856, '查询商品信息', '2021-09-01 21:55:07', '查询操作', 1);
INSERT INTO `t_log` VALUES (857, '查询商品信息', '2021-09-01 21:55:08', '查询操作', 1);
INSERT INTO `t_log` VALUES (858, '查询商品信息', '2021-09-01 21:55:08', '查询操作', 1);
INSERT INTO `t_log` VALUES (859, '查询商品信息', '2021-09-01 21:55:09', '查询操作', 1);
INSERT INTO `t_log` VALUES (860, '查询商品信息', '2021-09-01 21:55:10', '查询操作', 1);
INSERT INTO `t_log` VALUES (861, '查询商品信息', '2021-09-01 21:55:10', '查询操作', 1);
INSERT INTO `t_log` VALUES (862, '查询商品信息', '2021-09-01 21:55:11', '查询操作', 1);
INSERT INTO `t_log` VALUES (863, '查询商品信息', '2021-09-01 21:55:11', '查询操作', 1);
INSERT INTO `t_log` VALUES (864, '查询商品信息', '2021-09-01 21:55:12', '查询操作', 1);
INSERT INTO `t_log` VALUES (865, '查询商品信息', '2021-09-01 21:55:12', '查询操作', 1);
INSERT INTO `t_log` VALUES (866, '查询客户信息', '2021-09-01 21:55:20', '查询操作', 1);
INSERT INTO `t_log` VALUES (867, '查询供应商信息', '2021-09-01 21:55:29', '查询操作', 1);
INSERT INTO `t_log` VALUES (868, '查询供应商信息', '2021-09-01 21:55:29', '查询操作', 1);
INSERT INTO `t_log` VALUES (869, '查询供应商信息', '2021-09-01 21:55:41', '查询操作', 1);
INSERT INTO `t_log` VALUES (870, '删除供应商信息[id=1, name=上海福桂食品有限公司, contact=小张, number=0773-7217175, address=上海市金山区张堰镇松金公路2072号6607室, remarks=失信供应商]', '2021-09-01 21:55:50', '删除操作', 1);
INSERT INTO `t_log` VALUES (871, '查询商品库存信息', '2021-09-01 21:55:54', '查询操作', 1);
INSERT INTO `t_log` VALUES (872, '查询供应商信息', '2021-09-01 21:55:55', '查询操作', 1);
INSERT INTO `t_log` VALUES (873, '查询供应商信息', '2021-09-01 21:55:55', '查询操作', 1);
INSERT INTO `t_log` VALUES (874, '更新供应商信息[id=1, name=上海福桂食品有限公司, contact=aaaa, number=0773-7217175, address=上海市金山区张堰镇松金公路2072号6607室, remarks=失信供应商]', '2021-09-01 21:56:12', '更新操作', 1);
INSERT INTO `t_log` VALUES (875, '查询供应商信息', '2021-09-01 21:56:12', '查询操作', 1);
INSERT INTO `t_log` VALUES (876, '删除供应商信息[id=1, name=上海福桂食品有限公司, contact=aaaa, number=0773-7217175, address=上海市金山区张堰镇松金公路2072号6607室, remarks=失信供应商]', '2021-09-01 21:56:21', '删除操作', 1);
INSERT INTO `t_log` VALUES (877, '查询商品库存信息', '2021-09-01 21:56:25', '查询操作', 1);
INSERT INTO `t_log` VALUES (878, '查询供应商信息', '2021-09-01 21:56:26', '查询操作', 1);
INSERT INTO `t_log` VALUES (879, '查询供应商信息', '2021-09-01 21:56:26', '查询操作', 1);
INSERT INTO `t_log` VALUES (880, '添加供应商信息[id=null, name=wwww, contact=ee, number=w, address=ww, remarks=]', '2021-09-01 21:56:41', '添加操作', 1);
INSERT INTO `t_log` VALUES (882, '查询供应商信息', '2021-09-01 21:56:41', '查询操作', 1);
INSERT INTO `t_log` VALUES (883, '查询商品库存信息', '2021-09-01 21:56:45', '查询操作', 1);
INSERT INTO `t_log` VALUES (884, '查询供应商信息', '2021-09-01 21:56:47', '查询操作', 1);
INSERT INTO `t_log` VALUES (885, '查询供应商信息', '2021-09-01 21:56:47', '查询操作', 1);
INSERT INTO `t_log` VALUES (886, '查询角色信息', '2021-09-01 21:57:11', '查询操作', 1);
INSERT INTO `t_log` VALUES (887, '查询角色信息', '2021-09-01 21:57:12', '查询操作', 1);
INSERT INTO `t_log` VALUES (888, '添加角色信息[id=null, name=部长, remarks=1]', '2021-09-01 21:57:26', '添加操作', 1);
INSERT INTO `t_log` VALUES (890, '查询角色信息', '2021-09-01 21:57:26', '查询操作', 1);
INSERT INTO `t_log` VALUES (891, '查询角色信息', '2021-09-01 21:58:13', '查询操作', 1);
INSERT INTO `t_log` VALUES (892, '查询角色信息', '2021-09-01 21:58:16', '查询操作', 1);
INSERT INTO `t_log` VALUES (893, '查询角色信息', '2021-09-01 21:58:20', '查询操作', 1);
INSERT INTO `t_log` VALUES (894, '查询供应商信息', '2021-09-01 21:58:41', '查询操作', 1);
INSERT INTO `t_log` VALUES (895, '查询供应商信息', '2021-09-01 21:58:45', '查询操作', 1);
INSERT INTO `t_log` VALUES (896, '查询供应商信息', '2021-09-01 21:58:47', '查询操作', 1);
INSERT INTO `t_log` VALUES (897, '删除供应商信息[id=881, name=wwww, contact=ee, number=w, address=ww, remarks=]', '2021-09-01 21:58:55', '删除操作', 1);
INSERT INTO `t_log` VALUES (898, '查询供应商信息', '2021-09-01 21:58:56', '查询操作', 1);
INSERT INTO `t_log` VALUES (899, '更新供应商信息[id=801, name=内蒙古, contact=小红帽和 123, number=18561525250, address=黄岛区111, remarks=]', '2021-09-01 21:59:09', '更新操作', 1);
INSERT INTO `t_log` VALUES (900, '查询供应商信息', '2021-09-01 21:59:09', '查询操作', 1);
INSERT INTO `t_log` VALUES (901, '查询客户信息', '2021-09-01 21:59:18', '查询操作', 1);
INSERT INTO `t_log` VALUES (902, '查询供应商信息', '2021-09-01 21:59:26', '查询操作', 1);
INSERT INTO `t_log` VALUES (903, '查询商品信息', '2021-09-01 21:59:47', '查询操作', 1);
INSERT INTO `t_log` VALUES (904, '查询商品单位信息', '2021-09-01 21:59:47', '查询操作', 1);
INSERT INTO `t_log` VALUES (905, '查询商品类别信息', '2021-09-01 21:59:47', '查询操作', 1);
INSERT INTO `t_log` VALUES (906, '查询商品信息', '2021-09-01 21:59:47', '查询操作', 1);
INSERT INTO `t_log` VALUES (907, '查询商品单位信息', '2021-09-01 21:59:47', '查询操作', 1);
INSERT INTO `t_log` VALUES (908, '查询商品信息', '2021-09-01 21:59:51', '查询操作', 1);
INSERT INTO `t_log` VALUES (909, '查询商品信息', '2021-09-01 21:59:53', '查询操作', 1);
INSERT INTO `t_log` VALUES (910, '更新商品信息[id=827, code=0027, name=吃, model=红色, unit=袋, purchasingPrice=1.0, sellingPrice=11.0, inventoryQuantity=0, minNum=11, producer=华为, remarks=]', '2021-09-01 22:00:03', '更新操作', 1);
INSERT INTO `t_log` VALUES (911, '查询商品信息', '2021-09-01 22:00:03', '查询操作', 1);
INSERT INTO `t_log` VALUES (912, '删除商品信息[id=827, code=0027, name=吃, model=红色, unit=袋, purchasingPrice=1.0, sellingPrice=11.0, inventoryQuantity=0, minNum=11, producer=华为, remarks=]', '2021-09-01 22:00:11', '删除操作', 1);
INSERT INTO `t_log` VALUES (913, '查询商品信息', '2021-09-01 22:00:11', '查询操作', 1);
INSERT INTO `t_log` VALUES (914, '查询商品信息', '2021-09-01 22:00:13', '查询操作', 1);
INSERT INTO `t_log` VALUES (915, '查询商品信息', '2021-09-01 22:00:14', '查询操作', 1);
INSERT INTO `t_log` VALUES (916, '查询商品信息', '2021-09-01 22:00:18', '查询操作', 1);
INSERT INTO `t_log` VALUES (917, '查询商品信息', '2021-09-01 22:00:18', '查询操作', 1);
INSERT INTO `t_log` VALUES (918, '查询商品类别信息', '2021-09-01 22:00:39', '查询操作', 1);
INSERT INTO `t_log` VALUES (921, '添加进货单', '2021-09-01 22:00:58', '添加操作', 1);
INSERT INTO `t_log` VALUES (922, '查询商品信息', '2021-09-01 22:00:59', '查询操作', 1);
INSERT INTO `t_log` VALUES (923, '查询商品信息', '2021-09-01 22:00:59', '查询操作', 1);
INSERT INTO `t_log` VALUES (924, '查询商品类别信息', '2021-09-01 22:01:26', '查询操作', 1);
INSERT INTO `t_log` VALUES (925, '查询商品信息', '2021-09-01 22:01:40', '查询操作', 1);
INSERT INTO `t_log` VALUES (926, '查询商品信息', '2021-09-01 22:01:41', '查询操作', 1);
INSERT INTO `t_log` VALUES (927, '查询商品信息', '2021-09-01 22:01:43', '查询操作', 1);
INSERT INTO `t_log` VALUES (928, '查询商品信息', '2021-09-01 22:01:44', '查询操作', 1);
INSERT INTO `t_log` VALUES (929, '查询商品信息', '2021-09-01 22:01:47', '查询操作', 1);
INSERT INTO `t_log` VALUES (930, '查询商品信息', '2021-09-01 22:02:09', '查询操作', 1);
INSERT INTO `t_log` VALUES (931, '查询商品信息', '2021-09-01 22:02:10', '查询操作', 1);
INSERT INTO `t_log` VALUES (932, '查询商品信息', '2021-09-01 22:02:10', '查询操作', 1);
INSERT INTO `t_log` VALUES (933, '查询商品信息', '2021-09-01 22:02:13', '查询操作', 1);
INSERT INTO `t_log` VALUES (934, '查询商品信息', '2021-09-01 22:02:14', '查询操作', 1);
INSERT INTO `t_log` VALUES (935, '查询商品类别信息', '2021-09-01 22:02:45', '查询操作', 1);
INSERT INTO `t_log` VALUES (936, '查询商品信息', '2021-09-01 22:02:52', '查询操作', 1);
INSERT INTO `t_log` VALUES (937, '查询商品信息', '2021-09-01 22:02:55', '查询操作', 1);
INSERT INTO `t_log` VALUES (938, '查询商品信息', '2021-09-01 22:03:49', '查询操作', 1);
INSERT INTO `t_log` VALUES (939, '查询商品信息', '2021-09-01 22:05:27', '查询操作', 1);
INSERT INTO `t_log` VALUES (940, '查询商品信息', '2021-09-01 22:05:27', '查询操作', 1);
INSERT INTO `t_log` VALUES (941, '查询商品信息', '2021-09-01 22:05:27', '查询操作', 1);
INSERT INTO `t_log` VALUES (942, '查询商品信息', '2021-09-01 22:05:27', '查询操作', 1);
INSERT INTO `t_log` VALUES (943, '查询商品信息', '2021-09-01 22:05:29', '查询操作', 1);
INSERT INTO `t_log` VALUES (944, '查询商品信息', '2021-09-01 22:05:29', '查询操作', 1);
INSERT INTO `t_log` VALUES (945, '查询商品信息', '2021-09-01 22:05:29', '查询操作', 1);
INSERT INTO `t_log` VALUES (946, '查询商品信息', '2021-09-01 22:05:29', '查询操作', 1);
INSERT INTO `t_log` VALUES (947, '查询商品库存信息', '2021-09-01 22:05:35', '查询操作', 1);
INSERT INTO `t_log` VALUES (948, '用户注销', '2021-09-01 22:10:11', '注销操作', 1);
INSERT INTO `t_log` VALUES (949, '用户登录', '2021-09-01 22:10:15', '登录操作', 3);
INSERT INTO `t_log` VALUES (950, '查询商品库存信息', '2021-09-01 22:10:31', '查询操作', 3);
INSERT INTO `t_log` VALUES (951, '用户登录', '2021-09-01 22:12:12', '登录操作', 1);
INSERT INTO `t_log` VALUES (952, '查询商品库存信息', '2021-09-01 22:12:12', '查询操作', 1);
INSERT INTO `t_log` VALUES (953, '查询供应商信息', '2021-09-01 22:23:37', '查询操作', 1);
INSERT INTO `t_log` VALUES (954, '查询供应商信息', '2021-09-01 22:23:37', '查询操作', 1);
INSERT INTO `t_log` VALUES (955, '查询商品信息', '2021-09-01 22:23:50', '查询操作', 1);
INSERT INTO `t_log` VALUES (956, '查询商品信息', '2021-09-01 22:23:50', '查询操作', 1);
INSERT INTO `t_log` VALUES (957, '查询商品信息', '2021-09-01 22:25:02', '查询操作', 1);
INSERT INTO `t_log` VALUES (958, '查询商品信息', '2021-09-01 22:25:02', '查询操作', 1);
INSERT INTO `t_log` VALUES (959, '查询商品信息', '2021-09-01 22:25:05', '查询操作', 1);
INSERT INTO `t_log` VALUES (960, '查询商品信息', '2021-09-01 22:25:05', '查询操作', 1);
INSERT INTO `t_log` VALUES (961, '查询商品信息', '2021-09-01 22:32:09', '查询操作', 1);
INSERT INTO `t_log` VALUES (962, '查询商品信息', '2021-09-01 22:32:09', '查询操作', 1);
INSERT INTO `t_log` VALUES (963, '查询商品信息', '2021-09-01 22:32:10', '查询操作', 1);
INSERT INTO `t_log` VALUES (964, '查询商品信息', '2021-09-01 22:32:10', '查询操作', 1);
INSERT INTO `t_log` VALUES (965, '查询商品信息', '2021-09-01 22:32:27', '查询操作', 1);
INSERT INTO `t_log` VALUES (966, '查询商品信息', '2021-09-01 22:32:27', '查询操作', 1);
INSERT INTO `t_log` VALUES (967, '查询商品信息', '2021-09-01 22:32:28', '查询操作', 1);
INSERT INTO `t_log` VALUES (968, '查询商品信息', '2021-09-01 22:32:28', '查询操作', 1);
INSERT INTO `t_log` VALUES (969, '查询商品信息', '2021-09-01 22:32:36', '查询操作', 1);
INSERT INTO `t_log` VALUES (970, '查询商品信息', '2021-09-01 22:32:36', '查询操作', 1);
INSERT INTO `t_log` VALUES (971, '查询商品信息', '2021-09-01 22:32:38', '查询操作', 1);
INSERT INTO `t_log` VALUES (972, '查询商品信息', '2021-09-01 22:32:38', '查询操作', 1);
INSERT INTO `t_log` VALUES (973, '查询客户信息', '2021-09-01 22:32:42', '查询操作', 1);
INSERT INTO `t_log` VALUES (974, '用户登录', '2021-09-01 22:34:34', '登录操作', 3);
INSERT INTO `t_log` VALUES (975, '查询商品库存信息', '2021-09-01 22:34:36', '查询操作', 3);
INSERT INTO `t_log` VALUES (976, '查询商品信息', '2021-09-01 22:34:39', '查询操作', 3);
INSERT INTO `t_log` VALUES (977, '查询商品信息', '2021-09-01 22:34:39', '查询操作', 3);
INSERT INTO `t_log` VALUES (978, '查询商品信息', '2021-09-01 22:34:39', '查询操作', 3);
INSERT INTO `t_log` VALUES (979, '查询商品信息', '2021-09-01 22:34:39', '查询操作', 3);
INSERT INTO `t_log` VALUES (980, '用户登录', '2021-09-01 22:34:44', '登录操作', 1);
INSERT INTO `t_log` VALUES (981, '查询商品库存信息', '2021-09-01 22:34:45', '查询操作', 1);
INSERT INTO `t_log` VALUES (982, '查询商品信息', '2021-09-01 22:34:47', '查询操作', 1);
INSERT INTO `t_log` VALUES (983, '查询商品信息', '2021-09-01 22:34:47', '查询操作', 1);
INSERT INTO `t_log` VALUES (984, '查询商品信息', '2021-09-01 22:34:47', '查询操作', 1);
INSERT INTO `t_log` VALUES (985, '查询商品信息', '2021-09-01 22:34:47', '查询操作', 1);
INSERT INTO `t_log` VALUES (986, '查询供应商信息', '2021-09-01 22:34:55', '查询操作', 1);
INSERT INTO `t_log` VALUES (987, '查询供应商信息', '2021-09-01 22:34:55', '查询操作', 1);
INSERT INTO `t_log` VALUES (988, '查询客户信息', '2021-09-01 22:34:56', '查询操作', 1);
INSERT INTO `t_log` VALUES (989, '用户登录', '2021-09-01 22:40:34', '登录操作', 1);
INSERT INTO `t_log` VALUES (990, '查询商品库存信息', '2021-09-01 22:40:35', '查询操作', 1);
INSERT INTO `t_log` VALUES (991, '查询商品库存信息', '2021-09-01 22:40:54', '查询操作', 1);
INSERT INTO `t_log` VALUES (992, '查询客户信息', '2021-09-01 22:41:31', '查询操作', 1);
INSERT INTO `t_log` VALUES (993, '查询角色信息', '2021-09-01 22:45:47', '查询操作', 1);
INSERT INTO `t_log` VALUES (994, '查询角色信息', '2021-09-01 22:45:47', '查询操作', 1);
INSERT INTO `t_log` VALUES (995, '删除角色信息[id=4, name=采购员, remarks=null]', '2021-09-01 22:45:51', '删除操作', 1);
INSERT INTO `t_log` VALUES (996, '查询角色信息', '2021-09-01 22:45:51', '查询操作', 1);
INSERT INTO `t_log` VALUES (997, '删除角色信息[id=5, name=销售经理, remarks=22]', '2021-09-01 22:45:54', '删除操作', 1);
INSERT INTO `t_log` VALUES (998, '查询角色信息', '2021-09-01 22:45:54', '查询操作', 1);
INSERT INTO `t_log` VALUES (999, '删除角色信息[id=9, name=总经理, remarks=null]', '2021-09-01 22:45:58', '删除操作', 1);
INSERT INTO `t_log` VALUES (1000, '删除角色信息[id=889, name=部长, remarks=1]', '2021-09-01 22:46:05', '删除操作', 1);
INSERT INTO `t_log` VALUES (1001, '查询角色信息', '2021-09-01 22:46:05', '查询操作', 1);
INSERT INTO `t_log` VALUES (1002, '删除角色信息[id=9, name=总经理, remarks=null]', '2021-09-01 22:46:22', '删除操作', 1);
INSERT INTO `t_log` VALUES (1003, '查询角色信息', '2021-09-01 22:46:22', '查询操作', 1);
INSERT INTO `t_log` VALUES (1004, '删除角色信息[id=2, name=主管, remarks=null]', '2021-09-01 22:46:27', '删除操作', 1);
INSERT INTO `t_log` VALUES (1005, '删除角色信息[id=2, name=主管, remarks=null]', '2021-09-01 22:46:36', '删除操作', 1);
INSERT INTO `t_log` VALUES (1006, '查询角色信息', '2021-09-01 22:46:36', '查询操作', 1);
INSERT INTO `t_log` VALUES (1037, '保存角色权限设置', '2021-09-01 22:47:46', '添加操作', 1);
INSERT INTO `t_log` VALUES (1061, '保存角色权限设置', '2021-09-01 22:48:56', '添加操作', 1);
INSERT INTO `t_log` VALUES (1095, '保存角色权限设置', '2021-09-01 22:49:02', '添加操作', 1);
INSERT INTO `t_log` VALUES (1096, '查询用户信息', '2021-09-01 22:49:07', '查询操作', 1);
INSERT INTO `t_log` VALUES (1097, '查询用户信息', '2021-09-01 22:49:07', '查询操作', 1);
INSERT INTO `t_log` VALUES (1098, '查询所有角色信息', '2021-09-01 22:49:09', '查询操作', 1);
INSERT INTO `t_log` VALUES (1100, '保存用户角色设置', '2021-09-01 22:49:12', '更新操作', 1);
INSERT INTO `t_log` VALUES (1101, '查询用户信息', '2021-09-01 22:49:12', '查询操作', 1);
INSERT INTO `t_log` VALUES (1102, '查询所有角色信息', '2021-09-01 22:49:13', '查询操作', 1);
INSERT INTO `t_log` VALUES (1104, '保存用户角色设置', '2021-09-01 22:49:15', '更新操作', 1);
INSERT INTO `t_log` VALUES (1105, '查询用户信息', '2021-09-01 22:49:15', '查询操作', 1);
INSERT INTO `t_log` VALUES (1106, '用户注销', '2021-09-01 22:49:22', '注销操作', 1);
INSERT INTO `t_log` VALUES (1107, '用户登录', '2021-09-01 22:49:24', '登录操作', 2);
INSERT INTO `t_log` VALUES (1108, '查询商品库存信息', '2021-09-01 22:49:24', '查询操作', 2);
INSERT INTO `t_log` VALUES (1109, '用户注销', '2021-09-01 22:49:31', '注销操作', 2);
INSERT INTO `t_log` VALUES (1110, '用户登录', '2021-09-01 22:49:33', '登录操作', 3);
INSERT INTO `t_log` VALUES (1111, '查询商品库存信息', '2021-09-01 22:49:34', '查询操作', 3);
INSERT INTO `t_log` VALUES (1112, '用户注销', '2021-09-01 22:49:48', '注销操作', 3);
INSERT INTO `t_log` VALUES (1113, '用户登录', '2021-09-01 22:49:51', '登录操作', 2);
INSERT INTO `t_log` VALUES (1114, '查询商品库存信息', '2021-09-01 22:49:51', '查询操作', 2);
INSERT INTO `t_log` VALUES (1115, '用户注销', '2021-09-01 22:50:06', '注销操作', 2);
INSERT INTO `t_log` VALUES (1116, '用户登录', '2021-09-01 22:50:08', '登录操作', 1);
INSERT INTO `t_log` VALUES (1117, '查询商品库存信息', '2021-09-01 22:50:08', '查询操作', 1);
INSERT INTO `t_log` VALUES (1118, '查询角色信息', '2021-09-01 22:50:10', '查询操作', 1);
INSERT INTO `t_log` VALUES (1119, '查询角色信息', '2021-09-01 22:50:10', '查询操作', 1);
INSERT INTO `t_log` VALUES (1120, '查询商品信息', '2021-09-01 22:54:02', '查询操作', 1);
INSERT INTO `t_log` VALUES (1121, '查询商品信息', '2021-09-01 22:54:02', '查询操作', 1);
INSERT INTO `t_log` VALUES (1122, '查询用户信息', '2021-09-01 22:54:22', '查询操作', 1);
INSERT INTO `t_log` VALUES (1123, '查询用户信息', '2021-09-01 22:54:23', '查询操作', 1);
INSERT INTO `t_log` VALUES (1124, '查询所有角色信息', '2021-09-01 22:54:26', '查询操作', 1);
INSERT INTO `t_log` VALUES (1154, '保存角色权限设置', '2021-09-01 22:54:43', '添加操作', 1);
INSERT INTO `t_log` VALUES (1155, '用户注销', '2021-09-01 22:54:48', '注销操作', 1);
INSERT INTO `t_log` VALUES (1156, '用户登录', '2021-09-01 22:54:50', '登录操作', 3);
INSERT INTO `t_log` VALUES (1157, '查询商品库存信息', '2021-09-01 22:54:50', '查询操作', 3);
INSERT INTO `t_log` VALUES (1158, '查询商品信息', '2021-09-01 22:55:55', '查询操作', 3);
INSERT INTO `t_log` VALUES (1159, '查询商品信息', '2021-09-01 22:55:55', '查询操作', 3);
INSERT INTO `t_log` VALUES (1160, '用户注销', '2021-09-01 22:55:59', '注销操作', 3);
INSERT INTO `t_log` VALUES (1161, '用户登录', '2021-09-01 22:56:02', '登录操作', 1);
INSERT INTO `t_log` VALUES (1162, '查询商品库存信息', '2021-09-01 22:56:02', '查询操作', 1);
INSERT INTO `t_log` VALUES (1163, '查询供应商信息', '2021-09-01 22:56:09', '查询操作', 1);
INSERT INTO `t_log` VALUES (1164, '查询供应商信息', '2021-09-01 22:56:09', '查询操作', 1);
INSERT INTO `t_log` VALUES (1165, '查询商品信息', '2021-09-01 22:57:05', '查询操作', 1);
INSERT INTO `t_log` VALUES (1166, '查询商品信息', '2021-09-01 22:57:05', '查询操作', 1);
INSERT INTO `t_log` VALUES (1167, '查询客户信息', '2021-09-01 22:57:14', '查询操作', 1);
INSERT INTO `t_log` VALUES (1168, '查询商品信息', '2021-09-01 22:58:20', '查询操作', 1);
INSERT INTO `t_log` VALUES (1169, '查询商品信息', '2021-09-01 22:58:20', '查询操作', 1);
INSERT INTO `t_log` VALUES (1170, '查询商品信息', '2021-09-01 22:58:21', '查询操作', 1);
INSERT INTO `t_log` VALUES (1171, '查询商品信息', '2021-09-01 22:58:21', '查询操作', 1);
INSERT INTO `t_log` VALUES (1172, '查询商品信息', '2021-09-01 22:58:22', '查询操作', 1);
INSERT INTO `t_log` VALUES (1173, '查询商品信息', '2021-09-01 22:58:22', '查询操作', 1);
INSERT INTO `t_log` VALUES (1174, '查询商品库存信息', '2021-09-01 22:58:25', '查询操作', 1);
INSERT INTO `t_log` VALUES (1175, '查询商品信息', '2021-09-01 22:58:45', '查询操作', 1);
INSERT INTO `t_log` VALUES (1176, '查询商品信息', '2021-09-01 22:58:45', '查询操作', 1);
INSERT INTO `t_log` VALUES (1177, '查询客户信息', '2021-09-01 22:59:07', '查询操作', 1);
INSERT INTO `t_log` VALUES (1178, '查询商品库存信息', '2021-09-01 23:05:50', '查询操作', 1);
INSERT INTO `t_log` VALUES (1179, '查询角色信息', '2021-09-01 23:14:07', '查询操作', 1);
INSERT INTO `t_log` VALUES (1180, '查询角色信息', '2021-09-01 23:14:07', '查询操作', 1);
INSERT INTO `t_log` VALUES (1181, '更新角色信息[id=530, name=经理, remarks=]', '2021-09-01 23:14:14', '更新操作', 1);
INSERT INTO `t_log` VALUES (1182, '查询角色信息', '2021-09-01 23:14:14', '查询操作', 1);
INSERT INTO `t_log` VALUES (1183, '查询用户信息', '2021-09-01 23:14:24', '查询操作', 1);
INSERT INTO `t_log` VALUES (1184, '查询用户信息', '2021-09-01 23:14:24', '查询操作', 1);
INSERT INTO `t_log` VALUES (1185, '查询商品信息', '2021-09-01 23:14:32', '查询操作', 1);
INSERT INTO `t_log` VALUES (1186, '查询商品信息', '2021-09-01 23:14:32', '查询操作', 1);
INSERT INTO `t_log` VALUES (1187, '用户登录', '2021-09-12 08:42:05', '登录操作', 1);
INSERT INTO `t_log` VALUES (1188, '查询商品库存信息', '2021-09-12 08:42:06', '查询操作', 1);
INSERT INTO `t_log` VALUES (1189, '查询商品信息', '2021-09-12 08:42:11', '查询操作', 1);
INSERT INTO `t_log` VALUES (1190, '查询商品信息', '2021-09-12 08:42:11', '查询操作', 1);
INSERT INTO `t_log` VALUES (1191, '查询商品信息', '2021-09-12 08:42:16', '查询操作', 1);
INSERT INTO `t_log` VALUES (1192, '查询商品信息', '2021-09-12 08:42:16', '查询操作', 1);
INSERT INTO `t_log` VALUES (1193, '查询商品信息', '2021-09-12 08:55:22', '查询操作', 1);
INSERT INTO `t_log` VALUES (1194, '查询商品信息', '2021-09-12 08:55:22', '查询操作', 1);
INSERT INTO `t_log` VALUES (1195, '查询商品类别信息', '2021-09-12 08:55:24', '查询操作', 1);
INSERT INTO `t_log` VALUES (1196, '查询商品类别信息', '2021-09-12 08:55:36', '查询操作', 1);
INSERT INTO `t_log` VALUES (1197, '查询商品库存信息', '2021-09-12 09:01:33', '查询操作', 1);
INSERT INTO `t_log` VALUES (1198, '查询商品信息', '2021-09-12 09:01:34', '查询操作', 1);
INSERT INTO `t_log` VALUES (1199, '查询商品信息', '2021-09-12 09:01:34', '查询操作', 1);
INSERT INTO `t_log` VALUES (1200, '查询商品类别信息', '2021-09-12 09:01:37', '查询操作', 1);
INSERT INTO `t_log` VALUES (1201, '查询商品信息', '2021-09-12 09:02:16', '查询操作', 1);
INSERT INTO `t_log` VALUES (1202, '查询商品信息', '2021-09-12 09:03:43', '查询操作', 1);
INSERT INTO `t_log` VALUES (1203, '查询商品信息', '2021-09-12 09:03:43', '查询操作', 1);
INSERT INTO `t_log` VALUES (1204, '删除商品类别信息[id=7, name=男士西装, state=0, icon=icon-folder, pId=2]', '2021-09-12 09:04:38', '删除操作', 1);
INSERT INTO `t_log` VALUES (1205, '删除商品类别信息[id=7, name=男士西装, state=0, icon=icon-folder, pId=2]', '2021-09-12 09:04:39', '删除操作', 1);
INSERT INTO `t_log` VALUES (1206, '查询商品信息', '2021-09-12 09:04:43', '查询操作', 1);
INSERT INTO `t_log` VALUES (1207, '查询商品信息', '2021-09-12 09:04:45', '查询操作', 1);
INSERT INTO `t_log` VALUES (1208, '查询商品信息', '2021-09-12 09:04:47', '查询操作', 1);
INSERT INTO `t_log` VALUES (1209, '删除商品类别信息[id=13, name=洗衣机, state=0, icon=icon-folder, pId=4]', '2021-09-12 09:04:49', '删除操作', 1);
INSERT INTO `t_log` VALUES (1210, '查询商品信息', '2021-09-12 09:04:51', '查询操作', 1);
INSERT INTO `t_log` VALUES (1211, '删除商品类别信息[id=14, name=冰箱, state=0, icon=icon-folder, pId=4]', '2021-09-12 09:04:51', '删除操作', 1);
INSERT INTO `t_log` VALUES (1212, '删除商品类别信息[id=14, name=冰箱, state=0, icon=icon-folder, pId=4]', '2021-09-12 09:04:52', '删除操作', 1);
INSERT INTO `t_log` VALUES (1213, '删除商品类别信息[id=14, name=冰箱, state=0, icon=icon-folder, pId=4]', '2021-09-12 09:04:52', '删除操作', 1);
INSERT INTO `t_log` VALUES (1214, '删除商品类别信息[id=14, name=冰箱, state=0, icon=icon-folder, pId=4]', '2021-09-12 09:04:54', '删除操作', 1);
INSERT INTO `t_log` VALUES (1215, '查询商品信息', '2021-09-12 09:07:53', '查询操作', 1);
INSERT INTO `t_log` VALUES (1216, '查询商品信息', '2021-09-12 09:07:53', '查询操作', 1);
INSERT INTO `t_log` VALUES (1217, '查询商品信息', '2021-09-12 09:07:54', '查询操作', 1);
INSERT INTO `t_log` VALUES (1218, '查询商品信息', '2021-09-12 09:11:06', '查询操作', 1);
INSERT INTO `t_log` VALUES (1219, '查询商品信息', '2021-09-12 09:11:13', '查询操作', 1);
INSERT INTO `t_log` VALUES (1220, '查询商品类别信息', '2021-09-12 09:12:00', '查询操作', 1);
INSERT INTO `t_log` VALUES (1221, '查询商品信息', '2021-09-12 09:13:13', '查询操作', 1);
INSERT INTO `t_log` VALUES (1222, '查询商品信息', '2021-09-12 09:13:15', '查询操作', 1);
INSERT INTO `t_log` VALUES (1223, '查询商品信息', '2021-09-12 09:13:33', '查询操作', 1);
INSERT INTO `t_log` VALUES (1224, '查询商品信息', '2021-09-12 09:13:33', '查询操作', 1);
INSERT INTO `t_log` VALUES (1225, '用户登录', '2021-09-12 19:48:32', '登录操作', 1);
INSERT INTO `t_log` VALUES (1226, '查询商品库存信息', '2021-09-12 19:48:32', '查询操作', 1);
INSERT INTO `t_log` VALUES (1227, '查询商品库存信息', '2021-09-12 19:49:03', '查询操作', 1);
INSERT INTO `t_log` VALUES (1228, '查询商品库存信息', '2021-09-12 19:52:02', '查询操作', 1);
INSERT INTO `t_log` VALUES (1229, '查询供应商信息', '2021-09-12 19:52:46', '查询操作', 1);
INSERT INTO `t_log` VALUES (1230, '查询供应商信息', '2021-09-12 19:52:46', '查询操作', 1);
INSERT INTO `t_log` VALUES (1231, '查询客户信息', '2021-09-12 19:52:49', '查询操作', 1);
INSERT INTO `t_log` VALUES (1232, '查询商品信息', '2021-09-12 19:52:51', '查询操作', 1);
INSERT INTO `t_log` VALUES (1233, '查询商品单位信息', '2021-09-12 19:52:51', '查询操作', 1);
INSERT INTO `t_log` VALUES (1234, '查询商品类别信息', '2021-09-12 19:52:51', '查询操作', 1);
INSERT INTO `t_log` VALUES (1235, '查询商品信息', '2021-09-12 19:52:51', '查询操作', 1);
INSERT INTO `t_log` VALUES (1236, '查询商品单位信息', '2021-09-12 19:52:51', '查询操作', 1);
INSERT INTO `t_log` VALUES (1237, '查询商品信息', '2021-09-12 19:57:15', '查询操作', 1);
INSERT INTO `t_log` VALUES (1238, '查询商品信息', '2021-09-12 19:57:15', '查询操作', 1);
INSERT INTO `t_log` VALUES (1239, '查询商品库存信息', '2021-09-12 19:57:25', '查询操作', 1);
INSERT INTO `t_log` VALUES (1240, '查询商品库存信息', '2021-09-12 19:57:49', '查询操作', 1);
INSERT INTO `t_log` VALUES (1241, '查询商品信息', '2021-09-12 19:57:52', '查询操作', 1);
INSERT INTO `t_log` VALUES (1242, '查询商品信息', '2021-09-12 19:57:52', '查询操作', 1);
INSERT INTO `t_log` VALUES (1243, '查询商品信息', '2021-09-12 19:57:55', '查询操作', 1);
INSERT INTO `t_log` VALUES (1244, '查询商品信息', '2021-09-12 19:57:55', '查询操作', 1);
INSERT INTO `t_log` VALUES (1245, '查询商品库存信息', '2021-09-12 19:58:11', '查询操作', 1);
INSERT INTO `t_log` VALUES (1246, '查询商品信息', '2021-09-12 19:58:15', '查询操作', 1);
INSERT INTO `t_log` VALUES (1247, '查询商品信息', '2021-09-12 19:58:15', '查询操作', 1);
INSERT INTO `t_log` VALUES (1248, '查询商品信息', '2021-09-12 19:58:17', '查询操作', 1);
INSERT INTO `t_log` VALUES (1249, '查询商品信息', '2021-09-12 19:58:17', '查询操作', 1);
INSERT INTO `t_log` VALUES (1250, '查询商品信息', '2021-09-12 19:58:20', '查询操作', 1);
INSERT INTO `t_log` VALUES (1251, '查询商品信息', '2021-09-12 19:58:20', '查询操作', 1);
INSERT INTO `t_log` VALUES (1252, '查询商品信息', '2021-09-12 19:58:28', '查询操作', 1);
INSERT INTO `t_log` VALUES (1253, '查询商品信息', '2021-09-12 19:58:28', '查询操作', 1);
INSERT INTO `t_log` VALUES (1254, '查询商品类别信息', '2021-09-12 19:58:47', '查询操作', 1);
INSERT INTO `t_log` VALUES (1255, '查询商品库存信息', '2021-09-12 19:58:54', '查询操作', 1);
INSERT INTO `t_log` VALUES (1256, '查询商品信息', '2021-09-12 19:58:57', '查询操作', 1);
INSERT INTO `t_log` VALUES (1257, '查询商品信息', '2021-09-12 19:58:57', '查询操作', 1);
INSERT INTO `t_log` VALUES (1258, '查询商品类别信息', '2021-09-12 19:59:13', '查询操作', 1);
INSERT INTO `t_log` VALUES (1259, '查询商品信息', '2021-09-12 19:59:20', '查询操作', 1);
INSERT INTO `t_log` VALUES (1260, '查询商品信息', '2021-09-12 19:59:21', '查询操作', 1);
INSERT INTO `t_log` VALUES (1261, '查询商品信息', '2021-09-12 19:59:23', '查询操作', 1);
INSERT INTO `t_log` VALUES (1262, '查询商品信息', '2021-09-12 19:59:24', '查询操作', 1);
INSERT INTO `t_log` VALUES (1263, '查询商品信息', '2021-09-12 19:59:25', '查询操作', 1);
INSERT INTO `t_log` VALUES (1264, '查询商品信息', '2021-09-12 19:59:26', '查询操作', 1);
INSERT INTO `t_log` VALUES (1265, '查询商品信息', '2021-09-12 19:59:26', '查询操作', 1);
INSERT INTO `t_log` VALUES (1266, '查询商品信息', '2021-09-12 19:59:27', '查询操作', 1);
INSERT INTO `t_log` VALUES (1267, '查询商品信息', '2021-09-12 19:59:27', '查询操作', 1);
INSERT INTO `t_log` VALUES (1268, '查询商品信息', '2021-09-12 19:59:28', '查询操作', 1);
INSERT INTO `t_log` VALUES (1269, '查询商品信息', '2021-09-12 20:02:48', '查询操作', 1);
INSERT INTO `t_log` VALUES (1270, '查询商品信息', '2021-09-12 20:02:48', '查询操作', 1);
INSERT INTO `t_log` VALUES (1271, '查询商品库存信息', '2021-09-12 20:02:51', '查询操作', 1);
INSERT INTO `t_log` VALUES (1272, '查询商品信息', '2021-09-12 20:02:53', '查询操作', 1);
INSERT INTO `t_log` VALUES (1273, '查询商品信息', '2021-09-12 20:02:53', '查询操作', 1);
INSERT INTO `t_log` VALUES (1274, '查询商品类别信息', '2021-09-12 20:03:02', '查询操作', 1);
INSERT INTO `t_log` VALUES (1275, '查询商品类别信息', '2021-09-12 20:03:33', '查询操作', 1);
INSERT INTO `t_log` VALUES (1276, '查询商品信息', '2021-09-12 20:03:34', '查询操作', 1);
INSERT INTO `t_log` VALUES (1277, '查询商品信息', '2021-09-12 20:03:35', '查询操作', 1);
INSERT INTO `t_log` VALUES (1278, '查询商品信息', '2021-09-12 20:03:36', '查询操作', 1);
INSERT INTO `t_log` VALUES (1279, '查询商品信息', '2021-09-12 20:03:37', '查询操作', 1);
INSERT INTO `t_log` VALUES (1280, '查询商品信息', '2021-09-12 20:03:37', '查询操作', 1);
INSERT INTO `t_log` VALUES (1281, '查询商品信息', '2021-09-12 20:04:06', '查询操作', 1);
INSERT INTO `t_log` VALUES (1282, '用户登录', '2021-09-14 09:08:09', '登录操作', 1);
INSERT INTO `t_log` VALUES (1283, '查询商品库存信息', '2021-09-14 09:08:10', '查询操作', 1);
INSERT INTO `t_log` VALUES (1284, '查询供应商信息', '2021-09-14 09:08:16', '查询操作', 1);
INSERT INTO `t_log` VALUES (1285, '查询供应商信息', '2021-09-14 09:08:16', '查询操作', 1);
INSERT INTO `t_log` VALUES (1286, '删除供应商信息[id=9, name=深圳昌信实业有限公司, contact=小蔡, number=1773-7217175, address=深圳市罗湖区翠竹北路中深石化区厂房B栋6楼, remarks=null]', '2021-09-14 09:17:42', '删除操作', 1);
INSERT INTO `t_log` VALUES (1287, '查询供应商信息', '2021-09-14 09:17:42', '查询操作', 1);
INSERT INTO `t_log` VALUES (1288, '查询供应商信息', '2021-09-14 09:18:03', '查询操作', 1);
INSERT INTO `t_log` VALUES (1289, '删除供应商信息[id=794, name=qq q, contact=xiaoiao, number=18561525250, address=黄岛区, remarks=sas]', '2021-09-14 09:18:10', '删除操作', 1);
INSERT INTO `t_log` VALUES (1290, '查询供应商信息', '2021-09-14 09:18:10', '查询操作', 1);
INSERT INTO `t_log` VALUES (1291, '查询商品信息', '2021-09-14 09:18:20', '查询操作', 1);
INSERT INTO `t_log` VALUES (1292, '查询商品信息', '2021-09-14 09:18:20', '查询操作', 1);
INSERT INTO `t_log` VALUES (1293, '查询客户信息', '2021-09-14 09:18:21', '查询操作', 1);
INSERT INTO `t_log` VALUES (1294, '查询商品信息', '2021-09-14 09:19:49', '查询操作', 1);
INSERT INTO `t_log` VALUES (1295, '查询商品单位信息', '2021-09-14 09:19:49', '查询操作', 1);
INSERT INTO `t_log` VALUES (1296, '查询商品类别信息', '2021-09-14 09:19:49', '查询操作', 1);
INSERT INTO `t_log` VALUES (1297, '查询商品信息', '2021-09-14 09:19:49', '查询操作', 1);
INSERT INTO `t_log` VALUES (1298, '查询商品单位信息', '2021-09-14 09:19:49', '查询操作', 1);
INSERT INTO `t_log` VALUES (1299, '查询商品库存信息', '2021-09-14 09:25:30', '查询操作', 1);
INSERT INTO `t_log` VALUES (1300, '用户登录', '2021-09-14 09:26:38', '登录操作', 1);
INSERT INTO `t_log` VALUES (1301, '查询商品库存信息', '2021-09-14 09:26:39', '查询操作', 1);
INSERT INTO `t_log` VALUES (1302, '查询客户信息', '2021-09-14 09:26:42', '查询操作', 1);
INSERT INTO `t_log` VALUES (1303, '查询供应商信息', '2021-09-14 09:28:21', '查询操作', 1);
INSERT INTO `t_log` VALUES (1304, '查询供应商信息', '2021-09-14 09:28:21', '查询操作', 1);
INSERT INTO `t_log` VALUES (1305, '用户登录', '2021-09-14 09:32:32', '登录操作', 1);
INSERT INTO `t_log` VALUES (1306, '查询商品库存信息', '2021-09-14 09:32:32', '查询操作', 1);
INSERT INTO `t_log` VALUES (1307, '查询客户信息', '2021-09-14 09:32:34', '查询操作', 1);
INSERT INTO `t_log` VALUES (1308, '用户登录', '2021-09-14 09:34:21', '登录操作', 1);
INSERT INTO `t_log` VALUES (1309, '查询商品库存信息', '2021-09-14 09:34:22', '查询操作', 1);
INSERT INTO `t_log` VALUES (1310, '查询商品信息', '2021-09-14 09:34:27', '查询操作', 1);
INSERT INTO `t_log` VALUES (1311, '查询商品单位信息', '2021-09-14 09:34:27', '查询操作', 1);
INSERT INTO `t_log` VALUES (1312, '查询商品类别信息', '2021-09-14 09:34:27', '查询操作', 1);
INSERT INTO `t_log` VALUES (1313, '查询商品信息', '2021-09-14 09:34:28', '查询操作', 1);
INSERT INTO `t_log` VALUES (1314, '查询商品单位信息', '2021-09-14 09:34:28', '查询操作', 1);
INSERT INTO `t_log` VALUES (1315, '查询客户信息', '2021-09-14 09:34:28', '查询操作', 1);
INSERT INTO `t_log` VALUES (1316, '查询商品库存信息', '2021-09-14 09:35:53', '查询操作', 1);
INSERT INTO `t_log` VALUES (1317, '查询客户信息', '2021-09-14 09:36:04', '查询操作', 1);
INSERT INTO `t_log` VALUES (1318, '用户登录', '2021-09-14 09:41:43', '登录操作', 1);
INSERT INTO `t_log` VALUES (1319, '查询商品库存信息', '2021-09-14 09:41:44', '查询操作', 1);
INSERT INTO `t_log` VALUES (1320, '查询客户信息', '2021-09-14 09:41:46', '查询操作', 1);
INSERT INTO `t_log` VALUES (1321, '用户登录', '2021-09-14 09:42:20', '登录操作', 1);
INSERT INTO `t_log` VALUES (1322, '查询商品库存信息', '2021-09-14 09:42:20', '查询操作', 1);
INSERT INTO `t_log` VALUES (1323, '查询供应商信息', '2021-09-14 09:42:22', '查询操作', 1);
INSERT INTO `t_log` VALUES (1324, '查询供应商信息', '2021-09-14 09:42:22', '查询操作', 1);
INSERT INTO `t_log` VALUES (1325, '查询客户信息', '2021-09-14 09:42:24', '查询操作', 1);
INSERT INTO `t_log` VALUES (1326, '用户登录', '2021-09-14 09:46:24', '登录操作', 1);
INSERT INTO `t_log` VALUES (1327, '查询商品库存信息', '2021-09-14 09:46:25', '查询操作', 1);
INSERT INTO `t_log` VALUES (1328, '查询商品信息', '2021-09-14 09:46:26', '查询操作', 1);
INSERT INTO `t_log` VALUES (1329, '查询商品单位信息', '2021-09-14 09:46:26', '查询操作', 1);
INSERT INTO `t_log` VALUES (1330, '查询商品类别信息', '2021-09-14 09:46:26', '查询操作', 1);
INSERT INTO `t_log` VALUES (1331, '查询商品信息', '2021-09-14 09:46:26', '查询操作', 1);
INSERT INTO `t_log` VALUES (1332, '查询商品单位信息', '2021-09-14 09:46:26', '查询操作', 1);
INSERT INTO `t_log` VALUES (1333, '查询客户信息', '2021-09-14 09:46:26', '查询操作', 1);
INSERT INTO `t_log` VALUES (1334, '查询供应商信息', '2021-09-14 09:46:29', '查询操作', 1);
INSERT INTO `t_log` VALUES (1335, '查询供应商信息', '2021-09-14 09:46:29', '查询操作', 1);
INSERT INTO `t_log` VALUES (1336, '查询客户信息', '2021-09-14 09:47:25', '查询操作', 1);
INSERT INTO `t_log` VALUES (1337, '用户登录', '2021-09-14 09:49:19', '登录操作', 1);
INSERT INTO `t_log` VALUES (1338, '查询商品库存信息', '2021-09-14 09:49:20', '查询操作', 1);
INSERT INTO `t_log` VALUES (1339, '查询商品信息', '2021-09-14 09:49:21', '查询操作', 1);
INSERT INTO `t_log` VALUES (1340, '查询商品信息', '2021-09-14 09:49:21', '查询操作', 1);
INSERT INTO `t_log` VALUES (1341, '查询供应商信息', '2021-09-14 09:49:23', '查询操作', 1);
INSERT INTO `t_log` VALUES (1342, '查询供应商信息', '2021-09-14 09:49:23', '查询操作', 1);
INSERT INTO `t_log` VALUES (1343, '查询角色信息', '2021-09-14 09:49:25', '查询操作', 1);
INSERT INTO `t_log` VALUES (1344, '查询角色信息', '2021-09-14 09:49:25', '查询操作', 1);
INSERT INTO `t_log` VALUES (1345, '查询客户信息', '2021-09-14 09:49:26', '查询操作', 1);
INSERT INTO `t_log` VALUES (1346, '查询商品库存信息', '2021-09-14 09:51:04', '查询操作', 1);
INSERT INTO `t_log` VALUES (1347, '查询角色信息', '2021-09-14 09:51:08', '查询操作', 1);
INSERT INTO `t_log` VALUES (1348, '查询角色信息', '2021-09-14 09:51:08', '查询操作', 1);
INSERT INTO `t_log` VALUES (1349, '查询供应商信息', '2021-09-14 09:51:09', '查询操作', 1);
INSERT INTO `t_log` VALUES (1350, '查询供应商信息', '2021-09-14 09:51:09', '查询操作', 1);
INSERT INTO `t_log` VALUES (1351, '查询用户信息', '2021-09-14 09:52:31', '查询操作', 1);
INSERT INTO `t_log` VALUES (1352, '查询用户信息', '2021-09-14 09:52:31', '查询操作', 1);
INSERT INTO `t_log` VALUES (1353, '查询客户信息', '2021-09-14 09:52:32', '查询操作', 1);
INSERT INTO `t_log` VALUES (1354, '查询商品库存信息', '2021-09-14 10:19:44', '查询操作', 1);
INSERT INTO `t_log` VALUES (1355, '查询商品库存信息', '2021-09-14 10:19:45', '查询操作', 1);
INSERT INTO `t_log` VALUES (1356, '查询供应商信息', '2021-09-14 10:19:46', '查询操作', 1);
INSERT INTO `t_log` VALUES (1357, '查询供应商信息', '2021-09-14 10:19:46', '查询操作', 1);
INSERT INTO `t_log` VALUES (1358, '查询客户信息', '2021-09-14 10:19:48', '查询操作', 1);
INSERT INTO `t_log` VALUES (1359, '查询商品信息', '2021-09-14 10:19:55', '查询操作', 1);
INSERT INTO `t_log` VALUES (1360, '查询商品单位信息', '2021-09-14 10:19:55', '查询操作', 1);
INSERT INTO `t_log` VALUES (1361, '查询商品类别信息', '2021-09-14 10:19:55', '查询操作', 1);
INSERT INTO `t_log` VALUES (1362, '查询商品信息', '2021-09-14 10:19:56', '查询操作', 1);
INSERT INTO `t_log` VALUES (1363, '查询商品单位信息', '2021-09-14 10:19:56', '查询操作', 1);
INSERT INTO `t_log` VALUES (1364, '用户登录', '2021-09-14 13:02:07', '登录操作', 1);
INSERT INTO `t_log` VALUES (1365, '查询商品库存信息', '2021-09-14 13:02:08', '查询操作', 1);
INSERT INTO `t_log` VALUES (1366, '查询供应商信息', '2021-09-14 13:02:09', '查询操作', 1);
INSERT INTO `t_log` VALUES (1367, '查询供应商信息', '2021-09-14 13:02:09', '查询操作', 1);
INSERT INTO `t_log` VALUES (1368, '查询供应商信息', '2021-09-14 13:02:10', '查询操作', 1);
INSERT INTO `t_log` VALUES (1369, '查询供应商信息', '2021-09-14 13:02:10', '查询操作', 1);
INSERT INTO `t_log` VALUES (1370, '用户登录', '2021-09-14 13:09:10', '登录操作', 1);
INSERT INTO `t_log` VALUES (1371, '查询商品库存信息', '2021-09-14 13:09:11', '查询操作', 1);
INSERT INTO `t_log` VALUES (1372, '查询供应商信息', '2021-09-14 13:09:12', '查询操作', 1);
INSERT INTO `t_log` VALUES (1373, '查询供应商信息', '2021-09-14 13:09:12', '查询操作', 1);
INSERT INTO `t_log` VALUES (1374, '查询供应商信息', '2021-09-14 13:09:17', '查询操作', 1);
INSERT INTO `t_log` VALUES (1375, '查询供应商信息', '2021-09-14 13:09:17', '查询操作', 1);
INSERT INTO `t_log` VALUES (1376, '查询商品库存信息', '2021-09-14 13:09:19', '查询操作', 1);
INSERT INTO `t_log` VALUES (1377, '查询供应商信息', '2021-09-14 13:09:20', '查询操作', 1);
INSERT INTO `t_log` VALUES (1378, '查询供应商信息', '2021-09-14 13:09:20', '查询操作', 1);
INSERT INTO `t_log` VALUES (1379, '用户登录', '2021-09-14 13:09:35', '登录操作', 1);
INSERT INTO `t_log` VALUES (1380, '查询商品库存信息', '2021-09-14 13:09:36', '查询操作', 1);
INSERT INTO `t_log` VALUES (1381, '查询客户信息', '2021-09-14 13:09:37', '查询操作', 1);
INSERT INTO `t_log` VALUES (1382, '查询客户信息', '2021-09-14 13:09:37', '查询操作', 1);
INSERT INTO `t_log` VALUES (1383, '添加客户信息[id=null, name=qq q, contact=2, number=18561525250, address=黄岛区, remarks=2, createTime=Tue Sep 14 13:09:45 CST 2021]', '2021-09-14 13:09:45', '添加操作', 1);
INSERT INTO `t_log` VALUES (1385, '查询客户信息', '2021-09-14 13:09:45', '查询操作', 1);
INSERT INTO `t_log` VALUES (1386, '用户注销', '2021-09-14 13:10:45', '注销操作', 1);
INSERT INTO `t_log` VALUES (1387, '用户登录', '2021-09-14 13:11:47', '登录操作', 1);
INSERT INTO `t_log` VALUES (1388, '查询商品库存信息', '2021-09-14 13:11:47', '查询操作', 1);
INSERT INTO `t_log` VALUES (1389, '用户登录', '2021-09-15 23:57:21', '登录操作', 1);
INSERT INTO `t_log` VALUES (1390, '查询商品库存信息', '2021-09-15 23:57:21', '查询操作', 1);
INSERT INTO `t_log` VALUES (1391, '查询商品信息', '2021-09-15 23:57:22', '查询操作', 1);
INSERT INTO `t_log` VALUES (1392, '查询商品信息', '2021-09-15 23:57:22', '查询操作', 1);
INSERT INTO `t_log` VALUES (1393, '查询商品类别信息', '2021-09-15 23:57:24', '查询操作', 1);
INSERT INTO `t_log` VALUES (1396, '添加进货单', '2021-09-15 23:57:31', '添加操作', 1);
INSERT INTO `t_log` VALUES (1397, '查询商品信息', '2021-09-15 23:57:33', '查询操作', 1);
INSERT INTO `t_log` VALUES (1398, '查询商品信息', '2021-09-15 23:57:33', '查询操作', 1);
INSERT INTO `t_log` VALUES (1399, '查询商品信息', '2021-09-15 23:57:33', '查询操作', 1);
INSERT INTO `t_log` VALUES (1400, '查询商品信息', '2021-09-15 23:57:33', '查询操作', 1);
INSERT INTO `t_log` VALUES (1401, '查询商品库存信息', '2021-09-15 23:57:36', '查询操作', 1);
INSERT INTO `t_log` VALUES (1402, '查询商品信息', '2021-09-15 23:57:36', '查询操作', 1);
INSERT INTO `t_log` VALUES (1403, '查询商品信息', '2021-09-15 23:57:37', '查询操作', 1);
INSERT INTO `t_log` VALUES (1404, '查询商品信息', '2021-09-15 23:57:37', '查询操作', 1);
INSERT INTO `t_log` VALUES (1405, '查询商品信息', '2021-09-15 23:57:37', '查询操作', 1);
INSERT INTO `t_log` VALUES (1406, '查询商品信息', '2021-09-15 23:57:40', '查询操作', 1);
INSERT INTO `t_log` VALUES (1407, '查询商品信息', '2021-09-15 23:57:40', '查询操作', 1);
INSERT INTO `t_log` VALUES (1408, '查询商品信息', '2021-09-15 23:57:41', '查询操作', 1);
INSERT INTO `t_log` VALUES (1409, '查询商品信息', '2021-09-15 23:57:41', '查询操作', 1);
INSERT INTO `t_log` VALUES (1410, '查询商品信息', '2021-09-15 23:57:59', '查询操作', 1);
INSERT INTO `t_log` VALUES (1411, '查询商品单位信息', '2021-09-15 23:57:59', '查询操作', 1);
INSERT INTO `t_log` VALUES (1412, '查询商品类别信息', '2021-09-15 23:57:59', '查询操作', 1);
INSERT INTO `t_log` VALUES (1413, '查询商品信息', '2021-09-15 23:57:59', '查询操作', 1);
INSERT INTO `t_log` VALUES (1414, '查询商品单位信息', '2021-09-15 23:57:59', '查询操作', 1);
INSERT INTO `t_log` VALUES (1415, '查询供应商信息', '2021-09-15 23:58:00', '查询操作', 1);
INSERT INTO `t_log` VALUES (1416, '查询供应商信息', '2021-09-15 23:58:00', '查询操作', 1);
INSERT INTO `t_log` VALUES (1417, '查询客户信息', '2021-09-15 23:58:01', '查询操作', 1);
INSERT INTO `t_log` VALUES (1418, '查询客户信息', '2021-09-15 23:58:01', '查询操作', 1);
INSERT INTO `t_log` VALUES (1419, '查询角色信息', '2021-09-15 23:58:02', '查询操作', 1);
INSERT INTO `t_log` VALUES (1420, '查询角色信息', '2021-09-15 23:58:02', '查询操作', 1);
INSERT INTO `t_log` VALUES (1421, '查询用户信息', '2021-09-15 23:58:03', '查询操作', 1);
INSERT INTO `t_log` VALUES (1422, '查询用户信息', '2021-09-15 23:58:03', '查询操作', 1);
INSERT INTO `t_log` VALUES (1423, '用户登录', '2021-09-17 10:40:43', '登录操作', 1);
INSERT INTO `t_log` VALUES (1424, '查询商品库存信息', '2021-09-17 10:40:44', '查询操作', 1);
INSERT INTO `t_log` VALUES (1425, '查询商品库存信息', '2021-09-17 10:47:28', '查询操作', 1);
INSERT INTO `t_log` VALUES (1426, '用户登录', '2021-09-17 10:50:24', '登录操作', 1);
INSERT INTO `t_log` VALUES (1427, '查询商品库存信息', '2021-09-17 10:50:25', '查询操作', 1);
INSERT INTO `t_log` VALUES (1428, '查询供应商信息', '2021-09-17 10:50:29', '查询操作', 1);
INSERT INTO `t_log` VALUES (1429, '查询供应商信息', '2021-09-17 10:50:29', '查询操作', 1);
INSERT INTO `t_log` VALUES (1430, '用户登录', '2021-09-17 10:52:05', '登录操作', 1);
INSERT INTO `t_log` VALUES (1431, '查询商品库存信息', '2021-09-17 10:52:05', '查询操作', 1);
INSERT INTO `t_log` VALUES (1432, '查询供应商信息', '2021-09-17 10:52:08', '查询操作', 1);
INSERT INTO `t_log` VALUES (1433, '查询供应商信息', '2021-09-17 10:52:08', '查询操作', 1);
INSERT INTO `t_log` VALUES (1434, '用户登录', '2021-09-17 10:53:49', '登录操作', 1);
INSERT INTO `t_log` VALUES (1435, '查询商品库存信息', '2021-09-17 10:53:49', '查询操作', 1);
INSERT INTO `t_log` VALUES (1436, '查询商品库存信息', '2021-09-17 10:54:00', '查询操作', 1);
INSERT INTO `t_log` VALUES (1437, '用户登录', '2021-09-17 10:54:13', '登录操作', 1);
INSERT INTO `t_log` VALUES (1438, '查询商品库存信息', '2021-09-17 10:54:14', '查询操作', 1);
INSERT INTO `t_log` VALUES (1439, '用户登录', '2021-09-17 10:56:45', '登录操作', 1);
INSERT INTO `t_log` VALUES (1440, '查询商品库存信息', '2021-09-17 10:56:45', '查询操作', 1);
INSERT INTO `t_log` VALUES (1441, '用户登录', '2021-09-17 11:00:25', '登录操作', 1);
INSERT INTO `t_log` VALUES (1442, '查询商品库存信息', '2021-09-17 11:00:25', '查询操作', 1);
INSERT INTO `t_log` VALUES (1443, '用户登录', '2021-09-17 11:02:02', '登录操作', 1);
INSERT INTO `t_log` VALUES (1444, '查询商品库存信息', '2021-09-17 11:02:02', '查询操作', 1);
INSERT INTO `t_log` VALUES (1445, '用户登录', '2021-09-17 11:04:25', '登录操作', 1);
INSERT INTO `t_log` VALUES (1446, '查询商品库存信息', '2021-09-17 11:04:25', '查询操作', 1);
INSERT INTO `t_log` VALUES (1447, '查询商品库存信息', '2021-09-17 11:04:38', '查询操作', 1);
INSERT INTO `t_log` VALUES (1448, '用户登录', '2021-09-17 11:17:55', '登录操作', 1);
INSERT INTO `t_log` VALUES (1449, '查询商品库存信息', '2021-09-17 11:17:56', '查询操作', 1);
INSERT INTO `t_log` VALUES (1450, '用户登录', '2021-09-17 11:21:05', '登录操作', 1);
INSERT INTO `t_log` VALUES (1451, '查询商品库存信息', '2021-09-17 11:21:05', '查询操作', 1);
INSERT INTO `t_log` VALUES (1452, '用户登录', '2021-09-17 11:23:36', '登录操作', 1);
INSERT INTO `t_log` VALUES (1453, '查询商品库存信息', '2021-09-17 11:23:36', '查询操作', 1);
INSERT INTO `t_log` VALUES (1454, '查询供应商信息', '2021-09-17 11:23:39', '查询操作', 1);
INSERT INTO `t_log` VALUES (1455, '查询供应商信息', '2021-09-17 11:23:39', '查询操作', 1);
INSERT INTO `t_log` VALUES (1456, '用户登录', '2021-09-17 11:25:46', '登录操作', 1);
INSERT INTO `t_log` VALUES (1457, '查询商品库存信息', '2021-09-17 11:25:47', '查询操作', 1);
INSERT INTO `t_log` VALUES (1458, '查询供应商信息', '2021-09-17 11:27:14', '查询操作', 1);
INSERT INTO `t_log` VALUES (1459, '查询供应商信息', '2021-09-17 11:27:14', '查询操作', 1);
INSERT INTO `t_log` VALUES (1460, '用户登录', '2021-09-17 13:11:48', '登录操作', 1);
INSERT INTO `t_log` VALUES (1461, '查询商品库存信息', '2021-09-17 13:11:48', '查询操作', 1);
INSERT INTO `t_log` VALUES (1462, '查询商品信息', '2021-09-17 13:11:59', '查询操作', 1);
INSERT INTO `t_log` VALUES (1463, '查询商品信息', '2021-09-17 13:11:59', '查询操作', 1);
INSERT INTO `t_log` VALUES (1464, '查询商品信息', '2021-09-17 13:12:29', '查询操作', 1);
INSERT INTO `t_log` VALUES (1465, '查询商品信息', '2021-09-17 13:12:29', '查询操作', 1);
INSERT INTO `t_log` VALUES (1466, '查询商品类别信息', '2021-09-17 13:12:35', '查询操作', 1);
INSERT INTO `t_log` VALUES (1469, '添加销售单', '2021-09-17 13:12:40', '添加操作', 1);
INSERT INTO `t_log` VALUES (1470, '查询商品信息', '2021-09-17 13:12:42', '查询操作', 1);
INSERT INTO `t_log` VALUES (1471, '查询商品信息', '2021-09-17 13:12:42', '查询操作', 1);
INSERT INTO `t_log` VALUES (1472, '查询商品类别信息', '2021-09-17 13:13:05', '查询操作', 1);
INSERT INTO `t_log` VALUES (1475, '添加客户退货单', '2021-09-17 13:13:11', '添加操作', 1);
INSERT INTO `t_log` VALUES (1476, '查询商品信息', '2021-09-17 13:13:12', '查询操作', 1);
INSERT INTO `t_log` VALUES (1477, '查询商品信息', '2021-09-17 13:13:12', '查询操作', 1);
INSERT INTO `t_log` VALUES (1478, '查询供应商信息', '2021-09-17 13:13:16', '查询操作', 1);
INSERT INTO `t_log` VALUES (1479, '查询供应商信息', '2021-09-17 13:13:16', '查询操作', 1);
INSERT INTO `t_log` VALUES (1480, '用户登录', '2021-10-08 13:47:59', '登录操作', 1);
INSERT INTO `t_log` VALUES (1481, '查询商品库存信息', '2021-10-08 13:48:00', '查询操作', 1);
INSERT INTO `t_log` VALUES (1482, '查询商品信息', '2021-10-08 13:48:04', '查询操作', 1);
INSERT INTO `t_log` VALUES (1483, '查询商品信息', '2021-10-08 13:48:04', '查询操作', 1);
INSERT INTO `t_log` VALUES (1484, '查询商品信息', '2021-10-08 13:48:06', '查询操作', 1);
INSERT INTO `t_log` VALUES (1485, '查询商品信息', '2021-10-08 13:48:06', '查询操作', 1);
INSERT INTO `t_log` VALUES (1486, '用户登录', '2021-10-08 13:51:11', '登录操作', 1);
INSERT INTO `t_log` VALUES (1487, '查询商品库存信息', '2021-10-08 13:51:11', '查询操作', 1);
INSERT INTO `t_log` VALUES (1488, '查询供应商信息', '2021-10-08 14:01:40', '查询操作', 1);
INSERT INTO `t_log` VALUES (1489, '查询供应商信息', '2021-10-08 14:01:40', '查询操作', 1);
INSERT INTO `t_log` VALUES (1490, '查询商品库存信息', '2021-10-08 14:02:53', '查询操作', 1);
INSERT INTO `t_log` VALUES (1491, '查询商品信息', '2021-10-08 14:02:58', '查询操作', 1);
INSERT INTO `t_log` VALUES (1492, '查询商品信息', '2021-10-08 14:02:58', '查询操作', 1);
INSERT INTO `t_log` VALUES (1493, '查询角色信息', '2021-10-08 14:03:07', '查询操作', 1);
INSERT INTO `t_log` VALUES (1494, '查询角色信息', '2021-10-08 14:03:07', '查询操作', 1);
INSERT INTO `t_log` VALUES (1495, '查询用户信息', '2021-10-08 14:03:09', '查询操作', 1);
INSERT INTO `t_log` VALUES (1496, '查询用户信息', '2021-10-08 14:03:09', '查询操作', 1);
INSERT INTO `t_log` VALUES (1497, '查询商品信息', '2021-10-08 14:03:12', '查询操作', 1);
INSERT INTO `t_log` VALUES (1498, '查询商品信息', '2021-10-08 14:03:13', '查询操作', 1);
INSERT INTO `t_log` VALUES (1499, '用户注销', '2021-10-08 14:05:33', '注销操作', 1);
INSERT INTO `t_log` VALUES (1500, '用户登录', '2021-10-08 14:06:04', '登录操作', 1);
INSERT INTO `t_log` VALUES (1501, '查询商品库存信息', '2021-10-08 14:06:04', '查询操作', 1);
INSERT INTO `t_log` VALUES (1502, '查询商品信息', '2021-10-08 14:06:06', '查询操作', 1);
INSERT INTO `t_log` VALUES (1503, '查询商品信息', '2021-10-08 14:06:06', '查询操作', 1);
INSERT INTO `t_log` VALUES (1504, '查询商品类别信息', '2021-10-08 14:06:15', '查询操作', 1);
INSERT INTO `t_log` VALUES (1507, '添加进货单', '2021-10-08 14:06:31', '添加操作', 1);
INSERT INTO `t_log` VALUES (1508, '查询商品信息', '2021-10-08 14:06:33', '查询操作', 1);
INSERT INTO `t_log` VALUES (1509, '查询商品信息', '2021-10-08 14:06:33', '查询操作', 1);
INSERT INTO `t_log` VALUES (1510, '查询商品信息', '2021-10-08 14:06:35', '查询操作', 1);
INSERT INTO `t_log` VALUES (1511, '查询商品信息', '2021-10-08 14:06:35', '查询操作', 1);
INSERT INTO `t_log` VALUES (1512, '查询商品类别信息', '2021-10-08 14:06:39', '查询操作', 1);
INSERT INTO `t_log` VALUES (1516, '添加退货单', '2021-10-08 14:06:54', '添加操作', 1);
INSERT INTO `t_log` VALUES (1517, '查询商品信息', '2021-10-08 14:06:56', '查询操作', 1);
INSERT INTO `t_log` VALUES (1518, '查询商品信息', '2021-10-08 14:06:56', '查询操作', 1);
INSERT INTO `t_log` VALUES (1519, '查询商品库存信息', '2021-10-08 14:07:05', '查询操作', 1);
INSERT INTO `t_log` VALUES (1520, '查询商品信息', '2021-10-08 14:07:17', '查询操作', 1);
INSERT INTO `t_log` VALUES (1521, '查询商品信息', '2021-10-08 14:07:17', '查询操作', 1);
INSERT INTO `t_log` VALUES (1522, '查询商品类别信息', '2021-10-08 14:07:19', '查询操作', 1);
INSERT INTO `t_log` VALUES (1525, '添加销售单', '2021-10-08 14:07:30', '添加操作', 1);
INSERT INTO `t_log` VALUES (1526, '查询商品信息', '2021-10-08 14:07:32', '查询操作', 1);
INSERT INTO `t_log` VALUES (1527, '查询商品信息', '2021-10-08 14:07:32', '查询操作', 1);
INSERT INTO `t_log` VALUES (1528, '查询商品信息', '2021-10-08 14:07:34', '查询操作', 1);
INSERT INTO `t_log` VALUES (1529, '查询商品信息', '2021-10-08 14:07:34', '查询操作', 1);
INSERT INTO `t_log` VALUES (1530, '查询商品类别信息', '2021-10-08 14:07:38', '查询操作', 1);
INSERT INTO `t_log` VALUES (1531, '查询商品信息', '2021-10-08 14:07:40', '查询操作', 1);
INSERT INTO `t_log` VALUES (1534, '添加客户退货单', '2021-10-08 14:07:48', '添加操作', 1);
INSERT INTO `t_log` VALUES (1535, '查询商品信息', '2021-10-08 14:07:49', '查询操作', 1);
INSERT INTO `t_log` VALUES (1536, '查询商品信息', '2021-10-08 14:07:49', '查询操作', 1);
INSERT INTO `t_log` VALUES (1537, '查询商品信息', '2021-10-08 14:08:07', '查询操作', 1);
INSERT INTO `t_log` VALUES (1538, '查询商品信息', '2021-10-08 14:08:07', '查询操作', 1);
INSERT INTO `t_log` VALUES (1539, '查询商品类别信息', '2021-10-08 14:08:10', '查询操作', 1);
INSERT INTO `t_log` VALUES (1542, '添加过期单', '2021-10-08 14:08:20', '添加操作', 1);
INSERT INTO `t_log` VALUES (1543, '查询商品信息', '2021-10-08 14:08:22', '查询操作', 1);
INSERT INTO `t_log` VALUES (1544, '查询商品信息', '2021-10-08 14:08:22', '查询操作', 1);
INSERT INTO `t_log` VALUES (1545, '查询商品信息', '2021-10-08 14:08:23', '查询操作', 1);
INSERT INTO `t_log` VALUES (1546, '查询商品信息', '2021-10-08 14:08:23', '查询操作', 1);
INSERT INTO `t_log` VALUES (1547, '查询商品类别信息', '2021-10-08 14:08:26', '查询操作', 1);
INSERT INTO `t_log` VALUES (1550, '添加报溢单', '2021-10-08 14:08:32', '添加操作', 1);
INSERT INTO `t_log` VALUES (1551, '查询商品信息', '2021-10-08 14:08:33', '查询操作', 1);
INSERT INTO `t_log` VALUES (1552, '查询商品信息', '2021-10-08 14:08:33', '查询操作', 1);
INSERT INTO `t_log` VALUES (1553, '查询供应商信息', '2021-10-08 14:09:36', '查询操作', 1);
INSERT INTO `t_log` VALUES (1554, '查询供应商信息', '2021-10-08 14:09:36', '查询操作', 1);
INSERT INTO `t_log` VALUES (1555, '查询客户信息', '2021-10-08 14:09:41', '查询操作', 1);
INSERT INTO `t_log` VALUES (1556, '查询客户信息', '2021-10-08 14:09:41', '查询操作', 1);
INSERT INTO `t_log` VALUES (1557, '删除客户信息[id=1384, name=qq q, contact=2, number=18561525250, address=黄岛区, remarks=2, createTime=2021-09-14 13:09:45.0]', '2021-10-08 14:09:50', '删除操作', 1);
INSERT INTO `t_log` VALUES (1558, '查询客户信息', '2021-10-08 14:09:50', '查询操作', 1);
INSERT INTO `t_log` VALUES (1559, '查询商品信息', '2021-10-08 14:09:53', '查询操作', 1);
INSERT INTO `t_log` VALUES (1560, '查询商品单位信息', '2021-10-08 14:09:53', '查询操作', 1);
INSERT INTO `t_log` VALUES (1561, '查询商品类别信息', '2021-10-08 14:09:53', '查询操作', 1);
INSERT INTO `t_log` VALUES (1562, '查询商品信息', '2021-10-08 14:09:53', '查询操作', 1);
INSERT INTO `t_log` VALUES (1563, '查询商品单位信息', '2021-10-08 14:09:53', '查询操作', 1);
INSERT INTO `t_log` VALUES (1564, '查询商品信息', '2021-10-08 14:09:56', '查询操作', 1);
INSERT INTO `t_log` VALUES (1565, '查询商品信息', '2021-10-08 14:09:56', '查询操作', 1);
INSERT INTO `t_log` VALUES (1566, '查询商品信息', '2021-10-08 14:09:57', '查询操作', 1);
INSERT INTO `t_log` VALUES (1567, '查询商品信息', '2021-10-08 14:09:58', '查询操作', 1);
INSERT INTO `t_log` VALUES (1568, '查询商品信息', '2021-10-08 14:09:59', '查询操作', 1);
INSERT INTO `t_log` VALUES (1569, '查询商品信息', '2021-10-08 14:09:59', '查询操作', 1);
INSERT INTO `t_log` VALUES (1570, '查询商品信息', '2021-10-08 14:10:00', '查询操作', 1);
INSERT INTO `t_log` VALUES (1571, '查询角色信息', '2021-10-08 14:10:03', '查询操作', 1);
INSERT INTO `t_log` VALUES (1572, '查询角色信息', '2021-10-08 14:10:03', '查询操作', 1);
INSERT INTO `t_log` VALUES (1573, '查询用户信息', '2021-10-08 14:10:12', '查询操作', 1);
INSERT INTO `t_log` VALUES (1574, '查询用户信息', '2021-10-08 14:10:13', '查询操作', 1);
INSERT INTO `t_log` VALUES (1575, '查询所有角色信息', '2021-10-08 14:10:15', '查询操作', 1);
INSERT INTO `t_log` VALUES (1576, '用户注销', '2021-10-08 14:10:21', '注销操作', 1);
INSERT INTO `t_log` VALUES (1577, '用户登录', '2021-10-08 16:57:05', '登录操作', 1);
INSERT INTO `t_log` VALUES (1578, '查询商品库存信息', '2021-10-08 16:57:05', '查询操作', 1);
INSERT INTO `t_log` VALUES (1579, '查询商品信息', '2021-10-08 16:57:32', '查询操作', 1);
INSERT INTO `t_log` VALUES (1580, '查询商品信息', '2021-10-08 16:57:32', '查询操作', 1);
INSERT INTO `t_log` VALUES (1581, '查询商品信息', '2021-10-08 16:58:00', '查询操作', 1);
INSERT INTO `t_log` VALUES (1582, '查询商品单位信息', '2021-10-08 16:58:00', '查询操作', 1);
INSERT INTO `t_log` VALUES (1583, '查询商品类别信息', '2021-10-08 16:58:00', '查询操作', 1);
INSERT INTO `t_log` VALUES (1584, '查询商品信息', '2021-10-08 16:58:00', '查询操作', 1);
INSERT INTO `t_log` VALUES (1585, '查询商品单位信息', '2021-10-08 16:58:00', '查询操作', 1);
INSERT INTO `t_log` VALUES (1586, '查询供应商信息', '2021-10-08 17:11:25', '查询操作', 1);
INSERT INTO `t_log` VALUES (1587, '查询供应商信息', '2021-10-08 17:11:25', '查询操作', 1);
INSERT INTO `t_log` VALUES (1588, '查询商品类别信息', '2021-10-08 17:19:34', '查询操作', 1);
INSERT INTO `t_log` VALUES (1589, '查询商品库存信息', '2021-10-08 17:19:45', '查询操作', 1);
INSERT INTO `t_log` VALUES (1590, '查询商品信息', '2021-10-08 17:21:13', '查询操作', 1);
INSERT INTO `t_log` VALUES (1591, '查询商品信息', '2021-10-08 17:21:13', '查询操作', 1);
INSERT INTO `t_log` VALUES (1592, '查询商品信息', '2021-10-08 17:21:22', '查询操作', 1);
INSERT INTO `t_log` VALUES (1593, '查询商品信息', '2021-10-08 17:21:22', '查询操作', 1);
INSERT INTO `t_log` VALUES (1594, '查询商品信息', '2021-10-08 17:21:30', '查询操作', 1);
INSERT INTO `t_log` VALUES (1595, '查询商品信息', '2021-10-08 17:21:30', '查询操作', 1);
INSERT INTO `t_log` VALUES (1596, '查询商品信息', '2021-10-08 17:21:32', '查询操作', 1);
INSERT INTO `t_log` VALUES (1597, '查询商品信息', '2021-10-08 17:21:32', '查询操作', 1);
INSERT INTO `t_log` VALUES (1598, '查询商品类别信息', '2021-10-08 17:21:46', '查询操作', 1);
INSERT INTO `t_log` VALUES (1601, '添加报溢单', '2021-10-08 17:21:58', '添加操作', 1);
INSERT INTO `t_log` VALUES (1602, '查询商品信息', '2021-10-08 17:21:59', '查询操作', 1);
INSERT INTO `t_log` VALUES (1603, '查询商品信息', '2021-10-08 17:21:59', '查询操作', 1);
INSERT INTO `t_log` VALUES (1604, '用户登录', '2021-10-09 14:24:06', '登录操作', 1);
INSERT INTO `t_log` VALUES (1605, '查询商品库存信息', '2021-10-09 14:24:07', '查询操作', 1);
INSERT INTO `t_log` VALUES (1606, '查询商品库存信息', '2021-10-09 14:24:44', '查询操作', 1);
INSERT INTO `t_log` VALUES (1607, '查询商品库存信息', '2021-10-09 14:24:47', '查询操作', 1);
INSERT INTO `t_log` VALUES (1608, '查询商品库存信息', '2021-10-09 14:26:27', '查询操作', 1);
INSERT INTO `t_log` VALUES (1609, '查询商品信息', '2021-10-09 14:26:53', '查询操作', 1);
INSERT INTO `t_log` VALUES (1610, '查询商品信息', '2021-10-09 14:26:53', '查询操作', 1);
INSERT INTO `t_log` VALUES (1611, '查询商品类别信息', '2021-10-09 14:30:28', '查询操作', 1);
INSERT INTO `t_log` VALUES (1612, '查询商品库存信息', '2021-10-09 14:30:32', '查询操作', 1);
INSERT INTO `t_log` VALUES (1613, '查询商品库存信息', '2021-10-09 14:30:35', '查询操作', 1);
INSERT INTO `t_log` VALUES (1614, '查询商品信息', '2021-10-09 14:30:52', '查询操作', 1);
INSERT INTO `t_log` VALUES (1615, '查询商品信息', '2021-10-09 14:30:52', '查询操作', 1);
INSERT INTO `t_log` VALUES (1616, '查询商品库存信息', '2021-10-09 14:31:14', '查询操作', 1);
INSERT INTO `t_log` VALUES (1617, '查询商品库存信息', '2021-10-09 14:32:48', '查询操作', 1);
INSERT INTO `t_log` VALUES (1618, '查询商品信息', '2021-10-09 14:33:37', '查询操作', 1);
INSERT INTO `t_log` VALUES (1619, '查询商品信息', '2021-10-09 14:33:37', '查询操作', 1);
INSERT INTO `t_log` VALUES (1620, '查询商品类别信息', '2021-10-09 14:37:14', '查询操作', 1);
INSERT INTO `t_log` VALUES (1621, '查询商品信息', '2021-10-09 14:40:23', '查询操作', 1);
INSERT INTO `t_log` VALUES (1622, '查询商品信息', '2021-10-09 14:40:23', '查询操作', 1);
INSERT INTO `t_log` VALUES (1623, '查询商品类别信息', '2021-10-09 14:40:28', '查询操作', 1);
INSERT INTO `t_log` VALUES (1624, '查询商品信息', '2021-10-09 14:41:44', '查询操作', 1);
INSERT INTO `t_log` VALUES (1625, '查询商品信息', '2021-10-09 14:41:44', '查询操作', 1);
INSERT INTO `t_log` VALUES (1626, '查询商品信息', '2021-10-09 14:43:22', '查询操作', 1);
INSERT INTO `t_log` VALUES (1627, '查询商品单位信息', '2021-10-09 14:43:22', '查询操作', 1);
INSERT INTO `t_log` VALUES (1628, '查询商品类别信息', '2021-10-09 14:43:23', '查询操作', 1);
INSERT INTO `t_log` VALUES (1629, '查询商品信息', '2021-10-09 14:43:23', '查询操作', 1);
INSERT INTO `t_log` VALUES (1630, '查询商品单位信息', '2021-10-09 14:43:23', '查询操作', 1);
INSERT INTO `t_log` VALUES (1631, '用户注销', '2021-10-09 14:46:59', '注销操作', 1);
INSERT INTO `t_log` VALUES (1632, '用户登录', '2021-10-09 14:47:25', '登录操作', 3);
INSERT INTO `t_log` VALUES (1633, '查询商品库存信息', '2021-10-09 14:47:26', '查询操作', 3);
INSERT INTO `t_log` VALUES (1634, '用户注销', '2021-10-09 14:48:53', '注销操作', 3);
INSERT INTO `t_log` VALUES (1635, '用户登录', '2021-10-09 14:48:58', '登录操作', 1);
INSERT INTO `t_log` VALUES (1636, '查询商品库存信息', '2021-10-09 14:48:59', '查询操作', 1);
INSERT INTO `t_log` VALUES (1637, '查询用户信息', '2021-10-09 14:49:08', '查询操作', 1);
INSERT INTO `t_log` VALUES (1638, '查询用户信息', '2021-10-09 14:49:08', '查询操作', 1);
INSERT INTO `t_log` VALUES (1639, '查询所有角色信息', '2021-10-09 14:49:11', '查询操作', 1);
INSERT INTO `t_log` VALUES (1640, '查询角色信息', '2021-10-09 14:49:14', '查询操作', 1);
INSERT INTO `t_log` VALUES (1641, '查询角色信息', '2021-10-09 14:49:14', '查询操作', 1);
INSERT INTO `t_log` VALUES (1642, '用户登录', '2021-10-10 15:28:37', '登录操作', 1);
INSERT INTO `t_log` VALUES (1643, '查询商品库存信息', '2021-10-10 15:28:39', '查询操作', 1);
INSERT INTO `t_log` VALUES (1644, '用户注销', '2021-10-10 15:30:39', '注销操作', 1);
INSERT INTO `t_log` VALUES (1645, '用户登录', '2021-10-10 15:30:40', '登录操作', 1);
INSERT INTO `t_log` VALUES (1646, '查询商品库存信息', '2021-10-10 15:30:40', '查询操作', 1);
INSERT INTO `t_log` VALUES (1647, '用户登录', '2021-10-10 15:32:18', '登录操作', 1);
INSERT INTO `t_log` VALUES (1648, '查询商品库存信息', '2021-10-10 15:32:19', '查询操作', 1);
INSERT INTO `t_log` VALUES (1649, '用户登录', '2021-10-10 15:33:53', '登录操作', 1);
INSERT INTO `t_log` VALUES (1650, '查询商品库存信息', '2021-10-10 15:33:54', '查询操作', 1);
INSERT INTO `t_log` VALUES (1651, '查询商品库存信息', '2021-10-10 15:39:10', '查询操作', 1);
INSERT INTO `t_log` VALUES (1652, '查询角色信息', '2021-10-10 15:39:15', '查询操作', 1);
INSERT INTO `t_log` VALUES (1653, '查询角色信息', '2021-10-10 15:39:15', '查询操作', 1);
INSERT INTO `t_log` VALUES (1654, '查询用户信息', '2021-10-10 15:39:17', '查询操作', 1);
INSERT INTO `t_log` VALUES (1655, '查询用户信息', '2021-10-10 15:39:17', '查询操作', 1);
INSERT INTO `t_log` VALUES (1656, '查询所有角色信息', '2021-10-10 15:39:22', '查询操作', 1);
INSERT INTO `t_log` VALUES (1657, '用户注销', '2021-10-10 15:39:45', '注销操作', 1);
INSERT INTO `t_log` VALUES (1658, '用户登录', '2021-10-10 15:39:45', '登录操作', 1);
INSERT INTO `t_log` VALUES (1659, '查询商品库存信息', '2021-10-10 15:39:46', '查询操作', 1);
INSERT INTO `t_log` VALUES (1660, '查询供应商信息', '2021-10-10 15:39:50', '查询操作', 1);
INSERT INTO `t_log` VALUES (1661, '查询供应商信息', '2021-10-10 15:39:50', '查询操作', 1);
INSERT INTO `t_log` VALUES (1662, '查询商品库存信息', '2021-10-10 15:40:32', '查询操作', 1);
INSERT INTO `t_log` VALUES (1663, '用户登录', '2021-10-10 15:40:37', '登录操作', 1);
INSERT INTO `t_log` VALUES (1664, '查询商品库存信息', '2021-10-10 15:40:37', '查询操作', 1);
INSERT INTO `t_log` VALUES (1665, '用户注销', '2021-10-10 15:42:04', '注销操作', 1);
INSERT INTO `t_log` VALUES (1666, '用户登录', '2021-10-10 15:42:04', '登录操作', 1);
INSERT INTO `t_log` VALUES (1667, '查询商品库存信息', '2021-10-10 15:42:05', '查询操作', 1);
INSERT INTO `t_log` VALUES (1668, '用户登录', '2021-10-10 15:42:36', '登录操作', 1);
INSERT INTO `t_log` VALUES (1669, '查询商品库存信息', '2021-10-10 15:42:36', '查询操作', 1);
INSERT INTO `t_log` VALUES (1670, '用户注销', '2021-10-10 15:43:03', '注销操作', 1);
INSERT INTO `t_log` VALUES (1671, '用户登录', '2021-10-10 15:43:04', '登录操作', 1);
INSERT INTO `t_log` VALUES (1672, '查询商品库存信息', '2021-10-10 15:43:04', '查询操作', 1);
INSERT INTO `t_log` VALUES (1673, '用户登录', '2021-10-10 15:45:33', '登录操作', 1);
INSERT INTO `t_log` VALUES (1674, '查询商品库存信息', '2021-10-10 15:45:33', '查询操作', 1);
INSERT INTO `t_log` VALUES (1675, '用户注销', '2021-10-10 15:50:16', '注销操作', 1);
INSERT INTO `t_log` VALUES (1676, '用户登录', '2021-10-10 15:50:17', '登录操作', 1);
INSERT INTO `t_log` VALUES (1677, '查询商品库存信息', '2021-10-10 15:50:17', '查询操作', 1);
INSERT INTO `t_log` VALUES (1678, '用户注销', '2021-10-10 15:51:25', '注销操作', 1);
INSERT INTO `t_log` VALUES (1679, '用户登录', '2021-10-10 15:51:25', '登录操作', 1);
INSERT INTO `t_log` VALUES (1680, '查询商品库存信息', '2021-10-10 15:51:26', '查询操作', 1);
INSERT INTO `t_log` VALUES (1681, '查询商品信息', '2021-10-10 15:51:27', '查询操作', 1);
INSERT INTO `t_log` VALUES (1682, '查询商品单位信息', '2021-10-10 15:51:27', '查询操作', 1);
INSERT INTO `t_log` VALUES (1683, '查询商品类别信息', '2021-10-10 15:51:27', '查询操作', 1);
INSERT INTO `t_log` VALUES (1684, '查询商品信息', '2021-10-10 15:51:27', '查询操作', 1);
INSERT INTO `t_log` VALUES (1685, '查询商品单位信息', '2021-10-10 15:51:27', '查询操作', 1);
INSERT INTO `t_log` VALUES (1686, '用户注销', '2021-10-10 15:52:06', '注销操作', 1);
INSERT INTO `t_log` VALUES (1687, '用户登录', '2021-10-10 15:52:07', '登录操作', 1);
INSERT INTO `t_log` VALUES (1688, '查询商品库存信息', '2021-10-10 15:52:08', '查询操作', 1);
INSERT INTO `t_log` VALUES (1689, '用户注销', '2021-10-10 15:53:38', '注销操作', 1);
INSERT INTO `t_log` VALUES (1690, '用户登录', '2021-10-10 15:53:39', '登录操作', 1);
INSERT INTO `t_log` VALUES (1691, '查询商品库存信息', '2021-10-10 15:53:39', '查询操作', 1);
INSERT INTO `t_log` VALUES (1692, '查询商品库存信息', '2021-10-10 15:53:48', '查询操作', 1);
INSERT INTO `t_log` VALUES (1693, '用户注销', '2021-10-10 15:53:59', '注销操作', 1);
INSERT INTO `t_log` VALUES (1694, '用户登录', '2021-10-10 15:54:00', '登录操作', 1);
INSERT INTO `t_log` VALUES (1695, '查询商品库存信息', '2021-10-10 15:54:00', '查询操作', 1);
INSERT INTO `t_log` VALUES (1696, '用户登录', '2021-10-10 15:54:37', '登录操作', 1);
INSERT INTO `t_log` VALUES (1697, '查询商品库存信息', '2021-10-10 15:54:37', '查询操作', 1);
INSERT INTO `t_log` VALUES (1698, '查询商品信息', '2021-10-10 15:54:38', '查询操作', 1);
INSERT INTO `t_log` VALUES (1699, '查询商品信息', '2021-10-10 15:54:38', '查询操作', 1);
INSERT INTO `t_log` VALUES (1700, '查询商品库存信息', '2021-10-10 15:54:48', '查询操作', 1);
INSERT INTO `t_log` VALUES (1701, '查询商品库存信息', '2021-10-10 15:55:12', '查询操作', 1);
INSERT INTO `t_log` VALUES (1702, '用户注销', '2021-10-10 15:56:09', '注销操作', 1);
INSERT INTO `t_log` VALUES (1703, '用户登录', '2021-10-10 15:56:10', '登录操作', 1);
INSERT INTO `t_log` VALUES (1704, '查询商品库存信息', '2021-10-10 15:56:10', '查询操作', 1);
INSERT INTO `t_log` VALUES (1705, '查询商品库存信息', '2021-10-10 15:56:13', '查询操作', 1);
INSERT INTO `t_log` VALUES (1706, '用户注销', '2021-10-10 15:56:18', '注销操作', 1);
INSERT INTO `t_log` VALUES (1707, '用户登录', '2021-10-10 15:56:18', '登录操作', 1);
INSERT INTO `t_log` VALUES (1708, '查询商品库存信息', '2021-10-10 15:56:19', '查询操作', 1);
INSERT INTO `t_log` VALUES (1709, '查询商品库存信息', '2021-10-10 15:57:17', '查询操作', 1);
INSERT INTO `t_log` VALUES (1710, '用户注销', '2021-10-10 15:58:21', '注销操作', 1);
INSERT INTO `t_log` VALUES (1711, '用户登录', '2021-10-10 15:58:22', '登录操作', 1);
INSERT INTO `t_log` VALUES (1712, '用户注销', '2021-10-10 15:58:52', '注销操作', 1);
INSERT INTO `t_log` VALUES (1713, '用户登录', '2021-10-10 15:58:53', '登录操作', 1);
INSERT INTO `t_log` VALUES (1714, '查询商品库存信息', '2021-10-10 15:58:53', '查询操作', 1);
INSERT INTO `t_log` VALUES (1715, '查询商品库存信息', '2021-10-10 15:58:55', '查询操作', 1);
INSERT INTO `t_log` VALUES (1716, '查询商品信息', '2021-10-10 15:59:01', '查询操作', 1);
INSERT INTO `t_log` VALUES (1717, '查询商品信息', '2021-10-10 15:59:01', '查询操作', 1);
INSERT INTO `t_log` VALUES (1718, '查询商品信息', '2021-10-10 15:59:01', '查询操作', 1);
INSERT INTO `t_log` VALUES (1719, '查询商品信息', '2021-10-10 15:59:01', '查询操作', 1);
INSERT INTO `t_log` VALUES (1720, '查询商品信息', '2021-10-10 15:59:05', '查询操作', 1);
INSERT INTO `t_log` VALUES (1721, '查询商品信息', '2021-10-10 15:59:05', '查询操作', 1);
INSERT INTO `t_log` VALUES (1722, '查询商品信息', '2021-10-10 16:02:21', '查询操作', 1);
INSERT INTO `t_log` VALUES (1723, '查询商品信息', '2021-10-10 16:02:21', '查询操作', 1);
INSERT INTO `t_log` VALUES (1724, '查询供应商信息', '2021-10-10 16:02:31', '查询操作', 1);
INSERT INTO `t_log` VALUES (1725, '查询供应商信息', '2021-10-10 16:02:31', '查询操作', 1);
INSERT INTO `t_log` VALUES (1726, '用户注销', '2021-10-10 16:04:15', '注销操作', 1);
INSERT INTO `t_log` VALUES (1727, '用户登录', '2021-10-10 16:04:16', '登录操作', 1);
INSERT INTO `t_log` VALUES (1728, '查询商品库存信息', '2021-10-10 16:04:17', '查询操作', 1);
INSERT INTO `t_log` VALUES (1729, '用户注销', '2021-10-10 16:04:38', '注销操作', 1);
INSERT INTO `t_log` VALUES (1730, '用户登录', '2021-10-10 16:04:39', '登录操作', 1);
INSERT INTO `t_log` VALUES (1731, '查询商品库存信息', '2021-10-10 16:04:39', '查询操作', 1);
INSERT INTO `t_log` VALUES (1732, '查询供应商信息', '2021-10-10 16:04:52', '查询操作', 1);
INSERT INTO `t_log` VALUES (1733, '查询供应商信息', '2021-10-10 16:04:52', '查询操作', 1);
INSERT INTO `t_log` VALUES (1734, '查询供应商信息', '2021-10-10 16:05:55', '查询操作', 1);
INSERT INTO `t_log` VALUES (1735, '查询供应商信息', '2021-10-10 16:05:56', '查询操作', 1);
INSERT INTO `t_log` VALUES (1736, '查询供应商信息', '2021-10-10 16:05:56', '查询操作', 1);
INSERT INTO `t_log` VALUES (1737, '查询供应商信息', '2021-10-10 16:05:56', '查询操作', 1);
INSERT INTO `t_log` VALUES (1738, '查询供应商信息', '2021-10-10 16:05:56', '查询操作', 1);
INSERT INTO `t_log` VALUES (1739, '用户注销', '2021-10-10 16:09:55', '注销操作', 1);
INSERT INTO `t_log` VALUES (1740, '用户登录', '2021-10-10 16:09:56', '登录操作', 1);
INSERT INTO `t_log` VALUES (1741, '查询商品库存信息', '2021-10-10 16:09:56', '查询操作', 1);
INSERT INTO `t_log` VALUES (1742, '查询供应商信息', '2021-10-10 16:09:57', '查询操作', 1);
INSERT INTO `t_log` VALUES (1743, '查询供应商信息', '2021-10-10 16:09:57', '查询操作', 1);
INSERT INTO `t_log` VALUES (1744, '用户登录', '2021-10-10 16:11:59', '登录操作', 1);
INSERT INTO `t_log` VALUES (1745, '查询商品库存信息', '2021-10-10 16:12:00', '查询操作', 1);
INSERT INTO `t_log` VALUES (1746, '查询供应商信息', '2021-10-10 16:12:02', '查询操作', 1);
INSERT INTO `t_log` VALUES (1747, '查询供应商信息', '2021-10-10 16:12:02', '查询操作', 1);
INSERT INTO `t_log` VALUES (1748, '查询商品库存信息', '2021-10-10 16:12:05', '查询操作', 1);
INSERT INTO `t_log` VALUES (1749, '查询供应商信息', '2021-10-10 16:13:18', '查询操作', 1);
INSERT INTO `t_log` VALUES (1750, '查询供应商信息', '2021-10-10 16:13:18', '查询操作', 1);
INSERT INTO `t_log` VALUES (1751, '查询供应商信息', '2021-10-10 16:13:20', '查询操作', 1);
INSERT INTO `t_log` VALUES (1752, '用户登录', '2021-10-10 16:16:35', '登录操作', 1);
INSERT INTO `t_log` VALUES (1753, '查询商品库存信息', '2021-10-10 16:16:36', '查询操作', 1);
INSERT INTO `t_log` VALUES (1754, '查询商品库存信息', '2021-10-10 16:16:38', '查询操作', 1);
INSERT INTO `t_log` VALUES (1755, '查询供应商信息', '2021-10-10 16:18:31', '查询操作', 1);
INSERT INTO `t_log` VALUES (1756, '查询供应商信息', '2021-10-10 16:18:31', '查询操作', 1);
INSERT INTO `t_log` VALUES (1757, '查询商品库存信息', '2021-10-10 16:19:15', '查询操作', 1);
INSERT INTO `t_log` VALUES (1758, '用户登录', '2021-10-10 16:20:03', '登录操作', 1);
INSERT INTO `t_log` VALUES (1759, '查询商品库存信息', '2021-10-10 16:20:03', '查询操作', 1);
INSERT INTO `t_log` VALUES (1760, '查询商品库存信息', '2021-10-10 16:20:06', '查询操作', 1);
INSERT INTO `t_log` VALUES (1761, '查询商品库存信息', '2021-10-10 16:20:06', '查询操作', 1);
INSERT INTO `t_log` VALUES (1762, '查询商品库存信息', '2021-10-10 16:20:59', '查询操作', 1);
INSERT INTO `t_log` VALUES (1763, '查询商品库存信息', '2021-10-10 16:21:05', '查询操作', 1);
INSERT INTO `t_log` VALUES (1764, '用户登录', '2021-10-10 16:21:57', '登录操作', 1);
INSERT INTO `t_log` VALUES (1765, '查询商品库存信息', '2021-10-10 16:21:57', '查询操作', 1);
INSERT INTO `t_log` VALUES (1766, '查询商品信息', '2021-10-10 16:22:00', '查询操作', 1);
INSERT INTO `t_log` VALUES (1767, '查询商品信息', '2021-10-10 16:22:00', '查询操作', 1);
INSERT INTO `t_log` VALUES (1768, '查询商品库存信息', '2021-10-10 16:22:01', '查询操作', 1);
INSERT INTO `t_log` VALUES (1769, '查询商品库存信息', '2021-10-10 16:22:01', '查询操作', 1);
INSERT INTO `t_log` VALUES (1770, '用户登录', '2021-10-10 16:30:54', '登录操作', 1);
INSERT INTO `t_log` VALUES (1771, '查询商品库存信息', '2021-10-10 16:31:05', '查询操作', 1);
INSERT INTO `t_log` VALUES (1772, '查询商品库存信息', '2021-10-10 16:31:07', '查询操作', 1);
INSERT INTO `t_log` VALUES (1773, '查询商品库存信息', '2021-10-10 16:31:08', '查询操作', 1);
INSERT INTO `t_log` VALUES (1774, '更新商品信息[id=1, code=null, name=陶华碧老干妈香辣脆油辣椒, model=null, unit=null, purchasingPrice=0.0, sellingPrice=0.0, inventoryQuantity=21, minNum=0, producer=null, remarks=null]', '2021-10-10 16:31:13', '更新操作', 1);
INSERT INTO `t_log` VALUES (1775, '查询商品库存信息', '2021-10-10 16:31:29', '查询操作', 1);
INSERT INTO `t_log` VALUES (1776, '查询商品库存信息', '2021-10-10 16:31:31', '查询操作', 1);
INSERT INTO `t_log` VALUES (1777, '查询商品库存信息', '2021-10-10 16:31:33', '查询操作', 1);
INSERT INTO `t_log` VALUES (1778, '查询商品库存信息', '2021-10-10 16:31:33', '查询操作', 1);
INSERT INTO `t_log` VALUES (1779, '查询商品库存信息', '2021-10-10 16:31:41', '查询操作', 1);
INSERT INTO `t_log` VALUES (1780, '查询商品库存信息', '2021-10-10 16:31:41', '查询操作', 1);
INSERT INTO `t_log` VALUES (1781, '查询商品库存信息', '2021-10-10 16:31:42', '查询操作', 1);
INSERT INTO `t_log` VALUES (1782, '查询商品库存信息', '2021-10-10 16:31:43', '查询操作', 1);
INSERT INTO `t_log` VALUES (1783, '查询商品信息', '2021-10-10 16:31:45', '查询操作', 1);
INSERT INTO `t_log` VALUES (1784, '查询商品信息', '2021-10-10 16:31:45', '查询操作', 1);
INSERT INTO `t_log` VALUES (1785, '查询商品库存信息', '2021-10-10 16:32:21', '查询操作', 1);
INSERT INTO `t_log` VALUES (1786, '查询商品库存信息', '2021-10-10 16:32:22', '查询操作', 1);
INSERT INTO `t_log` VALUES (1787, '查询商品库存信息', '2021-10-10 16:33:00', '查询操作', 1);
INSERT INTO `t_log` VALUES (1788, '查询商品库存信息', '2021-10-10 16:33:02', '查询操作', 1);
INSERT INTO `t_log` VALUES (1789, '查询商品库存信息', '2021-10-10 16:33:02', '查询操作', 1);
INSERT INTO `t_log` VALUES (1790, '查询供应商信息', '2021-10-10 16:41:09', '查询操作', 1);
INSERT INTO `t_log` VALUES (1791, '查询供应商信息', '2021-10-10 16:41:09', '查询操作', 1);
INSERT INTO `t_log` VALUES (1792, '查询客户信息', '2021-10-10 16:41:10', '查询操作', 1);
INSERT INTO `t_log` VALUES (1793, '查询客户信息', '2021-10-10 16:41:10', '查询操作', 1);
INSERT INTO `t_log` VALUES (1794, '查询供应商信息', '2021-10-10 16:44:39', '查询操作', 1);
INSERT INTO `t_log` VALUES (1795, '查询商品库存信息', '2021-10-10 16:46:13', '查询操作', 1);
INSERT INTO `t_log` VALUES (1796, '用户登录', '2021-10-10 16:51:14', '登录操作', 1);
INSERT INTO `t_log` VALUES (1797, '查询商品库存信息', '2021-10-10 16:51:15', '查询操作', 1);
INSERT INTO `t_log` VALUES (1798, '查询商品库存信息', '2021-10-10 16:51:17', '查询操作', 1);
INSERT INTO `t_log` VALUES (1799, '查询商品库存信息', '2021-10-10 16:51:18', '查询操作', 1);
INSERT INTO `t_log` VALUES (1800, '用户登录', '2021-10-10 17:04:38', '登录操作', 1);
INSERT INTO `t_log` VALUES (1801, '查询商品库存信息', '2021-10-10 17:04:38', '查询操作', 1);
INSERT INTO `t_log` VALUES (1802, '查询商品库存信息', '2021-10-10 17:04:40', '查询操作', 1);
INSERT INTO `t_log` VALUES (1803, '更新商品信息[id=1, code=0001, name=陶华碧老干妈香辣脆油辣椒, model=红色装, unit=瓶, purchasingPrice=33.5, sellingPrice=8.5, inventoryQuantity=22, minNum=1000, producer=贵州省贵阳南明老干妈风味食品有限公司, remarks=null]', '2021-10-10 17:04:55', '更新操作', 1);
INSERT INTO `t_log` VALUES (1804, '用户登录', '2021-10-10 17:07:14', '登录操作', 1);
INSERT INTO `t_log` VALUES (1805, '查询商品库存信息', '2021-10-10 17:07:14', '查询操作', 1);
INSERT INTO `t_log` VALUES (1806, '查询商品库存信息', '2021-10-10 17:07:21', '查询操作', 1);
INSERT INTO `t_log` VALUES (1807, '查询商品库存信息', '2021-10-10 17:07:22', '查询操作', 1);
INSERT INTO `t_log` VALUES (1808, '用户登录', '2021-10-10 17:38:15', '登录操作', 1);
INSERT INTO `t_log` VALUES (1809, '查询商品库存信息', '2021-10-10 17:38:16', '查询操作', 1);
INSERT INTO `t_log` VALUES (1810, '查询商品库存信息', '2021-10-10 17:38:18', '查询操作', 1);
INSERT INTO `t_log` VALUES (1811, '更新商品信息[id=1, code=0001, name=陶华碧老干妈香辣脆油辣椒, model=红色装, unit=瓶, purchasingPrice=33.5, sellingPrice=8.5, inventoryQuantity=22, minNum=1000, producer=贵州省贵阳南明老干妈风味食品有限公司, remarks=null]', '2021-10-10 17:38:26', '更新操作', 1);
INSERT INTO `t_log` VALUES (1812, '用户登录', '2021-10-10 17:39:31', '登录操作', 1);
INSERT INTO `t_log` VALUES (1813, '查询商品库存信息', '2021-10-10 17:39:32', '查询操作', 1);
INSERT INTO `t_log` VALUES (1814, '查询商品库存信息', '2021-10-10 17:39:39', '查询操作', 1);
INSERT INTO `t_log` VALUES (1815, '用户登录', '2021-10-10 17:40:02', '登录操作', 1);
INSERT INTO `t_log` VALUES (1816, '查询商品库存信息', '2021-10-10 17:40:03', '查询操作', 1);
INSERT INTO `t_log` VALUES (1817, '查询商品库存信息', '2021-10-10 17:40:04', '查询操作', 1);
INSERT INTO `t_log` VALUES (1818, '更新商品信息[id=1, code=null, name=陶华碧老干妈香辣脆油辣椒, model=null, unit=null, purchasingPrice=0.0, sellingPrice=0.0, inventoryQuantity=22, minNum=0, producer=null, remarks=null]', '2021-10-10 17:40:10', '更新操作', 1);
INSERT INTO `t_log` VALUES (1819, '更新商品信息[id=1, code=null, name=陶华碧老干妈香辣脆油辣椒, model=null, unit=null, purchasingPrice=0.0, sellingPrice=0.0, inventoryQuantity=22, minNum=0, producer=null, remarks=null]', '2021-10-10 17:40:21', '更新操作', 1);
INSERT INTO `t_log` VALUES (1820, '更新商品信息[id=1, code=null, name=陶华碧老干妈香辣脆油辣椒, model=null, unit=null, purchasingPrice=0.0, sellingPrice=0.0, inventoryQuantity=22, minNum=0, producer=null, remarks=null]', '2021-10-10 17:40:28', '更新操作', 1);
INSERT INTO `t_log` VALUES (1821, '用户登录', '2021-10-10 17:43:00', '登录操作', 1);
INSERT INTO `t_log` VALUES (1822, '查询商品库存信息', '2021-10-10 17:43:01', '查询操作', 1);
INSERT INTO `t_log` VALUES (1823, '查询商品库存信息', '2021-10-10 17:43:02', '查询操作', 1);
INSERT INTO `t_log` VALUES (1824, '更新商品信息[id=1, code=null, name=陶华碧老干妈香辣脆油辣椒, model=null, unit=null, purchasingPrice=0.0, sellingPrice=0.0, inventoryQuantity=22, minNum=0, producer=null, remarks=null]', '2021-10-10 17:43:23', '更新操作', 1);
INSERT INTO `t_log` VALUES (1825, '用户登录', '2021-10-10 18:03:15', '登录操作', 1);
INSERT INTO `t_log` VALUES (1826, '查询商品库存信息', '2021-10-10 18:03:16', '查询操作', 1);
INSERT INTO `t_log` VALUES (1827, '查询商品库存信息', '2021-10-10 18:03:20', '查询操作', 1);
INSERT INTO `t_log` VALUES (1828, '更新商品信息[id=1, code=null, name=陶华碧老干妈香辣脆油辣椒, model=null, unit=null, purchasingPrice=0.0, sellingPrice=0.0, inventoryQuantity=22, minNum=0, producer=null, remarks=null]', '2021-10-10 18:03:28', '更新操作', 1);
INSERT INTO `t_log` VALUES (1829, '用户登录', '2021-10-10 18:06:05', '登录操作', 1);
INSERT INTO `t_log` VALUES (1830, '查询商品库存信息', '2021-10-10 18:06:06', '查询操作', 1);
INSERT INTO `t_log` VALUES (1831, '查询商品库存信息', '2021-10-10 18:06:09', '查询操作', 1);
INSERT INTO `t_log` VALUES (1832, '查询商品类别信息', '2021-10-10 18:06:10', '查询操作', 1);
INSERT INTO `t_log` VALUES (1833, '更新商品信息[id=1, code=null, name=陶华碧老干妈香辣脆油辣椒, model=null, unit=null, purchasingPrice=0.0, sellingPrice=0.0, inventoryQuantity=22, minNum=0, producer=null, remarks=null]', '2021-10-10 18:06:19', '更新操作', 1);
INSERT INTO `t_log` VALUES (1834, '查询商品库存信息', '2021-10-10 18:06:34', '查询操作', 1);
INSERT INTO `t_log` VALUES (1835, '查询商品库存信息', '2021-10-10 18:11:41', '查询操作', 1);
INSERT INTO `t_log` VALUES (1836, '更新商品信息[id=1, code=null, name=陶华碧老干妈香辣脆油辣椒, model=null, unit=null, purchasingPrice=0.0, sellingPrice=0.0, inventoryQuantity=21, minNum=0, producer=null, remarks=null]', '2021-10-10 18:11:47', '更新操作', 1);
INSERT INTO `t_log` VALUES (1837, '用户登录', '2021-10-10 18:15:18', '登录操作', 1);
INSERT INTO `t_log` VALUES (1838, '用户登录', '2021-10-10 18:15:18', '登录操作', 1);
INSERT INTO `t_log` VALUES (1839, '查询商品库存信息', '2021-10-10 18:15:19', '查询操作', 1);
INSERT INTO `t_log` VALUES (1840, '查询商品库存信息', '2021-10-10 18:15:22', '查询操作', 1);
INSERT INTO `t_log` VALUES (1841, '查询商品库存信息', '2021-10-10 18:15:22', '查询操作', 1);
INSERT INTO `t_log` VALUES (1842, '查询商品库存信息', '2021-10-10 18:15:25', '查询操作', 1);
INSERT INTO `t_log` VALUES (1843, '查询商品信息', '2021-10-10 18:15:34', '查询操作', 1);
INSERT INTO `t_log` VALUES (1844, '查询商品信息', '2021-10-10 18:15:34', '查询操作', 1);
INSERT INTO `t_log` VALUES (1845, '更新商品信息[id=1, code=null, name=陶华碧老干妈香辣脆油辣椒, model=null, unit=null, purchasingPrice=0.0, sellingPrice=0.0, inventoryQuantity=22, minNum=0, producer=null, remarks=null]', '2021-10-10 18:15:44', '更新操作', 1);
INSERT INTO `t_log` VALUES (1846, '用户登录', '2021-10-10 18:17:23', '登录操作', 1);
INSERT INTO `t_log` VALUES (1847, '查询商品库存信息', '2021-10-10 18:17:24', '查询操作', 1);
INSERT INTO `t_log` VALUES (1848, '查询商品库存信息', '2021-10-10 18:17:28', '查询操作', 1);
INSERT INTO `t_log` VALUES (1849, '查询商品库存信息', '2021-10-10 18:17:28', '查询操作', 1);
INSERT INTO `t_log` VALUES (1850, '更新商品信息[id=1, code=null, name=陶华碧老干妈香辣脆油辣椒, model=null, unit=null, purchasingPrice=0.0, sellingPrice=0.0, inventoryQuantity=21, minNum=0, producer=null, remarks=null]', '2021-10-10 18:17:48', '更新操作', 1);
INSERT INTO `t_log` VALUES (1851, '查询商品库存信息', '2021-10-10 18:17:52', '查询操作', 1);
INSERT INTO `t_log` VALUES (1852, '查询商品库存信息', '2021-10-10 18:17:58', '查询操作', 1);
INSERT INTO `t_log` VALUES (1853, '查询商品库存信息', '2021-10-10 18:17:58', '查询操作', 1);
INSERT INTO `t_log` VALUES (1854, '查询商品库存信息', '2021-10-10 18:17:58', '查询操作', 1);
INSERT INTO `t_log` VALUES (1855, '更新商品信息[id=1, code=null, name=陶华碧老干妈香辣脆油辣椒, model=null, unit=null, purchasingPrice=0.0, sellingPrice=0.0, inventoryQuantity=211, minNum=0, producer=null, remarks=null]', '2021-10-10 18:18:11', '更新操作', 1);
INSERT INTO `t_log` VALUES (1856, '查询商品信息', '2021-10-10 18:18:28', '查询操作', 1);
INSERT INTO `t_log` VALUES (1857, '查询商品信息', '2021-10-10 18:18:28', '查询操作', 1);
INSERT INTO `t_log` VALUES (1858, '查询商品库存信息', '2021-10-10 18:18:31', '查询操作', 1);
INSERT INTO `t_log` VALUES (1859, '查询供应商信息', '2021-10-10 18:18:44', '查询操作', 1);
INSERT INTO `t_log` VALUES (1860, '查询供应商信息', '2021-10-10 18:18:44', '查询操作', 1);
INSERT INTO `t_log` VALUES (1861, '更新供应商信息[id=1, name=上海福桂食品有限公司, contact=aaaa, number=0773-7217175, address=上海市金山区张堰镇松金公路2072号6607室, remarks=失信供应商1]', '2021-10-10 18:18:51', '更新操作', 1);
INSERT INTO `t_log` VALUES (1862, '查询供应商信息', '2021-10-10 18:18:51', '查询操作', 1);
INSERT INTO `t_log` VALUES (1863, '更新供应商信息[id=1, name=上海福桂食品有限公司, contact=aaaa, number=0773-7217175, address=上海市金山区张堰镇松金公路2072号6607室, remarks=失信供应商12]', '2021-10-10 18:18:58', '更新操作', 1);
INSERT INTO `t_log` VALUES (1864, '查询供应商信息', '2021-10-10 18:18:58', '查询操作', 1);
INSERT INTO `t_log` VALUES (1865, '用户登录', '2021-10-10 18:37:39', '登录操作', 1);
INSERT INTO `t_log` VALUES (1866, '查询商品库存信息', '2021-10-10 18:37:40', '查询操作', 1);
INSERT INTO `t_log` VALUES (1867, '查询供应商信息', '2021-10-10 18:37:41', '查询操作', 1);
INSERT INTO `t_log` VALUES (1868, '查询供应商信息', '2021-10-10 18:37:41', '查询操作', 1);
INSERT INTO `t_log` VALUES (1869, '更新供应商信息[id=1, name=上海福桂食品有限公司, contact=aaaa, number=0773-7217175, address=上海市金山区张堰镇松金公路2072号6607室, remarks=失信供应商121]', '2021-10-10 18:44:00', '更新操作', 1);
INSERT INTO `t_log` VALUES (1870, '查询供应商信息', '2021-10-10 18:44:00', '查询操作', 1);
INSERT INTO `t_log` VALUES (1871, '查询商品库存信息', '2021-10-10 18:44:07', '查询操作', 1);
INSERT INTO `t_log` VALUES (1872, '查询商品库存信息', '2021-10-10 18:44:07', '查询操作', 1);
INSERT INTO `t_log` VALUES (1873, '更新商品信息[id=1, code=null, name=陶华碧老干妈香辣脆油辣椒, model=null, unit=null, purchasingPrice=0.0, sellingPrice=0.0, inventoryQuantity=2111, minNum=0, producer=null, remarks=null]', '2021-10-10 18:44:11', '更新操作', 1);
INSERT INTO `t_log` VALUES (1874, '用户登录', '2021-10-10 18:48:02', '登录操作', 1);
INSERT INTO `t_log` VALUES (1875, '查询商品库存信息', '2021-10-10 18:48:03', '查询操作', 1);
INSERT INTO `t_log` VALUES (1876, '查询商品库存信息', '2021-10-10 18:48:06', '查询操作', 1);
INSERT INTO `t_log` VALUES (1877, '查询商品库存信息', '2021-10-10 18:48:06', '查询操作', 1);
INSERT INTO `t_log` VALUES (1878, '更新商品信息[id=1, code=null, name=陶华碧老干妈香辣脆油辣椒, model=null, unit=null, purchasingPrice=0.0, sellingPrice=0.0, inventoryQuantity=211, minNum=0, producer=null, remarks=null]', '2021-10-10 18:48:15', '更新操作', 1);
INSERT INTO `t_log` VALUES (1879, '更新商品信息[id=1, code=null, name=陶华碧老干妈香辣脆油辣椒, model=null, unit=null, purchasingPrice=0.0, sellingPrice=0.0, inventoryQuantity=21111, minNum=0, producer=null, remarks=null]', '2021-10-10 18:48:23', '更新操作', 1);
INSERT INTO `t_log` VALUES (1880, '更新商品信息[id=1, code=null, name=陶华碧老干妈香辣脆油辣椒, model=null, unit=null, purchasingPrice=0.0, sellingPrice=0.0, inventoryQuantity=11, minNum=0, producer=null, remarks=null]', '2021-10-10 18:48:32', '更新操作', 1);
INSERT INTO `t_log` VALUES (1881, '查询供应商信息', '2021-10-10 18:48:51', '查询操作', 1);
INSERT INTO `t_log` VALUES (1882, '查询供应商信息', '2021-10-10 18:48:51', '查询操作', 1);
INSERT INTO `t_log` VALUES (1883, '更新供应商信息[id=1, name=上海福桂食品有限公司, contact=aaaa, number=0773-7217175, address=上海市金山区张堰镇松金公路2072号6607室, remarks=失信供应商1211]', '2021-10-10 18:48:54', '更新操作', 1);
INSERT INTO `t_log` VALUES (1884, '查询供应商信息', '2021-10-10 18:48:54', '查询操作', 1);
INSERT INTO `t_log` VALUES (1885, '用户登录', '2021-10-10 18:51:39', '登录操作', 1);
INSERT INTO `t_log` VALUES (1886, '查询商品库存信息', '2021-10-10 18:51:40', '查询操作', 1);
INSERT INTO `t_log` VALUES (1887, '查询商品库存信息', '2021-10-10 18:51:41', '查询操作', 1);
INSERT INTO `t_log` VALUES (1888, '查询商品库存信息', '2021-10-10 18:51:41', '查询操作', 1);
INSERT INTO `t_log` VALUES (1889, '更新商品信息[id=1, code=null, name=陶华碧老干妈香辣脆油辣椒, model=null, unit=null, purchasingPrice=0.0, sellingPrice=0.0, inventoryQuantity=12, minNum=0, producer=null, remarks=null]', '2021-10-10 18:51:46', '更新操作', 1);
INSERT INTO `t_log` VALUES (1890, '查询商品库存信息', '2021-10-10 18:51:46', '查询操作', 1);
INSERT INTO `t_log` VALUES (1891, '更新商品信息[id=1, code=null, name=陶华碧老干妈香辣脆油辣椒, model=null, unit=null, purchasingPrice=0.0, sellingPrice=0.0, inventoryQuantity=123, minNum=0, producer=null, remarks=null]', '2021-10-10 18:51:51', '更新操作', 1);
INSERT INTO `t_log` VALUES (1892, '查询商品库存信息', '2021-10-10 18:51:51', '查询操作', 1);
INSERT INTO `t_log` VALUES (1893, '更新商品信息[id=1, code=null, name=陶华碧老干妈香辣脆油辣椒, model=null, unit=null, purchasingPrice=0.0, sellingPrice=0.0, inventoryQuantity=123, minNum=0, producer=null, remarks=null]', '2021-10-10 18:57:59', '更新操作', 1);
INSERT INTO `t_log` VALUES (1894, '查询商品库存信息', '2021-10-10 18:57:59', '查询操作', 1);
INSERT INTO `t_log` VALUES (1895, '查询商品库存信息', '2021-10-10 18:59:46', '查询操作', 1);
INSERT INTO `t_log` VALUES (1896, '用户注销', '2021-10-10 18:59:48', '注销操作', 1);
INSERT INTO `t_log` VALUES (1897, '用户登录', '2021-10-10 18:59:50', '登录操作', 1);
INSERT INTO `t_log` VALUES (1898, '查询商品库存信息', '2021-10-10 18:59:50', '查询操作', 1);
INSERT INTO `t_log` VALUES (1899, '查询商品库存信息', '2021-10-10 19:00:02', '查询操作', 1);
INSERT INTO `t_log` VALUES (1900, '查询商品信息', '2021-10-10 19:00:05', '查询操作', 1);
INSERT INTO `t_log` VALUES (1901, '查询商品信息', '2021-10-10 19:00:05', '查询操作', 1);
INSERT INTO `t_log` VALUES (1902, '查询商品库存信息', '2021-10-10 19:00:50', '查询操作', 1);
INSERT INTO `t_log` VALUES (1903, '查询商品信息', '2021-10-10 19:00:51', '查询操作', 1);
INSERT INTO `t_log` VALUES (1904, '查询商品信息', '2021-10-10 19:00:51', '查询操作', 1);
INSERT INTO `t_log` VALUES (1905, '用户登录', '2021-10-10 19:01:53', '登录操作', 1);
INSERT INTO `t_log` VALUES (1906, '查询商品库存信息', '2021-10-10 19:01:54', '查询操作', 1);
INSERT INTO `t_log` VALUES (1907, '查询商品信息', '2021-10-10 19:02:31', '查询操作', 1);
INSERT INTO `t_log` VALUES (1908, '查询商品信息', '2021-10-10 19:02:31', '查询操作', 1);
INSERT INTO `t_log` VALUES (1909, '用户注销', '2021-10-10 19:05:25', '注销操作', 1);
INSERT INTO `t_log` VALUES (1910, '用户登录', '2021-10-10 19:05:26', '登录操作', 1);
INSERT INTO `t_log` VALUES (1911, '查询商品库存信息', '2021-10-10 19:05:26', '查询操作', 1);
INSERT INTO `t_log` VALUES (1912, '用户登录', '2021-10-10 19:05:57', '登录操作', 1);
INSERT INTO `t_log` VALUES (1913, '查询商品库存信息', '2021-10-10 19:05:58', '查询操作', 1);
INSERT INTO `t_log` VALUES (1914, '查询商品库存信息', '2021-10-10 19:06:07', '查询操作', 1);
INSERT INTO `t_log` VALUES (1915, '用户登录', '2021-10-10 19:06:32', '登录操作', 1);
INSERT INTO `t_log` VALUES (1916, '查询商品库存信息', '2021-10-10 19:06:33', '查询操作', 1);
INSERT INTO `t_log` VALUES (1917, '用户登录', '2021-10-10 19:06:58', '登录操作', 1);
INSERT INTO `t_log` VALUES (1918, '查询商品库存信息', '2021-10-10 19:06:59', '查询操作', 1);
INSERT INTO `t_log` VALUES (1919, '查询商品库存信息', '2021-10-10 19:08:17', '查询操作', 1);
INSERT INTO `t_log` VALUES (1920, '查询商品信息', '2021-10-10 19:09:47', '查询操作', 1);
INSERT INTO `t_log` VALUES (1921, '查询商品信息', '2021-10-10 19:09:47', '查询操作', 1);
INSERT INTO `t_log` VALUES (1922, '查询商品库存信息', '2021-10-10 19:26:37', '查询操作', 1);
INSERT INTO `t_log` VALUES (1923, '查询商品库存信息', '2021-10-10 19:26:37', '查询操作', 1);
INSERT INTO `t_log` VALUES (1924, '查询商品类别信息', '2021-10-10 19:27:02', '查询操作', 1);
INSERT INTO `t_log` VALUES (1925, '查询商品类别信息', '2021-10-10 19:27:08', '查询操作', 1);
INSERT INTO `t_log` VALUES (1928, '添加进货单', '2021-10-10 19:27:27', '添加操作', 1);
INSERT INTO `t_log` VALUES (1929, '查询商品信息', '2021-10-10 19:27:29', '查询操作', 1);
INSERT INTO `t_log` VALUES (1930, '查询商品信息', '2021-10-10 19:27:29', '查询操作', 1);
INSERT INTO `t_log` VALUES (1931, '查询商品库存信息', '2021-10-10 19:45:26', '查询操作', 1);
INSERT INTO `t_log` VALUES (1932, '查询商品库存信息', '2021-10-10 19:49:23', '查询操作', 1);
INSERT INTO `t_log` VALUES (1933, '查询商品库存信息', '2021-10-10 19:49:48', '查询操作', 1);
INSERT INTO `t_log` VALUES (1934, '查询商品库存信息', '2021-10-10 19:49:49', '查询操作', 1);
INSERT INTO `t_log` VALUES (1935, '查询商品库存信息', '2021-10-10 19:49:57', '查询操作', 1);
INSERT INTO `t_log` VALUES (1936, '查询商品库存信息', '2021-10-10 19:49:58', '查询操作', 1);
INSERT INTO `t_log` VALUES (1937, '查询商品库存信息', '2021-10-10 19:49:58', '查询操作', 1);
INSERT INTO `t_log` VALUES (1938, '查询商品库存信息', '2021-10-10 19:49:58', '查询操作', 1);
INSERT INTO `t_log` VALUES (1939, '查询商品库存信息', '2021-10-10 19:50:09', '查询操作', 1);
INSERT INTO `t_log` VALUES (1940, '查询商品库存信息', '2021-10-10 19:50:09', '查询操作', 1);
INSERT INTO `t_log` VALUES (1941, '查询商品库存信息', '2021-10-10 19:52:15', '查询操作', 1);
INSERT INTO `t_log` VALUES (1942, '查询商品库存信息', '2021-10-10 19:52:16', '查询操作', 1);
INSERT INTO `t_log` VALUES (1943, '用户登录', '2021-10-10 20:00:36', '登录操作', 1);
INSERT INTO `t_log` VALUES (1944, '查询商品库存信息', '2021-10-10 20:00:37', '查询操作', 1);
INSERT INTO `t_log` VALUES (1945, '查询商品库存信息', '2021-10-10 20:03:41', '查询操作', 1);
INSERT INTO `t_log` VALUES (1946, '用户登录', '2021-10-10 20:04:01', '登录操作', 1);
INSERT INTO `t_log` VALUES (1947, '查询商品库存信息', '2021-10-10 20:04:01', '查询操作', 1);
INSERT INTO `t_log` VALUES (1948, '查询商品类别信息', '2021-10-10 20:04:07', '查询操作', 1);
INSERT INTO `t_log` VALUES (1949, '查询商品库存信息', '2021-10-10 20:04:27', '查询操作', 1);
INSERT INTO `t_log` VALUES (1950, '查询商品信息', '2021-10-10 20:04:31', '查询操作', 1);
INSERT INTO `t_log` VALUES (1951, '查询商品信息', '2021-10-10 20:04:31', '查询操作', 1);
INSERT INTO `t_log` VALUES (1952, '查询商品信息', '2021-10-10 20:04:33', '查询操作', 1);
INSERT INTO `t_log` VALUES (1953, '查询商品信息', '2021-10-10 20:04:33', '查询操作', 1);
INSERT INTO `t_log` VALUES (1954, '查询商品信息', '2021-10-10 20:04:39', '查询操作', 1);
INSERT INTO `t_log` VALUES (1955, '查询商品信息', '2021-10-10 20:04:39', '查询操作', 1);
INSERT INTO `t_log` VALUES (1956, '查询商品库存信息', '2021-10-10 20:04:58', '查询操作', 1);
INSERT INTO `t_log` VALUES (1957, '查询商品库存信息', '2021-10-10 20:04:58', '查询操作', 1);
INSERT INTO `t_log` VALUES (1958, '查询商品信息', '2021-10-10 20:05:11', '查询操作', 1);
INSERT INTO `t_log` VALUES (1959, '查询商品单位信息', '2021-10-10 20:05:11', '查询操作', 1);
INSERT INTO `t_log` VALUES (1960, '查询商品类别信息', '2021-10-10 20:05:11', '查询操作', 1);
INSERT INTO `t_log` VALUES (1961, '查询商品信息', '2021-10-10 20:05:11', '查询操作', 1);
INSERT INTO `t_log` VALUES (1962, '查询商品单位信息', '2021-10-10 20:05:11', '查询操作', 1);
INSERT INTO `t_log` VALUES (1963, '查询商品类别信息', '2021-10-10 20:05:54', '查询操作', 1);
INSERT INTO `t_log` VALUES (1964, '查询商品库存信息', '2021-10-10 20:26:54', '查询操作', 1);
INSERT INTO `t_log` VALUES (1965, '查询商品库存信息', '2021-10-10 20:30:33', '查询操作', 1);
INSERT INTO `t_log` VALUES (1966, '用户登录', '2021-10-11 17:16:47', '登录操作', 1);
INSERT INTO `t_log` VALUES (1967, '查询商品库存信息', '2021-10-11 17:16:52', '查询操作', 1);
INSERT INTO `t_log` VALUES (1968, '查询商品库存信息', '2021-10-11 17:17:24', '查询操作', 1);
INSERT INTO `t_log` VALUES (1969, '查询商品库存信息', '2021-10-11 17:17:24', '查询操作', 1);
INSERT INTO `t_log` VALUES (1970, '查询商品库存信息', '2021-10-11 17:17:59', '查询操作', 1);
INSERT INTO `t_log` VALUES (1971, '查询商品信息', '2021-10-11 17:18:33', '查询操作', 1);
INSERT INTO `t_log` VALUES (1972, '查询商品信息', '2021-10-11 17:18:33', '查询操作', 1);
INSERT INTO `t_log` VALUES (1973, '查询商品信息', '2021-10-11 17:18:35', '查询操作', 1);
INSERT INTO `t_log` VALUES (1974, '查询商品信息', '2021-10-11 17:18:35', '查询操作', 1);
INSERT INTO `t_log` VALUES (1975, '更新商品信息[id=18, code=null, name=劲仔小鱼干, model=null, unit=null, purchasingPrice=0.0, sellingPrice=0.0, inventoryQuantity=4, minNum=0, producer=null, remarks=null]', '2021-10-11 17:19:23', '更新操作', 1);
INSERT INTO `t_log` VALUES (1976, '查询商品库存信息', '2021-10-11 17:19:23', '查询操作', 1);
INSERT INTO `t_log` VALUES (1977, '查询商品信息', '2021-10-11 17:19:38', '查询操作', 1);
INSERT INTO `t_log` VALUES (1978, '查询商品信息', '2021-10-11 17:19:38', '查询操作', 1);
INSERT INTO `t_log` VALUES (1979, '查询商品信息', '2021-10-11 17:19:55', '查询操作', 1);
INSERT INTO `t_log` VALUES (1980, '查询商品信息', '2021-10-11 17:19:55', '查询操作', 1);
INSERT INTO `t_log` VALUES (1981, '查询商品信息', '2021-10-11 17:20:30', '查询操作', 1);
INSERT INTO `t_log` VALUES (1982, '查询商品信息', '2021-10-11 17:20:30', '查询操作', 1);
INSERT INTO `t_log` VALUES (1983, '查询客户信息', '2021-10-11 17:20:37', '查询操作', 1);
INSERT INTO `t_log` VALUES (1984, '查询客户信息', '2021-10-11 17:20:37', '查询操作', 1);
INSERT INTO `t_log` VALUES (1985, '查询商品信息', '2021-10-11 17:20:37', '查询操作', 1);
INSERT INTO `t_log` VALUES (1986, '查询商品单位信息', '2021-10-11 17:20:37', '查询操作', 1);
INSERT INTO `t_log` VALUES (1987, '查询商品类别信息', '2021-10-11 17:20:37', '查询操作', 1);
INSERT INTO `t_log` VALUES (1988, '查询商品信息', '2021-10-11 17:20:37', '查询操作', 1);
INSERT INTO `t_log` VALUES (1989, '查询商品单位信息', '2021-10-11 17:20:37', '查询操作', 1);
INSERT INTO `t_log` VALUES (1990, '用户登录', '2021-10-12 09:14:17', '登录操作', 1);
INSERT INTO `t_log` VALUES (1991, '查询商品库存信息', '2021-10-12 09:14:18', '查询操作', 1);
INSERT INTO `t_log` VALUES (1992, '查询商品信息', '2021-10-12 09:14:19', '查询操作', 1);
INSERT INTO `t_log` VALUES (1993, '查询商品信息', '2021-10-12 09:14:19', '查询操作', 1);
INSERT INTO `t_log` VALUES (1994, '查询商品信息', '2021-10-12 09:14:36', '查询操作', 1);
INSERT INTO `t_log` VALUES (1995, '查询商品信息', '2021-10-12 09:14:36', '查询操作', 1);
INSERT INTO `t_log` VALUES (1996, '查询商品信息', '2021-10-12 09:22:42', '查询操作', 1);
INSERT INTO `t_log` VALUES (1997, '查询商品信息', '2021-10-12 09:22:42', '查询操作', 1);
INSERT INTO `t_log` VALUES (1998, '查询商品信息', '2021-10-12 09:22:42', '查询操作', 1);
INSERT INTO `t_log` VALUES (1999, '查询商品信息', '2021-10-12 09:22:43', '查询操作', 1);
INSERT INTO `t_log` VALUES (2000, '查询商品信息', '2021-10-12 09:22:47', '查询操作', 1);
INSERT INTO `t_log` VALUES (2001, '查询商品信息', '2021-10-12 09:22:47', '查询操作', 1);
INSERT INTO `t_log` VALUES (2002, '查询供应商信息', '2021-10-12 09:23:31', '查询操作', 1);
INSERT INTO `t_log` VALUES (2003, '查询供应商信息', '2021-10-12 09:23:31', '查询操作', 1);
INSERT INTO `t_log` VALUES (2004, '查询商品信息', '2021-10-12 09:23:40', '查询操作', 1);
INSERT INTO `t_log` VALUES (2005, '查询商品信息', '2021-10-12 09:23:41', '查询操作', 1);
INSERT INTO `t_log` VALUES (2006, '查询商品信息', '2021-10-12 09:24:02', '查询操作', 1);
INSERT INTO `t_log` VALUES (2007, '查询商品信息', '2021-10-12 09:24:03', '查询操作', 1);
INSERT INTO `t_log` VALUES (2008, '查询商品信息', '2021-10-12 09:24:03', '查询操作', 1);
INSERT INTO `t_log` VALUES (2009, '查询商品信息', '2021-10-12 09:24:03', '查询操作', 1);
INSERT INTO `t_log` VALUES (2010, '查询商品类别信息', '2021-10-12 09:24:13', '查询操作', 1);
INSERT INTO `t_log` VALUES (2011, '查询商品类别信息', '2021-10-12 09:24:31', '查询操作', 1);
INSERT INTO `t_log` VALUES (2014, '添加进货单', '2021-10-12 09:24:37', '添加操作', 1);
INSERT INTO `t_log` VALUES (2015, '查询商品信息', '2021-10-12 09:24:39', '查询操作', 1);
INSERT INTO `t_log` VALUES (2016, '查询商品信息', '2021-10-12 09:24:39', '查询操作', 1);
INSERT INTO `t_log` VALUES (2017, '用户登录', '2021-10-12 09:42:12', '登录操作', 1);
INSERT INTO `t_log` VALUES (2018, '查询商品库存信息', '2021-10-12 09:42:13', '查询操作', 1);
INSERT INTO `t_log` VALUES (2019, '查询商品信息', '2021-10-12 09:42:20', '查询操作', 1);
INSERT INTO `t_log` VALUES (2020, '查询商品信息', '2021-10-12 09:42:20', '查询操作', 1);
INSERT INTO `t_log` VALUES (2021, '用户登录', '2021-10-12 09:42:38', '登录操作', 1);
INSERT INTO `t_log` VALUES (2022, '查询商品库存信息', '2021-10-12 09:42:39', '查询操作', 1);
INSERT INTO `t_log` VALUES (2023, '用户登录', '2021-10-12 09:44:47', '登录操作', 1);
INSERT INTO `t_log` VALUES (2024, '查询商品库存信息', '2021-10-12 09:44:47', '查询操作', 1);
INSERT INTO `t_log` VALUES (2025, '用户登录', '2021-10-12 09:49:48', '登录操作', 1);
INSERT INTO `t_log` VALUES (2026, '查询商品库存信息', '2021-10-12 09:49:48', '查询操作', 1);
INSERT INTO `t_log` VALUES (2027, '用户登录', '2021-10-12 09:51:49', '登录操作', 1);
INSERT INTO `t_log` VALUES (2028, '查询商品库存信息', '2021-10-12 09:51:50', '查询操作', 1);
INSERT INTO `t_log` VALUES (2029, '查询商品信息', '2021-10-12 09:51:51', '查询操作', 1);
INSERT INTO `t_log` VALUES (2030, '查询商品信息', '2021-10-12 09:51:51', '查询操作', 1);
INSERT INTO `t_log` VALUES (2031, '用户登录', '2021-10-12 09:52:18', '登录操作', 1);
INSERT INTO `t_log` VALUES (2032, '查询商品库存信息', '2021-10-12 09:52:18', '查询操作', 1);
INSERT INTO `t_log` VALUES (2033, '用户登录', '2021-10-12 09:53:48', '登录操作', 1);
INSERT INTO `t_log` VALUES (2034, '查询商品库存信息', '2021-10-12 09:53:48', '查询操作', 1);
INSERT INTO `t_log` VALUES (2035, '查询商品信息', '2021-10-12 09:54:30', '查询操作', 1);
INSERT INTO `t_log` VALUES (2036, '查询商品信息', '2021-10-12 09:54:30', '查询操作', 1);
INSERT INTO `t_log` VALUES (2037, '用户注销', '2021-10-12 09:54:38', '注销操作', 1);
INSERT INTO `t_log` VALUES (2038, '用户登录', '2021-10-12 09:54:39', '登录操作', 1);
INSERT INTO `t_log` VALUES (2039, '查询商品库存信息', '2021-10-12 09:54:39', '查询操作', 1);
INSERT INTO `t_log` VALUES (2040, '用户登录', '2021-10-12 09:56:42', '登录操作', 1);
INSERT INTO `t_log` VALUES (2041, '查询商品库存信息', '2021-10-12 09:56:43', '查询操作', 1);
INSERT INTO `t_log` VALUES (2042, '用户登录', '2021-10-12 09:58:49', '登录操作', 1);
INSERT INTO `t_log` VALUES (2043, '查询商品库存信息', '2021-10-12 09:58:50', '查询操作', 1);
INSERT INTO `t_log` VALUES (2044, '用户登录', '2021-10-12 10:00:23', '登录操作', 1);
INSERT INTO `t_log` VALUES (2045, '查询商品库存信息', '2021-10-12 10:00:24', '查询操作', 1);
INSERT INTO `t_log` VALUES (2046, '用户登录', '2021-10-12 10:18:40', '登录操作', 1);
INSERT INTO `t_log` VALUES (2047, '查询商品库存信息', '2021-10-12 10:18:40', '查询操作', 1);
INSERT INTO `t_log` VALUES (2048, '查询商品信息', '2021-10-12 10:18:41', '查询操作', 1);
INSERT INTO `t_log` VALUES (2049, '查询商品信息', '2021-10-12 10:18:41', '查询操作', 1);
INSERT INTO `t_log` VALUES (2050, '查询商品库存信息', '2021-10-12 10:18:49', '查询操作', 1);
INSERT INTO `t_log` VALUES (2051, '查询商品库存信息', '2021-10-12 10:19:20', '查询操作', 1);
INSERT INTO `t_log` VALUES (2052, '用户登录', '2021-10-12 10:20:29', '登录操作', 1);
INSERT INTO `t_log` VALUES (2053, '查询商品库存信息', '2021-10-12 10:20:30', '查询操作', 1);
INSERT INTO `t_log` VALUES (2054, '用户登录', '2021-10-12 10:21:20', '登录操作', 1);
INSERT INTO `t_log` VALUES (2055, '查询商品库存信息', '2021-10-12 10:21:20', '查询操作', 1);
INSERT INTO `t_log` VALUES (2056, '用户登录', '2021-10-12 10:23:16', '登录操作', 1);
INSERT INTO `t_log` VALUES (2057, '查询商品库存信息', '2021-10-12 10:23:17', '查询操作', 1);
INSERT INTO `t_log` VALUES (2058, '用户登录', '2021-10-12 10:27:36', '登录操作', 1);
INSERT INTO `t_log` VALUES (2059, '查询商品库存信息', '2021-10-12 10:27:37', '查询操作', 1);
INSERT INTO `t_log` VALUES (2060, '查询商品信息', '2021-10-12 10:28:30', '查询操作', 1);
INSERT INTO `t_log` VALUES (2061, '查询商品信息', '2021-10-12 10:28:30', '查询操作', 1);
INSERT INTO `t_log` VALUES (2062, '用户登录', '2021-10-12 10:47:38', '登录操作', 1);
INSERT INTO `t_log` VALUES (2063, '查询商品库存信息', '2021-10-12 10:47:38', '查询操作', 1);
INSERT INTO `t_log` VALUES (2064, '查询商品信息', '2021-10-12 10:48:00', '查询操作', 1);
INSERT INTO `t_log` VALUES (2065, '查询商品信息', '2021-10-12 10:48:00', '查询操作', 1);
INSERT INTO `t_log` VALUES (2066, '查询商品库存信息', '2021-10-12 10:48:02', '查询操作', 1);
INSERT INTO `t_log` VALUES (2067, '查询商品信息', '2021-10-12 10:48:47', '查询操作', 1);
INSERT INTO `t_log` VALUES (2068, '查询商品信息', '2021-10-12 10:48:47', '查询操作', 1);
INSERT INTO `t_log` VALUES (2069, '查询商品类别信息', '2021-10-12 10:48:51', '查询操作', 1);
INSERT INTO `t_log` VALUES (2072, '添加进货单', '2021-10-12 10:48:55', '添加操作', 1);
INSERT INTO `t_log` VALUES (2073, '查询商品信息', '2021-10-12 10:48:57', '查询操作', 1);
INSERT INTO `t_log` VALUES (2074, '查询商品信息', '2021-10-12 10:48:57', '查询操作', 1);
INSERT INTO `t_log` VALUES (2075, '用户登录', '2021-10-12 10:51:36', '登录操作', 1);
INSERT INTO `t_log` VALUES (2076, '查询商品库存信息', '2021-10-12 10:51:37', '查询操作', 1);
INSERT INTO `t_log` VALUES (2077, '用户登录', '2021-10-12 11:01:58', '登录操作', 1);
INSERT INTO `t_log` VALUES (2078, '查询商品库存信息', '2021-10-12 11:01:58', '查询操作', 1);
INSERT INTO `t_log` VALUES (2079, '用户登录', '2021-10-12 11:02:15', '登录操作', 1);
INSERT INTO `t_log` VALUES (2080, '查询商品库存信息', '2021-10-12 11:02:16', '查询操作', 1);
INSERT INTO `t_log` VALUES (2081, '查询商品信息', '2021-10-12 11:02:35', '查询操作', 1);
INSERT INTO `t_log` VALUES (2082, '查询商品信息', '2021-10-12 11:02:35', '查询操作', 1);
INSERT INTO `t_log` VALUES (2083, '查询商品类别信息', '2021-10-12 11:02:39', '查询操作', 1);
INSERT INTO `t_log` VALUES (2086, '添加退货单', '2021-10-12 11:02:44', '添加操作', 1);
INSERT INTO `t_log` VALUES (2087, '查询商品信息', '2021-10-12 11:02:45', '查询操作', 1);
INSERT INTO `t_log` VALUES (2088, '查询商品信息', '2021-10-12 11:02:45', '查询操作', 1);
INSERT INTO `t_log` VALUES (2089, '用户登录', '2021-10-12 11:07:23', '登录操作', 1);
INSERT INTO `t_log` VALUES (2090, '查询商品库存信息', '2021-10-12 11:07:24', '查询操作', 1);
INSERT INTO `t_log` VALUES (2091, '用户登录', '2021-10-12 11:08:32', '登录操作', 1);
INSERT INTO `t_log` VALUES (2092, '查询商品库存信息', '2021-10-12 11:08:32', '查询操作', 1);
INSERT INTO `t_log` VALUES (2093, '查询商品信息', '2021-10-12 11:08:34', '查询操作', 1);
INSERT INTO `t_log` VALUES (2094, '查询商品信息', '2021-10-12 11:08:34', '查询操作', 1);
INSERT INTO `t_log` VALUES (2095, '查询商品信息', '2021-10-12 11:08:36', '查询操作', 1);
INSERT INTO `t_log` VALUES (2096, '查询商品信息', '2021-10-12 11:08:36', '查询操作', 1);
INSERT INTO `t_log` VALUES (2097, '查询商品库存信息', '2021-10-12 11:09:08', '查询操作', 1);
INSERT INTO `t_log` VALUES (2098, '查询商品库存信息', '2021-10-12 11:09:38', '查询操作', 1);
INSERT INTO `t_log` VALUES (2099, '用户登录', '2021-10-12 11:10:54', '登录操作', 1);
INSERT INTO `t_log` VALUES (2100, '查询商品库存信息', '2021-10-12 11:10:54', '查询操作', 1);
INSERT INTO `t_log` VALUES (2101, '用户登录', '2021-10-12 11:11:45', '登录操作', 1);
INSERT INTO `t_log` VALUES (2102, '查询商品库存信息', '2021-10-12 11:11:45', '查询操作', 1);
INSERT INTO `t_log` VALUES (2103, '查询商品信息', '2021-10-12 11:11:47', '查询操作', 1);
INSERT INTO `t_log` VALUES (2104, '查询商品信息', '2021-10-12 11:11:47', '查询操作', 1);
INSERT INTO `t_log` VALUES (2105, '查询商品信息', '2021-10-12 11:11:47', '查询操作', 1);
INSERT INTO `t_log` VALUES (2106, '查询商品信息', '2021-10-12 11:11:47', '查询操作', 1);
INSERT INTO `t_log` VALUES (2107, '查询商品信息', '2021-10-12 11:12:01', '查询操作', 1);
INSERT INTO `t_log` VALUES (2108, '查询商品信息', '2021-10-12 11:12:01', '查询操作', 1);
INSERT INTO `t_log` VALUES (2109, '查询用户信息', '2021-10-12 11:12:15', '查询操作', 1);
INSERT INTO `t_log` VALUES (2110, '查询用户信息', '2021-10-12 11:12:15', '查询操作', 1);
INSERT INTO `t_log` VALUES (2111, '用户登录', '2021-10-12 14:28:41', '登录操作', 1);
INSERT INTO `t_log` VALUES (2112, '查询商品库存信息', '2021-10-12 14:28:41', '查询操作', 1);
INSERT INTO `t_log` VALUES (2113, '用户登录', '2021-10-13 14:32:04', '登录操作', 1);
INSERT INTO `t_log` VALUES (2114, '查询商品库存信息', '2021-10-13 14:32:04', '查询操作', 1);
INSERT INTO `t_log` VALUES (2115, '用户登录', '2021-10-13 15:25:51', '登录操作', 1);
INSERT INTO `t_log` VALUES (2116, '查询商品库存信息', '2021-10-13 15:25:51', '查询操作', 1);
INSERT INTO `t_log` VALUES (2117, '查询商品信息', '2021-10-13 15:51:29', '查询操作', 1);
INSERT INTO `t_log` VALUES (2118, '查询商品信息', '2021-10-13 15:51:29', '查询操作', 1);
INSERT INTO `t_log` VALUES (2119, '查询商品类别信息', '2021-10-13 15:51:36', '查询操作', 1);
INSERT INTO `t_log` VALUES (2120, '查询商品信息', '2021-10-13 15:51:44', '查询操作', 1);
INSERT INTO `t_log` VALUES (2121, '查询商品信息', '2021-10-13 15:51:44', '查询操作', 1);
INSERT INTO `t_log` VALUES (2122, '用户登录', '2021-10-14 11:18:27', '登录操作', 1);
INSERT INTO `t_log` VALUES (2123, '查询商品库存信息', '2021-10-14 11:18:27', '查询操作', 1);
INSERT INTO `t_log` VALUES (2124, '查询商品信息', '2021-10-14 11:18:29', '查询操作', 1);
INSERT INTO `t_log` VALUES (2125, '查询商品信息', '2021-10-14 11:18:29', '查询操作', 1);
INSERT INTO `t_log` VALUES (2126, '用户登录', '2021-10-14 17:56:20', '登录操作', 1);
INSERT INTO `t_log` VALUES (2127, '查询商品库存信息', '2021-10-14 17:56:21', '查询操作', 1);
INSERT INTO `t_log` VALUES (2128, '用户登录', '2021-10-15 10:21:02', '登录操作', 1);
INSERT INTO `t_log` VALUES (2129, '查询商品库存信息', '2021-10-15 10:21:03', '查询操作', 1);
INSERT INTO `t_log` VALUES (2130, '用户登录', '2021-10-15 17:32:06', '登录操作', 1);
INSERT INTO `t_log` VALUES (2131, '查询商品库存信息', '2021-10-15 17:32:07', '查询操作', 1);
INSERT INTO `t_log` VALUES (2132, '用户登录', '2021-10-15 21:02:06', '登录操作', 1);
INSERT INTO `t_log` VALUES (2133, '查询商品库存信息', '2021-10-15 21:02:07', '查询操作', 1);
INSERT INTO `t_log` VALUES (2134, '用户登录', '2021-10-15 21:02:44', '登录操作', 1);
INSERT INTO `t_log` VALUES (2135, '查询商品库存信息', '2021-10-15 21:02:45', '查询操作', 1);
INSERT INTO `t_log` VALUES (2136, '查询商品信息', '2021-10-15 21:03:09', '查询操作', 1);
INSERT INTO `t_log` VALUES (2137, '查询商品信息', '2021-10-15 21:03:09', '查询操作', 1);
INSERT INTO `t_log` VALUES (2138, '查询商品信息', '2021-10-15 21:03:11', '查询操作', 1);
INSERT INTO `t_log` VALUES (2139, '查询商品信息', '2021-10-15 21:03:11', '查询操作', 1);
INSERT INTO `t_log` VALUES (2140, '查询商品信息', '2021-10-15 21:03:23', '查询操作', 1);
INSERT INTO `t_log` VALUES (2141, '查询商品单位信息', '2021-10-15 21:03:23', '查询操作', 1);
INSERT INTO `t_log` VALUES (2142, '查询商品类别信息', '2021-10-15 21:03:23', '查询操作', 1);
INSERT INTO `t_log` VALUES (2143, '查询商品信息', '2021-10-15 21:03:23', '查询操作', 1);
INSERT INTO `t_log` VALUES (2144, '查询商品单位信息', '2021-10-15 21:03:23', '查询操作', 1);
INSERT INTO `t_log` VALUES (2145, '用户登录', '2021-10-15 21:15:38', '登录操作', 1);
INSERT INTO `t_log` VALUES (2146, '查询商品库存信息', '2021-10-15 21:15:39', '查询操作', 1);
INSERT INTO `t_log` VALUES (2147, '查询商品库存信息', '2021-10-15 21:15:45', '查询操作', 1);
INSERT INTO `t_log` VALUES (2148, '用户登录', '2021-10-15 21:16:19', '登录操作', 1);
INSERT INTO `t_log` VALUES (2149, '查询商品库存信息', '2021-10-15 21:16:19', '查询操作', 1);
INSERT INTO `t_log` VALUES (2150, '查询商品库存信息', '2021-10-15 21:17:38', '查询操作', 1);
INSERT INTO `t_log` VALUES (2151, '查询商品库存信息', '2021-10-15 21:17:42', '查询操作', 1);
INSERT INTO `t_log` VALUES (2152, '查询商品库存信息', '2021-10-15 21:18:08', '查询操作', 1);
INSERT INTO `t_log` VALUES (2153, '查询商品信息', '2021-10-15 21:20:08', '查询操作', 1);
INSERT INTO `t_log` VALUES (2154, '查询商品信息', '2021-10-15 21:20:08', '查询操作', 1);
INSERT INTO `t_log` VALUES (2155, '查询商品类别信息', '2021-10-15 21:20:25', '查询操作', 1);
INSERT INTO `t_log` VALUES (2156, '查询商品类别信息', '2021-10-15 21:20:26', '查询操作', 1);
INSERT INTO `t_log` VALUES (2157, '查询商品类别信息', '2021-10-15 21:23:19', '查询操作', 1);
INSERT INTO `t_log` VALUES (2158, '用户登录', '2021-10-15 21:25:43', '登录操作', 1);
INSERT INTO `t_log` VALUES (2159, '查询商品库存信息', '2021-10-15 21:25:44', '查询操作', 1);
INSERT INTO `t_log` VALUES (2160, '用户登录', '2021-10-15 21:32:35', '登录操作', 1);
INSERT INTO `t_log` VALUES (2161, '查询商品库存信息', '2021-10-15 21:32:36', '查询操作', 1);
INSERT INTO `t_log` VALUES (2162, '用户登录', '2021-10-15 21:32:51', '登录操作', 1);
INSERT INTO `t_log` VALUES (2163, '查询商品库存信息', '2021-10-15 21:32:51', '查询操作', 1);
INSERT INTO `t_log` VALUES (2164, '用户登录', '2021-10-15 21:33:55', '登录操作', 1);
INSERT INTO `t_log` VALUES (2165, '查询商品库存信息', '2021-10-15 21:33:57', '查询操作', 1);
INSERT INTO `t_log` VALUES (2166, '查询商品库存信息', '2021-10-15 21:34:03', '查询操作', 1);
INSERT INTO `t_log` VALUES (2167, '用户登录', '2021-10-15 21:37:28', '登录操作', 1);
INSERT INTO `t_log` VALUES (2168, '查询商品库存信息', '2021-10-15 21:37:29', '查询操作', 1);
INSERT INTO `t_log` VALUES (2169, '查询商品库存信息', '2021-10-15 21:37:38', '查询操作', 1);
INSERT INTO `t_log` VALUES (2170, '用户登录', '2021-10-15 21:38:17', '登录操作', 1);
INSERT INTO `t_log` VALUES (2171, '查询商品库存信息', '2021-10-15 21:38:17', '查询操作', 1);
INSERT INTO `t_log` VALUES (2172, '查询商品信息', '2021-10-15 21:38:53', '查询操作', 1);
INSERT INTO `t_log` VALUES (2173, '查询商品单位信息', '2021-10-15 21:38:53', '查询操作', 1);
INSERT INTO `t_log` VALUES (2174, '查询商品类别信息', '2021-10-15 21:38:53', '查询操作', 1);
INSERT INTO `t_log` VALUES (2175, '查询商品信息', '2021-10-15 21:38:53', '查询操作', 1);
INSERT INTO `t_log` VALUES (2176, '查询商品单位信息', '2021-10-15 21:38:53', '查询操作', 1);
INSERT INTO `t_log` VALUES (2177, '查询商品库存信息', '2021-10-15 21:39:14', '查询操作', 1);
INSERT INTO `t_log` VALUES (2178, '查询商品库存信息', '2021-10-15 21:42:02', '查询操作', 1);
INSERT INTO `t_log` VALUES (2179, '查询商品库存信息', '2021-10-15 22:04:18', '查询操作', 1);
INSERT INTO `t_log` VALUES (2180, '查询商品库存信息', '2021-10-15 22:04:19', '查询操作', 1);
INSERT INTO `t_log` VALUES (2181, '查询商品库存信息', '2021-10-15 22:04:20', '查询操作', 1);
INSERT INTO `t_log` VALUES (2182, '查询商品信息', '2021-10-15 22:04:38', '查询操作', 1);
INSERT INTO `t_log` VALUES (2183, '查询商品信息', '2021-10-15 22:04:38', '查询操作', 1);
INSERT INTO `t_log` VALUES (2184, '用户登录', '2021-10-15 22:16:59', '登录操作', 1);
INSERT INTO `t_log` VALUES (2185, '查询商品库存信息', '2021-10-15 22:17:00', '查询操作', 1);
INSERT INTO `t_log` VALUES (2186, '查询商品库存信息', '2021-10-15 22:17:03', '查询操作', 1);
INSERT INTO `t_log` VALUES (2187, '查询商品库存信息', '2021-10-15 22:17:05', '查询操作', 1);
INSERT INTO `t_log` VALUES (2188, '查询商品库存信息', '2021-10-15 22:17:23', '查询操作', 1);
INSERT INTO `t_log` VALUES (2189, '查询商品库存信息', '2021-10-15 22:17:33', '查询操作', 1);
INSERT INTO `t_log` VALUES (2190, '用户登录', '2021-10-15 22:19:05', '登录操作', 1);
INSERT INTO `t_log` VALUES (2191, '查询商品库存信息', '2021-10-15 22:19:06', '查询操作', 1);
INSERT INTO `t_log` VALUES (2192, '查询商品库存信息', '2021-10-15 22:19:07', '查询操作', 1);
INSERT INTO `t_log` VALUES (2193, '查询商品库存信息', '2021-10-15 22:19:10', '查询操作', 1);
INSERT INTO `t_log` VALUES (2194, '用户登录', '2021-10-15 22:20:37', '登录操作', 1);
INSERT INTO `t_log` VALUES (2195, '查询商品库存信息', '2021-10-15 22:20:38', '查询操作', 1);
INSERT INTO `t_log` VALUES (2196, '查询商品库存信息', '2021-10-15 22:20:41', '查询操作', 1);
INSERT INTO `t_log` VALUES (2197, '查询商品库存信息', '2021-10-15 22:20:44', '查询操作', 1);
INSERT INTO `t_log` VALUES (2198, '查询商品库存信息', '2021-10-15 22:21:04', '查询操作', 1);
INSERT INTO `t_log` VALUES (2199, '查询商品库存信息', '2021-10-15 22:21:06', '查询操作', 1);
INSERT INTO `t_log` VALUES (2200, '查询商品库存信息', '2021-10-15 22:21:09', '查询操作', 1);
INSERT INTO `t_log` VALUES (2201, '查询商品库存信息', '2021-10-15 22:21:45', '查询操作', 1);
INSERT INTO `t_log` VALUES (2202, '查询商品信息', '2021-10-15 22:21:47', '查询操作', 1);
INSERT INTO `t_log` VALUES (2203, '查询商品信息', '2021-10-15 22:21:47', '查询操作', 1);
INSERT INTO `t_log` VALUES (2204, '查询商品类别信息', '2021-10-15 22:22:42', '查询操作', 1);
INSERT INTO `t_log` VALUES (2207, '用户登录', '2021-10-15 22:25:31', '登录操作', 1);
INSERT INTO `t_log` VALUES (2208, '查询商品库存信息', '2021-10-15 22:25:31', '查询操作', 1);
INSERT INTO `t_log` VALUES (2209, '查询商品信息', '2021-10-15 22:25:34', '查询操作', 1);
INSERT INTO `t_log` VALUES (2210, '查询商品信息', '2021-10-15 22:25:34', '查询操作', 1);
INSERT INTO `t_log` VALUES (2211, '查询商品类别信息', '2021-10-15 22:25:41', '查询操作', 1);
INSERT INTO `t_log` VALUES (2212, '查询商品类别信息', '2021-10-15 22:25:53', '查询操作', 1);
INSERT INTO `t_log` VALUES (2215, '用户登录', '2021-10-15 22:27:04', '登录操作', 1);
INSERT INTO `t_log` VALUES (2216, '查询商品库存信息', '2021-10-15 22:27:05', '查询操作', 1);
INSERT INTO `t_log` VALUES (2217, '查询商品信息', '2021-10-15 22:27:05', '查询操作', 1);
INSERT INTO `t_log` VALUES (2218, '查询商品信息', '2021-10-15 22:27:05', '查询操作', 1);
INSERT INTO `t_log` VALUES (2219, '查询商品类别信息', '2021-10-15 22:27:09', '查询操作', 1);
INSERT INTO `t_log` VALUES (2220, '查询商品类别信息', '2021-10-15 22:27:16', '查询操作', 1);
INSERT INTO `t_log` VALUES (2221, '查询商品类别信息', '2021-10-15 22:27:23', '查询操作', 1);
INSERT INTO `t_log` VALUES (2226, '用户登录', '2021-10-15 22:31:28', '登录操作', 1);
INSERT INTO `t_log` VALUES (2227, '查询商品库存信息', '2021-10-15 22:31:29', '查询操作', 1);
INSERT INTO `t_log` VALUES (2228, '查询商品信息', '2021-10-15 22:31:32', '查询操作', 1);
INSERT INTO `t_log` VALUES (2229, '查询商品信息', '2021-10-15 22:31:32', '查询操作', 1);
INSERT INTO `t_log` VALUES (2230, '查询商品类别信息', '2021-10-15 22:31:36', '查询操作', 1);
INSERT INTO `t_log` VALUES (2235, '查询商品库存信息', '2021-10-15 22:33:15', '查询操作', 1);
INSERT INTO `t_log` VALUES (2236, '查询商品信息', '2021-10-15 22:33:16', '查询操作', 1);
INSERT INTO `t_log` VALUES (2237, '查询商品信息', '2021-10-15 22:33:16', '查询操作', 1);
INSERT INTO `t_log` VALUES (2238, '查询商品信息', '2021-10-15 22:33:17', '查询操作', 1);
INSERT INTO `t_log` VALUES (2239, '查询商品信息', '2021-10-15 22:33:17', '查询操作', 1);
INSERT INTO `t_log` VALUES (2240, '查询商品类别信息', '2021-10-15 22:33:20', '查询操作', 1);
INSERT INTO `t_log` VALUES (2245, '添加进货单', '2021-10-15 22:33:35', '添加操作', 1);
INSERT INTO `t_log` VALUES (2246, '查询商品信息', '2021-10-15 22:33:37', '查询操作', 1);
INSERT INTO `t_log` VALUES (2247, '查询商品信息', '2021-10-15 22:33:37', '查询操作', 1);
INSERT INTO `t_log` VALUES (2248, '查询商品类别信息', '2021-10-15 22:33:58', '查询操作', 1);
INSERT INTO `t_log` VALUES (2251, '添加进货单', '2021-10-15 22:34:03', '添加操作', 1);
INSERT INTO `t_log` VALUES (2252, '查询商品信息', '2021-10-15 22:34:05', '查询操作', 1);
INSERT INTO `t_log` VALUES (2253, '查询商品信息', '2021-10-15 22:34:05', '查询操作', 1);
INSERT INTO `t_log` VALUES (2254, '查询商品类别信息', '2021-10-15 22:34:09', '查询操作', 1);
INSERT INTO `t_log` VALUES (2257, '添加退货单', '2021-10-15 22:34:15', '添加操作', 1);
INSERT INTO `t_log` VALUES (2258, '查询商品信息', '2021-10-15 22:34:16', '查询操作', 1);
INSERT INTO `t_log` VALUES (2259, '查询商品信息', '2021-10-15 22:34:16', '查询操作', 1);
INSERT INTO `t_log` VALUES (2260, '查询商品库存信息', '2021-10-15 22:34:23', '查询操作', 1);
INSERT INTO `t_log` VALUES (2261, '查询商品库存信息', '2021-10-15 22:34:25', '查询操作', 1);
INSERT INTO `t_log` VALUES (2262, '查询商品信息', '2021-10-15 22:34:52', '查询操作', 1);
INSERT INTO `t_log` VALUES (2263, '查询商品信息', '2021-10-15 22:34:52', '查询操作', 1);
INSERT INTO `t_log` VALUES (2264, '查询商品信息', '2021-10-15 22:34:55', '查询操作', 1);
INSERT INTO `t_log` VALUES (2265, '查询商品信息', '2021-10-15 22:34:55', '查询操作', 1);
INSERT INTO `t_log` VALUES (2266, '查询商品信息', '2021-10-15 22:35:02', '查询操作', 1);
INSERT INTO `t_log` VALUES (2267, '查询商品信息', '2021-10-15 22:35:02', '查询操作', 1);
INSERT INTO `t_log` VALUES (2268, '查询商品库存信息', '2021-10-15 22:35:04', '查询操作', 1);
INSERT INTO `t_log` VALUES (2269, '查询商品库存信息', '2021-10-15 22:35:45', '查询操作', 1);
INSERT INTO `t_log` VALUES (2270, '查询商品库存信息', '2021-10-15 22:35:45', '查询操作', 1);
INSERT INTO `t_log` VALUES (2271, '查询供应商信息', '2021-10-15 22:35:56', '查询操作', 1);
INSERT INTO `t_log` VALUES (2272, '查询供应商信息', '2021-10-15 22:35:56', '查询操作', 1);
INSERT INTO `t_log` VALUES (2273, '查询客户信息', '2021-10-15 22:36:04', '查询操作', 1);
INSERT INTO `t_log` VALUES (2274, '查询客户信息', '2021-10-15 22:36:04', '查询操作', 1);
INSERT INTO `t_log` VALUES (2275, '查询商品信息', '2021-10-15 22:36:07', '查询操作', 1);
INSERT INTO `t_log` VALUES (2276, '查询商品单位信息', '2021-10-15 22:36:07', '查询操作', 1);
INSERT INTO `t_log` VALUES (2277, '查询商品类别信息', '2021-10-15 22:36:07', '查询操作', 1);
INSERT INTO `t_log` VALUES (2278, '查询商品信息', '2021-10-15 22:36:07', '查询操作', 1);
INSERT INTO `t_log` VALUES (2279, '查询商品单位信息', '2021-10-15 22:36:07', '查询操作', 1);
INSERT INTO `t_log` VALUES (2280, '查询角色信息', '2021-10-15 22:36:08', '查询操作', 1);
INSERT INTO `t_log` VALUES (2281, '查询角色信息', '2021-10-15 22:36:08', '查询操作', 1);
INSERT INTO `t_log` VALUES (2282, '查询用户信息', '2021-10-15 22:36:10', '查询操作', 1);
INSERT INTO `t_log` VALUES (2283, '查询用户信息', '2021-10-15 22:36:10', '查询操作', 1);
INSERT INTO `t_log` VALUES (2284, '用户登录', '2021-10-18 14:31:27', '登录操作', 1);
INSERT INTO `t_log` VALUES (2285, '查询商品库存信息', '2021-10-18 14:31:28', '查询操作', 1);
INSERT INTO `t_log` VALUES (2286, '查询商品信息', '2021-10-18 14:34:54', '查询操作', 1);
INSERT INTO `t_log` VALUES (2287, '查询商品信息', '2021-10-18 14:34:54', '查询操作', 1);
INSERT INTO `t_log` VALUES (2288, '查询商品信息', '2021-10-18 14:36:25', '查询操作', 1);
INSERT INTO `t_log` VALUES (2289, '查询商品信息', '2021-10-18 14:36:25', '查询操作', 1);
INSERT INTO `t_log` VALUES (2290, '查询商品类别信息', '2021-10-18 14:36:34', '查询操作', 1);
INSERT INTO `t_log` VALUES (2291, '查询商品信息', '2021-10-18 14:37:08', '查询操作', 1);
INSERT INTO `t_log` VALUES (2292, '查询商品单位信息', '2021-10-18 14:37:08', '查询操作', 1);
INSERT INTO `t_log` VALUES (2293, '查询商品类别信息', '2021-10-18 14:37:08', '查询操作', 1);
INSERT INTO `t_log` VALUES (2294, '查询商品信息', '2021-10-18 14:37:08', '查询操作', 1);
INSERT INTO `t_log` VALUES (2295, '查询商品单位信息', '2021-10-18 14:37:08', '查询操作', 1);
INSERT INTO `t_log` VALUES (2296, '用户登录', '2021-10-18 14:39:48', '登录操作', 1);
INSERT INTO `t_log` VALUES (2297, '查询商品库存信息', '2021-10-18 14:39:50', '查询操作', 1);
INSERT INTO `t_log` VALUES (2298, '查询商品信息', '2021-10-18 14:39:51', '查询操作', 1);
INSERT INTO `t_log` VALUES (2299, '查询商品信息', '2021-10-18 14:39:51', '查询操作', 1);
INSERT INTO `t_log` VALUES (2300, '查询商品信息', '2021-10-18 14:47:12', '查询操作', 1);
INSERT INTO `t_log` VALUES (2301, '查询商品信息', '2021-10-18 14:47:12', '查询操作', 1);
INSERT INTO `t_log` VALUES (2302, '查询商品信息', '2021-10-18 14:47:12', '查询操作', 1);
INSERT INTO `t_log` VALUES (2303, '查询商品信息', '2021-10-18 14:47:12', '查询操作', 1);
INSERT INTO `t_log` VALUES (2304, '查询商品库存信息', '2021-10-18 14:47:13', '查询操作', 1);
INSERT INTO `t_log` VALUES (2305, '查询商品库存信息', '2021-10-18 14:47:17', '查询操作', 1);
INSERT INTO `t_log` VALUES (2306, '查询商品类别信息', '2021-10-18 14:47:23', '查询操作', 1);
INSERT INTO `t_log` VALUES (2307, '查询商品信息', '2021-10-18 14:47:38', '查询操作', 1);
INSERT INTO `t_log` VALUES (2308, '查询商品信息', '2021-10-18 14:47:38', '查询操作', 1);
INSERT INTO `t_log` VALUES (2309, '查询商品类别信息', '2021-10-18 14:47:40', '查询操作', 1);
INSERT INTO `t_log` VALUES (2310, '查询商品库存信息', '2021-10-18 14:48:20', '查询操作', 1);
INSERT INTO `t_log` VALUES (2311, '用户登录', '2021-10-18 14:51:48', '登录操作', 1);
INSERT INTO `t_log` VALUES (2312, '查询商品库存信息', '2021-10-18 14:51:48', '查询操作', 1);
INSERT INTO `t_log` VALUES (2313, '查询商品库存信息', '2021-10-18 14:51:49', '查询操作', 1);
INSERT INTO `t_log` VALUES (2314, '用户登录', '2021-10-18 14:52:24', '登录操作', 1);
INSERT INTO `t_log` VALUES (2315, '查询商品库存信息', '2021-10-18 14:52:24', '查询操作', 1);
INSERT INTO `t_log` VALUES (2316, '查询商品库存信息', '2021-10-18 14:52:32', '查询操作', 1);
INSERT INTO `t_log` VALUES (2317, '用户登录', '2021-10-18 14:54:04', '登录操作', 1);
INSERT INTO `t_log` VALUES (2318, '查询商品库存信息', '2021-10-18 14:54:05', '查询操作', 1);
INSERT INTO `t_log` VALUES (2319, '查询商品信息', '2021-10-18 14:54:07', '查询操作', 1);
INSERT INTO `t_log` VALUES (2320, '查询商品单位信息', '2021-10-18 14:54:07', '查询操作', 1);
INSERT INTO `t_log` VALUES (2321, '查询商品类别信息', '2021-10-18 14:54:07', '查询操作', 1);
INSERT INTO `t_log` VALUES (2322, '查询商品信息', '2021-10-18 14:54:07', '查询操作', 1);
INSERT INTO `t_log` VALUES (2323, '查询商品单位信息', '2021-10-18 14:54:07', '查询操作', 1);
INSERT INTO `t_log` VALUES (2324, '查询角色信息', '2021-10-18 14:54:10', '查询操作', 1);
INSERT INTO `t_log` VALUES (2325, '查询角色信息', '2021-10-18 14:54:10', '查询操作', 1);
INSERT INTO `t_log` VALUES (2326, '查询商品库存信息', '2021-10-18 14:54:16', '查询操作', 1);
INSERT INTO `t_log` VALUES (2327, '查询商品库存信息', '2021-10-18 14:54:16', '查询操作', 1);
INSERT INTO `t_log` VALUES (2328, '查询商品信息', '2021-10-18 14:55:30', '查询操作', 1);
INSERT INTO `t_log` VALUES (2329, '查询商品信息', '2021-10-18 14:55:30', '查询操作', 1);
INSERT INTO `t_log` VALUES (2330, '查询商品信息', '2021-10-18 14:55:35', '查询操作', 1);
INSERT INTO `t_log` VALUES (2331, '查询商品信息', '2021-10-18 14:55:35', '查询操作', 1);
INSERT INTO `t_log` VALUES (2332, '查询商品信息', '2021-10-18 14:57:29', '查询操作', 1);
INSERT INTO `t_log` VALUES (2333, '查询商品信息', '2021-10-18 14:57:29', '查询操作', 1);
INSERT INTO `t_log` VALUES (2334, '查询商品信息', '2021-10-18 14:57:30', '查询操作', 1);
INSERT INTO `t_log` VALUES (2335, '查询商品信息', '2021-10-18 14:57:30', '查询操作', 1);
INSERT INTO `t_log` VALUES (2336, '查询商品信息', '2021-10-18 14:57:36', '查询操作', 1);
INSERT INTO `t_log` VALUES (2337, '查询商品信息', '2021-10-18 14:57:36', '查询操作', 1);
INSERT INTO `t_log` VALUES (2338, '查询商品库存信息', '2021-10-18 14:57:39', '查询操作', 1);
INSERT INTO `t_log` VALUES (2339, '查询商品库存信息', '2021-10-18 14:57:40', '查询操作', 1);
INSERT INTO `t_log` VALUES (2340, '查询商品库存信息', '2021-10-18 14:57:40', '查询操作', 1);
INSERT INTO `t_log` VALUES (2341, '查询商品类别信息', '2021-10-18 14:59:31', '查询操作', 1);
INSERT INTO `t_log` VALUES (2342, '用户登录', '2021-10-18 15:17:14', '登录操作', 1);
INSERT INTO `t_log` VALUES (2343, '查询商品库存信息', '2021-10-18 15:17:14', '查询操作', 1);
INSERT INTO `t_log` VALUES (2344, '查询商品库存信息', '2021-10-18 15:17:15', '查询操作', 1);
INSERT INTO `t_log` VALUES (2345, '查询商品库存信息', '2021-10-18 15:17:16', '查询操作', 1);
INSERT INTO `t_log` VALUES (2346, '查询商品信息', '2021-10-18 15:17:32', '查询操作', 1);
INSERT INTO `t_log` VALUES (2347, '查询商品信息', '2021-10-18 15:17:32', '查询操作', 1);
INSERT INTO `t_log` VALUES (2348, '查询商品库存信息', '2021-10-18 15:17:36', '查询操作', 1);
INSERT INTO `t_log` VALUES (2349, '查询商品信息', '2021-10-18 15:17:38', '查询操作', 1);
INSERT INTO `t_log` VALUES (2350, '查询商品信息', '2021-10-18 15:17:38', '查询操作', 1);
INSERT INTO `t_log` VALUES (2351, '查询商品信息', '2021-10-18 15:17:40', '查询操作', 1);
INSERT INTO `t_log` VALUES (2352, '查询商品信息', '2021-10-18 15:17:40', '查询操作', 1);
INSERT INTO `t_log` VALUES (2353, '用户登录', '2021-10-18 15:18:04', '登录操作', 1);
INSERT INTO `t_log` VALUES (2354, '查询商品库存信息', '2021-10-18 15:18:04', '查询操作', 1);
INSERT INTO `t_log` VALUES (2355, '查询商品库存信息', '2021-10-18 15:18:07', '查询操作', 1);
INSERT INTO `t_log` VALUES (2356, '查询商品库存信息', '2021-10-18 15:18:08', '查询操作', 1);
INSERT INTO `t_log` VALUES (2357, '查询商品库存信息', '2021-10-18 15:18:11', '查询操作', 1);
INSERT INTO `t_log` VALUES (2358, '查询商品库存信息', '2021-10-18 15:18:11', '查询操作', 1);
INSERT INTO `t_log` VALUES (2359, '查询商品信息', '2021-10-18 15:18:14', '查询操作', 1);
INSERT INTO `t_log` VALUES (2360, '查询商品信息', '2021-10-18 15:18:14', '查询操作', 1);
INSERT INTO `t_log` VALUES (2361, '用户登录', '2021-10-18 15:20:49', '登录操作', 1);
INSERT INTO `t_log` VALUES (2362, '查询商品库存信息', '2021-10-18 15:20:50', '查询操作', 1);
INSERT INTO `t_log` VALUES (2363, '查询供应商信息', '2021-10-18 15:20:52', '查询操作', 1);
INSERT INTO `t_log` VALUES (2364, '查询供应商信息', '2021-10-18 15:20:52', '查询操作', 1);
INSERT INTO `t_log` VALUES (2365, '查询商品信息', '2021-10-18 15:21:03', '查询操作', 1);
INSERT INTO `t_log` VALUES (2366, '查询商品信息', '2021-10-18 15:21:03', '查询操作', 1);
INSERT INTO `t_log` VALUES (2367, '查询商品库存信息', '2021-10-18 15:21:04', '查询操作', 1);
INSERT INTO `t_log` VALUES (2368, '查询商品库存信息', '2021-10-18 15:21:04', '查询操作', 1);
INSERT INTO `t_log` VALUES (2369, '查询商品库存信息', '2021-10-18 15:21:04', '查询操作', 1);
INSERT INTO `t_log` VALUES (2370, '查询商品库存信息', '2021-10-18 15:21:11', '查询操作', 1);
INSERT INTO `t_log` VALUES (2371, '查询商品库存信息', '2021-10-18 15:21:13', '查询操作', 1);
INSERT INTO `t_log` VALUES (2372, '查询商品库存信息', '2021-10-18 15:21:13', '查询操作', 1);
INSERT INTO `t_log` VALUES (2373, '查询商品信息', '2021-10-18 15:21:16', '查询操作', 1);
INSERT INTO `t_log` VALUES (2374, '查询商品信息', '2021-10-18 15:21:16', '查询操作', 1);
INSERT INTO `t_log` VALUES (2375, '查询商品信息', '2021-10-18 15:21:17', '查询操作', 1);
INSERT INTO `t_log` VALUES (2376, '查询商品信息', '2021-10-18 15:21:17', '查询操作', 1);
INSERT INTO `t_log` VALUES (2377, '查询商品库存信息', '2021-10-18 15:21:18', '查询操作', 1);
INSERT INTO `t_log` VALUES (2378, '查询商品库存信息', '2021-10-18 15:21:19', '查询操作', 1);
INSERT INTO `t_log` VALUES (2379, '查询商品信息', '2021-10-18 15:21:23', '查询操作', 1);
INSERT INTO `t_log` VALUES (2380, '查询商品信息', '2021-10-18 15:21:23', '查询操作', 1);
INSERT INTO `t_log` VALUES (2381, '用户登录', '2021-10-18 15:24:33', '登录操作', 1);
INSERT INTO `t_log` VALUES (2382, '查询商品库存信息', '2021-10-18 15:24:33', '查询操作', 1);
INSERT INTO `t_log` VALUES (2383, '查询商品信息', '2021-10-18 15:24:35', '查询操作', 1);
INSERT INTO `t_log` VALUES (2384, '查询商品单位信息', '2021-10-18 15:24:35', '查询操作', 1);
INSERT INTO `t_log` VALUES (2385, '查询商品类别信息', '2021-10-18 15:24:35', '查询操作', 1);
INSERT INTO `t_log` VALUES (2386, '查询商品信息', '2021-10-18 15:24:35', '查询操作', 1);
INSERT INTO `t_log` VALUES (2387, '查询商品单位信息', '2021-10-18 15:24:35', '查询操作', 1);
INSERT INTO `t_log` VALUES (2388, '查询客户信息', '2021-10-18 15:24:36', '查询操作', 1);
INSERT INTO `t_log` VALUES (2389, '查询客户信息', '2021-10-18 15:24:36', '查询操作', 1);
INSERT INTO `t_log` VALUES (2390, '查询供应商信息', '2021-10-18 15:24:38', '查询操作', 1);
INSERT INTO `t_log` VALUES (2391, '查询供应商信息', '2021-10-18 15:24:38', '查询操作', 1);
INSERT INTO `t_log` VALUES (2392, '查询角色信息', '2021-10-18 15:24:40', '查询操作', 1);
INSERT INTO `t_log` VALUES (2393, '查询角色信息', '2021-10-18 15:24:40', '查询操作', 1);
INSERT INTO `t_log` VALUES (2394, '查询商品库存信息', '2021-10-18 15:24:44', '查询操作', 1);
INSERT INTO `t_log` VALUES (2395, '查询商品库存信息', '2021-10-18 15:24:45', '查询操作', 1);
INSERT INTO `t_log` VALUES (2396, '查询商品库存信息', '2021-10-18 15:24:45', '查询操作', 1);
INSERT INTO `t_log` VALUES (2397, '查询商品信息', '2021-10-18 15:24:45', '查询操作', 1);
INSERT INTO `t_log` VALUES (2398, '查询商品信息', '2021-10-18 15:24:45', '查询操作', 1);
INSERT INTO `t_log` VALUES (2399, '查询商品库存信息', '2021-10-18 15:24:49', '查询操作', 1);
INSERT INTO `t_log` VALUES (2400, '查询商品库存信息', '2021-10-18 15:24:49', '查询操作', 1);
INSERT INTO `t_log` VALUES (2401, '查询商品信息', '2021-10-18 15:24:50', '查询操作', 1);
INSERT INTO `t_log` VALUES (2402, '查询商品信息', '2021-10-18 15:24:50', '查询操作', 1);
INSERT INTO `t_log` VALUES (2403, '查询商品信息', '2021-10-18 15:24:50', '查询操作', 1);
INSERT INTO `t_log` VALUES (2404, '查询商品信息', '2021-10-18 15:24:51', '查询操作', 1);
INSERT INTO `t_log` VALUES (2405, '查询商品库存信息', '2021-10-18 15:36:37', '查询操作', 1);
INSERT INTO `t_log` VALUES (2406, '查询商品信息', '2021-10-18 15:36:40', '查询操作', 1);
INSERT INTO `t_log` VALUES (2407, '查询商品信息', '2021-10-18 15:36:40', '查询操作', 1);
INSERT INTO `t_log` VALUES (2408, '查询商品信息', '2021-10-18 15:36:41', '查询操作', 1);
INSERT INTO `t_log` VALUES (2409, '查询商品信息', '2021-10-18 15:36:41', '查询操作', 1);
INSERT INTO `t_log` VALUES (2410, '查询商品库存信息', '2021-10-18 15:39:03', '查询操作', 1);
INSERT INTO `t_log` VALUES (2411, '用户登录', '2021-10-18 15:40:38', '登录操作', 1);
INSERT INTO `t_log` VALUES (2412, '查询商品库存信息', '2021-10-18 15:40:39', '查询操作', 1);
INSERT INTO `t_log` VALUES (2413, '查询商品信息', '2021-10-18 15:40:40', '查询操作', 1);
INSERT INTO `t_log` VALUES (2414, '查询商品信息', '2021-10-18 15:40:40', '查询操作', 1);
INSERT INTO `t_log` VALUES (2415, '用户登录', '2021-10-18 15:40:55', '登录操作', 1);
INSERT INTO `t_log` VALUES (2416, '查询商品库存信息', '2021-10-18 15:40:56', '查询操作', 1);
INSERT INTO `t_log` VALUES (2417, '用户登录', '2021-10-18 15:42:03', '登录操作', 1);
INSERT INTO `t_log` VALUES (2418, '查询商品库存信息', '2021-10-18 15:42:04', '查询操作', 1);
INSERT INTO `t_log` VALUES (2419, '查询商品信息', '2021-10-18 15:42:05', '查询操作', 1);
INSERT INTO `t_log` VALUES (2420, '查询商品信息', '2021-10-18 15:42:05', '查询操作', 1);
INSERT INTO `t_log` VALUES (2421, '用户登录', '2021-10-18 15:42:48', '登录操作', 1);
INSERT INTO `t_log` VALUES (2422, '查询商品库存信息', '2021-10-18 15:42:48', '查询操作', 1);
INSERT INTO `t_log` VALUES (2423, '用户登录', '2021-10-18 15:43:40', '登录操作', 1);
INSERT INTO `t_log` VALUES (2424, '查询商品库存信息', '2021-10-18 15:43:40', '查询操作', 1);
INSERT INTO `t_log` VALUES (2425, '查询商品库存信息', '2021-10-18 15:51:57', '查询操作', 1);
INSERT INTO `t_log` VALUES (2426, '查询商品库存信息', '2021-10-18 15:51:57', '查询操作', 1);
INSERT INTO `t_log` VALUES (2427, '查询商品信息', '2021-10-18 15:59:33', '查询操作', 1);
INSERT INTO `t_log` VALUES (2428, '查询商品信息', '2021-10-18 15:59:33', '查询操作', 1);
INSERT INTO `t_log` VALUES (2429, '用户登录', '2021-10-18 16:03:54', '登录操作', 1);
INSERT INTO `t_log` VALUES (2430, '查询商品库存信息', '2021-10-18 16:03:55', '查询操作', 1);
INSERT INTO `t_log` VALUES (2431, '查询商品库存信息', '2021-10-18 16:03:59', '查询操作', 1);
INSERT INTO `t_log` VALUES (2432, '用户登录', '2021-10-18 16:04:19', '登录操作', 1);
INSERT INTO `t_log` VALUES (2433, '查询商品库存信息', '2021-10-18 16:04:19', '查询操作', 1);
INSERT INTO `t_log` VALUES (2434, '查询商品库存信息', '2021-10-18 16:04:39', '查询操作', 1);
INSERT INTO `t_log` VALUES (2435, '用户登录', '2021-10-18 16:04:56', '登录操作', 1);
INSERT INTO `t_log` VALUES (2436, '查询商品库存信息', '2021-10-18 16:04:56', '查询操作', 1);
INSERT INTO `t_log` VALUES (2437, '用户登录', '2021-10-18 16:06:49', '登录操作', 1);
INSERT INTO `t_log` VALUES (2438, '查询商品库存信息', '2021-10-18 16:06:50', '查询操作', 1);
INSERT INTO `t_log` VALUES (2439, '查询商品库存信息', '2021-10-18 16:06:55', '查询操作', 1);
INSERT INTO `t_log` VALUES (2440, '用户登录', '2021-10-18 17:03:24', '登录操作', 1);
INSERT INTO `t_log` VALUES (2441, '查询商品库存信息', '2021-10-18 17:03:25', '查询操作', 1);
INSERT INTO `t_log` VALUES (2442, '查询商品库存信息', '2021-10-18 17:03:29', '查询操作', 1);
INSERT INTO `t_log` VALUES (2443, '查询商品库存信息', '2021-10-18 17:03:29', '查询操作', 1);
INSERT INTO `t_log` VALUES (2444, '用户登录', '2021-10-18 17:05:56', '登录操作', 1);
INSERT INTO `t_log` VALUES (2445, '查询商品库存信息', '2021-10-18 17:05:57', '查询操作', 1);
INSERT INTO `t_log` VALUES (2446, '查询商品库存信息', '2021-10-18 17:05:59', '查询操作', 1);
INSERT INTO `t_log` VALUES (2447, '查询商品库存信息', '2021-10-18 17:05:59', '查询操作', 1);
INSERT INTO `t_log` VALUES (2448, '查询商品库存信息', '2021-10-18 17:06:02', '查询操作', 1);
INSERT INTO `t_log` VALUES (2449, '查询商品库存信息', '2021-10-18 17:06:02', '查询操作', 1);
INSERT INTO `t_log` VALUES (2450, '查询商品库存信息', '2021-10-18 17:06:25', '查询操作', 1);
INSERT INTO `t_log` VALUES (2451, '查询商品库存信息', '2021-10-18 17:06:28', '查询操作', 1);
INSERT INTO `t_log` VALUES (2452, '查询商品库存信息', '2021-10-18 17:06:28', '查询操作', 1);
INSERT INTO `t_log` VALUES (2453, '查询商品库存信息', '2021-10-18 17:06:30', '查询操作', 1);
INSERT INTO `t_log` VALUES (2454, '查询商品库存信息', '2021-10-18 17:06:35', '查询操作', 1);
INSERT INTO `t_log` VALUES (2455, '查询商品库存信息', '2021-10-18 17:06:35', '查询操作', 1);
INSERT INTO `t_log` VALUES (2456, '查询商品库存信息', '2021-10-18 17:06:57', '查询操作', 1);
INSERT INTO `t_log` VALUES (2457, '查询商品库存信息', '2021-10-18 17:11:38', '查询操作', 1);
INSERT INTO `t_log` VALUES (2458, '查询商品库存信息', '2021-10-18 17:11:38', '查询操作', 1);
INSERT INTO `t_log` VALUES (2459, '查询商品信息', '2021-10-18 17:12:50', '查询操作', 1);
INSERT INTO `t_log` VALUES (2460, '查询商品单位信息', '2021-10-18 17:12:50', '查询操作', 1);
INSERT INTO `t_log` VALUES (2461, '查询商品类别信息', '2021-10-18 17:12:50', '查询操作', 1);
INSERT INTO `t_log` VALUES (2462, '查询商品信息', '2021-10-18 17:12:50', '查询操作', 1);
INSERT INTO `t_log` VALUES (2463, '查询商品单位信息', '2021-10-18 17:12:50', '查询操作', 1);
INSERT INTO `t_log` VALUES (2464, '查询商品信息', '2021-10-18 17:16:26', '查询操作', 1);
INSERT INTO `t_log` VALUES (2465, '查询商品信息', '2021-10-18 17:16:26', '查询操作', 1);
INSERT INTO `t_log` VALUES (2466, '查询商品类别信息', '2021-10-18 17:17:04', '查询操作', 1);
INSERT INTO `t_log` VALUES (2469, '添加进货单', '2021-10-18 17:17:13', '添加操作', 1);
INSERT INTO `t_log` VALUES (2470, '查询商品信息', '2021-10-18 17:17:16', '查询操作', 1);
INSERT INTO `t_log` VALUES (2471, '查询商品信息', '2021-10-18 17:17:16', '查询操作', 1);
INSERT INTO `t_log` VALUES (2472, '查询商品信息', '2021-10-18 17:17:17', '查询操作', 1);
INSERT INTO `t_log` VALUES (2473, '查询商品信息', '2021-10-18 17:17:17', '查询操作', 1);
INSERT INTO `t_log` VALUES (2474, '查询商品类别信息', '2021-10-18 17:17:21', '查询操作', 1);
INSERT INTO `t_log` VALUES (2477, '添加退货单', '2021-10-18 17:17:25', '添加操作', 1);
INSERT INTO `t_log` VALUES (2478, '查询商品信息', '2021-10-18 17:17:26', '查询操作', 1);
INSERT INTO `t_log` VALUES (2479, '查询商品信息', '2021-10-18 17:17:26', '查询操作', 1);
INSERT INTO `t_log` VALUES (2480, '查询商品信息', '2021-10-18 17:17:56', '查询操作', 1);
INSERT INTO `t_log` VALUES (2481, '查询商品信息', '2021-10-18 17:17:56', '查询操作', 1);
INSERT INTO `t_log` VALUES (2482, '查询商品类别信息', '2021-10-18 17:18:01', '查询操作', 1);
INSERT INTO `t_log` VALUES (2485, '添加销售单', '2021-10-18 17:18:06', '添加操作', 1);
INSERT INTO `t_log` VALUES (2486, '查询商品信息', '2021-10-18 17:18:07', '查询操作', 1);
INSERT INTO `t_log` VALUES (2487, '查询商品信息', '2021-10-18 17:18:07', '查询操作', 1);
INSERT INTO `t_log` VALUES (2488, '查询商品信息', '2021-10-18 17:18:08', '查询操作', 1);
INSERT INTO `t_log` VALUES (2489, '查询商品信息', '2021-10-18 17:18:08', '查询操作', 1);
INSERT INTO `t_log` VALUES (2490, '查询商品类别信息', '2021-10-18 17:18:12', '查询操作', 1);
INSERT INTO `t_log` VALUES (2493, '添加客户退货单', '2021-10-18 17:18:16', '添加操作', 1);
INSERT INTO `t_log` VALUES (2494, '查询商品信息', '2021-10-18 17:18:17', '查询操作', 1);
INSERT INTO `t_log` VALUES (2495, '查询商品信息', '2021-10-18 17:18:17', '查询操作', 1);
INSERT INTO `t_log` VALUES (2496, '查询商品信息', '2021-10-18 17:18:36', '查询操作', 1);
INSERT INTO `t_log` VALUES (2497, '查询商品信息', '2021-10-18 17:18:36', '查询操作', 1);
INSERT INTO `t_log` VALUES (2498, '查询商品库存信息', '2021-10-18 17:18:41', '查询操作', 1);
INSERT INTO `t_log` VALUES (2499, '查询商品库存信息', '2021-10-18 17:18:44', '查询操作', 1);
INSERT INTO `t_log` VALUES (2500, '查询商品库存信息', '2021-10-18 17:18:44', '查询操作', 1);
INSERT INTO `t_log` VALUES (2501, '更新商品信息[id=13, code=null, name=麦片燕麦巧克力, model=null, unit=null, purchasingPrice=0.0, sellingPrice=0.0, inventoryQuantity=2, minNum=0, producer=null, remarks=null]', '2021-10-18 17:18:53', '更新操作', 1);
INSERT INTO `t_log` VALUES (2502, '查询商品库存信息', '2021-10-18 17:18:53', '查询操作', 1);
INSERT INTO `t_log` VALUES (2503, '查询供应商信息', '2021-10-18 17:19:22', '查询操作', 1);
INSERT INTO `t_log` VALUES (2504, '查询供应商信息', '2021-10-18 17:19:22', '查询操作', 1);
INSERT INTO `t_log` VALUES (2505, '查询客户信息', '2021-10-18 17:19:24', '查询操作', 1);
INSERT INTO `t_log` VALUES (2506, '查询客户信息', '2021-10-18 17:19:24', '查询操作', 1);
INSERT INTO `t_log` VALUES (2507, '查询角色信息', '2021-10-18 17:19:31', '查询操作', 1);
INSERT INTO `t_log` VALUES (2508, '查询角色信息', '2021-10-18 17:19:31', '查询操作', 1);
INSERT INTO `t_log` VALUES (2509, '查询用户信息', '2021-10-18 17:19:32', '查询操作', 1);
INSERT INTO `t_log` VALUES (2510, '查询用户信息', '2021-10-18 17:19:33', '查询操作', 1);
INSERT INTO `t_log` VALUES (2511, '用户注销', '2021-10-18 17:19:39', '注销操作', 1);
INSERT INTO `t_log` VALUES (2512, '用户登录', '2021-10-18 21:22:32', '登录操作', 1);
INSERT INTO `t_log` VALUES (2513, '查询商品库存信息', '2021-10-18 21:22:33', '查询操作', 1);
INSERT INTO `t_log` VALUES (2514, '查询商品信息', '2021-10-18 21:22:34', '查询操作', 1);
INSERT INTO `t_log` VALUES (2515, '查询商品信息', '2021-10-18 21:22:34', '查询操作', 1);
INSERT INTO `t_log` VALUES (2516, '查询商品类别信息', '2021-10-18 21:22:51', '查询操作', 1);
INSERT INTO `t_log` VALUES (2519, '添加进货单', '2021-10-18 21:22:55', '添加操作', 1);
INSERT INTO `t_log` VALUES (2520, '查询商品信息', '2021-10-18 21:22:57', '查询操作', 1);
INSERT INTO `t_log` VALUES (2521, '查询商品信息', '2021-10-18 21:22:57', '查询操作', 1);
INSERT INTO `t_log` VALUES (2522, '查询商品信息', '2021-10-18 21:24:01', '查询操作', 1);
INSERT INTO `t_log` VALUES (2523, '查询商品信息', '2021-10-18 21:24:01', '查询操作', 1);
INSERT INTO `t_log` VALUES (2524, '查询商品类别信息', '2021-10-18 21:48:17', '查询操作', 1);
INSERT INTO `t_log` VALUES (2525, '查询商品信息', '2021-10-18 21:48:49', '查询操作', 1);
INSERT INTO `t_log` VALUES (2526, '查询商品信息', '2021-10-18 21:48:50', '查询操作', 1);
INSERT INTO `t_log` VALUES (2527, '查询商品信息', '2021-10-18 21:48:50', '查询操作', 1);
INSERT INTO `t_log` VALUES (2528, '查询商品信息', '2021-10-18 21:48:50', '查询操作', 1);
INSERT INTO `t_log` VALUES (2529, '查询商品信息', '2021-10-18 21:48:54', '查询操作', 1);
INSERT INTO `t_log` VALUES (2530, '查询商品信息', '2021-10-18 21:48:54', '查询操作', 1);
INSERT INTO `t_log` VALUES (2531, '查询商品库存信息', '2021-10-18 21:49:01', '查询操作', 1);
INSERT INTO `t_log` VALUES (2532, '查询商品库存信息', '2021-10-18 21:49:02', '查询操作', 1);
INSERT INTO `t_log` VALUES (2533, '查询商品库存信息', '2021-10-18 21:49:15', '查询操作', 1);
INSERT INTO `t_log` VALUES (2534, '查询商品信息', '2021-10-18 21:49:27', '查询操作', 1);
INSERT INTO `t_log` VALUES (2535, '查询商品信息', '2021-10-18 21:49:27', '查询操作', 1);
INSERT INTO `t_log` VALUES (2536, '查询商品信息', '2021-10-18 21:49:29', '查询操作', 1);
INSERT INTO `t_log` VALUES (2537, '查询商品信息', '2021-10-18 21:49:29', '查询操作', 1);
INSERT INTO `t_log` VALUES (2538, '用户登录', '2021-10-19 10:50:00', '登录操作', 1);
INSERT INTO `t_log` VALUES (2539, '查询商品库存信息', '2021-10-19 10:50:01', '查询操作', 1);
INSERT INTO `t_log` VALUES (2540, '查询商品库存信息', '2021-10-19 10:50:21', '查询操作', 1);
INSERT INTO `t_log` VALUES (2541, '查询商品库存信息', '2021-10-19 10:50:21', '查询操作', 1);
INSERT INTO `t_log` VALUES (2542, '查询商品信息', '2021-10-19 10:51:08', '查询操作', 1);
INSERT INTO `t_log` VALUES (2543, '查询商品信息', '2021-10-19 10:51:08', '查询操作', 1);
INSERT INTO `t_log` VALUES (2544, '查询商品信息', '2021-10-19 10:51:09', '查询操作', 1);
INSERT INTO `t_log` VALUES (2545, '查询商品信息', '2021-10-19 10:51:09', '查询操作', 1);
INSERT INTO `t_log` VALUES (2546, '查询商品信息', '2021-10-19 10:51:49', '查询操作', 1);
INSERT INTO `t_log` VALUES (2547, '查询商品信息', '2021-10-19 10:51:49', '查询操作', 1);
INSERT INTO `t_log` VALUES (2548, '查询商品信息', '2021-10-19 10:51:52', '查询操作', 1);
INSERT INTO `t_log` VALUES (2549, '查询商品信息', '2021-10-19 10:51:52', '查询操作', 1);
INSERT INTO `t_log` VALUES (2550, '查询商品库存信息', '2021-10-19 10:54:21', '查询操作', 1);
INSERT INTO `t_log` VALUES (2551, '查询商品信息', '2021-10-19 10:54:24', '查询操作', 1);
INSERT INTO `t_log` VALUES (2552, '查询商品信息', '2021-10-19 10:54:25', '查询操作', 1);
INSERT INTO `t_log` VALUES (2553, '用户登录', '2021-10-19 10:55:35', '登录操作', 1);
INSERT INTO `t_log` VALUES (2554, '查询商品库存信息', '2021-10-19 10:55:36', '查询操作', 1);
INSERT INTO `t_log` VALUES (2555, '查询商品信息', '2021-10-19 10:55:37', '查询操作', 1);
INSERT INTO `t_log` VALUES (2556, '查询商品信息', '2021-10-19 10:55:37', '查询操作', 1);
INSERT INTO `t_log` VALUES (2557, '查询商品信息', '2021-10-19 10:55:40', '查询操作', 1);
INSERT INTO `t_log` VALUES (2558, '查询商品信息', '2021-10-19 10:55:40', '查询操作', 1);
INSERT INTO `t_log` VALUES (2559, '用户登录', '2021-10-19 10:55:55', '登录操作', 1);
INSERT INTO `t_log` VALUES (2560, '查询商品库存信息', '2021-10-19 10:55:56', '查询操作', 1);
INSERT INTO `t_log` VALUES (2561, '查询商品信息', '2021-10-19 10:55:58', '查询操作', 1);
INSERT INTO `t_log` VALUES (2562, '查询商品信息', '2021-10-19 10:55:58', '查询操作', 1);
INSERT INTO `t_log` VALUES (2563, '查询商品信息', '2021-10-19 10:56:01', '查询操作', 1);
INSERT INTO `t_log` VALUES (2564, '查询商品信息', '2021-10-19 10:56:01', '查询操作', 1);
INSERT INTO `t_log` VALUES (2565, '用户登录', '2021-10-19 10:59:19', '登录操作', 1);
INSERT INTO `t_log` VALUES (2566, '查询商品库存信息', '2021-10-19 10:59:20', '查询操作', 1);
INSERT INTO `t_log` VALUES (2567, '查询商品信息', '2021-10-19 10:59:21', '查询操作', 1);
INSERT INTO `t_log` VALUES (2568, '查询商品信息', '2021-10-19 10:59:22', '查询操作', 1);
INSERT INTO `t_log` VALUES (2569, '用户登录', '2021-10-19 10:59:45', '登录操作', 1);
INSERT INTO `t_log` VALUES (2570, '查询商品库存信息', '2021-10-19 10:59:45', '查询操作', 1);
INSERT INTO `t_log` VALUES (2571, '查询商品信息', '2021-10-19 10:59:46', '查询操作', 1);
INSERT INTO `t_log` VALUES (2572, '查询商品信息', '2021-10-19 10:59:46', '查询操作', 1);
INSERT INTO `t_log` VALUES (2573, '查询商品信息', '2021-10-19 11:00:04', '查询操作', 1);
INSERT INTO `t_log` VALUES (2574, '查询商品信息', '2021-10-19 11:00:04', '查询操作', 1);
INSERT INTO `t_log` VALUES (2575, '查询商品库存信息', '2021-10-19 11:17:56', '查询操作', 1);
INSERT INTO `t_log` VALUES (2576, '查询商品库存信息', '2021-10-19 11:17:57', '查询操作', 1);
INSERT INTO `t_log` VALUES (2577, '查询商品库存信息', '2021-10-19 11:17:58', '查询操作', 1);
INSERT INTO `t_log` VALUES (2578, '查询商品信息', '2021-10-19 11:18:03', '查询操作', 1);
INSERT INTO `t_log` VALUES (2579, '查询商品信息', '2021-10-19 11:18:03', '查询操作', 1);
INSERT INTO `t_log` VALUES (2580, '查询商品信息', '2021-10-19 11:18:04', '查询操作', 1);
INSERT INTO `t_log` VALUES (2581, '查询商品信息', '2021-10-19 11:18:04', '查询操作', 1);
INSERT INTO `t_log` VALUES (2582, '查询商品库存信息', '2021-10-19 11:28:17', '查询操作', 1);
INSERT INTO `t_log` VALUES (2583, '查询商品信息', '2021-10-19 11:28:18', '查询操作', 1);
INSERT INTO `t_log` VALUES (2584, '查询商品信息', '2021-10-19 11:28:18', '查询操作', 1);
INSERT INTO `t_log` VALUES (2585, '查询商品信息', '2021-10-19 11:28:19', '查询操作', 1);
INSERT INTO `t_log` VALUES (2586, '查询商品信息', '2021-10-19 11:28:19', '查询操作', 1);
INSERT INTO `t_log` VALUES (2587, '用户登录', '2021-10-19 11:31:47', '登录操作', 1);
INSERT INTO `t_log` VALUES (2588, '查询商品库存信息', '2021-10-19 11:31:48', '查询操作', 1);
INSERT INTO `t_log` VALUES (2589, '查询商品库存信息', '2021-10-19 11:31:50', '查询操作', 1);
INSERT INTO `t_log` VALUES (2590, '查询商品库存信息', '2021-10-19 11:31:50', '查询操作', 1);
INSERT INTO `t_log` VALUES (2591, '查询商品信息', '2021-10-19 11:31:57', '查询操作', 1);
INSERT INTO `t_log` VALUES (2592, '查询商品信息', '2021-10-19 11:31:57', '查询操作', 1);
INSERT INTO `t_log` VALUES (2593, '查询商品信息', '2021-10-19 11:31:59', '查询操作', 1);
INSERT INTO `t_log` VALUES (2594, '查询商品信息', '2021-10-19 11:31:59', '查询操作', 1);
INSERT INTO `t_log` VALUES (2595, '用户登录', '2021-10-19 11:32:45', '登录操作', 1);
INSERT INTO `t_log` VALUES (2596, '查询商品库存信息', '2021-10-19 11:32:45', '查询操作', 1);
INSERT INTO `t_log` VALUES (2597, '查询商品库存信息', '2021-10-19 11:32:46', '查询操作', 1);
INSERT INTO `t_log` VALUES (2598, '查询商品库存信息', '2021-10-19 11:32:46', '查询操作', 1);
INSERT INTO `t_log` VALUES (2599, '查询商品信息', '2021-10-19 11:32:48', '查询操作', 1);
INSERT INTO `t_log` VALUES (2600, '查询商品信息', '2021-10-19 11:32:48', '查询操作', 1);
INSERT INTO `t_log` VALUES (2601, '用户登录', '2021-10-19 11:37:26', '登录操作', 1);
INSERT INTO `t_log` VALUES (2602, '查询商品库存信息', '2021-10-19 11:37:27', '查询操作', 1);
INSERT INTO `t_log` VALUES (2603, '查询商品库存信息', '2021-10-19 11:37:27', '查询操作', 1);
INSERT INTO `t_log` VALUES (2604, '查询商品库存信息', '2021-10-19 11:37:27', '查询操作', 1);
INSERT INTO `t_log` VALUES (2605, '查询商品信息', '2021-10-19 11:37:28', '查询操作', 1);
INSERT INTO `t_log` VALUES (2606, '查询商品信息', '2021-10-19 11:37:28', '查询操作', 1);
INSERT INTO `t_log` VALUES (2607, '查询商品信息', '2021-10-19 11:37:33', '查询操作', 1);
INSERT INTO `t_log` VALUES (2608, '查询商品信息', '2021-10-19 11:37:33', '查询操作', 1);
INSERT INTO `t_log` VALUES (2609, '用户登录', '2021-10-19 12:58:55', '登录操作', 1);
INSERT INTO `t_log` VALUES (2610, '查询商品库存信息', '2021-10-19 12:58:55', '查询操作', 1);
INSERT INTO `t_log` VALUES (2611, '用户登录', '2021-10-19 13:02:22', '登录操作', 1);
INSERT INTO `t_log` VALUES (2612, '查询商品库存信息', '2021-10-19 13:02:22', '查询操作', 1);
INSERT INTO `t_log` VALUES (2613, '查询商品信息', '2021-10-19 13:02:24', '查询操作', 1);
INSERT INTO `t_log` VALUES (2614, '查询商品信息', '2021-10-19 13:02:24', '查询操作', 1);
INSERT INTO `t_log` VALUES (2615, '用户登录', '2021-10-19 13:02:42', '登录操作', 1);
INSERT INTO `t_log` VALUES (2616, '查询商品库存信息', '2021-10-19 13:02:43', '查询操作', 1);
INSERT INTO `t_log` VALUES (2617, '查询供应商信息', '2021-10-19 13:02:44', '查询操作', 1);
INSERT INTO `t_log` VALUES (2618, '查询供应商信息', '2021-10-19 13:02:44', '查询操作', 1);
INSERT INTO `t_log` VALUES (2619, '查询商品库存信息', '2021-10-19 13:03:01', '查询操作', 1);
INSERT INTO `t_log` VALUES (2620, '查询商品库存信息', '2021-10-19 13:03:01', '查询操作', 1);
INSERT INTO `t_log` VALUES (2621, '查询商品信息', '2021-10-19 13:03:13', '查询操作', 1);
INSERT INTO `t_log` VALUES (2622, '查询商品信息', '2021-10-19 13:03:13', '查询操作', 1);
INSERT INTO `t_log` VALUES (2623, '查询商品信息', '2021-10-19 13:03:14', '查询操作', 1);
INSERT INTO `t_log` VALUES (2624, '查询商品信息', '2021-10-19 13:03:14', '查询操作', 1);
INSERT INTO `t_log` VALUES (2625, '查询商品信息', '2021-10-19 13:03:15', '查询操作', 1);
INSERT INTO `t_log` VALUES (2626, '查询商品信息', '2021-10-19 13:03:15', '查询操作', 1);
INSERT INTO `t_log` VALUES (2627, '用户登录', '2021-10-19 14:22:17', '登录操作', 1);
INSERT INTO `t_log` VALUES (2628, '查询商品库存信息', '2021-10-19 14:22:17', '查询操作', 1);
INSERT INTO `t_log` VALUES (2629, '查询商品库存信息', '2021-10-19 14:22:18', '查询操作', 1);
INSERT INTO `t_log` VALUES (2630, '查询商品库存信息', '2021-10-19 14:22:18', '查询操作', 1);
INSERT INTO `t_log` VALUES (2631, '查询商品信息', '2021-10-19 14:22:23', '查询操作', 1);
INSERT INTO `t_log` VALUES (2632, '查询商品信息', '2021-10-19 14:22:23', '查询操作', 1);
INSERT INTO `t_log` VALUES (2633, '查询商品信息', '2021-10-19 14:22:26', '查询操作', 1);
INSERT INTO `t_log` VALUES (2634, '查询商品信息', '2021-10-19 14:22:26', '查询操作', 1);
INSERT INTO `t_log` VALUES (2635, '查询商品信息', '2021-10-19 14:22:27', '查询操作', 1);
INSERT INTO `t_log` VALUES (2636, '查询商品信息', '2021-10-19 14:22:27', '查询操作', 1);
INSERT INTO `t_log` VALUES (2637, '用户登录', '2021-10-19 14:24:33', '登录操作', 1);
INSERT INTO `t_log` VALUES (2638, '查询商品库存信息', '2021-10-19 14:24:35', '查询操作', 1);
INSERT INTO `t_log` VALUES (2639, '查询商品库存信息', '2021-10-19 14:24:36', '查询操作', 1);
INSERT INTO `t_log` VALUES (2640, '查询商品库存信息', '2021-10-19 14:24:36', '查询操作', 1);
INSERT INTO `t_log` VALUES (2641, '查询商品信息', '2021-10-19 14:24:36', '查询操作', 1);
INSERT INTO `t_log` VALUES (2642, '查询商品信息', '2021-10-19 14:24:37', '查询操作', 1);
INSERT INTO `t_log` VALUES (2643, '查询商品库存信息', '2021-10-19 14:24:39', '查询操作', 1);
INSERT INTO `t_log` VALUES (2644, '查询商品信息', '2021-10-19 14:24:41', '查询操作', 1);
INSERT INTO `t_log` VALUES (2645, '查询商品信息', '2021-10-19 14:24:41', '查询操作', 1);
INSERT INTO `t_log` VALUES (2646, '用户登录', '2021-10-19 14:24:53', '登录操作', 1);
INSERT INTO `t_log` VALUES (2647, '查询商品库存信息', '2021-10-19 14:24:54', '查询操作', 1);
INSERT INTO `t_log` VALUES (2648, '查询商品信息', '2021-10-19 14:24:55', '查询操作', 1);
INSERT INTO `t_log` VALUES (2649, '查询商品信息', '2021-10-19 14:24:55', '查询操作', 1);
INSERT INTO `t_log` VALUES (2650, '查询商品类别信息', '2021-10-19 14:25:01', '查询操作', 1);
INSERT INTO `t_log` VALUES (2651, '查询商品类别信息', '2021-10-19 14:25:20', '查询操作', 1);
INSERT INTO `t_log` VALUES (2652, '用户登录', '2021-10-19 14:26:45', '登录操作', 1);
INSERT INTO `t_log` VALUES (2653, '查询商品库存信息', '2021-10-19 14:26:47', '查询操作', 1);
INSERT INTO `t_log` VALUES (2654, '查询商品信息', '2021-10-19 14:26:48', '查询操作', 1);
INSERT INTO `t_log` VALUES (2655, '查询商品信息', '2021-10-19 14:26:48', '查询操作', 1);
INSERT INTO `t_log` VALUES (2656, '查询商品库存信息', '2021-10-19 14:26:51', '查询操作', 1);
INSERT INTO `t_log` VALUES (2657, '用户登录', '2021-10-19 14:27:05', '登录操作', 1);
INSERT INTO `t_log` VALUES (2658, '查询商品库存信息', '2021-10-19 14:27:05', '查询操作', 1);
INSERT INTO `t_log` VALUES (2659, '查询商品信息', '2021-10-19 14:27:06', '查询操作', 1);
INSERT INTO `t_log` VALUES (2660, '查询商品信息', '2021-10-19 14:27:06', '查询操作', 1);
INSERT INTO `t_log` VALUES (2661, '查询商品类别信息', '2021-10-19 14:27:10', '查询操作', 1);
INSERT INTO `t_log` VALUES (2662, '用户登录', '2021-10-19 14:28:58', '登录操作', 1);
INSERT INTO `t_log` VALUES (2663, '查询商品库存信息', '2021-10-19 14:28:59', '查询操作', 1);
INSERT INTO `t_log` VALUES (2664, '查询商品信息', '2021-10-19 14:28:59', '查询操作', 1);
INSERT INTO `t_log` VALUES (2665, '查询商品信息', '2021-10-19 14:29:00', '查询操作', 1);
INSERT INTO `t_log` VALUES (2666, '查询商品类别信息', '2021-10-19 14:29:04', '查询操作', 1);
INSERT INTO `t_log` VALUES (2667, '用户登录', '2021-10-19 14:30:01', '登录操作', 1);
INSERT INTO `t_log` VALUES (2668, '查询商品库存信息', '2021-10-19 14:30:02', '查询操作', 1);
INSERT INTO `t_log` VALUES (2669, '查询商品信息', '2021-10-19 14:30:03', '查询操作', 1);
INSERT INTO `t_log` VALUES (2670, '查询商品信息', '2021-10-19 14:30:03', '查询操作', 1);
INSERT INTO `t_log` VALUES (2671, '用户登录', '2021-10-19 14:31:32', '登录操作', 1);
INSERT INTO `t_log` VALUES (2672, '查询商品库存信息', '2021-10-19 14:31:33', '查询操作', 1);
INSERT INTO `t_log` VALUES (2673, '查询商品信息', '2021-10-19 14:31:34', '查询操作', 1);
INSERT INTO `t_log` VALUES (2674, '查询商品信息', '2021-10-19 14:31:34', '查询操作', 1);
INSERT INTO `t_log` VALUES (2675, '查询商品信息', '2021-10-19 14:31:35', '查询操作', 1);
INSERT INTO `t_log` VALUES (2676, '查询商品信息', '2021-10-19 14:31:35', '查询操作', 1);
INSERT INTO `t_log` VALUES (2677, '用户登录', '2021-10-19 14:32:15', '登录操作', 1);
INSERT INTO `t_log` VALUES (2678, '查询商品库存信息', '2021-10-19 14:32:16', '查询操作', 1);
INSERT INTO `t_log` VALUES (2679, '查询商品信息', '2021-10-19 14:32:18', '查询操作', 1);
INSERT INTO `t_log` VALUES (2680, '查询商品信息', '2021-10-19 14:32:18', '查询操作', 1);
INSERT INTO `t_log` VALUES (2681, '查询商品类别信息', '2021-10-19 14:32:30', '查询操作', 1);
INSERT INTO `t_log` VALUES (2682, '用户登录', '2021-10-19 14:33:20', '登录操作', 1);
INSERT INTO `t_log` VALUES (2683, '查询商品库存信息', '2021-10-19 14:33:21', '查询操作', 1);
INSERT INTO `t_log` VALUES (2684, '查询商品信息', '2021-10-19 14:33:22', '查询操作', 1);
INSERT INTO `t_log` VALUES (2685, '查询商品信息', '2021-10-19 14:33:22', '查询操作', 1);
INSERT INTO `t_log` VALUES (2686, '查询商品信息', '2021-10-19 14:33:23', '查询操作', 1);
INSERT INTO `t_log` VALUES (2687, '查询商品信息', '2021-10-19 14:33:23', '查询操作', 1);
INSERT INTO `t_log` VALUES (2688, '查询商品信息', '2021-10-19 14:33:38', '查询操作', 1);
INSERT INTO `t_log` VALUES (2689, '查询商品信息', '2021-10-19 14:33:38', '查询操作', 1);
INSERT INTO `t_log` VALUES (2690, '查询商品库存信息', '2021-10-19 14:33:41', '查询操作', 1);
INSERT INTO `t_log` VALUES (2691, '查询商品库存信息', '2021-10-19 14:33:41', '查询操作', 1);
INSERT INTO `t_log` VALUES (2692, '用户登录', '2021-10-19 14:35:50', '登录操作', 1);
INSERT INTO `t_log` VALUES (2693, '查询商品库存信息', '2021-10-19 14:35:51', '查询操作', 1);
INSERT INTO `t_log` VALUES (2694, '查询商品信息', '2021-10-19 14:35:52', '查询操作', 1);
INSERT INTO `t_log` VALUES (2695, '查询商品信息', '2021-10-19 14:35:52', '查询操作', 1);
INSERT INTO `t_log` VALUES (2696, '查询商品类别信息', '2021-10-19 14:36:14', '查询操作', 1);
INSERT INTO `t_log` VALUES (2699, '添加进货单', '2021-10-19 14:36:23', '添加操作', 1);
INSERT INTO `t_log` VALUES (2700, '查询商品信息', '2021-10-19 14:36:26', '查询操作', 1);
INSERT INTO `t_log` VALUES (2701, '查询商品信息', '2021-10-19 14:36:26', '查询操作', 1);
INSERT INTO `t_log` VALUES (2702, '查询商品信息', '2021-10-19 14:36:27', '查询操作', 1);
INSERT INTO `t_log` VALUES (2703, '查询商品信息', '2021-10-19 14:36:27', '查询操作', 1);
INSERT INTO `t_log` VALUES (2704, '查询商品类别信息', '2021-10-19 14:36:31', '查询操作', 1);
INSERT INTO `t_log` VALUES (2707, '添加退货单', '2021-10-19 14:36:34', '添加操作', 1);
INSERT INTO `t_log` VALUES (2708, '查询商品信息', '2021-10-19 14:36:36', '查询操作', 1);
INSERT INTO `t_log` VALUES (2709, '查询商品信息', '2021-10-19 14:36:36', '查询操作', 1);
INSERT INTO `t_log` VALUES (2710, '查询商品类别信息', '2021-10-19 14:37:16', '查询操作', 1);
INSERT INTO `t_log` VALUES (2713, '添加退货单', '2021-10-19 14:37:20', '添加操作', 1);
INSERT INTO `t_log` VALUES (2714, '查询商品信息', '2021-10-19 14:37:21', '查询操作', 1);
INSERT INTO `t_log` VALUES (2715, '查询商品信息', '2021-10-19 14:37:21', '查询操作', 1);
INSERT INTO `t_log` VALUES (2716, '查询商品库存信息', '2021-10-19 14:39:17', '查询操作', 1);
INSERT INTO `t_log` VALUES (2717, '用户登录', '2021-10-19 14:41:18', '登录操作', 1);
INSERT INTO `t_log` VALUES (2718, '查询商品库存信息', '2021-10-19 14:41:19', '查询操作', 1);
INSERT INTO `t_log` VALUES (2719, '查询商品库存信息', '2021-10-19 14:41:31', '查询操作', 1);
INSERT INTO `t_log` VALUES (2720, '查询商品库存信息', '2021-10-19 14:41:31', '查询操作', 1);
INSERT INTO `t_log` VALUES (2721, '查询商品信息', '2021-10-19 14:41:34', '查询操作', 1);
INSERT INTO `t_log` VALUES (2722, '查询商品信息', '2021-10-19 14:41:34', '查询操作', 1);
INSERT INTO `t_log` VALUES (2723, '查询商品信息', '2021-10-19 14:41:42', '查询操作', 1);
INSERT INTO `t_log` VALUES (2724, '查询商品信息', '2021-10-19 14:41:42', '查询操作', 1);
INSERT INTO `t_log` VALUES (2725, '查询商品类别信息', '2021-10-19 14:41:46', '查询操作', 1);
INSERT INTO `t_log` VALUES (2726, '添加商品类别信息[id=null, name=2, state=0, icon=icon-folder, pId=1]', '2021-10-19 14:41:51', '添加操作', 1);
INSERT INTO `t_log` VALUES (2728, '查询商品类别信息', '2021-10-19 14:41:51', '查询操作', 1);
INSERT INTO `t_log` VALUES (2729, '查询商品库存信息', '2021-10-19 14:41:58', '查询操作', 1);
INSERT INTO `t_log` VALUES (2730, '查询商品信息', '2021-10-19 14:41:59', '查询操作', 1);
INSERT INTO `t_log` VALUES (2731, '查询商品信息', '2021-10-19 14:41:59', '查询操作', 1);
INSERT INTO `t_log` VALUES (2732, '查询商品类别信息', '2021-10-19 14:42:00', '查询操作', 1);
INSERT INTO `t_log` VALUES (2733, '查询商品信息', '2021-10-19 14:42:05', '查询操作', 1);
INSERT INTO `t_log` VALUES (2734, '查询商品信息', '2021-10-19 14:42:05', '查询操作', 1);
INSERT INTO `t_log` VALUES (2735, '查询商品类别信息', '2021-10-19 14:42:07', '查询操作', 1);
INSERT INTO `t_log` VALUES (2738, '添加退货单', '2021-10-19 14:42:13', '添加操作', 1);
INSERT INTO `t_log` VALUES (2739, '查询商品信息', '2021-10-19 14:42:14', '查询操作', 1);
INSERT INTO `t_log` VALUES (2740, '查询商品信息', '2021-10-19 14:42:14', '查询操作', 1);
INSERT INTO `t_log` VALUES (2741, '查询商品库存信息', '2021-10-19 14:42:25', '查询操作', 1);
INSERT INTO `t_log` VALUES (2742, '查询商品库存信息', '2021-10-19 14:42:25', '查询操作', 1);
INSERT INTO `t_log` VALUES (2743, '查询商品信息', '2021-10-19 14:42:47', '查询操作', 1);
INSERT INTO `t_log` VALUES (2744, '查询商品信息', '2021-10-19 14:42:47', '查询操作', 1);
INSERT INTO `t_log` VALUES (2745, '查询商品类别信息', '2021-10-19 14:42:54', '查询操作', 1);
INSERT INTO `t_log` VALUES (2748, '添加销售单', '2021-10-19 14:42:58', '添加操作', 1);
INSERT INTO `t_log` VALUES (2749, '查询商品信息', '2021-10-19 14:42:59', '查询操作', 1);
INSERT INTO `t_log` VALUES (2750, '查询商品信息', '2021-10-19 14:42:59', '查询操作', 1);
INSERT INTO `t_log` VALUES (2751, '查询商品信息', '2021-10-19 14:43:00', '查询操作', 1);
INSERT INTO `t_log` VALUES (2752, '查询商品信息', '2021-10-19 14:43:00', '查询操作', 1);
INSERT INTO `t_log` VALUES (2753, '查询商品信息', '2021-10-19 14:43:16', '查询操作', 1);
INSERT INTO `t_log` VALUES (2754, '查询商品信息', '2021-10-19 14:43:16', '查询操作', 1);
INSERT INTO `t_log` VALUES (2755, '查询商品类别信息', '2021-10-19 14:43:23', '查询操作', 1);
INSERT INTO `t_log` VALUES (2758, '添加过期单', '2021-10-19 14:43:27', '添加操作', 1);
INSERT INTO `t_log` VALUES (2759, '查询商品信息', '2021-10-19 14:43:29', '查询操作', 1);
INSERT INTO `t_log` VALUES (2760, '查询商品信息', '2021-10-19 14:43:29', '查询操作', 1);
INSERT INTO `t_log` VALUES (2761, '查询商品库存信息', '2021-10-19 14:43:31', '查询操作', 1);
INSERT INTO `t_log` VALUES (2762, '查询商品库存信息', '2021-10-19 14:43:35', '查询操作', 1);
INSERT INTO `t_log` VALUES (2763, '查询商品库存信息', '2021-10-19 14:43:35', '查询操作', 1);
INSERT INTO `t_log` VALUES (2764, '查询供应商信息', '2021-10-19 14:44:05', '查询操作', 1);
INSERT INTO `t_log` VALUES (2765, '查询供应商信息', '2021-10-19 14:44:05', '查询操作', 1);
INSERT INTO `t_log` VALUES (2766, '查询客户信息', '2021-10-19 14:44:07', '查询操作', 1);
INSERT INTO `t_log` VALUES (2767, '查询客户信息', '2021-10-19 14:44:07', '查询操作', 1);
INSERT INTO `t_log` VALUES (2768, '查询商品信息', '2021-10-19 14:44:11', '查询操作', 1);
INSERT INTO `t_log` VALUES (2769, '查询商品单位信息', '2021-10-19 14:44:12', '查询操作', 1);
INSERT INTO `t_log` VALUES (2770, '查询商品类别信息', '2021-10-19 14:44:12', '查询操作', 1);
INSERT INTO `t_log` VALUES (2771, '查询商品信息', '2021-10-19 14:44:12', '查询操作', 1);
INSERT INTO `t_log` VALUES (2772, '查询商品单位信息', '2021-10-19 14:44:12', '查询操作', 1);
INSERT INTO `t_log` VALUES (2773, '查询商品信息', '2021-10-19 14:44:14', '查询操作', 1);
INSERT INTO `t_log` VALUES (2774, '查询角色信息', '2021-10-19 14:44:16', '查询操作', 1);
INSERT INTO `t_log` VALUES (2775, '查询角色信息', '2021-10-19 14:44:16', '查询操作', 1);
INSERT INTO `t_log` VALUES (2776, '查询用户信息', '2021-10-19 14:44:20', '查询操作', 1);
INSERT INTO `t_log` VALUES (2777, '查询用户信息', '2021-10-19 14:44:20', '查询操作', 1);
INSERT INTO `t_log` VALUES (2778, '查询所有角色信息', '2021-10-19 14:44:22', '查询操作', 1);
INSERT INTO `t_log` VALUES (2779, '用户注销', '2021-10-19 14:44:28', '注销操作', 1);
INSERT INTO `t_log` VALUES (2780, '用户登录', '2021-10-31 20:12:43', '登录操作', 1);
INSERT INTO `t_log` VALUES (2781, '查询商品库存信息', '2021-10-31 20:12:44', '查询操作', 1);
INSERT INTO `t_log` VALUES (2782, '查询商品信息', '2021-10-31 20:13:13', '查询操作', 1);
INSERT INTO `t_log` VALUES (2783, '查询商品单位信息', '2021-10-31 20:13:13', '查询操作', 1);
INSERT INTO `t_log` VALUES (2784, '查询商品类别信息', '2021-10-31 20:13:13', '查询操作', 1);
INSERT INTO `t_log` VALUES (2785, '查询商品信息', '2021-10-31 20:13:13', '查询操作', 1);
INSERT INTO `t_log` VALUES (2786, '查询商品单位信息', '2021-10-31 20:13:13', '查询操作', 1);
INSERT INTO `t_log` VALUES (2787, '查询商品信息', '2021-10-31 20:13:31', '查询操作', 1);
INSERT INTO `t_log` VALUES (2788, '查询商品信息', '2021-10-31 20:13:31', '查询操作', 1);
INSERT INTO `t_log` VALUES (2789, '查询商品类别信息', '2021-10-31 20:13:41', '查询操作', 1);
INSERT INTO `t_log` VALUES (2792, '添加进货单', '2021-10-31 20:13:52', '添加操作', 1);
INSERT INTO `t_log` VALUES (2793, '查询商品信息', '2021-10-31 20:13:53', '查询操作', 1);
INSERT INTO `t_log` VALUES (2794, '查询商品信息', '2021-10-31 20:13:53', '查询操作', 1);
INSERT INTO `t_log` VALUES (2795, '查询商品信息', '2021-10-31 20:15:11', '查询操作', 1);
INSERT INTO `t_log` VALUES (2796, '查询商品信息', '2021-10-31 20:15:11', '查询操作', 1);
INSERT INTO `t_log` VALUES (2797, '查询商品库存信息', '2021-10-31 20:15:15', '查询操作', 1);
INSERT INTO `t_log` VALUES (2798, '用户登录', '2021-10-31 20:18:04', '登录操作', 1);
INSERT INTO `t_log` VALUES (2799, '查询商品库存信息', '2021-10-31 20:18:05', '查询操作', 1);
INSERT INTO `t_log` VALUES (2800, '查询商品库存信息', '2021-10-31 20:18:07', '查询操作', 1);
INSERT INTO `t_log` VALUES (2801, '查询商品库存信息', '2021-10-31 20:18:07', '查询操作', 1);
INSERT INTO `t_log` VALUES (2802, '查询商品信息', '2021-10-31 20:18:08', '查询操作', 1);
INSERT INTO `t_log` VALUES (2803, '查询商品信息', '2021-10-31 20:18:08', '查询操作', 1);
INSERT INTO `t_log` VALUES (2804, '查询商品信息', '2021-10-31 20:18:08', '查询操作', 1);
INSERT INTO `t_log` VALUES (2805, '查询商品信息', '2021-10-31 20:18:08', '查询操作', 1);
INSERT INTO `t_log` VALUES (2806, '查询商品类别信息', '2021-10-31 20:18:10', '查询操作', 1);
INSERT INTO `t_log` VALUES (2807, '查询商品类别信息', '2021-10-31 20:18:28', '查询操作', 1);
INSERT INTO `t_log` VALUES (2808, '查询商品类别信息', '2021-10-31 20:18:37', '查询操作', 1);
INSERT INTO `t_log` VALUES (2809, '查询商品信息', '2021-10-31 20:19:00', '查询操作', 1);
INSERT INTO `t_log` VALUES (2810, '查询商品信息', '2021-10-31 20:19:00', '查询操作', 1);
INSERT INTO `t_log` VALUES (2811, '查询商品信息', '2021-10-31 20:19:01', '查询操作', 1);
INSERT INTO `t_log` VALUES (2812, '查询商品信息', '2021-10-31 20:19:01', '查询操作', 1);
INSERT INTO `t_log` VALUES (2813, '查询商品类别信息', '2021-10-31 20:19:04', '查询操作', 1);
INSERT INTO `t_log` VALUES (2814, '查询商品库存信息', '2021-10-31 20:19:07', '查询操作', 1);
INSERT INTO `t_log` VALUES (2815, '用户注销', '2021-10-31 20:20:02', '注销操作', 1);
INSERT INTO `t_log` VALUES (2816, '用户登录', '2021-10-31 20:20:28', '登录操作', 2);
INSERT INTO `t_log` VALUES (2817, '查询商品信息', '2021-10-31 20:21:47', '查询操作', 2);
INSERT INTO `t_log` VALUES (2818, '查询商品信息', '2021-10-31 20:21:48', '查询操作', 2);
INSERT INTO `t_log` VALUES (2819, '查询商品类别信息', '2021-10-31 20:21:51', '查询操作', 2);
INSERT INTO `t_log` VALUES (2820, '查询商品信息', '2021-10-31 20:26:20', '查询操作', 2);
INSERT INTO `t_log` VALUES (2821, '查询商品信息', '2021-10-31 20:26:20', '查询操作', 2);
INSERT INTO `t_log` VALUES (2822, '查询商品信息', '2021-10-31 20:26:21', '查询操作', 2);
INSERT INTO `t_log` VALUES (2823, '查询商品信息', '2021-10-31 20:26:21', '查询操作', 2);
INSERT INTO `t_log` VALUES (2824, '查询商品信息', '2021-10-31 20:26:22', '查询操作', 2);
INSERT INTO `t_log` VALUES (2825, '查询商品信息', '2021-10-31 20:26:22', '查询操作', 2);
INSERT INTO `t_log` VALUES (2826, '查询商品信息', '2021-10-31 20:26:26', '查询操作', 2);
INSERT INTO `t_log` VALUES (2827, '查询商品信息', '2021-10-31 20:26:26', '查询操作', 2);
INSERT INTO `t_log` VALUES (2828, '查询客户信息', '2021-10-31 20:26:45', '查询操作', 2);
INSERT INTO `t_log` VALUES (2829, '查询客户信息', '2021-10-31 20:26:45', '查询操作', 2);
INSERT INTO `t_log` VALUES (2830, '用户登录', '2021-10-31 20:26:52', '登录操作', 1);
INSERT INTO `t_log` VALUES (2831, '查询商品库存信息', '2021-10-31 20:26:52', '查询操作', 1);
INSERT INTO `t_log` VALUES (2832, '查询商品库存信息', '2021-10-31 20:29:25', '查询操作', 1);
INSERT INTO `t_log` VALUES (2833, '查询商品库存信息', '2021-10-31 20:29:25', '查询操作', 1);

-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu`  (
                           `id` int(11) NOT NULL AUTO_INCREMENT,
                           `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                           `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                           `state` int(11) NULL DEFAULT NULL,
                           `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                           `p_id` int(11) NULL DEFAULT NULL,
                           PRIMARY KEY (`id`) USING BTREE,
                           INDEX `FKsni20f28wjqrmpp44uawa2ky4`(`p_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6061 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES (1, 'menu-plugin', '系统菜单', 1, NULL, -1);
INSERT INTO `t_menu` VALUES (10, 'menu-1', '采购管理', 1, NULL, 1);
INSERT INTO `t_menu` VALUES (20, 'menu-2', '销售管理', 1, NULL, 1);
INSERT INTO `t_menu` VALUES (30, 'menu-3', '库存管理', 1, NULL, 1);
INSERT INTO `t_menu` VALUES (40, 'menu-4', '统计报表', 1, NULL, 1);
INSERT INTO `t_menu` VALUES (50, 'menu-5', '基础资料', 1, NULL, 1);
INSERT INTO `t_menu` VALUES (60, 'menu-7', '商品管理', 1, NULL, 1);
INSERT INTO `t_menu` VALUES (70, 'menu-6', '系统管理', 1, NULL, 1);
INSERT INTO `t_menu` VALUES (1010, 'menu-11', '采购入库', 0, '/purchase/purchase.html', 10);
INSERT INTO `t_menu` VALUES (1020, 'menu-12', '退货出库', 0, '/purchase/return.html', 10);
INSERT INTO `t_menu` VALUES (1030, 'menu-13', '采购单据查询', 0, '/purchase/purchaseSearch.html', 10);
INSERT INTO `t_menu` VALUES (1040, 'menu-14', '退货单据查询', 0, '/purchase/returnSearch.html', 10);
INSERT INTO `t_menu` VALUES (2010, 'menu-21', '销售出库', 0, '/sale/saleout.html', 20);
INSERT INTO `t_menu` VALUES (2020, 'menu-22', '客户退货', 0, '/sale/salereturn.html', 20);
INSERT INTO `t_menu` VALUES (2030, 'menu-23', '销售单据查询', 0, '/sale/saleSearch.html', 20);
INSERT INTO `t_menu` VALUES (2040, 'menu-24', '客户退货查询', 0, '/sale/returnSearch.html', 20);
INSERT INTO `t_menu` VALUES (3010, 'menu-31', '商品过期', 0, '/stock/damage.html', 30);
INSERT INTO `t_menu` VALUES (3030, 'menu-33', '库存报警', 0, '/stock/alarm.html', 10);
INSERT INTO `t_menu` VALUES (3040, 'menu-34', '过期查询', 0, '/stock/damageOverflowSearch.html', 30);
INSERT INTO `t_menu` VALUES (3050, 'menu-35', '当前库存查询', 0, '/common/stockSearch.html', 30);
INSERT INTO `t_menu` VALUES (3060, 'menu-36', '采购预测', 0, '/stock/yuce2.html', 10);
INSERT INTO `t_menu` VALUES (4010, 'menu-41', '供应商统计', 0, '/count/supplier.html', 40);
INSERT INTO `t_menu` VALUES (4020, 'menu-42', '客户统计', 0, '/count/customer.html', 40);
INSERT INTO `t_menu` VALUES (4030, 'menu-43', '商品采购统计', 0, '/count/purchase.html', 40);
INSERT INTO `t_menu` VALUES (4040, 'menu-44', '商品销售统计', 0, '/count/sale.html', 40);
INSERT INTO `t_menu` VALUES (4050, 'menu-45', '按日统计分析', 0, '/count/saleDay.html', 40);
INSERT INTO `t_menu` VALUES (4060, 'menu-46', '按月统计分析', 0, '/count/saleMonth.html', 40);
INSERT INTO `t_menu` VALUES (5010, 'menu-51', '供应商管理', 0, '/basicData/supplier.html', 50);
INSERT INTO `t_menu` VALUES (5020, 'menu-52', '客户管理', 0, '/basicData/customer.html', 50);
INSERT INTO `t_menu` VALUES (5030, 'menu-53', '商品管理', 0, '/basicData/goods.html', 60);
INSERT INTO `t_menu` VALUES (6010, 'menu-61', '角色管理', 0, '/power/role.html', 70);
INSERT INTO `t_menu` VALUES (6020, 'menu-62', '用户管理', 0, '/power/user.html', 70);
INSERT INTO `t_menu` VALUES (6040, 'menu-63', '修改密码', 0, NULL, 70);
INSERT INTO `t_menu` VALUES (6050, 'menu-64', '安全退出', 0, NULL, 70);
INSERT INTO `t_menu` VALUES (6060, 'menu-65', '库存盘点', 0, '/stock/kucunpandian.html', 30);

-- ----------------------------
-- Table structure for t_menu_copy1
-- ----------------------------
DROP TABLE IF EXISTS `t_menu_copy1`;
CREATE TABLE `t_menu_copy1`  (
                                 `id` int(11) NOT NULL AUTO_INCREMENT,
                                 `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                 `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                 `state` int(11) NULL DEFAULT NULL,
                                 `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                 `p_id` int(11) NULL DEFAULT NULL,
                                 PRIMARY KEY (`id`) USING BTREE,
                                 INDEX `FKsni20f28wjqrmpp44uawa2ky4`(`p_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6051 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_menu_copy1
-- ----------------------------
INSERT INTO `t_menu_copy1` VALUES (1, 'menu-plugin', '系统菜单', 1, NULL, -1);
INSERT INTO `t_menu_copy1` VALUES (10, 'menu-1', '采购管理', 1, NULL, 1);
INSERT INTO `t_menu_copy1` VALUES (20, 'menu-2', '销售管理', 1, NULL, 1);
INSERT INTO `t_menu_copy1` VALUES (30, 'menu-3', '库存管理', 1, NULL, 1);
INSERT INTO `t_menu_copy1` VALUES (40, 'menu-4', '统计报表', 1, NULL, 1);
INSERT INTO `t_menu_copy1` VALUES (50, 'menu-5', '基础资料', 1, NULL, 1);
INSERT INTO `t_menu_copy1` VALUES (60, 'menu-7', '商品管理', 1, NULL, 1);
INSERT INTO `t_menu_copy1` VALUES (70, 'menu-6', '系统管理', 1, NULL, 1);
INSERT INTO `t_menu_copy1` VALUES (1010, 'menu-11', '进货入库', 0, '/purchase/purchase.html', 10);
INSERT INTO `t_menu_copy1` VALUES (1020, 'menu-12', '退货出库', 0, '/purchase/return.html', 10);
INSERT INTO `t_menu_copy1` VALUES (1030, 'menu-13', '进货单据查询', 0, '/purchase/purchaseSearch.html', 10);
INSERT INTO `t_menu_copy1` VALUES (1040, 'menu-14', '退货单据查询', 0, '/purchase/returnSearch.html', 10);
INSERT INTO `t_menu_copy1` VALUES (1050, 'menu-15', '当前库存查询', 0, '/common/stockSearch.html', 10);
INSERT INTO `t_menu_copy1` VALUES (2010, 'menu-21', '销售出库', 0, '/sale/saleout.html', 20);
INSERT INTO `t_menu_copy1` VALUES (2020, 'menu-22', '客户退货', 0, '/sale/salereturn.html', 20);
INSERT INTO `t_menu_copy1` VALUES (2030, 'menu-23', '销售单据查询', 0, '/sale/saleSearch.html', 20);
INSERT INTO `t_menu_copy1` VALUES (2040, 'menu-24', '客户退货查询', 0, '/sale/returnSearch.html', 20);
INSERT INTO `t_menu_copy1` VALUES (2050, 'menu-25', '当前库存查询', 0, '/common/stockSearch.html', 20);
INSERT INTO `t_menu_copy1` VALUES (3010, 'menu-31', '商品过期', 0, '/stock/damage.html', 30);
INSERT INTO `t_menu_copy1` VALUES (3020, 'menu-32', '商品报溢', 0, '/stock/overflow.html', 30);
INSERT INTO `t_menu_copy1` VALUES (3030, 'menu-33', '库存报警', 0, '/stock/alarm.html', 30);
INSERT INTO `t_menu_copy1` VALUES (3040, 'menu-34', '过期报溢查询', 0, '/stock/damageOverflowSearch.html', 30);
INSERT INTO `t_menu_copy1` VALUES (3050, 'menu-35', '当前库存查询', 0, '/common/stockSearch.html', 30);
INSERT INTO `t_menu_copy1` VALUES (4010, 'menu-41', '供应商统计', 0, '/count/supplier.html', 40);
INSERT INTO `t_menu_copy1` VALUES (4020, 'menu-42', '客户统计', 0, '/count/customer.html', 40);
INSERT INTO `t_menu_copy1` VALUES (4030, 'menu-43', '商品采购统计', 0, '/count/purchase.html', 40);
INSERT INTO `t_menu_copy1` VALUES (4040, 'menu-44', '商品销售统计', 0, '/count/sale.html', 40);
INSERT INTO `t_menu_copy1` VALUES (4050, 'menu-45', '按日统计分析', 0, '/count/saleDay.html', 40);
INSERT INTO `t_menu_copy1` VALUES (4060, 'menu-46', '按月统计分析', 0, '/count/saleMonth.html', 40);
INSERT INTO `t_menu_copy1` VALUES (5010, 'menu-51', '供应商管理', 0, '/basicData/supplier.html', 50);
INSERT INTO `t_menu_copy1` VALUES (5020, 'menu-52', '客户管理', 0, '/basicData/customer.html', 50);
INSERT INTO `t_menu_copy1` VALUES (5030, 'menu-53', '商品管理', 0, '/basicData/goods.html', 60);
INSERT INTO `t_menu_copy1` VALUES (6010, 'menu-61', '角色管理', 0, '/power/role.html', 70);
INSERT INTO `t_menu_copy1` VALUES (6020, 'menu-62', '用户管理', 0, '/power/user.html', 70);
INSERT INTO `t_menu_copy1` VALUES (6040, 'menu-63', '修改密码', 0, NULL, 70);
INSERT INTO `t_menu_copy1` VALUES (6050, 'menu-64', '安全退出', 0, NULL, 70);

-- ----------------------------
-- Table structure for t_overflow_list
-- ----------------------------
DROP TABLE IF EXISTS `t_overflow_list`;
CREATE TABLE `t_overflow_list`  (
                                    `id` int(11) NOT NULL AUTO_INCREMENT,
                                    `overflow_date` datetime(0) NULL DEFAULT NULL,
                                    `overflow_number` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                    `remarks` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                    `user_id` int(11) NULL DEFAULT NULL,
                                    PRIMARY KEY (`id`) USING BTREE,
                                    INDEX `FK3bu8hj2xniqwbrtg6ls6b8ej2`(`user_id`) USING BTREE,
                                    CONSTRAINT `FK3bu8hj2xniqwbrtg6ls6b8ej2` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1601 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_overflow_list
-- ----------------------------
INSERT INTO `t_overflow_list` VALUES (3, '2017-10-27 00:00:00', 'BY201710270001', 'dd', 1);
INSERT INTO `t_overflow_list` VALUES (4, '2017-10-27 00:00:00', 'BY201710270002', 'ccc', 1);
INSERT INTO `t_overflow_list` VALUES (683, '2021-09-01 00:00:00', 'BY202109010001', '', 1);
INSERT INTO `t_overflow_list` VALUES (1549, '2021-10-08 00:00:00', 'BY202110080001', '', 1);
INSERT INTO `t_overflow_list` VALUES (1600, '2021-10-08 00:00:00', 'BY202110080002', '', 1);

-- ----------------------------
-- Table structure for t_overflow_list_goods
-- ----------------------------
DROP TABLE IF EXISTS `t_overflow_list_goods`;
CREATE TABLE `t_overflow_list_goods`  (
                                          `id` int(11) NOT NULL AUTO_INCREMENT,
                                          `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                          `model` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                          `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                          `num` int(11) NOT NULL,
                                          `price` float NOT NULL,
                                          `total` float NOT NULL,
                                          `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                          `overflow_list_id` int(11) NULL DEFAULT NULL,
                                          `type_id` int(11) NULL DEFAULT NULL,
                                          `goods_id` int(11) NULL DEFAULT NULL,
                                          PRIMARY KEY (`id`) USING BTREE,
                                          INDEX `FKd3s9761mgl456tn2xb0d164h7`(`overflow_list_id`) USING BTREE,
                                          INDEX `FK8t46iik5kpciki8fnqtiuq5q3`(`type_id`) USING BTREE,
                                          CONSTRAINT `FK8t46iik5kpciki8fnqtiuq5q3` FOREIGN KEY (`type_id`) REFERENCES `t_goodstype` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
                                          CONSTRAINT `FKd3s9761mgl456tn2xb0d164h7` FOREIGN KEY (`overflow_list_id`) REFERENCES `t_overflow_list` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1600 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_overflow_list_goods
-- ----------------------------
INSERT INTO `t_overflow_list_goods` VALUES (4, '0002', 'Note8', '华为荣耀Note8', 2, 2220, 4440, '台', 3, 16, 2);
INSERT INTO `t_overflow_list_goods` VALUES (5, '0006', '300g装', '冰糖金桔干', 3, 5, 15, '盒', 3, 11, 14);
INSERT INTO `t_overflow_list_goods` VALUES (6, '0004', '2斤装', '新疆红枣', 2, 13, 26, '袋', 4, 10, 12);
INSERT INTO `t_overflow_list_goods` VALUES (7, '0006', '300g装', '冰糖金桔干', 3, 5, 15, '盒', 4, 11, 14);
INSERT INTO `t_overflow_list_goods` VALUES (682, '0002', 'Note8', '华为荣耀Note8', 2, 2220, 4440, '台', 683, 16, 2);
INSERT INTO `t_overflow_list_goods` VALUES (1548, '0009', '240g装', '休闲零食坚果特产精品干果无漂白大个开心果', 1, 20, 20, '袋', 1549, 11, 17);
INSERT INTO `t_overflow_list_goods` VALUES (1599, '0002', 'Note8', '华为荣耀Note8', 2, 2220, 4440, '台', 1600, 16, 2);

-- ----------------------------
-- Table structure for t_purchase_list
-- ----------------------------
DROP TABLE IF EXISTS `t_purchase_list`;
CREATE TABLE `t_purchase_list`  (
                                    `id` int(11) NOT NULL AUTO_INCREMENT,
                                    `amount_paid` float NOT NULL,
                                    `amount_payable` float NOT NULL,
                                    `purchase_date` datetime(0) NULL DEFAULT NULL,
                                    `remarks` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                    `state` int(11) NOT NULL,
                                    `purchase_number` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                    `supplier_id` int(11) NULL DEFAULT NULL,
                                    `user_id` int(11) NULL DEFAULT NULL,
                                    PRIMARY KEY (`id`) USING BTREE,
                                    INDEX `FK5j2dev8b2b5d0l69nb8vtr4yb`(`supplier_id`) USING BTREE,
                                    INDEX `FK69s6eyxr4wwvsywe9hbthef1h`(`user_id`) USING BTREE,
                                    CONSTRAINT `FK5j2dev8b2b5d0l69nb8vtr4yb` FOREIGN KEY (`supplier_id`) REFERENCES `t_supplier` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
                                    CONSTRAINT `FK69s6eyxr4wwvsywe9hbthef1h` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2792 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_purchase_list
-- ----------------------------
INSERT INTO `t_purchase_list` VALUES (25, 73299, 73299, '2017-10-27 00:00:00', 'cc', 1, 'JH201710270001', 2, 1);
INSERT INTO `t_purchase_list` VALUES (26, 69099, 69099, '2017-10-28 00:00:00', 'cc', 1, 'JH201710280001', 2, 1);
INSERT INTO `t_purchase_list` VALUES (28, 17, 17, '2017-10-31 00:00:00', 'cc', 1, 'JH201710310001', 5, 1);
INSERT INTO `t_purchase_list` VALUES (29, 463, 463, '2017-11-03 00:00:00', 'cc', 1, 'JH201711030001', 1, 1);
INSERT INTO `t_purchase_list` VALUES (30, 1240, 1240, '2017-11-03 00:00:00', 'cc', 1, 'JH201711030002', 1, 1);
INSERT INTO `t_purchase_list` VALUES (31, 450, 450, '2017-11-03 00:00:00', 'ccc', 1, 'JH201711030003', 2, 1);
INSERT INTO `t_purchase_list` VALUES (256, 2220, 2220, '2021-08-30 00:00:00', '', 1, 'JH202108300001', 3, 1);
INSERT INTO `t_purchase_list` VALUES (417, 8.5, 8.5, '2021-08-30 00:00:00', '', 1, 'JH202108300002', 1, 3);
INSERT INTO `t_purchase_list` VALUES (439, 660, 660, '2021-08-30 00:00:00', '', 1, 'JH202108300003', 7, 1);
INSERT INTO `t_purchase_list` VALUES (484, 3043, 3043, '2021-08-30 00:00:00', '', 1, 'JH202108300004', 8, 1);
INSERT INTO `t_purchase_list` VALUES (491, 32000, 32000, '2021-08-30 00:00:00', '', 1, 'JH202108300005', 12, 1);
INSERT INTO `t_purchase_list` VALUES (642, 2300, 2300, '2021-09-01 00:00:00', '', 2, 'JH202109010001', 3, 1);
INSERT INTO `t_purchase_list` VALUES (920, 34, 34, '2021-09-01 00:00:00', '', 1, 'JH202109010002', 1, 1);
INSERT INTO `t_purchase_list` VALUES (1395, 46, 46, '2021-09-15 00:00:00', '', 1, 'JH202109150001', 5, 1);
INSERT INTO `t_purchase_list` VALUES (1506, 10, 10, '2021-10-08 00:00:00', '', 2, 'JH202110080001', 2, 1);
INSERT INTO `t_purchase_list` VALUES (1927, 8.5, 8.5, '2021-10-10 00:00:00', '', 1, 'JH202110100001', 3, 1);
INSERT INTO `t_purchase_list` VALUES (2013, 8.5, 8.5, '2021-10-12 00:00:00', '', 1, 'JH202110120001', 3, 1);
INSERT INTO `t_purchase_list` VALUES (2071, 17, 17, '2021-10-12 00:00:00', '', 1, 'JH202110120002', 1, 1);
INSERT INTO `t_purchase_list` VALUES (2244, 195.5, 195.5, '2021-10-15 00:00:00', '', 1, 'JH202110150001', 2, 1);
INSERT INTO `t_purchase_list` VALUES (2250, 1992, 1992, '2021-10-15 00:00:00', '', 1, 'JH202110150002', 2, 1);
INSERT INTO `t_purchase_list` VALUES (2468, 17, 17, '2021-10-18 00:00:00', '', 1, 'JH202110180001', 2, 1);
INSERT INTO `t_purchase_list` VALUES (2518, 176, 176, '2021-10-18 00:00:00', '', 1, 'JH202110180002', 1, 1);
INSERT INTO `t_purchase_list` VALUES (2698, 46, 46, '2021-10-19 00:00:00', '', 1, 'JH202110190001', 2, 1);
INSERT INTO `t_purchase_list` VALUES (2791, 9, 9, '2021-10-31 00:00:00', '', 1, 'JH202110310001', 2, 1);

-- ----------------------------
-- Table structure for t_purchase_list_goods
-- ----------------------------
DROP TABLE IF EXISTS `t_purchase_list_goods`;
CREATE TABLE `t_purchase_list_goods`  (
                                          `id` int(11) NOT NULL AUTO_INCREMENT,
                                          `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                          `model` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                          `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                          `num` int(11) NOT NULL,
                                          `price` float NOT NULL,
                                          `total` float NOT NULL,
                                          `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                          `purchase_list_id` int(11) NULL DEFAULT NULL,
                                          `type_id` int(11) NULL DEFAULT NULL,
                                          `goods_id` int(11) NULL DEFAULT NULL,
                                          PRIMARY KEY (`id`) USING BTREE,
                                          INDEX `FKfvdvgcebqkkokyn0o00idqnpy`(`purchase_list_id`) USING BTREE,
                                          INDEX `FK83ikbi2x3epn49fwcco8jlfwu`(`type_id`) USING BTREE,
                                          CONSTRAINT `FK83ikbi2x3epn49fwcco8jlfwu` FOREIGN KEY (`type_id`) REFERENCES `t_goodstype` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
                                          CONSTRAINT `FKfvdvgcebqkkokyn0o00idqnpy` FOREIGN KEY (`purchase_list_id`) REFERENCES `t_purchase_list` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2791 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_purchase_list_goods
-- ----------------------------
INSERT INTO `t_purchase_list_goods` VALUES (35, '0002', 'Note8', '华为荣耀Note8', 33, 2220, 73260, '台', 25, 16, 2);
INSERT INTO `t_purchase_list_goods` VALUES (36, '0004', '2斤装', '新疆红枣', 3, 13, 39, '袋', 25, 10, 12);
INSERT INTO `t_purchase_list_goods` VALUES (37, '0003', '500g装', '野生东北黑木耳', 3000, 23, 69000, '袋', 26, 11, 11);
INSERT INTO `t_purchase_list_goods` VALUES (38, '0007', '500g装', '吉利人家牛肉味蛋糕', 22, 4.5, 99, '袋', 26, 11, 15);
INSERT INTO `t_purchase_list_goods` VALUES (41, '0001', '红色装', '陶华碧老干妈香辣脆油辣椒', 2, 8.5, 17, '瓶', 28, 10, 1);
INSERT INTO `t_purchase_list_goods` VALUES (42, '0001', '红色装', '陶华碧老干妈香辣脆油辣椒', 4, 8.5, 34, '瓶', 29, 10, 1);
INSERT INTO `t_purchase_list_goods` VALUES (43, '0004', '2斤装', '新疆红枣', 33, 13, 429, '袋', 29, 10, 12);
INSERT INTO `t_purchase_list_goods` VALUES (44, '0001', '红色装', '陶华碧老干妈香辣脆油辣椒', 100, 8.5, 850, '瓶', 30, 10, 1);
INSERT INTO `t_purchase_list_goods` VALUES (45, '0004', '2斤装', '新疆红枣', 30, 13, 390, '袋', 30, 10, 12);
INSERT INTO `t_purchase_list_goods` VALUES (46, '0015', 'X', ' iPhone X', 30, 0, 0, '台', 30, 16, 24);
INSERT INTO `t_purchase_list_goods` VALUES (47, '0007', '500g装', '吉利人家牛肉味蛋糕', 100, 4.5, 450, '袋', 31, 11, 15);
INSERT INTO `t_purchase_list_goods` VALUES (255, '0002', 'Note8', '华为荣耀Note8', 1, 2220, 2220, '台', 256, 16, 2);
INSERT INTO `t_purchase_list_goods` VALUES (416, '0001', '红色装', '陶华碧老干妈香辣脆油辣椒', 1, 8.5, 8.5, '瓶', 417, 10, 1);
INSERT INTO `t_purchase_list_goods` VALUES (438, '0026', 'AFS JEEP', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', 11, 60, 660, '条', 439, 8, 35);
INSERT INTO `t_purchase_list_goods` VALUES (483, '0001', '红色装', '陶华碧老干妈香辣脆油辣椒', 358, 8.5, 3043, '瓶', 484, 10, 1);
INSERT INTO `t_purchase_list_goods` VALUES (490, '0015', 'X', ' iPhone X', 4, 8000, 32000, '台', 491, 16, 24);
INSERT INTO `t_purchase_list_goods` VALUES (641, '0016', 'X', '21', 23, 100, 2300, '盒', 642, 3, 25);
INSERT INTO `t_purchase_list_goods` VALUES (919, '0001', '红色装', '陶华碧老干妈香辣脆油辣椒', 4, 8.5, 34, '瓶', 920, 10, 1);
INSERT INTO `t_purchase_list_goods` VALUES (1394, '0003', '500g装', '野生东北黑木耳', 2, 23, 46, '袋', 1395, 11, 11);
INSERT INTO `t_purchase_list_goods` VALUES (1505, '0006', '300g装', '冰糖金桔干', 2, 5, 10, '盒', 1506, 11, 14);
INSERT INTO `t_purchase_list_goods` VALUES (1926, '0001', '红色装', '陶华碧老干妈香辣脆油辣椒', 1, 8.5, 8.5, '瓶', 1927, 10, 1);
INSERT INTO `t_purchase_list_goods` VALUES (2012, '0001', '红色装', '陶华碧老干妈香辣脆油辣椒', 1, 8.5, 8.5, '瓶', 2013, 10, 1);
INSERT INTO `t_purchase_list_goods` VALUES (2070, '0001', '红色装', '陶华碧老干妈香辣脆油辣椒', 2, 8.5, 17, '瓶', 2071, 10, 1);
INSERT INTO `t_purchase_list_goods` VALUES (2243, '0001', '红色装', '陶华碧老干妈香辣脆油辣椒', 23, 8.5, 195.5, '瓶', 2244, 10, 1);
INSERT INTO `t_purchase_list_goods` VALUES (2249, '0008', '128g装', '奕森奶油桃肉蜜饯果脯果干桃肉干休闲零食品', 664, 3, 1992, '盒', 2250, 11, 16);
INSERT INTO `t_purchase_list_goods` VALUES (2467, '0001', '红色装', '陶华碧老干妈香辣脆油辣椒', 2, 8.5, 17, '瓶', 2468, 10, 1);
INSERT INTO `t_purchase_list_goods` VALUES (2517, '0005', '散装500克', '麦片燕麦巧克力', 22, 8, 176, '袋', 2518, 11, 13);
INSERT INTO `t_purchase_list_goods` VALUES (2697, '0003', '500g装', '野生东北黑木耳', 2, 23, 46, '袋', 2698, 11, 11);
INSERT INTO `t_purchase_list_goods` VALUES (2790, '0007', '500g装', '吉利人家牛肉味蛋糕', 2, 4.5, 9, '袋', 2791, 11, 15);

-- ----------------------------
-- Table structure for t_return_list
-- ----------------------------
DROP TABLE IF EXISTS `t_return_list`;
CREATE TABLE `t_return_list`  (
                                  `id` int(11) NOT NULL AUTO_INCREMENT,
                                  `amount_paid` float NOT NULL,
                                  `amount_payable` float NOT NULL,
                                  `remarks` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                  `return_date` datetime(0) NULL DEFAULT NULL,
                                  `return_number` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                  `state` int(11) NOT NULL,
                                  `supplier_id` int(11) NULL DEFAULT NULL,
                                  `user_id` int(11) NULL DEFAULT NULL,
                                  PRIMARY KEY (`id`) USING BTREE,
                                  INDEX `FK4qxjj8bvj2etne243xluni0vn`(`supplier_id`) USING BTREE,
                                  INDEX `FK904juw2v1hm2av0ig26gae9jb`(`user_id`) USING BTREE,
                                  CONSTRAINT `FK4qxjj8bvj2etne243xluni0vn` FOREIGN KEY (`supplier_id`) REFERENCES `t_supplier` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
                                  CONSTRAINT `FK904juw2v1hm2av0ig26gae9jb` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2738 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_return_list
-- ----------------------------
INSERT INTO `t_return_list` VALUES (4, 4464, 4464, 'cc', '2017-10-27 00:00:00', 'TH201710270001', 1, 2, 1);
INSERT INTO `t_return_list` VALUES (5, 4440, 4440, 'cc', '2017-11-03 00:00:00', 'TH201711030001', 1, 2, 1);
INSERT INTO `t_return_list` VALUES (262, 4250, 4250, '', '2021-08-30 00:00:00', 'TH202108300001', 1, 4, 1);
INSERT INTO `t_return_list` VALUES (270, 317477, 317477, '', '2021-08-30 00:00:00', 'TH202108300002', 1, 1, 1);
INSERT INTO `t_return_list` VALUES (276, 2220, 2220, '', '2021-08-30 00:00:00', 'TH202108300003', 1, 1, 1);
INSERT INTO `t_return_list` VALUES (650, 8.5, 8.5, '', '2021-09-01 00:00:00', 'TH202109010001', 1, 1, 1);
INSERT INTO `t_return_list` VALUES (1515, 42, 42, '', '2021-10-08 00:00:00', 'TH202110080001', 1, 7, 1);
INSERT INTO `t_return_list` VALUES (2085, 42.5, 42.5, '', '2021-10-12 00:00:00', 'TH202110120001', 1, 2, 1);
INSERT INTO `t_return_list` VALUES (2256, 3852, 3852, '', '2021-10-15 00:00:00', 'TH202110150001', 1, 5, 1);
INSERT INTO `t_return_list` VALUES (2476, 8, 8, '', '2021-10-18 00:00:00', 'TH202110180001', 1, 3, 1);
INSERT INTO `t_return_list` VALUES (2706, 46, 46, '', '2021-10-19 00:00:00', 'TH202110190001', 1, 2, 1);
INSERT INTO `t_return_list` VALUES (2712, 187, 187, '', '2021-10-19 00:00:00', 'TH202110190002', 1, 2, 1);
INSERT INTO `t_return_list` VALUES (2737, 17, 17, '', '2021-10-19 00:00:00', 'TH202110190003', 1, 2, 1);

-- ----------------------------
-- Table structure for t_return_list_goods
-- ----------------------------
DROP TABLE IF EXISTS `t_return_list_goods`;
CREATE TABLE `t_return_list_goods`  (
                                        `id` int(11) NOT NULL AUTO_INCREMENT,
                                        `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                        `model` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                        `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                        `num` int(11) NOT NULL,
                                        `price` float NOT NULL,
                                        `total` float NOT NULL,
                                        `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                        `return_list_id` int(11) NULL DEFAULT NULL,
                                        `type_id` int(11) NULL DEFAULT NULL,
                                        `goods_id` int(11) NULL DEFAULT NULL,
                                        PRIMARY KEY (`id`) USING BTREE,
                                        INDEX `FKemclu281vyvyk063c3foafq1w`(`return_list_id`) USING BTREE,
                                        INDEX `FKa1prpd96fcs0x2oe0omny9vio`(`type_id`) USING BTREE,
                                        CONSTRAINT `FKa1prpd96fcs0x2oe0omny9vio` FOREIGN KEY (`type_id`) REFERENCES `t_goodstype` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
                                        CONSTRAINT `FKemclu281vyvyk063c3foafq1w` FOREIGN KEY (`return_list_id`) REFERENCES `t_return_list` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2737 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_return_list_goods
-- ----------------------------
INSERT INTO `t_return_list_goods` VALUES (7, '0002', 'Note8', '华为荣耀Note8', 2, 2220, 4440, '台', 4, 16, 2);
INSERT INTO `t_return_list_goods` VALUES (8, '0005', '散装500克', '麦片燕麦巧克力', 3, 8, 24, '袋', 4, 11, 13);
INSERT INTO `t_return_list_goods` VALUES (9, '0002', 'Note8', '华为荣耀Note8', 2, 2220, 4440, '台', 5, 16, 2);
INSERT INTO `t_return_list_goods` VALUES (10, '0015', 'X', ' iPhone X', 3, 0, 0, '台', 5, 16, 24);
INSERT INTO `t_return_list_goods` VALUES (261, '0001', '红色装', '陶华碧老干妈香辣脆油辣椒', 500, 8.5, 4250, '瓶', 262, 10, 1);
INSERT INTO `t_return_list_goods` VALUES (268, '0001', '红色装', '陶华碧老干妈香辣脆油辣椒', 2, 8.5, 17, '瓶', 270, 10, 1);
INSERT INTO `t_return_list_goods` VALUES (269, '0002', 'Note8', '华为荣耀Note8', 143, 2220, 317460, '台', 270, 16, 2);
INSERT INTO `t_return_list_goods` VALUES (275, '0002', 'Note8', '华为荣耀Note8', 1, 2220, 2220, '台', 276, 16, 2);
INSERT INTO `t_return_list_goods` VALUES (649, '0001', '红色装', '陶华碧老干妈香辣脆油辣椒', 1, 8.5, 8.5, '瓶', 650, 10, 1);
INSERT INTO `t_return_list_goods` VALUES (1513, '0005', '散装500克', '麦片燕麦巧克力', 4, 8, 32, '袋', 1515, 11, 13);
INSERT INTO `t_return_list_goods` VALUES (1514, '0006', '300g装', '冰糖金桔干', 2, 5, 10, '盒', 1515, 11, 14);
INSERT INTO `t_return_list_goods` VALUES (2084, '0001', '红色装', '陶华碧老干妈香辣脆油辣椒', 5, 8.5, 42.5, '瓶', 2085, 10, 1);
INSERT INTO `t_return_list_goods` VALUES (2255, '0010', '250g装', '劲仔小鱼干', 321, 12, 3852, '袋', 2256, 11, 18);
INSERT INTO `t_return_list_goods` VALUES (2475, '0005', '散装500克', '麦片燕麦巧克力', 1, 8, 8, '袋', 2476, 11, 13);
INSERT INTO `t_return_list_goods` VALUES (2705, '0003', '500g装', '野生东北黑木耳', 2, 23, 46, '袋', 2706, 11, 11);
INSERT INTO `t_return_list_goods` VALUES (2711, '0001', '红色装', '陶华碧老干妈香辣脆油辣椒', 22, 8.5, 187, '瓶', 2712, 10, 1);
INSERT INTO `t_return_list_goods` VALUES (2736, '0001', '红色装', '陶华碧老干妈香辣脆油辣椒', 2, 8.5, 17, '瓶', 2737, 10, 1);

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role`  (
                           `id` int(11) NOT NULL AUTO_INCREMENT,
                           `bz` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                           `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                           `remarks` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                           PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 560 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES (1, '系统管理员 最高权限', '管理员', NULL);
INSERT INTO `t_role` VALUES (530, NULL, '经理', '');
INSERT INTO `t_role` VALUES (559, NULL, '员工', '');

-- ----------------------------
-- Table structure for t_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_role_menu`;
CREATE TABLE `t_role_menu`  (
                                `id` int(11) NOT NULL AUTO_INCREMENT,
                                `menu_id` int(11) NULL DEFAULT NULL,
                                `role_id` int(11) NULL DEFAULT NULL,
                                PRIMARY KEY (`id`) USING BTREE,
                                INDEX `FKsonb0rbt2u99hbrqqvv3r0wse`(`role_id`) USING BTREE,
                                INDEX `FKhayg4ib6v7h1wyeyxhq6xlddq`(`menu_id`) USING BTREE,
                                CONSTRAINT `FKhayg4ib6v7h1wyeyxhq6xlddq` FOREIGN KEY (`menu_id`) REFERENCES `t_menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
                                CONSTRAINT `FKsonb0rbt2u99hbrqqvv3r0wse` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
                                CONSTRAINT `t_role_menu_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `t_menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1159 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role_menu
-- ----------------------------
INSERT INTO `t_role_menu` VALUES (2, 1, 1);
INSERT INTO `t_role_menu` VALUES (3, 10, 1);
INSERT INTO `t_role_menu` VALUES (4, 20, 1);
INSERT INTO `t_role_menu` VALUES (5, 30, 1);
INSERT INTO `t_role_menu` VALUES (6, 40, 1);
INSERT INTO `t_role_menu` VALUES (7, 50, 1);
INSERT INTO `t_role_menu` VALUES (8, 60, 1);
INSERT INTO `t_role_menu` VALUES (9, 1010, 1);
INSERT INTO `t_role_menu` VALUES (10, 1020, 1);
INSERT INTO `t_role_menu` VALUES (11, 1030, 1);
INSERT INTO `t_role_menu` VALUES (12, 1040, 1);
INSERT INTO `t_role_menu` VALUES (14, 2010, 1);
INSERT INTO `t_role_menu` VALUES (15, 2020, 1);
INSERT INTO `t_role_menu` VALUES (16, 2030, 1);
INSERT INTO `t_role_menu` VALUES (17, 2040, 1);
INSERT INTO `t_role_menu` VALUES (19, 3010, 1);
INSERT INTO `t_role_menu` VALUES (21, 3030, 1);
INSERT INTO `t_role_menu` VALUES (22, 3040, 1);
INSERT INTO `t_role_menu` VALUES (23, 3050, 1);
INSERT INTO `t_role_menu` VALUES (24, 4010, 1);
INSERT INTO `t_role_menu` VALUES (25, 4020, 1);
INSERT INTO `t_role_menu` VALUES (26, 4030, 1);
INSERT INTO `t_role_menu` VALUES (27, 4040, 1);
INSERT INTO `t_role_menu` VALUES (28, 4050, 1);
INSERT INTO `t_role_menu` VALUES (29, 4060, 1);
INSERT INTO `t_role_menu` VALUES (30, 5010, 1);
INSERT INTO `t_role_menu` VALUES (31, 5020, 1);
INSERT INTO `t_role_menu` VALUES (32, 5030, 1);
INSERT INTO `t_role_menu` VALUES (34, 6010, 1);
INSERT INTO `t_role_menu` VALUES (35, 6020, 1);
INSERT INTO `t_role_menu` VALUES (44, 6040, 1);
INSERT INTO `t_role_menu` VALUES (64, 6050, 1);
INSERT INTO `t_role_menu` VALUES (1062, 1, 530);
INSERT INTO `t_role_menu` VALUES (1063, 10, 530);
INSERT INTO `t_role_menu` VALUES (1064, 1010, 530);
INSERT INTO `t_role_menu` VALUES (1065, 1020, 530);
INSERT INTO `t_role_menu` VALUES (1066, 1030, 530);
INSERT INTO `t_role_menu` VALUES (1067, 1040, 530);
INSERT INTO `t_role_menu` VALUES (1069, 20, 530);
INSERT INTO `t_role_menu` VALUES (1070, 2010, 530);
INSERT INTO `t_role_menu` VALUES (1071, 2020, 530);
INSERT INTO `t_role_menu` VALUES (1072, 2030, 530);
INSERT INTO `t_role_menu` VALUES (1073, 2040, 530);
INSERT INTO `t_role_menu` VALUES (1075, 30, 530);
INSERT INTO `t_role_menu` VALUES (1076, 3010, 530);
INSERT INTO `t_role_menu` VALUES (1079, 3040, 530);
INSERT INTO `t_role_menu` VALUES (1081, 40, 530);
INSERT INTO `t_role_menu` VALUES (1082, 4010, 530);
INSERT INTO `t_role_menu` VALUES (1083, 4020, 530);
INSERT INTO `t_role_menu` VALUES (1084, 4030, 530);
INSERT INTO `t_role_menu` VALUES (1085, 4040, 530);
INSERT INTO `t_role_menu` VALUES (1086, 4050, 530);
INSERT INTO `t_role_menu` VALUES (1087, 4060, 530);
INSERT INTO `t_role_menu` VALUES (1088, 50, 530);
INSERT INTO `t_role_menu` VALUES (1089, 5010, 530);
INSERT INTO `t_role_menu` VALUES (1090, 5020, 530);
INSERT INTO `t_role_menu` VALUES (1091, 5030, 530);
INSERT INTO `t_role_menu` VALUES (1093, 6040, 530);
INSERT INTO `t_role_menu` VALUES (1094, 6050, 530);
INSERT INTO `t_role_menu` VALUES (1125, 1, 559);
INSERT INTO `t_role_menu` VALUES (1126, 10, 559);
INSERT INTO `t_role_menu` VALUES (1127, 1010, 559);
INSERT INTO `t_role_menu` VALUES (1128, 1020, 559);
INSERT INTO `t_role_menu` VALUES (1129, 1030, 559);
INSERT INTO `t_role_menu` VALUES (1130, 1040, 559);
INSERT INTO `t_role_menu` VALUES (1132, 20, 559);
INSERT INTO `t_role_menu` VALUES (1133, 2010, 559);
INSERT INTO `t_role_menu` VALUES (1134, 2020, 559);
INSERT INTO `t_role_menu` VALUES (1135, 2030, 559);
INSERT INTO `t_role_menu` VALUES (1136, 2040, 559);
INSERT INTO `t_role_menu` VALUES (1138, 30, 559);
INSERT INTO `t_role_menu` VALUES (1139, 3010, 559);
INSERT INTO `t_role_menu` VALUES (1142, 3040, 559);
INSERT INTO `t_role_menu` VALUES (1144, 40, 559);
INSERT INTO `t_role_menu` VALUES (1145, 4010, 559);
INSERT INTO `t_role_menu` VALUES (1146, 4020, 559);
INSERT INTO `t_role_menu` VALUES (1147, 4030, 559);
INSERT INTO `t_role_menu` VALUES (1148, 4040, 559);
INSERT INTO `t_role_menu` VALUES (1149, 4050, 559);
INSERT INTO `t_role_menu` VALUES (1150, 4060, 559);
INSERT INTO `t_role_menu` VALUES (1152, 6040, 559);
INSERT INTO `t_role_menu` VALUES (1153, 6050, 559);
INSERT INTO `t_role_menu` VALUES (1156, 70, 1);
INSERT INTO `t_role_menu` VALUES (1157, 6060, 1);
INSERT INTO `t_role_menu` VALUES (1158, 3060, 1);

-- ----------------------------
-- Table structure for t_sale_list
-- ----------------------------
DROP TABLE IF EXISTS `t_sale_list`;
CREATE TABLE `t_sale_list`  (
                                `id` int(11) NOT NULL AUTO_INCREMENT,
                                `amount_paid` float NOT NULL,
                                `amount_payable` float NOT NULL,
                                `remarks` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                `sale_date` datetime(0) NULL DEFAULT NULL,
                                `sale_number` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                `state` int(11) NULL DEFAULT NULL,
                                `user_id` int(11) NULL DEFAULT NULL,
                                `customer_id` int(11) NULL DEFAULT NULL,
                                PRIMARY KEY (`id`) USING BTREE,
                                INDEX `FK34bnujemrdqimbhg133enp8k8`(`user_id`) USING BTREE,
                                INDEX `FKox4qfs87eu3fvwdmrvelqhi8e`(`customer_id`) USING BTREE,
                                CONSTRAINT `FK34bnujemrdqimbhg133enp8k8` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
                                CONSTRAINT `FKox4qfs87eu3fvwdmrvelqhi8e` FOREIGN KEY (`customer_id`) REFERENCES `t_customer` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2748 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_sale_list
-- ----------------------------
INSERT INTO `t_sale_list` VALUES (4, 5060, 5060, 'cc', '2021-01-27 00:00:00', 'XS201701270001', 1, 1, 2);
INSERT INTO `t_sale_list` VALUES (6, 4889, 4889, 'dd', '2021-02-28 00:00:00', 'XS201702280002', 1, 1, 2);
INSERT INTO `t_sale_list` VALUES (7, 4400, 4400, 'cccc', '2021-03-30 00:00:00', 'XS201703300001', 1, 1, 2);
INSERT INTO `t_sale_list` VALUES (8, 860, 860, 'cc', '2021-04-30 00:00:00', 'XS201704300002', 1, 1, 2);
INSERT INTO `t_sale_list` VALUES (11, 83, 83, 'ccc', '2021-05-01 00:00:00', 'XS201705100003', 1, 1, 2);
INSERT INTO `t_sale_list` VALUES (12, 6626, 6626, 'cccc', '2021-06-03 00:00:00', 'XS201706300001', 1, 1, 2);
INSERT INTO `t_sale_list` VALUES (13, 76, 76, 'cc', '2021-06-03 00:00:00', 'XS201706300002', 1, 1, 1);
INSERT INTO `t_sale_list` VALUES (14, 127, 127, 'cc', '2021-07-03 00:00:00', 'XS201707300003', 2, 1, 2);
INSERT INTO `t_sale_list` VALUES (15, 1579.5, 1579.5, 'cc', '2021-08-03 00:00:00', 'XS201708300004', 1, 1, 2);
INSERT INTO `t_sale_list` VALUES (16, 76, 76, 'cc', '2021-09-03 00:00:00', 'XS201709300005', 1, 1, 2);
INSERT INTO `t_sale_list` VALUES (17, 111, 111, 'cc', '2021-09-28 00:00:00', 'XS201710280006', 1, 1, 2);
INSERT INTO `t_sale_list` VALUES (18, 40, 40, 'cc', '2021-09-29 00:00:00', 'XS201710290007', 1, 1, 1);
INSERT INTO `t_sale_list` VALUES (19, 45, 45, 'cc', '2021-09-30 00:00:00', 'XS201710300008', 1, 1, 1);
INSERT INTO `t_sale_list` VALUES (20, 10, 10, 'cc', '2021-09-27 00:00:00', 'XS201710310009', 1, 1, 1);
INSERT INTO `t_sale_list` VALUES (21, 202, 202, 'cc', '2021-10-01 00:00:00', 'XS201711010010', 1, 1, 2);
INSERT INTO `t_sale_list` VALUES (22, 3650, 3650, '11', '2021-10-02 00:00:00', 'XS201711020011', 1, 1, 2);
INSERT INTO `t_sale_list` VALUES (23, 20, 20, 'cc', '2021-10-03 00:00:00', 'XS201711030012', 1, 1, 1);
INSERT INTO `t_sale_list` VALUES (24, 59, 59, 'cc', '2021-10-03 00:00:00', 'XS201712030013', 1, 1, 2);
INSERT INTO `t_sale_list` VALUES (25, 146, 146, 'cc', '2021-10-03 00:00:00', 'XS201711030014', 1, 1, 1);
INSERT INTO `t_sale_list` VALUES (48, 17, 17, '', '2021-08-29 00:00:00', 'XS202108291630245313858', 1, 2, 1);
INSERT INTO `t_sale_list` VALUES (54, 1216, 1216, '', '2021-08-29 00:00:00', 'XS202108291630245347010', 2, 2, 3);
INSERT INTO `t_sale_list` VALUES (284, 4400, 4400, '', '2021-08-30 00:00:00', 'XS202108301630294446582', 1, 1, 1);
INSERT INTO `t_sale_list` VALUES (290, 200, 200, '', '2021-08-30 00:00:00', 'XS202108301630294466798', 1, 1, 1);
INSERT INTO `t_sale_list` VALUES (296, 20, 20, '', '2021-08-30 00:00:00', 'XS202108301630294481817', 1, 1, 1);
INSERT INTO `t_sale_list` VALUES (659, 17, 17, '', '2021-09-01 00:00:00', 'XS202109011630500119981', 1, 1, 1);
INSERT INTO `t_sale_list` VALUES (1468, 8.5, 8.5, '', '2021-09-17 00:00:00', 'XS202109171631855549331', 1, 1, 1);
INSERT INTO `t_sale_list` VALUES (1524, 8.5, 8.5, '', '2021-10-08 00:00:00', 'XS202110081633673237104', 1, 1, 2);
INSERT INTO `t_sale_list` VALUES (2484, 17, 17, '', '2021-10-18 00:00:00', 'XS202110181634548676255', 1, 1, 2);
INSERT INTO `t_sale_list` VALUES (2747, 17, 17, '', '2021-10-19 00:00:00', 'XS202110191634625767083', 1, 1, 2);

-- ----------------------------
-- Table structure for t_sale_list_goods
-- ----------------------------
DROP TABLE IF EXISTS `t_sale_list_goods`;
CREATE TABLE `t_sale_list_goods`  (
                                      `id` int(11) NOT NULL AUTO_INCREMENT,
                                      `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                      `model` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                      `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                      `num` int(11) NOT NULL,
                                      `price` float NOT NULL,
                                      `total` float NOT NULL,
                                      `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                      `sale_list_id` int(11) NULL DEFAULT NULL,
                                      `type_id` int(11) NULL DEFAULT NULL,
                                      `goods_id` int(11) NULL DEFAULT NULL,
                                      PRIMARY KEY (`id`) USING BTREE,
                                      INDEX `FK20ehd6ta9geyql4hxtdsnhbox`(`sale_list_id`) USING BTREE,
                                      INDEX `FKn9i5p1d8f0gek5x7q45cq8ibw`(`type_id`) USING BTREE,
                                      CONSTRAINT `FK20ehd6ta9geyql4hxtdsnhbox` FOREIGN KEY (`sale_list_id`) REFERENCES `t_sale_list` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
                                      CONSTRAINT `FKn9i5p1d8f0gek5x7q45cq8ibw` FOREIGN KEY (`type_id`) REFERENCES `t_goodstype` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2747 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_sale_list_goods
-- ----------------------------
INSERT INTO `t_sale_list_goods` VALUES (7, '0002', 'Note8', '华为荣耀Note8', 2, 2200, 4400, '台', 4, 16, 2);
INSERT INTO `t_sale_list_goods` VALUES (8, '0010', '250g装', '劲仔小鱼干', 33, 20, 660, '袋', 4, 11, 18);
INSERT INTO `t_sale_list_goods` VALUES (11, '0003', '500g装', '野生东北黑木耳', 100, 38, 3800, '袋', 6, 11, 11);
INSERT INTO `t_sale_list_goods` VALUES (12, '0009', '240g装', '休闲零食坚果特产精品干果无漂白大个开心果', 33, 33, 1089, '袋', 6, 11, 17);
INSERT INTO `t_sale_list_goods` VALUES (13, '0002', 'Note8', '华为荣耀Note8', 2, 2200, 4400, '台', 7, 16, 2);
INSERT INTO `t_sale_list_goods` VALUES (14, '0003', '500g装', '野生东北黑木耳', 22, 38, 836, '袋', 8, 11, 11);
INSERT INTO `t_sale_list_goods` VALUES (15, '0014', '250g装', '美国青豆原味 蒜香', 3, 8, 24, '袋', 8, 11, 22);
INSERT INTO `t_sale_list_goods` VALUES (20, '0003', '500g装', '野生东北黑木耳', 1, 38, 38, '袋', 11, 11, 11);
INSERT INTO `t_sale_list_goods` VALUES (21, '0005', '散装500克', '麦片燕麦巧克力', 3, 15, 45, '袋', 11, 11, 13);
INSERT INTO `t_sale_list_goods` VALUES (22, '0002', 'Note8', '华为荣耀Note8', 3, 2200, 6600, '台', 12, 16, 2);
INSERT INTO `t_sale_list_goods` VALUES (23, '0006', '300g装', '冰糖金桔干', 2, 13, 26, '盒', 12, 11, 14);
INSERT INTO `t_sale_list_goods` VALUES (24, '0003', '500g装', '野生东北黑木耳', 2, 38, 76, '袋', 13, 11, 11);
INSERT INTO `t_sale_list_goods` VALUES (25, '0004', '2斤装', '新疆红枣', 3, 25, 75, '袋', 14, 10, 12);
INSERT INTO `t_sale_list_goods` VALUES (26, '0006', '300g装', '冰糖金桔干', 4, 13, 52, '盒', 14, 11, 14);
INSERT INTO `t_sale_list_goods` VALUES (27, '0001', '红色装', '陶华碧老干妈香辣脆油辣椒', 33, 8.5, 280.5, '瓶', 15, 10, 1);
INSERT INTO `t_sale_list_goods` VALUES (28, '0018', 'IXUS 285 HS', 'Canon/佳能 IXUS 285 HS 数码相机 2020万像素高清拍摄', 1, 1299, 1299, '台', 15, 15, 27);
INSERT INTO `t_sale_list_goods` VALUES (29, '0003', '500g装', '野生东北黑木耳', 2, 38, 76, '袋', 16, 11, 11);
INSERT INTO `t_sale_list_goods` VALUES (30, '0005', '散装500克', '麦片燕麦巧克力', 3, 15, 45, '袋', 17, 11, 13);
INSERT INTO `t_sale_list_goods` VALUES (31, '0009', '240g装', '休闲零食坚果特产精品干果无漂白大个开心果', 2, 33, 66, '袋', 17, 11, 17);
INSERT INTO `t_sale_list_goods` VALUES (32, '0010', '250g装', '劲仔小鱼干', 1, 20, 20, '袋', 18, 11, 18);
INSERT INTO `t_sale_list_goods` VALUES (33, '0008', '128g装', '奕森奶油桃肉蜜饯果脯果干桃肉干休闲零食品', 2, 10, 20, '盒', 18, 11, 16);
INSERT INTO `t_sale_list_goods` VALUES (34, '0004', '2斤装', '新疆红枣', 1, 25, 25, '袋', 19, 10, 12);
INSERT INTO `t_sale_list_goods` VALUES (35, '0008', '128g装', '奕森奶油桃肉蜜饯果脯果干桃肉干休闲零食品', 2, 10, 20, '盒', 19, 11, 16);
INSERT INTO `t_sale_list_goods` VALUES (36, '0007', '500g装', '吉利人家牛肉味蛋糕', 1, 10, 10, '袋', 20, 11, 15);
INSERT INTO `t_sale_list_goods` VALUES (37, '0003', '500g装', '野生东北黑木耳', 2, 38, 76, '袋', 21, 11, 11);
INSERT INTO `t_sale_list_goods` VALUES (38, '0007', '500g装', '吉利人家牛肉味蛋糕', 2, 10, 20, '袋', 21, 11, 15);
INSERT INTO `t_sale_list_goods` VALUES (39, '0009', '240g装', '休闲零食坚果特产精品干果无漂白大个开心果', 2, 33, 66, '袋', 21, 11, 17);
INSERT INTO `t_sale_list_goods` VALUES (40, '0010', '250g装', '劲仔小鱼干', 2, 20, 40, '袋', 21, 11, 18);
INSERT INTO `t_sale_list_goods` VALUES (41, '0017', 'ILCE-A6000L', 'Sony/索尼 ILCE-A6000L WIFI微单数码相机高清单电', 1, 3650, 3650, '台', 22, 15, 26);
INSERT INTO `t_sale_list_goods` VALUES (42, '0010', '250g装', '劲仔小鱼干', 1, 20, 20, '袋', 23, 11, 18);
INSERT INTO `t_sale_list_goods` VALUES (43, '0009', '240g装', '休闲零食坚果特产精品干果无漂白大个开心果', 1, 33, 33, '袋', 24, 11, 17);
INSERT INTO `t_sale_list_goods` VALUES (44, '0006', '300g装', '冰糖金桔干', 2, 13, 26, '盒', 24, 11, 14);
INSERT INTO `t_sale_list_goods` VALUES (45, '0009', '240g装', '休闲零食坚果特产精品干果无漂白大个开心果', 2, 33, 66, '袋', 25, 11, 17);
INSERT INTO `t_sale_list_goods` VALUES (46, '0014', '250g装', '美国青豆原味 蒜香', 10, 8, 80, '袋', 25, 11, 22);
INSERT INTO `t_sale_list_goods` VALUES (47, '0001', '红色装', '陶华碧老干妈香辣脆油辣椒', 2, 8.5, 17, '瓶', 48, 10, 1);
INSERT INTO `t_sale_list_goods` VALUES (53, '0003', '500g装', '野生东北黑木耳', 32, 38, 1216, '袋', 54, 11, 11);
INSERT INTO `t_sale_list_goods` VALUES (283, '0002', 'Note8', '华为荣耀Note8', 2, 2200, 4400, '台', 284, 16, 2);
INSERT INTO `t_sale_list_goods` VALUES (289, '0010', '250g装', '劲仔小鱼干', 10, 20, 200, '袋', 290, 11, 18);
INSERT INTO `t_sale_list_goods` VALUES (295, '0010', '250g装', '劲仔小鱼干', 1, 20, 20, '袋', 296, 11, 18);
INSERT INTO `t_sale_list_goods` VALUES (658, '0001', '红色装', '陶华碧老干妈香辣脆油辣椒', 2, 8.5, 17, '瓶', 659, 10, 1);
INSERT INTO `t_sale_list_goods` VALUES (1467, '0001', '红色装', '陶华碧老干妈香辣脆油辣椒', 1, 8.5, 8.5, '瓶', 1468, 10, 1);
INSERT INTO `t_sale_list_goods` VALUES (1523, '0001', '红色装', '陶华碧老干妈香辣脆油辣椒', 1, 8.5, 8.5, '瓶', 1524, 10, 1);
INSERT INTO `t_sale_list_goods` VALUES (2483, '0001', '红色装', '陶华碧老干妈香辣脆油辣椒', 2, 8.5, 17, '瓶', 2484, 10, 1);
INSERT INTO `t_sale_list_goods` VALUES (2746, '0001', '红色装', '陶华碧老干妈香辣脆油辣椒', 2, 8.5, 17, '瓶', 2747, 10, 1);

-- ----------------------------
-- Table structure for t_supplier
-- ----------------------------
DROP TABLE IF EXISTS `t_supplier`;
CREATE TABLE `t_supplier`  (
                               `id` int(11) NOT NULL AUTO_INCREMENT,
                               `address` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                               `contact` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                               `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                               `number` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                               `remarks` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                               PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 802 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_supplier
-- ----------------------------
INSERT INTO `t_supplier` VALUES (1, '上海市金山区张堰镇松金公路2072号6607室', 'aaaa', '上海福桂食品有限公司', '0773-7217175', '失信供应商1211');
INSERT INTO `t_supplier` VALUES (2, '安徽省合肥市肥西县桃花工业园合派路', '小王', '安徽麦堡食品工业有限公司', '0773-7217275', NULL);
INSERT INTO `t_supplier` VALUES (3, '晋江市罗山后林西区41号', '小李', '福建省晋江市罗山惠康食品有限公司', '1273-1217175', '优质供应商');
INSERT INTO `t_supplier` VALUES (4, '南京市江宁区科学园竹山路565号1幢', '小丽', '南京含羞草食品有限公司', '2121-7217175', NULL);
INSERT INTO `t_supplier` VALUES (5, '南京市高淳县阳江镇新桥村下桥278号', '王大狗', '南京禾乃美工贸有限公司', '2133-7217125', NULL);
INSERT INTO `t_supplier` VALUES (6, '开平市水口镇东埠路６号', '小七', '开平广合腐乳有限公司', '3332-7217175', '2');
INSERT INTO `t_supplier` VALUES (7, '汕头市跃进路２３号利鸿基中心大厦写字楼２座', '刘钩子', '汕头市金茂食品有限公司', '0723-7232175', NULL);
INSERT INTO `t_supplier` VALUES (8, '南京市溧水区经济开发区', '七枷社', '南京喜之郎食品有限公司', '1773-7217175', NULL);
INSERT INTO `t_supplier` VALUES (10, '南京市下关区金陵小区6村27-2-203室', '小路', '南京市下关区红鹰调味品商行', '2132-7217175', NULL);
INSERT INTO `t_supplier` VALUES (11, '荔浦县荔塔路１６－３６号', '亲亲', '桂林阜康食品工业有限公司', '2123-7217175', NULL);
INSERT INTO `t_supplier` VALUES (12, '南京鼓楼区世纪大楼123号', '小二', '南京大王科技', '0112-1426789', '123');
INSERT INTO `t_supplier` VALUES (13, '南京将军路800号', '小吴', '南京大陆食品公司', '1243-2135487', 'cc');
INSERT INTO `t_supplier` VALUES (801, '黄岛区111', '小红帽和 123', '内蒙古', '18561525250', '');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
                           `id` int(11) NOT NULL AUTO_INCREMENT,
                           `bz` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                           `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                           `true_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                           `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                           `remarks` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                           PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, '管理员', 'admin', '王大陆', 'admin', NULL);
INSERT INTO `t_user` VALUES (2, '主管', '123', '王大锤', 'jack', '2');
INSERT INTO `t_user` VALUES (3, '销售经理', '123', '玛丽', 'marry', '33');

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role`  (
                                `id` int(11) NOT NULL AUTO_INCREMENT,
                                `role_id` int(11) NULL DEFAULT NULL,
                                `user_id` int(11) NULL DEFAULT NULL,
                                PRIMARY KEY (`id`) USING BTREE,
                                INDEX `FKa9c8iiy6ut0gnx491fqx4pxam`(`role_id`) USING BTREE,
                                INDEX `FKq5un6x7ecoef5w1n39cop66kl`(`user_id`) USING BTREE,
                                CONSTRAINT `FKa9c8iiy6ut0gnx491fqx4pxam` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
                                CONSTRAINT `FKq5un6x7ecoef5w1n39cop66kl` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1104 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES (1, 1, 1);
INSERT INTO `t_user_role` VALUES (1099, 530, 2);
INSERT INTO `t_user_role` VALUES (1103, 559, 3);

SET FOREIGN_KEY_CHECKS = 1;
