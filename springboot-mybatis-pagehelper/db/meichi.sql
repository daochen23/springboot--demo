/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : localhost:3306
 Source Schema         : meichi

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 26/03/2021 14:30:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for arts
-- ----------------------------
DROP TABLE IF EXISTS `arts`;
CREATE TABLE `arts`  (
  `arts_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工艺表ID',
  `arts_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工艺名称',
  PRIMARY KEY (`arts_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '工艺表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of arts
-- ----------------------------
INSERT INTO `arts` VALUES ('1367729272361398274', '鼓式前桥');
INSERT INTO `arts` VALUES ('1367729308801511425', '鼓式后桥');
INSERT INTO `arts` VALUES ('1367729346621550594', '盘式后桥');
INSERT INTO `arts` VALUES ('1367729372320051202', '盘式前桥');

-- ----------------------------
-- Table structure for inbound_log
-- ----------------------------
DROP TABLE IF EXISTS `inbound_log`;
CREATE TABLE `inbound_log`  (
  `inbound_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '入库记录ID',
  `shelf_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '货架名称',
  `point_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '点位名称',
  `product_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '物料ID',
  `bind_time` date NULL DEFAULT NULL COMMENT '绑定时间',
  PRIMARY KEY (`inbound_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of inbound_log
-- ----------------------------
INSERT INTO `inbound_log` VALUES ('1369200509298274306', '6', '2715', '1367729920930820098', '2021-03-09');
INSERT INTO `inbound_log` VALUES ('1369200740651888642', '16', '2713', '1367729716353642497', '2021-03-09');
INSERT INTO `inbound_log` VALUES ('1369212925159460865', '16', '2713', '1367729839095754753', '2021-03-09');
INSERT INTO `inbound_log` VALUES ('1369214563207139329', '5', '2714', '1367729745273368577', '2021-03-09');
INSERT INTO `inbound_log` VALUES ('1369239699805265922', '16', '2713', '1367729856057520130', '2021-03-09');
INSERT INTO `inbound_log` VALUES ('1369245340657639425', '999', '2714', '1367729905189597185', '2021-03-09');
INSERT INTO `inbound_log` VALUES ('1369246110878543874', '16', '2713', '1367729973347037185', '2021-03-09');
INSERT INTO `inbound_log` VALUES ('1369248379485302786', '999', '2714', '1367729905189597185', '2021-03-09');
INSERT INTO `inbound_log` VALUES ('1369249026821599234', '5', '2713', '1367729973347037185', '2021-03-09');
INSERT INTO `inbound_log` VALUES ('1369284685196230657', '16', '2713', '1367729973347037185', '2021-03-09');
INSERT INTO `inbound_log` VALUES ('1369285787622899714', '999', '2714', '1367729973347037185', '2021-03-09');
INSERT INTO `inbound_log` VALUES ('1369299577861099522', '5', '2713', '1367729973347037185', '2021-03-09');

-- ----------------------------
-- Table structure for outbound_log
-- ----------------------------
DROP TABLE IF EXISTS `outbound_log`;
CREATE TABLE `outbound_log`  (
  `outbound_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '出库ID',
  `shelf_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '货架名称',
  `start_point` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '起始点位',
  `product_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '物料ID',
  `out_time` date NOT NULL COMMENT '出库时间',
  `target_point` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '目标点位',
  `outbound_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'New -> 新建任务 Executing -> 正在执行 Finished -> 已经完成',
  `agv_taskId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '高级搬运任务ID',
  PRIMARY KEY (`outbound_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '出库表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of outbound_log
-- ----------------------------
INSERT INTO `outbound_log` VALUES ('1369205356982452225', '16', '2713', '1367729716353642497', '2021-03-09', '2271', 'Finished', NULL);
INSERT INTO `outbound_log` VALUES ('1369205707441717249', '16', '2271', '1367729716353642497', '2021-03-09', '2713', 'Finished', NULL);
INSERT INTO `outbound_log` VALUES ('1369207078639423489', '6', '2715', '1367729920930820098', '2021-03-09', '2121', 'Finished', NULL);
INSERT INTO `outbound_log` VALUES ('1369207715292827649', '6', '2121', '1367729920930820098', '2021-03-09', '2715', 'Finished', NULL);
INSERT INTO `outbound_log` VALUES ('1369213020789592066', '16', '2713', '1367729839095754753', '2021-03-09', '2271', 'Finished', NULL);
INSERT INTO `outbound_log` VALUES ('1369244766675525633', '5', '2714', '1367729745273368577', '2021-03-09', '2221', 'Finished', NULL);
INSERT INTO `outbound_log` VALUES ('1369248008784326658', '16', '2714', '1367729973347037185', '2021-03-09', '2271', 'Finished', NULL);
INSERT INTO `outbound_log` VALUES ('1369301145809375234', '16', '2271', '释放货架', '2021-03-09', '2713', 'Finished', NULL);
INSERT INTO `outbound_log` VALUES ('1369303866977316866', '5', '2713', '1367729973347037185', '2021-03-09', '2221', 'Finished', NULL);

-- ----------------------------
-- Table structure for point
-- ----------------------------
DROP TABLE IF EXISTS `point`;
CREATE TABLE `point`  (
  `point_id` varchar(765) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '点位ID',
  `point_name` int(11) NOT NULL COMMENT '点位名称',
  `point_type` varchar(765) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '点位类型',
  `point_status` int(11) NOT NULL COMMENT '0 -> 未锁格 1 -> 锁格',
  `rotateCellIds_call` varchar(765) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '叫料旋转点',
  `rotateCellIds_relese` varchar(765) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '释放旋转点',
  `directiions_call` varchar(765) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '叫料方向',
  `directiions_relese` varchar(765) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '释放方向',
  PRIMARY KEY (`point_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of point
-- ----------------------------
INSERT INTO `point` VALUES ('1', 2713, '1-F-b', 1, '2120', '2620', '1', '1');
INSERT INTO `point` VALUES ('10', 2733, '2-F-b', 1, '2129', '2629', '3', '3');
INSERT INTO `point` VALUES ('11', 2734, '2-F-a', 1, '2629', '2629', '3', '0');
INSERT INTO `point` VALUES ('12', 2735, '2-F-a', 1, '2629', '2629', '3', '0');
INSERT INTO `point` VALUES ('13', 2736, '2-F-e', 1, '2629', '2629', '3', '0');
INSERT INTO `point` VALUES ('14', 2737, '2-F-e', 1, '2629', '2629', '3', '0');
INSERT INTO `point` VALUES ('15', 2738, '2-F-f', 1, '2629', '2629', '3', '0');
INSERT INTO `point` VALUES ('16', 2739, '2-F-f', 1, '2629', '2629', '3', '0');
INSERT INTO `point` VALUES ('17', 1781, '1-F-d', 1, '1680', '1680', '1', '1');
INSERT INTO `point` VALUES ('18', 1731, '2-F-d', 1, '1680', '1680', '3', '1');
INSERT INTO `point` VALUES ('19', 1581, '1-F-bc', 1, '1429', '1429', '1', '1');
INSERT INTO `point` VALUES ('2', 2711, '1-F-b', 0, '2120', '2620', '1', '1');
INSERT INTO `point` VALUES ('20', 1531, '2-F-bc', 1, '1429', '1429', '3', '1');
INSERT INTO `point` VALUES ('21', 1831, '1-F-d', 1, '1680', '1680', '1', '1');
INSERT INTO `point` VALUES ('22', 1732, '2-F-d', 1, '1680', '1680', '3', '1');
INSERT INTO `point` VALUES ('23', 1582, '1-F-bc', 1, '1429', '1429', '1', '1');
INSERT INTO `point` VALUES ('24', 1532, '2-F-bc', 1, '1429', '1429', '3', '1');
INSERT INTO `point` VALUES ('25', 2271, '1-F-a', 0, NULL, NULL, NULL, NULL);
INSERT INTO `point` VALUES ('27', 2121, '1-F-b', 0, NULL, NULL, NULL, NULL);
INSERT INTO `point` VALUES ('28', 2071, '1-F-b', 0, NULL, NULL, NULL, NULL);
INSERT INTO `point` VALUES ('29', 2021, '1-F-bc', 0, NULL, NULL, NULL, NULL);
INSERT INTO `point` VALUES ('3', 2715, '1-F-a', 1, '2620', '2620', '1', '0');
INSERT INTO `point` VALUES ('30', 1971, '1-F-bc', 0, NULL, NULL, NULL, NULL);
INSERT INTO `point` VALUES ('31', 1871, '1-F-d', 0, NULL, NULL, NULL, NULL);
INSERT INTO `point` VALUES ('32', 1821, '1-F-d', 0, NULL, NULL, NULL, NULL);
INSERT INTO `point` VALUES ('33', 1771, '1-F-e', 0, NULL, NULL, NULL, NULL);
INSERT INTO `point` VALUES ('34', 1721, '1-F-e', 0, NULL, NULL, NULL, NULL);
INSERT INTO `point` VALUES ('35', 1621, '1-F-f', 0, NULL, NULL, NULL, NULL);
INSERT INTO `point` VALUES ('36', 1571, '1-F-f', 0, NULL, NULL, NULL, NULL);
INSERT INTO `point` VALUES ('37', 2327, '2-F-a', 0, '2629', '2629', '1', '0');
INSERT INTO `point` VALUES ('38', 2277, '2-F-a', 0, '', NULL, NULL, NULL);
INSERT INTO `point` VALUES ('39', 2127, '2-F-b', 0, NULL, NULL, NULL, NULL);
INSERT INTO `point` VALUES ('4', 2716, '1-F-a', 1, '2620', '2620', '1', '0');
INSERT INTO `point` VALUES ('40', 2077, '2-F-b', 0, NULL, NULL, NULL, NULL);
INSERT INTO `point` VALUES ('41', 2027, '2-F-bc', 0, NULL, NULL, NULL, NULL);
INSERT INTO `point` VALUES ('42', 1977, '2-F-bc', 0, NULL, NULL, NULL, NULL);
INSERT INTO `point` VALUES ('43', 1827, '2-F-d', 0, NULL, NULL, NULL, NULL);
INSERT INTO `point` VALUES ('44', 1777, '2-F-d', 0, NULL, NULL, NULL, NULL);
INSERT INTO `point` VALUES ('45', 1727, '2-F-e', 0, NULL, NULL, NULL, NULL);
INSERT INTO `point` VALUES ('46', 1677, '2-F-e', 0, NULL, NULL, NULL, NULL);
INSERT INTO `point` VALUES ('47', 1577, '2-F-f', 0, NULL, NULL, NULL, NULL);
INSERT INTO `point` VALUES ('48', 1527, '2-F-f', 0, NULL, NULL, NULL, NULL);
INSERT INTO `point` VALUES ('49', 1281, '1-F-bc', 0, '2629', '2629', '1', '1');
INSERT INTO `point` VALUES ('5', 2719, '1-F-e', 1, '2620', '2620', '1', '0');
INSERT INTO `point` VALUES ('50', 2221, '1-F-a', 1, NULL, NULL, NULL, NULL);
INSERT INTO `point` VALUES ('51', 1331, '1-F-bc', 0, '2629', '2629', '1', '1');
INSERT INTO `point` VALUES ('52', 1381, '1-F-bc', 0, '2629', '2629', '1', '1');
INSERT INTO `point` VALUES ('53', 1231, '1-F-d', 0, '2629', '2629', '1', '1');
INSERT INTO `point` VALUES ('54', 1181, '1-F-d', 0, '2629', '2629', '1', '1');
INSERT INTO `point` VALUES ('55', 1131, '1-F-d', 0, '2629', '2629', '1', '1');
INSERT INTO `point` VALUES ('56', 1282, '2-F-bc', 0, '1433', '1433', '3', '1');
INSERT INTO `point` VALUES ('57', 1332, '2-F-bc', 0, '1433', '1433', '3', '1');
INSERT INTO `point` VALUES ('58', 1382, '2-F-bc', 0, '1433', '1433', '1', '1');
INSERT INTO `point` VALUES ('59', 1132, '2-F-d', 0, '1433', '1433', '3', '1');
INSERT INTO `point` VALUES ('6', 2720, '1-F-e', 1, '2620', '2620', '1', '0');
INSERT INTO `point` VALUES ('60', 1182, '2-F-d', 0, '1433', '1433', '3', '1');
INSERT INTO `point` VALUES ('61', 1232, '2-F-d', 0, '1433', '1433', '3', '1');
INSERT INTO `point` VALUES ('62', 2133, '1-F-a', 0, '2629', '2629', '3', '0');
INSERT INTO `point` VALUES ('63', 2183, '1-F-b', 0, '2629', '2629', '3', '3');
INSERT INTO `point` VALUES ('64', 2233, '1-F-e', 0, '2629', '2629', '3', '0');
INSERT INTO `point` VALUES ('65', 2283, '1-F-f', 0, '2629', '2629', '3', '0');
INSERT INTO `point` VALUES ('66', 2135, '2-F-a', 0, '2629', '2629', '3', '0');
INSERT INTO `point` VALUES ('67', 2185, '2-F-b', 0, '2629', '2629', '3', '3');
INSERT INTO `point` VALUES ('68', 2235, '2-F-e', 0, '2629', '2629', '3', '0');
INSERT INTO `point` VALUES ('69', 2285, '2-F-f', 0, '2629', '2629', '3', '0');
INSERT INTO `point` VALUES ('7', 2721, '1-F-f', 1, '2620', '2620', '1', '0');
INSERT INTO `point` VALUES ('70', 2132, 'error', 0, NULL, NULL, NULL, NULL);
INSERT INTO `point` VALUES ('71', 2182, 'error', 0, NULL, NULL, NULL, NULL);
INSERT INTO `point` VALUES ('72', 2232, 'error', 0, NULL, NULL, NULL, NULL);
INSERT INTO `point` VALUES ('73', 2282, 'error', 0, NULL, NULL, NULL, NULL);
INSERT INTO `point` VALUES ('8', 2722, '1-F-f', 1, '2620', '2620', '1', '0');
INSERT INTO `point` VALUES ('9', 2732, '2-F-b', 1, '2129', '2629', '3', '3');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `product_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '物料ID',
  `product_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '物料名称',
  `arts_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工艺ID',
  PRIMARY KEY (`product_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '物料表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1367729716353642497', '111', '1367729272361398274');
INSERT INTO `product` VALUES ('1367729745273368577', '222', '1367729272361398274');
INSERT INTO `product` VALUES ('1367729839095754753', '333', '1367729308801511425');
INSERT INTO `product` VALUES ('1367729856057520130', '444', '1367729308801511425');
INSERT INTO `product` VALUES ('1367729905189597185', '555', '1367729346621550594');
INSERT INTO `product` VALUES ('1367729920930820098', '666', '1367729346621550594');
INSERT INTO `product` VALUES ('1367729959505833986', '777', '1367729372320051202');
INSERT INTO `product` VALUES ('1367729973347037185', '888', '1367729372320051202');

-- ----------------------------
-- Table structure for shelf
-- ----------------------------
DROP TABLE IF EXISTS `shelf`;
CREATE TABLE `shelf`  (
  `shelf_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '货架ID',
  `shelf_name` int(11) NOT NULL COMMENT '货架名称',
  `shelf_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '货架类型',
  `shelf_status` int(11) NOT NULL DEFAULT 0 COMMENT '0->未被占用 1->被占用',
  `point_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '点位名称',
  `b_start_point` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '如果货架是b点记录一下起始点位',
  PRIMARY KEY (`shelf_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '货架表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shelf
-- ----------------------------
INSERT INTO `shelf` VALUES ('123123123', 13, 'SHELF_EMPTY', 0, '2737', NULL);
INSERT INTO `shelf` VALUES ('123124235', 16, 'SHELF_EMPTY', 0, '2713', NULL);
INSERT INTO `shelf` VALUES ('1241234325', 17, 'SHELF_EMPTY', 0, '1831', NULL);
INSERT INTO `shelf` VALUES ('124124', 6, 'SHELF_FULL', 0, '2715', NULL);
INSERT INTO `shelf` VALUES ('12423523', 20, 'SHELF_EMPTY', 0, '1732', NULL);
INSERT INTO `shelf` VALUES ('14235423', 21, 'SHELF_EMPTY', 0, '1531', NULL);
INSERT INTO `shelf` VALUES ('231234124', 2, 'SHELF_EMPTY', 0, '2720', NULL);
INSERT INTO `shelf` VALUES ('23432', 999, 'SHELF_FULL', 0, '2714', NULL);
INSERT INTO `shelf` VALUES ('2343252', 15, 'SHELF_EMPTY', 0, '2739', NULL);
INSERT INTO `shelf` VALUES ('23534653', 22, 'SHELF_EMPTY', 0, '1532', NULL);
INSERT INTO `shelf` VALUES ('3121', 4, 'SHELF_EMPTY', 0, '2722', NULL);
INSERT INTO `shelf` VALUES ('3242352', 23, 'SHELF_EMPTY', 0, '1581', NULL);
INSERT INTO `shelf` VALUES ('41234123', 3, 'SHELF_EMPTY', 0, '2721', NULL);
INSERT INTO `shelf` VALUES ('4124124', 5, 'SHELF_FULL', 0, '2221', NULL);
INSERT INTO `shelf` VALUES ('43252345', 10, 'SHELF_EMPTY', 0, '2734', NULL);
INSERT INTO `shelf` VALUES ('452342354', 8, 'SHELF_EMPTY', 0, '2732', NULL);
INSERT INTO `shelf` VALUES ('462345625', 14, 'SHELF_EMPTY', 0, '2738', NULL);
INSERT INTO `shelf` VALUES ('471982379847', 1, 'SHELF_EMPTY', 0, '2719', NULL);
INSERT INTO `shelf` VALUES ('4756457', 12, 'SHELF_EMPTY', 0, '2736', NULL);
INSERT INTO `shelf` VALUES ('523523412345', 24, 'SHELF_EMPTY', 0, '1582', NULL);
INSERT INTO `shelf` VALUES ('5235235', 7, 'SHELF_EMPTY', 0, '2716', NULL);
INSERT INTO `shelf` VALUES ('53425435', 9, 'SHELF_EMPTY', 0, '2733', NULL);
INSERT INTO `shelf` VALUES ('542352352', 11, 'SHELF_EMPTY', 0, '2735', NULL);
INSERT INTO `shelf` VALUES ('5675674', 19, 'SHELF_EMPTY', 0, '1731', NULL);
INSERT INTO `shelf` VALUES ('6345634', 18, 'SHELF_EMPTY', 0, '1781', NULL);

-- ----------------------------
-- Table structure for shelf_product
-- ----------------------------
DROP TABLE IF EXISTS `shelf_product`;
CREATE TABLE `shelf_product`  (
  `shelf_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '货架名称',
  `product_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '物料id',
  `point_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地址码'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '货架和物料中间表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shelf_product
-- ----------------------------
INSERT INTO `shelf_product` VALUES ('6', '1367729920930820098', '1531');
INSERT INTO `shelf_product` VALUES ('16', '1367729973347037185', '2713');
INSERT INTO `shelf_product` VALUES ('5', '1367729973347037185', '2221');

SET FOREIGN_KEY_CHECKS = 1;