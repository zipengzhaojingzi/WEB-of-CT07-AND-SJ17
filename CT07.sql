/*
Navicat MySQL Data Transfer

Source Server         : 实训数据库
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : ruoyi

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2024-11-07 22:05:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ct07
-- ----------------------------
DROP TABLE IF EXISTS `ct07`;
CREATE TABLE `ct07` (
  `id` int(64) NOT NULL AUTO_INCREMENT,
  `jcdwmc` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '检测单位名称',
  `jlbh` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '记录编号',
  `gcmc` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '工程名称',
  `htd` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '合同段',
  `sgdw` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '施工单位',
  `jldw` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '监理单位',
  `gcbwyt` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '工程部位/用途',
  `ypxx` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '样品信息',
  `syjcrq` date DEFAULT NULL COMMENT '试验检测日期',
  `wd` float(64,0) DEFAULT NULL COMMENT '温度(℃）',
  `xdsd` float(64,0) DEFAULT NULL COMMENT '相对湿度（%）',
  `jcyj` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '检测依据',
  `pdyj` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '判定依据',
  `zyyqsbmcjbh` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '主要仪器设备名称及编号',
  `qydd` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '取样地点',
  `qysd` float(64,0) DEFAULT NULL COMMENT '取样深度',
  `qyrq` date DEFAULT NULL COMMENT '取样日期',
  `zdgmd` float(64,0) DEFAULT NULL COMMENT '最大干密度（g/cm³）',
  `zjhsl` float(64,3) DEFAULT NULL COMMENT '最佳含水率（%）',
  `mcjs` varchar(64) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '每层击数',
  `grgmjA` float(64,0) DEFAULT NULL COMMENT '贯入杆面积A（c㎡）',
  `a` float(64,0) DEFAULT NULL COMMENT '测力环回归方程y=ax+b，a(N/0.01mm）',
  `b` float(64,0) DEFAULT NULL COMMENT '测力环回归方程y=ax+b，b（N）',
  `clhjzxs` float(64,0) DEFAULT NULL COMMENT '测力环校正系数（N/0.01mm）',
  `th1` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '筒号',
  `th2` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `th3` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `min` int(64) DEFAULT NULL,
  `max` int(64) DEFAULT NULL,
  `time` datetime DEFAULT NULL COMMENT '时间',
  `position` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '地点（经纬度）',
  `userid` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '采集人员编号',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ct07
-- ----------------------------
INSERT INTO `ct07` VALUES ('111', '1', '1', '1', '1', '1', '1', '1', '1', '2024-11-08', '1', '1', '1', '1', '1', '1', '1', '2024-11-08', '1', '40.100', '50', '5', '1', '2', '10', '1', '2', '3', null, null, null, null, null);
INSERT INTO `ct07` VALUES ('112', '3', '3', '3', '3', '3', '3', '3', '3', '2024-11-10', '33', '50', '3', '3', '3', '3', '3', '2024-11-10', '3', '61.000', '50', '10', '6', '9', '20', '4', '5', '6', null, null, null, null, null);
INSERT INTO `ct07` VALUES ('108', '2', '2', '2', '2', '2', '2', '2', '2', '2024-11-07', '2', '2', '2', '2', '2', '2', '2', '2024-11-07', '2', '2.000', '50', '5', '2', '4', '10', 'x', 'y', 'z', null, null, null, null, null);

-- ----------------------------
-- Table structure for ct07_1
-- ----------------------------
DROP TABLE IF EXISTS `ct07_1`;
CREATE TABLE `ct07_1` (
  `th1` varchar(64) DEFAULT NULL,
  `clhbfbds1` float(64,0) DEFAULT NULL,
  `dwyl1` int(64) DEFAULT NULL,
  `z1` int(64) DEFAULT NULL,
  `y1` int(64) DEFAULT NULL,
  `pjz1` int(64) DEFAULT NULL,
  `grl1` float(64,4) DEFAULT NULL,
  `id` int(64) NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ct07_1
-- ----------------------------
INSERT INTO `ct07_1` VALUES ('z', '12', '240', '12', '12', '12', '0.1200', '108');
INSERT INTO `ct07_1` VALUES ('z', '11', '220', '11', '11', '11', '0.1100', '108');
INSERT INTO `ct07_1` VALUES ('z', '10', '200', '10', '10', '10', '0.1000', '108');
INSERT INTO `ct07_1` VALUES ('z', '9', '180', '9', '9', '9', '0.0900', '108');
INSERT INTO `ct07_1` VALUES ('z', '8', '160', '8', '8', '8', '0.0800', '108');
INSERT INTO `ct07_1` VALUES ('z', '7', '140', '7', '7', '7', '0.0700', '108');
INSERT INTO `ct07_1` VALUES ('z', '6', '120', '6', '6', '6', '0.0600', '108');
INSERT INTO `ct07_1` VALUES ('z', '5', '100', '5', '5', '5', '0.0500', '108');
INSERT INTO `ct07_1` VALUES ('z', '4', '80', '4', '4', '4', '0.0400', '108');
INSERT INTO `ct07_1` VALUES ('z', '3', '60', '3', '3', '3', '0.0300', '108');
INSERT INTO `ct07_1` VALUES ('z', '2', '40', '2', '2', '2', '0.0200', '108');
INSERT INTO `ct07_1` VALUES ('z', '1', '20', '1', '1', '1', '0.0100', '108');
INSERT INTO `ct07_1` VALUES ('y', '12', '240', '12', '12', '12', '0.1200', '108');
INSERT INTO `ct07_1` VALUES ('y', '11', '220', '11', '11', '11', '0.1100', '108');
INSERT INTO `ct07_1` VALUES ('y', '10', '200', '10', '10', '10', '0.1000', '108');
INSERT INTO `ct07_1` VALUES ('y', '9', '180', '9', '9', '9', '0.0900', '108');
INSERT INTO `ct07_1` VALUES ('y', '8', '160', '8', '8', '8', '0.0800', '108');
INSERT INTO `ct07_1` VALUES ('y', '7', '140', '7', '7', '7', '0.0700', '108');
INSERT INTO `ct07_1` VALUES ('y', '6', '120', '6', '6', '6', '0.0600', '108');
INSERT INTO `ct07_1` VALUES ('y', '5', '100', '5', '5', '5', '0.0500', '108');
INSERT INTO `ct07_1` VALUES ('y', '4', '80', '4', '4', '4', '0.0400', '108');
INSERT INTO `ct07_1` VALUES ('y', '3', '60', '3', '3', '3', '0.0300', '108');
INSERT INTO `ct07_1` VALUES ('y', '2', '40', '2', '2', '2', '0.0200', '108');
INSERT INTO `ct07_1` VALUES ('x', '1', '20', '1', '1', '1', '0.0100', '108');
INSERT INTO `ct07_1` VALUES ('x', '2', '40', '2', '2', '2', '0.0200', '108');
INSERT INTO `ct07_1` VALUES ('x', '3', '60', '3', '3', '3', '0.0300', '108');
INSERT INTO `ct07_1` VALUES ('x', '4', '80', '4', '4', '4', '0.0400', '108');
INSERT INTO `ct07_1` VALUES ('x', '5', '100', '5', '5', '5', '0.0500', '108');
INSERT INTO `ct07_1` VALUES ('x', '6', '120', '6', '6', '6', '0.0600', '108');
INSERT INTO `ct07_1` VALUES ('x', '7', '140', '7', '7', '7', '0.0700', '108');
INSERT INTO `ct07_1` VALUES ('x', '8', '160', '8', '8', '8', '0.0800', '108');
INSERT INTO `ct07_1` VALUES ('x', '9', '180', '9', '9', '9', '0.0900', '108');
INSERT INTO `ct07_1` VALUES ('x', '10', '200', '10', '10', '10', '0.1000', '108');
INSERT INTO `ct07_1` VALUES ('x', '11', '220', '11', '11', '11', '0.1100', '108');
INSERT INTO `ct07_1` VALUES ('x', '12', '240', '12', '12', '12', '0.1200', '108');
INSERT INTO `ct07_1` VALUES ('y', '1', '20', '1', '1', '1', '0.0100', '108');
INSERT INTO `ct07_1` VALUES ('6', '266', '5320', '268', '269', '268', '2.6800', '112');
INSERT INTO `ct07_1` VALUES ('6', '267', '5340', '264', '265', '264', '2.6400', '112');
INSERT INTO `ct07_1` VALUES ('6', '261', '5220', '262', '263', '262', '2.6200', '112');
INSERT INTO `ct07_1` VALUES ('6', '255', '5100', '256', '260', '258', '2.5800', '112');
INSERT INTO `ct07_1` VALUES ('6', '253', '5060', '239', '251', '245', '2.4500', '112');
INSERT INTO `ct07_1` VALUES ('6', '240', '4800', '250', '252', '251', '2.5100', '112');
INSERT INTO `ct07_1` VALUES ('6', '234', '4680', '236', '238', '237', '2.3700', '112');
INSERT INTO `ct07_1` VALUES ('6', '233', '4660', '235', '244', '239', '2.3900', '112');
INSERT INTO `ct07_1` VALUES ('6', '985', '19700', '221', '212', '216', '2.1600', '112');
INSERT INTO `ct07_1` VALUES ('6', '209', '4180', '210', '211', '210', '2.1000', '112');
INSERT INTO `ct07_1` VALUES ('6', '206', '4120', '207', '208', '207', '2.0700', '112');
INSERT INTO `ct07_1` VALUES ('6', '205', '4100', '502', '206', '354', '3.5400', '112');
INSERT INTO `ct07_1` VALUES ('5', '201', '4020', '202', '204', '203', '2.0300', '112');
INSERT INTO `ct07_1` VALUES ('5', '109', '2180', '222', '200', '211', '2.1100', '112');
INSERT INTO `ct07_1` VALUES ('5', '106', '2120', '107', '108', '107', '1.0700', '112');
INSERT INTO `ct07_1` VALUES ('5', '103', '2060', '104', '105', '104', '1.0400', '112');
INSERT INTO `ct07_1` VALUES ('5', '100', '2000', '101', '102', '101', '1.0100', '112');
INSERT INTO `ct07_1` VALUES ('5', '96', '1920', '97', '98', '97', '0.9700', '112');
INSERT INTO `ct07_1` VALUES ('5', '93', '1860', '94', '95', '94', '0.9400', '112');
INSERT INTO `ct07_1` VALUES ('5', '90', '1800', '91', '92', '91', '0.9100', '112');
INSERT INTO `ct07_1` VALUES ('5', '86', '1720', '87', '89', '88', '0.8800', '112');
INSERT INTO `ct07_1` VALUES ('5', '83', '1660', '84', '85', '84', '0.8400', '112');
INSERT INTO `ct07_1` VALUES ('5', '80', '1600', '81', '82', '81', '0.8100', '112');
INSERT INTO `ct07_1` VALUES ('5', '76', '1520', '78', '79', '78', '0.7800', '112');
INSERT INTO `ct07_1` VALUES ('4', '73', '1460', '74', '75', '74', '0.7400', '112');
INSERT INTO `ct07_1` VALUES ('4', '70', '1400', '71', '72', '71', '0.7100', '112');
INSERT INTO `ct07_1` VALUES ('4', '67', '1340', '68', '69', '68', '0.6800', '112');
INSERT INTO `ct07_1` VALUES ('4', '63', '1260', '64', '65', '64', '0.6400', '112');
INSERT INTO `ct07_1` VALUES ('4', '60', '1200', '61', '62', '61', '0.6100', '112');
INSERT INTO `ct07_1` VALUES ('4', '57', '1140', '58', '59', '58', '0.5800', '112');
INSERT INTO `ct07_1` VALUES ('4', '53', '1060', '54', '56', '55', '0.5500', '112');
INSERT INTO `ct07_1` VALUES ('4', '50', '1000', '51', '52', '51', '0.5100', '112');
INSERT INTO `ct07_1` VALUES ('4', '47', '940', '48', '49', '48', '0.4800', '112');
INSERT INTO `ct07_1` VALUES ('4', '43', '860', '45', '46', '45', '0.4500', '112');
INSERT INTO `ct07_1` VALUES ('4', '40', '800', '41', '42', '41', '0.4100', '112');
INSERT INTO `ct07_1` VALUES ('4', '37', '740', '38', '39', '38', '0.3800', '112');
INSERT INTO `ct07_1` VALUES ('3', '36', '720', '36', '36', '36', '0.3600', '111');
INSERT INTO `ct07_1` VALUES ('3', '35', '700', '35', '35', '35', '0.3500', '111');
INSERT INTO `ct07_1` VALUES ('3', '34', '680', '34', '34', '34', '0.3400', '111');
INSERT INTO `ct07_1` VALUES ('3', '99', '1980', '99', '99', '99', '0.9900', '111');
INSERT INTO `ct07_1` VALUES ('3', '88', '1760', '88', '88', '88', '0.8800', '111');
INSERT INTO `ct07_1` VALUES ('3', '77', '1540', '77', '77', '77', '0.7700', '111');
INSERT INTO `ct07_1` VALUES ('3', '66', '1320', '66', '66', '66', '0.6600', '111');
INSERT INTO `ct07_1` VALUES ('3', '55', '1100', '55', '55', '55', '0.5500', '111');
INSERT INTO `ct07_1` VALUES ('3', '44', '880', '44', '44', '44', '0.4400', '111');
INSERT INTO `ct07_1` VALUES ('3', '33', '660', '33', '33', '33', '0.3300', '111');
INSERT INTO `ct07_1` VALUES ('3', '32', '640', '32', '32', '32', '0.3200', '111');
INSERT INTO `ct07_1` VALUES ('3', '31', '620', '31', '31', '31', '0.3100', '111');
INSERT INTO `ct07_1` VALUES ('2', '24', '480', '24', '24', '24', '0.2400', '111');
INSERT INTO `ct07_1` VALUES ('2', '23', '460', '23', '23', '23', '0.2300', '111');
INSERT INTO `ct07_1` VALUES ('2', '22', '440', '22', '22', '22', '0.2200', '111');
INSERT INTO `ct07_1` VALUES ('2', '21', '420', '21', '21', '21', '0.2100', '111');
INSERT INTO `ct07_1` VALUES ('2', '20', '400', '20', '20', '20', '0.2000', '111');
INSERT INTO `ct07_1` VALUES ('2', '19', '380', '19', '19', '19', '0.1900', '111');
INSERT INTO `ct07_1` VALUES ('2', '18', '360', '18', '18', '18', '0.1800', '111');
INSERT INTO `ct07_1` VALUES ('2', '17', '340', '17', '17', '17', '0.1700', '111');
INSERT INTO `ct07_1` VALUES ('2', '16', '320', '16', '16', '16', '0.1600', '111');
INSERT INTO `ct07_1` VALUES ('2', '15', '300', '15', '15', '15', '0.1500', '111');
INSERT INTO `ct07_1` VALUES ('2', '14', '280', '14', '14', '14', '0.1400', '111');
INSERT INTO `ct07_1` VALUES ('2', '13', '260', '13', '13', '13', '0.1300', '111');
INSERT INTO `ct07_1` VALUES ('1', '132', '2640', '132', '132', '132', '1.3200', '111');
INSERT INTO `ct07_1` VALUES ('1', '123', '2460', '123', '123', '123', '1.2300', '111');
INSERT INTO `ct07_1` VALUES ('1', '110', '2200', '110', '110', '110', '1.1000', '111');
INSERT INTO `ct07_1` VALUES ('1', '119', '2380', '119', '119', '119', '1.1900', '111');
INSERT INTO `ct07_1` VALUES ('1', '118', '2360', '118', '118', '118', '1.1800', '111');
INSERT INTO `ct07_1` VALUES ('1', '117', '2340', '117', '117', '117', '1.1700', '111');
INSERT INTO `ct07_1` VALUES ('1', '116', '2320', '116', '116', '116', '1.1600', '111');
INSERT INTO `ct07_1` VALUES ('1', '115', '2300', '115', '115', '115', '1.1500', '111');
INSERT INTO `ct07_1` VALUES ('1', '114', '2280', '114', '114', '114', '1.1400', '111');
INSERT INTO `ct07_1` VALUES ('1', '113', '2260', '113', '113', '113', '1.1300', '111');
INSERT INTO `ct07_1` VALUES ('1', '112', '2240', '112', '112', '112', '1.1200', '111');
INSERT INTO `ct07_1` VALUES ('1', '111', '2220', '111', '111', '111', '1.1100', '111');

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `tpl_web_type` varchar(30) DEFAULT '' COMMENT '前端模板类型（element-ui模版 element-plus模版）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint(20) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', 'admin', '123', '123', '123');
INSERT INTO `student` VALUES ('5', '123', null, '123', '123');
INSERT INTO `student` VALUES ('6', '123', '123', '123', '123');
INSERT INTO `student` VALUES ('7', '123', '123', '123', '123');
INSERT INTO `student` VALUES ('8', '123', '123', '12312', '31');
INSERT INTO `student` VALUES ('9', '123', '1231', '231', '123');
INSERT INTO `student` VALUES ('10', '123', '123', '1231', '23');
INSERT INTO `student` VALUES ('11', '123', '123', '123', '123');
INSERT INTO `student` VALUES ('12', '123', '123', '123', '123');
INSERT INTO `student` VALUES ('13', '123', '123', '123', '123');
INSERT INTO `student` VALUES ('14', '123', '123', '123', '123');
INSERT INTO `student` VALUES ('15', '123', '123', '1', '13312123333');
INSERT INTO `student` VALUES ('16', '222', '22', '1', '13312331233');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2024-10-14 13:05:22', '', null, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES ('2', '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2024-10-14 13:05:22', '', null, '初始化密码 123456');
INSERT INTO `sys_config` VALUES ('3', '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2024-10-14 13:05:22', '', null, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES ('4', '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2024-10-14 13:05:22', '', null, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES ('5', '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2024-10-14 13:05:22', '', null, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES ('6', '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2024-10-14 13:05:22', '', null, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(11) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('100', '0', '0', '若依科技', '0', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-10-14 13:05:21', '', null);
INSERT INTO `sys_dept` VALUES ('101', '100', '0,100', '深圳总公司', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-10-14 13:05:21', '', null);
INSERT INTO `sys_dept` VALUES ('102', '100', '0,100', '长沙分公司', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-10-14 13:05:21', '', null);
INSERT INTO `sys_dept` VALUES ('103', '101', '0,100,101', '研发部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-10-14 13:05:21', '', null);
INSERT INTO `sys_dept` VALUES ('104', '101', '0,100,101', '市场部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-10-14 13:05:21', '', null);
INSERT INTO `sys_dept` VALUES ('105', '101', '0,100,101', '测试部门', '3', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-10-14 13:05:21', '', null);
INSERT INTO `sys_dept` VALUES ('106', '101', '0,100,101', '财务部门', '4', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-10-14 13:05:21', '', null);
INSERT INTO `sys_dept` VALUES ('107', '101', '0,100,101', '运维部门', '5', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-10-14 13:05:21', '', null);
INSERT INTO `sys_dept` VALUES ('108', '102', '0,100,102', '市场部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-10-14 13:05:21', '', null);
INSERT INTO `sys_dept` VALUES ('109', '102', '0,100,102', '财务部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-10-14 13:05:21', '', null);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(11) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES ('1', '1', '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2024-10-14 13:05:22', '', null, '性别男');
INSERT INTO `sys_dict_data` VALUES ('2', '2', '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-10-14 13:05:22', '', null, '性别女');
INSERT INTO `sys_dict_data` VALUES ('3', '3', '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-10-14 13:05:22', '', null, '性别未知');
INSERT INTO `sys_dict_data` VALUES ('4', '1', '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2024-10-14 13:05:22', '', null, '显示菜单');
INSERT INTO `sys_dict_data` VALUES ('5', '2', '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2024-10-14 13:05:22', '', null, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES ('6', '1', '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2024-10-14 13:05:22', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('7', '2', '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2024-10-14 13:05:22', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('8', '1', '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2024-10-14 13:05:22', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('9', '2', '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2024-10-14 13:05:22', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('10', '1', '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2024-10-14 13:05:22', '', null, '默认分组');
INSERT INTO `sys_dict_data` VALUES ('11', '2', '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2024-10-14 13:05:22', '', null, '系统分组');
INSERT INTO `sys_dict_data` VALUES ('12', '1', '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2024-10-14 13:05:22', '', null, '系统默认是');
INSERT INTO `sys_dict_data` VALUES ('13', '2', '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2024-10-14 13:05:22', '', null, '系统默认否');
INSERT INTO `sys_dict_data` VALUES ('14', '1', '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2024-10-14 13:05:22', '', null, '通知');
INSERT INTO `sys_dict_data` VALUES ('15', '2', '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2024-10-14 13:05:22', '', null, '公告');
INSERT INTO `sys_dict_data` VALUES ('16', '1', '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2024-10-14 13:05:22', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('17', '2', '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2024-10-14 13:05:22', '', null, '关闭状态');
INSERT INTO `sys_dict_data` VALUES ('18', '99', '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-10-14 13:05:22', '', null, '其他操作');
INSERT INTO `sys_dict_data` VALUES ('19', '1', '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-10-14 13:05:22', '', null, '新增操作');
INSERT INTO `sys_dict_data` VALUES ('20', '2', '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-10-14 13:05:22', '', null, '修改操作');
INSERT INTO `sys_dict_data` VALUES ('21', '3', '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-10-14 13:05:22', '', null, '删除操作');
INSERT INTO `sys_dict_data` VALUES ('22', '4', '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2024-10-14 13:05:22', '', null, '授权操作');
INSERT INTO `sys_dict_data` VALUES ('23', '5', '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-10-14 13:05:22', '', null, '导出操作');
INSERT INTO `sys_dict_data` VALUES ('24', '6', '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-10-14 13:05:22', '', null, '导入操作');
INSERT INTO `sys_dict_data` VALUES ('25', '7', '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-10-14 13:05:22', '', null, '强退操作');
INSERT INTO `sys_dict_data` VALUES ('26', '8', '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-10-14 13:05:22', '', null, '生成操作');
INSERT INTO `sys_dict_data` VALUES ('27', '9', '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-10-14 13:05:22', '', null, '清空操作');
INSERT INTO `sys_dict_data` VALUES ('28', '1', '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2024-10-14 13:05:22', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('29', '2', '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2024-10-14 13:05:22', '', null, '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE KEY `dict_type` (`dict_type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES ('1', '用户性别', 'sys_user_sex', '0', 'admin', '2024-10-14 13:05:22', '', null, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES ('2', '菜单状态', 'sys_show_hide', '0', 'admin', '2024-10-14 13:05:22', '', null, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES ('3', '系统开关', 'sys_normal_disable', '0', 'admin', '2024-10-14 13:05:22', '', null, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES ('4', '任务状态', 'sys_job_status', '0', 'admin', '2024-10-14 13:05:22', '', null, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES ('5', '任务分组', 'sys_job_group', '0', 'admin', '2024-10-14 13:05:22', '', null, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES ('6', '系统是否', 'sys_yes_no', '0', 'admin', '2024-10-14 13:05:22', '', null, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES ('7', '通知类型', 'sys_notice_type', '0', 'admin', '2024-10-14 13:05:22', '', null, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES ('8', '通知状态', 'sys_notice_status', '0', 'admin', '2024-10-14 13:05:22', '', null, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES ('9', '操作类型', 'sys_oper_type', '0', 'admin', '2024-10-14 13:05:22', '', null, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES ('10', '系统状态', 'sys_common_status', '0', 'admin', '2024-10-14 13:05:22', '', null, '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES ('1', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_job` VALUES ('2', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_job` VALUES ('3', '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2024-10-14 13:05:22', '', null, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE,
  KEY `idx_sys_logininfor_s` (`status`) USING BTREE,
  KEY `idx_sys_logininfor_lt` (`login_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(11) DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) DEFAULT NULL COMMENT '路由参数',
  `route_name` varchar(50) DEFAULT '' COMMENT '路由名称',
  `is_frame` int(11) DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int(11) DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5004 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '0', '1', 'system', null, '', '', '1', '0', 'M', '1', '0', '', 'system', 'admin', '2024-10-14 13:05:22', '', null, '系统管理目录');
INSERT INTO `sys_menu` VALUES ('2', '系统监控', '0', '2', 'monitor', null, '', '', '1', '0', 'M', '1', '0', '', 'monitor', 'admin', '2024-10-14 13:05:22', '', null, '系统监控目录');
INSERT INTO `sys_menu` VALUES ('3', '系统工具', '0', '3', 'tool', null, '', '', '1', '0', 'M', '1', '0', '', 'tool', 'admin', '2024-10-14 13:05:22', '', null, '系统工具目录');
INSERT INTO `sys_menu` VALUES ('4', 'API测试', '0', '4', 'test', 'system/test/index', '', '', '1', '0', 'C', '1', '0', '', 'guide', 'admin', '2024-10-14 13:05:22', '', null, 'API测试工具');
INSERT INTO `sys_menu` VALUES ('5', '学生管理', '0', '5', 'system', 'system/student/index', null, '', '1', '0', 'C', '1', '0', null, 'guide', 'admin', '2024-10-14 13:05:22', '', null, '学生管理');
INSERT INTO `sys_menu` VALUES ('6', '土承载比数据管理', '0', '6', 'datasystem', 'datasystem/ct07/index', null, '', '1', '0', 'C', '0', '0', null, 'tool', 'admin', null, '', null, '土承载比数据管理');
INSERT INTO `sys_menu` VALUES ('100', '用户管理', '1', '1', 'user', 'system/user/index', '', '', '1', '0', 'C', '1', '0', 'system:user:list', 'user', 'admin', '2024-10-14 13:05:22', '', null, '用户管理菜单');
INSERT INTO `sys_menu` VALUES ('101', '角色管理', '1', '2', 'role', 'system/role/index', '', '', '1', '0', 'C', '1', '0', 'system:role:list', 'peoples', 'admin', '2024-10-14 13:05:22', '', null, '角色管理菜单');
INSERT INTO `sys_menu` VALUES ('102', '菜单管理', '1', '3', 'menu', 'system/menu/index', '', '', '1', '0', 'C', '1', '0', 'system:menu:list', 'tree-table', 'admin', '2024-10-14 13:05:22', '', null, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES ('103', '部门管理', '1', '4', 'dept', 'system/dept/index', '', '', '1', '0', 'C', '1', '0', 'system:dept:list', 'tree', 'admin', '2024-10-14 13:05:22', '', null, '部门管理菜单');
INSERT INTO `sys_menu` VALUES ('104', '岗位管理', '1', '5', 'post', 'system/post/index', '', '', '1', '0', 'C', '1', '0', 'system:post:list', 'post', 'admin', '2024-10-14 13:05:22', '', null, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES ('105', '字典管理', '1', '6', 'dict', 'system/dict/index', '', '', '1', '0', 'C', '1', '0', 'system:dict:list', 'dict', 'admin', '2024-10-14 13:05:22', '', null, '字典管理菜单');
INSERT INTO `sys_menu` VALUES ('106', '参数设置', '1', '7', 'config', 'system/config/index', '', '', '1', '0', 'C', '1', '0', 'system:config:list', 'edit', 'admin', '2024-10-14 13:05:22', '', null, '参数设置菜单');
INSERT INTO `sys_menu` VALUES ('107', '通知公告', '1', '8', 'notice', 'system/notice/index', '', '', '1', '0', 'C', '1', '0', 'system:notice:list', 'message', 'admin', '2024-10-14 13:05:22', '', null, '通知公告菜单');
INSERT INTO `sys_menu` VALUES ('108', '日志管理', '1', '9', 'log', '', '', '', '1', '0', 'M', '1', '0', '', 'log', 'admin', '2024-10-14 13:05:22', '', null, '日志管理菜单');
INSERT INTO `sys_menu` VALUES ('109', '在线用户', '2', '1', 'online', 'monitor/online/index', '', '', '1', '0', 'C', '1', '0', 'monitor:online:list', 'online', 'admin', '2024-10-14 13:05:22', '', null, '在线用户菜单');
INSERT INTO `sys_menu` VALUES ('110', '定时任务', '2', '2', 'job', 'monitor/job/index', '', '', '1', '0', 'C', '1', '0', 'monitor:job:list', 'job', 'admin', '2024-10-14 13:05:22', '', null, '定时任务菜单');
INSERT INTO `sys_menu` VALUES ('111', '数据监控', '2', '3', 'druid', 'monitor/druid/index', '', '', '1', '0', 'C', '1', '0', 'monitor:druid:list', 'druid', 'admin', '2024-10-14 13:05:22', '', null, '数据监控菜单');
INSERT INTO `sys_menu` VALUES ('112', '服务监控', '2', '4', 'server', 'monitor/server/index', '', '', '1', '0', 'C', '1', '0', 'monitor:server:list', 'server', 'admin', '2024-10-14 13:05:22', '', null, '服务监控菜单');
INSERT INTO `sys_menu` VALUES ('113', '缓存监控', '2', '5', 'cache', 'monitor/cache/index', '', '', '1', '0', 'C', '1', '0', 'monitor:cache:list', 'redis', 'admin', '2024-10-14 13:05:22', '', null, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES ('114', '缓存列表', '2', '6', 'cacheList', 'monitor/cache/list', '', '', '1', '0', 'C', '1', '0', 'monitor:cache:list', 'redis-list', 'admin', '2024-10-14 13:05:22', '', null, '缓存列表菜单');
INSERT INTO `sys_menu` VALUES ('115', '表单构建', '3', '1', 'build', 'tool/build/index', '', '', '1', '0', 'C', '1', '0', 'tool:build:list', 'build', 'admin', '2024-10-14 13:05:22', '', null, '表单构建菜单');
INSERT INTO `sys_menu` VALUES ('116', '代码生成', '3', '2', 'gen', 'tool/gen/index', '', '', '1', '0', 'C', '1', '0', 'tool:gen:list', 'code', 'admin', '2024-10-14 13:05:22', '', null, '代码生成菜单');
INSERT INTO `sys_menu` VALUES ('117', '系统接口', '3', '3', 'swagger', 'tool/swagger/index', '', '', '1', '0', 'C', '1', '0', 'tool:swagger:list', 'swagger', 'admin', '2024-10-14 13:05:22', '', null, '系统接口菜单');
INSERT INTO `sys_menu` VALUES ('500', '操作日志', '108', '1', 'operlog', 'monitor/operlog/index', '', '', '1', '0', 'C', '1', '0', 'monitor:operlog:list', 'form', 'admin', '2024-10-14 13:05:22', '', null, '操作日志菜单');
INSERT INTO `sys_menu` VALUES ('501', '登录日志', '108', '2', 'logininfor', 'monitor/logininfor/index', '', '', '1', '0', 'C', '1', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2024-10-14 13:05:22', '', null, '登录日志菜单');
INSERT INTO `sys_menu` VALUES ('1000', '用户查询', '100', '1', '', '', '', '', '1', '0', 'F', '1', '0', 'system:user:query', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1001', '用户新增', '100', '2', '', '', '', '', '1', '0', 'F', '1', '0', 'system:user:add', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1002', '用户修改', '100', '3', '', '', '', '', '1', '0', 'F', '1', '0', 'system:user:edit', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1003', '用户删除', '100', '4', '', '', '', '', '1', '0', 'F', '1', '0', 'system:user:remove', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1004', '用户导出', '100', '5', '', '', '', '', '1', '0', 'F', '1', '0', 'system:user:export', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1005', '用户导入', '100', '6', '', '', '', '', '1', '0', 'F', '1', '0', 'system:user:import', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1006', '重置密码', '100', '7', '', '', '', '', '1', '0', 'F', '1', '0', 'system:user:resetPwd', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1007', '角色查询', '101', '1', '', '', '', '', '1', '0', 'F', '1', '0', 'system:role:query', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1008', '角色新增', '101', '2', '', '', '', '', '1', '0', 'F', '1', '0', 'system:role:add', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1009', '角色修改', '101', '3', '', '', '', '', '1', '0', 'F', '1', '0', 'system:role:edit', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1010', '角色删除', '101', '4', '', '', '', '', '1', '0', 'F', '1', '0', 'system:role:remove', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1011', '角色导出', '101', '5', '', '', '', '', '1', '0', 'F', '1', '0', 'system:role:export', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1012', '菜单查询', '102', '1', '', '', '', '', '1', '0', 'F', '1', '0', 'system:menu:query', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1013', '菜单新增', '102', '2', '', '', '', '', '1', '0', 'F', '1', '0', 'system:menu:add', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1014', '菜单修改', '102', '3', '', '', '', '', '1', '0', 'F', '1', '0', 'system:menu:edit', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1015', '菜单删除', '102', '4', '', '', '', '', '1', '0', 'F', '1', '0', 'system:menu:remove', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1016', '部门查询', '103', '1', '', '', '', '', '1', '0', 'F', '1', '0', 'system:dept:query', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1017', '部门新增', '103', '2', '', '', '', '', '1', '0', 'F', '1', '0', 'system:dept:add', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1018', '部门修改', '103', '3', '', '', '', '', '1', '0', 'F', '1', '0', 'system:dept:edit', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1019', '部门删除', '103', '4', '', '', '', '', '1', '0', 'F', '1', '0', 'system:dept:remove', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1020', '岗位查询', '104', '1', '', '', '', '', '1', '0', 'F', '1', '0', 'system:post:query', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1021', '岗位新增', '104', '2', '', '', '', '', '1', '0', 'F', '1', '0', 'system:post:add', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1022', '岗位修改', '104', '3', '', '', '', '', '1', '0', 'F', '1', '0', 'system:post:edit', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1023', '岗位删除', '104', '4', '', '', '', '', '1', '0', 'F', '1', '0', 'system:post:remove', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1024', '岗位导出', '104', '5', '', '', '', '', '1', '0', 'F', '1', '0', 'system:post:export', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1025', '字典查询', '105', '1', '#', '', '', '', '1', '0', 'F', '1', '0', 'system:dict:query', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1026', '字典新增', '105', '2', '#', '', '', '', '1', '0', 'F', '1', '0', 'system:dict:add', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1027', '字典修改', '105', '3', '#', '', '', '', '1', '0', 'F', '1', '0', 'system:dict:edit', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1028', '字典删除', '105', '4', '#', '', '', '', '1', '0', 'F', '1', '0', 'system:dict:remove', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1029', '字典导出', '105', '5', '#', '', '', '', '1', '0', 'F', '1', '0', 'system:dict:export', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1030', '参数查询', '106', '1', '#', '', '', '', '1', '0', 'F', '1', '0', 'system:config:query', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1031', '参数新增', '106', '2', '#', '', '', '', '1', '0', 'F', '1', '0', 'system:config:add', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1032', '参数修改', '106', '3', '#', '', '', '', '1', '0', 'F', '1', '0', 'system:config:edit', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1033', '参数删除', '106', '4', '#', '', '', '', '1', '0', 'F', '1', '0', 'system:config:remove', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1034', '参数导出', '106', '5', '#', '', '', '', '1', '0', 'F', '1', '0', 'system:config:export', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1035', '公告查询', '107', '1', '#', '', '', '', '1', '0', 'F', '1', '0', 'system:notice:query', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1036', '公告新增', '107', '2', '#', '', '', '', '1', '0', 'F', '1', '0', 'system:notice:add', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1037', '公告修改', '107', '3', '#', '', '', '', '1', '0', 'F', '1', '0', 'system:notice:edit', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1038', '公告删除', '107', '4', '#', '', '', '', '1', '0', 'F', '1', '0', 'system:notice:remove', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1039', '操作查询', '500', '1', '#', '', '', '', '1', '0', 'F', '1', '0', 'monitor:operlog:query', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1040', '操作删除', '500', '2', '#', '', '', '', '1', '0', 'F', '1', '0', 'monitor:operlog:remove', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1041', '日志导出', '500', '3', '#', '', '', '', '1', '0', 'F', '1', '0', 'monitor:operlog:export', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1042', '登录查询', '501', '1', '#', '', '', '', '1', '0', 'F', '1', '0', 'monitor:logininfor:query', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1043', '登录删除', '501', '2', '#', '', '', '', '1', '0', 'F', '1', '0', 'monitor:logininfor:remove', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1044', '日志导出', '501', '3', '#', '', '', '', '1', '0', 'F', '1', '0', 'monitor:logininfor:export', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1045', '账户解锁', '501', '4', '#', '', '', '', '1', '0', 'F', '1', '0', 'monitor:logininfor:unlock', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1046', '在线查询', '109', '1', '#', '', '', '', '1', '0', 'F', '1', '0', 'monitor:online:query', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1047', '批量强退', '109', '2', '#', '', '', '', '1', '0', 'F', '1', '0', 'monitor:online:batchLogout', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1048', '单条强退', '109', '3', '#', '', '', '', '1', '0', 'F', '1', '0', 'monitor:online:forceLogout', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1049', '任务查询', '110', '1', '#', '', '', '', '1', '0', 'F', '1', '0', 'monitor:job:query', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1050', '任务新增', '110', '2', '#', '', '', '', '1', '0', 'F', '1', '0', 'monitor:job:add', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1051', '任务修改', '110', '3', '#', '', '', '', '1', '0', 'F', '1', '0', 'monitor:job:edit', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1052', '任务删除', '110', '4', '#', '', '', '', '1', '0', 'F', '1', '0', 'monitor:job:remove', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1053', '状态修改', '110', '5', '#', '', '', '', '1', '0', 'F', '1', '0', 'monitor:job:changeStatus', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1054', '任务导出', '110', '6', '#', '', '', '', '1', '0', 'F', '1', '0', 'monitor:job:export', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1055', '生成查询', '116', '1', '#', '', '', '', '1', '0', 'F', '1', '0', 'tool:gen:query', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1056', '生成修改', '116', '2', '#', '', '', '', '1', '0', 'F', '1', '0', 'tool:gen:edit', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1057', '生成删除', '116', '3', '#', '', '', '', '1', '0', 'F', '1', '0', 'tool:gen:remove', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1058', '导入代码', '116', '4', '#', '', '', '', '1', '0', 'F', '1', '0', 'tool:gen:import', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1059', '预览代码', '116', '5', '#', '', '', '', '1', '0', 'F', '1', '0', 'tool:gen:preview', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1060', '生成代码', '116', '6', '#', '', '', '', '1', '0', 'F', '1', '0', 'tool:gen:code', '#', 'admin', '2024-10-14 13:05:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('5003', 'ct07', '5', '0', '/views/datasystem/ct07', 'views/datasystem/ct07/detail', null, '', '1', '0', '', '0', '0', null, '#', '', null, '', null, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('1', '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2024-10-14 13:05:22', '', null, '管理员');
INSERT INTO `sys_notice` VALUES ('2', '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2024-10-14 13:05:22', '', null, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(11) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(200) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(11) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(11) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint(20) DEFAULT '0' COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`) USING BTREE,
  KEY `idx_sys_oper_log_bt` (`business_type`) USING BTREE,
  KEY `idx_sys_oper_log_s` (`status`) USING BTREE,
  KEY `idx_sys_oper_log_ot` (`oper_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(11) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES ('1', 'ceo', '董事长', '1', '0', 'admin', '2024-10-14 13:05:21', '', null, '');
INSERT INTO `sys_post` VALUES ('2', 'se', '项目经理', '2', '0', 'admin', '2024-10-14 13:05:21', '', null, '');
INSERT INTO `sys_post` VALUES ('3', 'hr', '人力资源', '3', '0', 'admin', '2024-10-14 13:05:21', '', null, '');
INSERT INTO `sys_post` VALUES ('4', 'user', '普通员工', '4', '0', 'admin', '2024-10-14 13:05:21', '', null, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(11) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', 'admin', '1', '1', '1', '1', '0', '0', 'admin', '2024-10-14 13:05:22', '', null, '超级管理员');
INSERT INTO `sys_role` VALUES ('2', '普通角色', 'common', '2', '2', '1', '1', '0', '0', 'admin', '2024-10-14 13:05:22', '', null, '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES ('2', '100');
INSERT INTO `sys_role_dept` VALUES ('2', '101');
INSERT INTO `sys_role_dept` VALUES ('2', '105');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('2', '1');
INSERT INTO `sys_role_menu` VALUES ('2', '2');
INSERT INTO `sys_role_menu` VALUES ('2', '3');
INSERT INTO `sys_role_menu` VALUES ('2', '4');
INSERT INTO `sys_role_menu` VALUES ('2', '100');
INSERT INTO `sys_role_menu` VALUES ('2', '101');
INSERT INTO `sys_role_menu` VALUES ('2', '102');
INSERT INTO `sys_role_menu` VALUES ('2', '103');
INSERT INTO `sys_role_menu` VALUES ('2', '104');
INSERT INTO `sys_role_menu` VALUES ('2', '105');
INSERT INTO `sys_role_menu` VALUES ('2', '106');
INSERT INTO `sys_role_menu` VALUES ('2', '107');
INSERT INTO `sys_role_menu` VALUES ('2', '108');
INSERT INTO `sys_role_menu` VALUES ('2', '109');
INSERT INTO `sys_role_menu` VALUES ('2', '110');
INSERT INTO `sys_role_menu` VALUES ('2', '111');
INSERT INTO `sys_role_menu` VALUES ('2', '112');
INSERT INTO `sys_role_menu` VALUES ('2', '113');
INSERT INTO `sys_role_menu` VALUES ('2', '114');
INSERT INTO `sys_role_menu` VALUES ('2', '115');
INSERT INTO `sys_role_menu` VALUES ('2', '116');
INSERT INTO `sys_role_menu` VALUES ('2', '117');
INSERT INTO `sys_role_menu` VALUES ('2', '500');
INSERT INTO `sys_role_menu` VALUES ('2', '501');
INSERT INTO `sys_role_menu` VALUES ('2', '1000');
INSERT INTO `sys_role_menu` VALUES ('2', '1001');
INSERT INTO `sys_role_menu` VALUES ('2', '1002');
INSERT INTO `sys_role_menu` VALUES ('2', '1003');
INSERT INTO `sys_role_menu` VALUES ('2', '1004');
INSERT INTO `sys_role_menu` VALUES ('2', '1005');
INSERT INTO `sys_role_menu` VALUES ('2', '1006');
INSERT INTO `sys_role_menu` VALUES ('2', '1007');
INSERT INTO `sys_role_menu` VALUES ('2', '1008');
INSERT INTO `sys_role_menu` VALUES ('2', '1009');
INSERT INTO `sys_role_menu` VALUES ('2', '1010');
INSERT INTO `sys_role_menu` VALUES ('2', '1011');
INSERT INTO `sys_role_menu` VALUES ('2', '1012');
INSERT INTO `sys_role_menu` VALUES ('2', '1013');
INSERT INTO `sys_role_menu` VALUES ('2', '1014');
INSERT INTO `sys_role_menu` VALUES ('2', '1015');
INSERT INTO `sys_role_menu` VALUES ('2', '1016');
INSERT INTO `sys_role_menu` VALUES ('2', '1017');
INSERT INTO `sys_role_menu` VALUES ('2', '1018');
INSERT INTO `sys_role_menu` VALUES ('2', '1019');
INSERT INTO `sys_role_menu` VALUES ('2', '1020');
INSERT INTO `sys_role_menu` VALUES ('2', '1021');
INSERT INTO `sys_role_menu` VALUES ('2', '1022');
INSERT INTO `sys_role_menu` VALUES ('2', '1023');
INSERT INTO `sys_role_menu` VALUES ('2', '1024');
INSERT INTO `sys_role_menu` VALUES ('2', '1025');
INSERT INTO `sys_role_menu` VALUES ('2', '1026');
INSERT INTO `sys_role_menu` VALUES ('2', '1027');
INSERT INTO `sys_role_menu` VALUES ('2', '1028');
INSERT INTO `sys_role_menu` VALUES ('2', '1029');
INSERT INTO `sys_role_menu` VALUES ('2', '1030');
INSERT INTO `sys_role_menu` VALUES ('2', '1031');
INSERT INTO `sys_role_menu` VALUES ('2', '1032');
INSERT INTO `sys_role_menu` VALUES ('2', '1033');
INSERT INTO `sys_role_menu` VALUES ('2', '1034');
INSERT INTO `sys_role_menu` VALUES ('2', '1035');
INSERT INTO `sys_role_menu` VALUES ('2', '1036');
INSERT INTO `sys_role_menu` VALUES ('2', '1037');
INSERT INTO `sys_role_menu` VALUES ('2', '1038');
INSERT INTO `sys_role_menu` VALUES ('2', '1039');
INSERT INTO `sys_role_menu` VALUES ('2', '1040');
INSERT INTO `sys_role_menu` VALUES ('2', '1041');
INSERT INTO `sys_role_menu` VALUES ('2', '1042');
INSERT INTO `sys_role_menu` VALUES ('2', '1043');
INSERT INTO `sys_role_menu` VALUES ('2', '1044');
INSERT INTO `sys_role_menu` VALUES ('2', '1045');
INSERT INTO `sys_role_menu` VALUES ('2', '1046');
INSERT INTO `sys_role_menu` VALUES ('2', '1047');
INSERT INTO `sys_role_menu` VALUES ('2', '1048');
INSERT INTO `sys_role_menu` VALUES ('2', '1049');
INSERT INTO `sys_role_menu` VALUES ('2', '1050');
INSERT INTO `sys_role_menu` VALUES ('2', '1051');
INSERT INTO `sys_role_menu` VALUES ('2', '1052');
INSERT INTO `sys_role_menu` VALUES ('2', '1053');
INSERT INTO `sys_role_menu` VALUES ('2', '1054');
INSERT INTO `sys_role_menu` VALUES ('2', '1055');
INSERT INTO `sys_role_menu` VALUES ('2', '1056');
INSERT INTO `sys_role_menu` VALUES ('2', '1057');
INSERT INTO `sys_role_menu` VALUES ('2', '1058');
INSERT INTO `sys_role_menu` VALUES ('2', '1059');
INSERT INTO `sys_role_menu` VALUES ('2', '1060');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '103', 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-11-07 22:03:54', 'admin', '2024-10-14 13:05:21', '', '2024-11-07 22:03:53', '管理员');
INSERT INTO `sys_user` VALUES ('2', '105', 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '192.168.1.29', '2024-10-16 09:01:18', 'admin', '2024-10-14 13:05:21', '', '2024-10-16 09:01:17', '测试员');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES ('1', '1');
INSERT INTO `sys_user_post` VALUES ('2', '2');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('2', '2');

-- ----------------------------
-- Table structure for test_report_cb09
-- ----------------------------
DROP TABLE IF EXISTS `test_report_cb09`;
CREATE TABLE `test_report_cb09` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `test_org_name` varchar(255) DEFAULT NULL COMMENT '检测单位名称',
  `report_no` varchar(100) DEFAULT NULL COMMENT '报告编号',
  `project_name` varchar(255) DEFAULT NULL COMMENT '工程名称',
  `contract_area` varchar(100) DEFAULT NULL COMMENT '合同段',
  `construction_org_name` varchar(255) DEFAULT NULL COMMENT '施工单位',
  `supervisor_org_name` varchar(255) DEFAULT NULL COMMENT '监理单位',
  `project_part_and_purpose` varchar(255) DEFAULT NULL COMMENT '工程部位/用途',
  `sample_info` varchar(255) DEFAULT NULL COMMENT '样品信息',
  `testing_basis` varchar(255) DEFAULT NULL COMMENT '检测依据',
  `judgment_criteria` varchar(255) DEFAULT NULL COMMENT '判定依据',
  `equipment_name_and_no` varchar(255) DEFAULT NULL COMMENT '主要仪器设备名称和编号',
  `mix_proportion_no` varchar(255) DEFAULT NULL COMMENT '配合比编号',
  `impermeability_level` varchar(50) DEFAULT NULL COMMENT '设计抗渗等级',
  `design_strength` varchar(30) DEFAULT NULL COMMENT '设计强度(MPa)',
  `stir_type` varchar(20) DEFAULT NULL COMMENT '搅拌方式',
  `forming_date` date DEFAULT NULL COMMENT '成型日期',
  `slumps_value` decimal(10,2) DEFAULT NULL COMMENT '坍落度',
  `maintain_type` varchar(30) DEFAULT NULL COMMENT '养护方式',
  `age_value` int(11) DEFAULT NULL COMMENT '龄期(d)',
  `test_date` date DEFAULT NULL COMMENT '试验日期',
  `team_no` varchar(20) DEFAULT NULL COMMENT '组号',
  `test_stop_water_pressure` decimal(10,2) DEFAULT NULL COMMENT '检测停止时的水压力(MPa)',
  `test_stop_seepage_part_num` int(11) DEFAULT NULL COMMENT '检测停止时的渗水试件的数量（个）',
  `test_strength` varchar(255) DEFAULT NULL COMMENT '实测抗渗等级',
  `result` varchar(512) DEFAULT NULL COMMENT '结论',
  `additional_statement` varchar(512) DEFAULT NULL COMMENT '附加声明',
  `test_person` varchar(100) DEFAULT NULL COMMENT '检测',
  `examine_person` varchar(100) DEFAULT NULL COMMENT '审核',
  `approve_person` varchar(100) DEFAULT NULL COMMENT '批准',
  `report_date` date DEFAULT NULL COMMENT '日期',
  `create_time` datetime DEFAULT NULL COMMENT '生成日期',
  `update_time` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='硬化后水泥混凝土性能试验检测报告';

-- ----------------------------
-- Records of test_report_cb09
-- ----------------------------
INSERT INTO `test_report_cb09` VALUES ('1', '广西大学土木工程系xxxxx', '0000001', '测试项目', '1标段', '广西建工1局', '广西建工1局监理单位', '测试', 'xxxxxxxxxxxxxx', '1111111111111111', '2222222222222222', '3333333333333333', 'M00001', '一级', '100', 'jjjjjjj', '2024-10-16', '15.00', '普通', '88', '2024-10-16', '00001', '77.00', '0', '一级', '合格', 'ooooooooooooooo', '张三', '李四', '王五', '2024-10-16', '2024-10-16 16:09:01', null);
INSERT INTO `test_report_cb09` VALUES ('2', '广西大学土木工程系', '0000002', '测试项目2', '1标段', '广西建工1局', '广西建工1局监理单位', '测试', 'xxxxxxxxxxxxxx', '1111111111111111', '2222222222222222', '3333333333333333', 'M00001', '一级', '100', 'jjjjjjj', '2024-10-16', '15.00', '普通', '88', '2024-10-16', '00001', '77.00', '0', '一级', '合格', 'ooooooooooooooo', '张三', '李四', '王五', '2024-10-16', '2024-10-16 16:09:01', null);
INSERT INTO `test_report_cb09` VALUES ('3', null, '0000003', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `test_report_cb09` VALUES ('4', '广西大学土木工程系yyyyy', '0000004', '测试项目', '1标段', '广西建工1局', '广西建工1局监理单位', '测试', 'xxxxxxxxxxxxxx', '1111111111111111', '2222222222222222', '3333333333333333', 'M00001', '一级', '100', 'jjjjjjj', '2024-10-16', '15.00', '普通', '88', '2024-10-15', '00001', '77.00', '0', '一级', '合格', 'ooooooooooooooo', '张三', '李四', '王五', '2024-10-15', '2024-10-16 18:09:01', null);

-- ----------------------------
-- Table structure for turang
-- ----------------------------
DROP TABLE IF EXISTS `turang`;
CREATE TABLE `turang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `wendu` varchar(255) DEFAULT NULL,
  `shidu` varchar(255) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of turang
-- ----------------------------
INSERT INTO `turang` VALUES ('1', '1', '2', '1', '2024-10-29 17:47:39');
INSERT INTO `turang` VALUES ('2', '2', '2', '2', '2024-10-30 09:11:13');
INSERT INTO `turang` VALUES ('7', '4', '4', '4', '2024-10-30 17:10:18');
INSERT INTO `turang` VALUES ('8', null, null, null, null);
INSERT INTO `turang` VALUES ('9', null, null, null, null);
