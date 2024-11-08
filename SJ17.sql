/*
Navicat MySQL Data Transfer

Source Server         : 数据库
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : sj17

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2024-10-29 10:37:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sj17
-- ----------------------------
DROP TABLE IF EXISTS `sj17`;
CREATE TABLE `sj17` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sgdw` varchar(63) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '施工单位',
  `hth` varchar(63) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '合同号',
  `jldw` varchar(63) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '监理单位',
  `bh` varchar(63) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '编号',
  `gcmc` varchar(63) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '工程名称',
  `sgsj` date DEFAULT NULL COMMENT '施工时间',
  `zhhgcbw` varchar(63) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '桩号和工程部位',
  `jglx` varchar(63) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '结构类型',
  `bhfs` int(4) DEFAULT '7' COMMENT '拌和方式',
  `yshd` float DEFAULT '1' COMMENT '压实厚度',
  `mpyl` float(4,0) DEFAULT NULL COMMENT '每盘用料',
  `kd` float(4,0) DEFAULT NULL COMMENT '宽度',
  `clwd` float(4,0) DEFAULT NULL COMMENT '出料温度',
  `hp` float DEFAULT '2' COMMENT '横坡',
  `ysbjc` varchar(63) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '油石比检查',
  `ysb` varchar(63) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '油石比',
  `ysfs` int(4) DEFAULT '8' COMMENT '运输方式',
  `lqjcqk` varchar(63) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '沥青检查情况',
  `ddwd` float(4,0) DEFAULT '9' COMMENT '到达温度',
  `tpfs` int(4) DEFAULT '10' COMMENT '摊铺方法',
  `tpwd` float(4,0) DEFAULT NULL COMMENT '摊铺温度',
  `cjlysmc` int(4) DEFAULT NULL COMMENT '粗集料岩石名称',
  `pzd` int(4) DEFAULT '11' COMMENT '平整度',
  `tcllb` int(4) DEFAULT '4' COMMENT '填充料类别',
  `tpff` int(4) DEFAULT NULL COMMENT '摊铺方法',
  `hd` float DEFAULT '8' COMMENT '厚度',
  `jlphb` varchar(63) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '集料配合比',
  `tp_hp` float DEFAULT '13' COMMENT '摊铺——横坡',
  `xcjpqk` int(4) DEFAULT '5' COMMENT '现场级配情况',
  `nyjj` int(4) DEFAULT '14' COMMENT '碾压机具',
  `lcfwrcs` int(4) DEFAULT '6' COMMENT '料场防污染措施',
  `nybs` int(4) DEFAULT '15' COMMENT '碾压遍数',
  `cpqk` varchar(63) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '掺配情况',
  `nyzl` int(4) DEFAULT '16' COMMENT '碾压质量',
  `jwjl` varchar(63) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '加温记录',
  `nywd` float DEFAULT NULL COMMENT '碾压温度',
  `kljrwd` float DEFAULT NULL COMMENT '矿料加热温度',
  `nyjswd` float DEFAULT NULL COMMENT '碾压结束温度',
  `kgqw` float DEFAULT NULL COMMENT '开工气温',
  `jsqw` float DEFAULT NULL COMMENT '结束气温',
  `qhbhqk` float DEFAULT NULL COMMENT '气候变化情况',
  `sgy` varchar(63) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '施工员',
  `vygcs` varchar(63) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '专业工程师',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sj17
-- ----------------------------
