/*
Navicat MySQL Data Transfer

Source Server         : 数据库
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : ruoyi

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2024-11-17 21:50:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sj17
-- ----------------------------
DROP TABLE IF EXISTS `sj17`;
CREATE TABLE `sj17` (
  `id` int(64) NOT NULL AUTO_INCREMENT,
  `sgdw` varchar(63) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '施工单位',
  `hth` varchar(63) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '合同号',
  `jldw` varchar(63) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '监理单位',
  `bh` varchar(63) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '编号',
  `gcmc` varchar(63) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '工程名称',
  `sgsj` date DEFAULT NULL COMMENT '施工时间',
  `zhjgcbw` varchar(63) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '桩号和工程部位',
  `jglx` varchar(63) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '结构类型',
  `bhfs` varchar(63) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '拌和方式',
  `yshd` int(4) DEFAULT NULL COMMENT '压实厚度',
  `mpyl` float(4,0) DEFAULT NULL COMMENT '每盘用料',
  `kd` float(4,0) DEFAULT NULL COMMENT '宽度',
  `clwd` float(4,0) DEFAULT NULL COMMENT '出料温度',
  `hp` int(11) DEFAULT NULL COMMENT '横坡',
  `ysbjc` varchar(63) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '油石比检查',
  `ysb` varchar(63) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '油石比',
  `ysfs` varchar(63) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '运输方式',
  `lqjcqk` varchar(63) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '沥青检验情况',
  `ddwd` float(4,0) DEFAULT NULL COMMENT '到达温度',
  `tpwd` float(4,0) DEFAULT NULL COMMENT '摊铺温度',
  `tpff` varchar(63) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '摊铺方法',
  `cjlysmc` varchar(63) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '粗集料岩石名称',
  `pzd` varchar(63) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '平整度',
  `tcllb` varchar(63) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '填充料类别',
  `hd` varchar(63) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '厚度',
  `jlphb` varchar(63) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '集料配合比',
  `tphp` varchar(63) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '摊铺横坡',
  `xcjpqk` varchar(63) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '现场级配情况',
  `nyjj` varchar(63) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '碾压机具',
  `lcfwrcs` varchar(63) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '料场防污染措施',
  `nybs` varchar(63) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '碾压遍数',
  `cpqk` varchar(63) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '掺配情况',
  `nyzl` varchar(63) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '碾压质量',
  `jwjl` varchar(63) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '加温记录',
  `nywd` float(4,0) DEFAULT NULL COMMENT '碾压温度',
  `kljrwd` float(4,0) DEFAULT NULL COMMENT '矿料加热温度',
  `nyjswd` float(4,0) DEFAULT NULL COMMENT '碾压结束温度',
  `kgqw` float(4,0) DEFAULT NULL COMMENT '开工气温',
  `jsqw` float(4,0) DEFAULT NULL COMMENT '结束气温',
  `qwbhqk` varchar(63) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '气候变化情况',
  `sgy` varchar(63) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '施工员',
  `zygcs` varchar(63) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '专业工程师',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sj17
-- ----------------------------
INSERT INTO `sj17` VALUES ('3', '1', '1', '1', '', '1', '2024-11-05', '1', '1', '7', '1', null, '1', null, '1', '', '', '8', '', '9', null, null, null, '11', '4', '8', '', '13', '5', '14', '6', '15', '', '16', '', null, null, null, null, null, null, '', '');
INSERT INTO `sj17` VALUES ('4', '1', '11', '1', '', '', '2024-11-13', '', '', '7', '1', null, null, null, '2', '', '', '8', '', '9', null, null, null, '11', '4', '8', '', '13', '5', '14', '6', '15', '', '16', '', null, null, null, null, null, null, '', '');
INSERT INTO `sj17` VALUES ('5', '1ewqeqwq', '131', '122', '11', '', '2024-11-13', '', '', '1', '1', '12', null, null, '2', '', '', '8', '', '9', null, null, null, '11', '4', '8', '', '13', '5', '14', '6', '15', '', '16', '', null, null, null, null, null, null, '', '');
INSERT INTO `sj17` VALUES ('14', '', '', '', '', '', null, '', '', '', null, null, null, null, null, '', '', '', '', null, null, '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, null, null, null, null, '好', '', '');
INSERT INTO `sj17` VALUES ('23', '你好', '123', '你好', '123', '你好', '2024-11-12', '你好', '你好', '设备集中拌和', '8', '31', '21', '21', '3', '1', '1', '覆盖篷布自卸式运输车', '', '21', '12', '沥青摊铺机摊铺', '花岗岩', '表面平整', '矿粉', '符合设计及规范要求', '21', '符合设计及规范要求', '符合设计及规范要求', '单钢轮、双钢轮、胶轮压路机', '场地硬化，排水措施良好', '7遍', '好', '表面平整、无松散、无泛油现象', '好', '12', '21', '21', '12', '21', '你好', '你好', '你好');
INSERT INTO `sj17` VALUES ('24', '你好', '12', '你好', '21', '21', '2024-11-06', '', '你好', '设备集中拌和', '8', '12', '12', '21', '3', '12', '21', '覆盖篷布自卸式运输车', '', '21', '21', '沥青摊铺机摊铺', '花岗岩', '表面平整', '矿粉', '符合设计及规范要求', '21', '符合设计及规范要求', '符合设计及规范要求', '单钢轮、双钢轮、胶轮压路机', '场地硬化，排水措施良好', '6遍', '12你好', '表面平整、无松散、无泛油现象', '你好', '2', '2', '2', '22', null, null, '2你好', '你好');
