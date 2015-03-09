/*
Navicat MySQL Data Transfer

Source Server         : locahost
Source Server Version : 50037
Source Host           : localhost:3306
Source Database       : jeecg_gjh

Target Server Type    : MYSQL
Target Server Version : 50037
File Encoding         : 65001

Date: 2015-03-09 14:48:57
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `cgform_button`
-- ----------------------------
DROP TABLE IF EXISTS `cgform_button`;
CREATE TABLE `cgform_button` (
  `ID` varchar(32) NOT NULL,
  `BUTTON_CODE` varchar(50) default NULL,
  `button_icon` varchar(20) default NULL,
  `BUTTON_NAME` varchar(50) default NULL,
  `BUTTON_STATUS` varchar(2) default NULL,
  `BUTTON_STYLE` varchar(20) default NULL,
  `EXP` varchar(255) default NULL,
  `FORM_ID` varchar(32) default NULL,
  `OPT_TYPE` varchar(20) default NULL,
  `order_num` int(11) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cgform_button
-- ----------------------------

-- ----------------------------
-- Table structure for `cgform_button_sql`
-- ----------------------------
DROP TABLE IF EXISTS `cgform_button_sql`;
CREATE TABLE `cgform_button_sql` (
  `ID` varchar(32) NOT NULL,
  `BUTTON_CODE` varchar(50) default NULL,
  `CGB_SQL` tinyblob,
  `CGB_SQL_NAME` varchar(50) default NULL,
  `CONTENT` longtext,
  `FORM_ID` varchar(32) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cgform_button_sql
-- ----------------------------

-- ----------------------------
-- Table structure for `cgform_enhance_js`
-- ----------------------------
DROP TABLE IF EXISTS `cgform_enhance_js`;
CREATE TABLE `cgform_enhance_js` (
  `ID` varchar(32) NOT NULL,
  `CG_JS` blob,
  `CG_JS_TYPE` varchar(20) default NULL,
  `CONTENT` longtext,
  `FORM_ID` varchar(32) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cgform_enhance_js
-- ----------------------------

-- ----------------------------
-- Table structure for `cgform_field`
-- ----------------------------
DROP TABLE IF EXISTS `cgform_field`;
CREATE TABLE `cgform_field` (
  `id` varchar(32) NOT NULL,
  `content` varchar(200) NOT NULL,
  `create_by` varchar(255) default NULL,
  `create_date` datetime default NULL,
  `create_name` varchar(32) default NULL,
  `dict_field` varchar(100) default NULL,
  `dict_table` varchar(100) default NULL,
  `dict_text` varchar(100) default NULL,
  `field_default` varchar(20) default NULL,
  `field_href` varchar(200) default NULL,
  `field_length` int(11) default NULL,
  `field_name` varchar(32) NOT NULL,
  `field_valid_type` varchar(10) default NULL,
  `is_key` varchar(2) default NULL,
  `is_null` varchar(5) default NULL,
  `is_query` varchar(5) default NULL,
  `is_show` varchar(5) default NULL,
  `is_show_list` varchar(5) default NULL,
  `length` int(11) NOT NULL,
  `main_field` varchar(100) default NULL,
  `main_table` varchar(100) default NULL,
  `old_field_name` varchar(32) default NULL,
  `order_num` int(11) default NULL,
  `point_length` int(11) default NULL,
  `query_mode` varchar(10) default NULL,
  `show_type` varchar(10) default NULL,
  `type` varchar(32) NOT NULL,
  `update_by` varchar(32) default NULL,
  `update_date` datetime default NULL,
  `update_name` varchar(32) default NULL,
  `table_id` varchar(32) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cgform_field
-- ----------------------------
INSERT INTO `cgform_field` VALUES ('402880884883eff40148840fdef40011', '主键', 'admin', '2014-09-17 22:41:45', '管理员', '', '', '', '', '', '120', 'id', '', 'Y', 'N', 'N', 'N', 'N', '36', '', '', 'id', '1', '0', 'single', 'text', 'string', null, null, null, '402880884883eff40148840fdef30010');
INSERT INTO `cgform_field` VALUES ('402880884883eff40148840fdef70012', '创建人名称', 'admin', '2014-09-17 22:41:45', '管理员', '', '', '', '', '', '120', 'create_name', '', 'N', 'Y', 'N', 'N', 'N', '50', '', '', 'create_name', '2', '0', 'single', 'text', 'string', null, null, null, '402880884883eff40148840fdef30010');
INSERT INTO `cgform_field` VALUES ('402880884883eff40148840fdef90013', '创建人登录名称', 'admin', '2014-09-17 22:41:45', '管理员', '', '', '', '', '', '120', 'create_by', '', 'N', 'Y', 'N', 'N', 'N', '50', '', '', 'create_by', '3', '0', 'single', 'text', 'string', null, null, null, '402880884883eff40148840fdef30010');
INSERT INTO `cgform_field` VALUES ('402880884883eff40148840fdefb0014', '创建日期', 'admin', '2014-09-17 22:41:45', '管理员', '', '', '', '', '', '120', 'create_date', '', 'N', 'Y', 'N', 'N', 'N', '20', '', '', 'create_date', '4', '0', 'single', 'date', 'Date', null, null, null, '402880884883eff40148840fdef30010');
INSERT INTO `cgform_field` VALUES ('402880884883eff40148840fdefd0015', '更新人名称', 'admin', '2014-09-17 22:41:45', '管理员', '', '', '', '', '', '120', 'update_name', '', 'N', 'Y', 'N', 'N', 'N', '50', '', '', 'update_name', '5', '0', 'single', 'text', 'string', null, null, null, '402880884883eff40148840fdef30010');
INSERT INTO `cgform_field` VALUES ('402880884883eff40148840fdeff0016', '更新人登录名称', 'admin', '2014-09-17 22:41:45', '管理员', '', '', '', '', '', '120', 'update_by', '', 'N', 'Y', 'N', 'N', 'N', '50', '', '', 'update_by', '6', '0', 'single', 'text', 'string', null, null, null, '402880884883eff40148840fdef30010');
INSERT INTO `cgform_field` VALUES ('402880884883eff40148840fdf010017', '更新日期', 'admin', '2014-09-17 22:41:45', '管理员', '', '', '', '', '', '120', 'update_date', '', 'N', 'Y', 'N', 'N', 'N', '20', '', '', 'update_date', '7', '0', 'single', 'date', 'Date', null, null, null, '402880884883eff40148840fdef30010');
INSERT INTO `cgform_field` VALUES ('402880884883eff40148840fdf040018', 'SQL名称', 'admin', '2014-09-17 22:41:45', '管理员', '', '', '', '', '', '120', 'sql_name', '*', 'N', 'Y', 'N', 'Y', 'Y', '32', '', '', 'sql_name', '8', '0', 'single', 'text', 'string', null, null, null, '402880884883eff40148840fdef30010');
INSERT INTO `cgform_field` VALUES ('402880884883eff40148840fdf070019', 'SQL内容', 'admin', '2014-09-17 22:41:45', '管理员', '', '', '', '', '', '120', 'sql_content', '*', 'N', 'Y', 'N', 'Y', 'Y', '1000', '', '', 'sql_content', '9', '0', 'single', 'textarea', 'string', null, null, null, '402880884883eff40148840fdef30010');
INSERT INTO `cgform_field` VALUES ('402880884883eff401488414044c001c', '主键', 'admin', '2014-09-17 22:46:17', '管理员', '', '', '', '', '', '120', 'id', '', 'Y', 'N', 'N', 'N', 'N', '36', '', '', 'id', '1', '0', 'single', 'text', 'string', null, null, null, '402880884883eff401488414044c001b');
INSERT INTO `cgform_field` VALUES ('402880884883eff4014884140450001d', '创建人名称', 'admin', '2014-09-17 22:46:17', '管理员', '', '', '', '', '', '120', 'create_name', '', 'N', 'Y', 'N', 'N', 'N', '50', '', '', 'create_name', '2', '0', 'single', 'text', 'string', null, null, null, '402880884883eff401488414044c001b');
INSERT INTO `cgform_field` VALUES ('402880884883eff4014884140452001e', '创建人登录名称', 'admin', '2014-09-17 22:46:17', '管理员', '', '', '', '', '', '120', 'create_by', '', 'N', 'Y', 'N', 'N', 'N', '50', '', '', 'create_by', '3', '0', 'single', 'text', 'string', null, null, null, '402880884883eff401488414044c001b');
INSERT INTO `cgform_field` VALUES ('402880884883eff4014884140455001f', '创建日期', 'admin', '2014-09-17 22:46:17', '管理员', '', '', '', '', '', '120', 'create_date', '', 'N', 'Y', 'N', 'N', 'N', '20', '', '', 'create_date', '4', '0', 'single', 'date', 'Date', null, null, null, '402880884883eff401488414044c001b');
INSERT INTO `cgform_field` VALUES ('402880884883eff40148841404590020', '更新人名称', 'admin', '2014-09-17 22:46:17', '管理员', '', '', '', '', '', '120', 'update_name', '', 'N', 'Y', 'N', 'N', 'N', '50', '', '', 'update_name', '5', '0', 'single', 'text', 'string', null, null, null, '402880884883eff401488414044c001b');
INSERT INTO `cgform_field` VALUES ('402880884883eff401488414045b0021', '更新人登录名称', 'admin', '2014-09-17 22:46:17', '管理员', '', '', '', '', '', '120', 'update_by', '', 'N', 'Y', 'N', 'N', 'N', '50', '', '', 'update_by', '6', '0', 'single', 'text', 'string', null, null, null, '402880884883eff401488414044c001b');
INSERT INTO `cgform_field` VALUES ('402880884883eff401488414045f0022', '更新日期', 'admin', '2014-09-17 22:46:17', '管理员', '', '', '', '', '', '120', 'update_date', '', 'N', 'Y', 'N', 'N', 'N', '20', '', '', 'update_date', '7', '0', 'single', 'date', 'Date', null, null, null, '402880884883eff401488414044c001b');
INSERT INTO `cgform_field` VALUES ('402880884883eff40148841404620023', '模板类型', 'admin', '2014-09-17 22:46:17', '管理员', 'typecode', 't_s_type where typegroupid in (select id from t_s_typegroup where typegroupcode =\'smsTplType\')', 'typename', '', '', '120', 'template_type', '*', 'N', 'Y', 'N', 'Y', 'Y', '1', '', '', 'template_type', '8', '0', 'single', 'list', 'string', 'admin', '2014-09-17 22:59:02', '管理员', '402880884883eff401488414044c001b');
INSERT INTO `cgform_field` VALUES ('402880884883eff40148841404650024', '模板名称', 'admin', '2014-09-17 22:46:17', '管理员', '', '', '', '', '', '120', 'template_name', '*', 'N', 'Y', 'N', 'Y', 'Y', '50', '', '', 'template_name', '9', '0', 'single', 'text', 'string', null, null, null, '402880884883eff401488414044c001b');
INSERT INTO `cgform_field` VALUES ('402880884883eff40148841404670025', '模板内容', 'admin', '2014-09-17 22:46:17', '管理员', '', '', '', '', '', '120', 'template_content', '*', 'N', 'Y', 'N', 'Y', 'Y', '1000', '', '', 'template_content', '10', '0', 'single', 'textarea', 'string', null, null, null, '402880884883eff401488414044c001b');
INSERT INTO `cgform_field` VALUES ('402880884883eff401488424f29d0031', '主键', 'admin', '2014-09-17 23:04:47', '管理员', '', '', '', '', '', '120', 'id', '', 'Y', 'N', 'N', 'N', 'N', '36', '', '', 'id', '1', '0', 'single', 'text', 'string', null, null, null, '402880884883eff401488424f29c0030');
INSERT INTO `cgform_field` VALUES ('402880884883eff401488424f2a10032', '创建人名称', 'admin', '2014-09-17 23:04:47', '管理员', '', '', '', '', '', '120', 'create_name', '', 'N', 'Y', 'N', 'N', 'N', '50', '', '', 'create_name', '2', '0', 'single', 'text', 'string', null, null, null, '402880884883eff401488424f29c0030');
INSERT INTO `cgform_field` VALUES ('402880884883eff401488424f2a40033', '创建人登录名称', 'admin', '2014-09-17 23:04:47', '管理员', '', '', '', '', '', '120', 'create_by', '', 'N', 'Y', 'N', 'N', 'N', '50', '', '', 'create_by', '3', '0', 'single', 'text', 'string', null, null, null, '402880884883eff401488424f29c0030');
INSERT INTO `cgform_field` VALUES ('402880884883eff401488424f2a60034', '创建日期', 'admin', '2014-09-17 23:04:47', '管理员', '', '', '', '', '', '120', 'create_date', '', 'N', 'Y', 'N', 'N', 'N', '20', '', '', 'create_date', '4', '0', 'single', 'date', 'Date', null, null, null, '402880884883eff401488424f29c0030');
INSERT INTO `cgform_field` VALUES ('402880884883eff401488424f2aa0035', '更新人名称', 'admin', '2014-09-17 23:04:47', '管理员', '', '', '', '', '', '120', 'update_name', '', 'N', 'Y', 'N', 'N', 'N', '50', '', '', 'update_name', '5', '0', 'single', 'text', 'string', null, null, null, '402880884883eff401488424f29c0030');
INSERT INTO `cgform_field` VALUES ('402880884883eff401488424f2ad0036', '更新人登录名称', 'admin', '2014-09-17 23:04:47', '管理员', '', '', '', '', '', '120', 'update_by', '', 'N', 'Y', 'N', 'N', 'N', '50', '', '', 'update_by', '6', '0', 'single', 'text', 'string', null, null, null, '402880884883eff401488424f29c0030');
INSERT INTO `cgform_field` VALUES ('402880884883eff401488424f2b00037', '更新日期', 'admin', '2014-09-17 23:04:47', '管理员', '', '', '', '', '', '120', 'update_date', '', 'N', 'Y', 'N', 'N', 'N', '20', '', '', 'update_date', '7', '0', 'single', 'date', 'Date', null, null, null, '402880884883eff401488424f29c0030');
INSERT INTO `cgform_field` VALUES ('402880884883eff401488424f2b30038', '配置CODE', 'admin', '2014-09-17 23:04:47', '管理员', '', '', '', '', '', '120', 'code', '*', 'N', 'Y', 'N', 'Y', 'Y', '32', '', '', 'code', '8', '0', 'single', 'text', 'string', null, null, null, '402880884883eff401488424f29c0030');
INSERT INTO `cgform_field` VALUES ('402880884883eff401488424f2b50039', '配置名称', 'admin', '2014-09-17 23:04:47', '管理员', '', '', '', '', '', '120', 'name', '*', 'N', 'Y', 'N', 'Y', 'Y', '32', '', '', 'name', '9', '0', 'single', 'text', 'string', null, null, null, '402880884883eff401488424f29c0030');
INSERT INTO `cgform_field` VALUES ('402880884883eff401488424f2b7003a', '业务SQLID', 'admin', '2014-09-17 23:04:47', '管理员', 'id', 't_s_sms_sql', 'sql_name', '', '', '120', 'sql_id', '*', 'N', 'Y', 'N', 'Y', 'Y', '32', '', '', 'sql_id', '10', '0', 'single', 'list', 'string', null, null, null, '402880884883eff401488424f29c0030');
INSERT INTO `cgform_field` VALUES ('402880884883eff401488424f2b9003b', '消息模本ID', 'admin', '2014-09-17 23:04:47', '管理员', 'id', 't_s_sms_template', 'template_name', '', '', '120', 'template_id', '*', 'N', 'Y', 'N', 'Y', 'Y', '32', '', '', 'template_id', '11', '0', 'single', 'list', 'string', null, null, null, '402880884883eff401488424f29c0030');
INSERT INTO `cgform_field` VALUES ('4028808848844fe2014884587ae80002', '主键', 'admin', '2014-09-18 00:01:04', '管理员', '', '', '', '', '', '120', 'id', '', 'Y', 'N', 'N', 'N', 'N', '36', '', '', 'id', '1', '0', 'single', 'text', 'string', null, null, null, '4028808848844fe2014884587ae60001');
INSERT INTO `cgform_field` VALUES ('4028808848844fe2014884587af50003', '创建人名称', 'admin', '2014-09-18 00:01:04', '管理员', '', '', '', '', '', '120', 'create_name', '', 'N', 'Y', 'N', 'N', 'N', '50', '', '', 'create_name', '2', '0', 'single', 'text', 'string', null, null, null, '4028808848844fe2014884587ae60001');
INSERT INTO `cgform_field` VALUES ('4028808848844fe2014884587af70004', '创建人登录名称', 'admin', '2014-09-18 00:01:04', '管理员', '', '', '', '', '', '120', 'create_by', '', 'N', 'Y', 'N', 'N', 'N', '50', '', '', 'create_by', '3', '0', 'single', 'text', 'string', null, null, null, '4028808848844fe2014884587ae60001');
INSERT INTO `cgform_field` VALUES ('4028808848844fe2014884587af90005', '创建日期', 'admin', '2014-09-18 00:01:04', '管理员', '', '', '', '', '', '120', 'create_date', '', 'N', 'Y', 'N', 'N', 'N', '20', '', '', 'create_date', '4', '0', 'single', 'date', 'Date', null, null, null, '4028808848844fe2014884587ae60001');
INSERT INTO `cgform_field` VALUES ('4028808848844fe2014884587afb0006', '更新人名称', 'admin', '2014-09-18 00:01:04', '管理员', '', '', '', '', '', '120', 'update_name', '', 'N', 'Y', 'N', 'N', 'N', '50', '', '', 'update_name', '5', '0', 'single', 'text', 'string', null, null, null, '4028808848844fe2014884587ae60001');
INSERT INTO `cgform_field` VALUES ('4028808848844fe2014884587afd0007', '更新人登录名称', 'admin', '2014-09-18 00:01:04', '管理员', '', '', '', '', '', '120', 'update_by', '', 'N', 'Y', 'N', 'N', 'N', '50', '', '', 'update_by', '6', '0', 'single', 'text', 'string', null, null, null, '4028808848844fe2014884587ae60001');
INSERT INTO `cgform_field` VALUES ('4028808848844fe2014884587b000008', '更新日期', 'admin', '2014-09-18 00:01:04', '管理员', '', '', '', '', '', '120', 'update_date', '', 'N', 'Y', 'N', 'N', 'N', '20', '', '', 'update_date', '7', '0', 'single', 'date', 'Date', null, null, null, '4028808848844fe2014884587ae60001');
INSERT INTO `cgform_field` VALUES ('4028808848844fe2014884587b020009', '消息标题', 'admin', '2014-09-18 00:01:04', '管理员', '', '', '', '', '', '120', 'es_title', '', 'N', 'Y', 'N', 'Y', 'Y', '32', '', '', 'es_title', '8', '0', 'single', 'text', 'string', null, null, null, '4028808848844fe2014884587ae60001');
INSERT INTO `cgform_field` VALUES ('4028808848844fe2014884587b04000a', '消息类型', 'admin', '2014-09-18 00:01:04', '管理员', '', '', '', '', '', '120', 'es_type', '', 'N', 'Y', 'N', 'Y', 'Y', '1', '', '', 'es_type', '9', '0', 'single', 'text', 'string', null, null, null, '4028808848844fe2014884587ae60001');
INSERT INTO `cgform_field` VALUES ('4028808848844fe2014884587b07000b', '发送人', 'admin', '2014-09-18 00:01:04', '管理员', '', '', '', '', '', '120', 'es_sender', '', 'N', 'Y', 'N', 'Y', 'Y', '50', '', '', 'es_sender', '10', '0', 'single', 'text', 'string', null, null, null, '4028808848844fe2014884587ae60001');
INSERT INTO `cgform_field` VALUES ('4028808848844fe2014884587b09000c', '接收人', 'admin', '2014-09-18 00:01:04', '管理员', '', '', '', '', '', '120', 'es_receiver', '', 'N', 'Y', 'N', 'Y', 'Y', '50', '', '', 'es_receiver', '11', '0', 'single', 'text', 'string', null, null, null, '4028808848844fe2014884587ae60001');
INSERT INTO `cgform_field` VALUES ('4028808848844fe2014884587b0b000d', '内容', 'admin', '2014-09-18 00:01:04', '管理员', '', '', '', '', '', '120', 'es_content', '', 'N', 'Y', 'N', 'Y', 'Y', '1000', '', '', 'es_content', '12', '0', 'single', 'text', 'string', null, null, null, '4028808848844fe2014884587ae60001');
INSERT INTO `cgform_field` VALUES ('4028808848844fe2014884587b0c000e', '发送时间', 'admin', '2014-09-18 00:01:04', '管理员', '', '', '', '', '', '120', 'es_sendtime', '', 'N', 'Y', 'N', 'Y', 'Y', '32', '', '', 'es_sendtime', '13', '0', 'single', 'text', 'Date', null, null, null, '4028808848844fe2014884587ae60001');
INSERT INTO `cgform_field` VALUES ('4028808848844fe2014884587b0f000f', '发送状态', 'admin', '2014-09-18 00:01:04', '管理员', '', '', '', '', '', '120', 'es_status', '', 'N', 'Y', 'N', 'Y', 'Y', '1', '', '', 'es_status', '14', '0', 'single', 'text', 'string', null, null, null, '4028808848844fe2014884587ae60001');
INSERT INTO `cgform_field` VALUES ('8a8ab0b246dc81120146dc8184940140', '主键', 'admin', '2014-06-27 16:46:54', '管理员', '', '', '', '', '', '0', 'id', '', 'Y', 'N', 'N', 'N', 'N', '36', '', '', 'id', '1', '0', 'single', 'text', 'string', '8a8ab0b246dc81120146dc8181950052', '2014-07-10 16:22:32', 'admin', '8a8ab0b246dc81120146dc81847e013b');
INSERT INTO `cgform_field` VALUES ('8a8ab0b246dc81120146dc81849b0141', '订单号', 'admin', '2014-06-27 16:46:54', '管理员', '', '', '', '', '', '0', 'order_code', '', 'N', 'Y', 'Y', 'Y', 'Y', '50', '', '', 'order_code', '2', '0', 'single', 'text', 'string', '8a8ab0b246dc81120146dc8181950052', '2014-07-10 16:22:32', 'admin', '8a8ab0b246dc81120146dc81847e013b');
INSERT INTO `cgform_field` VALUES ('8a8ab0b246dc81120146dc81849d0142', '订单日期', 'admin', '2014-06-27 16:46:54', '管理员', '', '', '', '', '', '0', 'order_date', '', 'N', 'Y', 'Y', 'Y', 'Y', '20', '', '', 'order_date', '3', '0', 'single', 'date', 'Date', '8a8ab0b246dc81120146dc8181950052', '2014-07-10 16:22:32', 'admin', '8a8ab0b246dc81120146dc81847e013b');
INSERT INTO `cgform_field` VALUES ('8a8ab0b246dc81120146dc81849f0143', '订单金额', 'admin', '2014-06-27 16:46:54', '管理员', '', '', '', '', '', '0', 'order_money', '', 'N', 'Y', 'Y', 'Y', 'Y', '10', '', '', 'order_money', '4', '3', 'single', 'text', 'double', '8a8ab0b246dc81120146dc8181950052', '2014-07-10 16:22:32', 'admin', '8a8ab0b246dc81120146dc81847e013b');
INSERT INTO `cgform_field` VALUES ('8a8ab0b246dc81120146dc8184a10144', '备注', 'admin', '2014-06-27 16:46:54', '管理员', '', '', '', '', '', '0', 'content', '', 'N', 'Y', 'Y', 'Y', 'Y', '255', '', '', 'content', '5', '0', 'single', 'text', 'string', '8a8ab0b246dc81120146dc8181950052', '2014-07-10 16:22:32', 'admin', '8a8ab0b246dc81120146dc81847e013b');
INSERT INTO `cgform_field` VALUES ('8a8ab0b246dc81120146dc8184ab0145', '主键', 'admin', '2014-06-27 16:46:54', '管理员', '', '', null, null, null, '0', 'id', null, 'Y', 'N', 'N', 'N', 'N', '36', '', '', null, '0', '0', 'single', 'text', 'string', null, null, null, '8a8ab0b246dc81120146dc818484013c');
INSERT INTO `cgform_field` VALUES ('8a8ab0b246dc81120146dc8184ad0146', '请假标题', 'admin', '2014-06-27 16:46:54', '管理员', '', '', null, null, null, '0', 'title', null, 'N', 'N', 'N', 'Y', 'Y', '50', '', '', null, '1', '0', 'single', 'text', 'string', null, null, null, '8a8ab0b246dc81120146dc818484013c');
INSERT INTO `cgform_field` VALUES ('8a8ab0b246dc81120146dc8184af0147', '请假人', 'admin', '2014-06-27 16:46:54', '管理员', '', '', null, null, null, '0', 'people', null, 'N', 'N', 'Y', 'Y', 'Y', '20', '', '', null, '2', '0', 'single', 'text', 'string', null, null, null, '8a8ab0b246dc81120146dc818484013c');
INSERT INTO `cgform_field` VALUES ('8a8ab0b246dc81120146dc8184b10148', '性别', 'admin', '2014-06-27 16:46:54', '管理员', 'sex', '', null, null, null, '0', 'sex', null, 'N', 'N', 'Y', 'Y', 'Y', '10', '', '', null, '3', '0', 'single', 'list', 'string', null, null, null, '8a8ab0b246dc81120146dc818484013c');
INSERT INTO `cgform_field` VALUES ('8a8ab0b246dc81120146dc8184b30149', '请假开始时间', 'admin', '2014-06-27 16:46:54', '管理员', '', '', null, null, null, '0', 'begindate', null, 'N', 'N', 'N', 'Y', 'Y', '0', '', '', null, '4', '0', 'group', 'date', 'Date', null, null, null, '8a8ab0b246dc81120146dc818484013c');
INSERT INTO `cgform_field` VALUES ('8a8ab0b246dc81120146dc8184b6014a', '请假结束时间', 'admin', '2014-06-27 16:46:54', '管理员', '', '', null, null, null, '0', 'enddate', null, 'N', 'N', 'N', 'Y', 'Y', '0', '', '', null, '5', '0', 'group', 'datetime', 'Date', null, null, null, '8a8ab0b246dc81120146dc818484013c');
INSERT INTO `cgform_field` VALUES ('8a8ab0b246dc81120146dc8184b8014b', '所属部门', 'admin', '2014-06-27 16:46:54', '管理员', 'id', 't_s_depart', 'departname', null, null, '0', 'hol_dept', null, 'N', 'N', 'N', 'Y', 'Y', '32', '', '', null, '7', '0', 'single', 'list', 'string', null, null, null, '8a8ab0b246dc81120146dc818484013c');
INSERT INTO `cgform_field` VALUES ('8a8ab0b246dc81120146dc8184ba014c', '请假原因', 'admin', '2014-06-27 16:46:54', '管理员', '', '', null, null, null, '0', 'hol_reson', null, 'N', 'N', 'N', 'Y', 'Y', '255', '', '', null, '8', '0', 'single', 'text', 'string', null, null, null, '8a8ab0b246dc81120146dc818484013c');
INSERT INTO `cgform_field` VALUES ('8a8ab0b246dc81120146dc8184bc014d', '部门审批人', 'admin', '2014-06-27 16:46:54', '管理员', '', '', null, null, null, '0', 'dep_leader', null, 'N', 'N', 'N', 'Y', 'Y', '20', '', '', null, '9', '0', 'single', 'text', 'string', null, null, null, '8a8ab0b246dc81120146dc818484013c');
INSERT INTO `cgform_field` VALUES ('8a8ab0b246dc81120146dc8184bd014e', '部门审批意见', 'admin', '2014-06-27 16:46:54', '管理员', '', '', null, null, null, '0', 'content', null, 'N', 'N', 'N', 'Y', 'Y', '255', '', '', null, '10', '0', 'single', 'text', 'string', null, null, null, '8a8ab0b246dc81120146dc818484013c');
INSERT INTO `cgform_field` VALUES ('8a8ab0b246dc81120146dc8184bf014f', '请假天数', 'admin', '2014-06-27 16:46:54', '管理员', '', '', null, null, null, '120', 'day_num', null, 'N', 'Y', 'N', 'Y', 'Y', '10', '', '', null, '6', '0', 'single', 'text', 'int', null, null, null, '8a8ab0b246dc81120146dc818484013c');
INSERT INTO `cgform_field` VALUES ('8a8ab0b246dc81120146dc8184cb0150', '主键', 'admin', '2014-06-27 16:46:54', '管理员', '', '', null, null, null, '0', 'id', null, 'Y', 'N', 'N', 'N', 'N', '36', '', '', null, '0', '0', 'single', 'text', 'string', null, null, null, '8a8ab0b246dc81120146dc818486013d');
INSERT INTO `cgform_field` VALUES ('8a8ab0b246dc81120146dc8184cd0151', '客户名', 'admin', '2014-06-27 16:46:54', '管理员', '', '', null, null, null, '0', 'name', null, 'N', 'Y', 'Y', 'Y', 'Y', '32', '', '', null, '1', '0', 'single', 'text', 'string', null, null, null, '8a8ab0b246dc81120146dc818486013d');
INSERT INTO `cgform_field` VALUES ('8a8ab0b246dc81120146dc8184cf0152', '单价', 'admin', '2014-06-27 16:46:54', '管理员', '', '', null, null, null, '0', 'money', null, 'N', 'Y', 'Y', 'Y', 'Y', '10', '', '', null, '2', '2', 'group', 'text', 'double', null, null, null, '8a8ab0b246dc81120146dc818486013d');
INSERT INTO `cgform_field` VALUES ('8a8ab0b246dc81120146dc8184d10153', '外键', 'admin', '2014-06-27 16:46:54', '管理员', '', '', null, null, null, '120', 'fk_id', null, 'N', 'N', 'Y', 'N', 'N', '36', 'id', 'jform_order_main', null, '5', '0', 'single', 'text', 'string', null, null, null, '8a8ab0b246dc81120146dc818486013d');
INSERT INTO `cgform_field` VALUES ('8a8ab0b246dc81120146dc8184d40154', '电话', 'admin', '2014-06-27 16:46:54', '管理员', '', '', null, null, null, '120', 'telphone', null, 'N', 'Y', 'Y', 'Y', 'Y', '32', '', '', null, '4', '0', 'single', 'text', 'string', null, null, null, '8a8ab0b246dc81120146dc818486013d');
INSERT INTO `cgform_field` VALUES ('8a8ab0b246dc81120146dc8184d60155', '性别', 'admin', '2014-06-27 16:46:54', '管理员', 'sex', '', null, null, null, '120', 'sex', null, 'N', 'Y', 'Y', 'Y', 'Y', '4', '', '', null, '3', '0', 'single', 'select', 'string', null, null, null, '8a8ab0b246dc81120146dc818486013d');
INSERT INTO `cgform_field` VALUES ('8a8ab0b246dc81120146dc8184da0156', '主键', 'admin', '2014-06-27 16:46:54', '管理员', '', '', null, null, null, '120', 'id', null, 'Y', 'N', 'N', 'N', 'N', '36', '', '', null, '0', '0', 'single', 'checkbox', 'string', null, null, null, '8a8ab0b246dc81120146dc818488013e');
INSERT INTO `cgform_field` VALUES ('8a8ab0b246dc81120146dc8184dc0157', '航班号', 'admin', '2014-06-27 16:46:54', '管理员', '', '', null, null, null, '120', 'ticket_code', null, 'N', 'N', 'Y', 'Y', 'Y', '100', '', '', null, '1', '0', 'single', 'text', 'string', null, null, null, '8a8ab0b246dc81120146dc818488013e');
INSERT INTO `cgform_field` VALUES ('8a8ab0b246dc81120146dc8184df0158', '航班时间', 'admin', '2014-06-27 16:46:54', '管理员', '', '', null, null, null, '120', 'tickect_date', null, 'N', 'N', 'Y', 'Y', 'Y', '10', '', '', null, '2', '0', 'single', 'datetime', 'Date', null, null, null, '8a8ab0b246dc81120146dc818488013e');
INSERT INTO `cgform_field` VALUES ('8a8ab0b246dc81120146dc8184e10159', '外键', 'admin', '2014-06-27 16:46:54', '管理员', '', '', null, null, null, '120', 'fck_id', null, 'N', 'N', 'N', 'N', 'N', '36', 'id', 'jform_order_main', null, '3', '0', 'single', 'text', 'string', null, null, null, '8a8ab0b246dc81120146dc818488013e');
INSERT INTO `cgform_field` VALUES ('8a8ab0b246dc81120146dc8184e7015a', '主键', 'admin', '2014-06-27 16:46:54', '管理员', '', '', null, null, null, '0', 'id', null, 'Y', 'N', 'N', 'N', 'N', '36', '', '', null, '0', '0', 'single', 'text', 'string', null, null, null, '8a8ab0b246dc81120146dc81848b013f');
INSERT INTO `cgform_field` VALUES ('8a8ab0b246dc81120146dc8184ea015b', '机构合计', 'admin', '2014-06-27 16:46:54', '管理员', '', '', null, null, null, '0', 'a', null, 'N', 'N', 'Y', 'Y', 'Y', '10', '', '', null, '1', '2', 'group', 'text', 'double', null, null, null, '8a8ab0b246dc81120146dc81848b013f');
INSERT INTO `cgform_field` VALUES ('8a8ab0b246dc81120146dc8184ec015c', '行政小计', 'admin', '2014-06-27 16:46:54', '管理员', '', '', null, null, null, '0', 'b1', null, 'N', 'N', 'N', 'Y', 'Y', '10', '', '', null, '2', '2', 'group', 'text', 'double', null, null, null, '8a8ab0b246dc81120146dc81848b013f');
INSERT INTO `cgform_field` VALUES ('8a8ab0b246dc81120146dc8184ee015d', '行政省', 'admin', '2014-06-27 16:46:54', '管理员', '', '', null, null, null, '0', 'b11', null, 'N', 'N', 'N', 'Y', 'Y', '100', '', '', null, '3', '0', 'group', 'text', 'string', null, null, null, '8a8ab0b246dc81120146dc81848b013f');
INSERT INTO `cgform_field` VALUES ('8a8ab0b246dc81120146dc8184f0015e', '行政市', 'admin', '2014-06-27 16:46:54', '管理员', '', '', null, null, null, '0', 'b12', null, 'N', 'N', 'N', 'Y', 'Y', '100', '', '', null, '4', '0', 'group', 'text', 'string', null, null, null, '8a8ab0b246dc81120146dc81848b013f');
INSERT INTO `cgform_field` VALUES ('8a8ab0b246dc81120146dc8184f3015f', '行政县', 'admin', '2014-06-27 16:46:54', '管理员', '', '', null, null, null, '0', 'b13', null, 'N', 'N', 'N', 'Y', 'Y', '100', '', '', null, '5', '0', 'single', 'text', 'string', null, null, null, '8a8ab0b246dc81120146dc81848b013f');
INSERT INTO `cgform_field` VALUES ('8a8ab0b246dc81120146dc8184f50160', '事业合计', 'admin', '2014-06-27 16:46:54', '管理员', '', '', null, null, null, '0', 'b2', null, 'N', 'N', 'N', 'Y', 'Y', '10', '', '', null, '6', '2', 'single', 'text', 'double', null, null, null, '8a8ab0b246dc81120146dc81848b013f');
INSERT INTO `cgform_field` VALUES ('8a8ab0b246dc81120146dc8184f80161', '参公小计', 'admin', '2014-06-27 16:46:54', '管理员', '', '', null, null, null, '0', 'b3', null, 'N', 'N', 'N', 'Y', 'Y', '10', '', '', null, '7', '2', 'single', 'text', 'double', null, null, null, '8a8ab0b246dc81120146dc81848b013f');
INSERT INTO `cgform_field` VALUES ('8a8ab0b246dc81120146dc8184fa0162', '参公省', 'admin', '2014-06-27 16:46:54', '管理员', '', '', null, null, null, '0', 'b31', null, 'N', 'N', 'N', 'Y', 'Y', '100', '', '', null, '8', '0', 'single', 'text', 'string', null, null, null, '8a8ab0b246dc81120146dc81848b013f');
INSERT INTO `cgform_field` VALUES ('8a8ab0b246dc81120146dc8184fc0163', '参公市', 'admin', '2014-06-27 16:46:54', '管理员', '', '', null, null, null, '0', 'b32', null, 'N', 'N', 'N', 'Y', 'Y', '100', '', '', null, '9', '0', 'single', 'text', 'string', null, null, null, '8a8ab0b246dc81120146dc81848b013f');
INSERT INTO `cgform_field` VALUES ('8a8ab0b246dc81120146dc8184fe0164', '参公县', 'admin', '2014-06-27 16:46:54', '管理员', '', '', null, null, null, '0', 'b33', null, 'N', 'N', 'N', 'Y', 'Y', '100', '', '', null, '10', '0', 'single', 'text', 'string', null, null, null, '8a8ab0b246dc81120146dc81848b013f');
INSERT INTO `cgform_field` VALUES ('8a8ab0b246dc81120146dc8185000165', '全额拨款', 'admin', '2014-06-27 16:46:54', '管理员', '', '', null, null, null, '0', 'c1', null, 'N', 'N', 'N', 'Y', 'Y', '10', '', '', null, '11', '2', 'single', 'text', 'double', null, null, null, '8a8ab0b246dc81120146dc81848b013f');
INSERT INTO `cgform_field` VALUES ('8a8ab0b246dc81120146dc8185030166', '差额拨款', 'admin', '2014-06-27 16:46:54', '管理员', '', '', null, null, null, '0', 'c2', null, 'N', 'N', 'N', 'Y', 'Y', '10', '', '', null, '12', '2', 'single', 'text', 'double', null, null, null, '8a8ab0b246dc81120146dc81848b013f');
INSERT INTO `cgform_field` VALUES ('8a8ab0b246dc81120146dc8185050167', '自收自支', 'admin', '2014-06-27 16:46:54', '管理员', '', '', null, null, null, '0', 'c3', null, 'N', 'N', 'N', 'Y', 'Y', '10', '', '', null, '13', '2', 'single', 'text', 'double', null, null, null, '8a8ab0b246dc81120146dc81848b013f');
INSERT INTO `cgform_field` VALUES ('8a8ab0b246dc81120146dc8185070168', '经费合计', 'admin', '2014-06-27 16:46:54', '管理员', '', '', null, null, null, '0', 'd', null, 'N', 'N', 'Y', 'Y', 'Y', '10', '', '', null, '14', '2', 'single', 'text', 'int', null, null, null, '8a8ab0b246dc81120146dc81848b013f');
INSERT INTO `cgform_field` VALUES ('8a8ab0b246dc81120146dc81850a0169', '机构资质', 'admin', '2014-06-27 16:46:54', '管理员', '', '', null, null, null, '0', 'd1', null, 'N', 'N', 'N', 'Y', 'Y', '1000', '', '', null, '15', '0', 'single', 'text', 'string', null, null, null, '8a8ab0b246dc81120146dc81848b013f');

-- ----------------------------
-- Table structure for `cgform_ftl`
-- ----------------------------
DROP TABLE IF EXISTS `cgform_ftl`;
CREATE TABLE `cgform_ftl` (
  `ID` varchar(32) NOT NULL,
  `CGFORM_ID` varchar(36) NOT NULL,
  `CGFORM_NAME` varchar(100) NOT NULL,
  `CREATE_BY` varchar(36) default NULL,
  `CREATE_DATE` datetime default NULL,
  `CREATE_NAME` varchar(32) default NULL,
  `FTL_CONTENT` longtext,
  `FTL_STATUS` varchar(50) default NULL,
  `FTL_VERSION` int(11) NOT NULL,
  `FTL_WORD_URL` varchar(200) default NULL,
  `UPDATE_BY` varchar(36) default NULL,
  `UPDATE_DATE` datetime default NULL,
  `UPDATE_NAME` varchar(32) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cgform_ftl
-- ----------------------------
INSERT INTO `cgform_ftl` VALUES ('402889f3489de53901489de5fe800001', '4028808848844fe2014884587ae60001', '12', 'admin', '2014-09-22 23:06:08', '管理员', '<html xmlns:m=\"http://schemas.microsoft.com/office/2004/12/omml\">\r\n<head>\r\n	<title></title>\r\n	<link href=\"plug-in/easyui/themes/default/easyui.css\" id=\"easyuiTheme\" rel=\"stylesheet\" type=\"text/css\" />\r\n	<link href=\"plug-in/easyui/themes/icon.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n	<link href=\"plug-in/accordion/css/accordion.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n	<link href=\"plug-in/Validform/css/style.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n	<link href=\"plug-in/Validform/css/tablefrom.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n	<style type=\"text/css\">body{font-size:12px;}table{border: 1px solid #000000;padding:0; margin:0 auto;border-collapse: collapse;width:100%;align:right;}td {border: 1px solid #000000;background: #fff;font-size:12px;padding: 3px 3px 3px 8px;color: #000000;word-break: keep-all;}\r\n	</style>\r\n</head>\r\n<script type=\"text/javascript\" src=\"plug-in/jquery/jquery-1.8.3.js\"></script><script type=\"text/javascript\" src=\"plug-in/tools/dataformat.js\"></script><script type=\"text/javascript\" src=\"plug-in/easyui/jquery.easyui.min.1.3.2.js\"></script><script type=\"text/javascript\" src=\"plug-in/easyui/locale/zh-cn.js\"></script><script type=\"text/javascript\" src=\"plug-in/tools/syUtil.js\"></script><script type=\"text/javascript\" src=\"plug-in/My97DatePicker/WdatePicker.js\"></script><script type=\"text/javascript\" src=\"plug-in/lhgDialog/lhgdialog.min.js\"></script><script type=\"text/javascript\" src=\"plug-in/tools/curdtools_zh-cn.js\"></script><script type=\"text/javascript\" src=\"plug-in/tools/easyuiextend.js\"></script><script type=\"text/javascript\" src=\"plug-in/Validform/js/Validform_v5.3.1_min_zh-cn.js\"></script><script type=\"text/javascript\" src=\"plug-in/Validform/js/Validform_Datatype_zh-cn.js\"></script><script type=\"text/javascript\" src=\"plug-in/Validform/js/datatype_zh-cn.js\"></script><script type=\"text/javascript\" src=\"plug-in/Validform/plugin/passwordStrength/passwordStrength-min.js\"></script><script type=\"text/javascript\">$(function(){$(\"#formobj\").Validform({tiptype:4,btnSubmit:\"#btn_sub\",btnReset:\"#btn_reset\",ajaxPost:true,usePlugin:{passwordstrength:{minLen:6,maxLen:18,trigger:function(obj,error){if(error){obj.parent().next().find(\".Validform_checktip\").show();obj.find(\".passwordStrength\").hide();}else{$(\".passwordStrength\").show();obj.parent().next().find(\".Validform_checktip\").hide();}}}},callback:function(data){var win = frameElement.api.opener;if(data.success==true){frameElement.api.close();win.tip(data.msg);}else{if(data.responseText==\'\'||data.responseText==undefined)$(\"#formobj\").html(data.msg);else $(\"#formobj\").html(data.responseText); return false;}win.reloadTable();}});});</script>\r\n<body>12</body>\r\n<script type=\"text/javascript\">${js_plug_in?if_exists}</script></html>\r\n', '0', '1', '', null, null, null);
INSERT INTO `cgform_ftl` VALUES ('402889f3489e434301489e44cc170001', '8a8ab0b246dc81120146dc818484013c', '1', 'admin', '2014-09-23 00:49:41', '管理员', '<html xmlns:m=\"http://schemas.microsoft.com/office/2004/12/omml\">\r\n<head>\r\n	<title></title>\r\n	<link href=\"plug-in/easyui/themes/default/easyui.css\" id=\"easyuiTheme\" rel=\"stylesheet\" type=\"text/css\" />\r\n	<link href=\"plug-in/easyui/themes/icon.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n	<link href=\"plug-in/accordion/css/accordion.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n	<link href=\"plug-in/Validform/css/style.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n	<link href=\"plug-in/Validform/css/tablefrom.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n	<style type=\"text/css\">body{font-size:12px;}table{border: 1px solid #000000;padding:0; margin:0 auto;border-collapse: collapse;width:100%;align:right;}td {border: 1px solid #000000;background: #fff;font-size:12px;padding: 3px 3px 3px 8px;color: #000000;word-break: keep-all;}\r\n	</style>\r\n</head>\r\n<script type=\"text/javascript\" src=\"plug-in/jquery/jquery-1.8.3.js\"></script><script type=\"text/javascript\" src=\"plug-in/tools/dataformat.js\"></script><script type=\"text/javascript\" src=\"plug-in/easyui/jquery.easyui.min.1.3.2.js\"></script><script type=\"text/javascript\" src=\"plug-in/easyui/locale/zh-cn.js\"></script><script type=\"text/javascript\" src=\"plug-in/tools/syUtil.js\"></script><script type=\"text/javascript\" src=\"plug-in/My97DatePicker/WdatePicker.js\"></script><script type=\"text/javascript\" src=\"plug-in/lhgDialog/lhgdialog.min.js\"></script><script type=\"text/javascript\" src=\"plug-in/tools/curdtools_zh-cn.js\"></script><script type=\"text/javascript\" src=\"plug-in/tools/easyuiextend.js\"></script><script type=\"text/javascript\" src=\"plug-in/Validform/js/Validform_v5.3.1_min_zh-cn.js\"></script><script type=\"text/javascript\" src=\"plug-in/Validform/js/Validform_Datatype_zh-cn.js\"></script><script type=\"text/javascript\" src=\"plug-in/Validform/js/datatype_zh-cn.js\"></script><script type=\"text/javascript\" src=\"plug-in/Validform/plugin/passwordStrength/passwordStrength-min.js\"></script><script type=\"text/javascript\">$(function(){$(\"#formobj\").Validform({tiptype:4,btnSubmit:\"#btn_sub\",btnReset:\"#btn_reset\",ajaxPost:true,usePlugin:{passwordstrength:{minLen:6,maxLen:18,trigger:function(obj,error){if(error){obj.parent().next().find(\".Validform_checktip\").show();obj.find(\".passwordStrength\").hide();}else{$(\".passwordStrength\").show();obj.parent().next().find(\".Validform_checktip\").hide();}}}},callback:function(data){var win = frameElement.api.opener;if(data.success==true){frameElement.api.close();win.tip(data.msg);}else{if(data.responseText==\'\'||data.responseText==undefined)$(\"#formobj\").html(data.msg);else $(\"#formobj\").html(data.responseText); return false;}win.reloadTable();}});});</script>\r\n<body>\r\n<p align=\"center\" class=\"MsoNormal\" style=\"text-align:center;line-height:200%\"><span style=\"font-size:22.0pt;line-height:200%;font-family:宋体;mso-ascii-font-family:\r\nCalibri;mso-hansi-font-family:Calibri\">请假单</span></p>\r\n\r\n<form action=\"cgFormBuildController.do?saveOrUpdate\" id=\"formobj\" name=\"formobj\" method=\"post\"><input type=\"hidden\" name=\"tableName\" value=\"${tableName?if_exists?html}\" /><input type=\"hidden\" name=\"id\" value=\"${id?if_exists?html}\" /><input type=\"hidden\" id=\"btn_sub\" class=\"btn_sub\" />#{jform_hidden_field}<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" class=\"MsoNormalTable\" style=\"border: none;\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width: 106.5pt; border-color: black; border-width: 1pt; padding: 0cm 5.4pt;\" valign=\"top\" width=\"142\">\r\n			<p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"font-family:宋体;\r\n  mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri\">请假标题</span></p>\r\n			</td>\r\n			<td style=\"width: 106.5pt; border-top-color: black; border-right-color: black; border-bottom-color: black; border-top-width: 1pt; border-right-width: 1pt; border-bottom-width: 1pt; border-left-style: none; padding: 0cm 5.4pt;\" valign=\"top\" width=\"142\">\r\n			<p class=\"MsoNormal\" style=\"line-height:200%\"><span lang=\"EN-US\">#{title}</span></p>\r\n			</td>\r\n			<td style=\"width: 106.55pt; border-top-color: black; border-right-color: black; border-bottom-color: black; border-top-width: 1pt; border-right-width: 1pt; border-bottom-width: 1pt; border-left-style: none; padding: 0cm 5.4pt;\" valign=\"top\" width=\"142\">\r\n			<p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"font-family:宋体;\r\n  mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri\">请假开始时间</span></p>\r\n			</td>\r\n			<td style=\"width: 106.55pt; border-top-color: black; border-right-color: black; border-bottom-color: black; border-top-width: 1pt; border-right-width: 1pt; border-bottom-width: 1pt; border-left-style: none; padding: 0cm 5.4pt;\" valign=\"top\" width=\"142\">\r\n			<p class=\"MsoNormal\" style=\"line-height:200%\"><span lang=\"EN-US\">#{begindate}</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width: 106.5pt; border-right-color: black; border-bottom-color: black; border-left-color: black; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;\" valign=\"top\" width=\"142\">\r\n			<p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"font-family:宋体;\r\n  mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri\">请假人</span></p>\r\n			</td>\r\n			<td style=\"width: 106.5pt; border-top-style: none; border-left-style: none; border-bottom-color: black; border-bottom-width: 1pt; border-right-color: black; border-right-width: 1pt; padding: 0cm 5.4pt;\" valign=\"top\" width=\"142\">\r\n			<p class=\"MsoNormal\" style=\"line-height:200%\"><span lang=\"EN-US\">#{people}</span></p>\r\n			</td>\r\n			<td style=\"width: 106.55pt; border-top-style: none; border-left-style: none; border-bottom-color: black; border-bottom-width: 1pt; border-right-color: black; border-right-width: 1pt; padding: 0cm 5.4pt;\" valign=\"top\" width=\"142\">\r\n			<p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"font-family:宋体;\r\n  mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri\">请假结束时间</span></p>\r\n			</td>\r\n			<td style=\"width: 106.55pt; border-top-style: none; border-left-style: none; border-bottom-color: black; border-bottom-width: 1pt; border-right-color: black; border-right-width: 1pt; padding: 0cm 5.4pt;\" valign=\"top\" width=\"142\">\r\n			<p class=\"MsoNormal\" style=\"line-height:200%\"><span lang=\"EN-US\">#{enddate}</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width: 106.5pt; border-right-color: black; border-bottom-color: black; border-left-color: black; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;\" valign=\"top\" width=\"142\">\r\n			<p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"font-family:宋体;\r\n  mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri\">性别</span></p>\r\n			</td>\r\n			<td style=\"width: 106.5pt; border-top-style: none; border-left-style: none; border-bottom-color: black; border-bottom-width: 1pt; border-right-color: black; border-right-width: 1pt; padding: 0cm 5.4pt;\" valign=\"top\" width=\"142\">\r\n			<p class=\"MsoNormal\" style=\"line-height:200%\"><span lang=\"EN-US\">#{sex}</span></p>\r\n			</td>\r\n			<td style=\"width: 106.55pt; border-top-style: none; border-left-style: none; border-bottom-color: black; border-bottom-width: 1pt; border-right-color: black; border-right-width: 1pt; padding: 0cm 5.4pt;\" valign=\"top\" width=\"142\">\r\n			<p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"font-family:宋体;\r\n  mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri\">所属部门</span></p>\r\n			</td>\r\n			<td style=\"width: 106.55pt; border-top-style: none; border-left-style: none; border-bottom-color: black; border-bottom-width: 1pt; border-right-color: black; border-right-width: 1pt; padding: 0cm 5.4pt;\" valign=\"top\" width=\"142\">\r\n			<p class=\"MsoNormal\" style=\"line-height:200%\"><span lang=\"EN-US\">#{hol_dept}</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width: 106.5pt; border-right-color: black; border-bottom-color: black; border-left-color: black; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;\" valign=\"top\" width=\"142\">\r\n			<p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"font-family:宋体;\r\n  mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri\">请假原因</span></p>\r\n			</td>\r\n			<td colspan=\"3\" style=\"width: 319.6pt; border-top-style: none; border-left-style: none; border-bottom-color: black; border-bottom-width: 1pt; border-right-color: black; border-right-width: 1pt; padding: 0cm 5.4pt;\" valign=\"top\" width=\"426\">\r\n			<p class=\"MsoNormal\" style=\"line-height:200%\"><span lang=\"EN-US\">#{hol_reson}</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width: 106.5pt; border-right-color: black; border-bottom-color: black; border-left-color: black; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;\" valign=\"top\" width=\"142\">\r\n			<p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"font-family:宋体;\r\n  mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri\">部门审批人</span></p>\r\n			</td>\r\n			<td colspan=\"3\" style=\"width: 319.6pt; border-top-style: none; border-left-style: none; border-bottom-color: black; border-bottom-width: 1pt; border-right-color: black; border-right-width: 1pt; padding: 0cm 5.4pt;\" valign=\"top\" width=\"426\">\r\n			<p class=\"MsoNormal\" style=\"line-height:200%\"><span lang=\"EN-US\">#{dep_leader}</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width: 106.5pt; border-right-color: black; border-bottom-color: black; border-left-color: black; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;\" valign=\"top\" width=\"142\">\r\n			<p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"font-family:宋体;\r\n  mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri\">部门审批意见</span></p>\r\n			</td>\r\n			<td colspan=\"3\" style=\"width: 319.6pt; border-top-style: none; border-left-style: none; border-bottom-color: black; border-bottom-width: 1pt; border-right-color: black; border-right-width: 1pt; padding: 0cm 5.4pt;\" valign=\"top\" width=\"426\">\r\n			<p class=\"MsoNormal\" style=\"line-height:200%\"><span lang=\"EN-US\">#{content}</span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table></form>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-US\">&nbsp;</span></p>\r\n</body>\r\n<script type=\"text/javascript\">${js_plug_in?if_exists}</script></html>\r\n', '0', '1', '', 'admin', '2014-09-23 00:50:56', '管理员');
INSERT INTO `cgform_ftl` VALUES ('402889f3489e434301489e4517400002', '8a8ab0b246dc81120146dc818484013c', '2', 'admin', '2014-09-23 00:50:01', '管理员', '<html xmlns:m=\"http://schemas.microsoft.com/office/2004/12/omml\">\r\n<head>\r\n	<title></title>\r\n	<link href=\"plug-in/easyui/themes/default/easyui.css\" id=\"easyuiTheme\" rel=\"stylesheet\" type=\"text/css\" />\r\n	<link href=\"plug-in/easyui/themes/icon.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n	<link href=\"plug-in/accordion/css/accordion.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n	<link href=\"plug-in/Validform/css/style.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n	<link href=\"plug-in/Validform/css/tablefrom.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n	<style type=\"text/css\">body{font-size:12px;}table{border: 1px solid #000000;padding:0; margin:0 auto;border-collapse: collapse;width:100%;align:right;}td {border: 1px solid #000000;background: #fff;font-size:12px;padding: 3px 3px 3px 8px;color: #000000;word-break: keep-all;}\r\n	</style>\r\n</head>\r\n<script type=\"text/javascript\" src=\"plug-in/jquery/jquery-1.8.3.js\"></script><script type=\"text/javascript\" src=\"plug-in/tools/dataformat.js\"></script><script type=\"text/javascript\" src=\"plug-in/easyui/jquery.easyui.min.1.3.2.js\"></script><script type=\"text/javascript\" src=\"plug-in/easyui/locale/zh-cn.js\"></script><script type=\"text/javascript\" src=\"plug-in/tools/syUtil.js\"></script><script type=\"text/javascript\" src=\"plug-in/My97DatePicker/WdatePicker.js\"></script><script type=\"text/javascript\" src=\"plug-in/lhgDialog/lhgdialog.min.js\"></script><script type=\"text/javascript\" src=\"plug-in/tools/curdtools_zh-cn.js\"></script><script type=\"text/javascript\" src=\"plug-in/tools/easyuiextend.js\"></script><script type=\"text/javascript\" src=\"plug-in/Validform/js/Validform_v5.3.1_min_zh-cn.js\"></script><script type=\"text/javascript\" src=\"plug-in/Validform/js/Validform_Datatype_zh-cn.js\"></script><script type=\"text/javascript\" src=\"plug-in/Validform/js/datatype_zh-cn.js\"></script><script type=\"text/javascript\" src=\"plug-in/Validform/plugin/passwordStrength/passwordStrength-min.js\"></script><script type=\"text/javascript\">$(function(){$(\"#formobj\").Validform({tiptype:4,btnSubmit:\"#btn_sub\",btnReset:\"#btn_reset\",ajaxPost:true,usePlugin:{passwordstrength:{minLen:6,maxLen:18,trigger:function(obj,error){if(error){obj.parent().next().find(\".Validform_checktip\").show();obj.find(\".passwordStrength\").hide();}else{$(\".passwordStrength\").show();obj.parent().next().find(\".Validform_checktip\").hide();}}}},callback:function(data){var win = frameElement.api.opener;if(data.success==true){frameElement.api.close();win.tip(data.msg);}else{if(data.responseText==\'\'||data.responseText==undefined)$(\"#formobj\").html(data.msg);else $(\"#formobj\").html(data.responseText); return false;}win.reloadTable();}});});</script>\r\n<body>\r\n<p align=\"center\" class=\"MsoNormal\" style=\"text-align:center;line-height:200%\"><span style=\"font-size:22.0pt;line-height:200%;font-family:宋体;mso-ascii-font-family:\r\nCalibri;mso-hansi-font-family:Calibri\">请假单</span></p>\r\n\r\n<form action=\"cgFormBuildController.do?saveOrUpdate\" id=\"formobj\" name=\"formobj\" method=\"post\"><input type=\"hidden\" name=\"tableName\" value=\"${tableName?if_exists?html}\" /><input type=\"hidden\" name=\"id\" value=\"${id?if_exists?html}\" /><input type=\"hidden\" id=\"btn_sub\" class=\"btn_sub\" />#{jform_hidden_field}<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" class=\"MsoNormalTable\" style=\"border: none;\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width: 106.5pt; border-color: black; border-width: 1pt; padding: 0cm 5.4pt;\" valign=\"top\" width=\"142\">\r\n			<p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"font-family:宋体;\r\n  mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri\">请假标题</span></p>\r\n			</td>\r\n			<td style=\"width: 106.5pt; border-top-color: black; border-right-color: black; border-bottom-color: black; border-top-width: 1pt; border-right-width: 1pt; border-bottom-width: 1pt; border-left-style: none; padding: 0cm 5.4pt;\" valign=\"top\" width=\"142\">\r\n			<p class=\"MsoNormal\" style=\"line-height:200%\"><span lang=\"EN-US\">#{title}</span></p>\r\n			</td>\r\n			<td style=\"width: 106.55pt; border-top-color: black; border-right-color: black; border-bottom-color: black; border-top-width: 1pt; border-right-width: 1pt; border-bottom-width: 1pt; border-left-style: none; padding: 0cm 5.4pt;\" valign=\"top\" width=\"142\">\r\n			<p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"font-family:宋体;\r\n  mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri\">请假开始时间</span></p>\r\n			</td>\r\n			<td style=\"width: 106.55pt; border-top-color: black; border-right-color: black; border-bottom-color: black; border-top-width: 1pt; border-right-width: 1pt; border-bottom-width: 1pt; border-left-style: none; padding: 0cm 5.4pt;\" valign=\"top\" width=\"142\">\r\n			<p class=\"MsoNormal\" style=\"line-height:200%\"><span lang=\"EN-US\">#{begindate}</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width: 106.5pt; border-right-color: black; border-bottom-color: black; border-left-color: black; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;\" valign=\"top\" width=\"142\">\r\n			<p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"font-family:宋体;\r\n  mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri\">请假人</span></p>\r\n			</td>\r\n			<td style=\"width: 106.5pt; border-top-style: none; border-left-style: none; border-bottom-color: black; border-bottom-width: 1pt; border-right-color: black; border-right-width: 1pt; padding: 0cm 5.4pt;\" valign=\"top\" width=\"142\">\r\n			<p class=\"MsoNormal\" style=\"line-height:200%\"><span lang=\"EN-US\">#{people}</span></p>\r\n			</td>\r\n			<td style=\"width: 106.55pt; border-top-style: none; border-left-style: none; border-bottom-color: black; border-bottom-width: 1pt; border-right-color: black; border-right-width: 1pt; padding: 0cm 5.4pt;\" valign=\"top\" width=\"142\">\r\n			<p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"font-family:宋体;\r\n  mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri\">请假结束时间</span></p>\r\n			</td>\r\n			<td style=\"width: 106.55pt; border-top-style: none; border-left-style: none; border-bottom-color: black; border-bottom-width: 1pt; border-right-color: black; border-right-width: 1pt; padding: 0cm 5.4pt;\" valign=\"top\" width=\"142\">\r\n			<p class=\"MsoNormal\" style=\"line-height:200%\"><span lang=\"EN-US\">#{enddate}</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width: 106.5pt; border-right-color: black; border-bottom-color: black; border-left-color: black; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;\" valign=\"top\" width=\"142\">\r\n			<p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"font-family:宋体;\r\n  mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri\">性别</span></p>\r\n			</td>\r\n			<td style=\"width: 106.5pt; border-top-style: none; border-left-style: none; border-bottom-color: black; border-bottom-width: 1pt; border-right-color: black; border-right-width: 1pt; padding: 0cm 5.4pt;\" valign=\"top\" width=\"142\">\r\n			<p class=\"MsoNormal\" style=\"line-height:200%\"><span lang=\"EN-US\">#{sex}</span></p>\r\n			</td>\r\n			<td style=\"width: 106.55pt; border-top-style: none; border-left-style: none; border-bottom-color: black; border-bottom-width: 1pt; border-right-color: black; border-right-width: 1pt; padding: 0cm 5.4pt;\" valign=\"top\" width=\"142\">\r\n			<p class=\"MsoNormal\" style=\"line-height:200%\"><span style=\"font-family:宋体;\r\n  mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri\">所属部门</span></p>\r\n			</td>\r\n			<td style=\"width: 106.55pt; border-top-style: none; border-left-style: none; border-bottom-color: black; border-bottom-width: 1pt; border-right-color: black; border-right-width: 1pt; padding: 0cm 5.4pt;\" valign=\"top\" width=\"142\">\r\n			<p class=\"MsoNormal\" style=\"line-height:200%\"><span lang=\"EN-US\">#{hol_dept}</span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table></form>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-US\">&nbsp;</span></p>\r\n</body>\r\n<script type=\"text/javascript\">${js_plug_in?if_exists}</script></html>\r\n', '1', '2', '', 'admin', '2014-11-26 22:53:06', '管理员');
INSERT INTO `cgform_ftl` VALUES ('402889f548bffc650148c0033ed00008', '8a8ab0b246dc81120146dc818484013c', '123', 'admin', '2014-09-29 14:05:11', '管理员', '<html xmlns:m=\"http://schemas.microsoft.com/office/2004/12/omml\">\r\n<head>\r\n	<title></title>\r\n	<link href=\"plug-in/easyui/themes/default/easyui.css\" id=\"easyuiTheme\" rel=\"stylesheet\" type=\"text/css\" />\r\n	<link href=\"plug-in/easyui/themes/icon.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n	<link href=\"plug-in/accordion/css/accordion.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n	<link href=\"plug-in/Validform/css/style.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n	<link href=\"plug-in/Validform/css/tablefrom.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n	<style type=\"text/css\">body{font-size:12px;}table{border: 1px solid #000000;padding:0; margin:0 auto;border-collapse: collapse;width:100%;align:right;}td {border: 1px solid #000000;background: #fff;font-size:12px;padding: 3px 3px 3px 8px;color: #000000;word-break: keep-all;}\r\n	</style>\r\n</head>\r\n<script type=\"text/javascript\" src=\"plug-in/jquery/jquery-1.8.3.js\"></script><script type=\"text/javascript\" src=\"plug-in/tools/dataformat.js\"></script><script type=\"text/javascript\" src=\"plug-in/easyui/jquery.easyui.min.1.3.2.js\"></script><script type=\"text/javascript\" src=\"plug-in/easyui/locale/zh-cn.js\"></script><script type=\"text/javascript\" src=\"plug-in/tools/syUtil.js\"></script><script type=\"text/javascript\" src=\"plug-in/My97DatePicker/WdatePicker.js\"></script><script type=\"text/javascript\" src=\"plug-in/lhgDialog/lhgdialog.min.js\"></script><script type=\"text/javascript\" src=\"plug-in/tools/curdtools_zh-cn.js\"></script><script type=\"text/javascript\" src=\"plug-in/tools/easyuiextend.js\"></script><script type=\"text/javascript\" src=\"plug-in/Validform/js/Validform_v5.3.1_min_zh-cn.js\"></script><script type=\"text/javascript\" src=\"plug-in/Validform/js/Validform_Datatype_zh-cn.js\"></script><script type=\"text/javascript\" src=\"plug-in/Validform/js/datatype_zh-cn.js\"></script><script type=\"text/javascript\" src=\"plug-in/Validform/plugin/passwordStrength/passwordStrength-min.js\"></script><script type=\"text/javascript\">$(function(){$(\"#formobj\").Validform({tiptype:4,btnSubmit:\"#btn_sub\",btnReset:\"#btn_reset\",ajaxPost:true,usePlugin:{passwordstrength:{minLen:6,maxLen:18,trigger:function(obj,error){if(error){obj.parent().next().find(\".Validform_checktip\").show();obj.find(\".passwordStrength\").hide();}else{$(\".passwordStrength\").show();obj.parent().next().find(\".Validform_checktip\").hide();}}}},callback:function(data){if(data.success==true){if(!neibuClickFlag){var win = frameElement.api.opener;frameElement.api.close();win.tip(data.msg);win.reloadTable();}else {alert(data.msg)}}else{if(data.responseText==\'\'||data.responseText==undefined)$(\"#formobj\").html(data.msg);else $(\"#formobj\").html(data.responseText); return false;}if(!neibuClickFlag){var win = frameElement.api.opener;win.reloadTable();}}});});</script>\r\n<body>123\r\n<div align=\"center\" id=\"sub_tr\" style=\"display: none;\"><input class=\"ui_state_highlight\" onclick=\"neibuClick()\" type=\"button\" value=\"提交\" /></div>\r\n</body>\r\n<script type=\"text/javascript\">$(function(){if(location.href.indexOf(\"mode=read\")!=-1){$(\'#formobj\').find(\':input\').attr(\'disabled\',\'disabled\');}if(location.href.indexOf(\"mode=onbutton\")!=-1){$(\"#sub_tr\").show();} });var neibuClickFlag = false; function neibuClick() {neibuClickFlag = true;$(\'#btn_sub\').trigger(\'click\');}</script><script type=\"text/javascript\">${js_plug_in?if_exists}</script></html>\r\n', '0', '3', '', 'admin', '2014-11-26 22:53:04', '管理员');

-- ----------------------------
-- Table structure for `cgform_head`
-- ----------------------------
DROP TABLE IF EXISTS `cgform_head`;
CREATE TABLE `cgform_head` (
  `id` varchar(32) NOT NULL,
  `content` varchar(200) NOT NULL,
  `create_by` varchar(32) default NULL,
  `create_date` datetime default NULL,
  `create_name` varchar(32) default NULL,
  `is_checkbox` varchar(5) NOT NULL,
  `is_dbsynch` varchar(20) NOT NULL,
  `is_pagination` varchar(5) NOT NULL,
  `is_tree` varchar(5) NOT NULL,
  `jform_pk_sequence` varchar(200) default NULL,
  `jform_pk_type` varchar(100) default NULL,
  `jform_type` int(11) NOT NULL,
  `jform_version` varchar(10) NOT NULL,
  `querymode` varchar(10) NOT NULL,
  `relation_type` int(11) default NULL,
  `sub_table_str` longtext,
  `tab_order` int(11) default NULL,
  `table_name` varchar(20) NOT NULL,
  `update_by` varchar(32) default NULL,
  `update_date` datetime default NULL,
  `update_name` varchar(32) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cgform_head
-- ----------------------------
INSERT INTO `cgform_head` VALUES ('402880884883eff40148840fdef30010', '业务SQL表', 'admin', '2014-09-17 22:41:45', '管理员', 'N', 'Y', 'Y', 'N', '', 'UUID', '1', '1', 'single', '0', null, null, 't_s_sms_sql', 'admin', '2014-09-17 22:42:03', '管理员');
INSERT INTO `cgform_head` VALUES ('402880884883eff401488414044c001b', '消息模本表', 'admin', '2014-09-17 22:46:17', '管理员', 'N', 'Y', 'Y', 'N', '', 'UUID', '1', '6', 'single', '0', null, null, 't_s_sms_template', 'admin', '2014-09-17 22:59:02', '管理员');
INSERT INTO `cgform_head` VALUES ('402880884883eff401488424f29c0030', '消息模板_业务SQL配置表', 'admin', '2014-09-17 23:04:47', '管理员', 'N', 'Y', 'Y', 'N', '', 'UUID', '1', '1', 'single', '0', null, null, 't_s_sms_template_sql', 'admin', '2014-09-17 23:04:52', '管理员');
INSERT INTO `cgform_head` VALUES ('4028808848844fe2014884587ae60001', '消息发送记录表', 'admin', '2014-09-18 00:01:04', '管理员', 'N', 'Y', 'Y', 'N', '', 'UUID', '1', '1', 'single', '0', null, null, 't_s_sms', 'admin', '2014-09-18 00:01:13', '管理员');
INSERT INTO `cgform_head` VALUES ('8a8ab0b246dc81120146dc81847e013b', '订单主信息', 'admin', '2014-06-27 16:46:54', '管理员', 'N', 'Y', 'Y', 'N', '', 'UUID', '2', '60', 'group', '0', 'jform_order_ticket,jform_order_customer', null, 'jform_order_main', 'admin', '2014-09-23 00:56:07', '管理员');
INSERT INTO `cgform_head` VALUES ('8a8ab0b246dc81120146dc818484013c', '请假单', 'admin', '2014-06-27 16:46:54', '管理员', 'N', 'Y', 'Y', 'N', null, 'UUID', '1', '57', 'group', '0', null, null, 'jform_leave', '8a8ab0b246dc81120146dc8181950052', '2014-08-21 14:02:44', 'admin');
INSERT INTO `cgform_head` VALUES ('8a8ab0b246dc81120146dc818486013d', '订单客户信息', 'admin', '2014-06-27 16:46:54', '管理员', 'Y', 'Y', 'Y', 'N', null, 'UUID', '3', '16', 'single', '0', null, null, 'jform_order_customer', 'admin', '2014-09-23 00:56:05', '管理员');
INSERT INTO `cgform_head` VALUES ('8a8ab0b246dc81120146dc818488013e', '订单机票信息', 'admin', '2014-06-27 16:46:54', '管理员', 'N', 'Y', 'Y', 'N', null, 'UUID', '3', '20', 'single', '0', null, null, 'jform_order_ticket', 'admin', '2014-09-23 00:56:07', '管理员');
INSERT INTO `cgform_head` VALUES ('8a8ab0b246dc81120146dc81848b013f', '价格认证机构统计表', 'admin', '2014-06-27 16:46:54', '管理员', 'N', 'N', 'Y', 'N', null, 'UUID', '1', '3', 'group', '0', null, null, 'jform_price1', null, null, null);

-- ----------------------------
-- Table structure for `cgform_uploadfiles`
-- ----------------------------
DROP TABLE IF EXISTS `cgform_uploadfiles`;
CREATE TABLE `cgform_uploadfiles` (
  `CGFORM_FIELD` varchar(100) NOT NULL,
  `CGFORM_ID` varchar(36) NOT NULL,
  `CGFORM_NAME` varchar(100) NOT NULL,
  `id` varchar(32) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_qwig8sn3okhvh4wye8nn8gdeg` (`id`),
  CONSTRAINT `FK_qwig8sn3okhvh4wye8nn8gdeg` FOREIGN KEY (`id`) REFERENCES `t_s_attachment` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cgform_uploadfiles
-- ----------------------------

-- ----------------------------
-- Table structure for `ck_editor`
-- ----------------------------
DROP TABLE IF EXISTS `ck_editor`;
CREATE TABLE `ck_editor` (
  `ID` varchar(32) NOT NULL,
  `CONTENTS` blob,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ck_editor
-- ----------------------------
INSERT INTO `ck_editor` VALUES ('8a8ab0b246dc81120146dc81847a013a', 0x3C68746D6C3E3C686561643E3C7469746C653E3C2F7469746C653E3C6C696E6B20687265663D27706C75672D696E2F6561737975692F7468656D65732F64656661756C742F6561737975692E637373272069643D276561737975695468656D65272072656C3D277374796C6573686565742720747970653D27746578742F63737327202F3E3C6C696E6B20687265663D27706C75672D696E2F6561737975692F7468656D65732F69636F6E2E637373272072656C3D277374796C6573686565742720747970653D27746578742F63737327202F3E3C6C696E6B20687265663D27706C75672D696E2F6163636F7264696F6E2F6373732F6163636F7264696F6E2E637373272072656C3D277374796C6573686565742720747970653D27746578742F63737327202F3E3C6C696E6B20687265663D27706C75672D696E2F56616C6964666F726D2F6373732F7374796C652E637373272072656C3D277374796C6573686565742720747970653D27746578742F63737327202F3E3C6C696E6B20687265663D27706C75672D696E2F56616C6964666F726D2F6373732F7461626C6566726F6D2E637373272072656C3D277374796C6573686565742720747970653D27746578742F63737327202F3E3C7374796C6520747970653D27746578742F637373273E626F64797B666F6E742D73697A653A313270783B7D7461626C65207B626F726465723A31707820736F6C696420233030303030303B626F726465722D636F6C6C617073653A20636F6C6C617073653B7D7464207B626F726465723A31707820736F6C696420233030303030303B6261636B67726F756E643A77686974653B666F6E742D73697A653A313270783B666F6E742D66616D696C793A20E696B0E5AE8BE4BD933B636F6C6F723A20233333333B3C2F7374796C653E3C2F686561643E3C626F64793E3C6469763E3C703EE99984E4BBB632EFBC9A3C2F703E3C6831207374796C653D27746578742D616C69676E3A63656E746572273E3C7370616E207374796C653D27666F6E742D73697A653A32347078273E3C7374726F6E673EE4BBB7E6A0BCE8AEA4E8AF81E4BABAE59198E7BB9FE8AEA1E8A1A83C2F7374726F6E673E3C2F7370616E3E3C2F68313E3C703EE5A1ABE68AA5E58D95E4BD8DEFBC88E79B96E7ABA0EFBC89EFBC9A3C696E707574206E616D653D276F72675F6E616D652720747970653D2774657874272076616C75653D27247B6F72675F6E616D653F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C703EE58D95E4BD8DE4BBA3E7A081E58FB7EFBC9A3C696E707574206E616D653D276E756D2720747970653D2774657874272076616C75653D27247B6E756D3F69665F6578697374733F68746D6C7D27202F3E20266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703BE58D95E4BD8DEFBC9AE4BABAE5A1AB266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B20E68AA5E697A5E69C9FEFBC9A266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B20E5B9B4266E6273703B266E6273703B20E69C88266E6273703B266E6273703B20E697A53C2F703E3C666F726D20616374696F6E3D276367466F726D4275696C64436F6E74726F6C6C65722E646F3F736176654F72557064617465272069643D27666F726D6F626A27206D6574686F643D27706F737427206E616D653D27666F726D6F626A273E3C696E707574206E616D653D277461626C654E616D652720747970653D2768696464656E272076616C75653D27247B7461626C654E616D653F69665F6578697374733F68746D6C7D27202F3E203C696E707574206E616D653D2769642720747970653D2768696464656E272076616C75653D27247B69643F69665F6578697374733F68746D6C7D27202F3E237B6A666F726D5F68696464656E5F6669656C647D3C696E70757420747970653D2768696464656E27202F3E3C703E266E6273703B3C2F703E3C7461626C6520626F726465723D2731272063656C6C70616464696E673D2730272063656C6C73706163696E673D273027207374796C653D2777696474683A313031367078273E3C74626F64793E3C74723E3C746420726F777370616E3D2734273E3C703E266E6273703B3C2F703E3C703E266E6273703B3C2F703E3C703EE59088E8AEA13C2F703E3C703E266E6273703B3C2F703E3C2F74643E3C746420636F6C7370616E3D27362720726F777370616E3D2732273E3C703E266E6273703B3C2F703E3C703EE4BABAE695B03C2F703E3C2F74643E3C746420636F6C7370616E3D27352720726F777370616E3D2732273E3C703E266E6273703B3C2F703E3C703EE5ADA6E58E863C2F703E3C2F74643E3C746420636F6C7370616E3D27342720726F777370616E3D2732273E3C703E266E6273703B3C2F703E3C703EE58F96E5BE97E79A84EFBC88E4B88AE5B297EFBC89E689A7E4B89AE8B584E6A0BC3C2F703E3C2F74643E3C746420636F6C7370616E3D2734273E3C703EE4B893E4B89AE68A80E69CAFE8818CE7A7B03C2F703E3C2F74643E3C2F74723E3C74723E3C746420636F6C7370616E3D2734273E3C703EEFBC88E7BB8FE6B58EE7B3BBE58897E38081E5B7A5E7A88BE7B3BBE58897EFBC893C2F703E3C2F74643E3C2F74723E3C74723E3C746420636F6C7370616E3D2733273E3C703EE59CA8E7BC96E4BABAE591983C2F703E3C2F74643E3C746420636F6C7370616E3D2732273E3C703EE88198E794A8E4BABAE591983C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EE4B8B4E697B628E5809FE794A829E4BABAE591983C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EE9AB98E4B8AD3C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EE5A4A7E4B8933C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EE69CACE7A7913C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EE7A094E7A9B6E7949F3C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EE585B6E5AE833C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EE4BBB7E6A0BC3C2F703E3C703EE989B4E8AF81E591983C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EE4BBB7E6A0BC3C2F703E3C703EE989B4E8AF81E5B8883C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EE5A48DE6A0B83C2F703E3C703EE8A381E5AE9AE591983C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EE585B6E5AE833C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EE5889DE7BAA73C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EE4B8ADE7BAA73C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EE9AB98E7BAA73C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EE585B6E5AE833C2F703E3C2F74643E3C2F74723E3C74723E3C74643E3C703EE69CACE58D95E4BD8D3C2F703E3C2F74643E3C746420636F6C7370616E3D2732273E3C703EE585B6E5AE833C2F703E3C2F74643E3C74643E3C703EE995BFE69C9F3C2F703E3C2F74643E3C74643E3C703EE79FADE69C9F3C2F703E3C2F74643E3C2F74723E3C74723E3C74643E3C703E41313C2F703E3C2F74643E3C74643E3C703E42313C2F703E3C2F74643E3C74643E3C703E42323C2F703E3C2F74643E3C746420636F6C7370616E3D2732273E3C703E42333C2F703E3C2F74643E3C74643E3C703E42343C2F703E3C2F74643E3C74643E3C703E42353C2F703E3C2F74643E3C74643E3C703E43313C2F703E3C2F74643E3C74643E3C703E43323C2F703E3C2F74643E3C74643E3C703E43333C2F703E3C2F74643E3C74643E3C703E43343C2F703E3C2F74643E3C74643E3C703E43353C2F703E3C2F74643E3C74643E3C703E44313C2F703E3C2F74643E3C74643E3C703E44323C2F703E3C2F74643E3C74643E3C703E44333C2F703E3C2F74643E3C74643E3C703E44343C2F703E3C2F74643E3C74643E3C703E45313C2F703E3C2F74643E3C74643E3C703E45323C2F703E3C2F74643E3C74643E3C703E45333C2F703E3C2F74643E3C74643E3C703E45343C2F703E3C2F74643E3C2F74723E3C74723E3C74643E3C703E3C696E707574206E616D653D276131272073697A653D27342720747970653D2774657874272076616C75653D27247B61313F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276231272073697A653D27342720747970653D2774657874272076616C75653D27247B62313F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276232272073697A653D27342720747970653D2774657874272076616C75653D27247B62323F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C746420636F6C7370616E3D2732273E3C703E3C696E707574206E616D653D276233272073697A653D27342720747970653D2774657874272076616C75653D27247B62333F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276234272073697A653D27342720747970653D2774657874272076616C75653D27247B62343F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276235272073697A653D27342720747970653D2774657874272076616C75653D27247B62353F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276331272073697A653D27342720747970653D2774657874272076616C75653D27247B63313F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276332272073697A653D27342720747970653D2774657874272076616C75653D27247B63323F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276333272073697A653D27342720747970653D2774657874272076616C75653D27247B63333F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276334272073697A653D27342720747970653D2774657874272076616C75653D27247B63343F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276335272073697A653D27342720747970653D2774657874272076616C75653D27247B63353F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276431272073697A653D27342720747970653D2774657874272076616C75653D27247B64313F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276432272073697A653D27342720747970653D2774657874272076616C75653D27247B64323F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276433272073697A653D27342720747970653D2774657874272076616C75653D27247B64333F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276434272073697A653D27342720747970653D2774657874272076616C75653D27247B64343F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276531272073697A653D27342720747970653D2774657874272076616C75653D27247B65313F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276532272073697A653D27342720747970653D2774657874272076616C75653D27247B65323F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276533272073697A653D27342720747970653D2774657874272076616C75653D27247B65333F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276534272073697A653D27342720747970653D2774657874272076616C75653D27247B65343F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C2F74723E3C74723E3C746420636F6C7370616E3D273230273E3C703E266E6273703B3C2F703E3C703EE5A1ABE68AA5E8AFB4E6988EEFBC9A3C2F703E3C703EE4B880E38081E59088E8AEA1EFBC8841EFBC89EFBC9AE5A1ABE68AA5E887B3E7BB9FE8AEA1E688AAE6ADA2E69C9FE79A84E69CACE69CBAE69E84E79A84E4BABAE59198E680BBE695B0E380823C2F703E3C703EE4BA8CE38081E4BABAE695B0EFBC9A3C2F703E3C703EE59CA8E7BC96E4BABAE59198EFBC9AE58886E588ABE68C89E785A7E4BBB7E6A0BCE8AEA4E8AF81E69CBAE69E84E7BC96E588B6E58685E58F8AE585B6E5AE83E585B7E69C89E4BBB7E6A0BCE4B8BBE7AEA1E983A8E997A8E7BC96E588B6E79A84E5AE9EE69C89E4BABAE695B0E5A1ABE68AA5E59CA84231E380814232E6A08FE58685E380823C2F703E3C703EE88198E794A8E4BABAE59198EFBC9AE68C89E785A7E7BB8FE4BBB7E6A0BCE4B8BBE7AEA1E983A8E997A8E68896E4BBB7E6A0BCE8AEA4E8AF81E69CBAE69E84E4BABAE4BA8BE983A8E997A8E8AEA4E58FAFE79A84E5B9B6E7ADBEE8AEA2E4B889E5B9B4E4BBA5E4B88AE79A84E5B7A5E4BD9CE59088E5908CE79A84E4BABAE59198EFBC884233EFBC89EFBC9BE4BBA5E58F8AE6B2A1E69C89E7BB8FE8BF87E4BBB7E6A0BCE4B8BBE7AEA1E983A8E997A8E68896E4BBB7E6A0BCE8AEA4E8AF81E69CBAE69E84E4BABAE4BA8BE983A8E997A8E8AEA4E58FAFE79A84E7ADBEE8AEA2E59088E5908CE5B091E4BA8EE4B889E5B9B4E79A84E4BABAE59198EFBC884234EFBC89E58886E588ABE69DA5E8BF9BE8A18CE7BB9FE8AEA1E380823C2F703E3C703EE4B8B4E697B6EFBC88E5809FE794A8EFBC89E4BABAE59198EFBC884235EFBC89EFBC9AE789B9E68C87E5A496E88198E79A84E4B8B4E697B6E5B7A5EFBC8CE68896E88085E5B7A5E4BD9CE585B3E7B3BBE4B88DE59CA8E69CACE58D95E4BD8DE4B894E697A0E995BFE69C9FE88198E794A8E59088E5908CE79A84E5809FE8B083E4BABAE59198E7AD89E380823C2F703E3C703EE4B889E38081E8A1A8E58685E59084E6A08FE79BAEE585B3E7B3BB3C2F703E3C703E413D42312B42322B42332B42342B42353D43312B43322B43332B43342B43353D44312B44322B44332B44343D45312B45322B45332B45343C2F703E3C2F74643E3C2F74723E3C2F74626F64793E3C2F7461626C653E3C2F666F726D3E3C2F6469763E3C2F626F64793E3C2F68746D6C3E);

-- ----------------------------
-- Table structure for `ck_finder`
-- ----------------------------
DROP TABLE IF EXISTS `ck_finder`;
CREATE TABLE `ck_finder` (
  `ID` varchar(32) NOT NULL,
  `ATTACHMENT` varchar(255) default NULL,
  `IMAGE` varchar(255) default NULL,
  `REMARK` longtext,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ck_finder
-- ----------------------------

-- ----------------------------
-- Table structure for `doc`
-- ----------------------------
DROP TABLE IF EXISTS `doc`;
CREATE TABLE `doc` (
  `ID` int(11) NOT NULL auto_increment,
  `DOCCONTENT` longblob,
  `DOCDATE` datetime default NULL,
  `DOCID` varchar(255) default NULL,
  `DOCTITLE` varchar(255) default NULL,
  `DOCTYPE` varchar(255) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of doc
-- ----------------------------

-- ----------------------------
-- Table structure for `jeecg_demo`
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_demo`;
CREATE TABLE `jeecg_demo` (
  `ID` varchar(32) NOT NULL,
  `AGE` int(11) default NULL,
  `BIRTHDAY` datetime default NULL,
  `content` varchar(255) default NULL,
  `create_date` datetime default NULL,
  `DEP_ID` varchar(255) default NULL,
  `EMAIL` varchar(255) default NULL,
  `MOBILE_PHONE` varchar(255) default NULL,
  `OFFICE_PHONE` varchar(255) default NULL,
  `SALARY` decimal(19,2) default NULL,
  `SEX` varchar(255) default NULL,
  `status` varchar(255) default NULL,
  `USER_NAME` varchar(255) NOT NULL,
  `CREATE_TIME` datetime default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_demo
-- ----------------------------
INSERT INTO `jeecg_demo` VALUES ('402880884884734201488474b3d00001', null, null, null, '2014-09-18 00:31:53', '402880e447e99cf10147e9a03b320003', '', '', '', null, '', '0', 'dsafsd', null);
INSERT INTO `jeecg_demo` VALUES ('8a8ab0b246dc81120146dc81860f016f', '12', '2014-02-14 00:00:00', null, null, '123', 'demo@jeecg.com', '13111111111', '66666666', '111111.00', '1', null, '小明', null);

-- ----------------------------
-- Table structure for `jeecg_demo_course`
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_demo_course`;
CREATE TABLE `jeecg_demo_course` (
  `ID` varchar(32) NOT NULL,
  `NAME` varchar(25) default NULL,
  `teacher_ID` varchar(32) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_g3jn8mfod69i7jfv5gnrcvgbx` (`teacher_ID`),
  CONSTRAINT `FK_g3jn8mfod69i7jfv5gnrcvgbx` FOREIGN KEY (`teacher_ID`) REFERENCES `jeecg_demo_teacher` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_demo_course
-- ----------------------------
INSERT INTO `jeecg_demo_course` VALUES ('8a8ab0b246dc81120146dc818512016c', '海贼王', '8a8ab0b246dc81120146dc81850f016b');

-- ----------------------------
-- Table structure for `jeecg_demo_student`
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_demo_student`;
CREATE TABLE `jeecg_demo_student` (
  `ID` varchar(32) NOT NULL,
  `BIRTHDAY` datetime default NULL,
  `NAME` varchar(32) default NULL,
  `SEX` varchar(1) default NULL,
  `COURSE_ID` varchar(32) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_r86q81koyocgod3cx6529hbpw` (`COURSE_ID`),
  CONSTRAINT `FK_r86q81koyocgod3cx6529hbpw` FOREIGN KEY (`COURSE_ID`) REFERENCES `jeecg_demo_course` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_demo_student
-- ----------------------------
INSERT INTO `jeecg_demo_student` VALUES ('8a8ab0b246dc81120146dc818516016d', null, '卓洛', '0', '8a8ab0b246dc81120146dc818512016c');
INSERT INTO `jeecg_demo_student` VALUES ('8a8ab0b246dc81120146dc818519016e', null, '山治 ', '0', '8a8ab0b246dc81120146dc818512016c');

-- ----------------------------
-- Table structure for `jeecg_demo_teacher`
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_demo_teacher`;
CREATE TABLE `jeecg_demo_teacher` (
  `ID` varchar(32) NOT NULL,
  `NAME` varchar(12) default NULL,
  `pic` varchar(255) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_demo_teacher
-- ----------------------------
INSERT INTO `jeecg_demo_teacher` VALUES ('8a8ab0b246dc81120146dc81850f016b', '路飞', 'upload/Teacher/pic3345280233.PNG');

-- ----------------------------
-- Table structure for `jeecg_matter_bom`
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_matter_bom`;
CREATE TABLE `jeecg_matter_bom` (
  `ID` varchar(32) NOT NULL,
  `address` varchar(255) default NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` decimal(21,6) NOT NULL,
  `productionDate` datetime default NULL,
  `quantity` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `unit` varchar(50) default NULL,
  `weight` varchar(50) default NULL,
  `parent_ID` varchar(32) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_fldfyrevj0li4hej5b2gu2q7w` (`parent_ID`),
  CONSTRAINT `FK_fldfyrevj0li4hej5b2gu2q7w` FOREIGN KEY (`parent_ID`) REFERENCES `jeecg_matter_bom` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_matter_bom
-- ----------------------------
INSERT INTO `jeecg_matter_bom` VALUES ('8a8ab0b246dc81120146dc8186230174', '广东深圳', '001', '电脑', '5000.000000', '2014-06-27 16:46:54', '5', '10', '台', '100', null);
INSERT INTO `jeecg_matter_bom` VALUES ('8a8ab0b246dc81120146dc8186260175', '上海', '001001', '主板', '800.000000', '2014-06-27 16:46:54', '6', '18', '个', '60', '8a8ab0b246dc81120146dc8186230174');

-- ----------------------------
-- Table structure for `jeecg_minidao`
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_minidao`;
CREATE TABLE `jeecg_minidao` (
  `ID` varchar(32) NOT NULL,
  `AGE` int(11) default NULL,
  `BIRTHDAY` datetime default NULL,
  `CONTENT` varchar(255) default NULL,
  `CREATE_TIME` datetime default NULL,
  `DEP_ID` varchar(255) default NULL,
  `EMAIL` varchar(255) default NULL,
  `MOBILE_PHONE` varchar(255) default NULL,
  `OFFICE_PHONE` varchar(255) default NULL,
  `SALARY` decimal(19,2) default NULL,
  `SEX` int(11) default NULL,
  `STATUS` varchar(255) default NULL,
  `USER_NAME` varchar(255) NOT NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_minidao
-- ----------------------------

-- ----------------------------
-- Table structure for `jeecg_order_custom`
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_order_custom`;
CREATE TABLE `jeecg_order_custom` (
  `ID` varchar(32) NOT NULL,
  `CREATE_DT` datetime default NULL,
  `CRTUSER` varchar(12) default NULL,
  `CRTUSER_NAME` varchar(10) default NULL,
  `DEL_DT` datetime default NULL,
  `DELFLAG` int(11) default NULL,
  `GO_ORDER_CODE` varchar(12) NOT NULL,
  `GOC_BUSS_CONTENT` varchar(33) default NULL,
  `GOC_CONTENT` varchar(66) default NULL,
  `GOC_CUS_NAME` varchar(16) default NULL,
  `GOC_IDCARD` varchar(18) default NULL,
  `GOC_PASSPORT_CODE` varchar(10) default NULL,
  `GOC_SEX` varchar(255) default NULL,
  `MODIFIER` varchar(12) default NULL,
  `MODIFIER_NAME` varchar(10) default NULL,
  `MODIFY_DT` datetime default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_order_custom
-- ----------------------------
INSERT INTO `jeecg_order_custom` VALUES ('8a8ab0b246dc81120146dc81861f0173', null, null, null, null, null, '11111AAA', null, null, '小明', null, null, '1', null, null, null);

-- ----------------------------
-- Table structure for `jeecg_order_main`
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_order_main`;
CREATE TABLE `jeecg_order_main` (
  `ID` varchar(32) NOT NULL,
  `CREATE_DT` datetime default NULL,
  `CRTUSER` varchar(12) default NULL,
  `CRTUSER_NAME` varchar(10) default NULL,
  `DEL_DT` datetime default NULL,
  `DELFLAG` int(11) default NULL,
  `GO_ALL_PRICE` decimal(10,2) default NULL,
  `GO_CONTACT_NAME` varchar(16) default NULL,
  `GO_CONTENT` varchar(66) default NULL,
  `GO_ORDER_CODE` varchar(12) NOT NULL,
  `GO_ORDER_COUNT` int(11) default NULL,
  `GO_RETURN_PRICE` decimal(10,2) default NULL,
  `GO_TELPHONE` varchar(11) default NULL,
  `GODER_TYPE` varchar(255) default NULL,
  `MODIFIER` varchar(12) default NULL,
  `MODIFIER_NAME` varchar(10) default NULL,
  `MODIFY_DT` datetime default NULL,
  `USERTYPE` varchar(255) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_order_main
-- ----------------------------
INSERT INTO `jeecg_order_main` VALUES ('8a8ab0b246dc81120146dc8186160171', null, null, null, null, null, '1111111.00', 'alex', '别放辣椒', '11111AAA', '1', '100.00', null, '1', null, null, null, '1');

-- ----------------------------
-- Table structure for `jeecg_order_product`
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_order_product`;
CREATE TABLE `jeecg_order_product` (
  `ID` varchar(32) NOT NULL,
  `CREATE_DT` datetime default NULL,
  `CRTUSER` varchar(12) default NULL,
  `CRTUSER_NAME` varchar(10) default NULL,
  `DEL_DT` datetime default NULL,
  `DELFLAG` int(11) default NULL,
  `GO_ORDER_CODE` varchar(12) NOT NULL,
  `GOP_CONTENT` varchar(66) default NULL,
  `GOP_COUNT` int(11) default NULL,
  `GOP_ONE_PRICE` decimal(10,2) default NULL,
  `GOP_PRODUCT_NAME` varchar(33) default NULL,
  `GOP_PRODUCT_TYPE` varchar(1) NOT NULL,
  `GOP_SUM_PRICE` decimal(10,2) default NULL,
  `MODIFIER` varchar(12) default NULL,
  `MODIFIER_NAME` varchar(10) default NULL,
  `MODIFY_DT` datetime default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_order_product
-- ----------------------------
INSERT INTO `jeecg_order_product` VALUES ('8a8ab0b246dc81120146dc81861c0172', null, null, null, null, null, '11111AAA', null, '1', '100.00', '最最美味的地锅鸡', '1', '100.00', null, null, null);

-- ----------------------------
-- Table structure for `jform_cgreport_head`
-- ----------------------------
DROP TABLE IF EXISTS `jform_cgreport_head`;
CREATE TABLE `jform_cgreport_head` (
  `ID` varchar(36) NOT NULL,
  `CGR_SQL` longtext NOT NULL,
  `CODE` varchar(36) NOT NULL,
  `CONTENT` longtext NOT NULL,
  `NAME` varchar(100) NOT NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jform_cgreport_head
-- ----------------------------

-- ----------------------------
-- Table structure for `jform_cgreport_item`
-- ----------------------------
DROP TABLE IF EXISTS `jform_cgreport_item`;
CREATE TABLE `jform_cgreport_item` (
  `ID` varchar(36) NOT NULL,
  `S_FLAG` varchar(2) default NULL,
  `S_MODE` varchar(10) default NULL,
  `CGRHEAD_ID` varchar(36) default NULL,
  `DICT_CODE` varchar(36) default NULL,
  `FIELD_HREF` varchar(120) default NULL,
  `FIELD_NAME` varchar(36) default NULL,
  `FIELD_TXT` longtext,
  `FIELD_TYPE` varchar(10) default NULL,
  `IS_SHOW` varchar(5) default NULL,
  `ORDER_NUM` int(11) default NULL,
  `REPLACE_VA` varchar(36) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jform_cgreport_item
-- ----------------------------

-- ----------------------------
-- Table structure for `jform_leave`
-- ----------------------------
DROP TABLE IF EXISTS `jform_leave`;
CREATE TABLE `jform_leave` (
  `id` varchar(36) NOT NULL,
  `title` varchar(50) NOT NULL COMMENT '请假标题',
  `people` varchar(20) NOT NULL COMMENT '请假人',
  `sex` varchar(10) NOT NULL COMMENT '性别',
  `begindate` datetime NOT NULL COMMENT '请假开始时间',
  `enddate` datetime NOT NULL COMMENT '请假结束时间',
  `day_num` int(11) default NULL COMMENT '请假天数',
  `hol_dept` varchar(32) NOT NULL COMMENT '所属部门',
  `hol_reson` varchar(255) NOT NULL COMMENT '请假原因',
  `dep_leader` varchar(20) NOT NULL COMMENT '部门审批人',
  `content` varchar(255) NOT NULL COMMENT '部门审批意见',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jform_leave
-- ----------------------------
INSERT INTO `jform_leave` VALUES ('402889f3489e1df901489e1df9150000', '12', '12', '0', '2014-09-26 00:00:00', '2014-09-26 00:07:00', null, '402880e447e99cf10147e9a03b320003', '12', '12', '12');
INSERT INTO `jform_leave` VALUES ('402889f3489e1df901489e1e02ad0001', '12', '12', '0', '2014-09-26 00:00:00', '2014-09-26 00:07:00', null, '402880e447e99cf10147e9a03b320003', '12', '12', '12');
INSERT INTO `jform_leave` VALUES ('402889f3489e4a5d01489e4a5da20000', '12', '12', '0', '2014-09-12 00:00:00', '2014-10-11 00:55:42', null, '402880e447e99cf10147e9a03b320003', '12', '12', '12');
INSERT INTO `jform_leave` VALUES ('402889f3489e4a5d01489e4bba1b0005', '122222', '李四', '0', '2014-10-04 00:00:00', '2014-09-23 00:57:12', '12', '402880e447e99cf10147e9a03b320003', '12', '12', '12');
INSERT INTO `jform_leave` VALUES ('402889fb486e894201486e8942180000', '12', '12', '0', '2014-09-19 00:00:00', '2014-09-13 18:22:36', null, '402880e447e99cf10147e9a03b320003', '12', '12', '12');
INSERT INTO `jform_leave` VALUES ('402889fb486e894201486e990d420003', '20', '20', '0', '2014-09-18 00:00:00', '2014-09-26 18:39:52', '2', '402880e447e99cf10147e9a03b320003', '2', '2', '2');

-- ----------------------------
-- Table structure for `jform_order_customer`
-- ----------------------------
DROP TABLE IF EXISTS `jform_order_customer`;
CREATE TABLE `jform_order_customer` (
  `id` varchar(36) NOT NULL,
  `name` varchar(32) default NULL COMMENT '客户名',
  `money` double default NULL COMMENT '单价',
  `sex` varchar(4) default NULL COMMENT '性别',
  `telphone` varchar(32) default NULL COMMENT '电话',
  `fk_id` varchar(36) NOT NULL COMMENT '外键',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jform_order_customer
-- ----------------------------
INSERT INTO `jform_order_customer` VALUES ('402889f3489e4a5d01489e4af0410002', '2', '2', '2', '2', '402889f3489e4a5d01489e4af0170001');

-- ----------------------------
-- Table structure for `jform_order_main`
-- ----------------------------
DROP TABLE IF EXISTS `jform_order_main`;
CREATE TABLE `jform_order_main` (
  `id` varchar(36) NOT NULL,
  `order_code` varchar(50) default NULL COMMENT '订单号',
  `order_date` datetime default NULL COMMENT '订单日期',
  `order_money` double default NULL COMMENT '订单金额',
  `content` varchar(255) default NULL COMMENT '备注',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jform_order_main
-- ----------------------------
INSERT INTO `jform_order_main` VALUES ('402889f3489e4a5d01489e4af0170001', '12', '2014-09-08 00:00:00', '12', '12');

-- ----------------------------
-- Table structure for `jform_order_ticket`
-- ----------------------------
DROP TABLE IF EXISTS `jform_order_ticket`;
CREATE TABLE `jform_order_ticket` (
  `id` varchar(36) NOT NULL,
  `ticket_code` varchar(100) NOT NULL COMMENT '航班号',
  `tickect_date` datetime NOT NULL COMMENT '航班时间',
  `fck_id` varchar(36) NOT NULL COMMENT '外键',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jform_order_ticket
-- ----------------------------
INSERT INTO `jform_order_ticket` VALUES ('402889f3489e4a5d01489e4af06b0003', '2', '2014-09-26 00:56:19', '402889f3489e4a5d01489e4af0170001');
INSERT INTO `jform_order_ticket` VALUES ('402889f3489e4a5d01489e4af08d0004', '12', '2014-09-16 00:56:15', '402889f3489e4a5d01489e4af0170001');

-- ----------------------------
-- Table structure for `jg_person`
-- ----------------------------
DROP TABLE IF EXISTS `jg_person`;
CREATE TABLE `jg_person` (
  `ID` varchar(32) NOT NULL,
  `AGE` int(11) default NULL,
  `BIRTHDAY` datetime default NULL,
  `CREATEDT` datetime default NULL,
  `NAME` varchar(255) NOT NULL,
  `SALARY` decimal(19,2) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jg_person
-- ----------------------------
INSERT INTO `jg_person` VALUES ('8a8ab0b246dc81120146dc8186130170', '10', '2014-06-27 16:46:54', '2014-06-27 16:46:54', '小红', '1000.00');

-- ----------------------------
-- Table structure for `optimistic_locking`
-- ----------------------------
DROP TABLE IF EXISTS `optimistic_locking`;
CREATE TABLE `optimistic_locking` (
  `ID` varchar(32) NOT NULL,
  `ACCOUNT` int(11) default NULL,
  `AGE` int(11) default NULL,
  `NAME` varchar(85) default NULL,
  `VER` int(11) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of optimistic_locking
-- ----------------------------

-- ----------------------------
-- Table structure for `t_finance`
-- ----------------------------
DROP TABLE IF EXISTS `t_finance`;
CREATE TABLE `t_finance` (
  `ID` varchar(32) NOT NULL,
  `APPROFILETYPE` varchar(255) default NULL,
  `BUYMONEY` float default NULL,
  `BUYPROJECTNO` varchar(255) default NULL,
  `BUYPROJECTORG` varchar(255) default NULL,
  `BUYUSE` varchar(255) default NULL,
  `BUYYEAR` varchar(255) default NULL,
  `CATEGORY` varchar(255) default NULL,
  `COLLECTORG` varchar(255) default NULL,
  `EXPENSEACCOUNT` varchar(255) default NULL,
  `HAPPENYEAR` int(11) default NULL,
  `MONEYAREA` varchar(255) default NULL,
  `MONEYSOURCE` varchar(255) default NULL,
  `MONEYTOTAL` float default NULL,
  `MONEYUSE` varchar(255) default NULL,
  `PAYTIME` datetime default NULL,
  `ZBWNO` varchar(255) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_finance
-- ----------------------------

-- ----------------------------
-- Table structure for `t_finance_files`
-- ----------------------------
DROP TABLE IF EXISTS `t_finance_files`;
CREATE TABLE `t_finance_files` (
  `id` varchar(32) NOT NULL,
  `financeId` varchar(32) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_ij2p74feypwcda4n0n96pyd10` (`financeId`),
  KEY `FK_28m7vvi0cy5r5keke68b6f7rt` (`id`),
  CONSTRAINT `FK_28m7vvi0cy5r5keke68b6f7rt` FOREIGN KEY (`id`) REFERENCES `t_s_attachment` (`ID`),
  CONSTRAINT `FK_ij2p74feypwcda4n0n96pyd10` FOREIGN KEY (`financeId`) REFERENCES `t_finance` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_finance_files
-- ----------------------------

-- ----------------------------
-- Table structure for `t_s_attachment`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_attachment`;
CREATE TABLE `t_s_attachment` (
  `ID` varchar(32) NOT NULL,
  `attachmentcontent` longblob,
  `attachmenttitle` varchar(100) default NULL,
  `businesskey` varchar(32) default NULL,
  `createdate` datetime default NULL,
  `extend` varchar(32) default NULL,
  `note` longtext,
  `realpath` varchar(100) default NULL,
  `subclassname` longtext,
  `swfpath` longtext,
  `BUSENTITYNAME` varchar(100) default NULL,
  `INFOTYPEID` varchar(32) default NULL,
  `USERID` varchar(32) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_mnq23hlc835n4ufgjl7nkn3bd` (`USERID`),
  CONSTRAINT `FK_mnq23hlc835n4ufgjl7nkn3bd` FOREIGN KEY (`USERID`) REFERENCES `t_s_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_attachment
-- ----------------------------
INSERT INTO `t_s_attachment` VALUES ('8a8ab0b246dc81120146dc81808a0009', null, 'JR079839867R90000001000', null, null, 'doc', null, 'JR079839867R90000001000', null, 'upload/files/20130719201109hDr31jP1.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('8a8ab0b246dc81120146dc81808e000a', null, 'JEECG平台协议', null, null, 'docx', null, 'JEECG平台协议', null, 'upload/files/20130719201156sYHjSFJj.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('8a8ab0b246dc81120146dc81808f000b', null, '分析JEECG与其他的开源项目的不足和优势', null, null, 'docx', null, '分析JEECG与其他的开源项目的不足和优势', null, 'upload/files/20130719201727ZLEX1OSf.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('8a8ab0b246dc81120146dc818091000c', null, 'DMS-T3第三方租赁业务接口开发说明', null, null, 'docx', null, 'DMS-T3第三方租赁业务接口开发说明', null, 'upload/files/20130719201841LzcgqUek.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('8a8ab0b246dc81120146dc818092000d', null, 'SAP-需求说明书-金融服务公司-第三方租赁业务需求V1.7-研发', null, null, 'doc', null, 'SAP-需求说明书-金融服务公司-第三方租赁业务需求V1.7-研发', null, 'upload/files/20130719201925mkCrU47P.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('8a8ab0b246dc81120146dc818095000e', null, 'JEECG团队开发规范', null, null, 'txt', null, 'JEECG团队开发规范', null, 'upload/files/20130724103633fvOTwNSV.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('8a8ab0b246dc81120146dc818097000f', null, '第一模板', null, null, 'doc', null, '第一模板', null, 'upload/files/20130724104603pHDw4QUT.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('8a8ab0b246dc81120146dc8180980010', null, 'github入门使用教程', null, null, 'doc', null, 'github入门使用教程', null, 'upload/files/20130704200345EakUH3WB.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('8a8ab0b246dc81120146dc81809a0011', null, 'github入门使用教程', null, null, 'doc', null, 'github入门使用教程', null, 'upload/files/20130704200651IE8wPdZ4.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('8a8ab0b246dc81120146dc81809b0012', null, '（张代浩）-金融服务公司机构岗位职责与任职资格设置表(根据模板填写）', null, null, 'xlsx', null, '（张代浩）-金融服务公司机构岗位职责与任职资格设置表(根据模板填写）', null, 'upload/files/20130704201022KhdRW1Gd.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('8a8ab0b246dc81120146dc81809d0013', null, 'EIM201_CN', null, null, 'pdf', null, 'EIM201_CN', null, 'upload/files/20130704201046JVAkvvOt.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('8a8ab0b246dc81120146dc81809e0014', null, 'github入门使用教程', null, null, 'doc', null, 'github入门使用教程', null, 'upload/files/20130704201116Z8NhEK57.swf', null, null, null);
INSERT INTO `t_s_attachment` VALUES ('8a8ab0b246dc81120146dc8180a00015', null, 'JEECGUI标签库帮助文档v3.2', null, null, 'pdf', null, 'JEECGUI标签库帮助文档v3.2', null, 'upload/files/20130704201125DQg8hi2x.swf', null, null, null);

-- ----------------------------
-- Table structure for `t_s_base_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_base_user`;
CREATE TABLE `t_s_base_user` (
  `ID` varchar(32) NOT NULL,
  `activitiSync` smallint(6) default NULL,
  `browser` varchar(20) default NULL,
  `password` varchar(100) default NULL,
  `realname` varchar(50) default NULL,
  `signature` blob,
  `status` smallint(6) default NULL,
  `userkey` varchar(200) default NULL,
  `username` varchar(10) NOT NULL,
  `departid` varchar(32) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_15jh1g4iem1857546ggor42et` (`departid`),
  CONSTRAINT `FK_15jh1g4iem1857546ggor42et` FOREIGN KEY (`departid`) REFERENCES `t_s_depart` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_base_user
-- ----------------------------
INSERT INTO `t_s_base_user` VALUES ('8a8ab0b246dc81120146dc8181950052', null, null, 'c44b01947c9e6e3f', '管理员', null, '1', '管理员', 'admin', '8a8ab0b246dc81120146dc8180a20016');
INSERT INTO `t_s_base_user` VALUES ('8a8ab0b246dc81120146dc81819d0053', null, null, 'd47ca58189979651', '张代浩', null, '1', '普通用户', 'scott', '8a8ab0b246dc81120146dc8180bd0018');
INSERT INTO `t_s_base_user` VALUES ('8a8ab0b246dc81120146dc8181a10054', '0', null, 'f2322ec2fb9f40d1', '采购员', null, '1', '管理员', 'cgy', '8a8ab0b246dc81120146dc8180a20016');
INSERT INTO `t_s_base_user` VALUES ('8a8ab0b246dc81120146dc8181a60055', '1', null, 'a324509dc1a3089a', '采购审批员', null, '1', null, 'cgspy', '8a8ab0b246dc81120146dc8180a20016');

-- ----------------------------
-- Table structure for `t_s_category`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_category`;
CREATE TABLE `t_s_category` (
  `id` varchar(36) NOT NULL,
  `icon_id` varchar(32) default NULL COMMENT '图标地址',
  `code` varchar(32) NOT NULL COMMENT '类型编码',
  `name` varchar(32) NOT NULL COMMENT '类型名称',
  `create_name` varchar(50) NOT NULL COMMENT '创建人名称',
  `create_by` varchar(50) NOT NULL COMMENT '创建人登录名称',
  `create_date` datetime NOT NULL COMMENT '创建日期',
  `update_name` varchar(50) default NULL COMMENT '更新人名称',
  `update_by` varchar(50) default NULL COMMENT '更新人登录名称',
  `update_date` datetime default NULL COMMENT '更新日期',
  `parent_id` varchar(32) default NULL COMMENT '上级ID',
  `sys_org_code` varchar(10) NOT NULL COMMENT '机构',
  `sys_company_code` varchar(10) NOT NULL COMMENT '公司',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分类管理';

-- ----------------------------
-- Records of t_s_category
-- ----------------------------

-- ----------------------------
-- Table structure for `t_s_config`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_config`;
CREATE TABLE `t_s_config` (
  `ID` varchar(32) NOT NULL,
  `code` varchar(100) default NULL,
  `content` longtext,
  `name` varchar(100) NOT NULL,
  `note` longtext,
  `userid` varchar(32) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_m3q8r50ror4fl7fjkvd82tqgn` (`userid`),
  CONSTRAINT `FK_m3q8r50ror4fl7fjkvd82tqgn` FOREIGN KEY (`userid`) REFERENCES `t_s_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_config
-- ----------------------------

-- ----------------------------
-- Table structure for `t_s_data_rule`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_data_rule`;
CREATE TABLE `t_s_data_rule` (
  `id` varchar(96) default NULL,
  `rule_name` varchar(96) default NULL,
  `rule_column` varchar(300) default NULL,
  `rule_conditions` varchar(300) default NULL,
  `rule_value` varchar(300) default NULL,
  `create_date` datetime default NULL,
  `create_by` varchar(96) default NULL,
  `create_name` varchar(96) default NULL,
  `update_date` datetime default NULL,
  `update_by` varchar(96) default NULL,
  `update_name` varchar(96) default NULL,
  `functionId` varchar(96) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_data_rule
-- ----------------------------
INSERT INTO `t_s_data_rule` VALUES ('f852d85d47f224990147f2284c0c0005', '小于', 'test', '<=', '11', '2014-08-20 14:43:52', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null, null);
INSERT INTO `t_s_data_rule` VALUES ('f852d85d47f224990147f2284c0c0005', '小于', 'test', '<=', '11', '2014-08-20 14:43:52', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null, null);
INSERT INTO `t_s_data_rule` VALUES ('402889fe47fcb29c0147fcb6b6220001', '12', '12', '>', '12', '2014-08-22 15:55:38', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null, '8a8ab0b246dc81120146dc8180fe002b');
INSERT INTO `t_s_data_rule` VALUES ('402889fb486e848101486e913cd6000b', 'userName', 'userName', '=', 'admin', '2014-09-13 18:31:25', 'admin', '管理员', null, null, null, '402889fb486e848101486e8e2e8b0007');
INSERT INTO `t_s_data_rule` VALUES ('402889fb486e848101486e98d20d0016', 'title', 'title', '=', '12', null, null, null, '2014-09-13 22:18:22', 'scott', '张代浩', '402889fb486e848101486e93a7c80014');
INSERT INTO `t_s_data_rule` VALUES ('402880e6487e661a01487e732c020005', 'SYS_ORG_CODE', 'SYS_ORG_CODE', 'LIKE', '010201%', '2014-09-16 20:32:30', 'admin', '管理员', null, null, null, '402889fb486e848101486e93a7c80014');
INSERT INTO `t_s_data_rule` VALUES ('402880e6487e661a01487e8153ee0007', 'create_by', 'create_by', '', '#{SYS_USER_CODE}', '2014-09-16 20:47:57', 'admin', '管理员', null, null, null, '402889fb486e848101486e93a7c80014');

-- ----------------------------
-- Table structure for `t_s_data_source`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_data_source`;
CREATE TABLE `t_s_data_source` (
  `id` varchar(36) NOT NULL,
  `db_key` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `driver_class` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `db_user` varchar(50) NOT NULL,
  `db_password` varchar(50) default NULL,
  `db_type` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_data_source
-- ----------------------------
INSERT INTO `t_s_data_source` VALUES ('8a8aada9486347c001486401180a0003', 'SAP_DB', 'sap db', 'oracle.jdbc.driver.OracleDriver', 'jdbc:oracle:thin:@127.0.0.1:1521:oral', 'db_user', 'db_password', 'oracle');

-- ----------------------------
-- Table structure for `t_s_demo`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_demo`;
CREATE TABLE `t_s_demo` (
  `ID` varchar(32) NOT NULL,
  `democode` longtext,
  `demoorder` smallint(6) default NULL,
  `demotitle` varchar(200) default NULL,
  `demourl` varchar(200) default NULL,
  `demopid` varchar(32) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_fni8e3v88wcf2sahhlv57u4nm` (`demopid`),
  CONSTRAINT `FK_fni8e3v88wcf2sahhlv57u4nm` FOREIGN KEY (`demopid`) REFERENCES `t_s_demo` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_demo
-- ----------------------------
INSERT INTO `t_s_demo` VALUES ('8a8ab0b246dc81120146dc8183cb00d5', '<div class=\"form\">\r\n   <label class=\"Validform_label\">\r\n     非空验证：\r\n    </label>\r\n    <input name=\"demotitle\" id=\"demotitle\" datatype=\"*\" errormsg=\"该字段不为空\">\r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>\r\n   <div class=\"form\">\r\n     <label class=\"Validform_label\">\r\n     URL验证：\r\n    </label>\r\n    <input name=\"demourl\" id=\"demourl\" datatype=\"url\" errormsg=\"必须是URL\">\r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>\r\n   <div class=\"form\">\r\n     <label class=\"Validform_label\">\r\n     至少选择2项：\r\n    </label>\r\n    <input name=\"shoppingsite1\" class=\"rt2\" id=\"shoppingsite21\" type=\"checkbox\" value=\"1\" datatype=\"need2\" nullmsg=\"请选择您的爱好！\" />\r\n  \r\n     阅读\r\n  \r\n    <input name=\"shoppingsite1\" class=\"rt2\" id=\"shoppingsite22\" type=\"checkbox\" value=\"2\" />\r\n    \r\n     音乐\r\n  \r\n    <input name=\"shoppingsite1\" class=\"rt2\" id=\"shoppingsite23\" type=\"checkbox\" value=\"3\" />\r\n  \r\n     运动\r\n   \r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>\r\n   <div class=\"form\">\r\n     <label class=\"Validform_label\">\r\n     邮箱：\r\n    </label>\r\n    <input name=\"demoorder\" id=\"demoorder\" datatype=\"e\" errormsg=\"邮箱非法\">\r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>\r\n   <div class=\"form\">\r\n     <label class=\"Validform_label\">\r\n     手机号：\r\n    </label>\r\n    <input name=\"phone\" id=\"phone\" datatype=\"m\" errormsg=\"手机号非法\">\r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>\r\n   <div class=\"form\">\r\n     <label class=\"Validform_label\">\r\n     金额：\r\n    </label>\r\n    <input name=\"money\" id=\"money\" datatype=\"d\" errormsg=\"金额非法\">\r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>\r\n   <div class=\"form\">\r\n     <label class=\"Validform_label\">\r\n     日期：\r\n    </label>\r\n    <input name=\"date\" id=\"date\" class=\"easyui-datebox\">\r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>\r\n   <div class=\"form\">\r\n     <label class=\"Validform_label\">\r\n     时间：\r\n    </label>\r\n    <input name=\"time\" id=\"time\" class=\"easyui-datetimebox\">\r\n    <span class=\"Validform_checktip\"></span>\r\n   </div>', null, '表单验证', null, null);

-- ----------------------------
-- Table structure for `t_s_depart`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_depart`;
CREATE TABLE `t_s_depart` (
  `ID` varchar(32) NOT NULL,
  `departname` varchar(100) NOT NULL,
  `description` longtext,
  `parentdepartid` varchar(32) default NULL,
  `org_code` varchar(64) default NULL,
  `org_type` varchar(1) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_knnm3wb0bembwvm0il7tf6686` (`parentdepartid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_depart
-- ----------------------------
INSERT INTO `t_s_depart` VALUES ('402880e447e99cf10147e9a03b320003', '北京国炬软件', '', null, '01', '1');
INSERT INTO `t_s_depart` VALUES ('402880e447e9a9570147e9b677320003', '软件信息部', '', '402880e447e99cf10147e9a03b320003', '0101', '2');
INSERT INTO `t_s_depart` VALUES ('402880e447e9a9570147e9b6a3be0005', '销售部门', '', '402880e447e99cf10147e9a03b320003', '0102', '2');
INSERT INTO `t_s_depart` VALUES ('402880e447e9a9570147e9b710d20007', '人力资源部', '', '402880e447e99cf10147e9a03b320003', '0103', '2');
INSERT INTO `t_s_depart` VALUES ('402880e447e9a9570147e9b762e30009', '销售经理', '', '402880e447e9a9570147e9b6a3be0005', '010201', '2');
INSERT INTO `t_s_depart` VALUES ('402880e447e9ba550147e9c53b2e0013', '财务', '', '8a8ab0b246dc81120146dc8180ba0017', '0302', '2');
INSERT INTO `t_s_depart` VALUES ('402880e6487e661a01487e6b504e0001', '销售人员', '销售人员', '402880e447e9a9570147e9b762e30009', '01020101', '3');
INSERT INTO `t_s_depart` VALUES ('8a8ab0b246dc81120146dc8180a20016', '中国人寿总公司', '', null, '02', '1');
INSERT INTO `t_s_depart` VALUES ('8a8ab0b246dc81120146dc8180ba0017', 'JEECG开源社区', '', null, '03', '1');
INSERT INTO `t_s_depart` VALUES ('8a8ab0b246dc81120146dc8180bd0018', '软件开发部', '研发技术难题', '8a8ab0b246dc81120146dc8180ba0017', '0301', '2');

-- ----------------------------
-- Table structure for `t_s_document`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_document`;
CREATE TABLE `t_s_document` (
  `documentstate` smallint(6) default NULL,
  `documenttitle` varchar(100) default NULL,
  `pictureindex` blob,
  `showhome` smallint(6) default NULL,
  `id` varchar(32) NOT NULL,
  `typeid` varchar(32) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_qr3qlmgkflj35m5ci1xv0vvg3` (`typeid`),
  KEY `FK_f2mc12eu0umghp2i70apmtxjl` (`id`),
  CONSTRAINT `FK_f2mc12eu0umghp2i70apmtxjl` FOREIGN KEY (`id`) REFERENCES `t_s_attachment` (`ID`),
  CONSTRAINT `FK_qr3qlmgkflj35m5ci1xv0vvg3` FOREIGN KEY (`typeid`) REFERENCES `t_s_type` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_document
-- ----------------------------

-- ----------------------------
-- Table structure for `t_s_fileno`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_fileno`;
CREATE TABLE `t_s_fileno` (
  `ID` varchar(32) NOT NULL,
  `filenobefore` varchar(32) default NULL,
  `filenonum` int(11) default NULL,
  `filenotype` varchar(32) default NULL,
  `filenoYear` date default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_fileno
-- ----------------------------

-- ----------------------------
-- Table structure for `t_s_function`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_function`;
CREATE TABLE `t_s_function` (
  `ID` varchar(32) NOT NULL,
  `functioniframe` smallint(6) default NULL,
  `functionlevel` smallint(6) default NULL,
  `functionname` varchar(50) NOT NULL,
  `functionorder` varchar(255) default NULL,
  `functionurl` varchar(100) default NULL,
  `parentfunctionid` varchar(32) default NULL,
  `iconid` varchar(32) default NULL,
  `desk_iconid` varchar(32) default NULL,
  `functiontype` smallint(6) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_brd7b3keorj8pmxcv8bpahnxp` (`parentfunctionid`),
  KEY `FK_q5tqo3v4ltsp1pehdxd59rccx` (`iconid`),
  KEY `FK_gbdacaoju6d5u53rp4jo4rbs9` (`desk_iconid`),
  CONSTRAINT `FK_brd7b3keorj8pmxcv8bpahnxp` FOREIGN KEY (`parentfunctionid`) REFERENCES `t_s_function` (`ID`),
  CONSTRAINT `FK_gbdacaoju6d5u53rp4jo4rbs9` FOREIGN KEY (`desk_iconid`) REFERENCES `t_s_icon` (`ID`),
  CONSTRAINT `FK_q5tqo3v4ltsp1pehdxd59rccx` FOREIGN KEY (`iconid`) REFERENCES `t_s_icon` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_function
-- ----------------------------
INSERT INTO `t_s_function` VALUES ('40288088481d019401481d2fcebf000d', null, '1', 'demo录入', '1', 'jeecgDemoController.do?addorupdate', '402889fb486e848101486e8de3d60005', '8a8ab0b246dc81120146dc8180820003', '8a8ab0b246dc81120146dc8180dd001e', '1');
INSERT INTO `t_s_function` VALUES ('4028808848845c0f01488461226e0001', null, '0', '消息推送管理', '1', '', null, '8a8ab0b246dc81120146dc8180820003', '8a8ab0b246dc81120146dc8180dd001e', '0');
INSERT INTO `t_s_function` VALUES ('4028808848845c0f01488461b3ac0004', null, '1', '业务SQL管理', '1', 'tSSmsSqlController.do?tSSmsSql', '4028808848845c0f01488461226e0001', '8a8ab0b246dc81120146dc8180820003', '8a8ab0b246dc81120146dc8180dd001e', '0');
INSERT INTO `t_s_function` VALUES ('4028808848845c0f01488462658f0006', null, '1', '消息模板管理', '2', 'tSSmsTemplateController.do?tSSmsTemplate', '4028808848845c0f01488461226e0001', '8a8ab0b246dc81120146dc8180820003', '8a8ab0b246dc81120146dc8180dd001e', '0');
INSERT INTO `t_s_function` VALUES ('4028808848845c0f01488463aa210009', null, '1', '业务配置', '3', 'tSSmsTemplateSqlController.do?tSSmsTemplateSql', '4028808848845c0f01488461226e0001', '8a8ab0b246dc81120146dc8180820003', '8a8ab0b246dc81120146dc8180dd001e', '0');
INSERT INTO `t_s_function` VALUES ('4028808848845c0f014884649488000c', null, '1', '消息发送监控', '0', 'tSSmsController.do?tSSms', '4028808848845c0f01488461226e0001', '8a8ab0b246dc81120146dc8180820003', '8a8ab0b246dc81120146dc8180dd001e', '0');
INSERT INTO `t_s_function` VALUES ('402880e448a28b750148a290c0e50001', null, '1', '分类管理', '11', 'categoryController.do?category', '8a8ab0b246dc81120146dc8180d2001a', '8a8ab0b246dc81120146dc8180820003', '8a8ab0b246dc81120146dc8180dd001e', '0');
INSERT INTO `t_s_function` VALUES ('402881c746de1ea60146de207d770001', null, '1', 'language.manage', '25', 'mutiLangController.do?mutiLang', '8a8ab0b246dc81120146dc8180d2001a', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0');
INSERT INTO `t_s_function` VALUES ('402889fb486e848101486e8de3d60005', null, '0', '数据权限', '100', '', null, '8a8ab0b246dc81120146dc8180820003', '8a8ab0b246dc81120146dc8180dd001e', '1');
INSERT INTO `t_s_function` VALUES ('402889fb486e848101486e8e2e8b0007', null, '1', '用户管理', '1', 'userController.do?datagrid', '402889fb486e848101486e8de3d60005', '8a8ab0b246dc81120146dc8180820003', '8a8ab0b246dc81120146dc8180dd001e', '1');
INSERT INTO `t_s_function` VALUES ('402889fb486e848101486e93a7c80014', null, '1', 'OL请假数据权限', '2', 'cgAutoListController.do?datagrid&configId=jform_leave', '402889fb486e848101486e8de3d60005', '8a8ab0b246dc81120146dc8180820003', '8a8ab0b246dc81120146dc8180dd001e', '1');
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc8180ce0019', null, '0', 'online.develop', '1', '', null, '8a8ab0b246dc81120146dc8180890008', null, '0');
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc8180d2001a', null, '0', 'system.manage', '5', '', null, '8a8ab0b246dc81120146dc8180860006', null, '0');
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc8180d4001b', null, '0', 'common.query.statistics', '3', '', null, '8a8ab0b246dc81120146dc8180890008', null, '0');
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc8180d7001c', null, '0', 'general.demo', '8', '', null, '8a8ab0b246dc81120146dc8180460000', null, '0');
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc8180d9001d', null, '0', 'system.monitor', '11', '', null, '8a8ab0b246dc81120146dc8180460000', null, '0');
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc8180df001f', null, '1', 'user.manage', '5', 'userController.do?user', '8a8ab0b246dc81120146dc8180d2001a', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180dd001e', '0');
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc8180e30021', null, '1', 'role.manage', '6', 'roleController.do?role', '8a8ab0b246dc81120146dc8180d2001a', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180e10020', '0');
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc8180e70023', null, '1', 'menu.manage', '7', 'functionController.do?function', '8a8ab0b246dc81120146dc8180d2001a', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180e50022', '0');
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc8180ee0025', null, '1', 'common.data.dictionary', '6', 'systemController.do?typeGroupList', '8a8ab0b246dc81120146dc8180d2001a', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180eb0024', '0');
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc8180f30027', null, '1', 'icon.manage', '18', 'iconController.do?icon', '8a8ab0b246dc81120146dc8180d2001a', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8180f00026', '0');
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc8180f60028', null, '1', 'department.manage', '22', 'departController.do?depart', '8a8ab0b246dc81120146dc8180d2001a', '8a8ab0b246dc81120146dc8180460000', null, '0');
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc8180f80029', null, '1', 'area.manage', '22', 'territoryController.do?territory', '8a8ab0b246dc81120146dc8180d2001a', '8a8ab0b246dc81120146dc8180810002', null, '0');
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc8180fe002b', null, '1', 'user.analysis', '17', 'logController.do?statisticTabs&isIframe', '8a8ab0b246dc81120146dc8180d4001b', '8a8ab0b246dc81120146dc8180810002', '8a8ab0b246dc81120146dc8180fb002a', '0');
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc818106002d', null, '1', 'form.config', '1', 'cgFormHeadController.do?cgFormHeadList', '8a8ab0b246dc81120146dc8180ce0019', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc818102002c', '0');
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc818109002e', null, '1', 'dynamic.form.config', '2', 'cgreportConfigHeadController.do?cgreportConfigHead', '8a8ab0b246dc81120146dc8180ce0019', '8a8ab0b246dc81120146dc8180460000', null, '0');
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc8181100030', null, '1', 'data.monitor', '11', 'dataSourceController.do?goDruid&isIframe', '8a8ab0b246dc81120146dc8180d9001d', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc81810d002f', '0');
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc81811d0032', null, '1', 'system.log', '21', 'logController.do?log', '8a8ab0b246dc81120146dc8180d9001d', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8181150031', '0');
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc8181250034', null, '1', 'common.schedule.task', '21', 'timeTaskController.do?timeTask', '8a8ab0b246dc81120146dc8180d9001d', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8181210033', '0');
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc81812b0036', null, '1', '表单验证', '1', 'demoController.do?formTabs', '8a8ab0b246dc81120146dc8180d7001c', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8181290035', '0');
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc8181300037', null, '1', 'Demo示例', '2', 'jeecgDemoController.do?jeecgDemo', '8a8ab0b246dc81120146dc8180d7001c', '8a8ab0b246dc81120146dc8180460000', null, '0');
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc8181330038', null, '1', 'Minidao例子', '2', 'jeecgMinidaoController.do?jeecgMinidao', '8a8ab0b246dc81120146dc8180d7001c', '8a8ab0b246dc81120146dc8180460000', null, '0');
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc8181370039', null, '1', '单表模型', '3', 'jeecgNoteController.do?jeecgNote', '8a8ab0b246dc81120146dc8180d7001c', '8a8ab0b246dc81120146dc8180460000', null, '0');
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc81813a003a', null, '1', '一对多模型', '4', 'jeecgOrderMainController.do?jeecgOrderMain', '8a8ab0b246dc81120146dc8180d7001c', '8a8ab0b246dc81120146dc8180460000', null, '0');
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc81813e003b', null, '1', 'Excel导入导出', '5', 'courseController.do?course', '8a8ab0b246dc81120146dc8180d7001c', '8a8ab0b246dc81120146dc8180460000', null, '0');
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc818141003c', null, '1', '上传下载', '6', 'commonController.do?listTurn&turn=system/document/filesList', '8a8ab0b246dc81120146dc8180d7001c', '8a8ab0b246dc81120146dc8180460000', null, '0');
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc818145003d', null, '1', 'JqueryFileUpload示例', '6', 'fileUploadController.do?fileUploadSample&isIframe', '8a8ab0b246dc81120146dc8180d7001c', '8a8ab0b246dc81120146dc8180460000', null, '0');
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc818148003e', null, '1', '无分页列表', '7', 'userNoPageController.do?user', '8a8ab0b246dc81120146dc8180d7001c', '8a8ab0b246dc81120146dc8180460000', null, '0');
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc81814b003f', null, '1', 'jdbc示例', '8', 'jeecgJdbcController.do?jeecgJdbc', '8a8ab0b246dc81120146dc8180d7001c', '8a8ab0b246dc81120146dc8180460000', null, '0');
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc81814e0040', null, '1', 'SQL分离', '9', 'jeecgJdbcController.do?dictParameter', '8a8ab0b246dc81120146dc8180d7001c', '8a8ab0b246dc81120146dc8180460000', null, '0');
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc8181510041', null, '1', '字典标签', '10', 'demoController.do?dictSelect', '8a8ab0b246dc81120146dc8180d7001c', '8a8ab0b246dc81120146dc8180460000', null, '0');
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc8181530042', null, '1', '表单弹出风格', '11', 'demoController.do?demoList', '8a8ab0b246dc81120146dc8180d7001c', '8a8ab0b246dc81120146dc8180460000', null, '0');
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc8181590044', null, '1', '特殊布局', '12', 'demoController.do?demoIframe', '8a8ab0b246dc81120146dc8180d7001c', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc8181560043', '0');
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc81815c0045', null, '1', '单表例子(无Tag)', '13', 'jeecgEasyUIController.do?jeecgEasyUI', '8a8ab0b246dc81120146dc8180d7001c', '8a8ab0b246dc81120146dc8180460000', null, '0');
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc8181610046', null, '1', '一对多例子(无Tag)', '14', 'jeecgOrderMainNoTagController.do?jeecgOrderMainNoTag', '8a8ab0b246dc81120146dc8180d7001c', '8a8ab0b246dc81120146dc8180460000', null, '0');
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc8181640047', null, '1', 'HTML编辑器', '15', 'jeecgDemoController.do?ckeditor&isIframe', '8a8ab0b246dc81120146dc8180d7001c', '8a8ab0b246dc81120146dc8180460000', null, '0');
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc8181680048', null, '1', '在线word(IE)', '16', 'webOfficeController.do?webOffice', '8a8ab0b246dc81120146dc8180d7001c', '8a8ab0b246dc81120146dc8180460000', null, '0');
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc81816b0049', null, '1', 'WebOffice官方例子', '17', 'webOfficeController.do?webOfficeSample&isIframe', '8a8ab0b246dc81120146dc8180d7001c', '8a8ab0b246dc81120146dc8180460000', null, '0');
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc818173004b', null, '1', '多附件管理', '18', 'tFinanceController.do?tFinance', '8a8ab0b246dc81120146dc8180d7001c', '8a8ab0b246dc81120146dc8180460000', '8a8ab0b246dc81120146dc81816e004a', '0');
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc818176004c', null, '1', 'Datagrid手工Html', '19', 'userController.do?userDemo', '8a8ab0b246dc81120146dc8180d7001c', '8a8ab0b246dc81120146dc8180460000', null, '0');
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc81817b004d', null, '1', '物料Bom', '20', 'jeecgMatterBomController.do?goList', '8a8ab0b246dc81120146dc8180d7001c', '8a8ab0b246dc81120146dc8180460000', null, '0');
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc81817f004e', null, '1', 'user.report', '21', 'reportDemoController.do?studentStatisticTabs&isIframe', '8a8ab0b246dc81120146dc8180d4001b', '8a8ab0b246dc81120146dc8180810002', '8a8ab0b246dc81120146dc8180dd001e', '0');
INSERT INTO `t_s_function` VALUES ('8a8ab0b246dc81120146dc818183004f', null, '1', 'ckfinder例子', '100', 'jeecgDemoCkfinderController.do?jeecgDemoCkfinder', '8a8ab0b246dc81120146dc8180d7001c', '8a8ab0b246dc81120146dc8180460000', null, '0');

-- ----------------------------
-- Table structure for `t_s_icon`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_icon`;
CREATE TABLE `t_s_icon` (
  `ID` varchar(32) NOT NULL,
  `extend` varchar(255) default NULL,
  `iconclas` varchar(200) default NULL,
  `content` blob,
  `name` varchar(100) NOT NULL,
  `path` longtext,
  `type` smallint(6) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_icon
-- ----------------------------
INSERT INTO `t_s_icon` VALUES ('8a8ab0b246dc81120146dc8180460000', 'png', 'default', null, 'common.default.icon', 'plug-in/accordion/images/default.png', '1');
INSERT INTO `t_s_icon` VALUES ('8a8ab0b246dc81120146dc8180800001', 'png', 'back', null, 'common.back', 'plug-in/accordion/images/back.png', '1');
INSERT INTO `t_s_icon` VALUES ('8a8ab0b246dc81120146dc8180810002', 'png', 'pie', null, 'common.smallpie.icon', 'plug-in/accordion/images/pie.png', '1');
INSERT INTO `t_s_icon` VALUES ('8a8ab0b246dc81120146dc8180820003', 'png', 'pictures', null, 'common.picture', 'plug-in/accordion/images/pictures.png', '1');
INSERT INTO `t_s_icon` VALUES ('8a8ab0b246dc81120146dc8180830004', 'png', 'pencil', null, 'common.pencil.icon', 'plug-in/accordion/images/pencil.png', '1');
INSERT INTO `t_s_icon` VALUES ('8a8ab0b246dc81120146dc8180850005', 'png', 'map', null, 'common.smallmap', 'plug-in/accordion/images/map.png', '1');
INSERT INTO `t_s_icon` VALUES ('8a8ab0b246dc81120146dc8180860006', 'png', 'group_add', null, 'common.group', 'plug-in/accordion/images/group_add.png', '1');
INSERT INTO `t_s_icon` VALUES ('8a8ab0b246dc81120146dc8180880007', 'png', 'calculator', null, 'common.calculator', 'plug-in/accordion/images/calculator.png', '1');
INSERT INTO `t_s_icon` VALUES ('8a8ab0b246dc81120146dc8180890008', 'png', 'folder', null, 'common.folder', 'plug-in/accordion/images/folder.png', '1');
INSERT INTO `t_s_icon` VALUES ('8a8ab0b246dc81120146dc8180dd001e', 'png', 'deskIcon', null, 'user.manage', 'plug-in/sliding/icon/Finder.png', '3');
INSERT INTO `t_s_icon` VALUES ('8a8ab0b246dc81120146dc8180e10020', 'png', 'deskIcon', null, 'role.manage', 'plug-in/sliding/icon/friendgroup.png', '3');
INSERT INTO `t_s_icon` VALUES ('8a8ab0b246dc81120146dc8180e50022', 'png', 'deskIcon', null, 'menu.manage', 'plug-in/sliding/icon/kaikai.png', '3');
INSERT INTO `t_s_icon` VALUES ('8a8ab0b246dc81120146dc8180eb0024', 'png', 'deskIcon', null, 'dict.manage', 'plug-in/sliding/icon/friendnear.png', '3');
INSERT INTO `t_s_icon` VALUES ('8a8ab0b246dc81120146dc8180f00026', 'png', 'deskIcon', null, 'icon.manage', 'plug-in/sliding/icon/kxjy.png', '3');
INSERT INTO `t_s_icon` VALUES ('8a8ab0b246dc81120146dc8180fb002a', 'png', 'deskIcon', null, 'user.analysis', 'plug-in/sliding/icon/User.png', '3');
INSERT INTO `t_s_icon` VALUES ('8a8ab0b246dc81120146dc818102002c', 'png', 'deskIcon', null, 'form.config', 'plug-in/sliding/icon/Applications Folder.png', '3');
INSERT INTO `t_s_icon` VALUES ('8a8ab0b246dc81120146dc81810d002f', 'png', 'deskIcon', null, 'data.monitor', 'plug-in/sliding/icon/Super Disk.png', '3');
INSERT INTO `t_s_icon` VALUES ('8a8ab0b246dc81120146dc8181150031', 'png', 'deskIcon', null, 'system.log', 'plug-in/sliding/icon/fastsearch.png', '3');
INSERT INTO `t_s_icon` VALUES ('8a8ab0b246dc81120146dc8181210033', 'png', 'deskIcon', null, 'common.schedule.task', 'plug-in/sliding/icon/Utilities.png', '3');
INSERT INTO `t_s_icon` VALUES ('8a8ab0b246dc81120146dc8181290035', 'png', 'deskIcon', null, '表单验证', 'plug-in/sliding/icon/qidianzhongwen.png', '3');
INSERT INTO `t_s_icon` VALUES ('8a8ab0b246dc81120146dc8181560043', 'png', 'deskIcon', null, '特殊布局', 'plug-in/sliding/icon/xiami.png', '3');
INSERT INTO `t_s_icon` VALUES ('8a8ab0b246dc81120146dc81816e004a', 'png', 'deskIcon', null, '多附件管理', 'plug-in/sliding/icon/vadio.png', '3');

-- ----------------------------
-- Table structure for `t_s_log`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_log`;
CREATE TABLE `t_s_log` (
  `ID` varchar(32) NOT NULL,
  `broswer` varchar(100) default NULL,
  `logcontent` longtext NOT NULL,
  `loglevel` smallint(6) default NULL,
  `note` longtext,
  `operatetime` datetime NOT NULL,
  `operatetype` smallint(6) default NULL,
  `userid` varchar(32) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_oe64k4852uylhyc5a00rfwtay` (`userid`),
  CONSTRAINT `FK_oe64k4852uylhyc5a00rfwtay` FOREIGN KEY (`userid`) REFERENCES `t_s_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_log
-- ----------------------------
INSERT INTO `t_s_log` VALUES ('2c90e2064a9a8c11014a9a8f22cd0000', 'Chrome', '用户: admin[人力资源部]?common.login.success', '1', '172.16.98.134', '2014-12-30 17:37:59', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028549646e51f300146e522042f0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.212.22', '2014-06-29 08:59:10', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028549646e5250c0146e52752580000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.212.22', '2014-06-29 09:04:57', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028549646e52ed20146e52f8ec20000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.212.22', '2014-06-29 09:13:57', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028549646e52ed20146e5f558f40001', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.212.22', '2014-06-29 12:50:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028549646e52ed20146e5fc7b6b0002', 'Chrome', '用户admin已退出', '2', '192.168.212.22', '2014-06-29 12:57:47', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028549646e6187b0146e62208cf0000', 'rv:11.0', '用户: admin[信息部]登录成功', '1', '192.168.212.22', '2014-06-29 13:38:48', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028549646e659060146e65a86e70000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.212.22', '2014-06-29 14:40:30', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028549646e659060146e68c46060002', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.123.64', '2014-06-29 15:34:51', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880884883eff40148840fdf2f001a', 'Firefox', '创建成功', '3', '192.168.0.8', '2014-09-17 22:41:45', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880884883eff40148841404af0026', 'Firefox', '创建成功', '3', '192.168.0.8', '2014-09-17 22:46:17', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880884883eff401488415cbeb0028', 'Firefox', '类型分组: ?模板类型被添加成功', '3', '192.168.0.8', '2014-09-17 22:48:14', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880884883eff4014884180c34002a', 'Firefox', '类型: ?蔷薇七村被添加成功', '3', '192.168.0.8', '2014-09-17 22:50:41', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880884883eff40148841981f9002b', 'Firefox', '修改成功', '5', '192.168.0.8', '2014-09-17 22:52:17', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880884883eff40148841a2179002c', 'Firefox', '修改成功', '5', '192.168.0.8', '2014-09-17 22:52:58', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880884883eff40148841bbb8a002d', 'Firefox', '修改成功', '5', '192.168.0.8', '2014-09-17 22:54:43', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880884883eff40148841cb461002e', 'Firefox', '修改成功', '5', '192.168.0.8', '2014-09-17 22:55:46', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880884883eff40148841fb2d4002f', 'Firefox', '修改成功', '5', '192.168.0.8', '2014-09-17 22:59:02', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880884883eff401488424f2ec003c', 'Firefox', '创建成功', '3', '192.168.0.8', '2014-09-17 23:04:47', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880884883eff40148842589c5003d', 'Firefox', '删除成功', '4', '192.168.0.8', '2014-09-17 23:05:25', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880884884282001488428f7740000', 'Firefox', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.0.8', '2014-09-17 23:09:10', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028808848842c1f0148842cabc00000', 'Firefox', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.0.8', '2014-09-17 23:13:13', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028808848843ca90148843d314f0000', 'Firefox', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.0.8', '2014-09-17 23:31:15', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880884884423801488442a3cc0000', 'Firefox', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.0.8', '2014-09-17 23:37:12', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880884884488a01488448ec680000', 'Firefox', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.0.8', '2014-09-17 23:44:04', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028808848844fe2014884509e130000', 'Firefox', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.0.8', '2014-09-17 23:52:28', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028808848844fe2014884587b4d0010', 'Firefox', '创建成功', '3', '192.168.0.8', '2014-09-18 00:01:04', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028808848845c0f0148845d061d0000', 'Firefox', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.0.8', '2014-09-18 00:06:02', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028808848845c0f0148846122a80002', 'Firefox', '菜单 录入成功', '3', '192.168.0.8', '2014-09-18 00:10:31', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028808848845c0f014884614bcc0003', 'Firefox', '菜单 更新成功', '5', '192.168.0.8', '2014-09-18 00:10:41', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028808848845c0f01488461b3e30005', 'Firefox', '菜单 录入成功', '3', '192.168.0.8', '2014-09-18 00:11:08', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028808848845c0f0148846265c00007', 'Firefox', '菜单 录入成功', '3', '192.168.0.8', '2014-09-18 00:11:54', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028808848845c0f0148846298cf0008', 'Firefox', '菜单 更新成功', '5', '192.168.0.8', '2014-09-18 00:12:07', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028808848845c0f01488463aa64000a', 'Firefox', '菜单 录入成功', '3', '192.168.0.8', '2014-09-18 00:13:17', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028808848845c0f01488463ddde000b', 'Firefox', '菜单 更新成功', '5', '192.168.0.8', '2014-09-18 00:13:30', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028808848845c0f0148846494b4000d', 'Firefox', '菜单 录入成功', '3', '192.168.0.8', '2014-09-18 00:14:17', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028808848845c0f01488464e6780013', 'Firefox', '用户admin已退出', '2', '192.168.0.8', '2014-09-18 00:14:38', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028808848845c0f014884650fce0014', 'Firefox', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.0.8', '2014-09-18 00:14:48', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028808848845c0f01488465eff20015', 'Firefox', '菜单 更新成功', '5', '192.168.0.8', '2014-09-18 00:15:46', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028808848845c0f0148846614b20016', 'Firefox', '用户admin已退出', '2', '192.168.0.8', '2014-09-18 00:15:55', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028808848845c0f014884663ced0017', 'Firefox', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.0.8', '2014-09-18 00:16:05', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880884884705901488470cb480000', 'Firefox', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.0.8', '2014-09-18 00:27:37', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('40288088488473420148847455580000', 'Firefox', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.0.8', '2014-09-18 00:31:29', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880884884734201488474b4110002', 'Firefox', 'JeecgDemo例子: dsafsd被添加成功', '3', '192.168.0.8', '2014-09-18 00:31:53', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('40288088488479350148847a20b80000', 'Firefox', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.0.8', '2014-09-18 00:37:49', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028808848847e310148847e977f0000', 'Firefox', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.0.8', '2014-09-18 00:42:41', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880884884877901488487ed3b0000', 'Firefox', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.0.8', '2014-09-18 00:52:53', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028808848848c580148848cbb030000', 'Firefox', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.0.8', '2014-09-18 00:58:08', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028808848848c580148848cf27b0002', 'Firefox', '业务SQL表添加成功', '3', '192.168.0.8', '2014-09-18 00:58:22', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028808848848c580148848d335b0004', 'Firefox', '消息模板_业务SQL配置表添加成功', '3', '192.168.0.8', '2014-09-18 00:58:39', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e447e99cf10147e99f33660000', 'Chrome', 'User: admin[信息部]?common.login.success', '1', '192.168.0.100', '2014-08-18 22:57:10', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e447e99cf10147e99f599e0001', 'Chrome', '用户admin已退出', '2', '192.168.0.100', '2014-08-18 22:57:20', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e447e99cf10147e99f7c440002', 'Chrome', '用户: admin[信息部]?common.login.success', '1', '192.168.0.100', '2014-08-18 22:57:29', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e447e99cf10147e9a03b740004', 'Chrome', '组织机构 录入成功', '3', '192.168.0.100', '2014-08-18 22:58:18', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e447e99cf10147e9a7281b0005', 'Chrome', '用户: admin[信息部]?common.login.success', '1', '192.168.0.100', '2014-08-18 23:05:51', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e447e9a9570147e9ab16a30000', 'Chrome', 'User: admin[信息部]?common.login.success', '1', '192.168.0.100', '2014-08-18 23:10:09', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e447e9a9570147e9ab59310001', 'Chrome', '用户admin已退出', '2', '192.168.0.100', '2014-08-18 23:10:26', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e447e9a9570147e9ab951e0002', 'Chrome', '用户: admin[信息部]?common.login.success', '1', '192.168.0.100', '2014-08-18 23:10:41', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e447e9a9570147e9b677850004', 'Chrome', '组织机构 录入成功', '3', '192.168.0.100', '2014-08-18 23:22:35', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e447e9a9570147e9b6a3fb0006', 'Chrome', '组织机构 录入成功', '3', '192.168.0.100', '2014-08-18 23:22:46', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e447e9a9570147e9b711290008', 'Chrome', '组织机构 录入成功', '3', '192.168.0.100', '2014-08-18 23:23:14', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e447e9a9570147e9b76329000a', 'Chrome', '组织机构 录入成功', '3', '192.168.0.100', '2014-08-18 23:23:35', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e447e9ba550147e9bb0cd70000', 'Chrome', 'User: admin[信息部]?common.login.success', '1', '192.168.0.100', '2014-08-18 23:27:35', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e447e9ba550147e9bb69010002', 'Chrome', 'Org add success', '3', '192.168.0.100', '2014-08-18 23:27:59', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e447e9ba550147e9be3a8a0004', 'Chrome', 'Language add success', '3', '192.168.0.100', '2014-08-18 23:31:03', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e447e9ba550147e9bf19b00005', 'Chrome', 'Language update success', '5', '192.168.0.100', '2014-08-18 23:32:01', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e447e9ba550147e9bf9efd0007', 'Chrome', 'Language add success', '3', '192.168.0.100', '2014-08-18 23:32:35', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e447e9ba550147e9c1acd60009', 'Chrome', 'Language add success', '3', '192.168.0.100', '2014-08-18 23:34:49', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e447e9ba550147e9c25c08000b', 'Chrome', 'Language add success', '3', '192.168.0.100', '2014-08-18 23:35:34', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e447e9ba550147e9c30863000c', 'Chrome', 'Org delete success', '4', '192.168.0.100', '2014-08-18 23:36:18', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e447e9ba550147e9c3756a000d', 'Chrome', 'Org update success', '5', '192.168.0.100', '2014-08-18 23:36:46', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e447e9ba550147e9c3a555000e', 'Chrome', 'Org update success', '5', '192.168.0.100', '2014-08-18 23:36:58', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e447e9ba550147e9c3df0c000f', 'Chrome', 'Org update success', '5', '192.168.0.100', '2014-08-18 23:37:13', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e447e9ba550147e9c415150011', 'Chrome', 'Org add success', '3', '192.168.0.100', '2014-08-18 23:37:27', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e447e9ba550147e9c438c60012', 'Chrome', 'Org delete success', '4', '192.168.0.100', '2014-08-18 23:37:36', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e447e9ba550147e9c53b7d0014', 'Chrome', 'Org add success', '3', '192.168.0.100', '2014-08-18 23:38:42', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e447e9ba550147e9c6bf1a0015', 'Chrome', '用户admin已退出', '2', '192.168.0.100', '2014-08-18 23:40:22', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e447e9ba550147e9c6d9cc0016', 'Chrome', 'User: admin[中国人寿总公司]?common.login.success', '1', '192.168.0.100', '2014-08-18 23:40:29', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e447e9ba550147e9c6f0ef0017', 'Chrome', '用户admin已退出', '2', '192.168.0.100', '2014-08-18 23:40:34', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e447e9ba550147e9c713430018', 'Chrome', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.0.100', '2014-08-18 23:40:43', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e447e9ba550147e9c814d10019', 'Chrome', '语言 更新成功', '5', '192.168.0.100', '2014-08-18 23:41:49', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e447e9ba550147e9c83caf001a', 'Chrome', '语言 更新成功', '5', '192.168.0.100', '2014-08-18 23:41:59', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e547fed2d00147fed35e2f0000', 'Chrome', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.0.101', '2014-08-23 01:46:10', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e547fed2d00147fed558bc0001', 'Chrome', '语言 更新成功', '5', '192.168.0.101', '2014-08-23 01:48:20', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e547fed2d00147fed57d9f0002', 'Chrome', '语言 更新成功', '5', '192.168.0.101', '2014-08-23 01:48:29', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e547fed2d00147fed6adaf0003', 'Chrome', '语言 更新成功', '5', '192.168.0.101', '2014-08-23 01:49:47', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e547fed2d00147fed6d4120004', 'Chrome', '语言 更新成功', '5', '192.168.0.101', '2014-08-23 01:49:57', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e547fed2d00147fed6fbbe0005', 'Chrome', '语言 更新成功', '5', '192.168.0.101', '2014-08-23 01:50:07', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e54800bb54014800bbbf440000', 'Chrome', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.0.101', '2014-08-23 10:39:37', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e5480194170148019504dd0000', 'Chrome', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.0.101', '2014-08-23 14:36:56', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e54808cbaa014808cd5ae20000', 'Chrome', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.0.101', '2014-08-25 00:15:48', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e64768980901476898ad530000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.0.102', '2014-07-24 21:39:02', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e6481501eb0148150253920000', 'Chrome', '用户: admin[人力资源部]?common.login.success', '1', '192.168.0.102', '2014-08-27 09:09:07', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e6481501eb01481503ead30001', 'Chrome', '用户: admin[人力资源部]?common.login.success', '1', '192.168.0.102', '2014-08-27 09:10:51', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e6481cbdc101481cbe3fb90000', 'Chrome', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.0.102', '2014-08-28 21:11:43', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e6481d48cb01481d4987de0000', 'Chrome', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.0.102', '2014-08-28 23:43:51', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e6481d48cb01481d4bed940002', 'Chrome', '用户admin已退出', '2', '192.168.0.102', '2014-08-28 23:46:28', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e6481d48cb01481d4c76710003', 'Chrome', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.0.102', '2014-08-28 23:47:03', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e6481d48cb01481d4ced920004', 'Chrome', '用户admin已退出', '2', '192.168.0.102', '2014-08-28 23:47:33', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e6481d48cb01481d4d0e370005', 'Chrome', '用户: scott[软件开发部]?common.login.success', '1', '192.168.0.102', '2014-08-28 23:47:42', '1', '8a8ab0b246dc81120146dc81819d0053');
INSERT INTO `t_s_log` VALUES ('402880e6481d48cb01481d4dae580006', 'Chrome', '用户scott已退出', '2', '192.168.0.102', '2014-08-28 23:48:23', '1', '8a8ab0b246dc81120146dc81819d0053');
INSERT INTO `t_s_log` VALUES ('402880e6481d48cb01481d4dd7ec0007', 'Chrome', '用户: scott[软件开发部]?common.login.success', '1', '192.168.0.102', '2014-08-28 23:48:33', '1', '8a8ab0b246dc81120146dc81819d0053');
INSERT INTO `t_s_log` VALUES ('402880e6481d48cb01481d4f5f160008', 'Chrome', '用户scott已退出', '2', '192.168.0.102', '2014-08-28 23:50:14', '1', '8a8ab0b246dc81120146dc81819d0053');
INSERT INTO `t_s_log` VALUES ('402880e6481d48cb01481d4f86310009', 'Chrome', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.0.102', '2014-08-28 23:50:24', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e6481d48cb01481d4f9680000a', 'Chrome', '用户admin已退出', '2', '192.168.0.102', '2014-08-28 23:50:28', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e6481d48cb01481d4fbb90000b', 'Chrome', '用户: scott[软件开发部]?common.login.success', '1', '192.168.0.102', '2014-08-28 23:50:37', '1', '8a8ab0b246dc81120146dc81819d0053');
INSERT INTO `t_s_log` VALUES ('402880e6481d48cb01481d539f76000d', 'Chrome', '操作 录入成功', '3', '192.168.0.102', '2014-08-28 23:54:52', '1', '8a8ab0b246dc81120146dc81819d0053');
INSERT INTO `t_s_log` VALUES ('402880e6481d48cb01481d544358000e', 'Chrome', '用户scott已退出', '2', '192.168.0.102', '2014-08-28 23:55:34', '1', '8a8ab0b246dc81120146dc81819d0053');
INSERT INTO `t_s_log` VALUES ('402880e6481d48cb01481d54cdfb000f', 'Chrome', '用户: scott[软件开发部]?common.login.success', '1', '192.168.0.102', '2014-08-28 23:56:10', '1', '8a8ab0b246dc81120146dc81819d0053');
INSERT INTO `t_s_log` VALUES ('402880e6481d48cb01481d5636060010', 'Chrome', '用户scott已退出', '2', '192.168.0.102', '2014-08-28 23:57:42', '1', '8a8ab0b246dc81120146dc81819d0053');
INSERT INTO `t_s_log` VALUES ('402880e6481d48cb01481d565a5a0011', 'Chrome', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.0.102', '2014-08-28 23:57:51', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e6481d48cb01481d597c0b0012', 'Chrome', '用户admin已退出', '2', '192.168.0.102', '2014-08-29 00:01:16', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e6481d48cb01481d59a49b0013', 'Chrome', '用户: scott[软件开发部]?common.login.success', '1', '192.168.0.102', '2014-08-29 00:01:27', '1', '8a8ab0b246dc81120146dc81819d0053');
INSERT INTO `t_s_log` VALUES ('402880e6481d48cb01481d59e20d0014', 'Chrome', 'JeecgDemo例子: 1221被删除 成功', '4', '192.168.0.102', '2014-08-29 00:01:42', '1', '8a8ab0b246dc81120146dc81819d0053');
INSERT INTO `t_s_log` VALUES ('402880e6481d48cb01481d5a24ef0015', 'Chrome', '用户scott已退出', '2', '192.168.0.102', '2014-08-29 00:02:00', '1', '8a8ab0b246dc81120146dc81819d0053');
INSERT INTO `t_s_log` VALUES ('402880e6481d48cb01481d5a5daf0016', 'Chrome', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.0.102', '2014-08-29 00:02:14', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e6481d48cb01481d5a9e790017', 'Chrome', '用户admin已退出', '2', '192.168.0.102', '2014-08-29 00:02:31', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e6481d48cb01481d5aea830018', 'Chrome', '用户: scott[软件开发部]?common.login.success', '1', '192.168.0.102', '2014-08-29 00:02:50', '1', '8a8ab0b246dc81120146dc81819d0053');
INSERT INTO `t_s_log` VALUES ('402880e6481d48cb01481d5b74fb0019', 'Chrome', '用户scott已退出', '2', '192.168.0.102', '2014-08-29 00:03:26', '1', '8a8ab0b246dc81120146dc81819d0053');
INSERT INTO `t_s_log` VALUES ('402880e6481d48cb01481d5b92c9001a', 'Chrome', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.0.102', '2014-08-29 00:03:33', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e6481d48cb01481d5ba027001b', 'Chrome', '用户admin已退出', '2', '192.168.0.102', '2014-08-29 00:03:37', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e6481d48cb01481d5bc725001c', 'Chrome', '用户: scott[软件开发部]?common.login.success', '1', '192.168.0.102', '2014-08-29 00:03:47', '1', '8a8ab0b246dc81120146dc81819d0053');
INSERT INTO `t_s_log` VALUES ('402880e6481d48cb01481d5c4269001d', 'Chrome', '操作 更新成功', '5', '192.168.0.102', '2014-08-29 00:04:18', '1', '8a8ab0b246dc81120146dc81819d0053');
INSERT INTO `t_s_log` VALUES ('402880e6481d48cb01481d5c4f20001e', 'Chrome', '用户scott已退出', '2', '192.168.0.102', '2014-08-29 00:04:21', '1', '8a8ab0b246dc81120146dc81819d0053');
INSERT INTO `t_s_log` VALUES ('402880e6481d48cb01481d5c7106001f', 'Chrome', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.0.102', '2014-08-29 00:04:30', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e6481d48cb01481d5c7b970020', 'Chrome', '用户admin已退出', '2', '192.168.0.102', '2014-08-29 00:04:33', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e6481d48cb01481d5c9b4b0021', 'Chrome', '用户: scott[软件开发部]?common.login.success', '1', '192.168.0.102', '2014-08-29 00:04:41', '1', '8a8ab0b246dc81120146dc81819d0053');
INSERT INTO `t_s_log` VALUES ('402880e64827560c01482756928e0000', 'Chrome', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.0.102', '2014-08-30 22:34:18', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e6487e661a01487e68a2610000', 'Chrome', '用户: admin[人力资源部]?common.login.success', '1', '192.168.0.102', '2014-09-16 20:20:59', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e6487e661a01487e6b508f0002', 'Chrome', '组织机构 录入成功', '3', '192.168.0.102', '2014-09-16 20:23:55', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e6487e661a01487e6b880b0003', 'Chrome', '组织机构 更新成功', '5', '192.168.0.102', '2014-09-16 20:24:09', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e6487e661a01487e6ba7130004', 'Chrome', '组织机构 更新成功', '5', '192.168.0.102', '2014-09-16 20:24:17', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e6487e661a01487e732c360006', 'Chrome', '操作 录入成功', '3', '192.168.0.102', '2014-09-16 20:32:30', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402880e6487e661a01487e8154310008', 'Chrome', '操作 录入成功', '3', '192.168.0.102', '2014-09-16 20:47:58', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728b9d7014728ba523e0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.131', '2014-07-12 12:00:05', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728c34c014728c3b37e0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.131', '2014-07-12 12:10:19', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728c599014728c604ec0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.131', '2014-07-12 12:12:51', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728d95a014728d9b27e0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.131', '2014-07-12 12:34:21', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728d95a014728da54e60001', 'Chrome', '用户admin已退出', '2', '192.168.1.131', '2014-07-12 12:35:03', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728d95a014728da6ca30002', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.131', '2014-07-12 12:35:09', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728d95a014728da8dd50003', 'Chrome', '用户admin已退出', '2', '192.168.1.131', '2014-07-12 12:35:17', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728d95a014728daaf100004', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.131', '2014-07-12 12:35:26', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728d95a014728dc0fef0006', 'Chrome', '多语言 录入成功', '3', '192.168.1.131', '2014-07-12 12:36:56', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728d95a014728dcc33b0008', 'Chrome', '多语言 录入成功', '3', '192.168.1.131', '2014-07-12 12:37:42', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728d95a014728dd2922000a', 'Chrome', '多语言 录入成功', '3', '192.168.1.131', '2014-07-12 12:38:08', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728d95a014728dd8174000c', 'Chrome', '多语言 录入成功', '3', '192.168.1.131', '2014-07-12 12:38:31', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728d95a014728dec4a1000d', 'Chrome', '用户admin已退出', '2', '192.168.1.131', '2014-07-12 12:39:53', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728d95a014728dedc9b000e', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.131', '2014-07-12 12:39:59', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728d95a014728df50790010', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 12:40:29', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728d95a014728df9a700012', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 12:40:48', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728d95a014728dfe56f0014', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 12:41:07', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728d95a014728e0078a0016', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 12:41:16', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728d95a014728e0f65c0018', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 12:42:17', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728d95a014728e11844001a', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 12:42:26', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728f3c8014728f465000000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.131', '2014-07-12 13:03:31', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728fa28014728fa7af50000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.131', '2014-07-12 13:10:09', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728fa28014728fb07a70001', 'Chrome', ' Languge Update Success', '5', '192.168.1.131', '2014-07-12 13:10:45', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728fa28014728fb9a410002', 'Chrome', ' Languge Update Success', '5', '192.168.1.131', '2014-07-12 13:11:23', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728fa28014728fd5f290004', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 13:13:19', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728fa28014728fd8a0f0006', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 13:13:30', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728fa28014728feca890008', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 13:14:52', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728fa28014728feee0a000a', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 13:15:01', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728fa28014728ff5a5f000c', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 13:15:29', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728fa28014728ff7e88000e', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 13:15:38', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728fa2801472900fe170010', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 13:17:16', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728fa2801472901dabf0012', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 13:18:13', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728fa280147290fada00014', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 13:33:19', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728fa280147290fcad00016', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 13:33:26', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728fa280147291004660018', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 13:33:41', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728fa28014729101a59001a', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 13:33:46', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728fa280147291059d8001c', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 13:34:03', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728fa2801472910777b001e', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 13:34:10', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728fa2801472910a6480020', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 13:34:22', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728fa2801472910bdde0022', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 13:34:28', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728fa280147291132600024', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 13:34:58', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728fa280147291152620026', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 13:35:06', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728fa28014729118cc70028', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 13:35:21', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728fa2801472911c712002a', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 13:35:36', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728fa2801472911ecd7002b', 'Chrome', ' Languge Update Success', '5', '192.168.1.131', '2014-07-12 13:35:46', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728fa28014729120686002c', 'Chrome', ' Languge Update Success', '5', '192.168.1.131', '2014-07-12 13:35:52', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728fa28014729125f26002e', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 13:36:15', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728fa2801472912838f0030', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 13:36:24', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728fa2801472912d1590032', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 13:36:44', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728fa2801472912e9cd0034', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 13:36:51', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728fa280147291414a90036', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 13:38:07', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728fa280147291480440038', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 13:38:35', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728fa2801472914b050003a', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 13:38:47', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034728fa2801472914ca13003c', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 13:38:54', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028810347292c730147292cb0af0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.131', '2014-07-12 14:05:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028810347292c730147292ec7060002', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 14:07:17', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028810347292c730147292edb280004', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 14:07:22', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028810347292c730147292f93890006', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 14:08:09', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028810347292c730147292fa7ee0008', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 14:08:14', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028810347292c7301472930082f000a', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 14:08:39', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028810347292c730147293021d3000c', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 14:08:46', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028810347292c73014729308a15000e', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 14:09:12', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028810347292c7301472930aeb20010', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 14:09:22', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028810347292c7301472931c59b0012', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 14:10:33', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028810347292c73014729320e3d0014', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 14:10:52', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028810347292c73014729369de70016', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 14:15:51', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028810347292c7301472936c81b0018', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 14:16:01', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028810347292c73014729386dd4001a', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 14:17:49', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028810347292c7301472938c704001c', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 14:18:12', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028810347292c7301472939f998001e', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 14:19:31', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028810347292c730147293a158d0020', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 14:19:38', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028810347292c730147293ab7a70022', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 14:20:19', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028810347292c730147293aefcf0024', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 14:20:34', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028810347292c730147293b77040026', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 14:21:08', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028810347292c730147293b8dd60028', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 14:21:14', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034729488801472948e8690000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.131', '2014-07-12 14:35:49', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('40288103472948880147294a65c80001', 'Chrome', ' Languge Update Success', '5', '192.168.1.131', '2014-07-12 14:37:27', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('40288103472948880147294b26490003', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 14:38:16', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('40288103472948880147294b43300005', 'Chrome', 'Languge Add Success', '3', '192.168.1.131', '2014-07-12 14:38:24', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034729600e0147296055da0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.131', '2014-07-12 15:01:25', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('40288103472963600147296427540000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.131', '2014-07-12 15:05:35', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028810347296e950147296eda500000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.131', '2014-07-12 15:17:16', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('40288103472977a901472977ee220000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.131', '2014-07-12 15:27:11', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('40288103472982510147298299170000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.131', '2014-07-12 15:38:50', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881034729ca08014729caa49e0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.131', '2014-07-12 16:57:32', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046ef7f2a0146ef7facc50000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.64', '2014-07-01 09:17:40', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046ef7f2a0146ef7ff3e10001', 'Chrome', '用户admin已退出', '2', '192.168.1.64', '2014-07-01 09:17:58', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046ef7f2a0146ef802bef0002', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.64', '2014-07-01 09:18:12', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046ef7f2a0146ef8118350003', 'Chrome', '用户admin已退出', '2', '192.168.1.64', '2014-07-01 09:19:13', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046ef7f2a0146ef8131f40004', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.64', '2014-07-01 09:19:20', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046ef7f2a0146ef8843f50005', 'Chrome', '用户admin已退出', '2', '192.168.1.64', '2014-07-01 09:27:03', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046ef7f2a0146ef8863a40006', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.64', '2014-07-01 09:27:11', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046ef7f2a0146ef8afa510007', 'Chrome', '用户admin已退出', '2', '192.168.1.64', '2014-07-01 09:30:01', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046ef7f2a0146ef8f0bfc0008', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.64', '2014-07-01 09:34:27', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046efce8d0146efcf2cbc0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.64', '2014-07-01 10:44:30', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046efce8d0146effd3b1b0002', 'Chrome', '多语言添加成功', '3', '192.168.1.64', '2014-07-01 11:34:48', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046efce8d0146effd5da20004', 'Chrome', '多语言添加成功', '3', '192.168.1.64', '2014-07-01 11:34:57', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046efce8d0146f00167d10006', 'Chrome', '多语言添加成功', '3', '192.168.1.64', '2014-07-01 11:39:22', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046efce8d0146f001f7d80008', 'Chrome', '多语言添加成功', '3', '192.168.1.64', '2014-07-01 11:39:59', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046efce8d0146f002637b0009', 'Chrome', '多语言更新成功', '5', '192.168.1.64', '2014-07-01 11:40:26', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046efce8d0146f0028e65000a', 'Chrome', '多语言更新成功', '5', '192.168.1.64', '2014-07-01 11:40:37', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046efce8d0146f00e215d000c', 'Chrome', '多语言添加成功', '3', '192.168.1.64', '2014-07-01 11:53:16', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046efce8d0146f00f05b6000e', 'Chrome', '多语言添加成功', '3', '192.168.1.64', '2014-07-01 11:54:14', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046efce8d0146f01110d20010', 'Chrome', '多语言添加成功', '3', '192.168.1.64', '2014-07-01 11:56:28', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046efce8d0146f01153140012', 'Chrome', '多语言添加成功', '3', '192.168.1.64', '2014-07-01 11:56:45', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046f013850146f013d0e20000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.64', '2014-07-01 11:59:28', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046f013850146f01419a60001', 'Chrome', '{0} Update Success', '5', '192.168.1.64', '2014-07-01 11:59:47', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046f013850146f014a9ce0002', 'Chrome', '{0} Update Success', '5', '192.168.1.64', '2014-07-01 12:00:24', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046f013850146f015c9a20003', 'Chrome', '{0} Update Success', '5', '192.168.1.64', '2014-07-01 12:01:38', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046f013850146f015ea7f0004', 'Chrome', '{0} Update Success', '5', '192.168.1.64', '2014-07-01 12:01:46', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046f013850146f01725460005', 'Chrome', '{0} Update Success', '5', '192.168.1.64', '2014-07-01 12:03:07', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046f013850146f017d2aa0006', 'Chrome', '{0} Update Success', '5', '192.168.1.64', '2014-07-01 12:03:51', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046f013850146f01822c70007', 'Chrome', '{0} Update Success', '5', '192.168.1.64', '2014-07-01 12:04:12', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046f013850146f0190dee0008', 'Chrome', '{0} Update Success', '5', '192.168.1.64', '2014-07-01 12:05:12', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046f013850146f01c54e30009', 'Chrome', '{0} Update Success', '5', '192.168.1.64', '2014-07-01 12:08:47', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046f013850146f01fe44d000a', 'Chrome', '{0} Update Success', '5', '192.168.1.64', '2014-07-01 12:12:40', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046f013850146f020e82a000b', 'Chrome', '{0} Update Success', '5', '192.168.1.64', '2014-07-01 12:13:46', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046f013850146f0228ea4000c', 'Chrome', '{0} Update Success', '5', '192.168.1.64', '2014-07-01 12:15:35', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046f013850146f022bf40000d', 'Chrome', '{0} Update Success', '5', '192.168.1.64', '2014-07-01 12:15:47', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046f013850146f022f08c000e', 'Chrome', '{0} Update Success', '5', '192.168.1.64', '2014-07-01 12:16:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046f013850146f02329df000f', 'Chrome', '{0} Update Success', '5', '192.168.1.64', '2014-07-01 12:16:14', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046f013850146f02378600010', 'Chrome', '\'Languge\' Update Success', '5', '192.168.1.64', '2014-07-01 12:16:34', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046f013850146f023de7d0011', 'Chrome', '\'Languge\' Update Success', '5', '192.168.1.64', '2014-07-01 12:17:01', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046f013850146f02408b40012', 'Chrome', '\'Languge\' Update Success', '5', '192.168.1.64', '2014-07-01 12:17:11', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046f013850146f02628f90013', 'Chrome', '\'Languge\' Update Success', '5', '192.168.1.64', '2014-07-01 12:19:31', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046f013850146f02713e40014', 'Chrome', '{0} Update Success', '5', '192.168.1.64', '2014-07-01 12:20:31', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046f013850146f027439a0015', 'Chrome', '{0} Update Success', '5', '192.168.1.64', '2014-07-01 12:20:43', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046f013850146f02791090016', 'Chrome', ' Languge Update Success', '5', '192.168.1.64', '2014-07-01 12:21:03', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046f02a3f0146f02b2cef0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.64', '2014-07-01 12:24:59', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046f02a3f0146f02b95550001', 'Chrome', ' Languge Update Success', '5', '192.168.1.64', '2014-07-01 12:25:26', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046f02a3f0146f02d9ea40003', 'Chrome', 'Languge Add Success', '3', '192.168.1.64', '2014-07-01 12:27:40', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046f02a3f0146f02df4ab0005', 'Chrome', 'Languge Add Success', '3', '192.168.1.64', '2014-07-01 12:28:02', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046f02a3f0146f0301b210007', 'Chrome', 'Languge Add Success', '3', '192.168.1.64', '2014-07-01 12:30:23', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046f02a3f0146f030cdeb0009', 'Chrome', 'Languge Add Success', '3', '192.168.1.64', '2014-07-01 12:31:08', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046f02a3f0146f0346015000b', 'Chrome', 'Languge Add Success', '3', '192.168.1.64', '2014-07-01 12:35:02', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046f02a3f0146f0348bcf000d', 'Chrome', 'Languge Add Success', '3', '192.168.1.64', '2014-07-01 12:35:13', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046f02a3f0146f03c2c3b000e', 'Chrome', ' Languge Update Success', '5', '192.168.1.64', '2014-07-01 12:43:33', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046f02a3f0146f03c3ea2000f', 'Chrome', '用户admin已退出', '2', '192.168.1.64', '2014-07-01 12:43:38', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046f02a3f0146f03c5c390010', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.64', '2014-07-01 12:43:46', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046f02a3f0146f03c79ae0011', 'Chrome', '多语言 更新成功', '5', '192.168.1.64', '2014-07-01 12:43:53', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046f02a3f0146f04d261e0012', 'Chrome', '用户admin已退出', '2', '192.168.1.64', '2014-07-01 13:02:06', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c046f02a3f0146f04d4c950013', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.64', '2014-07-01 13:02:16', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c146fcd9f70146fcda934d0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.65', '2014-07-03 23:32:01', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c146fcd9f70146fcdb2cef0001', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.65', '2014-07-03 23:32:40', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c146fcd9f70146fcf9904b0002', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.65', '2014-07-04 00:05:52', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c146fcd9f70146fd02eda00003', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.65', '2014-07-04 00:16:06', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c146fcd9f70146fd19e8c00004', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.65', '2014-07-04 00:41:12', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c146fcd9f70146fd20f6570005', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.1.65', '2014-07-04 00:48:54', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c14700a750014700a91e4d0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.65', '2014-07-04 17:16:29', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c14700a750014700c207a20001', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.65', '2014-07-04 17:43:41', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c14702018a014702025b4a0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.65', '2014-07-04 23:33:34', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c14702018a01470221981a0001', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.65', '2014-07-05 00:07:41', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c14702018a01470236671a0002', 'Chrome', '用户admin已退出', '2', '192.168.1.65', '2014-07-05 00:30:25', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c14702018a014702367f940003', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.65', '2014-07-05 00:30:31', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c14702018a01470248e2ba0004', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.65', '2014-07-05 00:50:36', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c14702018a0147024f40740005', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.65', '2014-07-05 00:57:34', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c14702018a014702581b000006', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.65', '2014-07-05 01:07:14', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c14702018a01470265f0ac0007', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.65', '2014-07-05 01:22:20', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c1470286e701470287452d0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.65', '2014-07-05 01:58:45', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c1470636fe01470638ec390000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.65', '2014-07-05 19:11:39', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c1470636fe0147063dc2140002', 'Chrome', 'Languge Add Success', '3', '192.168.1.65', '2014-07-05 19:16:56', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c1470636fe0147063e03b00004', 'Chrome', 'Languge Add Success', '3', '192.168.1.65', '2014-07-05 19:17:13', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c1470636fe0147063e736f0006', 'Chrome', 'Languge Add Success', '3', '192.168.1.65', '2014-07-05 19:17:41', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c1470636fe0147063e91170008', 'Chrome', 'Languge Add Success', '3', '192.168.1.65', '2014-07-05 19:17:49', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c1470636fe0147063f9a50000a', 'Chrome', 'Languge Add Success', '3', '192.168.1.65', '2014-07-05 19:18:57', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c1470636fe0147063fe10f000c', 'Chrome', 'Languge Add Success', '3', '192.168.1.65', '2014-07-05 19:19:15', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c1470636fe014706408c5c000e', 'Chrome', 'Languge Add Success', '3', '192.168.1.65', '2014-07-05 19:19:59', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c1470636fe0147064102bc0010', 'Chrome', 'Languge Add Success', '3', '192.168.1.65', '2014-07-05 19:20:29', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c1470636fe0147065887ae0012', 'Chrome', 'Languge Add Success', '3', '192.168.1.65', '2014-07-05 19:46:10', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c1470636fe01470658c2a80014', 'Chrome', 'Languge Add Success', '3', '192.168.1.65', '2014-07-05 19:46:26', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c1470636fe0147065a87120016', 'Chrome', 'Languge Add Success', '3', '192.168.1.65', '2014-07-05 19:48:21', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c1470636fe0147065acd780018', 'Chrome', 'Languge Add Success', '3', '192.168.1.65', '2014-07-05 19:48:39', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c1470636fe0147065c1da3001a', 'Chrome', 'Languge Add Success', '3', '192.168.1.65', '2014-07-05 19:50:05', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c1470636fe0147065c355c001c', 'Chrome', 'Languge Add Success', '3', '192.168.1.65', '2014-07-05 19:50:12', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c1470636fe0147066041f6001e', 'Chrome', 'Languge Add Success', '3', '192.168.1.65', '2014-07-05 19:54:37', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c1470636fe01470660a3340020', 'Chrome', 'Languge Add Success', '3', '192.168.1.65', '2014-07-05 19:55:02', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c1470636fe0147066267ed0022', 'Chrome', 'Languge Add Success', '3', '192.168.1.65', '2014-07-05 19:56:58', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c1470636fe01470662f1e90024', 'Chrome', 'Languge Add Success', '3', '192.168.1.65', '2014-07-05 19:57:33', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c1470636fe01470663fbdd0026', 'Chrome', 'Languge Add Success', '3', '192.168.1.65', '2014-07-05 19:58:41', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c1470636fe014706646c710028', 'Chrome', 'Languge Add Success', '3', '192.168.1.65', '2014-07-05 19:59:10', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c1470636fe014706648f3e0029', 'Chrome', ' Languge Update Success', '5', '192.168.1.65', '2014-07-05 19:59:19', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c1470636fe014706669f3f002b', 'Chrome', 'Languge Add Success', '3', '192.168.1.65', '2014-07-05 20:01:34', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c1470636fe01470666c8f3002d', 'Chrome', 'Languge Add Success', '3', '192.168.1.65', '2014-07-05 20:01:45', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c1470636fe0147068336f0002e', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.65', '2014-07-05 20:32:48', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c1470636fe01470695246c002f', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.65', '2014-07-05 20:52:23', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c14706a40b014706a581b40000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.65', '2014-07-05 21:10:15', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c14706a40b014706a90e440001', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.65', '2014-07-05 21:14:08', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c14706a40b014706abe5ff0002', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.65', '2014-07-05 21:17:14', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c14706a40b014706bc03d90003', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.65', '2014-07-05 21:34:50', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c14706a40b014706c36ba70004', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.65', '2014-07-05 21:42:56', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c14706a40b014706cea8300005', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.65', '2014-07-05 21:55:12', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c14706a40b014706e745b60006', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.65', '2014-07-05 22:22:05', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c14706a40b014706fd8eeb0007', 'Chrome', '用户admin已退出', '2', '192.168.1.65', '2014-07-05 22:46:26', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c14706a40b014706fdadf90008', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.65', '2014-07-05 22:46:34', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c14706a40b014706fea2a50009', 'Chrome', '用户admin已退出', '2', '192.168.1.65', '2014-07-05 22:47:36', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c14706a40b014706febf82000a', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.65', '2014-07-05 22:47:44', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c1470961bf014709630ee30000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.65', '2014-07-06 09:56:32', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c1470961bf01470968bae60001', 'Chrome', '用户admin已退出', '2', '192.168.1.65', '2014-07-06 10:02:44', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c1470961bf0147096926770002', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.65', '2014-07-06 10:03:11', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c1470961bf014709695b1e0003', 'Chrome', '用户admin已退出', '2', '192.168.1.65', '2014-07-06 10:03:25', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c1470961bf0147096988840004', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.65', '2014-07-06 10:03:36', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c147117dc00147117fc64f0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.65', '2014-07-07 23:44:52', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c147117dc001471198ff8f0001', 'Chrome', '用户admin已退出', '2', '192.168.1.65', '2014-07-08 00:12:25', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c147117dc00147119917ea0002', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.65', '2014-07-08 00:12:31', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c1471bdde601471be0d7b00000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.65', '2014-07-10 00:07:05', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c1471bed1f01471bee202b0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.65', '2014-07-10 00:21:36', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c1471bed1f01471bf1ec0c0001', 'Chrome', '用户admin已退出', '2', '192.168.1.65', '2014-07-10 00:25:45', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c1471bf29901471bf309ab0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.65', '2014-07-10 00:26:58', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c1471bf58401471bf69e6f0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.65', '2014-07-10 00:30:53', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c3472007b9014720089d230000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.67', '2014-07-10 19:29:01', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c347203fcc01472040a5cd0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.67', '2014-07-10 20:30:13', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c347203fcc0147204595d30002', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 20:35:37', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c347203fcc01472045b5f70004', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 20:35:45', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c347203fcc014720461add0006', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 20:36:11', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c347203fcc014720463bff0008', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 20:36:19', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c347203fcc0147204d690e000a', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 20:44:09', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c347203fcc0147204d9f07000c', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 20:44:23', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c347203fcc0147204f60de000d', 'Chrome', ' Languge Update Success', '5', '192.168.1.67', '2014-07-10 20:46:18', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c347203fcc0147204fa9cc000e', 'Chrome', ' Languge Update Success', '5', '192.168.1.67', '2014-07-10 20:46:37', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c347205fc00147206003260000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.67', '2014-07-10 21:04:28', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c347205fc0014720704ab20002', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 21:22:15', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c347205fc0014720718d3c0004', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 21:23:38', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c347205fc001472082f51e0006', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 21:42:39', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c347205fc00147208321ea0008', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 21:42:50', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c347205fc0014720833b980009', 'Chrome', '用户admin已退出', '2', '192.168.1.67', '2014-07-10 21:42:57', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c347205fc0014720835730000a', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.67', '2014-07-10 21:43:04', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c746de1ea60146de1efdd00000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.71', '2014-06-28 00:18:31', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c746de1ea60146de207d970002', 'Chrome', '权限: 多语言管理被添加成功', '3', '192.168.1.71', '2014-06-28 00:20:09', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c746de1ea60146de2109340004', 'Chrome', '用户admin已退出', '2', '192.168.1.71', '2014-06-28 00:20:45', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c746de1ea60146de2122f50005', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.71', '2014-06-28 00:20:52', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c746de1ea60146de21a8650006', 'Chrome', '权限: 多语言管理被更新成功', '5', '192.168.1.71', '2014-06-28 00:21:26', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c746de1ea60146de221b160007', 'Chrome', '用户admin已退出', '2', '192.168.1.71', '2014-06-28 00:21:55', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c746de1ea60146de2233c10008', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.71', '2014-06-28 00:22:01', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c746de26b80146de27310a0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.71', '2014-06-28 00:27:28', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c746de26b80146de2c2c680002', 'Chrome', '类型分组: 多语言被添加成功', '3', '192.168.125.203', '2014-06-28 00:32:55', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c746de26b80146de2cf95f0004', 'Chrome', '类型: en_us被添加成功', '3', '192.168.125.203', '2014-06-28 00:33:47', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c746de26b80146de2d59ca0005', 'Chrome', '类型: 英文被更新成功', '5', '192.168.125.203', '2014-06-28 00:34:12', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c746de26b80146de2dde3e0007', 'Chrome', '类型: zh_cn被添加成功', '3', '192.168.125.203', '2014-06-28 00:34:46', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c746de26b80146de2e0c4f0008', 'Chrome', '类型: 简体中文被更新成功', '5', '192.168.125.203', '2014-06-28 00:34:58', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c746e706630146e706eb860000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.71', '2014-06-29 17:48:48', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881c746e706630146e713c6880001', 'Chrome', '用户admin已退出', '2', '192.168.1.71', '2014-06-29 18:02:51', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881f449ec945e0149ec96c6530000', 'Chrome', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.1.116', '2014-11-26 22:52:24', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881f449ec945e0149ec9764190001', 'Chrome', '取消激活成功', '5', '192.168.1.116', '2014-11-26 22:53:04', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881f449ec945e0149ec976c650002', 'Chrome', '激活成功', '5', '192.168.1.116', '2014-11-26 22:53:07', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881f449ec9ac00149ec9bbc290000', 'Chrome', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.1.116', '2014-11-26 22:57:49', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881f449eca0ea0149eca1d33c0000', 'Chrome', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.1.116', '2014-11-26 23:04:28', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402881f449eca3e20149eca467b20000', 'Chrome', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.1.116', '2014-11-26 23:07:17', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028890147b37c1c0147b37c84740000', 'Firefox', 'User: admin[信息部]?common.login.success', '1', '192.168.9.129', '2014-08-08 10:39:47', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028890147b37c1c0147b37ca7c70001', 'Firefox', '用户admin已退出', '2', '192.168.9.129', '2014-08-08 10:39:56', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028890147b37c1c0147b37d7e770002', 'Firefox', 'User: admin[信息部]?common.login.success', '1', '192.168.9.129', '2014-08-08 10:40:51', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028890147b37c1c0147b37daf8a0003', 'Firefox', '用户admin已退出', '2', '192.168.9.129', '2014-08-08 10:41:04', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028890147b37c1c0147b38708210004', 'Firefox', '用户: admin[信息部]?common.login.success', '1', '192.168.9.129', '2014-08-08 10:51:16', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889ef4752b8f0014752b9a2c70000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.111', '2014-07-20 15:43:23', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889ef4752b8f0014752bab6640001', 'Chrome', '用户admin已退出', '2', '192.168.9.111', '2014-07-20 15:44:33', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889ef4752b8f0014752bacec20002', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.111', '2014-07-20 15:44:40', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889ef4752b8f0014752bae2f30003', 'Chrome', '用户admin已退出', '2', '192.168.9.111', '2014-07-20 15:44:45', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889ef4752b8f0014752bb07380004', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.111', '2014-07-20 15:44:54', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889ef4752b8f0014752bd2ef10005', 'Chrome', '用户admin已退出', '2', '192.168.9.111', '2014-07-20 15:47:15', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889ef4752b8f0014752bd64730006', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.111', '2014-07-20 15:47:29', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889ef4752b8f0014752c2a4080007', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.111', '2014-07-20 15:53:13', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889ef4752f680014752f6e18c0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.111', '2014-07-20 16:50:17', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889ef4752f680014752fbb7650001', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.111', '2014-07-20 16:55:33', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889ef4752f6800147530d88e80002', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.111', '2014-07-20 17:15:01', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889ef4752f68001475312f2250003', 'Chrome', '权限: report demo被更新成功', '5', '192.168.9.111', '2014-07-20 17:20:56', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889ef4752f680014753150e1d0006', 'Chrome', 'Language add success', '3', '192.168.9.111', '2014-07-20 17:23:14', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889ef4752f680014753153baf0008', 'Chrome', 'Language add success', '3', '192.168.9.111', '2014-07-20 17:23:26', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889ef4752f68001475315814e0009', 'Chrome', '用户admin已退出', '2', '192.168.9.111', '2014-07-20 17:23:44', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889ef4752f68001475315a716000a', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.111', '2014-07-20 17:23:53', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889ef4752f6800147531640cb000b', 'Chrome', '权限: user.report被更新成功', '5', '192.168.9.111', '2014-07-20 17:24:33', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889ef4752f680014753164e3f000c', 'Chrome', '用户admin已退出', '2', '192.168.9.111', '2014-07-20 17:24:36', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889ef4752f6800147531666ae000d', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.111', '2014-07-20 17:24:42', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889ef4752f68001475316d520000e', 'Chrome', '用户admin已退出', '2', '192.168.9.111', '2014-07-20 17:25:11', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889ef4752f68001475316fd39000f', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.111', '2014-07-20 17:25:21', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889ef475328ff01475329b8fc0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.9.111', '2014-07-20 17:45:49', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889f3489de53901489de5cac00000', 'Chrome', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.9.115', '2014-09-22 23:05:55', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889f3489de53901489de95fc40005', 'Chrome', '用户: scott更新成功', '5', '192.168.9.115', '2014-09-22 23:09:50', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889f3489de53901489de9a0930009', 'Chrome', '用户: scott更新成功', '5', '192.168.9.115', '2014-09-22 23:10:06', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889f3489dfd9201489dfe27a40000', 'Chrome', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.9.115', '2014-09-22 23:32:32', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889f3489e08cf01489e0970850000', 'Chrome', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.9.115', '2014-09-22 23:44:51', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889f3489e08cf01489e0a567e0001', 'Chrome', '删除成功', '4', '192.168.9.115', '2014-09-22 23:45:50', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889f3489e0d1701489e0d63160000', 'Chrome', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.9.115', '2014-09-22 23:49:10', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889f3489e13ab01489e14a18c0000', 'Chrome', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.9.115', '2014-09-22 23:57:05', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889f3489e13ab01489e1781d30001', 'Chrome', '删除成功', '4', '192.168.9.115', '2014-09-23 00:00:13', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889f3489e13ab01489e17882c0002', 'Chrome', '删除成功', '4', '192.168.9.115', '2014-09-23 00:00:15', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889f3489e1bdc01489e1c910d0000', 'Chrome', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.9.115', '2014-09-23 00:05:45', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889f3489e434301489e43d8ca0000', 'Chrome', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.9.115', '2014-09-23 00:48:39', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889f3489e434301489e4526770003', 'Chrome', '激活成功', '5', '192.168.9.115', '2014-09-23 00:50:05', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889f3489e434301489e45ef690004', 'Chrome', '取消激活成功', '5', '192.168.9.115', '2014-09-23 00:50:56', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889f3489e48ec01489e49c1580000', 'Chrome', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.9.115', '2014-09-23 00:55:06', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889f3489e48ec01489e4a7e370001', 'Chrome', '删除成功', '4', '192.168.9.115', '2014-09-23 00:55:55', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889f548bf8def0148bf8f03700000', 'Chrome', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.9.117', '2014-09-29 11:58:13', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889f548bffc650148bffd2c7b0000', 'Chrome', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.9.117', '2014-09-29 13:58:33', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889f548bffc650148c00158480002', 'Chrome', '类型: ?12被添加成功', '3', '192.168.9.117', '2014-09-29 14:03:06', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889f548bffc650148c0016fa60003', 'Chrome', '类型: ?3被更新成功', '5', '192.168.9.117', '2014-09-29 14:03:12', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889f548bffc650148c00177410004', 'Chrome', '类型: ?3被删除 成功', '4', '192.168.9.117', '2014-09-29 14:03:14', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889f548bffc650148c00187170006', 'Chrome', '类型分组: ?12被添加成功', '3', '192.168.9.117', '2014-09-29 14:03:18', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889f548bffc650148c0019f580007', 'Chrome', '类型分组: ?12 被删除 成功', '4', '192.168.9.117', '2014-09-29 14:03:24', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889f548bffc650148c003702e0009', 'Chrome', '激活成功', '5', '192.168.9.117', '2014-09-29 14:05:23', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889f64746f88a014746f90fd30000', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.118', '2014-07-18 08:57:13', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889f64746f88a014746f9a58a0001', 'Firefox', '用户: admin[信息部]登录成功', '1', '192.168.9.118', '2014-07-18 08:57:51', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889f647f727a70147f728cd5a0000', 'Chrome', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.9.118', '2014-08-21 14:02:32', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889f647f731ed0147f732382d0000', 'Chrome', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.9.118', '2014-08-21 14:12:49', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889f647f731ed0147f732dd260001', 'Chrome', '删除成功', '4', '192.168.9.118', '2014-08-21 14:13:31', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889f647f9335d0147f9343f140000', 'Chrome', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.9.118', '2014-08-21 23:34:16', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889f647f9353c0147f9358b520000', 'Chrome', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.9.118', '2014-08-21 23:35:41', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889f647f9353c0147f93824550001', 'Chrome', '用户admin已退出', '2', '192.168.9.118', '2014-08-21 23:38:31', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889f647f9353c0147f9384fe20002', 'Chrome', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.9.118', '2014-08-21 23:38:43', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889f647f9393b0147f93999660000', 'Chrome', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.9.118', '2014-08-21 23:40:07', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fa47e8209d0147e82171020000', 'Chrome', 'User: admin[信息部]?common.login.success', '1', '192.168.9.122', '2014-08-18 16:00:11', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fa47e8209d0147e82226730001', 'Firefox', '用户: admin[信息部]?common.login.success', '1', '192.168.9.122', '2014-08-18 16:00:57', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fa47e8209d0147e82469a10002', 'Firefox', 'User: admin[信息部]?common.login.success', '1', '192.168.9.122', '2014-08-18 16:03:26', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fa47e8209d0147e82564020003', 'Firefox', '用户admin已退出', '2', '192.168.9.122', '2014-08-18 16:04:30', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fa47e86ab30147e86b287a0000', 'Chrome', '用户: admin[信息部]?common.login.success', '1', '192.168.9.122', '2014-08-18 17:20:42', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fa4877578a0148775841c40000', 'Chrome', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.9.122', '2014-09-15 11:25:45', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fa4877578a0148775a53fc0001', 'Chrome', '语言 更新成功', '5', '192.168.9.122', '2014-09-15 11:28:01', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fa4877578a0148775a9bb80002', 'Chrome', '语言 更新成功', '5', '192.168.9.122', '2014-09-15 11:28:19', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fa4877578a0148775ad1a80003', 'Chrome', '语言 更新成功', '5', '192.168.9.122', '2014-09-15 11:28:33', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fa4886e79a014886e814db0000', 'Chrome', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.9.122', '2014-09-18 11:57:09', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fb480b140f01480b1581a90000', 'Chrome', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.9.123', '2014-08-25 10:53:51', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fb4810b55e014810b70db20000', 'Chrome', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.9.123', '2014-08-26 13:08:25', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fb4810b55e014810bd510c0005', 'Chrome', '用户: admin更新成功', '5', '192.168.9.123', '2014-08-26 13:15:15', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fb486e848101486e88b2c90000', 'Firefox', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.9.123', '2014-09-13 18:22:05', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fb486e848101486e89fa820004', 'Firefox', '用户: admin更新成功', '5', '192.168.9.123', '2014-09-13 18:23:29', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fb486e848101486e8de42b0006', 'Firefox', '菜单 录入成功', '3', '192.168.9.123', '2014-09-13 18:27:45', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fb486e848101486e8e2ed00008', 'Firefox', '菜单 录入成功', '3', '192.168.9.123', '2014-09-13 18:28:04', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fb486e848101486e8e43ce0009', 'Firefox', '菜单 更新成功', '5', '192.168.9.123', '2014-09-13 18:28:10', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fb486e848101486e8e5e17000a', 'Firefox', '菜单 更新成功', '5', '192.168.9.123', '2014-09-13 18:28:17', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fb486e848101486e913d14000c', 'Firefox', '操作 录入成功', '3', '192.168.9.123', '2014-09-13 18:31:25', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fb486e848101486e91bed5000f', 'Firefox', '用户admin已退出', '2', '192.168.9.123', '2014-09-13 18:31:58', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fb486e848101486e91e45a0010', 'Firefox', '用户: scott[软件开发部]?common.login.success', '1', '192.168.9.123', '2014-09-13 18:32:08', '1', '8a8ab0b246dc81120146dc81819d0053');
INSERT INTO `t_s_log` VALUES ('402889fb486e848101486e92356c0011', 'Firefox', '用户scott已退出', '2', '192.168.9.123', '2014-09-13 18:32:28', '1', '8a8ab0b246dc81120146dc81819d0053');
INSERT INTO `t_s_log` VALUES ('402889fb486e848101486e925aad0012', 'Firefox', '用户: admin[人力资源部]?common.login.success', '1', '192.168.9.123', '2014-09-13 18:32:38', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fb486e848101486e9357100013', 'Firefox', '菜单 更新成功', '5', '192.168.9.123', '2014-09-13 18:33:42', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fb486e848101486e93a8060015', 'Firefox', '菜单 录入成功', '3', '192.168.9.123', '2014-09-13 18:34:03', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fb486e848101486e98d4af0017', 'Firefox', '操作 录入成功', '3', '192.168.9.123', '2014-09-13 18:39:42', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fb486e848101486e9b14fc0019', 'Firefox', '用户admin已退出', '2', '192.168.9.123', '2014-09-13 18:42:10', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fb486e848101486e9b6afe001a', 'Firefox', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.9.123', '2014-09-13 18:42:32', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fb486e848101486e9b78f2001b', 'Firefox', '用户admin已退出', '2', '192.168.9.123', '2014-09-13 18:42:35', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fb486e848101486e9b9b77001c', 'Firefox', '用户: scott[软件开发部]?common.login.success', '1', '192.168.9.123', '2014-09-13 18:42:44', '1', '8a8ab0b246dc81120146dc81819d0053');
INSERT INTO `t_s_log` VALUES ('402889fb486e848101486e9c9563001d', 'Firefox', '菜单 更新成功', '5', '192.168.9.123', '2014-09-13 18:43:48', '1', '8a8ab0b246dc81120146dc81819d0053');
INSERT INTO `t_s_log` VALUES ('402889fb486e848101486e9ca970001e', 'Firefox', '用户scott已退出', '2', '192.168.9.123', '2014-09-13 18:43:53', '1', '8a8ab0b246dc81120146dc81819d0053');
INSERT INTO `t_s_log` VALUES ('402889fb486e848101486e9d1ea0001f', 'Firefox', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.9.123', '2014-09-13 18:44:23', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fb486e848101486e9d572f0020', 'Firefox', '用户admin已退出', '2', '192.168.9.123', '2014-09-13 18:44:38', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fb486e848101486e9dcc510021', 'Firefox', '用户: scott[软件开发部]?common.login.success', '1', '192.168.9.123', '2014-09-13 18:45:08', '1', '8a8ab0b246dc81120146dc81819d0053');
INSERT INTO `t_s_log` VALUES ('402889fb486eb7b501486eb862c80000', 'Firefox', '用户: scott[软件开发部]?common.login.success', '1', '192.168.9.123', '2014-09-13 19:14:10', '1', '8a8ab0b246dc81120146dc81819d0053');
INSERT INTO `t_s_log` VALUES ('402889fb486ebba501486ebc260b0000', 'Firefox', '用户: scott[软件开发部]?common.login.success', '1', '192.168.9.123', '2014-09-13 19:18:17', '1', '8a8ab0b246dc81120146dc81819d0053');
INSERT INTO `t_s_log` VALUES ('402889fb486ec32501486ec41d420000', 'Firefox', '用户: scott[软件开发部]?common.login.success', '1', '192.168.9.123', '2014-09-13 19:26:59', '1', '8a8ab0b246dc81120146dc81819d0053');
INSERT INTO `t_s_log` VALUES ('402889fb486ecb7601486ecc8d2e0000', 'Firefox', '用户: scott[软件开发部]?common.login.success', '1', '192.168.9.123', '2014-09-13 19:36:12', '1', '8a8ab0b246dc81120146dc81819d0053');
INSERT INTO `t_s_log` VALUES ('402889fb486ed46001486ed5130f0000', 'Firefox', '用户: scott[软件开发部]?common.login.success', '1', '192.168.9.123', '2014-09-13 19:45:30', '1', '8a8ab0b246dc81120146dc81819d0053');
INSERT INTO `t_s_log` VALUES ('402889fb486ed77c01486ed8c5d10000', 'Chrome', '用户: admin[人力资源部]?common.login.success', '1', '192.168.9.123', '2014-09-13 19:49:33', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fb486ed77c01486ed8e2220001', 'Chrome', '用户admin已退出', '2', '192.168.9.123', '2014-09-13 19:49:40', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fb486ed77c01486ed914890002', 'Chrome', '用户: scott[软件开发部]?common.login.success', '1', '192.168.9.123', '2014-09-13 19:49:53', '1', '8a8ab0b246dc81120146dc81819d0053');
INSERT INTO `t_s_log` VALUES ('402889fb486edd4501486eddc1580000', 'Chrome', '用户: admin[人力资源部]?common.login.success', '1', '192.168.9.123', '2014-09-13 19:54:59', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fb486edd4501486eddd10e0001', 'Chrome', '用户admin已退出', '2', '192.168.9.123', '2014-09-13 19:55:03', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fb486edd4501486eddf3ac0002', 'Chrome', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.9.123', '2014-09-13 19:55:12', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fb486edd4501486ede009d0003', 'Chrome', '用户admin已退出', '2', '192.168.9.123', '2014-09-13 19:55:15', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fb486edd4501486ede2dbe0004', 'Chrome', '用户: scott[软件开发部]?common.login.success', '1', '192.168.9.123', '2014-09-13 19:55:27', '1', '8a8ab0b246dc81120146dc81819d0053');
INSERT INTO `t_s_log` VALUES ('402889fb486edd4501486ee51ba70005', 'Chrome', '菜单 更新成功', '5', '192.168.9.123', '2014-09-13 20:03:01', '1', '8a8ab0b246dc81120146dc81819d0053');
INSERT INTO `t_s_log` VALUES ('402889fb486edd4501486ee52aad0006', 'Chrome', '用户scott已退出', '2', '192.168.9.123', '2014-09-13 20:03:05', '1', '8a8ab0b246dc81120146dc81819d0053');
INSERT INTO `t_s_log` VALUES ('402889fb486edd4501486ee54cda0007', 'Chrome', '用户: scott[软件开发部]?common.login.success', '1', '192.168.9.123', '2014-09-13 20:03:14', '1', '8a8ab0b246dc81120146dc81819d0053');
INSERT INTO `t_s_log` VALUES ('402889fb486eeb9801486eec006c0000', 'Chrome', '用户: scott[软件开发部]?common.login.success', '1', '192.168.9.123', '2014-09-13 20:10:33', '1', '8a8ab0b246dc81120146dc81819d0053');
INSERT INTO `t_s_log` VALUES ('402889fb486eee1d01486eef02d30000', 'Chrome', '用户: scott[软件开发部]?common.login.success', '1', '192.168.9.123', '2014-09-13 20:13:50', '1', '8a8ab0b246dc81120146dc81819d0053');
INSERT INTO `t_s_log` VALUES ('402889fb486f519c01486f52825f0000', 'Chrome', '用户: admin[人力资源部]?common.login.success', '1', '192.168.9.123', '2014-09-13 22:02:31', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fb486f519c01486f568bce0001', 'Chrome', '用户admin已退出', '2', '192.168.9.123', '2014-09-13 22:06:55', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fb486f519c01486f56b45c0002', 'Chrome', '用户: admin[人力资源部]?common.login.success', '1', '192.168.9.123', '2014-09-13 22:07:06', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fb486f519c01486f5a33df0003', 'Chrome', '用户admin已退出', '2', '192.168.9.123', '2014-09-13 22:10:55', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fb486f519c01486f5a55030004', 'Chrome', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.9.123', '2014-09-13 22:11:04', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fb486f519c01486f5ba6590005', 'Chrome', '操作 更新成功', '5', '192.168.9.123', '2014-09-13 22:12:30', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fb486f519c01486f5bc7410006', 'Chrome', '用户admin已退出', '2', '192.168.9.123', '2014-09-13 22:12:38', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fb486f519c01486f5ca26c0007', 'Chrome', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.9.123', '2014-09-13 22:13:34', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fb486f519c01486f5cb3b00008', 'Chrome', '用户admin已退出', '2', '192.168.9.123', '2014-09-13 22:13:39', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fb486f519c01486f5cdd230009', 'Chrome', '用户: scott[软件开发部]?common.login.success', '1', '192.168.9.123', '2014-09-13 22:13:49', '1', '8a8ab0b246dc81120146dc81819d0053');
INSERT INTO `t_s_log` VALUES ('402889fb486f519c01486f6106c2000a', 'Chrome', '操作 更新成功', '5', '192.168.9.123', '2014-09-13 22:18:22', '1', '8a8ab0b246dc81120146dc81819d0053');
INSERT INTO `t_s_log` VALUES ('402889fe47eccc130147eccc61d40000', 'Chrome', 'User: admin[中国人寿总公司]?common.login.success', '1', '192.168.9.126', '2014-08-19 13:45:23', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fe47eccc130147ecccd1440001', 'Chrome', '用户admin已退出', '2', '192.168.9.126', '2014-08-19 13:45:51', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fe47eccc130147ecccf9510002', 'Chrome', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.9.126', '2014-08-19 13:46:01', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fe47eccc130147ecd490c40003', 'Chrome', '组织机构 更新成功', '5', '192.168.9.126', '2014-08-19 13:54:19', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fe47fc461d0147fc4690ec0000', 'Chrome', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.9.126', '2014-08-22 13:53:08', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fe47fc461d0147fc46cf070002', 'Chrome', 'JeecgDemo例子: 12被添加成功', '3', '192.168.9.126', '2014-08-22 13:53:24', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fe47fc461d0147fc46fec10003', 'Chrome', '测试-用户申请成功', '5', '192.168.9.126', '2014-08-22 13:53:36', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fe47fc461d0147fc4705df0004', 'Chrome', 'JeecgDemo例子: 12被删除 成功', '4', '192.168.9.126', '2014-08-22 13:53:38', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fe47fc461d0147fc4820ae0005', 'Chrome', '用户: scott密码重置成功', '5', '192.168.9.126', '2014-08-22 13:54:51', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fe47fc461d0147fc482b3f0006', 'Chrome', '用户admin已退出', '2', '192.168.9.126', '2014-08-22 13:54:53', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fe47fc461d0147fc48710b0007', 'Chrome', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.9.126', '2014-08-22 13:55:11', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fe47fc461d0147fc48881c0008', 'Chrome', '用户admin已退出', '2', '192.168.9.126', '2014-08-22 13:55:17', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fe47fc461d0147fc4f5beb0009', 'Chrome', '用户: scott[软件开发部]?common.login.success', '1', '192.168.9.126', '2014-08-22 14:02:45', '1', '8a8ab0b246dc81120146dc81819d0053');
INSERT INTO `t_s_log` VALUES ('402889fe47fc461d0147fc4ff10f000b', 'Chrome', '添加成功', '3', '192.168.9.126', '2014-08-22 14:03:23', '1', '8a8ab0b246dc81120146dc81819d0053');
INSERT INTO `t_s_log` VALUES ('402889fe47fca63f0147fcaecc7c0000', 'Chrome', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.9.126', '2014-08-22 15:46:59', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fe47fca63f0147fcafba8e0002', 'Chrome', '操作 录入成功', '3', '192.168.9.126', '2014-08-22 15:48:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fe47fca63f0147fcb191660003', 'Chrome', '操作删除成功', '4', '192.168.9.126', '2014-08-22 15:50:01', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fe47fca63f0147fcb1b3020004', 'Chrome', '用户admin已退出', '2', '192.168.9.126', '2014-08-22 15:50:09', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fe47fcb29c0147fcb3e02d0000', 'Chrome', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.9.126', '2014-08-22 15:52:32', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('402889fe47fcb29c0147fcb6b66e0002', 'Chrome', '操作 录入成功', '3', '192.168.9.126', '2014-08-22 15:55:38', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028ab224bfd416c014bfd427a3f0000', 'Chrome', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.43.162', '2015-03-09 14:39:27', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028abc349f187560149f187ebea0000', 'Chrome', '用户: admin[中国人寿总公司]?common.login.success', '1', '192.168.43.67', '2014-11-27 21:54:17', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028d88147303d3e0147303db8940000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-07-13 23:00:57', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028d88147303d3e0147303df30e0001', 'Chrome', '用户admin已退出', '2', '192.168.88.1', '2014-07-13 23:01:12', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028d88147303d3e0147303e20300002', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-07-13 23:01:23', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028d88147303d3e0147304509c10003', 'Chrome', '用户admin已退出', '2', '192.168.88.1', '2014-07-13 23:08:56', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028d88147303d3e014730452b670004', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.88.1', '2014-07-13 23:09:05', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fc5e471c19f401471c1a728e0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.124.222', '2014-07-10 01:10:01', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fc5e471c19f401471c1bfbff0001', 'Chrome', '用户admin已退出', '2', '192.168.124.222', '2014-07-10 01:11:41', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fc5e471c19f401471c1c13c80002', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.124.222', '2014-07-10 01:11:47', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f32dc01471f334bd80000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.125.171', '2014-07-10 15:36:01', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f32dc01471f33c58d0001', 'Chrome', '用户admin已退出', '2', '192.168.125.171', '2014-07-10 15:36:32', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f32dc01471f33f4fb0002', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.125.171', '2014-07-10 15:36:44', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f356201471f3606f90000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.125.171', '2014-07-10 15:39:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f57b001471f582f6f0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.125.171', '2014-07-10 16:16:18', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f57b001471f5de3880001', 'Chrome', '修改成功', '5', '192.168.125.171', '2014-07-10 16:22:32', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471f6566300000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.125.171', '2014-07-10 16:30:44', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471f9576000002', 'Chrome', 'Languge Add Success', '3', '192.168.125.171', '2014-07-10 17:23:14', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471f95fddf0004', 'Chrome', 'Languge Add Success', '3', '192.168.125.171', '2014-07-10 17:23:49', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471f96a9a30005', 'Chrome', '用户admin已退出', '2', '192.168.125.171', '2014-07-10 17:24:33', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471f96c4210006', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.125.171', '2014-07-10 17:24:40', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471f9721e70007', 'Chrome', '用户admin已退出', '2', '192.168.125.171', '2014-07-10 17:25:04', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471f97400d0008', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.125.171', '2014-07-10 17:25:11', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471f9775b70009', 'Chrome', '用户admin已退出', '2', '192.168.125.171', '2014-07-10 17:25:25', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471f978bfa000a', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.125.171', '2014-07-10 17:25:31', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471fc74bf9000b', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.67', '2014-07-10 18:17:40', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471fc79e1c000d', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 18:18:01', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471fc7ec2f000f', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 18:18:21', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471fc8bd620011', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 18:19:15', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471fc8dcac0013', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 18:19:23', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471fc961c20015', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 18:19:57', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471fc97f3b0017', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 18:20:04', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471fc9e63c0019', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 18:20:31', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471fca0514001b', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 18:20:39', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471fcc9fa1001d', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 18:23:29', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471fccbf25001f', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 18:23:37', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471fcd6c9f0021', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 18:24:22', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471fcdd7200023', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 18:24:49', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471fce9e850025', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 18:25:40', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471fcec9f50027', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 18:25:51', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471fcf68c90029', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 18:26:32', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471fcf949a002b', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 18:26:43', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471fd06517002c', 'Chrome', '用户admin已退出', '2', '192.168.1.67', '2014-07-10 18:27:36', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471fd089b2002d', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.67', '2014-07-10 18:27:46', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471fd33ebc002f', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 18:30:43', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471fd36c5b0031', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 18:30:55', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471fd429190033', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 18:31:43', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471fd487cb0035', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 18:32:07', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471fd7067c0037', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 18:34:51', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471fd71f580039', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 18:34:57', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471fd80fe1003a', 'Chrome', '用户admin已退出', '2', '192.168.1.67', '2014-07-10 18:35:59', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471fd82852003b', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.67', '2014-07-10 18:36:05', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471fd8bd9c003d', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 18:36:43', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471fd8d360003f', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 18:36:49', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471fdae9b20041', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 18:39:06', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471fdb06fe0043', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 18:39:13', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471fdbd2c30045', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 18:40:05', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471fdc1bb20047', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 18:40:24', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471fdd7b2e0049', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 18:41:54', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471fde0d10004b', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 18:42:31', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471fde8731004d', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 18:43:03', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471fdebbb2004f', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 18:43:16', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471fdfb0110051', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 18:44:19', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471fdff9790053', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 18:44:37', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471fe05b990054', 'Chrome', '用户admin已退出', '2', '192.168.1.67', '2014-07-10 18:45:03', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471fe07aff0055', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.67', '2014-07-10 18:45:11', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471fe226620056', 'Chrome', ' Languge Update Success', '5', '192.168.1.67', '2014-07-10 18:47:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471fe237010057', 'Chrome', '用户admin已退出', '2', '192.168.1.67', '2014-07-10 18:47:04', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471fe24c120058', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.1.67', '2014-07-10 18:47:10', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471fe39400005a', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 18:48:34', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471fe4c6d1005c', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 18:49:52', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471fe5864d005e', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 18:50:41', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471fe611d90060', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 18:51:17', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471ff8d3050062', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 19:11:46', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471ff8fcd40064', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 19:11:57', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471ff9ec330066', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 19:12:58', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471ffa2ef80068', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 19:13:15', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471ffb993b006a', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 19:14:48', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471ffbb3e2006c', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 19:14:55', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471ffcc5aa006e', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 19:16:05', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471ffce0740070', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 19:16:12', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471ffdf2470072', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 19:17:22', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471ffe0b1e0074', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 19:17:28', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471ffed3320076', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 19:18:19', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd2b471f63bb01471ffeef120078', 'Chrome', 'Languge Add Success', '3', '192.168.1.67', '2014-07-10 19:18:26', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd4b46de568e0146de56dc0c0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.125.203', '2014-06-28 01:19:32', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd4b46de5e0e0146de5e58fd0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.125.203', '2014-06-28 01:27:43', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd4b46de5e0e0146de6277890001', 'Chrome', '用户admin已退出', '2', '192.168.125.203', '2014-06-28 01:32:13', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd4b46de5e0e0146de6297680002', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.125.203', '2014-06-28 01:32:21', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd4b46de66200146de6679110000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.125.203', '2014-06-28 01:36:36', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('4028fd4b46de69030146de69556d0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '192.168.125.203', '2014-06-28 01:39:43', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a89a13b47199b0d0147199b97b90000', 'Chrome', '用户: admin[信息部]登录成功', '1', '10.9.33.187', '2014-07-09 13:32:13', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a89a13b4719c5dd014719c725eb0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '10.9.33.187', '2014-07-09 14:19:47', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a89a13b4719dcb1014719dd402f0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '10.9.33.187', '2014-07-09 14:43:56', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0274723f65b0147247aa5c60000', 'Chrome', '用户: admin[信息部]登录成功', '1', '10.10.48.167', '2014-07-11 16:12:03', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab08d46fac6010146fac8ed760000', 'Chrome', '用户: admin[信息部]登录成功', '1', '10.10.48.13', '2014-07-03 13:53:30', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab08d46fac6010146fac998de0001', 'Firefox', '用户: admin[信息部]登录成功', '1', '10.10.48.13', '2014-07-03 13:54:14', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab08d46fac6010146fb0bc3c50002', 'Firefox', '用户: admin[信息部]登录成功', '1', '10.10.48.13', '2014-07-03 15:06:30', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab08d46fb5b6b0146fb5bd1380000', 'Firefox', '用户: admin[信息部]登录成功', '1', '10.10.48.13', '2014-07-03 16:33:57', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab08d46fb6cc00146fb6db4810000', 'Firefox', '用户: admin[信息部]登录成功', '1', '10.10.48.13', '2014-07-03 16:53:29', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab08d46fb6cc00146fb7e34460001', 'Firefox', '用户admin已退出', '2', '10.10.48.13', '2014-07-03 17:11:30', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab08d46fb6cc00146fb7e51bd0002', 'Firefox', '用户: admin[信息部]登录成功', '1', '10.10.48.13', '2014-07-03 17:11:38', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab08d46fb6cc00146fb833b810003', 'Chrome', '用户: admin[信息部]登录成功', '1', '10.10.48.13', '2014-07-03 17:17:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab08d46fb6cc00146fb83ee770004', 'Chrome', '用户: admin[信息部]登录成功', '1', '10.10.48.13', '2014-07-03 17:17:45', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab08d46fb6cc00146fb854e1d0005', 'Chrome', '用户: admin[信息部]登录成功', '1', '10.10.48.13', '2014-07-03 17:19:15', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b046f4b7700146f4b9b5430000', 'Chrome', '用户: admin[信息部]登录成功', '1', '10.10.48.48', '2014-07-02 09:39:09', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b046f4b7700146f4e259ef0001', 'Chrome', '用户: admin[信息部]登录成功', '1', '10.10.48.48', '2014-07-02 10:23:33', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b046f4b7700146f4f0d0d60002', 'Firefox', '用户: admin[信息部]登录成功', '1', '10.10.48.48', '2014-07-02 10:39:21', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b046f4f9f30146f4fa59590000', 'Firefox', '用户: admin[信息部]登录成功', '1', '10.10.48.48', '2014-07-02 10:49:46', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b046f576250146f5787a5d0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '10.10.48.48', '2014-07-02 13:07:32', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b046f576250146f578bc910001', 'Firefox', '用户: admin[信息部]登录成功', '1', '10.10.48.48', '2014-07-02 13:07:49', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc8183d500d6', 'Chrome', '用户: admin登录成功', '1', '169.254.200.136', '2013-04-24 16:22:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc8183df00d7', 'Chrome', '用户: admin登录成功', '1', '10.10.10.1', '2013-04-24 17:12:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc8183e000d8', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-10 15:37:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc8183e100d9', 'Chrome', '用户admin已退出', '2', '169.254.218.201', '2013-03-10 15:38:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc8183e300da', 'MSIE 9.0', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-10 15:38:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc8183e600db', 'MSIE 9.0', 'JeecgDemo例子: 12被删除 成功', '4', '169.254.218.201', '2013-03-10 15:39:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc8183e700dc', 'MSIE 9.0', 'JeecgDemo例子: 12被删除 成功', '4', '169.254.218.201', '2013-03-10 15:39:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc8183e800dd', 'Chrome', 'JeecgDemo例子: 12被删除 成功', '4', '169.254.218.201', '2013-03-10 15:39:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc8183ea00de', 'MSIE 9.0', '权限: 单表模型被更新成功', '5', '169.254.218.201', '2013-03-10 15:39:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc8183eb00df', 'Chrome', '删除成功', '4', '169.254.218.201', '2013-03-10 15:39:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc8183ed00e0', 'MSIE 9.0', '删除成功', '4', '169.254.218.201', '2013-03-10 15:39:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc8183ee00e1', 'Chrome', '删除成功', '4', '169.254.218.201', '2013-03-10 15:39:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc8183f000e2', 'Firefox', '删除成功', '4', '169.254.218.201', '2013-03-10 15:39:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc8183f200e3', 'Chrome', '添加成功', '3', '169.254.218.201', '2013-03-10 15:40:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc8183f400e4', 'Chrome', '更新成功', '5', '169.254.218.201', '2013-03-10 15:40:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc8183f500e5', 'Chrome', 'JeecgDemo例子: 12被添加成功', '3', '169.254.218.201', '2013-03-10 15:40:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc8183f900e6', 'Chrome', '部门: 信息部被更新成功', '5', '169.254.218.201', '2013-03-10 15:41:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc8183fa00e7', 'Chrome', '部门: 设计部被更新成功', '5', '169.254.218.201', '2013-03-10 15:41:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc8183fc00e8', 'Chrome', '类型: 信息部流程被更新成功', '5', '169.254.218.201', '2013-03-10 15:46:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc8183fd00e9', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-10 15:48:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc8183ff00ea', 'Firefox', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-21 23:23:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc81840100eb', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-21 23:26:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc81840200ec', 'Chrome', '权限: 一对多实例被添加成功', '3', '169.254.218.201', '2013-03-21 23:28:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc81840300ed', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-22 08:25:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc81840500ee', 'Firefox', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-22 09:05:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc81840600ef', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-22 09:09:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc81840700f0', 'MSIE 8.0', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-22 09:28:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc81840900f1', 'Firefox', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-22 10:32:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc81840a00f2', 'Chrome', '物品: 笔记本添加成功', '3', '169.254.218.201', '2013-03-22 10:35:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc81840c00f3', 'Firefox', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-22 10:41:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc81840d00f4', 'Firefox', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-22 16:11:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc81840f00f5', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-22 21:49:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc81841100f6', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-22 23:17:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc81841200f7', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-22 23:27:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc81841400f8', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-23 00:16:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc81841500f9', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-23 00:22:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc81841700fa', 'Firefox', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-23 00:31:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc81841800fb', 'Chrome', '用户: admin登录成功', '1', '169.254.218.201', '2013-03-23 14:23:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc81841900fc', 'Chrome', '流程参数: 主任审批被添加成功', '3', '169.254.218.201', '2013-03-23 15:05:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc81841b00fd', 'Firefox', '业务参数: 入职申请被添加成功', '3', '169.254.218.201', '2013-03-23 15:05:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc81841c00fe', 'Chrome', '权限: 入职申请被添加成功', '3', '169.254.218.201', '2013-03-23 15:12:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc81841e00ff', 'Firefox', '权限: 入职办理被添加成功', '3', '169.254.218.201', '2013-03-23 15:13:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc81841f0100', 'Chrome', '用户: admin登录成功', '1', '10.10.10.1', '2013-05-06 15:27:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc8184210101', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 15:16:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc8184220102', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:02:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc8184240103', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:07:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc8184250104', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:09:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc8184270105', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:11:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc8184280106', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:13:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc8184290107', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:16:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc81842c0108', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:19:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc81842d0109', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:27:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc81842f010a', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:42:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc818430010b', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:44:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc818432010c', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:49:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc818433010d', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:50:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc818435010e', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:53:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc818437010f', 'MSIE 8.0', '修改成功', '5', '192.168.197.1', '2013-07-07 16:56:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc8184390110', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 16:59:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc81843a0111', 'MSIE 8.0', '创建成功', '3', '192.168.197.1', '2013-07-07 17:22:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc81843c0112', 'MSIE 8.0', '修改成功', '5', '192.168.197.1', '2013-07-07 17:26:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc81843d0113', 'MSIE 8.0', '删除成功', '4', '192.168.197.1', '2013-07-07 17:31:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc81843f0114', 'MSIE 8.0', '修改成功', '5', '192.168.197.1', '2013-07-07 17:35:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc8184400115', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 17:46:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc8184410116', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 17:55:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc8184430117', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 18:08:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc8184450118', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 18:13:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc8184460119', 'MSIE 8.0', '用户: admin登录成功', '1', '192.168.197.1', '2013-07-07 18:15:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc818447011a', 'MSIE 8.0', '修改成功', '5', '192.168.197.1', '2013-07-07 18:28:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc818449011b', 'MSIE 8.0', '修改成功', '5', '192.168.197.1', '2013-07-07 18:29:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc81844b011c', 'MSIE 8.0', '修改成功', '5', '192.168.197.1', '2013-07-07 18:30:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc81844c011d', 'MSIE 8.0', '修改成功', '5', '192.168.197.1', '2013-07-07 18:31:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc81844d011e', 'MSIE 8.0', '修改成功', '5', '192.168.197.1', '2013-07-07 18:31:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc81844f011f', 'MSIE 9.0', '物品: 555添加成功', '3', '192.168.1.103', '2013-03-20 23:03:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc8184510120', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.103', '2013-03-20 23:19:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc8184530121', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.103', '2013-03-21 20:09:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc8184550122', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.103', '2013-03-21 20:27:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc8184570123', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.103', '2013-03-21 20:44:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc8184590124', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.103', '2013-03-21 20:54:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc81845a0125', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.103', '2013-03-21 21:01:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc81845c0126', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.103', '2013-03-21 21:13:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc81845d0127', 'MSIE 9.0', '物品: 55添加成功', '3', '192.168.1.103', '2013-03-21 21:15:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc81845f0128', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.103', '2013-03-21 21:22:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc8184610129', 'MSIE 9.0', '物品: 55添加成功', '3', '192.168.1.103', '2013-03-21 21:23:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc818462012a', 'MSIE 9.0', '物品: 33添加成功', '3', '192.168.1.103', '2013-03-21 21:23:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc818464012b', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.103', '2013-03-21 21:25:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc818465012c', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.103', '2013-03-21 21:27:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc818467012d', 'MSIE 9.0', '权限: 采购审批被添加成功', '3', '192.168.1.103', '2013-03-21 21:29:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc818468012e', 'MSIE 9.0', '权限: 采购审批被更新成功', '5', '192.168.1.103', '2013-03-21 21:29:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc81846a012f', 'MSIE 9.0', '权限: 采购审批被更新成功', '5', '192.168.1.103', '2013-03-21 21:30:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc81846b0130', 'MSIE 9.0', '用户: admin更新成功', '5', '192.168.1.103', '2013-03-21 21:31:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc81846d0131', 'MSIE 9.0', '流程参数: 采购审批员审批被添加成功', '3', '192.168.1.103', '2013-03-21 21:36:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc81846e0132', 'MSIE 9.0', '流程参数: 采购审批员审批被更新成功', '5', '192.168.1.103', '2013-03-21 21:36:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc8184700133', 'MSIE 9.0', '流程参数: 采购审批员审批被更新成功', '5', '192.168.1.103', '2013-03-21 21:37:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc8184710134', 'MSIE 9.0', '流程类别: 采购审批员审批被删除 成功', '4', '192.168.1.103', '2013-03-21 21:38:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc8184730135', 'MSIE 9.0', '物品: 44添加成功', '3', '192.168.1.103', '2013-03-21 21:43:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc8184740136', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.105', '2013-02-07 10:10:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc8184760137', 'MSIE 9.0', '权限: 上传下载被添加成功', '3', '192.168.1.105', '2013-02-07 11:07:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc8184770138', 'MSIE 9.0', '权限: 插件演示被删除成功', '4', '192.168.1.105', '2013-02-07 11:07:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc8184790139', 'MSIE 9.0', '用户: admin登录成功', '1', '192.168.1.105', '2013-02-07 11:07:00', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0b246dc81120146dc81a30a0191', 'Chrome', '用户: admin[信息部]登录成功', '1', '10.10.48.50', '2014-06-27 16:47:01', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0dd46ea3d5a0146ea43bb810000', 'Chrome', '用户: admin[信息部]登录成功', '1', '10.10.48.93', '2014-06-30 08:54:05', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0dd46ea45cc0146ea46e2920000', 'Chrome', '用户: admin[信息部]登录成功', '1', '10.10.48.93', '2014-06-30 08:57:32', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0dd46ea53660146ea53e1660000', 'Chrome', '用户: admin[信息部]登录成功', '1', '10.10.48.93', '2014-06-30 09:11:44', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0dd46ea53660146ea5486230002', 'Chrome', '多语言添加成功', '3', '10.10.48.93', '2014-06-30 09:12:26', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0dd46ea53660146ea54a9e90004', 'Chrome', '多语言添加成功', '3', '10.10.48.93', '2014-06-30 09:12:35', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0dd46ea563e0146ea56d5010000', 'Chrome', '用户: admin[信息部]登录成功', '1', '10.10.48.93', '2014-06-30 09:14:57', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0dd46ea5ba80146ea5c02c80000', 'Chrome', '用户: admin[信息部]登录成功', '1', '10.10.48.93', '2014-06-30 09:20:37', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0dd46ea5ba80146ea656bd40001', 'rv:11.0', '用户: admin[信息部]登录成功', '1', '10.10.48.93', '2014-06-30 09:30:53', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0dd46ea86830146ea874c3a0000', 'Chrome', '用户: admin[信息部]登录成功', '1', '10.10.48.93', '2014-06-30 10:07:53', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0dd46ea86830146eaad5a4b0003', 'Chrome', '用户: admin更新成功', '5', '10.10.48.93', '2014-06-30 10:49:27', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0dd46ead1cb0146ead246c70000', 'Chrome', '用户: admin[信息部]登录成功', '1', '10.10.48.93', '2014-06-30 11:29:47', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0dd46ead1cb0146eb2f829c0001', 'Chrome', '用户: admin[信息部]登录成功', '1', '10.10.48.93', '2014-06-30 13:11:37', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0dd46ead1cb0146ebb3aa730002', 'Chrome', '用户: admin[信息部]登录成功', '1', '10.10.48.93', '2014-06-30 15:35:58', '1', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_log` VALUES ('8a8ab0dd46ead1cb0146ec1b7fd10003', 'Chrome', '用户: admin[信息部]登录成功', '1', '10.10.48.93', '2014-06-30 17:29:23', '1', '8a8ab0b246dc81120146dc8181950052');

-- ----------------------------
-- Table structure for `t_s_muti_lang`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_muti_lang`;
CREATE TABLE `t_s_muti_lang` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `lang_key` varchar(50) NOT NULL COMMENT '语言主键',
  `lang_context` varchar(500) NOT NULL COMMENT '内容',
  `lang_code` varchar(50) NOT NULL COMMENT '语言',
  `create_date` datetime default NULL COMMENT '创建时间',
  `create_by` varchar(50) default NULL COMMENT '创建人编号',
  `create_name` varchar(50) default NULL COMMENT '创建人姓名',
  `update_date` datetime default NULL COMMENT '更新日期',
  `update_by` varchar(50) default NULL COMMENT '更新人编号',
  `update_name` varchar(50) default NULL COMMENT '更新人姓名',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_muti_lang
-- ----------------------------
INSERT INTO `t_s_muti_lang` VALUES ('01ca201223b14e3e86c13904a9ae5ca2', 'common.password', '密码', 'zh-cn', '2014-07-03 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('02916620f68b4845ba09773de6799706', 'please.select.department', 'Please select a department', 'en', '2014-07-04 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-04 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('0ab1a1fddf14420fa0dbcbfb5d2e9e85', 'common.strong', 'Strong', 'en', '2014-07-04 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-04 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('0bacd0fab1c84f03854435c1adab88c2', 'common.lock.user', '锁定用户', 'zh-cn', '2014-07-03 18:39:42', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('11d18a9927e34873a813eade025b5c18', 'fill.realname', 'Fill in the real name', 'en', '2014-07-04 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-04 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('121a68d32c6a419b800eb92431b20dd4', 'common.department', 'Org', 'en', '2014-07-03 18:39:42', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('1e5963a78dcd4b1fa5f9d6d845f151be', 'common.department', '组织机构', 'zh-cn', '2014-07-03 18:39:42', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('2075b6c641bc44b392638fed9a62cce9', 'password.rang6to18', '密码至少6个字符,最多18个字符', 'zh-cn', '2014-07-04 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-04 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('27a06a8ed99f45438be00b7f1ca097f7', 'common.username', '用户名', 'zh-cn', '2014-07-03 18:39:42', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046ff41480146ffbb62a30012', 'menu.manage', 'Menu Manage', 'en', '2014-07-04 12:56:50', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:06:15', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046ff41480146ffbc59ac0014', 'menu.manage', '菜单管理', 'zh-cn', '2014-07-04 12:57:54', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:06:26', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046ffc2ca0146ffc8cd320001', 'common.id', 'ID', 'en', '2014-07-04 13:11:28', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-21 14:04:37', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046ffc2ca0146ffc933dc0003', 'common.id', '编号', 'zh-cn', '2014-07-04 13:11:54', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:11:54', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046ffc2ca0146ffc9b4bb0005', 'menu.name', 'Menu Name', 'en', '2014-07-04 13:12:27', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:14:52', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046ffc2ca0146ffcd8f60000b', 'menu.name', '菜单名称', 'zh-cn', '2014-07-04 13:16:40', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:16:40', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046ffc2ca0146ffcdc44b000d', 'common.icon', 'Icon', 'en', '2014-07-04 13:16:53', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:16:53', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046ffc2ca0146ffcdf4a6000f', 'common.icon', '图标', 'zh-cn', '2014-07-04 13:17:06', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:17:06', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046ffc2ca0146ffce76c70011', 'menu.url', 'Menu Url', 'en', '2014-07-04 13:17:39', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:17:39', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046ffc2ca0146ffcea7d80013', 'menu.url', '菜单地址', 'zh-cn', '2014-07-04 13:17:51', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:17:51', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046ffc2ca0146ffcf13090015', 'menu.order', 'Menu Order', 'en', '2014-07-04 13:18:19', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:18:19', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046ffc2ca0146ffcf4b0a0017', 'menu.order', '菜单顺序', 'zh-cn', '2014-07-04 13:18:33', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:18:33', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046ffc2ca0146ffd059670019', 'menu.add', 'Function Add', 'en', '2014-07-04 13:19:42', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:22:11', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046ffc2ca0146ffd1cfeb001d', 'menu.edit', 'Menu Edit', 'en', '2014-07-04 13:21:18', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:21:18', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046ffc2ca0146ffd20205001f', 'menu.edit', '菜单编辑', 'zh-cn', '2014-07-04 13:21:31', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:21:31', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046ffc2ca0146ffe1a54f0023', 'menu.level', 'Menu Level', 'en', '2014-07-04 13:38:36', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:38:36', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046ffc2ca0146ffe1e8530025', 'menu.level', '菜单等级', 'zh-cn', '2014-07-04 13:38:53', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:38:53', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046ffc2ca0146ffe5e2860027', 'parent.function', 'Parent Function', 'en', '2014-07-04 13:43:14', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:54:25', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046ffc2ca0146ffe6108b0029', 'parent.function', '父菜单', 'zh-cn', '2014-07-04 13:43:26', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:54:37', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046ffc2ca0146ffe9ec39002b', 'main.function', 'Main Function', 'en', '2014-07-04 13:47:38', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:54:52', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046ffc2ca0146ffea3970002d', 'main.function', '一级菜单', 'zh-cn', '2014-07-04 13:47:58', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:55:06', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046ffc2ca0146ffea9f27002f', 'sub.function', 'Sub Function', 'en', '2014-07-04 13:48:24', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:55:23', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046ffc2ca0146ffead7b80031', 'sub.function', '下级菜单', 'zh-cn', '2014-07-04 13:48:39', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:55:34', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046ffc2ca0146ffebb2660033', 'desktop.icon', 'Desk Icon', 'en', '2014-07-04 13:49:35', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:49:35', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046ffc2ca0146ffebdf940035', 'desktop.icon', '桌面图标', 'zh-cn', '2014-07-04 13:49:46', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:49:46', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff2380146fffca39a0003', 'icon.list', 'Icon List', 'en', '2014-07-04 14:08:05', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 15:20:31', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff2380146fffd42c40005', 'icon.list', '图标列表', 'zh-cn', '2014-07-04 14:08:46', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 15:20:45', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff23801470001e905000b', 'common.icon.name', 'Icon Name', 'en', '2014-07-04 14:13:50', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:13:50', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff23801470002280b000d', 'common.icon.name', '图标名称', 'zh-cn', '2014-07-04 14:14:07', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:14:07', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff238014700030848000f', 'common.icon.style', 'Icon Style', 'en', '2014-07-04 14:15:04', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:21:40', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff2380147000332810011', 'common.icon.style', '图标样式', 'zh-cn', '2014-07-04 14:15:15', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:15:15', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff2380147000387440013', 'common.icon.type', 'Icon Type', 'en', '2014-07-04 14:15:37', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:15:37', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff23801470003af940015', 'common.icon.type', '图标类型', 'zh-cn', '2014-07-04 14:15:47', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:15:47', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff238014700054be10020', 'icon.add', 'Icon Add', 'en', '2014-07-04 14:17:32', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:17:32', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff23801470005af9a0024', 'icon.edit', 'Icon Edit', 'en', '2014-07-04 14:17:58', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:17:58', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff23801470005d3550026', 'icon.edit', '图标修改', 'zh-cn', '2014-07-04 14:18:07', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:18:07', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff238014700063c220028', 'batch.generate.style', 'Batch Generate Style', 'en', '2014-07-04 14:18:34', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-21 11:32:32', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff238014700068560002a', 'batch.generate.style', '批量生成样式', 'zh-cn', '2014-07-04 14:18:53', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:18:53', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff23801470015a389002e', 'common.department.list', 'Org List', 'en', '2014-07-04 14:35:23', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 15:17:33', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff23801470015ff8f0030', 'common.department.list', '组织机构列表', 'zh-cn', '2014-07-04 14:35:47', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 15:17:09', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff23801470016d58e0036', 'common.department.name', 'Org Name', 'en', '2014-07-04 14:36:42', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:36:42', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff238014700172e590038', 'common.department.name', '组织机构名称', 'zh-cn', '2014-07-04 14:37:04', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:37:04', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff23801470017a515003a', 'position.desc', 'Org Desc', 'en', '2014-07-04 14:37:35', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-08-18 23:41:49', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff23801470017d2fb003c', 'position.desc', '组织机构描述', 'zh-cn', '2014-07-04 14:37:47', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-08-18 23:41:59', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff238014700193e67003e', 'view.member', 'View Member', 'en', '2014-07-04 14:39:20', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:39:20', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff2380147001963ef0040', 'view.member', '查看成员', 'zh-cn', '2014-07-04 14:39:29', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:39:29', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff2380147001ab010004a', 'parent.depart', 'Parent Org', 'en', '2014-07-04 14:40:54', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:40:54', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff2380147001ad6a7004c', 'parent.depart', '上级组织机构', 'zh-cn', '2014-07-04 14:41:04', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:41:04', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff238014700256132004e', 'area.manage', 'Area Manage', 'en', '2014-07-04 14:52:35', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:52:35', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff23801470025a7e70050', 'area.manage', '地域管理', 'zh-cn', '2014-07-04 14:52:53', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:52:53', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff2380147002800990056', 'area.name', 'Area Name', 'en', '2014-07-04 14:55:27', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:55:27', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff23801470028c0330058', 'area.name', '地域名称', 'zh-cn', '2014-07-04 14:56:16', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:56:16', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff238014700295bd8005a', 'area.code', 'Area Code', 'en', '2014-07-04 14:56:56', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:56:56', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff2380147002981ee005c', 'area.code', '地域编码', 'zh-cn', '2014-07-04 14:57:06', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:57:06', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff23801470029c84d005e', 'display.order', 'Area Sort', 'en', '2014-07-04 14:57:24', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:57:37', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff2380147002a3fa50061', 'display.order', '显示顺序', 'zh-cn', '2014-07-04 14:57:54', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:58:02', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff2380147002a93ba0064', 'area.add.param', 'Area Add', 'en', '2014-07-04 14:58:16', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 15:12:56', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff2380147002c144c006c', 'area.level', 'Area Level', 'en', '2014-07-04 14:59:54', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:59:54', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff2380147002c3711006e', 'area.level', '地域等级', 'zh-cn', '2014-07-04 15:00:03', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 15:00:03', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff2380147002ce8a70070', 'parent.area', 'Parent Area', 'en', '2014-07-04 15:00:48', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 15:00:48', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201046fff2380147002d42990072', 'parent.area', '父地域', 'zh-cn', '2014-07-04 15:01:11', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 15:01:11', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e20104701c151014701d4ac920001', 'system.icon', 'System Icon', 'en', '2014-07-04 22:43:40', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 22:43:40', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e20104701c151014701d4e2990003', 'system.icon', '系统图标', 'zh-cn', '2014-07-04 22:43:54', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 22:43:54', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e20104701c151014701d53b200005', 'menu.icon', 'Menu Icon', 'en', '2014-07-04 22:44:17', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 22:44:17', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e20104701c151014701d5c6cc0007', 'menu.icon', '菜单图标', 'zh-cn', '2014-07-04 22:44:53', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 22:44:53', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e20104701c151014701dda832000d', 'main.area', 'Main Level', 'en', '2014-07-04 22:53:29', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 22:53:29', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e20104701c151014701ddf718000f', 'main.area', '一级地域', 'zh-cn', '2014-07-04 22:53:49', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 22:58:41', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e20104701c151014701de50dd0011', 'sub.area', 'Sub Level', 'en', '2014-07-04 22:54:12', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 22:55:00', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e20104701c151014701dece660013', 'sub.area', '下级地域', 'zh-cn', '2014-07-04 22:54:44', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 22:54:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e20104701ecd4014701f3a69c0001', 'member.list', 'Member List', 'en', '2014-07-04 23:17:30', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 23:17:30', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e20104701ecd4014701f3dcfb0003', 'member.list', '成员列表', 'zh-cn', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e2010477674e7014776e5ffae0005', 'iconname.rang2to10', '名称范围2~10位字符,且不为空', 'zh-cn', '2014-07-27 16:18:12', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e2010477674e7014776e6eecd0007', 'iconname.rang2to10', 'Icon name should be 2-10 characters and should not empty', 'en', '2014-07-27 16:19:11', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e20104777447a01477784810a000f', 'operate.name', '操作名称', 'zh-cn', '2014-07-27 19:11:18', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-27 19:17:45', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e20104777447a0147778a170d0011', 'operate.name', 'Operate Name', 'en', '2014-07-27 19:17:24', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e20104777447a01477791affe0014', 'operate.manage', 'Operate Manage', 'en', '2014-07-27 19:25:42', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e20104777447a01477791eea00016', 'operate.manage', '操作管理', 'zh-cn', '2014-07-27 19:25:58', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e20104777447a01477796ccde0018', 'operatename.rang2to20', '操作名称范围2~20位字符', 'zh-cn', '2014-07-27 19:31:17', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e20104777447a014777979ab6001a', 'operatename.rang2to20', 'Operate name should be 2-20 characters', 'en', '2014-07-27 19:32:10', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e20104777447a014777991ef9001c', 'operatestatus.number', '必须为数字', 'zh-cn', '2014-07-27 19:33:49', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e20104777447a0147779a0f71001e', 'operatestatus.number', 'Must be numeric', 'en', '2014-07-27 19:34:50', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047779c5b014777a9190b0007', 'common.default.icon', 'default', 'en', '2014-07-27 19:51:16', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047779c5b014777a974ca0009', 'common.default.icon', '默认', 'zh-cn', '2014-07-27 19:51:39', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047779c5b014777a9cbc3000b', 'common.back', 'back', 'en', '2014-07-27 19:52:02', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047779c5b014777a9f433000d', 'common.back', '返回', 'zh-cn', '2014-07-27 19:52:12', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047779c5b014777ae465e000f', 'common.smallpie.icon', 'smallpie', 'en', '2014-07-27 19:56:55', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047779c5b014777aeb70c0011', 'common.smallpie.icon', '小饼状图', 'zh-cn', '2014-07-27 19:57:24', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047779c5b014777af2a970013', 'common.picture', '图片', 'zh-cn', '2014-07-27 19:57:54', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-27 19:58:19', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201047779c5b014777af611a0015', 'common.picture', 'pictures', 'en', '2014-07-27 19:58:08', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047779c5b014777afea2c0018', 'common.pencil.icon', '笔', 'zh-cn', '2014-07-27 19:58:43', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047779c5b014777b01f4a001a', 'common.pencil.icon', 'pencil', 'en', '2014-07-27 19:58:56', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047779c5b014777b210ae001c', 'common.smallmap', '小地图', 'zh-cn', '2014-07-27 20:01:04', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047779c5b014777b2638d001e', 'common.smallmap', 'smallmap', 'en', '2014-07-27 20:01:25', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047779c5b014777b2d38b0020', 'common.group', '组', 'zh-cn', '2014-07-27 20:01:54', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047779c5b014777b3010a0022', 'common.group', 'group', 'en', '2014-07-27 20:02:05', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047779c5b014777b361fa0024', 'common.calculator', '计算器', 'zh-cn', '2014-07-27 20:02:30', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047779c5b014777b39c390026', 'common.calculator', 'calculator', 'en', '2014-07-27 20:02:45', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047779c5b014777b3ed9e0028', 'common.folder', '文件夹', 'zh-cn', '2014-07-27 20:03:06', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047779c5b014777b440fd002a', 'common.folder', 'folder', 'en', '2014-07-27 20:03:27', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e20104777c827014777f13d7f0002', 'common.delete.fail.param', '{0}删除失败{1}', 'zh-cn', '2014-07-27 21:10:04', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e20104777c827014777f282f60004', 'common.delete.fail.param', '{0} delete fail{1}', 'en', '2014-07-27 21:11:27', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e20104777c827014777f52cd10006', 'common.icon.isusing', '！图标正在使用，不允许删除。', 'zh-cn', '2014-07-27 21:14:22', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e20104777c827014777f8c27e0008', 'common.icon.isusing', ', Icon is using, can not be deleted.', 'en', '2014-07-27 21:18:17', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-27 21:27:54', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201047781c8e014778273b160007', 'departmentname.rang3to10', '机构名称在3~10位字符', 'zh-cn', '2014-07-27 22:09:02', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047781c8e0147782885e90009', 'departmentname.rang3to10', 'Department name should be 3-10 characters', 'en', '2014-07-27 22:10:27', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047781c8e0147782a1443000b', 'areaname.rang2to15', '地域名称范围2~15位字符,且不为空', 'zh-cn', '2014-07-27 22:12:09', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047781c8e0147782a6615000d', 'areaname.rang2to15', 'Area name should be 2-15 characters and should not empty', 'en', '2014-07-27 22:12:30', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047e73d0f0147e7ffd4540028', 'common.org.code', '机构编码', 'zh-cn', '2014-08-18 15:23:28', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047e73d0f0147e8004113002a', 'common.org.code', 'Org Code', 'en', '2014-08-18 15:23:56', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047e73d0f0147e800add5002c', 'common.org.type', '机构类型', 'zh-cn', '2014-08-18 15:24:24', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047e73d0f0147e800edf8002e', 'common.org.type', 'Org Type', 'en', '2014-08-18 15:24:40', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047e73d0f0147e80a71980030', 'common.company', '公司', 'zh-cn', '2014-08-18 15:35:04', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047e73d0f0147e80abac10032', 'common.company', 'Company', 'en', '2014-08-18 15:35:23', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047e73d0f0147e815144e0034', 'common.position', '岗位', 'zh-cn', '2014-08-18 15:46:41', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047e73d0f0147e81561a80036', 'common.position', 'Position', 'en', '2014-08-18 15:47:01', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047f766400147f7b9d4d20009', 'role.set', '角色设置', 'zh-cn', '2014-08-21 16:40:56', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201047f766400147f7be2c6a000c', 'current.org', '当前机构', 'zh-cn', '2014-08-21 16:45:41', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-08-21 16:49:44', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201047f766400147f7be6144000e', 'current.org', 'Current Org', 'en', '2014-08-21 16:45:54', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-08-21 16:50:03', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('297e201047f8c5050147f923e5e8000c', 'role.set', 'Role Set', 'en', '2014-08-21 23:16:25', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201048154920014815c3e9a7000c', 'common.add.exist.user', '添加已有客户', 'zh-cn', '2014-08-27 12:40:33', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201048154920014815c47ac1000e', 'common.add.exist.user', 'Add Exist User', 'en', '2014-08-27 12:41:11', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201048b7e5c60148b7ffe64e0001', 'common.type.list', '类型列表', 'zh-cn', '2014-09-28 00:44:34', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201048b7e5c60148b8002b620003', 'common.type.list', 'Type List', 'en', '2014-09-28 00:44:51', 'admin', '管理员', '2014-09-28 00:46:01', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('297e201048b7e5c60148b801c7520006', 'common.type.code', '类型编码', 'zh-cn', '2014-09-28 00:46:37', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201048b7e5c60148b801f8dc0008', 'common.type.code', 'Type Code', 'en', '2014-09-28 00:46:50', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201048b7e5c60148b8024884000a', 'common.type.name', '类型名称', 'zh-cn', '2014-09-28 00:47:10', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201048b7e5c60148b802773e000c', 'common.type.name', 'Type Name', 'en', '2014-09-28 00:47:22', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201048b803ec0148b80d34360001', 'common.type.view', '查看类型', 'zh-cn', '2014-09-28 00:59:06', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('297e201048b803ec0148b80d6da10003', 'common.type.view', 'Type View', 'en', '2014-09-28 00:59:20', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('2a609258aef344bbbcf0c766d922e449', 'common.phone', 'Phone', 'en', '2014-07-03 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('2bad4a20100e456aac2f6be3d1cc85ac', 'common.real.name', 'Real Name', 'en', '2014-07-03 18:39:42', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('2d70c1a8158b415b9aff12e1957c1819', 'common.repeat.password', 'Repeat Password', 'en', '2014-07-03 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('2fe5274af5d94fb49240d82b7b8d2a95', 'common.tel', 'Telephone', 'en', '2014-07-03 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('3db54b3731434dc38bc5ea3b20de7db8', 'common.middle', 'Middle', 'en', '2014-07-04 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-04 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028808847f3e70d0147f3eb326b0005', 'funcType', '菜单类型', 'zh-cn', '2014-08-20 22:56:23', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028808847f3e70d0147f3eb9f400007', 'funcType', 'funcType', 'en', '2014-08-20 22:56:51', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028808847f3e70d0147f3ef30570009', 'funcType.page', '菜单类型', 'zh-cn', '2014-08-20 23:00:44', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-08-23 01:48:20', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028808847f3e70d0147f3ef5482000b', 'funcType.page', 'menu type', 'en', '2014-08-20 23:00:54', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-08-23 01:48:29', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028808847f3e70d0147f3ef8590000d', 'funcType.from', 'access type', 'en', '2014-08-20 23:01:06', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-08-23 01:49:57', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028808847f3e70d0147f3efcd02000f', 'funcType.from', '访问类型', 'zh-cn', '2014-08-20 23:01:24', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-08-23 01:50:07', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028808847f972bb0147f9749a7b0003', 'operationType.disabled', 'disabled', 'en', '2014-08-22 00:44:34', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028808847f972bb0147f974dc860005', 'operationType.disabled', '禁用', 'zh-cn', '2014-08-22 00:44:51', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028808847f972bb0147f9754c030007', 'common.enable', '有效', 'zh-cn', '2014-08-22 00:45:19', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028808847f972bb0147f97581920009', 'common.enable', 'enable', 'en', '2014-08-22 00:45:33', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028808847f972bb0147f975c3c8000b', 'common.disable', '无效', 'zh-cn', '2014-08-22 00:45:50', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('4028808847f972bb0147f97612a1000d', 'common.disable', 'disable', 'en', '2014-08-22 00:46:10', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402880e447e9ba550147e9be3a3a0003', 'common.rang', '{0}Operate name  should be {1}-{2} characters', 'en', '2014-08-18 23:31:03', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-08-18 23:32:00', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402880e447e9ba550147e9bf9eaa0006', 'common.rang', '{0}范围{1}~{2}位字符', 'zh-cn', '2014-08-18 23:32:35', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402880e447e9ba550147e9c1ab590008', 'departmentname.rang1to20', 'Depart name should be 1-20 characters', 'en', '2014-08-18 23:34:49', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402880e447e9ba550147e9c25bbe000a', 'departmentname.rang1to20', '组织机构范围1~20位字符', 'zh-cn', '2014-08-18 23:35:34', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402880e4489db6e601489dbc2cdc0001', 'common.add.to', 'AddTo', 'en', '2014-09-22 22:20:28', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402880e4489db6e601489dbc61380003', 'common.add.to', '添加', 'zh-cn', '2014-09-22 22:20:41', 'admin', '管理员', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca9014705eee9120001', 'user.analysis.line', 'User analysis Line', 'en', '2014-07-05 17:50:49', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca9014705f1741c0003', 'user.analysis.line', '用户分析 Line', 'zh-cn', '2014-07-05 17:53:35', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca9014705f535a50005', 'user.analysis.pie', 'User analysis Pie', 'en', '2014-07-05 17:57:41', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca9014705f597d10007', 'user.analysis.pie', '用户分析 Pie', 'zh-cn', '2014-07-05 17:58:07', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca9014705f82a580009', 'user.analysis.histogram', 'User Analysis Histogram', 'en', '2014-07-05 18:00:55', '402880e64705a8ce014705af94280052', 'admin', '2014-07-21 10:08:08', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca9014705fc8656000b', 'user.browser.analysis', ' Analysis of the user\'s browser proportion', 'en', '2014-07-05 18:05:41', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca9014705fce72d000d', 'user.browser.analysis', '用户浏览器比例分析', 'zh-cn', '2014-07-05 18:06:06', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca901470608088c000f', 'class.student.count.analysis', 'Class student ratio analysis', 'en', '2014-07-05 18:18:15', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca9014706088d7c0011', 'class.student.count.analysis', '班级学生人数比例分析', 'zh-cn', '2014-07-05 18:18:49', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca90147060a873a0013', 'common.line.chart', 'Line chart', 'en', '2014-07-05 18:20:59', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca90147060aef730015', 'common.line.chart', '折线图', 'zh-cn', '2014-07-05 18:21:25', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca90147060bfcae0017', 'common.pie.chart', 'pie', 'en', '2014-07-05 18:22:34', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca90147060c5e310019', 'common.pie.chart', '饼状图', 'zh-cn', '2014-07-05 18:22:59', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca90147060dc6b6001b', 'common.histogram', 'Histogram', 'en', '2014-07-05 18:24:31', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca90147060e11f3001d', 'common.histogram', '柱状图', 'zh-cn', '2014-07-05 18:24:51', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca90147060fa1ba001f', 'class.count.statistics', 'Class size statistics', 'en', '2014-07-05 18:26:33', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca90147060fdf3a0021', 'class.count.statistics', '班级人数统计', 'zh-cn', '2014-07-05 18:26:49', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca90147061123451230', 'common.query.statistics', '统计查询', 'zh-cn', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca90147061123451231', 'common.query.statistics', 'Statistics Query', 'en', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca90147061123451232', 'common.schedule.task', '定时任务', 'zh-cn', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca90147061123451233', 'common.schedule.task', 'Timed Task', 'en', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca90147061123451234', 'system.log', '系统日志', 'zh-cn', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca90147061123451235', 'system.log', 'Sys Log', 'en', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca90147061123451236', 'data.monitor', '数据监控', 'zh-cn', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca90147061123451237', 'data.monitor', 'Data Monitor', 'en', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca90147061123451238', 'form.config', '表单配置', 'zh-cn', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca90147061123451239', 'form.config', 'Form Config', 'en', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca90147061123451240', 'dynamic.form.config', '动态报表配置', 'zh-cn', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca90147061123451241', 'dynamic.form.config', 'Dynamic Report Config', 'en', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca90147061123451242', 'user.analysis', '用户分析', 'zh-cn', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca90147061123451243', 'user.analysis', 'User Analysis', 'en', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca90147061365350027', 'lang.class', 'Class', 'en', '2014-07-05 18:30:40', '402880e64705a8ce014705af94280052', 'admin', '2014-07-20 11:56:18', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca901470614932d0029', 'lang.class', '班级', 'zh-cn', '2014-07-05 18:31:57', '402880e64705a8ce014705af94280052', 'admin', '2014-07-20 11:56:24', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca9014706152c0a002b', 'number.ofpeople', ' Number of people', 'en', '2014-07-05 18:32:36', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca901470615588b002d', 'number.ofpeople', '人数', 'zh-cn', '2014-07-05 18:32:48', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca901470615f986002f', 'common.proportion', 'Proportion', 'en', '2014-07-05 18:33:29', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402880e64705eca90147061627450031', 'common.proportion', '比例', 'zh-cn', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881034728d95a014728dc0fdf0005', 'has.sync', '已同步', 'zh-cn', '2014-07-12 12:36:56', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 12:36:56', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881034728d95a014728dcc32c0007', 'has.sync', 'Synchronized', 'en', '2014-07-12 12:37:42', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:10:45', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881034728d95a014728dd29140009', 'have.nosync', '未同步', 'zh-cn', '2014-07-12 12:38:08', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 12:38:08', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881034728d95a014728dd8161000b', 'have.nosync', 'No Synchronize', 'en', '2014-07-12 12:38:31', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 12:38:31', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881034728d95a014728dfe5610013', 'single.table', '单表', 'zh-cn', '2014-07-12 12:41:07', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 12:41:07', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881034728d95a014728e0077e0015', 'single.table', 'Single Table', 'en', '2014-07-12 12:41:16', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 12:41:16', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881034728d95a014728e0f6500017', 'slave.table', '附表', 'zh-cn', '2014-07-12 12:42:17', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 12:42:17', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881034728d95a014728e1183d0019', 'slave.table', 'Slave Table', 'en', '2014-07-12 12:42:26', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 12:42:26', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881034728fa28014728fd5f160003', 'smart.form.setting', '智能表单配置', 'zh-cn', '2014-07-12 13:13:19', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:13:19', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881034728fa28014728fd89ff0005', 'smart.form.setting', 'Smart Form Setting', 'en', '2014-07-12 13:13:30', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:13:30', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881034728fa28014728feca7b0007', 'generate.form', '生成表单', 'zh-cn', '2014-07-12 13:14:52', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:14:52', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881034728fa28014728feedfa0009', 'generate.form', 'Generate Form', 'en', '2014-07-12 13:15:01', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:15:01', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881034728fa28014728ff5a4e000b', 'generate.success', '生成成功', 'zh-cn', '2014-07-12 13:15:29', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:15:29', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881034728fa28014728ff7e81000d', 'generate.success', 'Generate Success', 'en', '2014-07-12 13:15:38', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:15:38', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881034728fa2801472900fe10000f', 'please.select.generate.item', '请选择要生成表单的项!', 'zh-cn', '2014-07-12 13:17:16', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:17:16', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881034728fa2801472901dab10011', 'please.select.generate.item', 'Please select should be generated item.', 'en', '2014-07-12 13:18:13', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:18:13', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881034728fa280147290fad990013', 'button.code', '按钮编码', 'zh-cn', '2014-07-12 13:33:19', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:33:19', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881034728fa280147290fcac30015', 'button.code', 'Button Code', 'en', '2014-07-12 13:33:26', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:33:26', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881034728fa2801472910045f0017', 'button.name', '按钮名称', 'zh-cn', '2014-07-12 13:33:41', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:33:41', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881034728fa28014729101a4a0019', 'button.name', 'Button Name', 'en', '2014-07-12 13:33:46', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:33:46', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881034728fa280147291059ca001b', 'button.style', '按钮样式', 'zh-cn', '2014-07-12 13:34:03', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:34:03', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881034728fa2801472910776c001d', 'button.style', 'Button Style', 'en', '2014-07-12 13:34:10', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:34:10', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881034728fa2801472910a634001f', 'action.type', '动作类型', 'zh-cn', '2014-07-12 13:34:22', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:34:22', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881034728fa2801472910bdd70021', 'action.type', 'Action Type', 'en', '2014-07-12 13:34:28', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:34:28', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810347292c730147293008280009', 'super.admin', '超级管理员', 'zh-cn', '2014-07-12 14:08:39', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:08:39', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810347292c730147293021c7000b', 'super.admin', 'Super Admin', 'en', '2014-07-12 14:08:46', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:08:46', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810347292c73014729308a0e000d', 'please.select.lock.item', '请选择锁定项目', 'zh-cn', '2014-07-12 14:09:12', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:09:12', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810347292c7301472930ae9e000f', 'please.select.lock.item', 'Please select locked item', 'en', '2014-07-12 14:09:22', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:09:22', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810347292c7301472931c5900011', 'is.confirm', '确定吗', 'zh-cn', '2014-07-12 14:10:33', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:10:33', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810347292c73014729320e310013', 'is.confirm', 'Confirm?', 'en', '2014-07-12 14:10:52', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:10:52', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810347292c73014729369dde0015', 'current.permission', '当前权限', 'zh-cn', '2014-07-12 14:15:51', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:15:51', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810347292c7301472936c80f0017', 'current.permission', 'Current Permission', 'en', '2014-07-12 14:16:01', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:16:01', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810347292c73014729386dce0019', 'confirm.delete.this.record', '确定删除该记录吗', 'zh-cn', '2014-07-12 14:17:49', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:17:49', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810347292c7301472938c6f9001b', 'confirm.delete.this.record', 'Delete this record, Confirm?', 'en', '2014-07-12 14:18:12', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:18:12', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810347292c7301472939f98b001d', 'menu.list', '菜单列表', 'zh-cn', '2014-07-12 14:19:31', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:19:31', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810347292c730147293a157d001f', 'menu.list', 'Menu List', 'en', '2014-07-12 14:19:38', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:19:38', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810347292c730147293ab7a10021', 'operate.button.list', '操作按钮列表', 'zh-cn', '2014-07-12 14:20:19', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:20:19', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810347292c730147293aefc40023', 'operate.button.list', 'Button List', 'en', '2014-07-12 14:20:34', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:20:34', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810347292c730147293b76f80025', 'select.all', '全选', 'zh-cn', '2014-07-12 14:21:08', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:21:08', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810347292c730147293b8dc60027', 'select.all', 'Select All', 'en', '2014-07-12 14:21:14', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:21:14', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('40288103472948880147294b26420002', 'button.setting', '按钮设置', 'zh-cn', '2014-07-12 14:38:16', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:38:16', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('40288103472948880147294b432a0004', 'button.setting', 'Button Setting', 'en', '2014-07-12 14:38:24', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:38:24', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474cecc301474cf3de950001', 'common.button.code', '按钮编码', 'zh-cn', '2014-07-19 12:49:16', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 12:49:16', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474cecc301474cf407a90003', 'common.button.code', 'Button Code', 'en', '2014-07-19 12:49:26', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 12:49:26', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474cecc301474cf46f7f0005', 'common.button.name', '按钮名称', 'zh-cn', '2014-07-19 12:49:53', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 12:49:53', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474cecc301474cf4994d0007', 'common.button.name', 'Button Name', 'en', '2014-07-19 12:50:04', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 12:50:04', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474cecc301474cf4f6430009', 'common.button.style', '按钮样式', 'zh-cn', '2014-07-19 12:50:28', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 12:50:28', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474cecc301474cf517aa000b', 'common.button.style', 'Button Style', 'en', '2014-07-19 12:50:36', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 12:50:36', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474cecc301474cf5930c000d', 'common.action.type', '动作类型', 'zh-cn', '2014-07-19 12:51:08', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 12:51:08', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474cecc301474cf5af11000f', 'common.action.type', 'Action Type', 'en', '2014-07-19 12:51:15', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 12:51:15', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474cecc301474cf652c20011', 'common.show.sequence', 'Show Sequence', 'en', '2014-07-19 12:51:57', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 13:04:07', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474cecc301474cf694a20013', 'common.show.sequence', '显示顺序', 'zh-cn', '2014-07-19 12:52:14', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 12:52:14', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474cecc301474cf6fa160015', 'common.show.icon.style', '显示图标样式', 'zh-cn', '2014-07-19 12:52:40', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 12:52:40', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474cecc301474cf71da40017', 'common.show.icon.style', 'Show Icon Style', 'en', '2014-07-19 12:52:49', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 12:52:49', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474cecc301474cf776390019', 'common.show.expression', '显示表达式', 'zh-cn', '2014-07-19 12:53:11', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 12:53:11', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474cecc301474cf7972c001b', 'common.show.expression', 'Show Expression', 'en', '2014-07-19 12:53:20', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 12:53:20', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474cecc301474d025ae20024', 'lang.code.cannot.add.update.delete', '编码不能是add/update/delete', 'zh-cn', '2014-07-19 13:05:05', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 13:05:05', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474cecc301474d0294e30026', 'lang.code.cannot.add.update.delete', 'Code cannot be add/update/delete', 'en', '2014-07-19 13:05:20', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 13:05:20', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474d25ab01474d28a1fe0002', 'lang.user.online', '人在线', 'zh-cn', '2014-07-19 13:46:54', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 13:46:54', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474d25ab01474d28cef50004', 'lang.user.online', 'user online', 'en', '2014-07-19 13:47:05', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 13:47:05', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474d25ab01474d2cc7d80006', 'common.login.name', '登录名', 'zh-cn', '2014-07-19 13:51:26', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 13:51:26', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474d25ab01474d2cf5650008', 'common.login.name', 'Login Name', 'en', '2014-07-19 13:51:37', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 13:51:37', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474d25ab01474d2ed970000a', 'common.login.time', '登录时间', 'zh-cn', '2014-07-19 13:53:41', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 13:53:41', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474d25ab01474d2f0340000c', 'common.login.time', 'Login Time', 'en', '2014-07-19 13:53:52', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 13:53:52', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474d25ab01474d3ad8c9000f', 'common.select', '选择', 'zh-cn', '2014-07-19 14:06:48', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 14:06:48', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474d25ab01474d3b14bb0011', 'common.select', 'Select', 'en', '2014-07-19 14:07:03', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 14:07:03', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474d25ab01474d3b61020013', 'common.clear', '清空', 'zh-cn', '2014-07-19 14:07:22', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 14:07:22', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028810b474d25ab01474d3b78f30015', 'common.clear', 'Clear', 'en', '2014-07-19 14:07:29', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-19 14:07:29', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028813f4752b0d7014752b35e4f0001', 'username.rang2to10', 'Username need 2~10 bits', 'en', '2014-07-20 15:36:32', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-20 15:36:32', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028813f4752c793014752cd3369000a', 'common.delete.success.param', '{0}删除成功', 'zh-cn', '2014-07-20 16:04:45', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-20 16:04:45', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028813f4752dc11014752e731930003', 'lang.dictionary.type', '字典分类', 'zh-cn', '2014-07-20 16:33:09', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-20 16:33:09', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028813f4752dc11014752e765dd0005', 'lang.dictionary.type', 'Dictionary Type', 'en', '2014-07-20 16:33:22', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-20 16:33:22', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028813f4752dc11014752e98bf90007', 'lang.dictionary.value', '字典值', 'zh-cn', '2014-07-20 16:35:43', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-20 16:35:43', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028813f4752dc11014752e9eba60009', 'lang.dictionary.value', 'Dictionary Value', 'en', '2014-07-20 16:36:07', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-21 14:06:50', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f793fd690016', 'common.taskid', 'Task Id', 'en', '2014-07-02 22:56:50', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:41:28', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f794259e0018', 'common.taskid', '任务ID', 'zh-cn', '2014-07-02 22:57:00', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:19:13', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7949e2d001a', 'common.task.desc', '任务描述', 'zh-cn', '2014-07-02 22:57:31', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-03 12:37:08', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f794d224001c', 'common.task.desc', 'Task Describe', 'en', '2014-07-02 22:57:44', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:41:38', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f79550c4001e', 'cron.expression', 'cron表达式', 'zh-cn', '2014-07-02 22:58:16', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:22:37', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7956b7b0020', 'cron.expression', 'Cron Expression', 'en', '2014-07-02 22:58:23', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:41:44', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f795c74b0022', 'common.iseffect', '是否生效', 'zh-cn', '2014-07-02 22:58:47', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:22:58', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f79643cc0024', 'common.iseffect', 'isEffect', 'en', '2014-07-02 22:59:19', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:23:03', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f796fbd60026', 'running.state', '运行状态', 'zh-cn', '2014-07-02 23:00:06', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:23:19', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f79729ce0028', 'running.state', 'Running State', 'en', '2014-07-02 23:00:17', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:41:52', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f798b8850034', 'common.createby', 'Create By', 'en', '2014-07-02 23:02:00', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:41:58', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f798f9cf0036', 'common.createby', '创建人', 'zh-cn', '2014-07-02 23:02:16', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:23:44', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7999ffd003c', 'common.updateby', 'Update By', 'en', '2014-07-02 23:02:59', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:42:12', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f799e7e9003e', 'common.updateby', '修改人', 'zh-cn', '2014-07-02 23:03:17', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:24:30', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f79a3aed0040', 'common.updatetime', '修改时间', 'zh-cn', '2014-07-02 23:03:38', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:24:47', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f79a6c310042', 'common.updatetime', 'Update Time', 'en', '2014-07-02 23:03:51', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:42:21', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f79b70e90044', 'common.operation', 'Operation', 'en', '2014-07-02 23:04:58', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:42:27', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f79b9eef0046', 'common.operation', '操作', 'zh-cn', '2014-07-02 23:05:10', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:25:17', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f79d8ea10048', 'common.start', 'Start', 'en', '2014-07-02 23:07:17', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:42:32', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f79df1d8004a', 'common.start', '运行', 'zh-cn', '2014-07-02 23:07:42', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:20:31', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f79e5f54004c', 'common.stop', 'Stop', 'en', '2014-07-02 23:08:10', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:42:38', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f79e7be9004e', 'common.stop', '停止', 'zh-cn', '2014-07-02 23:08:17', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:26:27', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f79faa1d0050', 'effective.immediately', 'Effective Immediately', 'en', '2014-07-02 23:09:35', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:26:35', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f79fcc7f0052', 'effective.immediately', '立即生效', 'zh-cn', '2014-07-02 23:09:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:26:39', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7a011b60054', 'common.delete', 'Delete', 'en', '2014-07-02 23:10:01', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:42:44', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7a02ccc0056', 'common.delete', '删除', 'zh-cn', '2014-07-02 23:10:08', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:26:55', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7a0da820059', 'common.add', 'Add', 'en', '2014-07-02 23:10:53', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:42:57', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7a106cf005b', 'common.add', '录入', 'zh-cn', '2014-07-02 23:11:04', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:13', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7a1500f005d', 'common.edit', 'Edit', 'en', '2014-07-02 23:11:23', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:43:04', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7a16f90005f', 'common.edit', '编辑', 'zh-cn', '2014-07-02 23:11:31', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:24', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7a186c20061', 'common.view', 'View', 'en', '2014-07-02 23:11:37', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:43:09', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7a1aa900063', 'common.view', '查看', 'zh-cn', '2014-07-02 23:11:46', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:36', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7a44eb60065', 'schedule.task.manage', 'Timed Task Manage', 'en', '2014-07-02 23:14:39', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:28:08', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7a471110067', 'schedule.task.manage', '定时任务管理', 'zh-cn', '2014-07-02 23:14:48', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7b7f88700a0', 'log.content', 'Log Content', 'en', '2014-07-02 23:36:08', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:41:04', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7b828ee00a2', 'log.content', '日志内容', 'zh-cn', '2014-07-02 23:36:20', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7b932f600a4', 'operate.ip', 'Operate IP', 'en', '2014-07-02 23:37:28', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:43:30', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7b9677100a6', 'operate.ip', '操作IP', 'zh-cn', '2014-07-02 23:37:41', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7b9bd7d00a8', 'common.browser', 'Broswer', 'en', '2014-07-02 23:38:04', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:43:36', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7b9f40a00aa', 'common.browser', '浏览器', 'zh-cn', '2014-07-02 23:38:17', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7ba2e7e00ac', 'operate.time', 'Operate Time', 'en', '2014-07-02 23:38:32', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:43:44', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7ba610e00ae', 'operate.time', '操作时间', 'zh-cn', '2014-07-02 23:38:45', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7bb601a00b0', 'log.manage', 'Log Manage', 'en', '2014-07-02 23:39:51', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7bb7ef200b2', 'log.manage', '日志管理', 'zh-cn', '2014-07-02 23:39:59', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7bbef3600b4', 'log.level', 'Log Level', 'en', '2014-07-02 23:40:27', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7c012cd00cc', 'select.loglevel', 'Please select log level', 'en', '2014-07-02 23:44:59', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7c086ff00ce', 'select.loglevel', '选择日志类型', 'zh-cn', '2014-07-02 23:45:28', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7c0c98a00d0', 'common.login', 'Login', 'en', '2014-07-02 23:45:45', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7c0ecb900d2', 'common.login', '登录', 'zh-cn', '2014-07-02 23:45:54', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7c287de00d9', 'common.insert', 'Insert', 'en', '2014-07-02 23:47:40', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7c2a1f200db', 'common.insert', '插入', 'zh-cn', '2014-07-02 23:47:46', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7c4ad4600e1', 'common.update', 'Update', 'en', '2014-07-02 23:50:00', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7c4dc8700e3', 'common.update', '更新', 'zh-cn', '2014-07-02 23:50:12', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7c5815c00e5', 'common.upload', 'Upload', 'en', '2014-07-02 23:50:55', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7c5a60600e7', 'common.upload', '上传', 'zh-cn', '2014-07-02 23:51:04', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7c5fd5700e9', 'common.other', 'Other', 'en', '2014-07-02 23:51:26', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46f7832b0146f7c62c2400eb', 'common.other', '其他', 'zh-cn', '2014-07-02 23:51:38', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028818d46fa75be0146fa855c60000e', 'log.level', '日志类型', 'zh-cn', '2014-07-03 12:39:42', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881c046efce8d0146effd3b0a0001', 'common.language', '语言', 'zh-cn', '2014-07-01 11:34:48', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-21 11:41:20', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881c046efce8d0146effd5d980003', 'language', 'Languge', 'en', '2014-07-01 11:34:57', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-01 12:01:46', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881c046efce8d0146f001f7cd0007', 'common.delete.success.param', '{0} delete success', 'en', '2014-07-01 11:39:59', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-01 11:40:26', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881c046efce8d0146f00e2152000b', 'common.edit.success.param', '{0} 更新成功', 'zh-cn', '2014-07-01 11:53:16', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-01 12:17:01', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881c046efce8d0146f00f05aa000d', 'common.edit.success.param', '{0} update success', 'en', '2014-07-01 11:54:14', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-20 16:03:05', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881c046efce8d0146f01110bc000f', 'common.add.success.param', '{0} 录入成功', 'zh-cn', '2014-07-01 11:56:28', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-01 11:56:28', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c046efce8d0146f01153070011', 'common.add.success.param', '{0} add success', 'en', '2014-07-01 11:56:45', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-01 11:56:45', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c046f02a3f0146f02d9e910002', 'common.refresh.success', '刷新成功', 'zh-cn', '2014-07-01 12:27:40', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-01 12:27:40', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c046f02a3f0146f02df49c0004', 'common.refresh.success', 'Refresh success', 'en', '2014-07-01 12:28:02', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-01 12:28:02', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c046f02a3f0146f0301b150006', 'common.edit.fail.param', '{0} 更新失败', 'zh-cn', '2014-07-01 12:30:22', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-01 12:30:22', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c046f02a3f0146f030cde00008', 'common.edit.fail.param', '{0} update fail', 'en', '2014-07-01 12:31:08', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-01 12:31:08', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c046f02a3f0146f0346009000a', 'common.refresh.fail', '刷新失败', 'zh-cn', '2014-07-01 12:35:02', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-01 12:35:02', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c046f02a3f0146f0348bc9000c', 'common.refresh.fail', 'Refresh Fail', 'en', '2014-07-01 12:35:13', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-01 12:35:13', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c1470636fe0147063dc2080001', 'database.property', '数据库属性', 'zh-cn', '2014-07-05 19:16:56', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:16:56', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c1470636fe0147063e03aa0003', 'database.property', 'Database Property', 'en', '2014-07-05 19:17:13', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:17:13', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c1470636fe0147063e73640005', 'page.property', '页面属性', 'zh-cn', '2014-07-05 19:17:41', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:17:41', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c1470636fe0147063e910c0007', 'page.property', 'Page Property', 'en', '2014-07-05 19:17:49', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:17:49', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c1470636fe0147063f9a4a0009', 'validate.dict', 'Validate Dictionary', 'en', '2014-07-05 19:18:57', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:18:57', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c1470636fe0147063fe101000b', 'validate.dict', '校验字典', 'zh-cn', '2014-07-05 19:19:15', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:19:15', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c1470636fe014706408c51000d', 'common.fk', '外键', 'zh-cn', '2014-07-05 19:19:59', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:19:59', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c1470636fe0147064102b0000f', 'common.fk', 'Foreign Key', 'en', '2014-07-05 19:20:29', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:20:29', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c1470636fe0147065887a70011', 'smark.form.form.maintain', '智能表单-表单维护', 'zh-cn', '2014-07-05 19:46:10', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:46:10', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c1470636fe01470658c29d0013', 'smark.form.form.maintain', 'Smart Form', 'en', '2014-07-05 19:46:26', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:46:26', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c1470636fe0147065a870d0015', 'common.one.to.many', '一对多', 'zh-cn', '2014-07-05 19:48:21', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:48:21', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c1470636fe0147065acd6d0017', 'common.one.to.many', 'One To Many', 'en', '2014-07-05 19:48:39', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:48:39', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c1470636fe0147065c1d980019', 'comon.one.to.one', '一对一', 'zh-cn', '2014-07-05 19:50:05', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:50:05', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c1470636fe0147065c3551001b', 'comon.one.to.one', 'One To One', 'en', '2014-07-05 19:50:12', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:50:12', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c1470636fe0147066041eb001d', 'common.uuid36bit', 'UUID(36位唯一编码)', 'zh-cn', '2014-07-05 19:54:37', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:54:37', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c1470636fe01470660a327001f', 'common.uuid36bit', 'UUID(36 Bit Unique Code)', 'en', '2014-07-05 19:55:02', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:55:02', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c1470636fe0147066267e70021', 'common.native.auto.increment', 'NATIVE(自增长方式)', 'zh-cn', '2014-07-05 19:56:58', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:56:58', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c1470636fe01470662f1dd0023', 'common.native.auto.increment', 'NATIVE(Auto Increment)', 'en', '2014-07-05 19:57:33', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:57:33', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c1470636fe01470663fbd00025', 'common.sequence', 'SEQUENCE(序列方式)', 'zh-cn', '2014-07-05 19:58:41', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:58:41', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c1470636fe014706646c6b0027', 'common.sequence', 'SEQUENCE(Sequence)', 'en', '2014-07-05 19:59:10', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:59:19', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881c1470636fe014706669f32002a', 'please.input.table.name', '请输入表名！', 'zh-cn', '2014-07-05 20:01:34', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 20:01:34', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c1470636fe01470666c8e8002c', 'please.input.table.name', 'Please Input Table Name', 'en', '2014-07-05 20:01:45', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 20:01:45', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c347203fcc0147204d69020009', 'input.error', '输入错误', 'zh-cn', '2014-07-10 20:44:09', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 20:44:09', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c347203fcc0147204d9ef9000b', 'input.error', 'Input error', 'en', '2014-07-10 20:44:23', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 20:44:23', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c347205fc0014720704aa50001', 'menuname.rang4to15', '菜单名称范围4~15位字符,且不为空', 'zh-cn', '2014-07-10 21:22:15', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 21:22:15', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c347205fc0014720718d360003', 'menuname.rang4to15', 'Menu name should be 4-15 characters and should not empty', 'en', '2014-07-10 21:23:38', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 21:23:38', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c347205fc001472082f5130005', 'jeect.platform', 'Jeecg 快速开发平台', 'zh-cn', '2014-07-10 21:42:39', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 21:42:39', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881c347205fc00147208321e10007', 'jeect.platform', 'Jeecg Quckly Platform', 'en', '2014-07-10 21:42:50', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 21:42:50', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e446f486df0146f49af73f0001', 'pk.strategies', 'Primary key strategies', 'en', '2014-07-02 09:05:35', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 09:05:35', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e446f486df0146f49c57320003', 'pk.strategies', '主键策略', 'zh-cn', '2014-07-02 09:07:05', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 09:07:05', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e446f5ec0b0146f5f492d60001', 'table.name', '表名', 'zh-cn', '2014-07-02 15:23:04', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 15:23:04', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e446f5ec0b0146f5f4b8fe0003', 'table.name', 'Table Name', 'en', '2014-07-02 15:23:14', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 15:23:14', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e446f5ec0b0146f5f536b50005', 'table.description', 'Table Desc', 'en', '2014-07-02 15:23:46', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-21 10:16:11', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881e446f5ec0b0146f5f56e0d0007', 'table.description', '表描述', 'zh-cn', '2014-07-02 15:24:00', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-21 10:16:15', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881e446f5ec0b0146f5f648c00009', 'table.type', 'Table Type', 'en', '2014-07-02 15:24:56', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 15:24:56', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e446f5ec0b0146f5f672b6000b', 'table.type', '表类型', 'zh-cn', '2014-07-02 15:25:07', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 15:25:07', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e446f5ec0b0146f61534a0000d', 'sequence.name', 'Sequence Name', 'en', '2014-07-02 15:58:43', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 15:58:43', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e446f5ec0b0146f621503b0019', 'master.table', '主表', 'zh-cn', '2014-07-02 16:11:56', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:11:56', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e446f5ec0b0146f621dddd001b', 'master.table', 'Master Table', 'en', '2014-07-02 16:12:33', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:12:33', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e446f5ec0b0146f6279e0f001d', 'common.yes', 'Yes', 'en', '2014-07-02 16:18:50', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:18:49', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e446f5ec0b0146f627cd1f001f', 'common.yes', '是', 'zh-cn', '2014-07-02 16:19:02', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:19:02', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e446f5ec0b0146f627f2040021', 'common.no', 'No', 'en', '2014-07-02 16:19:11', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:19:11', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e446f5ec0b0146f6281f900023', 'common.no', '否', 'zh-cn', '2014-07-02 16:19:23', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:19:23', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e446f5ec0b0146f62fe8800025', 'single.query', 'Single Choice Query', 'en', '2014-07-02 16:27:53', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:27:53', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e446f5ec0b0146f6302a9f0027', 'single.query', '单表查询', 'zh-cn', '2014-07-02 16:28:10', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:28:10', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e446f5ec0b0146f630e67d0029', 'combine.query', '组合查询', 'zh-cn', '2014-07-02 16:28:58', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:28:58', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e446f5ec0b0146f6312721002b', 'combine.query', 'Combined Query', 'en', '2014-07-02 16:29:14', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:29:14', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e446f5ec0b0146f6422c510036', 'common.isnull', 'Is Null', 'en', '2014-07-02 16:47:50', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:47:50', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e446f5ec0b0146f6428fd00038', 'common.isnull', '是否为空', 'zh-cn', '2014-07-02 16:48:15', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:48:15', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e446f5ec0b0146f642e30f003a', 'common.pk', 'Primary Key', 'en', '2014-07-02 16:48:37', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:48:37', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e446f5ec0b0146f64311fb003c', 'common.pk', '主键', 'zh-cn', '2014-07-02 16:48:49', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:48:49', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e446f5ec0b0146f6457894003e', 'field.type', 'Filed Type', 'en', '2014-07-02 16:51:26', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:51:26', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e446f5ec0b0146f6459cd30040', 'field.type', '字段类型', 'zh-cn', '2014-07-02 16:51:35', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:51:35', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146eca464640011', 'common.version', 'Version', 'en', '2014-06-30 19:58:55', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 19:58:55', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146eca47e280013', 'common.version', '版本', 'zh-cn', '2014-06-30 19:59:01', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 19:59:01', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146eca4b6bf0015', 'is.tree', 'Is Tree', 'en', '2014-06-30 19:59:16', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 19:59:16', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146eca4d8ba0017', 'is.tree', '是否树', 'zh-cn', '2014-06-30 19:59:24', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 19:59:24', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146eca510d60019', 'is.page', 'Is Page', 'en', '2014-06-30 19:59:39', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 19:59:39', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146eca537b7001b', 'is.page', '是否分页', 'zh-cn', '2014-06-30 19:59:49', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 19:59:49', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146eca6c3b8001d', 'sync.db', 'Sync DB', 'en', '2014-06-30 20:01:30', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:01:30', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146eca7193f001f', 'sync.db', '同步数据库', 'zh-cn', '2014-06-30 20:01:52', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:01:52', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146eca922890025', 'common.createtime', 'Create Time', 'en', '2014-06-30 20:04:05', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:04:05', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146ecab61a50033', 'common.createtime', '创建时间', 'zh-cn', '2014-06-30 20:06:33', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:53:48', '402881e946e70d550146e70fa0680086', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146ecac51520039', 'show.checkbox', 'Show Checkbox', 'en', '2014-06-30 20:07:34', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:07:34', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146ecac8bed003b', 'show.checkbox', '显示复选框', 'zh-cn', '2014-06-30 20:07:49', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:07:49', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146ecaea5630041', 'edit.form', 'Edit Table', 'en', '2014-06-30 20:10:07', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:10:07', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146ecaed7730043', 'edit.form', '编辑表单', 'zh-cn', '2014-06-30 20:10:19', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:10:19', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146ecaf39000045', 'create.form', 'Create From', 'en', '2014-06-30 20:10:44', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:10:44', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146ecaf63e00047', 'create.form', '创建表单', 'zh-cn', '2014-06-30 20:10:55', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:10:55', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146ecb108de0049', 'custom.button', 'Custom Button', 'en', '2014-06-30 20:12:43', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:12:43', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146ecb18fa6004b', 'custom.button', '自定义按钮', 'zh-cn', '2014-06-30 20:13:18', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:13:31', '402881e946e70d550146e70fa0680086', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146ecb3bd13004e', 'form.generate', 'Generated From From DB', 'en', '2014-06-30 20:15:40', '402881e946e70d550146e70fa0680086', 'admin', '2014-09-15 11:28:33', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146ecb3f9df0050', 'form.generate', '数据库导入表单', 'zh-cn', '2014-06-30 20:15:56', '402881e946e70d550146e70fa0680086', 'admin', '2014-09-15 11:28:19', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146ecb58ed40052', 'form.import', '表单导入', 'zh-cn', '2014-06-30 20:17:40', '402881e946e70d550146e70fa0680086', 'admin', '2014-09-15 11:28:01', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146ecb5a76b0054', 'form.import', 'From Import', 'en', '2014-06-30 20:17:46', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:17:46', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146ecb72e600056', 'form.export', 'From Export', 'en', '2014-06-30 20:19:26', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:19:26', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146ecb762b50058', 'form.export', '表单导出', 'zh-cn', '2014-06-30 20:19:39', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:40:55', '402881e946e70d550146e70fa0680086', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146ecc71340005a', 'js.enhance', 'JsEnhance', 'en', '2014-06-30 20:36:48', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:36:48', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146ecc74476005c', 'js.enhance', 'js增强', 'zh-cn', '2014-06-30 20:37:00', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:37:00', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146ecca27d20062', 'sql.enhance', 'SqlEnhance', 'en', '2014-06-30 20:40:09', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:40:09', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146ecca51c60064', 'sql.enhance', 'sql增强', 'zh-cn', '2014-06-30 20:40:20', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:40:20', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146ecd312230068', 'smart.form.config', 'Smart Form Config', 'en', '2014-06-30 20:49:54', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:49:54', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946eca0a40146ecd3732a006a', 'smart.form.config', '只能表单配置', 'zh-cn', '2014-06-30 20:50:19', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:50:19', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946f723300146f728bca20001', 'common.code', 'Code', 'en', '2014-07-02 20:59:40', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 20:59:40', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946f723300146f728e6220003', 'common.code', '编码', 'zh-cn', '2014-07-02 20:59:51', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 20:59:51', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946f723300146f72b42b40015', 'common.batch.delete', 'Batch Delete', 'en', '2014-07-02 21:02:25', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 21:02:25', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946f723300146f72b9a000017', 'common.batch.delete', '批量删除', 'zh-cn', '2014-07-02 21:02:48', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 21:02:48', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946f723300146f72ce5260021', 'query.sql', 'Query Sql', 'en', '2014-07-02 21:04:13', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 21:04:13', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946f723300146f72d1b480023', 'query.sql', '查询sql', 'zh-cn', '2014-07-02 21:04:26', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 21:04:26', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946f723300146f72d54c60025', 'common.name', 'Name', 'en', '2014-07-02 21:04:41', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 21:04:41', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946f723300146f72d72840027', 'common.name', '名称', 'zh-cn', '2014-07-02 21:04:49', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 21:04:49', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946f723300146f72e486c0029', 'dynamic.table.head', 'Dynamic Table', 'en', '2014-07-02 21:05:44', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 21:05:44', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881e946f723300146f72e7bda002b', 'dynamic.table.head', '动态表头', 'zh-cn', '2014-07-02 21:05:57', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 21:05:57', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881ea4706d22b014706da32a10009', 'common.order', 'Order', 'en', '2014-07-05 22:07:48', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:07:48', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881ea4706d22b014706da55fa000b', 'common.order', '排序', 'zh-cn', '2014-07-05 22:07:57', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:07:57', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881ea4706d22b014706daa606000d', 'common.text', 'Text', 'en', '2014-07-05 22:08:18', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:08:18', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881ea4706d22b014706dadb74000f', 'common.text', '文本框', 'zh-cn', '2014-07-05 22:08:32', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:08:32', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881ea4706d22b014706db1a6f0011', 'common.type', 'Type', 'en', '2014-07-05 22:08:48', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:08:48', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881ea4706d22b014706db389d0013', 'common.type', '类型', 'zh-cn', '2014-07-05 22:08:55', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:08:55', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881ea4706d22b014706db76390015', 'common.isshow', 'Is Show', 'en', '2014-07-05 22:09:11', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:09:11', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881ea4706d22b014706db99420017', 'common.isshow', '是否显示', 'zh-cn', '2014-07-05 22:09:20', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:09:20', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881ea4706d22b014706dbdb330019', 'common.href', 'Href', 'en', '2014-07-05 22:09:37', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:09:37', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881ea4706d22b014706dc0bfe001b', 'common.href', '字段href', 'zh-cn', '2014-07-05 22:09:50', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:09:50', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881ea4706d22b014706dc5fc0001d', 'common.query.module', 'Query Module', 'en', '2014-07-05 22:10:11', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:10:11', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881ea4706d22b014706dc87df001f', 'common.query.module', '查询模式', 'zh-cn', '2014-07-05 22:10:21', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:10:21', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881ea4706d22b014706dd524d0021', 'dict.code', '字典Code', 'zh-cn', '2014-07-05 22:11:13', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:11:13', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881ea4706d22b014706dd8a300023', 'dict.code', 'Dict Code', 'en', '2014-07-05 22:11:27', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:11:27', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881ea4706d22b014706ddc7570025', 'common.isquery', 'Is Query', 'en', '2014-07-05 22:11:43', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:11:43', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881ea4706d22b014706ddec9e0027', 'common.isquery', '是否查询', 'zh-cn', '2014-07-05 22:11:53', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:11:53', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881ea4706d22b014706e230b80029', 'common.text.type', 'Column Type', 'en', '2014-07-05 22:16:32', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:16:32', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881ea4706d22b014706e25a9f002b', 'common.text.type', '文本类型', 'zh-cn', '2014-07-05 22:16:43', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:16:43', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881ea4706d22b014706e368c9002d', 'common.hide', 'Hideen', 'en', '2014-07-05 22:17:52', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:17:52', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881ea4706d22b014706e3b1e2002f', 'common.hide', '隐藏', 'zh-cn', '2014-07-05 22:18:11', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:18:11', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881ea4706d22b014706e3fe800031', 'common.show', 'Show', 'en', '2014-07-05 22:18:30', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:18:30', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881ea4706d22b014706e423e40033', 'common.show', '显示', 'zh-cn', '2014-07-05 22:18:40', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:18:40', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402881ea4706d22b014706eba47c003e', 'dynamic.report.config.detail', 'Dyna Report Detail', 'en', '2014-07-05 22:26:52', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:29:53', '402881e946e70d550146e70fa0680086', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881ea4706d22b014706ebe1cd0040', 'dynamic.report.config.detail', '动态报表配置明细', 'zh-cn', '2014-07-05 22:27:07', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:30:02', '402881e946e70d550146e70fa0680086', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881fa470fe92601470fefea200003', 'dict.manage', '数据字典管理', 'zh-cn', '2014-07-07 16:28:07', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881fa470fe92601470ff21ddd0009', 'dict.name', 'Dict Name', 'en', '2014-07-07 16:30:31', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881fa470fe92601470ff24cb8000b', 'dict.name', '字典名称', 'zh-cn', '2014-07-07 16:30:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881fa470fe92601470ff4e2830019', 'common.add.param', '{0} Add', 'en', '2014-07-07 16:33:33', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-20 16:02:09', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881fa470fe92601470ff51cc9001b', 'common.add.param', '{0}录入', 'zh-cn', '2014-07-07 16:33:48', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-20 16:02:23', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881fa470fe92601470ff925da0025', 'dict.information.type', 'Data Dictionary Group Info', 'en', '2014-07-07 16:38:12', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881fa470fe92601470ff950100027', 'dict.information.type', '字典类型信息', 'zh-cn', '2014-07-07 16:38:23', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:43:03', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881fa470fe92601471005919a0037', 'common.role.list', 'Role List', 'en', '2014-07-07 16:51:46', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881fa470fe92601471005f5ac0039', 'common.role.list', '角色列表', 'zh-cn', '2014-07-07 16:52:12', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881fa470fe92601471006c0bf003f', 'common.role.code', 'Role Code', 'en', '2014-07-07 16:53:04', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881fa470fe92601471006e44a0041', 'common.role.code', '角色编码', 'zh-cn', '2014-07-07 16:53:13', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881fa470fe9260147100713840043', 'common.role.name', 'Role Name', 'en', '2014-07-07 16:53:25', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881fa470fe926014710073e820045', 'common.role.name', '角色名称', 'zh-cn', '2014-07-07 16:53:36', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881fa470fe926014710095eb50053', 'common.edit.param', '{0} Edit', 'en', '2014-07-07 16:55:55', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-20 15:07:04', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881fa470fe9260147100980ee0055', 'common.edit.param', '{0}编辑', 'zh-cn', '2014-07-07 16:56:04', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-20 15:07:13', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881fa470fe9260147100affff0057', 'common.role.info', 'Role Info', 'en', '2014-07-07 16:57:42', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881fa470fe9260147100b20eb0059', 'common.role.info', '角色信息', 'zh-cn', '2014-07-07 16:57:51', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881fa470fe9260147100bf680005b', 'permission.set', 'Permission', 'en', '2014-07-07 16:58:45', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881fa470fe9260147100c2c96005d', 'permission.set', '权限设置', 'zh-cn', '2014-07-07 16:58:59', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881fa470fe9260147100e5051005f', 'permission.manage', 'Permission Manage', 'en', '2014-07-07 17:01:19', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881fa470fe9260147100e8a360061', 'permission.manage', '权限管理', 'zh-cn', '2014-07-07 17:01:34', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881fa470fe9260147100f73140067', 'permission.name', 'Permission Name', 'en', '2014-07-07 17:02:34', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881fa470fe9260147100fa9270069', 'permission.name', '权限名称', 'zh-cn', '2014-07-07 17:02:48', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881fa470fe9260147101199f1006f', 'permission.collection', 'Permission Collection', 'en', '2014-07-07 17:04:55', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402881fa470fe92601471011bb380071', 'permission.collection', '权限集合', 'zh-cn', '2014-07-07 17:05:03', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('402884f146cc37ab0146cc3fc7350002', 'common.change.refresh', '样式修改成功，请刷新页面', 'zh-cn', '2014-06-24 13:01:10', 'admin', '管理员', '2014-06-24 13:01:10', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402884f146cc37ab0146cc4029a60004', 'common.change.refresh', 'Style change success, please refresh', 'en', '2014-06-24 13:01:35', 'admin', '管理员', '2014-06-24 13:01:35', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402884f146cc37ab0146cc4541cb0006', 'common.login.again', '请登录后再操作', 'zh-cn', '2014-06-24 13:07:09', 'admin', '管理员', '2014-06-24 13:07:09', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402884f146cc37ab0146cc45c1270008', 'common.login.again', 'Please login again', 'en', '2014-06-24 13:07:41', 'admin', '管理员', '2014-06-24 13:07:41', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402884f146cc37ab0146cc4de4da000a', 'common.userinfo', '用户信息', 'zh-cn', '2014-06-24 13:16:35', 'admin', '管理员', '2014-06-24 13:16:35', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402884f146cc37ab0146cc4e7b25000c', 'common.userinfo', 'My Profile', 'en', '2014-06-24 13:17:13', 'admin', '管理员', '2014-06-24 13:17:13', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402884f146cc37ab0146cc55cac30012', 'common.surname', '姓名', 'zh-cn', '2014-06-24 13:25:13', 'admin', '管理员', '2014-06-24 13:25:13', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('402884f146cc37ab0146cc55f21b0014', 'common.surname', 'Name', 'en', '2014-06-24 13:25:23', 'admin', '管理员', '2014-06-24 13:25:23', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc4d46c481da0146c4a15aa60003', 'common.calendar', '日历', 'zh-cn', '2014-06-23 01:30:47', 'admin', '管理员', '2014-06-23 01:30:47', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc4d46c481da0146c4a190580005', 'common.calendar', 'Calendar', 'en', '2014-06-23 01:31:01', 'admin', '管理员', '2014-06-23 01:31:01', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc4d46c481da0146c4a2dc220007', 'common.map', '地图', 'zh-cn', '2014-06-23 01:32:26', 'admin', '管理员', '2014-06-23 01:32:26', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc4d46c481da0146c4a2f24e0009', 'common.map', 'Map', 'en', '2014-06-23 01:32:31', 'admin', '管理员', '2014-06-23 01:32:31', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc4d46c481da0146c4aff7ea000b', 'common.please.select', '---请选择---', 'zh-cn', '2014-06-23 01:46:45', 'admin', '管理员', '2014-06-23 01:46:45', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc4d46c481da0146c4b03310000d', 'common.please.select', 'Please Select', 'en', '2014-06-23 01:47:00', 'admin', '管理员', '2014-06-23 02:01:20', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc4d46c481da0146c4b8af79000f', 'common.please.input.keyword', '请输入关键字', 'zh-cn', '2014-06-23 01:56:16', 'admin', '管理员', '2014-06-23 01:56:16', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc4d46c481da0146c4b8f7aa0011', 'common.please.input.keyword', 'Keyword', 'en', '2014-06-23 01:56:34', 'admin', '管理员', '2014-06-23 01:56:34', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc4d46c481da0146c4ba979a0013', 'common.please.input.query.keyword', '请输入查询关键字', 'zh-cn', '2014-06-23 01:58:21', 'admin', '管理员', '2014-06-23 01:58:21', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc4d46c481da0146c4bade820015', 'common.please.input.query.keyword', 'Query keyword', 'en', '2014-06-23 01:58:39', 'admin', '管理员', '2014-06-23 01:58:39', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc4d46c481da0146c4bee05c0018', 'common.query', '查询', 'zh-cn', '2014-06-23 02:03:02', 'admin', '管理员', '2014-06-23 02:03:02', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc4d46c481da0146c4bf0575001a', 'common.query', 'Query', 'en', '2014-06-23 02:03:11', 'admin', '管理员', '2014-06-23 02:03:11', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc4d46c481da0146c4bf4239001c', 'common.reset', '重置', 'zh-cn', '2014-06-23 02:03:27', 'admin', '管理员', '2014-06-23 02:03:27', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc4d46c481da0146c4bf638a001e', 'common.reset', 'Reset', 'en', '2014-06-23 02:03:35', 'admin', '管理员', '2014-06-23 02:03:35', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c18cdc0146c19fa9370004', 'common.navegation', '导航菜单', 'zh-cn', '2014-06-22 11:30:04', 'admin', '管理员', '2014-06-22 11:30:04', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c18cdc0146c1a0a4d50006', 'common.navegation', 'Navegation', 'en', '2014-06-22 11:31:09', 'admin', '管理员', '2014-06-22 11:31:09', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c18cdc0146c1a1b46e0008', 'common.control.panel', 'Control Panel', 'en', '2014-06-22 11:32:18', 'admin', '管理员', '2014-06-22 11:32:18', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c18cdc0146c1a1e59b000a', 'common.control.panel', '控制面板', 'zh-cn', '2014-06-22 11:32:31', 'admin', '管理员', '2014-06-22 11:32:31', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c18cdc0146c1a2d668000c', 'common.profile', '个人信息', 'zh-cn', '2014-06-22 11:33:32', 'admin', '管理员', '2014-06-22 11:33:32', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c18cdc0146c1a31e02000e', 'common.profile', 'Profile', 'en', '2014-06-22 11:33:51', 'admin', '管理员', '2014-06-22 11:33:51', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c18cdc0146c1a386000010', 'common.my.style', '首页风格', 'zh-cn', '2014-06-22 11:34:17', 'admin', '管理员', '2014-06-22 11:34:17', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c18cdc0146c1a3bccd0012', 'common.my.style', 'Style', 'en', '2014-06-22 11:34:31', 'admin', '管理员', '2014-06-22 11:34:31', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c18cdc0146c1a412670014', 'common.logout', '注销', 'zh-cn', '2014-06-22 11:34:53', 'admin', '管理员', '2014-06-22 11:36:06', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c18cdc0146c1a4f99a0016', 'common.logout', 'Logout', 'en', '2014-06-22 11:35:52', 'admin', '管理员', '2014-06-22 11:35:52', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c18cdc0146c1a5edff0019', 'common.exit', '退出', 'zh-cn', '2014-06-22 11:36:55', 'admin', '管理员', '2014-06-22 11:36:55', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c18cdc0146c1a60dff001b', 'common.exit', 'Exit', 'en', '2014-06-22 11:37:03', 'admin', '管理员', '2014-06-22 11:37:03', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c18cdc0146c1a85f8e001d', 'common.user', 'User', 'en', '2014-06-22 11:39:35', 'admin', '管理员', '2014-06-22 11:39:35', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c18cdc0146c1a88d9b001f', 'common.user', '用户', 'zh-cn', '2014-06-22 11:39:47', 'admin', '管理员', '2014-06-22 11:39:47', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c18cdc0146c1aae98c0025', 'common.platform', 'JEECG 演示系统', 'zh-cn', '2014-06-22 11:42:22', 'admin', '管理员', '2014-06-22 11:42:22', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c18cdc0146c1ab90ac0027', 'common.platform', 'JEECG Platform', 'en', '2014-06-22 11:43:04', 'admin', '管理员', '2014-06-22 11:43:04', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c1e09ce00017', 'lang.maintain', '语言信息维护', 'zh-cn', '2014-06-22 12:41:01', 'admin', '管理员', '2014-06-22 12:41:01', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c1e0f0780019', 'lang.maintain', 'Language Maintain', 'en', '2014-06-22 12:41:22', 'admin', '管理员', '2014-06-23 13:37:39', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c1ea9872002b', 'online.develop', 'Online Develop', 'en', '2014-06-22 12:51:55', 'admin', '管理员', '2014-06-22 12:51:55', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c1eaf4d6002d', 'online.develop', 'Online 开发', 'zh-cn', '2014-06-22 12:52:19', 'admin', '管理员', '2014-06-22 12:52:19', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c1eb749c002f', 'system.manage', '系统管理', 'zh-cn', '2014-06-22 12:52:51', 'admin', '管理员', '2014-06-22 12:52:51', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c1ebac710031', 'system.manage', 'System Manage', 'en', '2014-06-22 12:53:06', 'admin', '管理员', '2014-06-22 12:53:06', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c1ec37a10033', 'project.manage', '项目管理', 'zh-cn', '2014-06-22 12:53:41', 'admin', '管理员', '2014-06-22 12:53:41', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c1ec67a40035', 'project.manage', 'Project Manage', 'en', '2014-06-22 12:53:54', 'admin', '管理员', '2014-06-22 12:53:54', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c1ed9e6e0037', 'general.demo', '常用示例', 'zh-cn', '2014-06-22 12:55:13', 'admin', '管理员', '2014-06-22 12:55:13', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c1edcc6d0039', 'general.demo', 'Demo', 'en', '2014-06-22 12:55:25', 'admin', '管理员', '2014-06-22 12:55:25', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c1ee629d003b', 'system.monitor', '系统监控', 'zh-cn', '2014-06-22 12:56:03', 'admin', '管理员', '2014-06-22 12:56:03', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c1eebe6c003d', 'system.monitor', 'System Monitor', 'en', '2014-06-22 12:56:27', 'admin', '管理员', '2014-06-22 12:56:27', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c1ef4206003f', 'workflow.manage', '工作流管理', 'zh-cn', '2014-06-22 12:57:01', 'admin', '管理员', '2014-06-22 12:57:01', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c1ef78d20041', 'workflow.manage', 'Workflow Manage', 'en', '2014-06-22 12:57:15', 'admin', '管理员', '2014-06-22 12:57:15', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c1fe512f0045', 'common.change.password', '修改密码', 'zh-cn', '2014-06-22 13:13:28', 'admin', '管理员', '2014-06-22 13:13:28', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c1fe90260047', 'common.change.password', 'Change Password', 'en', '2014-06-22 13:13:44', 'admin', '管理员', '2014-06-22 13:13:44', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c202c92c0049', 'common.copyright', 'JEECG 版权所有', 'zh-cn', '2014-06-22 13:18:20', 'admin', '管理员', '2014-06-23 11:01:46', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c203cd8d004b', 'common.copyright', 'JEEECT Copyright Reserved', 'en', '2014-06-22 13:19:27', 'admin', '管理员', '2014-06-22 13:19:27', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c20508bf004d', 'common.refresh', '刷新', 'zh-cn', '2014-06-22 13:20:48', 'admin', '管理员', '2014-06-22 13:20:48', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c2053659004f', 'common.refresh', 'Refresh', 'en', '2014-06-22 13:20:59', 'admin', '管理员', '2014-06-22 13:20:59', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c2057c580051', 'common.close', 'Close', 'en', '2014-06-22 13:21:17', 'admin', '管理员', '2014-06-22 13:21:17', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c205aff20053', 'common.close', '关闭', 'zh-cn', '2014-06-22 13:21:31', 'admin', '管理员', '2014-06-22 13:21:31', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c205f4be0055', 'common.close.all', '全部关闭', 'zh-cn', '2014-06-22 13:21:48', 'admin', '管理员', '2014-06-22 13:21:48', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c20631f70057', 'common.close.all', 'Close All', 'en', '2014-06-22 13:22:04', 'admin', '管理员', '2014-06-22 13:22:04', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c2070b8a0059', 'common.close.all.but.this', 'Close all but this', 'en', '2014-06-22 13:23:00', 'admin', '管理员', '2014-06-22 13:23:00', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c2074657005b', 'common.close.all.but.this', '除此之外全部关闭', 'zh-cn', '2014-06-22 13:23:15', 'admin', '管理员', '2014-06-22 13:23:15', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c207f0bc005d', 'common.close.all.right', '当前页右侧全部关闭', 'zh-cn', '2014-06-22 13:23:58', 'admin', '管理员', '2014-06-22 13:23:58', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c2085b89005f', 'common.close.all.right', 'Close all on right', 'en', '2014-06-22 13:24:26', 'admin', '管理员', '2014-06-22 13:24:26', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c208cabc0061', 'common.close.all.left', '当前页左侧全部关闭', 'zh-cn', '2014-06-22 13:24:54', 'admin', '管理员', '2014-06-22 13:24:54', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c2094dee0063', 'common.close.all.left', 'Close all on left', 'en', '2014-06-22 13:25:28', 'admin', '管理员', '2014-06-22 13:25:28', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c2325e890069', 'common.assist.tools', '辅助工具', 'zh-cn', '2014-06-22 14:10:19', 'admin', '管理员', '2014-06-22 14:10:19', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c2330cf3006b', 'common.assist.tools', 'Tool', 'en', '2014-06-22 14:11:04', 'admin', '管理员', '2014-06-22 14:11:04', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c238a6eb006d', 'common.online.user', '用户在线列表', 'zh-cn', '2014-06-22 14:17:11', 'admin', '管理员', '2014-06-22 14:17:11', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fc5346c1aec50146c238d41e006f', 'common.online.user', 'Online User', 'en', '2014-06-22 14:17:22', 'admin', '管理员', '2014-06-22 14:17:22', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471f9575f10001', 'language.manage', '语言管理', 'zh-cn', '2014-07-10 17:23:14', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 17:23:14', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471f95fdd20003', 'language.manage', 'Lang Manage', 'en', '2014-07-10 17:23:49', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 17:23:49', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fc8bd5d0010', 'form.template', '表单模板', 'zh-cn', '2014-07-10 18:19:15', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:19:15', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fc8dc9b0012', 'form.template', 'Form Template', 'en', '2014-07-10 18:19:23', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:19:23', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fc961b70014', 'function.test', '功能测试', 'zh-cn', '2014-07-10 18:19:57', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:19:57', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fc97f300016', 'function.test', 'Function Test', 'en', '2014-07-10 18:20:04', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:20:04', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fc9e6310018', 'config.place', '配置地址', 'zh-cn', '2014-07-10 18:20:31', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:20:31', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fca0508001a', 'config.place', 'Setting Address', 'en', '2014-07-10 18:20:39', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:20:39', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fcd6c920020', 'table.exit.in.db.confirm', '表在数据库中已存在\\n确认删除', 'zh-cn', '2014-07-10 18:24:22', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:24:22', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fcdd7140022', 'table.exit.in.db.confirm', 'Table exit already\\n Confirm Delete', 'en', '2014-07-10 18:24:49', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:24:49', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fce9e7a0024', 'confirm.delete.record', '确认移除该记录', 'zh-cn', '2014-07-10 18:25:40', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:25:40', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fcec9d60026', 'confirm.delete.record', 'Confirm delete record', 'en', '2014-07-10 18:25:51', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:25:51', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fcf68be0028', 'form.datalist', '表单数据列表', 'zh-cn', '2014-07-10 18:26:32', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:26:32', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fcf948f002a', 'form.datalist', 'Form data list', 'en', '2014-07-10 18:26:43', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:26:43', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fd33eb1002e', 'common.please.select.edit.item', '请选择编辑项目', 'zh-cn', '2014-07-10 18:30:43', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:30:43', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fd36c4d0030', 'common.please.select.edit.item', 'Please select edit item', 'en', '2014-07-10 18:30:55', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:30:55', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fd429130032', 'common.please.select.one.record.to.edit', '请选择一条记录再编辑', 'zh-cn', '2014-07-10 18:31:43', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:31:43', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fd487c40034', 'common.please.select.one.record.to.edit', 'Please select one record to edit', 'en', '2014-07-10 18:32:07', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:32:07', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fd8bd8f003c', 'common.menu.link', '菜单链接', 'zh-cn', '2014-07-10 18:36:43', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:36:43', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fd8d355003e', 'common.menu.link', 'Menu Link', 'en', '2014-07-10 18:36:49', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:36:49', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fdae99f0040', 'form.sqlimport', '表单SQL导入', 'zh-cn', '2014-07-10 18:39:06', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:39:06', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fdb06f60042', 'form.sqlimport', 'Form SQL Import', 'en', '2014-07-10 18:39:13', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:39:13', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fdbd2b60044', 'slave.table.can.not.generate.code', '附表不能代码生成', 'zh-cn', '2014-07-10 18:40:05', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:40:05', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fdc1ba70046', 'slave.table.can.not.generate.code', 'Slave table can not generate code', 'en', '2014-07-10 18:40:24', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:47:00', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fdd7b230048', 'please.syncdb', '请先同步数据库', 'zh-cn', '2014-07-10 18:41:54', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:41:54', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fde0d02004a', 'please.syncdb', 'Please synchronize database first', 'en', '2014-07-10 18:42:31', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:42:31', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fde8727004c', 'code.generate', '代码生成', 'zh-cn', '2014-07-10 18:43:03', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:43:03', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fdebba6004e', 'code.generate', 'Code Generate', 'en', '2014-07-10 18:43:16', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:43:16', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fdfb0040050', 'please.select.sync.method', '请选择同步方式', 'zh-cn', '2014-07-10 18:44:19', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:44:19', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fdff96f0052', 'please.select.sync.method', 'Please select synchronize method', 'en', '2014-07-10 18:44:37', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:44:37', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fe393f60059', 'normal.sync', '普通同步(保留表数据)', 'zh-cn', '2014-07-10 18:48:34', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:48:34', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fe4c6cb005b', 'normal.sync', 'Normal Sync(Retain Data)', 'en', '2014-07-10 18:49:52', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:49:52', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fe58641005d', 'force.sync', '强制同步(删除表,重新生成)', 'zh-cn', '2014-07-10 18:50:41', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:50:41', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471fe611cd005f', 'force.sync', 'Force Sync(Delete Table, ReGenerate)', 'en', '2014-07-10 18:51:17', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:51:17', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471ff8d3000061', 'enhance.type', '增强类型', 'zh-cn', '2014-07-10 19:11:46', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 19:11:46', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471ff8fcca0063', 'enhance.type', 'Enhance Type', 'en', '2014-07-10 19:11:57', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 19:11:57', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471ff9ec220065', 'enhance.js', '增强js', 'zh-cn', '2014-07-10 19:12:58', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 19:12:58', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471ffa2ef10067', 'enhance.js', 'Enhance JS', 'en', '2014-07-10 19:13:15', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 19:13:15', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471ffb99300069', 'get.error', '出错了', 'zh-cn', '2014-07-10 19:14:48', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 19:14:48', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471ffbb3d7006b', 'get.error', 'Get Error', 'en', '2014-07-10 19:14:55', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 19:14:55', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471ffcc59f006d', 'operate.code', '操作码', 'zh-cn', '2014-07-10 19:16:05', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 19:16:05', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471ffce066006f', 'operate.code', 'Operate Code', 'en', '2014-07-10 19:16:12', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 19:16:12', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471ffed3280075', 'enhance.sql', '增强sql', 'zh-cn', '2014-07-10 19:18:19', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 19:18:19', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('4028fd2b471f63bb01471ffeef0d0077', 'enhance.sql', 'Enhance SQL', 'en', '2014-07-10 19:18:26', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 19:18:26', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('41e9ba5d4f2546fd871d0a4a401732a8', 'common.phone', '手机号码', 'zh-cn', '2014-07-03 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('42a24520ac85497d9da92af210113da2', 'common.status', '状态', 'zh-cn', '2014-07-03 18:39:42', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('52ce422654ab40329fe3a0518b5c8f67', 'password.rang6to18', 'The password is at least 6 characters long, up to 18 characters', 'en', '2014-07-04 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-04 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('5910b83799b242318f456a4f42303cb0', 'select.byrole', '按角色选择', 'zh-cn', '2014-07-03 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('5e5106b716d6476cae700ab27f2da555', 'common.middle', '中', 'zh-cn', '2014-07-04 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-04 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('767053e885704be2b203fbe5c0389b73', 'common.password.reset', '密码重置', 'zh-cn', '2014-07-03 18:39:42', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('7aae85094220429a84158e4db5c05d45', 'common.status', 'Status', 'en', '2014-07-03 18:39:42', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('7f980a800b114020b085530096b95d86', 'role.muti.select', '角色可多选', 'zh-cn', '2014-07-04 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-04 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab00846c664b70146c741b9ed0045', 'lang.langkey', '语言主键', 'zh-cn', '2014-06-23 13:45:11', 'admin', '管理员', '2014-06-23 13:45:11', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab00846c664b70146c74226100047', 'lang.langkey', 'Lang Key', 'en', '2014-06-23 13:45:39', 'admin', '管理员', '2014-06-23 13:45:39', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab00846c664b70146c743a8a40049', 'common.content', '内容', 'zh-cn', '2014-06-23 13:47:18', 'admin', '管理员', '2014-06-23 13:47:18', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab00846c664b70146c74416f5004b', 'common.content', 'Content', 'en', '2014-06-23 13:47:46', 'admin', '管理员', '2014-06-23 13:47:46', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab00846c664b70146c74526330050', 'common.language', 'Language', 'en', '2014-06-23 13:48:56', 'admin', '管理员', '2014-06-23 13:48:56', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab00846c664b70146c77efdb60076', 'common.import', '数据导入', 'zh-cn', '2014-06-23 14:52:06', 'admin', '管理员', '2014-06-23 14:52:06', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab00846c664b70146c77f95070078', 'common.import', 'Data Import', 'en', '2014-06-23 14:52:45', 'admin', '管理员', '2014-06-23 14:52:45', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab00846c664b70146c7802f4f007a', 'common.export', '数据导出', 'zh-cn', '2014-06-23 14:53:25', 'admin', '管理员', '2014-06-23 14:58:50', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab00846c664b70146c7809eb6007c', 'common.export', 'Data Export', 'en', '2014-06-23 14:53:53', 'admin', '管理员', '2014-06-23 14:59:00', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab00846d1bb660146d1ef63000003', 'user.manage', '用户管理', 'zh-cn', '2014-06-25 15:31:05', 'admin', '管理员', '2014-06-25 15:31:05', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab00846d1bb660146d1eff19e0005', 'user.manage', 'User Manage', 'en', '2014-06-25 15:31:41', 'admin', '管理员', '2014-06-25 15:31:41', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab00846d1bb660146d1f12ae00007', 'common.data.dictionary', 'Data Dictionary ', 'en', '2014-06-25 15:33:01', 'admin', '管理员', '2014-06-25 16:10:45', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab00846d1bb660146d1f1635a0009', 'common.data.dictionary', '数据字典', 'zh-cn', '2014-06-25 15:33:16', 'admin', '管理员', '2014-06-25 15:33:16', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab00846d1bb660146d1f24c0b000b', 'role.manage', '角色管理', 'zh-cn', '2014-06-25 15:34:15', 'admin', '管理员', '2014-06-25 15:34:15', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab00846d1bb660146d1f35861000f', 'role.manage', 'Role Manage', 'en', '2014-06-25 15:35:24', 'admin', '管理员', '2014-06-25 15:35:24', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab00846d1bb660146d1f8e1610015', 'icon.manage', '图标管理', 'zh-cn', '2014-06-25 15:41:27', 'admin', '管理员', '2014-06-25 15:41:27', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab00846d1bb660146d1fbc5bf0017', 'icon.manage', 'Icon Manage', 'en', '2014-06-25 15:44:36', 'admin', '管理员', '2014-06-25 15:44:36', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab00846d1bb660146d1fffdb40019', 'department.manage', '组织机构管理', 'zh-cn', '2014-06-25 15:49:13', 'admin', '管理员', '2014-06-25 15:49:13', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab00846d1bb660146d20cbafe001b', 'department.manage', 'Org Manage', 'en', '2014-06-25 16:03:08', 'admin', '管理员', '2014-06-25 16:03:08', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab01b46b7bff40146b7c2eb6f0001', 'common.dash_board', '首页', 'zh-cn', '2014-06-20 13:32:23', 'admin', '管理员', '2014-06-20 14:58:43', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab01b46b7bff40146b7c38f560003', 'common.dash_board', 'Dashboard', 'en', '2014-06-20 13:33:05', 'admin', '管理员', '2014-06-20 14:58:51', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab01b46b802300146b8038a070001', 'common.add.success', '添加成功', 'zh-cn', '2014-06-20 14:42:58', 'admin', '管理员', '2014-06-20 14:42:58', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab01b46b802300146b8048a5e0004', 'common.add.success', 'Add success', 'en', '2014-06-20 14:44:03', 'admin', '管理员', '2014-06-20 14:44:03', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab01b46b802300146b806d7bd0006', 'common.edit.success', '更新成功', 'zh-cn', '2014-06-20 14:46:34', 'admin', '管理员', '2014-06-20 14:46:34', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab01b46b802300146b807c4e60008', 'common.edit.success', 'Update success', 'en', '2014-06-20 14:47:35', 'admin', '管理员', '2014-06-20 14:47:35', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab01b46b80a850146b80cf84d0002', 'common.delete.success', '删除成功', 'zh-cn', '2014-06-20 14:53:16', 'admin', '管理员', '2014-06-20 14:53:16', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab01b46b80a850146b80d35b70004', 'common.delete.success', 'Delete success', 'en', '2014-06-20 14:53:31', 'admin', '管理员', '2014-06-20 14:53:31', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab01b46b80a850146b80e7d420006', 'common.edit.fail', '更新失败', 'zh-cn', '2014-06-20 14:54:55', 'admin', '管理员', '2014-06-20 14:54:55', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab01b46b80a850146b80eddca0008', 'common.edit.fail', 'Update Fail', 'en', '2014-06-20 14:55:20', 'admin', '管理员', '2014-06-20 14:55:20', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab01b46b83b0b0146b83ec7070008', 'common.notfind.langkey', '?', 'zh-cn', '2014-06-20 15:55:50', 'admin', '管理员', '2014-06-21 01:18:10', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab01b46b83b0b0146b83ec7070009', 'common.notfind.langkey', '?', 'en', '2014-06-20 15:57:14', 'admin', '管理员', '2014-06-21 01:18:16', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab02147423c5101474264c8980002', 'common.confirm', '确定', 'zh-cn', '2014-07-17 11:36:47', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-17 11:36:47', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab02147423c5101474264e0510004', 'common.confirm', 'Confirm', 'en', '2014-07-17 11:36:53', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-17 11:36:53', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab02147423c51014742654bd20006', 'common.remove', 'Remove', 'en', '2014-07-17 11:37:20', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-17 11:37:20', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab02147423c510147426569f90008', 'common.remove', '移除', 'zh-cn', '2014-07-17 11:37:28', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-17 11:37:28', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab02147423c5101474265ac98000a', 'common.item', '条', 'zh-cn', '2014-07-17 11:37:45', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-17 11:37:45', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab02147423c5101474265cdc1000c', 'common.item', 'Item', 'en', '2014-07-17 11:37:53', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-17 11:37:53', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab02147423c51014742662411000e', 'common.total', '共', 'zh-cn', '2014-07-17 11:38:15', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-17 11:38:15', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab02147423c51014742664c5c0010', 'common.total', 'Total', 'en', '2014-07-17 11:38:26', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-17 11:38:26', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab02147423c51014742669c660012', 'common.inactive', '未激活', 'zh-cn', '2014-07-17 11:38:46', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-17 11:38:46', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab02147423c5101474266cf100014', 'common.inactive', 'Inactive', 'en', '2014-07-17 11:38:59', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-17 11:38:59', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab02147423c5101474267077d0016', 'common.active', '激活', 'zh-cn', '2014-07-17 11:39:14', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-17 11:39:14', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab02147423c510147426722730018', 'common.active', 'Active', 'en', '2014-07-17 11:39:21', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-17 11:39:21', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab02147423c5101474267fdef001e', 'common.languagekey', 'Lang Key', 'en', '2014-07-17 11:40:17', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-17 11:40:17', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab02147423c51014742687da20020', 'common.languagekey', '语言Key', 'zh-cn', '2014-07-17 11:40:49', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-17 11:40:49', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b05f8860005', 'common.remember.user', '是否记住用户名', 'zh-cn', '2014-07-25 08:57:39', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 08:57:39', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b0642280007', 'common.remember.user', 'Remember User', 'en', '2014-07-25 08:57:58', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 08:57:58', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b0b61120009', 'common.login.success.wait', '登陆成功!请稍后....', 'zh-cn', '2014-07-25 09:03:33', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:03:33', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b0bc257000b', 'common.login.success.wait', 'Login success, waiting....', 'en', '2014-07-25 09:03:58', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:03:58', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b0d4233000d', 'common.init.data', '是否初始化数据', 'zh-cn', '2014-07-25 09:05:36', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:05:36', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b0db938000f', 'common.init.data', 'Initialize data?', 'en', '2014-07-25 09:06:07', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:06:07', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b162e630012', 'lang.order.type', '订单类型', 'zh-cn', '2014-07-25 09:15:21', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:15:21', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b164ceb0014', 'lang.order.type', 'Order Type', 'en', '2014-07-25 09:15:29', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:15:29', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b16a56e0016', 'lang.customer.type', '客户类型', 'zh-cn', '2014-07-25 09:15:52', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:15:52', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b16c0d50018', 'lang.customer.type', 'Customer Type', 'en', '2014-07-25 09:15:59', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:15:59', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b170b9a001a', 'lang.service.item.type', '服务项目类型', 'zh-cn', '2014-07-25 09:16:18', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:16:18', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b1749cc001c', 'lang.service.item.type', 'Service Item Type', 'en', '2014-07-25 09:16:34', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:16:34', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b1936c60020', 'common.logic.condition', '逻辑条件', 'zh-cn', '2014-07-25 09:18:40', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:18:40', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b1956dd0022', 'common.logic.condition', 'Logic Condition', 'en', '2014-07-25 09:18:48', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:18:48', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b1a1cc30024', 'common.data.table', '数据表', 'zh-cn', '2014-07-25 09:19:39', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:19:39', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b1a3c0a0026', 'common.data.table', 'Data Table', 'en', '2014-07-25 09:19:47', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:19:47', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b1ac59e0028', 'common.document.category', '文档分类', 'zh-cn', '2014-07-25 09:20:22', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:20:22', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b1aeaa3002a', 'common.document.category', 'Document Category', 'en', '2014-07-25 09:20:31', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:20:31', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b1b3e55002c', 'common.sex.type', '性别类', 'zh-cn', '2014-07-25 09:20:53', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:20:53', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b1b59af002e', 'common.sex.type', 'Sex Type', 'en', '2014-07-25 09:21:00', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:21:00', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b1c08ba0030', 'common.attachment', '附件', 'zh-cn', '2014-07-25 09:21:45', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:21:45', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b1c22dd0032', 'common.attachment', 'Attachment', 'en', '2014-07-25 09:21:51', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:21:51', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b1d4e400034', 'lang.excellent.order', '优质订单', 'zh-cn', '2014-07-25 09:23:08', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:23:08', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b1d7ece0036', 'lang.excellent.order', 'Excellent Order', 'en', '2014-07-25 09:23:20', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:23:20', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b1de2050038', 'lang.normal.order', '普通订单', 'zh-cn', '2014-07-25 09:23:46', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:23:46', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b1dfde4003a', 'lang.normal.order', 'Normal Order', 'en', '2014-07-25 09:23:53', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:23:53', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b1ef393003c', 'lang.contract.customer', '签约客户', 'zh-cn', '2014-07-25 09:24:56', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:24:56', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b1f0b32003e', 'lang.contract.customer', 'Contract Customer', 'en', '2014-07-25 09:25:02', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:25:02', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b1f4fea0040', 'lang.normal.customer', '普通客户', 'zh-cn', '2014-07-25 09:25:19', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:25:19', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b1f67050042', 'lang.normal.customer', 'Normal Customer', 'en', '2014-07-25 09:25:25', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:25:25', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b1fa93d0044', 'lang.special.servcie', '特殊服务', 'zh-cn', '2014-07-25 09:25:42', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:25:42', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b1fceec0046', 'lang.special.servcie', 'Special Service', 'en', '2014-07-25 09:25:52', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:25:52', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b2014720048', 'lang.normal.service', '普通服务', 'zh-cn', '2014-07-25 09:26:10', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:26:10', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b203ca4004a', 'lang.normal.service', 'Normal Service', 'en', '2014-07-25 09:26:20', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:26:20', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b20bf5a004c', 'common.single.condition.query', '单条件查询', 'zh-cn', '2014-07-25 09:26:54', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:26:54', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b20e447004e', 'common.single.condition.query', 'Single Condition Query', 'en', '2014-07-25 09:27:03', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:27:03', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b214fe20050', 'common.scope.query', '范围查询', 'zh-cn', '2014-07-25 09:27:31', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:27:31', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b2171de0052', 'common.scope.query', 'Scope Queyr', 'en', '2014-07-25 09:27:39', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:27:39', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b21ffbf0054', 'common.db.integer', 'Integer', 'en', '2014-07-25 09:28:16', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:29:19', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b2227930056', 'common.db.integer', '数值类型', 'zh-cn', '2014-07-25 09:28:26', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:29:23', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b234ba5005a', 'common.db.date', 'Date', 'en', '2014-07-25 09:29:41', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:29:41', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b238657005c', 'common.db.date', '日期类型', 'zh-cn', '2014-07-25 09:29:56', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:29:56', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b23efed005e', 'common.db.string', '字符类型', 'zh-cn', '2014-07-25 09:30:23', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:30:23', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b2404d30060', 'common.db.string', 'String', 'en', '2014-07-25 09:30:28', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:30:28', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b245e800062', 'common.db.long', 'Long', 'en', '2014-07-25 09:30:51', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:30:51', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b248ee60064', 'common.db.long', '长整型', 'zh-cn', '2014-07-25 09:31:03', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:31:03', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b253d760066', 'common.workflow.engine.table', '工作流引擎表', 'zh-cn', '2014-07-25 09:31:48', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:31:48', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b256e3a0068', 'common.workflow.engine.table', 'Workflow Engine Table', 'en', '2014-07-25 09:32:00', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:32:00', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b25c1d4006a', 'common.system.table', '系统基础表', 'zh-cn', '2014-07-25 09:32:22', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:32:22', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b25d9b3006c', 'common.system.table', 'System Table', 'en', '2014-07-25 09:32:28', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:32:28', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b267773006e', 'common.business.table', '业务表', 'zh-cn', '2014-07-25 09:33:08', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:33:08', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b26a71c0070', 'common.business.table', 'Business Table', 'en', '2014-07-25 09:33:21', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:33:21', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b2761320072', 'common.customer.engine.table', '自定义引擎表', 'zh-cn', '2014-07-25 09:34:08', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:34:08', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b2791440074', 'common.customer.engine.table', 'Customer Engine Table', 'en', '2014-07-25 09:34:20', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:34:20', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b27d3790076', 'common.news', '新闻', 'zh-cn', '2014-07-25 09:34:37', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:34:37', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b27f9b30078', '新闻', 'News', 'en', '2014-07-25 09:34:47', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:34:47', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b28e56e007a', 'common.male', '男性', 'zh-cn', '2014-07-25 09:35:48', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:35:48', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b28fa30007c', 'common.male', 'Male', 'en', '2014-07-25 09:35:53', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:35:53', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b291a73007e', 'common.female', '女性', 'zh-cn', '2014-07-25 09:36:01', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:36:01', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0af476afe8501476b29466c0080', 'common.female', 'Female', 'en', '2014-07-25 09:36:12', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 09:36:12', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0ba487c37d001487c488a4d0006', 'common.datasource.manage', '多数据源管理', 'zh-cn', '2014-09-16 10:26:41', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-09-16 10:30:20', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0ba487c37d001487c491f480008', 'common.datasource.manage', 'Multiple DataSource Manage', 'en', '2014-09-16 10:27:20', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-09-16 10:30:56', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0ba487c527201487c5f6d400001', 'common.datasrouce.key', '多数据源主键', 'zh-cn', '2014-09-16 10:51:41', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0ba487c527201487c5fba980003', 'common.datasrouce.key', 'Mutipule DataSource Key', 'en', '2014-09-16 10:52:01', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0ba487c527201487c6193ec0005', 'common.driverclass', '驱动类', 'zh-cn', '2014-09-16 10:54:02', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0ba487c527201487c61b73d0007', 'common.driverclass', 'Driver Class', 'en', '2014-09-16 10:54:11', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0ba487c527201487c62b0b00009', 'common.datasrouce.url', '数据源地址', 'zh-cn', '2014-09-16 10:55:15', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0ba487c527201487c62f4d8000b', 'common.datasrouce.url', 'DataSource URL', 'en', '2014-09-16 10:55:33', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0ba487c527201487c63c17c000d', 'common.dbuser', '数据库用户名', 'zh-cn', '2014-09-16 10:56:25', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0ba487c527201487c63f0bf000f', 'common.dbuser', 'DB User', 'en', '2014-09-16 10:56:37', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0ba487c527201487c6430510011', 'common.dbpassword', '数据库密码', 'zh-cn', '2014-09-16 10:56:53', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0ba487c527201487c6456940013', 'common.dbpassword', 'DB Password', 'en', '2014-09-16 10:57:03', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0ba487c527201487c66d45d0015', 'common.dbtype', '数据库类型', 'zh-cn', '2014-09-16 10:59:46', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0ba487c527201487c66ffe00017', 'common.dbtype', 'DB Type', 'en', '2014-09-16 10:59:58', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0ba487c527201487c79d0660021', 'common.oracle', '甲骨文Oracle数据库', 'zh-cn', '2014-09-16 11:20:31', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-09-16 11:21:58', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0ba487c527201487c7aee7b0024', 'common.oracle', 'Oracle', 'en', '2014-09-16 11:21:44', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0ba487c527201487c8f0bfc0027', 'common.sqlserver2008', '微软SQL Server2008', 'zh-cn', '2014-09-16 11:43:42', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-09-16 11:48:44', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0ba487c527201487c8f57910029', 'common.sqlserver2008', 'SQL Server2008', 'en', '2014-09-16 11:44:01', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0ba487c527201487c94614b002d', 'common.mysql', '甲骨文MySQL', 'zh-cn', '2014-09-16 11:49:32', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0ba487c527201487c948fc0002f', 'common.mysql', 'MySQL', 'en', '2014-09-16 11:49:44', '8a8ab0b246dc81120146dc8181950052', 'admin', null, null, null);
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0c34761c347014761dfb98c0001', 'common.english', 'English', 'en', '2014-07-23 14:19:17', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-23 14:19:17', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0c34761c347014761dfde030003', 'common.english', 'English', 'zh-cn', '2014-07-23 14:19:27', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 08:51:07', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0c34761c347014761e00f350005', 'common.chinese', '中文', 'en', '2014-07-23 14:19:39', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-25 08:51:20', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0c34761c347014761e0305c0007', 'common.chinese', '中文', 'zh-cn', '2014-07-23 14:19:48', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-23 14:19:48', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0d44756a3bd014756ad82990002', 'user.analysis.histogram', '用户分析直方图', 'zh-cn', '2014-07-21 10:08:37', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-21 10:08:37', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0d44756a3bd014756ae22ce0004', 'usename.range2to10', '用户名长度范围在2~10', 'zh-cn', '2014-07-21 10:09:18', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-21 10:09:18', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0d44756a3bd014756ae9c2a0006', 'sequence.name', '序号名称', 'zh-cn', '2014-07-21 10:09:49', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-21 10:09:49', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0d44756ec17014756eff8410001', 'common.menu', '菜单', 'zh-cn', '2014-07-21 11:21:13', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-21 11:21:13', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0d44756ec17014756f0122e0003', 'common.menu', 'Menu', 'en', '2014-07-21 11:21:19', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-21 11:21:19', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0d44756ec17014756f5940d0007', 'common.area', '地域', 'zh-cn', '2014-07-21 11:27:20', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-21 11:27:20', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0d44756ec17014756f5b12e0009', 'common.area', 'Area', 'en', '2014-07-21 11:27:28', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-21 11:27:28', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0d447576a86014757a4266d0004', 'common.role.select', '角色选择', 'zh-cn', '2014-07-21 14:38:01', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-21 14:38:01', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0d447576a86014757a44a7b0006', 'common.role.select', 'Role Select', 'en', '2014-07-21 14:38:10', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-21 14:38:10', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0d44757b3f2014757b802010004', 'common.cancel', 'Cancel', 'en', '2014-07-21 14:59:42', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-21 14:59:42', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0d44757b3f2014757b821e00006', 'common.cancel', '取消', 'zh-cn', '2014-07-21 14:59:50', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-21 14:59:50', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0de46c66d490146c674f6ee0002', 'common.data.loading', '数据加载中...', 'zh-cn', '2014-06-23 10:01:32', 'admin', '管理员', '2014-06-23 10:01:32', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0de46c66d490146c675351b0004', 'common.data.loading', 'Data Loading......', 'en', '2014-06-23 10:01:48', 'admin', '管理员', '2014-06-23 10:01:48', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0de46c66d490146c6788e550006', 'common.exit.confirm', '确定退出该系统吗 ?', 'zh-cn', '2014-06-23 10:05:28', 'admin', '管理员', '2014-06-23 10:05:28', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0de46c66d490146c678d8600008', 'common.exit.confirm', 'Confirm Exit?', 'en', '2014-06-23 10:05:46', 'admin', '管理员', '2014-06-23 10:05:46', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0de46c66d490146c67af864000a', 'common.change.style', '修改首页风格', 'zh-cn', '2014-06-23 10:08:06', 'admin', '管理员', '2014-06-23 10:08:06', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0de46c66d490146c67b3590000c', 'common.change.style', 'Change Style', 'en', '2014-06-23 10:08:21', 'admin', '管理员', '2014-06-23 10:08:21', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0de46c66d490146c683c4ea0012', 'common.browser.recommend', '(推荐使用IE8+,谷歌浏览器可以获得更快,更安全的页面响应速度) 技术支持：', 'zh-cn', '2014-06-23 10:17:42', 'admin', '管理员', '2014-06-23 11:05:48', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0de46c66d490146c68486160014', 'common.browser.recommend', '(Recommend IE+, Google browser) Support: ', 'en', '2014-06-23 10:18:32', 'admin', '管理员', '2014-06-23 10:18:32', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0e8476756d8014767594f500001', 'common.mutilang', '多语言', 'zh-cn', '2014-07-24 15:50:12', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-24 15:50:12', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8ab0e8476756d801476759b8930003', 'common.mutilang', 'Muti Language', 'en', '2014-07-24 15:50:38', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-24 15:50:38', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8c8d1c475192970147519e89800004', 'common.description', 'Description', 'en', '2014-07-20 10:34:10', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-20 10:35:01', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('8a8c8d1c475192970147519eae6d0006', 'common.description', '描述', 'zh-cn', '2014-07-20 10:34:19', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-20 10:34:19', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8c8d1c4751c965014751cb1ff50001', 'common.langcontext.exist', '该内容已经存在，请不要重复添加', 'zh-cn', '2014-07-20 11:22:52', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-20 11:22:52', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8a8c8d1c4751c965014751cd221a0003', 'common.langcontext.exist', 'Lang context exist already, don\'t add it again', 'en', '2014-07-20 11:25:03', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-20 11:25:03', 'admin', '管理员');
INSERT INTO `t_s_muti_lang` VALUES ('8b4f561992c84eaa958b10c7912896b8', 'common.weak', '弱', 'zh-cn', '2014-07-04 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-04 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('8ca84db9bbcb44bfb39746822a976907', 'common.role', 'Role', 'en', '2014-07-03 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('95903aa116c74bdb95b5be510a89c79d', 'common.tel', '办公电话', 'zh-cn', '2014-07-03 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('9c3a8db4891a4d4390f6093ae2fd81af', 'common.strong', '强', 'zh-cn', '2014-07-04 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-04 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('9f750fb969ed4bdcbbdb212c43746112', 'common.lock.user', 'Lock User', 'en', '2014-07-03 18:39:42', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('a8e5a8e8c5e44576a1500c3b5f57937b', 'select.byrole', 'According to the role select', 'en', '2014-07-03 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('ac43aecc3356487c8eb5fa869149412f', 'common.repeat.password', '重复密码', 'zh-cn', '2014-07-03 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('aec73ffa01b5499db0253b3b34194560', 'username.rang2to10', '用户名范围在2~10位字符', 'zh-cn', '2014-07-04 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('b8865c9032054772b39d43efda9ba0c8', 'role.muti.select', 'The role of multiple choices', 'en', '2014-07-04 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-04 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('b8dae445b3ef468db87167ddd8cd1b64', 'please.select.department', '请选择组织机构', 'zh-cn', '2014-07-04 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-04 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('c150726fac0d43fd9bf28f4590018950', 'common.username', 'User Name', 'en', '2014-07-03 18:39:42', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('caaf209a7acb413ea59bbdf30e944f20', 'common.common.mail', 'Mail', 'en', '2014-07-03 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('ce8b2968f1fc49bba1a636ca18e7f08f', 'usename.range2to10', 'The user name in the range of 2~10 characters', 'en', '2014-07-03 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('d136cd1f25cc42fe8a0fae2dddc5de23', 'common.weak', 'Weak', 'en', '2014-07-04 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-04 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('dc787a2087ea4f248a394f8a88a5792c', 'common.real.name', '真实姓名', 'zh-cn', '2014-07-03 18:39:42', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('df075bc6373b4658afcfaff33b088952', 'common.role', '角色', 'zh-cn', '2014-07-03 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('e1fb12b3993b4d1ea35bd536801ada1f', 'common.common.mail', '常用邮箱', 'zh-cn', '2014-07-03 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('e547fec1826c4811b6d759f2d81153f8', 'common.password.reset', 'Password Reset', 'en', '2014-07-03 18:39:42', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('f9f74528bde04a0f9e25e29cbc87d9fb', 'fill.realname', '填写个人真实姓名', 'zh-cn', '2014-07-04 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-04 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang` VALUES ('fa07850cb8ed4c268cc91ffd31e7ace1', 'common.password', 'Password', 'en', '2014-07-03 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');

-- ----------------------------
-- Table structure for `t_s_muti_lang_copy`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_muti_lang_copy`;
CREATE TABLE `t_s_muti_lang_copy` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `lang_key_new` varchar(50) NOT NULL,
  `lang_key` varchar(50) NOT NULL COMMENT '语言主键',
  `lang_context` varchar(500) NOT NULL COMMENT '内容',
  `lang_code` varchar(50) NOT NULL COMMENT '语言',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `create_by` varchar(50) NOT NULL COMMENT '创建人编号',
  `create_name` varchar(50) NOT NULL COMMENT '创建人姓名',
  `update_date` datetime NOT NULL COMMENT '更新日期',
  `update_by` varchar(50) NOT NULL COMMENT '更新人编号',
  `update_name` varchar(50) NOT NULL COMMENT '更新人姓名',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_muti_lang_copy
-- ----------------------------
INSERT INTO `t_s_muti_lang_copy` VALUES ('01ca201223b14e3e86c13904a9ae5ca2', 'common.password', 'sysmanage.user.column.password', '密码', 'zh-cn', '2014-07-03 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('02916620f68b4845ba09773de6799706', 'please.selectpart', 'sysmanage.user.tip.depart', 'Please select a department', 'en', '2014-07-04 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-04 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('0ab1a1fddf14420fa0dbcbfb5d2e9e85', 'common.strong', 'sysmanage.user.tip.strong', 'Strong', 'en', '2014-07-04 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-04 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('0bacd0fab1c84f03854435c1adab88c2', 'common.lockuser', 'sysmanage.user.button.lockuser', '锁定用户', 'zh-cn', '2014-07-03 18:39:42', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('11d18a9927e34873a813eade025b5c18', 'fill.realname', 'sysmanage.user.tip.realname', 'Fill in the real name', 'en', '2014-07-04 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-04 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('121a68d32c6a419b800eb92431b20dd4', 'common.depart', 'sysmanage.user.column.depart', 'Depart', 'en', '2014-07-03 18:39:42', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('1b48207a19be41569a01030d44261468', 'common.edituser', 'sysmanage.user.button.edituser', 'Edit User', 'en', '2014-07-03 18:39:42', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('1e5963a78dcd4b1fa5f9d6d845f151be', 'common.depart', 'sysmanage.user.column.depart', '部门', 'zh-cn', '2014-07-03 18:39:42', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('2075b6c641bc44b392638fed9a62cce9', 'password.rang6to18', 'sysmanage.user.tip.password', '密码至少6个字符,最多18个字符', 'zh-cn', '2014-07-04 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-04 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('27a06a8ed99f45438be00b7f1ca097f7', 'common.username', 'sysmanage.user.column.username', '用户名', 'zh-cn', '2014-07-03 18:39:42', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046ff41480146ffbb62a30012', 'menu.manage', 'sysmanage.functionlist.column.functionManage', 'Menu Manage', 'en', '2014-07-04 12:56:50', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:06:15', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046ff41480146ffbc59ac0014', 'menu.manage', 'sysmanage.functionlist.column.functionManage', '菜单管理', 'zh-cn', '2014-07-04 12:57:54', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:06:26', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046ffc2ca0146ffc8cd320001', 'common.id', 'sysmanage.functionlist.column.id', 'id', 'en', '2014-07-04 13:11:28', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:11:28', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046ffc2ca0146ffc933dc0003', 'common.id', 'sysmanage.functionlist.column.id', '编号', 'zh-cn', '2014-07-04 13:11:54', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:11:54', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046ffc2ca0146ffc9b4bb0005', 'menu.name', 'sysmanage.functionlist.column.functionName', 'Menu Name', 'en', '2014-07-04 13:12:27', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:14:52', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046ffc2ca0146ffcd8f60000b', 'menu.name', 'sysmanage.functionlist.column.functionName', '菜单名称', 'zh-cn', '2014-07-04 13:16:40', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:16:40', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046ffc2ca0146ffcdc44b000d', 'common.icon', 'sysmanage.functionlist.column.TSIcon_iconPath', 'Icon', 'en', '2014-07-04 13:16:53', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:16:53', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046ffc2ca0146ffcdf4a6000f', 'common.icon', 'sysmanage.functionlist.column.TSIcon_iconPath', '图标', 'zh-cn', '2014-07-04 13:17:06', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:17:06', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046ffc2ca0146ffce76c70011', 'menu.url', 'sysmanage.functionlist.column.functionUrl', 'Menu Url', 'en', '2014-07-04 13:17:39', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:17:39', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046ffc2ca0146ffcea7d80013', 'menu.url', 'sysmanage.functionlist.column.functionUrl', '菜单地址', 'zh-cn', '2014-07-04 13:17:51', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:17:51', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046ffc2ca0146ffcf13090015', 'menu.order', 'sysmanage.functionlist.column.functionOrder', 'Menu Order', 'en', '2014-07-04 13:18:19', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:18:19', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046ffc2ca0146ffcf4b0a0017', 'menu.order', 'sysmanage.functionlist.column.functionOrder', '菜单顺序', 'zh-cn', '2014-07-04 13:18:33', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:18:33', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046ffc2ca0146ffd059670019', 'menu.add', 'sysmanage.functionlist.column.addFun', 'Function Add', 'en', '2014-07-04 13:19:42', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:22:11', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046ffc2ca0146ffd12f17001b', 'menu.add', 'sysmanage.functionlist.column.addFun', '菜单录入', 'zh-cn', '2014-07-04 13:20:37', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:21:42', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046ffc2ca0146ffd1cfeb001d', 'menu.edit', 'sysmanage.functionlist.column.update', 'Menu Edit', 'en', '2014-07-04 13:21:18', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:21:18', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046ffc2ca0146ffd20205001f', 'menu.edit', 'sysmanage.functionlist.column.update', '菜单编辑', 'zh-cn', '2014-07-04 13:21:31', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:21:31', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046ffc2ca0146ffe1a54f0023', 'menu.level', 'sysmanage.functionlist.column.functionLevel', 'Menu Level', 'en', '2014-07-04 13:38:36', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:38:36', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046ffc2ca0146ffe1e8530025', 'menu.level', 'sysmanage.functionlist.column.functionLevel', '菜单等级', 'zh-cn', '2014-07-04 13:38:53', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:38:53', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046ffc2ca0146ffe5e2860027', 'parent.function', 'sysmanage.functionlist.column.parentFunction', 'Parent Function', 'en', '2014-07-04 13:43:14', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:54:25', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046ffc2ca0146ffe6108b0029', 'parent.function', 'sysmanage.functionlist.column.parentFunction', '父菜单', 'zh-cn', '2014-07-04 13:43:26', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:54:37', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046ffc2ca0146ffe9ec39002b', 'main.function', 'sysmanage.functionlist.column.mainFunction', 'Main Function', 'en', '2014-07-04 13:47:38', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:54:52', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046ffc2ca0146ffea3970002d', 'main.function', 'sysmanage.functionlist.column.mainFunction', '一级菜单', 'zh-cn', '2014-07-04 13:47:58', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:55:06', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046ffc2ca0146ffea9f27002f', 'sub.function', 'sysmanage.functionlist.column.subFunction', 'Sub Function', 'en', '2014-07-04 13:48:24', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:55:23', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046ffc2ca0146ffead7b80031', 'sub.function', 'sysmanage.functionlist.column.subFunction', '下级菜单', 'zh-cn', '2014-07-04 13:48:39', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:55:34', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046ffc2ca0146ffebb2660033', 'desktop.icon', 'sysmanage.functionlist.column.deskIcon', 'Desk Icon', 'en', '2014-07-04 13:49:35', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:49:35', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046ffc2ca0146ffebdf940035', 'desktop.icon', 'sysmanage.functionlist.column.deskIcon', '桌面图标', 'zh-cn', '2014-07-04 13:49:46', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 13:49:46', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff2380146fffca39a0003', 'icon.list', 'sysmanage.iconlist.column.iconList', 'Icon List', 'en', '2014-07-04 14:08:05', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 15:20:31', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff2380146fffd42c40005', 'icon.list', 'sysmanage.iconlist.column.iconManage', '图标列表', 'zh-cn', '2014-07-04 14:08:46', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 15:20:45', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff2380146ffff20310007', 'common.id', 'sysmanage.iconlist.column.id', 'id', 'en', '2014-07-04 14:10:48', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:10:48', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff238014700002aef0009', 'common.id', 'sysmanage.iconlist.column.id', '编号', 'zh-cn', '2014-07-04 14:11:56', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:11:56', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff23801470001e905000b', 'common.iconname', 'sysmanage.iconlist.column.iconName', 'Icon Name', 'en', '2014-07-04 14:13:50', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:13:50', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff23801470002280b000d', 'common.iconname', 'sysmanage.iconlist.column.iconName', '图标名称', 'zh-cn', '2014-07-04 14:14:07', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:14:07', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff238014700030848000f', 'common.iconstyle', 'sysmanage.iconlist.column.iconClas', 'Icon Style', 'en', '2014-07-04 14:15:04', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:21:40', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff2380147000332810011', 'common.iconstyle', 'sysmanage.iconlist.column.iconClas', '图标样式', 'zh-cn', '2014-07-04 14:15:15', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:15:15', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff2380147000387440013', 'common.icontype', 'sysmanage.iconlist.column.iconType', 'Icon Type', 'en', '2014-07-04 14:15:37', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:15:37', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff23801470003af940015', 'common.icontype', 'sysmanage.iconlist.column.iconType', '图标类型', 'zh-cn', '2014-07-04 14:15:47', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:15:47', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff23801470004030e0017', 'common.icon', 'sysmanage.iconlist.column.iconPath', 'Icon', 'en', '2014-07-04 14:16:08', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:16:30', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff238014700048328001a', 'common.icon', 'sysmanage.iconlist.column.iconPath', '图标', 'zh-cn', '2014-07-04 14:16:41', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:16:41', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff23801470004d843001c', 'common.icontype', 'sysmanage.iconlist.column.extend', 'Extend', 'en', '2014-07-04 14:17:03', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:17:03', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff238014700050ae4001e', 'common.icontype', 'sysmanage.iconlist.column.extend', '类型', 'zh-cn', '2014-07-04 14:17:16', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:17:16', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff238014700054be10020', 'icon.add', 'sysmanage.iconlist.column.add', 'Icon Add', 'en', '2014-07-04 14:17:32', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:17:32', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff238014700057dea0022', 'icon.add', 'sysmanage.iconlist.column.add', '图标录入', 'zh-cn', '2014-07-04 14:17:45', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:17:45', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff23801470005af9a0024', 'icon.edit', 'sysmanage.iconlist.column.update', 'Icon Edit', 'en', '2014-07-04 14:17:58', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:17:58', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff23801470005d3550026', 'icon.edit', 'sysmanage.iconlist.column.update', '图标修改', 'zh-cn', '2014-07-04 14:18:07', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:18:07', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff238014700063c220028', 'batch.generatestyle', 'sysmanage.iconlist.column.doSubmit', 'common.icontype', 'en', '2014-07-04 14:18:34', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:21:19', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff238014700068560002a', 'batch.generatestyle', 'sysmanage.iconlist.column.doSubmit', '批量生成样式', 'zh-cn', '2014-07-04 14:18:53', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:18:53', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff23801470015a389002e', 'common.departmentlist', 'sysmanage.departlist.column.departList', 'Department List', 'en', '2014-07-04 14:35:23', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 15:17:33', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff23801470015ff8f0030', 'common.departmentlist', 'sysmanage.departlist.column.departList', '部门列表', 'zh-cn', '2014-07-04 14:35:47', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 15:17:09', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff238014700164e5f0032', 'common.id', 'sysmanage.departlist.column.id', 'id', 'en', '2014-07-04 14:36:07', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:36:07', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff238014700166e840034', 'common.id', 'sysmanage.departlist.column.id', '编号', 'zh-cn', '2014-07-04 14:36:15', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:36:15', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff23801470016d58e0036', 'common.departname', 'sysmanage.departlist.column.departname', 'Department Name', 'en', '2014-07-04 14:36:42', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:36:42', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff238014700172e590038', 'common.departname', 'sysmanage.departlist.column.departname', '部门名称', 'zh-cn', '2014-07-04 14:37:04', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:37:04', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff23801470017a515003a', 'position.desc', 'sysmanage.departlist.column.description', 'Position Desc', 'en', '2014-07-04 14:37:35', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:37:35', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff23801470017d2fb003c', 'position.desc', 'sysmanage.departlist.column.description', '职能描述', 'zh-cn', '2014-07-04 14:37:47', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:37:47', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff238014700193e67003e', 'view.member', 'sysmanage.departlist.column.viewMember', 'View Member', 'en', '2014-07-04 14:39:20', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:39:20', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff2380147001963ef0040', 'view.member', 'sysmanage.departlist.column.viewMember', '查看成员', 'zh-cn', '2014-07-04 14:39:29', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:39:29', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff23801470019ae410042', 'depart.add.param', 'sysmanage.departlist.column.add', 'Department Add', 'en', '2014-07-04 14:39:48', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 15:31:29', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff23801470019df800044', 'depart.add.param', 'sysmanage.departlist.column.add', '部门录入', 'zh-cn', '2014-07-04 14:40:01', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:40:01', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff2380147001a0f930046', 'depart.edit.param', 'sysmanage.departlist.column.update', 'Department Update', 'en', '2014-07-04 14:40:13', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 15:31:42', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff2380147001a34ed0048', 'depart.edit.param', 'sysmanage.departlist.column.update', '部门编辑', 'zh-cn', '2014-07-04 14:40:23', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:40:23', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff2380147001ab010004a', 'parent.depart', 'sysmanage.departlist.column.parentDepartment', 'Parent Department', 'en', '2014-07-04 14:40:54', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:40:54', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff2380147001ad6a7004c', 'parent.depart', 'sysmanage.departlist.column.parentDepartment', '上级部门', 'zh-cn', '2014-07-04 14:41:04', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:41:04', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff238014700256132004e', 'area.manage', 'sysmanage.arealist.column.areamanage', 'Area Manage', 'en', '2014-07-04 14:52:35', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:52:35', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff23801470025a7e70050', 'area.manage', 'sysmanage.arealist.column.areamanage', '地域管理', 'zh-cn', '2014-07-04 14:52:53', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:52:53', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff2380147002765390052', 'common.id', 'sysmanage.arealist.column.id', 'id', 'en', '2014-07-04 14:54:47', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:54:47', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff23801470027863b0054', 'common.id', 'sysmanage.arealist.column.id', '编号', 'zh-cn', '2014-07-04 14:54:56', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:54:56', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff2380147002800990056', 'area.name', 'sysmanage.arealist.column.territoryName', 'Area Name', 'en', '2014-07-04 14:55:27', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:55:27', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff23801470028c0330058', 'area.name', 'sysmanage.arealist.column.territoryName', '地域名称', 'zh-cn', '2014-07-04 14:56:16', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:56:16', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff238014700295bd8005a', 'area.code', 'sysmanage.arealist.column.territorySrc', 'Area Code', 'en', '2014-07-04 14:56:56', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:56:56', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff2380147002981ee005c', 'area.code', 'sysmanage.arealist.column.territorySrc', '地域编码', 'zh-cn', '2014-07-04 14:57:06', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:57:06', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff23801470029c84d005e', 'display.order', 'sysmanage.arealist.column.territorySort', 'Area Sort', 'en', '2014-07-04 14:57:24', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:57:37', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff2380147002a3fa50061', 'display.order', 'sysmanage.arealist.column.territorySort', '显示顺序', 'zh-cn', '2014-07-04 14:57:54', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:58:02', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff2380147002a93ba0064', 'area.add.param', 'sysmanage.arealist.column.addFun', 'Area Add', 'en', '2014-07-04 14:58:16', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 15:12:56', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff2380147002abf9c0066', 'area.add.param', 'sysmanage.arealist.column.addFun', '地域录入', 'zh-cn', '2014-07-04 14:58:27', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:58:27', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff2380147002b00180068', 'area.edit.param', 'sysmanage.arealist.column.update', 'Area Edit', 'en', '2014-07-04 14:58:43', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 15:13:24', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff2380147002b339b006a', 'area.edit.param', 'sysmanage.arealist.column.update', '地域编辑', 'zh-cn', '2014-07-04 14:58:57', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:58:57', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff2380147002c144c006c', 'area.level', 'sysmanage.arealist.column.territoryLevel', 'Area Level', 'en', '2014-07-04 14:59:54', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 14:59:54', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff2380147002c3711006e', 'area.level', 'sysmanage.arealist.column.territoryLevel', '地域等级', 'zh-cn', '2014-07-04 15:00:03', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 15:00:03', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff2380147002ce8a70070', 'parent.area', 'sysmanage.arealist.column.parentArea', 'Parent Area', 'en', '2014-07-04 15:00:48', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 15:00:48', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e201046fff2380147002d42990072', 'parent.area', 'sysmanage.arealist.column.parentArea', '父地域', 'zh-cn', '2014-07-04 15:01:11', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 15:01:11', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e20104701c151014701d4ac920001', 'system.icon', 'sysmanage.iconlist.column.iconType_system', 'System Icon', 'en', '2014-07-04 22:43:40', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 22:43:40', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e20104701c151014701d4e2990003', 'system.icon', 'sysmanage.iconlist.column.iconType_system', '系统图标', 'zh-cn', '2014-07-04 22:43:54', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 22:43:54', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e20104701c151014701d53b200005', 'menu.icon', 'sysmanage.iconlist.column.iconType_menu', 'Menu Icon', 'en', '2014-07-04 22:44:17', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 22:44:17', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e20104701c151014701d5c6cc0007', 'menu.icon', 'sysmanage.iconlist.column.iconType_menu', '菜单图标', 'zh-cn', '2014-07-04 22:44:53', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 22:44:53', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e20104701c151014701d6009b0009', 'desktop.icon', 'sysmanage.iconlist.column.iconType_desk', 'Desk Icon', 'en', '2014-07-04 22:45:07', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 22:45:07', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e20104701c151014701d63dec000b', 'desktop.icon', 'sysmanage.iconlist.column.iconType_desk', '桌面图标', 'zh-cn', '2014-07-04 22:45:23', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 22:45:23', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e20104701c151014701dda832000d', 'main.area', 'sysmanage.arealist.column.territoryLevel_mainLevel', 'Main Level', 'en', '2014-07-04 22:53:29', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 22:53:29', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e20104701c151014701ddf718000f', 'main.area', 'sysmanage.arealist.column.territoryLevel_mainLevel', '一级地域', 'zh-cn', '2014-07-04 22:53:49', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 22:58:41', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e20104701c151014701de50dd0011', 'sub.area', 'sysmanage.arealist.column.territoryLevel_subLevel', 'Sub Level', 'en', '2014-07-04 22:54:12', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 22:55:00', '297e201046d3660a0146d36d7b7a01e7', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e20104701c151014701dece660013', 'sub.area', 'sysmanage.arealist.column.territoryLevel_subLevel', '下级地域', 'zh-cn', '2014-07-04 22:54:44', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 22:54:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e20104701ecd4014701f3a69c0001', 'member.list', 'sysmanage.departlist.column.viewMember_memberList', 'Member List', 'en', '2014-07-04 23:17:30', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 23:17:30', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('297e20104701ecd4014701f3dcfb0003', 'member.list', 'sysmanage.departlist.column.viewMember_memberList', '成员列表', 'zh-cn', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('2a609258aef344bbbcf0c766d922e449', 'common.phone', 'sysmanage.user.column.phone', 'Phone', 'en', '2014-07-03 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('2b533a2ec15b48f29ea70f8525974782', 'common.username', 'sysmanage.user.column.options', 'Options', 'en', '2014-07-03 18:39:42', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('2bad4a20100e456aac2f6be3d1cc85ac', 'common.realname', 'sysmanage.user.column.realname', 'Real Name', 'en', '2014-07-03 18:39:42', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('2d70c1a8158b415b9aff12e1957c1819', 'common.repeatpassword', 'sysmanage.user.column.repeat', 'Repeat Password', 'en', '2014-07-03 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('2fe5274af5d94fb49240d82b7b8d2a95', 'common.tel', 'sysmanage.user.column.telephone', 'Telephone', 'en', '2014-07-03 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('3c826851fb0e4d92a319eafced059ef4', 'common.edituser', 'sysmanage.user.button.edituser', '用户编辑', 'zh-cn', '2014-07-03 18:39:42', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('3db54b3731434dc38bc5ea3b20de7db8', 'common.middle', 'sysmanage.user.tip.middle', 'Middle', 'en', '2014-07-04 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-04 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402880e64705eca9014705eee9120001', 'user.analysisline', 'log.user.analysisLine.title', 'User analysis Line', 'en', '2014-07-05 17:50:49', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402880e64705eca9014705f1741c0003', 'user.analysisline', 'log.user.analysisLine.title', '用户分析 Line', 'zh-cn', '2014-07-05 17:53:35', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402880e64705eca9014705f535a50005', 'user.analysispie', 'log.user.analysisPie.title', 'User analysis Pie', 'en', '2014-07-05 17:57:41', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402880e64705eca9014705f597d10007', 'user.analysispie', 'log.user.analysisPie.title', '用户分析 Pie', 'zh-cn', '2014-07-05 17:58:07', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402880e64705eca9014705f82a580009', 'user.analysishistogram', 'log.user.analysisHistogram.title', 'User analysis Histogram', 'en', '2014-07-05 18:00:55', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402880e64705eca9014705fc8656000b', 'user.browseranalysis', 'log.user.analysisLine.contenttile', ' Analysis of the user\'s browser proportion', 'en', '2014-07-05 18:05:41', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402880e64705eca9014705fce72d000d', 'user.browseranalysis', 'log.user.analysisLine.contenttile', '用户浏览器比例分析', 'zh-cn', '2014-07-05 18:06:06', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402880e64705eca901470608088c000f', 'class.studentcountanalysis', 'reportDemo.page.title', 'Class student ratio analysis', 'en', '2014-07-05 18:18:15', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402880e64705eca9014706088d7c0011', 'class.studentcountanalysis', 'reportDemo.page.title', '班级学生人数比例分析', 'zh-cn', '2014-07-05 18:18:49', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402880e64705eca90147060a873a0013', 'common.linechart', 'reportDemo.page.title.linechart', 'Line chart', 'en', '2014-07-05 18:20:59', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402880e64705eca90147060aef730015', 'common.linechart', 'reportDemo.page.title.linechart', '折线图', 'zh-cn', '2014-07-05 18:21:25', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402880e64705eca90147060bfcae0017', 'common.piechart', 'reportDemo.page.title.pie', 'pie', 'en', '2014-07-05 18:22:34', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402880e64705eca90147060c5e310019', 'common.piechart', 'reportDemo.page.title.pie', '饼状图', 'zh-cn', '2014-07-05 18:22:59', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402880e64705eca90147060dc6b6001b', 'common.histogram', 'log.user.analysisLine.histogram', 'Histogram', 'en', '2014-07-05 18:24:31', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402880e64705eca90147060e11f3001d', 'common.histogram', 'log.user.analysisLine.histogram', '柱状图', 'zh-cn', '2014-07-05 18:24:51', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402880e64705eca90147060fa1ba001f', 'class.countstatistics', 'reportDemo.classlist.title', 'Class size statistics', 'en', '2014-07-05 18:26:33', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402880e64705eca90147060fdf3a0021', 'class.countstatistics', 'reportDemo.classlist.title', '班级人数统计', 'zh-cn', '2014-07-05 18:26:49', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402880e64705eca90147061123451230', 'common.querystatistics', 'common.page.menu.statistics_query', '统计查询', 'zh-cn', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402880e64705eca90147061123451231', 'common.querystatistics', 'common.page.menu.statistics_query', 'Statistics Query', 'en', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402880e64705eca90147061123451232', 'common.scheduletask', 'sysmonitor.timetasklist.column.timedtask', '定时任务', 'zh-cn', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402880e64705eca90147061123451233', 'common.scheduletask', 'sysmonitor.timetasklist.column.timedtask', 'Timed Task', 'en', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402880e64705eca90147061123451234', 'system.log', 'sysmonitor.loglist.column.syslog', '系统日志', 'zh-cn', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402880e64705eca90147061123451235', 'system.log', 'sysmonitor.loglist.column.syslog', 'Sys Log', 'en', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402880e64705eca90147061123451236', 'data.monitor', 'common.page.menu.datamonitor', '数据监控', 'zh-cn', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402880e64705eca90147061123451237', 'data.monitor', 'common.page.menu.datamonitor', 'Data Monitor', 'en', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402880e64705eca90147061123451238', 'form.config', 'online.cgformheadlist.column.formconfig', '表单配置', 'zh-cn', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402880e64705eca90147061123451239', 'form.config', 'online.cgformheadlist.column.formconfig', 'Form Config', 'en', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402880e64705eca90147061123451240', 'dynamic.formconfig', 'online.cgformheadlist.column.dynamicreport_config', '动态报表配置', 'zh-cn', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402880e64705eca90147061123451241', 'dynamic.formconfig', 'online.cgformheadlist.column.dynamicreport_config', 'DynamicReport Config', 'en', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402880e64705eca90147061123451242', 'user.analysis', 'common.page.analysis.useranalysis', '用户分析', 'zh-cn', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402880e64705eca90147061123451243', 'user.analysis', 'common.page.analysis.useranalysis', 'User Analysis', 'en', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402880e64705eca90147061138fb0023', 'common.code', 'reportDemo.classlist.column1', 'Serial number', 'en', '2014-07-05 18:28:17', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402880e64705eca90147061178260025', 'common.code', 'reportDemo.classlist.column1', '编号', 'zh-cn', '2014-07-05 18:28:33', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402880e64705eca90147061365350027', 'class', 'reportDemo.classlist.column2', 'Class', 'en', '2014-07-05 18:30:40', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402880e64705eca901470614932d0029', 'class', 'reportDemo.classlist.column2', '班级', 'zh-cn', '2014-07-05 18:31:57', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402880e64705eca9014706152c0a002b', 'number.ofpeople', 'reportDemo.classlist.column3', ' Number of people', 'en', '2014-07-05 18:32:36', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402880e64705eca901470615588b002d', 'number.ofpeople', 'reportDemo.classlist.column3', '人数', 'zh-cn', '2014-07-05 18:32:48', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402880e64705eca901470615f986002f', 'common.proportion', 'reportDemo.classlist.column4', 'Proportion', 'en', '2014-07-05 18:33:29', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402880e64705eca90147061627450031', 'common.proportion', 'reportDemo.classlist.column4', '比例', 'zh-cn', '2014-07-05 18:33:40', '402880e64705a8ce014705af94280052', 'admin', '2014-07-04 23:17:44', '297e201046d3660a0146d36d7b7a01e7', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881034728d95a014728dc0fdf0005', 'has.sync', 'has.sync', '已同步', 'zh-cn', '2014-07-12 12:36:56', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 12:36:56', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881034728d95a014728dcc32c0007', 'has.sync', 'has.sync', 'Synchronized', 'en', '2014-07-12 12:37:42', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:10:45', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881034728d95a014728dd29140009', 'have.nosync', 'have.no.sync', '未同步', 'zh-cn', '2014-07-12 12:38:08', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 12:38:08', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881034728d95a014728dd8161000b', 'have.nosync', 'have.no.sync', 'No Synchronize', 'en', '2014-07-12 12:38:31', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 12:38:31', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881034728d95a014728df506e000f', 'master.table', 'main.table', '主表', 'zh-cn', '2014-07-12 12:40:29', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 12:40:29', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881034728d95a014728df9a630011', 'master.table', 'main.table', 'Main Table', 'en', '2014-07-12 12:40:48', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 12:40:48', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881034728d95a014728dfe5610013', 'single.table', 'single.table', '单表', 'zh-cn', '2014-07-12 12:41:07', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 12:41:07', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881034728d95a014728e0077e0015', 'single.table', 'single.table', 'Single Table', 'en', '2014-07-12 12:41:16', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 12:41:16', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881034728d95a014728e0f6500017', 'slave.table', 'slave.table', '附表', 'zh-cn', '2014-07-12 12:42:17', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 12:42:17', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881034728d95a014728e1183d0019', 'slave.table', 'slave.table', 'Slave Table', 'en', '2014-07-12 12:42:26', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 12:42:26', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881034728fa28014728fd5f160003', 'smartform.setting', 'smart.form.setting', '智能表单配置', 'zh-cn', '2014-07-12 13:13:19', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:13:19', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881034728fa28014728fd89ff0005', 'smartform.setting', 'smart.form.setting', 'Smart Form Setting', 'en', '2014-07-12 13:13:30', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:13:30', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881034728fa28014728feca7b0007', 'generate.form', 'generate.form', '生成表单', 'zh-cn', '2014-07-12 13:14:52', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:14:52', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881034728fa28014728feedfa0009', 'generate.form', 'generate.form', 'Generate Form', 'en', '2014-07-12 13:15:01', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:15:01', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881034728fa28014728ff5a4e000b', 'generate.success', 'generate.success', '生成成功', 'zh-cn', '2014-07-12 13:15:29', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:15:29', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881034728fa28014728ff7e81000d', 'generate.success', 'generate.success', 'Generate Success', 'en', '2014-07-12 13:15:38', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:15:38', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881034728fa2801472900fe10000f', 'please.selectgenerateitem', 'please.select.need.generate.form.item', '请选择要生成表单的项!', 'zh-cn', '2014-07-12 13:17:16', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:17:16', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881034728fa2801472901dab10011', 'please.selectgenerateitem', 'please.select.need.generate.form.item', 'Please select should be generated item.', 'en', '2014-07-12 13:18:13', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:18:13', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881034728fa280147290fad990013', 'button.code', 'button.code', '按钮编码', 'zh-cn', '2014-07-12 13:33:19', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:33:19', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881034728fa280147290fcac30015', 'button.code', 'button.code', 'Button Code', 'en', '2014-07-12 13:33:26', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:33:26', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881034728fa2801472910045f0017', 'button.name', 'button.name', '按钮名称', 'zh-cn', '2014-07-12 13:33:41', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:33:41', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881034728fa28014729101a4a0019', 'button.name', 'button.name', 'Button Name', 'en', '2014-07-12 13:33:46', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:33:46', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881034728fa280147291059ca001b', 'button.style', 'button.style', '按钮样式', 'zh-cn', '2014-07-12 13:34:03', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:34:03', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881034728fa2801472910776c001d', 'button.style', 'button.style', 'Button Style', 'en', '2014-07-12 13:34:10', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:34:10', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881034728fa2801472910a634001f', 'action.type', 'action.type', '动作类型', 'zh-cn', '2014-07-12 13:34:22', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:34:22', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881034728fa2801472910bdd70021', 'action.type', 'action.type', 'Action Type', 'en', '2014-07-12 13:34:28', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:34:28', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881034728fa280147291132520023', 'show.sequence', 'show.sequence', '显示顺序', 'zh-cn', '2014-07-12 13:34:58', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:34:58', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881034728fa280147291152530025', 'show.sequence', 'show.sequence', 'Show Sequence', 'en', '2014-07-12 13:35:06', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:35:06', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881034728fa28014729118cb70027', 'icon.style', 'icon.style', '显示图标样式', 'zh-cn', '2014-07-12 13:35:21', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:35:46', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881034728fa2801472911c7060029', 'icon.style', 'icon.style', 'Icon Style', 'en', '2014-07-12 13:35:36', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:35:52', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881034728fa28014729125f1b002d', 'show.expression', 'show.express', '显示表达式', 'zh-cn', '2014-07-12 13:36:15', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:36:15', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881034728fa2801472912837f002f', 'show.expression', 'show.express', 'Show Express', 'en', '2014-07-12 13:36:24', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:36:24', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881034728fa2801472912d14e0031', 'common.status', 'status', '状态', 'zh-cn', '2014-07-12 13:36:44', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:36:44', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881034728fa2801472912e9c60033', 'common.status', 'status', 'Status', 'en', '2014-07-12 13:36:51', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:36:51', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881034728fa2801472914149c0035', 'common.use', 'active', '使用', 'zh-cn', '2014-07-12 13:38:07', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:38:07', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881034728fa280147291480360037', 'common.use', 'active', 'Use', 'en', '2014-07-12 13:38:35', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:38:35', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881034728fa2801472914b0420039', 'common.inactive', 'inactive', '未使用', 'zh-cn', '2014-07-12 13:38:47', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:38:47', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881034728fa2801472914ca07003b', 'common.inactive', 'inactive', 'Inactive', 'en', '2014-07-12 13:38:54', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 13:38:54', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028810347292c730147292ec6f90001', 'common.normal', 'normal', '正常', 'zh-cn', '2014-07-12 14:07:17', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:07:17', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028810347292c730147292edb210003', 'common.normal', 'normal', 'Normal', 'en', '2014-07-12 14:07:22', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:07:22', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028810347292c730147292f937d0005', 'common.disable', 'disable', '禁用', 'zh-cn', '2014-07-12 14:08:09', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:08:09', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028810347292c730147292fa7e70007', 'common.disable', 'disable', 'Disable', 'en', '2014-07-12 14:08:14', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:08:14', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028810347292c730147293008280009', 'super.admin', 'super.admin', '超级管理员', 'zh-cn', '2014-07-12 14:08:39', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:08:39', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028810347292c730147293021c7000b', 'super.admin', 'super.admin', 'Super Admin', 'en', '2014-07-12 14:08:46', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:08:46', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028810347292c73014729308a0e000d', 'please.selectlockitem', 'please.select.locked.item', '请选择锁定项目', 'zh-cn', '2014-07-12 14:09:12', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:09:12', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028810347292c7301472930ae9e000f', 'please.selectlockitem', 'please.select.locked.item', 'Please select locked item', 'en', '2014-07-12 14:09:22', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:09:22', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028810347292c7301472931c5900011', 'is.confirm', 'is.confirm', '确定吗', 'zh-cn', '2014-07-12 14:10:33', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:10:33', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028810347292c73014729320e310013', 'is.confirm', 'is.confirm', 'Confirm?', 'en', '2014-07-12 14:10:52', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:10:52', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028810347292c73014729369dde0015', 'current.permission', 'current.permission', '当前权限', 'zh-cn', '2014-07-12 14:15:51', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:15:51', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028810347292c7301472936c80f0017', 'current.permission', 'current.permission', 'Current Permission', 'en', '2014-07-12 14:16:01', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:16:01', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028810347292c73014729386dce0019', 'confirm.deletethisrecord', 'confirm.delete.this.record', '确定删除该记录吗', 'zh-cn', '2014-07-12 14:17:49', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:17:49', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028810347292c7301472938c6f9001b', 'confirm.deletethisrecord', 'confirm.delete.this.record', 'Delete this record, Confirm?', 'en', '2014-07-12 14:18:12', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:18:12', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028810347292c7301472939f98b001d', 'menu.list', 'menu.list', '菜单列表', 'zh-cn', '2014-07-12 14:19:31', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:19:31', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028810347292c730147293a157d001f', 'menu.list', 'menu.list', 'Menu List', 'en', '2014-07-12 14:19:38', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:19:38', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028810347292c730147293ab7a10021', 'operate.buttonlist', 'operation.button.list', '操作按钮列表', 'zh-cn', '2014-07-12 14:20:19', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:20:19', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028810347292c730147293aefc40023', 'operate.buttonlist', 'operation.button.list', 'Button List', 'en', '2014-07-12 14:20:34', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:20:34', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028810347292c730147293b76f80025', 'select.all', 'select.all', '全选', 'zh-cn', '2014-07-12 14:21:08', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:21:08', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028810347292c730147293b8dc60027', 'select.all', 'select.all', 'Select All', 'en', '2014-07-12 14:21:14', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:21:14', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('40288103472948880147294b26420002', 'button.setting', 'button.setting', '按钮设置', 'zh-cn', '2014-07-12 14:38:16', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:38:16', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('40288103472948880147294b432a0004', 'button.setting', 'button.setting', 'Button Setting', 'en', '2014-07-12 14:38:24', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-12 14:38:24', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f792528d0011', 'common.id', 'sysmonitor.timetasklist.column.id', 'id', 'en', '2014-07-02 22:55:00', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:18:27', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f7934ae70014', 'common.id', 'sysmonitor.timetasklist.column.id', '编号', 'zh-cn', '2014-07-02 22:56:04', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:18:35', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f793fd690016', 'common.taskid', 'sysmonitor.timetasklist.column.taskid', 'Task Id', 'en', '2014-07-02 22:56:50', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:41:28', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f794259e0018', 'common.taskid', 'sysmonitor.timetasklist.column.taskid', '任务ID', 'zh-cn', '2014-07-02 22:57:00', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:19:13', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f7949e2d001a', 'common.taskdesc', 'sysmonitor.timetasklist.column.taskdescribe', '任务描述', 'zh-cn', '2014-07-02 22:57:31', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-03 12:37:08', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f794d224001c', 'common.taskdesc', 'sysmonitor.timetasklist.column.taskdescribe', 'Task Describe', 'en', '2014-07-02 22:57:44', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:41:38', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f79550c4001e', 'cron.expression', 'sysmonitor.timetasklist.column.cronexpression', 'cron表达式', 'zh-cn', '2014-07-02 22:58:16', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:22:37', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f7956b7b0020', 'cron.expression', 'sysmonitor.timetasklist.column.cronexpression', 'Cron Expression', 'en', '2014-07-02 22:58:23', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:41:44', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f795c74b0022', 'common.iseffect', 'sysmonitor.timetasklist.column.iseffect', '是否生效', 'zh-cn', '2014-07-02 22:58:47', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:22:58', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f79643cc0024', 'common.iseffect', 'sysmonitor.timetasklist.column.iseffect', 'isEffect', 'en', '2014-07-02 22:59:19', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:23:03', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f796fbd60026', 'running.state', 'sysmonitor.timetasklist.column.isstart', '运行状态', 'zh-cn', '2014-07-02 23:00:06', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:23:19', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f79729ce0028', 'running.state', 'sysmonitor.timetasklist.column.isstart', 'Running State', 'en', '2014-07-02 23:00:17', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:41:52', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f798b8850034', 'common.createby', 'sysmonitor.timetasklist.column.createby', 'Create By', 'en', '2014-07-02 23:02:00', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:41:58', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f798f9cf0036', 'common.createby', 'sysmonitor.timetasklist.column.createby', '创建人', 'zh-cn', '2014-07-02 23:02:16', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:23:44', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f7992d020038', 'common.createtime', 'sysmonitor.timetasklist.column.createdate', 'Create Date', 'en', '2014-07-02 23:02:29', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:42:06', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f799651c003a', 'common.createtime', 'sysmonitor.timetasklist.column.createdate', '创建时间', 'zh-cn', '2014-07-02 23:02:44', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:24:09', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f7999ffd003c', 'common.updateby', 'sysmonitor.timetasklist.column.updateby', 'Update By', 'en', '2014-07-02 23:02:59', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:42:12', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f799e7e9003e', 'common.updateby', 'sysmonitor.timetasklist.column.updateby', '修改人', 'zh-cn', '2014-07-02 23:03:17', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:24:30', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f79a3aed0040', 'common.updatetime', 'sysmonitor.timetasklist.column.updatedate', '修改时间', 'zh-cn', '2014-07-02 23:03:38', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:24:47', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f79a6c310042', 'common.updatetime', 'sysmonitor.timetasklist.column.updatedate', 'Update Time', 'en', '2014-07-02 23:03:51', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:42:21', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f79b70e90044', 'common.operation', 'sysmonitor.timetasklist.column.operation', 'Operation', 'en', '2014-07-02 23:04:58', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:42:27', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f79b9eef0046', 'common.operation', 'sysmonitor.timetasklist.column.operation', '操作', 'zh-cn', '2014-07-02 23:05:10', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:25:17', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f79d8ea10048', 'common.start', 'sysmonitor.timetasklist.column.start', 'Start', 'en', '2014-07-02 23:07:17', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:42:32', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f79df1d8004a', 'common.start', 'sysmonitor.timetasklist.column.start', '运行', 'zh-cn', '2014-07-02 23:07:42', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:20:31', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f79e5f54004c', 'common.stop', 'sysmonitor.timetasklist.column.stop', 'Stop', 'en', '2014-07-02 23:08:10', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:42:38', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f79e7be9004e', 'common.stop', 'sysmonitor.timetasklist.column.stop', '停止', 'zh-cn', '2014-07-02 23:08:17', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:26:27', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f79faa1d0050', 'effective.immediately', 'sysmonitor.timetasklist.column.WIE', 'Effective Immediately', 'en', '2014-07-02 23:09:35', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:26:35', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f79fcc7f0052', 'effective.immediately', 'sysmonitor.timetasklist.column.WIE', '立即生效', 'zh-cn', '2014-07-02 23:09:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:26:39', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f7a011b60054', 'common.del', 'sysmonitor.timetasklist.column.delete', 'Delete', 'en', '2014-07-02 23:10:01', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:42:44', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f7a02ccc0056', 'common.del', 'sysmonitor.timetasklist.column.delete', '删除', 'zh-cn', '2014-07-02 23:10:08', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:26:55', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f7a0da820059', 'common.add', 'sysmonitor.timetasklist.column.add', 'Add', 'en', '2014-07-02 23:10:53', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:42:57', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f7a106cf005b', 'common.add', 'sysmonitor.timetasklist.column.add', '录入', 'zh-cn', '2014-07-02 23:11:04', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:13', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f7a1500f005d', 'common.edit', 'sysmonitor.timetasklist.column.edit', 'Edit', 'en', '2014-07-02 23:11:23', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:43:04', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f7a16f90005f', 'common.edit', 'sysmonitor.timetasklist.column.edit', '编辑', 'zh-cn', '2014-07-02 23:11:31', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:24', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f7a186c20061', 'common.view', 'sysmonitor.timetasklist.column.view', 'View', 'en', '2014-07-02 23:11:37', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:43:09', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f7a1aa900063', 'common.view', 'sysmonitor.timetasklist.column.view', '查看', 'zh-cn', '2014-07-02 23:11:46', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:36', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f7a44eb60065', 'schedule.taskmanage', 'sysmonitor.timetasklist.column.timedtaskmanage', 'Timed Task Manage', 'en', '2014-07-02 23:14:39', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:28:08', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f7a471110067', 'schedule.taskmanage', 'sysmonitor.timetasklist.column.timedtaskmanage', '定时任务管理', 'zh-cn', '2014-07-02 23:14:48', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f7b7681d009c', 'common.id', 'sysmonitor.loglist.column.id', 'Id', 'en', '2014-07-02 23:35:31', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:43:16', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f7b78a1e009e', 'common.id', 'sysmonitor.loglist.column.id', '编号', 'zh-cn', '2014-07-02 23:35:39', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f7b7f88700a0', 'log.content', 'sysmonitor.loglist.column.logcontent', 'Log Content', 'en', '2014-07-02 23:36:08', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:41:04', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f7b828ee00a2', 'log.content', 'sysmonitor.loglist.column.logcontent', '日志内容', 'zh-cn', '2014-07-02 23:36:20', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f7b932f600a4', 'operate.ip', 'sysmonitor.loglist.column.operationip', 'Operate IP', 'en', '2014-07-02 23:37:28', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:43:30', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f7b9677100a6', 'operate.ip', 'sysmonitor.loglist.column.operationip', '操作IP', 'zh-cn', '2014-07-02 23:37:41', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f7b9bd7d00a8', 'common.browser', 'sysmonitor.loglist.column.broswer', 'Broswer', 'en', '2014-07-02 23:38:04', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:43:36', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f7b9f40a00aa', 'common.browser', 'sysmonitor.loglist.column.broswer', '浏览器', 'zh-cn', '2014-07-02 23:38:17', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f7ba2e7e00ac', 'operate.time', 'sysmonitor.loglist.column.operatetime', 'Operate Time', 'en', '2014-07-02 23:38:32', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:43:44', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f7ba610e00ae', 'operate.time', 'sysmonitor.loglist.column.operatetime', '操作时间', 'zh-cn', '2014-07-02 23:38:45', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f7bb601a00b0', 'log.manage', 'sysmonitor.loglist.column.logmanage', 'Log Manage', 'en', '2014-07-02 23:39:51', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f7bb7ef200b2', 'log.manage', 'sysmonitor.loglist.column.logmanage', '日志管理', 'zh-cn', '2014-07-02 23:39:59', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f7bbef3600b4', 'log.level', 'sysmonitor.loglist.column.loglevel', 'Log Level', 'en', '2014-07-02 23:40:27', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f7c012cd00cc', 'select.loglevel', 'sysmonitor.loglist.column.loglevelnone', 'Please select log level', 'en', '2014-07-02 23:44:59', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f7c086ff00ce', 'select.loglevel', 'sysmonitor.loglist.column.loglevelnone', '选择日志类型', 'zh-cn', '2014-07-02 23:45:28', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f7c0c98a00d0', 'common.login', 'sysmonitor.loglist.column.login', 'Login', 'en', '2014-07-02 23:45:45', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f7c0ecb900d2', 'common.login', 'sysmonitor.loglist.column.login', '登录', 'zh-cn', '2014-07-02 23:45:54', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f7c1766800d4', 'common.logout', 'sysmonitor.loglist.column.logout', 'Logout', 'en', '2014-07-02 23:46:30', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f7c1a4cc00d6', 'common.logout', 'sysmonitor.loglist.column.logout', '退出', 'zh-cn', '2014-07-02 23:46:41', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:47:05', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f7c287de00d9', 'common.insert', 'sysmonitor.loglist.column.insert', 'Insert', 'en', '2014-07-02 23:47:40', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f7c2a1f200db', 'common.insert', 'sysmonitor.loglist.column.insert', '插入', 'zh-cn', '2014-07-02 23:47:46', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f7c2ed9900dd', 'common.del', 'sysmonitor.loglist.column.delete', 'Delete', 'en', '2014-07-02 23:48:06', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f7c44bab00df', 'common.del', 'sysmonitor.loglist.column.delete', '删除', 'zh-cn', '2014-07-02 23:49:35', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f7c4ad4600e1', 'common.upd', 'sysmonitor.loglist.column.update', 'Update', 'en', '2014-07-02 23:50:00', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f7c4dc8700e3', 'common.upd', 'sysmonitor.loglist.column.update', '更新', 'zh-cn', '2014-07-02 23:50:12', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f7c5815c00e5', 'common.upload', 'sysmonitor.loglist.column.upload', 'Upload', 'en', '2014-07-02 23:50:55', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f7c5a60600e7', 'common.upload', 'sysmonitor.loglist.column.upload', '上传', 'zh-cn', '2014-07-02 23:51:04', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f7c5fd5700e9', 'other', 'sysmonitor.loglist.column.other', 'Other', 'en', '2014-07-02 23:51:26', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f7c62c2400eb', 'other', 'sysmonitor.loglist.column.other', '其他', 'zh-cn', '2014-07-02 23:51:38', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f7c7d0cf00ef', 'operate.time', 'sysmonitor.loglist.column.operationtime', 'Operation Time', 'en', '2014-07-02 23:53:26', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46f7832b0146f7c7ed6c00f1', 'operate.time', 'sysmonitor.loglist.column.operationtime', '操作时间', 'zh-cn', '2014-07-02 23:53:33', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46fa75be0146fa7a50270001', 'common.query', 'sysmonitor.loglist.column.select', 'Select', 'en', '2014-07-03 12:27:38', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46fa75be0146fa7a6ef00003', 'common.query', 'sysmonitor.loglist.column.select', '查询', 'zh-cn', '2014-07-03 12:27:46', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028818d46fa75be0146fa855c60000e', 'log.level', 'sysmonitor.loglist.column.loglevel', '日志类型', 'zh-cn', '2014-07-03 12:39:42', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881c046efce8d0146effd3b0a0001', 'language', 'sysmanage.mutilang.msg.mutilang', '语言', 'zh-cn', '2014-07-01 11:34:48', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-01 12:01:38', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881c046efce8d0146effd5d980003', 'language', 'sysmanage.mutilang.msg.mutilang', 'Languge', 'en', '2014-07-01 11:34:57', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-01 12:01:46', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881c046efce8d0146f00167c90005', 'common.del.success.param', 'common.msg.param.del.success', '{0} 删除成功', 'zh-cn', '2014-07-01 11:39:22', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-01 11:40:37', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881c046efce8d0146f001f7cd0007', 'common.del.success.param', 'common.msg.param.del.success', '{0} Delete Success', 'en', '2014-07-01 11:39:59', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-01 11:40:26', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881c046efce8d0146f00e2152000b', 'common.edit.success.param', 'common.msg.param.upd.success', '{0} 更新成功', 'zh-cn', '2014-07-01 11:53:16', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-01 12:17:01', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881c046efce8d0146f00f05aa000d', 'common.edit.success.param', 'common.msg.param.upd.success', ' {0} Update success', 'en', '2014-07-01 11:54:14', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-01 12:20:43', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881c046efce8d0146f01110bc000f', 'common.add.success.param', 'common.msg.param.add.success', '{0} 录入成功', 'zh-cn', '2014-07-01 11:56:28', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-01 11:56:28', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881c046efce8d0146f01153070011', 'common.add.success.param', 'common.msg.param.add.success', '{0} Add Success', 'en', '2014-07-01 11:56:45', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-01 11:56:45', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881c046f02a3f0146f02d9e910002', 'common.refreshsuccess', 'sysmanage.mutilang.msg.refreshsuccess', '刷新成功', 'zh-cn', '2014-07-01 12:27:40', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-01 12:27:40', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881c046f02a3f0146f02df49c0004', 'common.refreshsuccess', 'sysmanage.mutilang.msg.refreshsuccess', 'Refresh Success', 'en', '2014-07-01 12:28:02', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-01 12:28:02', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881c046f02a3f0146f0301b150006', 'common.edit.fail.param', 'common.msg.param.upd.fail', '{0} 更新失败', 'zh-cn', '2014-07-01 12:30:22', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-01 12:30:22', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881c046f02a3f0146f030cde00008', 'common.edit.fail.param', 'common.msg.param.upd.fail', '{0} Update Fail', 'en', '2014-07-01 12:31:08', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-01 12:31:08', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881c046f02a3f0146f0346009000a', 'common.refreshfail', 'sysmanage.mutilang.msg.refreshfail', '刷新失败', 'zh-cn', '2014-07-01 12:35:02', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-01 12:35:02', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881c046f02a3f0146f0348bc9000c', 'common.refreshfail', 'sysmanage.mutilang.msg.refreshfail', 'Refresh Fail', 'en', '2014-07-01 12:35:13', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-01 12:35:13', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881c1470636fe0147063dc2080001', 'database.property', 'online.databaseproperty', '数据库属性', 'zh-cn', '2014-07-05 19:16:56', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:16:56', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881c1470636fe0147063e03aa0003', 'database.property', 'online.databaseproperty', 'Database Property', 'en', '2014-07-05 19:17:13', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:17:13', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881c1470636fe0147063e73640005', 'page.property', 'online.pageproperty', '页面属性', 'zh-cn', '2014-07-05 19:17:41', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:17:41', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881c1470636fe0147063e910c0007', 'page.property', 'online.pageproperty', 'Page Property', 'en', '2014-07-05 19:17:49', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:17:49', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881c1470636fe0147063f9a4a0009', 'validate.dict', 'online.validatedictionary', 'Validate Dictionary', 'en', '2014-07-05 19:18:57', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:18:57', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881c1470636fe0147063fe101000b', 'validate.dict', 'online.validatedictionary', '校验字典', 'zh-cn', '2014-07-05 19:19:15', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:19:15', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881c1470636fe014706408c51000d', 'common.fk', 'online.fk', '外键', 'zh-cn', '2014-07-05 19:19:59', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:19:59', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881c1470636fe0147064102b0000f', 'common.fk', 'online.fk', 'Foreign Key', 'en', '2014-07-05 19:20:29', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:20:29', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881c1470636fe0147065887a70011', 'smarkform.formmaintain', 'online.smarkform.formmaintain', '智能表单-表单维护', 'zh-cn', '2014-07-05 19:46:10', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:46:10', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881c1470636fe01470658c29d0013', 'smarkform.formmaintain', 'online.smarkform.formmaintain', 'Smart Form', 'en', '2014-07-05 19:46:26', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:46:26', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881c1470636fe0147065a870d0015', 'common.onetomany', 'online.onetomany', '一对多', 'zh-cn', '2014-07-05 19:48:21', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:48:21', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881c1470636fe0147065acd6d0017', 'common.onetomany', 'online.onetomany', 'One To Many', 'en', '2014-07-05 19:48:39', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:48:39', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881c1470636fe0147065c1d980019', 'comon.onetoone', 'online.onetoone', '一对一', 'zh-cn', '2014-07-05 19:50:05', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:50:05', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881c1470636fe0147065c3551001b', 'comon.onetoone', 'online.onetoone', 'One To One', 'en', '2014-07-05 19:50:12', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:50:12', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881c1470636fe0147066041eb001d', 'common.uuid36bit', 'online.uuid', 'UUID(36位唯一编码)', 'zh-cn', '2014-07-05 19:54:37', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:54:37', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881c1470636fe01470660a327001f', 'common.uuid36bit', 'online.uuid', 'UUID(36 Bit Unique Code)', 'en', '2014-07-05 19:55:02', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:55:02', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881c1470636fe0147066267e70021', 'common.nativeautoincrement', 'online.native', 'NATIVE(自增长方式)', 'zh-cn', '2014-07-05 19:56:58', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:56:58', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881c1470636fe01470662f1dd0023', 'common.nativeautoincrement', 'online.native', 'NATIVE(Auto Increment)', 'en', '2014-07-05 19:57:33', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:57:33', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881c1470636fe01470663fbd00025', 'common.sequence', 'online.sequence', 'SEQUENCE(序列方式)', 'zh-cn', '2014-07-05 19:58:41', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:58:41', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881c1470636fe014706646c6b0027', 'common.sequence', 'online.sequence', 'SEQUENCE(Sequence)', 'en', '2014-07-05 19:59:10', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 19:59:19', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881c1470636fe014706669f32002a', 'please.inputtablename', 'online.msg.pleaseinputtablename', '请输入表名！', 'zh-cn', '2014-07-05 20:01:34', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 20:01:34', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881c1470636fe01470666c8e8002c', 'please.inputtablename', 'online.msg.pleaseinputtablename', 'Please Input Table Name', 'en', '2014-07-05 20:01:45', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-05 20:01:45', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881c347203fcc0147204595c40001', 'common.total', 'total', '共', 'zh-cn', '2014-07-10 20:35:37', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 20:35:37', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881c347203fcc01472045b5ec0003', 'common.total', 'total', ' Total ', 'en', '2014-07-10 20:35:45', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 20:46:18', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881c347203fcc014720461ad00005', 'common.item', 'item', '条', 'zh-cn', '2014-07-10 20:36:11', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 20:36:11', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881c347203fcc014720463bf10007', 'common.item', 'item', ' Item', 'en', '2014-07-10 20:36:19', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 20:46:37', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881c347203fcc0147204d69020009', 'input.error', 'input.error', '输入错误', 'zh-cn', '2014-07-10 20:44:09', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 20:44:09', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881c347203fcc0147204d9ef9000b', 'input.error', 'input.error', 'Input error', 'en', '2014-07-10 20:44:23', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 20:44:23', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881c347205fc0014720704aa50001', 'menuname.rang4to15', 'menu.scope', '菜单名称范围4~15位字符,且不为空', 'zh-cn', '2014-07-10 21:22:15', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 21:22:15', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881c347205fc0014720718d360003', 'menuname.rang4to15', 'menu.scope', 'Menu name should be 4-15 characters and should not empty', 'en', '2014-07-10 21:23:38', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 21:23:38', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881c347205fc001472082f5130005', 'jeect.platform', 'common.page.layout.displayplatform', 'Jeecg 快速开发平台', 'zh-cn', '2014-07-10 21:42:39', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 21:42:39', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881c347205fc00147208321e10007', 'jeect.platform', 'common.page.layout.displayplatform', 'Jeecg Quckly Platform', 'en', '2014-07-10 21:42:50', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 21:42:50', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e446f486df0146f49af73f0001', 'pk.strategies', 'online.cgformheadlist.column.primarykeystr', 'Primary key strategies', 'en', '2014-07-02 09:05:35', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 09:05:35', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e446f486df0146f49c57320003', 'pk.strategies', 'online.cgformheadlist.column.primarykeystr', '主键策略', 'zh-cn', '2014-07-02 09:07:05', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 09:07:05', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e446f5ec0b0146f5f492d60001', 'table.name', 'online.cgformheadlist.column.tablename', '表名', 'zh-cn', '2014-07-02 15:23:04', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 15:23:04', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e446f5ec0b0146f5f4b8fe0003', 'table.name', 'online.cgformheadlist.column.tablename', 'Table Name', 'en', '2014-07-02 15:23:14', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 15:23:14', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e446f5ec0b0146f5f536b50005', 'table.desc', 'online.cgformheadlist.column.tabledesc', 'Table Desc', 'en', '2014-07-02 15:23:46', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 15:23:46', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e446f5ec0b0146f5f56e0d0007', 'table.desc', 'online.cgformheadlist.column.tabledesc', '表描述', 'zh-cn', '2014-07-02 15:24:00', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 15:24:00', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e446f5ec0b0146f5f648c00009', 'table.type', 'online.cgformheadlist.column.tabletype', 'Table Type', 'en', '2014-07-02 15:24:56', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 15:24:56', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e446f5ec0b0146f5f672b6000b', 'table.type', 'online.cgformheadlist.column.tabletype', '表类型', 'zh-cn', '2014-07-02 15:25:07', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 15:25:07', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e446f5ec0b0146f61534a0000d', 'sequence.name', 'online.cgformheadlist.column.sequencename', 'Sequence Name', 'en', '2014-07-02 15:58:43', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 15:58:43', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e446f5ec0b0146f619d3ac000f', 'slave.table', 'online.cgformheadlist.column.accompanyingtable', 'Slave Table', 'en', '2014-07-02 16:03:46', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:03:46', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e446f5ec0b0146f619f1eb0011', 'slave.table', 'online.cgformheadlist.column.accompanyingtable', '附表', 'zh-cn', '2014-07-02 16:03:53', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:03:53', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e446f5ec0b0146f61dc7700013', 'single.table', 'online.cgformheadlist.column.singletable', '单表', 'zh-cn', '2014-07-02 16:08:05', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:08:05', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e446f5ec0b0146f61fa3e60015', 'single.table', 'online.cgformheadlist.column.singletable', 'Single Table', 'en', '2014-07-02 16:10:07', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:10:07', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e446f5ec0b0146f621503b0019', 'master.table', 'online.cgformheadlist.column.primarytable', '主表', 'zh-cn', '2014-07-02 16:11:56', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:11:56', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e446f5ec0b0146f621dddd001b', 'master.table', 'online.cgformheadlist.column.primarytable', 'Master Table', 'en', '2014-07-02 16:12:33', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:12:33', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e446f5ec0b0146f6279e0f001d', 'common.yes', 'online.cgformheadlist.column.yes', 'Yes', 'en', '2014-07-02 16:18:50', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:18:49', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e446f5ec0b0146f627cd1f001f', 'common.yes', 'online.cgformheadlist.column.no', 'No', 'en', '2014-07-02 16:19:02', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:19:02', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e446f5ec0b0146f627f2040021', 'common.no', 'online.cgformheadlist.column.yes', '是', 'zh-cn', '2014-07-02 16:19:11', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:19:11', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e446f5ec0b0146f6281f900023', 'common.no', 'online.cgformheadlist.column.no', '否', 'zh-cn', '2014-07-02 16:19:23', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:19:23', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e446f5ec0b0146f62fe8800025', 'single.query', 'online.cgformheadlist.column.singlechoicequery', 'Single Choice Query', 'en', '2014-07-02 16:27:53', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:27:53', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e446f5ec0b0146f6302a9f0027', 'single.query', 'online.cgformheadlist.column.singlechoicequery', '单表查询', 'zh-cn', '2014-07-02 16:28:10', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:28:10', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e446f5ec0b0146f630e67d0029', 'combine.query', 'online.cgformheadlist.column.compquery', '组合查询', 'zh-cn', '2014-07-02 16:28:58', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:28:58', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e446f5ec0b0146f6312721002b', 'combine.query', 'online.cgformheadlist.column.compquery', 'Combined Query', 'en', '2014-07-02 16:29:14', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:29:14', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e446f5ec0b0146f6336700002d', 'common.del', 'online.cgformheadlist.column.del', 'Delete', 'en', '2014-07-02 16:31:42', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:31:42', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e446f5ec0b0146f63390ea002f', 'common.del', 'online.cgformheadlist.column.del', '删除', 'zh-cn', '2014-07-02 16:31:53', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:31:53', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e446f5ec0b0146f633d60e0031', 'common.add', 'online.cgformheadlist.column.add', 'Add', 'en', '2014-07-02 16:32:10', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:32:10', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e446f5ec0b0146f633fa750033', 'common.add', 'online.cgformheadlist.column.add', '添加', 'zh-cn', '2014-07-02 16:32:20', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:32:20', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e446f5ec0b0146f6422c510036', 'common.isnull', 'online.common.column.isnull', 'Is Null', 'en', '2014-07-02 16:47:50', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:47:50', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e446f5ec0b0146f6428fd00038', 'common.isnull', 'online.common.column.isnull', '是否为空', 'zh-cn', '2014-07-02 16:48:15', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:48:15', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e446f5ec0b0146f642e30f003a', 'common.pk', 'online.common.column.primarykey', 'Primary Key', 'en', '2014-07-02 16:48:37', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:48:37', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e446f5ec0b0146f64311fb003c', 'common.pk', 'online.common.column.primarykey', '主键', 'zh-cn', '2014-07-02 16:48:49', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:48:49', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e446f5ec0b0146f6457894003e', 'field.type', 'online.common.column.fieldtype', 'Filed Type', 'en', '2014-07-02 16:51:26', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:51:26', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e446f5ec0b0146f6459cd30040', 'field.type', 'online.common.column.fieldtype', '字段类型', 'zh-cn', '2014-07-02 16:51:35', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 16:51:35', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946eca0a40146eca130810001', 'common.id', 'online.cgformheadlist.column.id', 'Id', 'en', '2014-06-30 19:55:25', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 19:55:25', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946eca0a40146eca155290003', 'common.id', 'online.cgformheadlist.column.id', '编号', 'zh-cn', '2014-06-30 19:55:34', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 19:55:34', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946eca0a40146eca25a6f0005', 'table.type', 'online.cgformheadlist.column.tabletype', '表类型', 'zh-cn', '2014-06-30 19:56:41', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 19:56:41', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946eca0a40146eca28f010007', 'table.type', 'online.cgformheadlist.column.tabletype', 'Table Type', 'en', '2014-06-30 19:56:54', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 19:56:54', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946eca0a40146eca32a340009', 'table.name', 'online.cgformheadlist.column.tablename', 'Table Name', 'en', '2014-06-30 19:57:34', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 19:57:34', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946eca0a40146eca36117000b', 'table.name', 'online.cgformheadlist.column.tablename', '表名', 'zh-cn', '2014-06-30 19:57:48', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 19:57:48', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946eca0a40146eca3ed9d000d', 'table.desc', 'online.cgformheadlist.column.tabledesc', 'Table Desc', 'en', '2014-06-30 19:58:24', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 19:58:24', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946eca0a40146eca41de7000f', 'table.desc', 'online.cgformheadlist.column.tabledesc', '表描述', 'zh-cn', '2014-06-30 19:58:37', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 19:58:37', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946eca0a40146eca464640011', 'common.version', 'online.cgformheadlist.column.version', 'Version', 'en', '2014-06-30 19:58:55', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 19:58:55', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946eca0a40146eca47e280013', 'common.version', 'online.cgformheadlist.column.version', '版本', 'zh-cn', '2014-06-30 19:59:01', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 19:59:01', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946eca0a40146eca4b6bf0015', 'is.tree', 'online.cgformheadlist.column.istree', 'Is Tree', 'en', '2014-06-30 19:59:16', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 19:59:16', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946eca0a40146eca4d8ba0017', 'is.tree', 'online.cgformheadlist.column.istree', '是否树', 'zh-cn', '2014-06-30 19:59:24', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 19:59:24', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946eca0a40146eca510d60019', 'is.page', 'online.cgformheadlist.column.ispage', 'Is Page', 'en', '2014-06-30 19:59:39', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 19:59:39', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946eca0a40146eca537b7001b', 'is.page', 'online.cgformheadlist.column.ispage', '是否分页', 'zh-cn', '2014-06-30 19:59:49', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 19:59:49', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946eca0a40146eca6c3b8001d', 'sync.db', 'online.cgformheadlist.column.syndatabase', 'Sync DB', 'en', '2014-06-30 20:01:30', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:01:30', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946eca0a40146eca7193f001f', 'sync.db', 'online.cgformheadlist.column.syndatabase', '同步数据库', 'zh-cn', '2014-06-30 20:01:52', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:01:52', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946eca0a40146eca8d2f90021', 'common.createby', 'online.common.column.createman', 'Create Man', 'en', '2014-06-30 20:03:45', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:03:45', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946eca0a40146eca8f2860023', 'common.createby', 'online.common.column.createman', '创建人', 'zh-cn', '2014-06-30 20:03:53', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:03:53', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946eca0a40146eca922890025', 'common.createtime', 'online.common.column.createtime', 'Create Time', 'en', '2014-06-30 20:04:05', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:04:05', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946eca0a40146eca983a60027', 'common.updateby', 'online.common.column.updateman', 'Update Man', 'en', '2014-06-30 20:04:30', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:04:30', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946eca0a40146eca9c9db0029', 'common.updateby', 'online.common.column.updateman', '更新人', 'zh-cn', '2014-06-30 20:04:48', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:04:48', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946eca0a40146ecaa03ac002b', 'common.updatetime', 'online.common.column.updatetime', 'Update Time', 'en', '2014-06-30 20:05:03', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:05:03', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946eca0a40146ecaa27bb002d', 'common.updatetime', 'online.common.column.updatetime', '修改时间', 'zh-cn', '2014-06-30 20:05:12', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:05:12', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946eca0a40146ecaa889d002f', 'common.operation', 'online.common.column.opertion', 'Opertion', 'en', '2014-06-30 20:05:37', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:05:37', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946eca0a40146ecaaa71a0031', 'common.operation', 'online.common.column.opertion', '操作', 'zh-cn', '2014-06-30 20:05:45', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:05:45', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946eca0a40146ecab61a50033', 'common.createtime', 'online.common.column.createtime', '创建时间', 'zh-cn', '2014-06-30 20:06:33', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:53:48', '402881e946e70d550146e70fa0680086', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946eca0a40146ecac51520039', 'show.checkbox', 'online.cgformheadlist.column.showcheckbox', 'Show Checkbox', 'en', '2014-06-30 20:07:34', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:07:34', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946eca0a40146ecac8bed003b', 'show.checkbox', 'online.cgformheadlist.column.showcheckbox', '显示复选框', 'zh-cn', '2014-06-30 20:07:49', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:07:49', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946eca0a40146ecacc2fa003d', 'query.module', 'online.cgformheadlist.column.querymodule', 'Query Module', 'en', '2014-06-30 20:08:03', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:08:03', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946eca0a40146ecacf037003f', 'query.module', 'online.cgformheadlist.column.querymodule', '查询模式', 'zh-cn', '2014-06-30 20:08:15', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:08:15', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946eca0a40146ecaea5630041', 'edit.form', 'online.cgformheadlist.column.edittable', 'Edit Table', 'en', '2014-06-30 20:10:07', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:10:07', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946eca0a40146ecaed7730043', 'edit.form', 'online.cgformheadlist.column.edittable', '编辑表单', 'zh-cn', '2014-06-30 20:10:19', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:10:19', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946eca0a40146ecaf39000045', 'create.form', 'online.cgformheadlist.column.creatfrom', 'Create From', 'en', '2014-06-30 20:10:44', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:10:44', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946eca0a40146ecaf63e00047', 'create.form', 'online.cgformheadlist.column.creatfrom', '创建表单', 'zh-cn', '2014-06-30 20:10:55', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:10:55', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946eca0a40146ecb108de0049', 'custom.button', 'online.cgformheadlist.column.custombutton', 'Custom Button', 'en', '2014-06-30 20:12:43', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:12:43', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946eca0a40146ecb18fa6004b', 'custom.button', 'online.cgformheadlist.column.custombutton', '自定义按钮', 'zh-cn', '2014-06-30 20:13:18', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:13:31', '402881e946e70d550146e70fa0680086', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946eca0a40146ecb3bd13004e', 'form.generate', 'online.cgformheadlist.column.generated', 'Generated From', 'en', '2014-06-30 20:15:40', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:15:40', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946eca0a40146ecb3f9df0050', 'form.generate', 'online.cgformheadlist.column.generated', '表单生成', 'zh-cn', '2014-06-30 20:15:56', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:15:56', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946eca0a40146ecb58ed40052', 'form.import', 'online.cgformheadlist.column.formeimport', '表达导入', 'zh-cn', '2014-06-30 20:17:40', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:17:40', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946eca0a40146ecb5a76b0054', 'form.import', 'online.cgformheadlist.column.formeimport', 'From Import', 'en', '2014-06-30 20:17:46', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:17:46', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946eca0a40146ecb72e600056', 'form.export', 'online.cgformheadlist.column.formexport', 'From Export', 'en', '2014-06-30 20:19:26', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:19:26', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946eca0a40146ecb762b50058', 'form.export', 'online.cgformheadlist.column.formexport', '表单导出', 'zh-cn', '2014-06-30 20:19:39', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:40:55', '402881e946e70d550146e70fa0680086', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946eca0a40146ecc71340005a', 'js.enhance', 'online.cgformheadlist.column.jsenhance', 'JsEnhance', 'en', '2014-06-30 20:36:48', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:36:48', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946eca0a40146ecc74476005c', 'js.enhance', 'online.cgformheadlist.column.jsenhance', 'js增强', 'zh-cn', '2014-06-30 20:37:00', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:37:00', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946eca0a40146ecc8231d005e', 'code.generate', 'online.cgformheadlist.column.codegenerated', 'Code Generated', 'en', '2014-06-30 20:37:57', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:37:57', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946eca0a40146ecc893d10060', 'code.generate', 'online.cgformheadlist.column.codegenerated', '代码生成', 'zh-cn', '2014-06-30 20:38:26', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:38:26', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946eca0a40146ecca27d20062', 'sql.enhance', 'online.cgformheadlist.column.sqlenhance', 'SqlEnhance', 'en', '2014-06-30 20:40:09', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:40:09', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946eca0a40146ecca51c60064', 'sql.enhance', 'online.cgformheadlist.column.sqlenhance', 'sql增强', 'zh-cn', '2014-06-30 20:40:20', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:40:20', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946eca0a40146ecd312230068', 'smart.formconfig', 'online.cgformheadlist.column.smartformconfig', 'Smart Form Config', 'en', '2014-06-30 20:49:54', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:49:54', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946eca0a40146ecd3732a006a', 'smart.formconfig', 'online.cgformheadlist.column.smartformconfig', '只能表单配置', 'zh-cn', '2014-06-30 20:50:19', '402881e946e70d550146e70fa0680086', 'admin', '2014-06-30 20:50:19', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946f723300146f728bca20001', 'common.code', 'online.cgexportconfigheadlist.column.code', 'Code', 'en', '2014-07-02 20:59:40', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 20:59:40', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946f723300146f728e6220003', 'common.code', 'online.cgexportconfigheadlist.column.code', '编码', 'zh-cn', '2014-07-02 20:59:51', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 20:59:51', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946f723300146f72920900005', 'common.query', 'online.cgexportconfigheadlist.column.query', 'Query', 'en', '2014-07-02 21:00:06', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 21:00:06', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946f723300146f7293e230007', 'common.query', 'online.cgexportconfigheadlist.column.query', '查询', 'zh-cn', '2014-07-02 21:00:13', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 21:00:13', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946f723300146f7296f670009', 'common.edit', 'online.cgexportconfigheadlist.column.edit', 'Edit', 'en', '2014-07-02 21:00:26', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 21:00:26', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946f723300146f729aaaa000b', 'common.edit', 'online.cgexportconfigheadlist.column.edit', '编辑', 'zh-cn', '2014-07-02 21:00:41', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 21:00:41', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946f723300146f72a0b92000d', 'common.add', 'online.cgexportconfigheadlist.column.add', 'Add', 'en', '2014-07-02 21:01:06', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 21:01:06', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946f723300146f72a4130000f', 'common.add', 'online.cgexportconfigheadlist.column.add', '添加', 'zh-cn', '2014-07-02 21:01:20', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 21:01:20', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946f723300146f72a793e0011', 'common.del', 'online.cgexportconfigheadlist.column.del', 'Delete', 'en', '2014-07-02 21:01:34', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 21:01:34', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946f723300146f72ab0c30013', 'common.del', 'online.cgexportconfigheadlist.column.del', '删除', 'zh-cn', '2014-07-02 21:01:48', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 21:01:48', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946f723300146f72b42b40015', 'common.batchdel', 'online.cgexportconfigheadlist.column.bacthdel', 'Batch Delete', 'en', '2014-07-02 21:02:25', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 21:02:25', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946f723300146f72b9a000017', 'common.batchdel', 'online.cgexportconfigheadlist.column.bacthdel', '批量删除', 'zh-cn', '2014-07-02 21:02:48', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 21:02:48', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946f723300146f72c13e30019', 'common.operation', 'online.cgexportconfigheadlist.column.operation', 'Operation', 'en', '2014-07-02 21:03:19', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 21:03:19', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946f723300146f72c30e6001b', 'common.operation', 'online.cgexportconfigheadlist.column.operation', '操作', 'zh-cn', '2014-07-02 21:03:26', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 21:03:26', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946f723300146f72c86d0001d', 'common.desc', 'online.cgexportconfigheadlist.column.desc', 'Desc', 'en', '2014-07-02 21:03:48', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 21:03:48', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946f723300146f72caaba001f', 'common.desc', 'online.cgexportconfigheadlist.column.desc', '描述', 'zh-cn', '2014-07-02 21:03:58', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 21:03:58', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946f723300146f72ce5260021', 'query.sql', 'online.cgexportconfigheadlist.column.querysql', 'Query Sql', 'en', '2014-07-02 21:04:13', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 21:04:13', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946f723300146f72d1b480023', 'query.sql', 'online.cgexportconfigheadlist.column.querysql', '查询sql', 'zh-cn', '2014-07-02 21:04:26', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 21:04:26', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946f723300146f72d54c60025', 'common.name', 'online.cgexportconfigheadlist.column.name', 'Name', 'en', '2014-07-02 21:04:41', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 21:04:41', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946f723300146f72d72840027', 'common.name', 'online.cgexportconfigheadlist.column.name', '名称', 'zh-cn', '2014-07-02 21:04:49', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 21:04:49', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946f723300146f72e486c0029', 'dynamic.tablehead', 'online.cgexportconfigheadlist.column.dynamictable', 'Dynamic Table', 'en', '2014-07-02 21:05:44', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 21:05:44', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881e946f723300146f72e7bda002b', 'dynamic.tablehead', 'online.cgexportconfigheadlist.column.dynamictable', '动态表头', 'zh-cn', '2014-07-02 21:05:57', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-02 21:05:57', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881ea4706d22b014706d66fca0001', 'common.code', 'online.cgexportconfigheadlis.column.id', 'Id', 'en', '2014-07-05 22:03:42', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:03:42', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881ea4706d22b014706d80e680003', 'common.code', 'online.cgexportconfigheadlis.column.id', '编号', 'zh-cn', '2014-07-05 22:05:28', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:05:28', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881ea4706d22b014706d8cc810005', 'common.name', 'online.cgexportconfigheadlis.column.name', 'Name', 'en', '2014-07-05 22:06:17', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:06:17', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881ea4706d22b014706d9eb560007', 'common.name', 'online.cgexportconfigheadlis.column.name', '名称', 'zh-cn', '2014-07-05 22:07:30', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:07:30', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881ea4706d22b014706da32a10009', 'common.order', 'online.cgexportconfigheadlis.column.taxis', 'Order', 'en', '2014-07-05 22:07:48', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:07:48', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881ea4706d22b014706da55fa000b', 'common.order', 'online.cgexportconfigheadlis.column.taxis', '排序', 'zh-cn', '2014-07-05 22:07:57', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:07:57', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881ea4706d22b014706daa606000d', 'common.text', 'online.cgexportconfigheadlis.column.text', 'Text', 'en', '2014-07-05 22:08:18', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:08:18', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881ea4706d22b014706dadb74000f', 'common.text', 'online.cgexportconfigheadlis.column.text', '文本框', 'zh-cn', '2014-07-05 22:08:32', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:08:32', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881ea4706d22b014706db1a6f0011', 'common.type', 'online.cgexportconfigheadlis.column.type', 'Type', 'en', '2014-07-05 22:08:48', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:08:48', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881ea4706d22b014706db389d0013', 'common.type', 'online.cgexportconfigheadlis.column.type', '类型', 'zh-cn', '2014-07-05 22:08:55', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:08:55', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881ea4706d22b014706db76390015', 'common.isshow', 'online.cgexportconfigheadlis.column.isshow', 'Is Show', 'en', '2014-07-05 22:09:11', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:09:11', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881ea4706d22b014706db99420017', 'common.isshow', 'online.cgexportconfigheadlis.column.isshow', '是否显示', 'zh-cn', '2014-07-05 22:09:20', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:09:20', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881ea4706d22b014706dbdb330019', 'common.href', 'online.cgexportconfigheadlis.column.href', 'Href', 'en', '2014-07-05 22:09:37', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:09:37', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881ea4706d22b014706dc0bfe001b', 'common.href', 'online.cgexportconfigheadlis.column.href', '字段href', 'zh-cn', '2014-07-05 22:09:50', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:09:50', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881ea4706d22b014706dc5fc0001d', 'common.querymodule', 'online.cgexportconfigheadlis.column.querymodule', 'Query Module', 'en', '2014-07-05 22:10:11', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:10:11', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881ea4706d22b014706dc87df001f', 'common.querymodule', 'online.cgexportconfigheadlis.column.querymodule', '查询模式', 'zh-cn', '2014-07-05 22:10:21', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:10:21', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881ea4706d22b014706dd524d0021', 'dict.code', 'online.cgexportconfigheadlis.column.datacode', '字典Code', 'zh-cn', '2014-07-05 22:11:13', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:11:13', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881ea4706d22b014706dd8a300023', 'dict.code', 'online.cgexportconfigheadlis.column.datacode', 'Dict Code', 'en', '2014-07-05 22:11:27', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:11:27', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881ea4706d22b014706ddc7570025', 'common.isquery', 'online.cgexportconfigheadlis.column.isquery', 'Is Query', 'en', '2014-07-05 22:11:43', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:11:43', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881ea4706d22b014706ddec9e0027', 'common.isquery', 'online.cgexportconfigheadlis.column.isquery', '是否查询', 'zh-cn', '2014-07-05 22:11:53', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:11:53', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881ea4706d22b014706e230b80029', 'common.texttype', 'online.cgexportconfigheadlis.column.cloumntype', 'Column Type', 'en', '2014-07-05 22:16:32', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:16:32', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881ea4706d22b014706e25a9f002b', 'common.texttype', 'online.cgexportconfigheadlis.column.cloumntype', '文本类型', 'zh-cn', '2014-07-05 22:16:43', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:16:43', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881ea4706d22b014706e368c9002d', 'common.hide', 'online.cgexportconfigheadlis.column.hide', 'Hideen', 'en', '2014-07-05 22:17:52', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:17:52', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881ea4706d22b014706e3b1e2002f', 'common.hide', 'online.cgexportconfigheadlis.column.hide', '隐藏', 'zh-cn', '2014-07-05 22:18:11', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:18:11', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881ea4706d22b014706e3fe800031', 'common.show', 'online.cgexportconfigheadlis.column.show', 'Show', 'en', '2014-07-05 22:18:30', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:18:30', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881ea4706d22b014706e423e40033', 'common.show', 'online.cgexportconfigheadlis.column.show', '显示', 'zh-cn', '2014-07-05 22:18:40', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:18:40', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881ea4706d22b014706e844cb0035', 'query.sql', 'online.cgexportconfigheadlis.column.querysql', 'Query Sql', 'en', '2014-07-05 22:23:11', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:23:11', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881ea4706d22b014706e86cc30037', 'query.sql', 'online.cgexportconfigheadlis.column.querysql', '查询sql', 'zh-cn', '2014-07-05 22:23:21', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:23:21', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881ea4706d22b014706e96d230039', 'common.desc', 'online.cgexportconfigheadlis.column.desc', 'Desc', 'en', '2014-07-05 22:24:26', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:24:26', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881ea4706d22b014706e98ebf003b', 'common.desc', 'online.cgexportconfigheadlis.column.desc', '描述', 'zh-cn', '2014-07-05 22:24:35', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:24:35', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881ea4706d22b014706eba47c003e', 'dynamic.reportconfigdetail', 'online.cgexportconfigheadlis.column.dynadetail', 'Dyna Report Detail', 'en', '2014-07-05 22:26:52', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:29:53', '402881e946e70d550146e70fa0680086', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881ea4706d22b014706ebe1cd0040', 'dynamic.reportconfigdetail', 'online.cgexportconfigheadlis.column.dynadetail', '动态报表配置明细', 'zh-cn', '2014-07-05 22:27:07', '402881e946e70d550146e70fa0680086', 'admin', '2014-07-05 22:30:02', '402881e946e70d550146e70fa0680086', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe92601470fefafa70001', 'dict.manage', 'sysmanage.typegrouplist.column.typegridtree', 'Data Dictionary', 'en', '2014-07-07 16:27:52', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe92601470fefea200003', 'dict.manage', 'sysmanage.typegrouplist.column.typegridtree', '数据字典管理', 'zh-cn', '2014-07-07 16:28:07', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe92601470ff032b80005', 'common.code', 'sysmanage.typegrouplist.column.id', 'Id', 'en', '2014-07-07 16:28:26', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe92601470ff093390007', 'common.code', 'sysmanage.typegrouplist.column.id', '编号', 'zh-cn', '2014-07-07 16:28:50', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe92601470ff21ddd0009', 'dict.name', 'sysmanage.typegrouplist.column.typename', 'Dict Name', 'en', '2014-07-07 16:30:31', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe92601470ff24cb8000b', 'dict.name', 'sysmanage.typegrouplist.column.typename', '字典名称', 'zh-cn', '2014-07-07 16:30:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe92601470ff28095000d', 'dict.code', 'sysmanage.typegrouplist.column.code', 'Dict Code', 'en', '2014-07-07 16:30:57', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe92601470ff2b702000f', 'dict.code', 'sysmanage.typegrouplist.column.code', '字典编码', 'zh-cn', '2014-07-07 16:31:11', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe92601470ff3864b0011', 'common.operation', 'sysmanage.typegrouplist.column.opertion', 'Opertion', 'en', '2014-07-07 16:32:04', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe92601470ff3a62c0013', 'common.operation', 'sysmanage.typegrouplist.column.opertion', '操作', 'zh-cn', '2014-07-07 16:32:12', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe92601470ff3fe230015', 'common.del', 'sysmanage.typegrouplist.column.delete', 'Delete', 'en', '2014-07-07 16:32:34', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe92601470ff419240017', 'common.del', 'sysmanage.typegrouplist.column.delete', '删除', 'zh-cn', '2014-07-07 16:32:41', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe92601470ff4e2830019', 'common.add.param', 'sysmanage.typegrouplist.column.classifyadd', 'Classify Add', 'en', '2014-07-07 16:33:33', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe92601470ff51cc9001b', 'common.add.param', 'sysmanage.typegrouplist.column.classifyadd', '字典分类录入', 'zh-cn', '2014-07-07 16:33:48', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe92601470ff5b67b001d', 'common.add.param', 'sysmanage.typegrouplist.column.valueadd', 'Value Add', 'en', '2014-07-07 16:34:27', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe92601470ff5f1fd001f', 'common.add.param', 'sysmanage.typegrouplist.column.valueadd', '字典值录入', 'zh-cn', '2014-07-07 16:34:42', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe92601470ff61df70021', 'common.edit', 'sysmanage.typegrouplist.column.edit', 'Edit', 'en', '2014-07-07 16:34:54', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe92601470ff63e680023', 'common.edit', 'sysmanage.typegrouplist.column.edit', '编辑', 'zh-cn', '2014-07-07 16:35:02', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe92601470ff925da0025', 'dict.informationtype', 'sysmanage.typegrouplist.column.typegrouptitle', 'Data Dictionary Group Info', 'en', '2014-07-07 16:38:12', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe92601470ff950100027', 'dict.informationtype', 'sysmanage.typegrouplist.column.typegrouptitle', '字典类型信息', 'zh-cn', '2014-07-07 16:38:23', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:43:03', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe92601470ffb275d0029', 'common.code', 'sysmanage.typegrouplist.column.typegroupcode', 'Type Group Code', 'en', '2014-07-07 16:40:24', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe92601470ffbf441002b', 'common.name', 'sysmanage.typegrouplist.column.typegroupname', 'Type Group Name', 'en', '2014-07-07 16:41:16', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe92601470ffc861a002d', 'common.code', 'sysmanage.typegrouplist.column.typegroupcode', '编码', 'zh-cn', '2014-07-07 16:41:53', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe92601470ffcbc57002f', 'common.name', 'sysmanage.typegrouplist.column.typegroupname', '名称', 'zh-cn', '2014-07-07 16:42:07', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe92601471005919a0037', 'common.rolelist', 'sysmanage.rolelist.column.rolelist', 'Role List', 'en', '2014-07-07 16:51:46', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe92601471005f5ac0039', 'common.rolelist', 'sysmanage.rolelist.column.rolelist', '角色列表', 'zh-cn', '2014-07-07 16:52:12', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe926014710063dfd003b', 'common.code', 'sysmanage.rolelist.column.id', 'Id', 'en', '2014-07-07 16:52:30', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe9260147100661fc003d', 'common.code', 'sysmanage.rolelist.column.id', '编号', 'zh-cn', '2014-07-07 16:52:40', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe92601471006c0bf003f', 'common.rolecode', 'sysmanage.rolelist.column.rolecode', 'Role Code', 'en', '2014-07-07 16:53:04', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe92601471006e44a0041', 'common.rolecode', 'sysmanage.rolelist.column.rolecode', '角色编码', 'zh-cn', '2014-07-07 16:53:13', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe9260147100713840043', 'common.rolename', 'sysmanage.rolelist.column.rolename', 'Role Name', 'en', '2014-07-07 16:53:25', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe926014710073e820045', 'common.rolename', 'sysmanage.rolelist.column.rolename', '角色名称', 'zh-cn', '2014-07-07 16:53:36', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe92601471007e7530047', 'common.operation', 'sysmanage.rolelist.column.opertion', 'Opertion', 'en', '2014-07-07 16:54:19', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe9260147100807f10049', 'common.operation', 'sysmanage.rolelist.column.opertion', '操作', 'zh-cn', '2014-07-07 16:54:28', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe926014710086559004b', 'common.del', 'sysmanage.rolelist.column.delete', 'Delete', 'en', '2014-07-07 16:54:51', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe926014710089274004d', 'common.del', 'sysmanage.rolelist.column.delete', '删除', 'zh-cn', '2014-07-07 16:55:03', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe92601471008f82a004f', 'common.add.param', 'sysmanage.rolelist.column.roleadd', 'Role Add', 'en', '2014-07-07 16:55:29', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe926014710091b9f0051', 'common.add.param', 'sysmanage.rolelist.column.roleadd', '角色录入', 'zh-cn', '2014-07-07 16:55:38', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe926014710095eb50053', 'common.edit.param', 'sysmanage.rolelist.column.roleedit', 'Role Edit', 'en', '2014-07-07 16:55:55', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe9260147100980ee0055', 'common.edit.param', 'sysmanage.rolelist.column.roleedit', '角色编辑', 'zh-cn', '2014-07-07 16:56:04', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe9260147100affff0057', 'common.roleinfo', 'sysmanage.rolelist.column.roletitle', 'Role Info', 'en', '2014-07-07 16:57:42', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe9260147100b20eb0059', 'common.roleinfo', 'sysmanage.rolelist.column.roletitle', '角色信息', 'zh-cn', '2014-07-07 16:57:51', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe9260147100bf680005b', 'permission.set', 'sysmanage.rolelist.column.rolepermission', 'Permission', 'en', '2014-07-07 16:58:45', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe9260147100c2c96005d', 'permission.set', 'sysmanage.rolelist.column.rolepermission', '权限设置', 'zh-cn', '2014-07-07 16:58:59', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe9260147100e5051005f', 'permission.manage', 'sysmanage.functionlist.column.functionlist', 'Permission Manage', 'en', '2014-07-07 17:01:19', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe9260147100e8a360061', 'permission.manage', 'sysmanage.functionlist.column.functionlist', '权限管理', 'zh-cn', '2014-07-07 17:01:34', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe9260147100ecb0b0063', 'common.code', 'sysmanage.functionlist.column.id', 'Id', 'en', '2014-07-07 17:01:51', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe9260147100efc920065', 'common.code', 'sysmanage.functionlist.column.id', '编号', 'zh-cn', '2014-07-07 17:02:03', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe9260147100f73140067', 'permission.name', 'sysmanage.functionlist.column.functionname', 'Permission Name', 'en', '2014-07-07 17:02:34', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe9260147100fa9270069', 'permission.name', 'sysmanage.functionlist.column.functionname', '权限名称', 'zh-cn', '2014-07-07 17:02:48', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe926014710102af3006b', 'common.operation', 'sysmanage.functionlist.column.opertion', 'Opertion', 'en', '2014-07-07 17:03:21', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe926014710104bfd006d', 'common.operation', 'sysmanage.functionlist.column.opertion', '操作', 'zh-cn', '2014-07-07 17:03:29', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe9260147101199f1006f', 'permission.collection', 'sysmanage.functionlist.column.permissionlist', 'Permission Collection', 'en', '2014-07-07 17:04:55', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402881fa470fe92601471011bb380071', 'permission.collection', 'sysmanage.functionlist.column.permissionlist', '权限集合', 'zh-cn', '2014-07-07 17:05:03', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-07 16:42:54', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402884f146cc37ab0146cc3fc7350002', 'common.changerefresh', 'common.msg.changerefresh', '样式修改成功，请刷新页面', 'zh-cn', '2014-06-24 13:01:10', 'admin', '管理员', '2014-06-24 13:01:10', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402884f146cc37ab0146cc4029a60004', 'common.changerefresh', 'common.msg.changerefresh', 'Style change success, please refresh', 'en', '2014-06-24 13:01:35', 'admin', '管理员', '2014-06-24 13:01:35', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402884f146cc37ab0146cc4541cb0006', 'common.loginagain', 'common.msg.pleaseloginagain', '请登录后再操作', 'zh-cn', '2014-06-24 13:07:09', 'admin', '管理员', '2014-06-24 13:07:09', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402884f146cc37ab0146cc45c1270008', 'common.loginagain', 'common.msg.pleaseloginagain', 'Please login again', 'en', '2014-06-24 13:07:41', 'admin', '管理员', '2014-06-24 13:07:41', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402884f146cc37ab0146cc4de4da000a', 'common.userinfo', 'common.page.layout.userinfo', '用户信息', 'zh-cn', '2014-06-24 13:16:35', 'admin', '管理员', '2014-06-24 13:16:35', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402884f146cc37ab0146cc4e7b25000c', 'common.userinfo', 'common.page.layout.userinfo', 'My Profile', 'en', '2014-06-24 13:17:13', 'admin', '管理员', '2014-06-24 13:17:13', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402884f146cc37ab0146cc523141000e', 'common.username', 'sysmanage.profile.username', '用户名', 'zh-cn', '2014-06-24 13:21:17', 'admin', '管理员', '2014-06-24 13:21:17', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402884f146cc37ab0146cc5289f40010', 'common.username', 'sysmanage.profile.username', 'User Name', 'en', '2014-06-24 13:21:39', 'admin', '管理员', '2014-06-24 13:21:39', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402884f146cc37ab0146cc55cac30012', 'common.surname', 'sysmanage.profile.surname', '姓名', 'zh-cn', '2014-06-24 13:25:13', 'admin', '管理员', '2014-06-24 13:25:13', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('402884f146cc37ab0146cc55f21b0014', 'common.surname', 'sysmanage.profile.surname', 'Name', 'en', '2014-06-24 13:25:23', 'admin', '管理员', '2014-06-24 13:25:23', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fbfa46b9f9d80146ba02ba6e0001', 'common.add', 'common.page.button.add', '录入', 'zh-cn', '2014-06-21 00:01:19', 'admin', '管理员', '2014-06-21 00:01:19', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fbfa46b9f9d80146ba02e2b30003', 'common.add', 'common.page.button.add', 'Add', 'en', '2014-06-21 00:01:29', 'admin', '管理员', '2014-06-21 00:01:29', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fbfa46b9f9d80146ba0310270005', 'common.edit', 'common.page.button.edit', '编辑', 'zh-cn', '2014-06-21 00:01:41', 'admin', '管理员', '2014-06-21 00:01:41', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fbfa46b9f9d80146ba033b5f0007', 'common.edit', 'common.page.button.edit', 'Edit', 'en', '2014-06-21 00:01:52', 'admin', '管理员', '2014-06-21 00:01:52', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fbfa46b9f9d80146ba03a53e0009', 'common.view', 'common.page.button.view', '查看', 'zh-cn', '2014-06-21 00:02:19', 'admin', '管理员', '2014-06-21 00:02:19', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fbfa46b9f9d80146ba03c8dc000b', 'common.view', 'common.page.button.view', 'View', 'en', '2014-06-21 00:02:28', 'admin', '管理员', '2014-06-21 00:02:28', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fbfa46b9f9d80146ba0404d5000d', 'common.del', 'common.page.button.del', '删除', 'zh-cn', '2014-06-21 00:02:44', 'admin', '管理员', '2014-06-21 00:02:44', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fbfa46b9f9d80146ba042785000f', 'common.del', 'common.page.button.del', 'Delete', 'en', '2014-06-21 00:02:52', 'admin', '管理员', '2014-06-21 00:02:52', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fbfa46ba21220146ba295667000e', 'common.operation', 'common.page.column.opt', '操作', 'zh-cn', '2014-06-21 00:43:29', 'admin', '管理员', '2014-06-21 00:43:29', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fbfa46ba21220146ba29df190010', 'common.operation', 'common.page.column.opt', 'Operation', 'en', '2014-06-21 00:44:04', 'admin', '管理员', '2014-06-21 00:44:04', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fbfa46ba21220146ba2ae9180012', 'common.code', 'common.page.column.code', '编号', 'zh-cn', '2014-06-21 00:45:12', 'admin', '管理员', '2014-06-21 00:45:12', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fbfa46ba21220146ba2b0fe20014', 'common.code', 'common.page.column.code', 'Code', 'en', '2014-06-21 00:45:22', 'admin', '管理员', '2014-06-21 00:45:22', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc4d46c481da0146c4a15aa60003', 'common.calendar', 'common.page.layout.calendar', '日历', 'zh-cn', '2014-06-23 01:30:47', 'admin', '管理员', '2014-06-23 01:30:47', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc4d46c481da0146c4a190580005', 'common.calendar', 'common.page.layout.calendar', 'Calendar', 'en', '2014-06-23 01:31:01', 'admin', '管理员', '2014-06-23 01:31:01', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc4d46c481da0146c4a2dc220007', 'common.map', 'common.page.layout.map', '地图', 'zh-cn', '2014-06-23 01:32:26', 'admin', '管理员', '2014-06-23 01:32:26', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc4d46c481da0146c4a2f24e0009', 'common.map', 'common.page.layout.map', 'Map', 'en', '2014-06-23 01:32:31', 'admin', '管理员', '2014-06-23 01:32:31', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc4d46c481da0146c4aff7ea000b', 'common.pleaseselect', 'common.page.pleaseselect', '---请选择---', 'zh-cn', '2014-06-23 01:46:45', 'admin', '管理员', '2014-06-23 01:46:45', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc4d46c481da0146c4b03310000d', 'common.pleaseselect', 'common.page.pleaseselect', 'Please Select', 'en', '2014-06-23 01:47:00', 'admin', '管理员', '2014-06-23 02:01:20', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc4d46c481da0146c4b8af79000f', 'common.pleaseinputkeyword', 'common.page.pleaseinputkeyword', '请输入关键字', 'zh-cn', '2014-06-23 01:56:16', 'admin', '管理员', '2014-06-23 01:56:16', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc4d46c481da0146c4b8f7aa0011', 'common.pleaseinputkeyword', 'common.page.pleaseinputkeyword', 'Keyword', 'en', '2014-06-23 01:56:34', 'admin', '管理员', '2014-06-23 01:56:34', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc4d46c481da0146c4ba979a0013', 'common.pleaseinputquerykeyword', 'common.page.pleaseinputquerykeyword', '请输入查询关键字', 'zh-cn', '2014-06-23 01:58:21', 'admin', '管理员', '2014-06-23 01:58:21', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc4d46c481da0146c4bade820015', 'common.pleaseinputquerykeyword', 'common.page.pleaseinputquerykeyword', 'Query keyword', 'en', '2014-06-23 01:58:39', 'admin', '管理员', '2014-06-23 01:58:39', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc4d46c481da0146c4bee05c0018', 'common.query', 'common.page.button.query', '查询', 'zh-cn', '2014-06-23 02:03:02', 'admin', '管理员', '2014-06-23 02:03:02', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc4d46c481da0146c4bf0575001a', 'common.query', 'common.page.button.query', 'Query', 'en', '2014-06-23 02:03:11', 'admin', '管理员', '2014-06-23 02:03:11', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc4d46c481da0146c4bf4239001c', 'common.reset', 'common.page.button.reset', '重置', 'zh-cn', '2014-06-23 02:03:27', 'admin', '管理员', '2014-06-23 02:03:27', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc4d46c481da0146c4bf638a001e', 'common.reset', 'common.page.button.reset', 'Reset', 'en', '2014-06-23 02:03:35', 'admin', '管理员', '2014-06-23 02:03:35', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c18cdc0146c19fa9370004', 'common.navegation', 'common.page.layout.navmenu', '导航菜单', 'zh-cn', '2014-06-22 11:30:04', 'admin', '管理员', '2014-06-22 11:30:04', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c18cdc0146c1a0a4d50006', 'common.navegation', 'common.page.layout.navmenu', 'Navegation', 'en', '2014-06-22 11:31:09', 'admin', '管理员', '2014-06-22 11:31:09', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c18cdc0146c1a1b46e0008', 'common.control.panel', 'common.page.layout.controlpanel', 'Control Panel', 'en', '2014-06-22 11:32:18', 'admin', '管理员', '2014-06-22 11:32:18', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c18cdc0146c1a1e59b000a', 'common.control.panel', 'common.page.layout.controlpanel', '控制面板', 'zh-cn', '2014-06-22 11:32:31', 'admin', '管理员', '2014-06-22 11:32:31', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c18cdc0146c1a2d668000c', 'common.profile', 'common.page.layout.myinfo', '个人信息', 'zh-cn', '2014-06-22 11:33:32', 'admin', '管理员', '2014-06-22 11:33:32', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c18cdc0146c1a31e02000e', 'common.profile', 'common.page.layout.myinfo', 'Profile', 'en', '2014-06-22 11:33:51', 'admin', '管理员', '2014-06-22 11:33:51', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c18cdc0146c1a386000010', 'common.my.style', 'common.page.layout.mystyle', '首页风格', 'zh-cn', '2014-06-22 11:34:17', 'admin', '管理员', '2014-06-22 11:34:17', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c18cdc0146c1a3bccd0012', 'common.my.style', 'common.page.layout.mystyle', 'Style', 'en', '2014-06-22 11:34:31', 'admin', '管理员', '2014-06-22 11:34:31', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c18cdc0146c1a412670014', 'common.logout', 'common.page.layout.logout', '注销', 'zh-cn', '2014-06-22 11:34:53', 'admin', '管理员', '2014-06-22 11:36:06', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c18cdc0146c1a4f99a0016', 'common.logout', 'common.page.layout.logout', 'Logout', 'en', '2014-06-22 11:35:52', 'admin', '管理员', '2014-06-22 11:35:52', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c18cdc0146c1a5edff0019', 'common.exit', 'common.page.layout.exit', '退出', 'zh-cn', '2014-06-22 11:36:55', 'admin', '管理员', '2014-06-22 11:36:55', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c18cdc0146c1a60dff001b', 'common.exit', 'common.page.layout.exit', 'Exit', 'en', '2014-06-22 11:37:03', 'admin', '管理员', '2014-06-22 11:37:03', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c18cdc0146c1a85f8e001d', 'common.user', 'common.page.layout.user', 'User', 'en', '2014-06-22 11:39:35', 'admin', '管理员', '2014-06-22 11:39:35', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c18cdc0146c1a88d9b001f', 'common.user', 'common.page.layout.user', '当前用户', 'zh-cn', '2014-06-22 11:39:47', 'admin', '管理员', '2014-06-22 11:39:47', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c18cdc0146c1a90d250021', 'common.role', 'common.page.layout.position', 'Position', 'en', '2014-06-22 11:40:20', 'admin', '管理员', '2014-06-22 11:40:20', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c18cdc0146c1a92fd40023', 'common.role', 'common.page.layout.position', '职务', 'zh-cn', '2014-06-22 11:40:29', 'admin', '管理员', '2014-06-22 11:40:29', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c18cdc0146c1aae98c0025', 'common.platform', 'common.page.layout.dispalyplatform', 'JEECG 演示系统', 'zh-cn', '2014-06-22 11:42:22', 'admin', '管理员', '2014-06-22 11:42:22', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c18cdc0146c1ab90ac0027', 'common.platform', 'common.page.layout.dispalyplatform', 'JEECG Platform', 'en', '2014-06-22 11:43:04', 'admin', '管理员', '2014-06-22 11:43:04', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c1aec50146c1e09ce00017', 'sysmanage.lang.maintain', 'sysmanage.mutilang.mutilang_maintain', '语言信息维护', 'zh-cn', '2014-06-22 12:41:01', 'admin', '管理员', '2014-06-22 12:41:01', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c1aec50146c1e0f0780019', 'sysmanage.lang.maintain', 'sysmanage.mutilang.mutilang_maintain', 'Language Maintain', 'en', '2014-06-22 12:41:22', 'admin', '管理员', '2014-06-23 13:37:39', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c1aec50146c1ea9872002b', 'online.develop', 'common.page.menu.onlinedev', 'Online Develop', 'en', '2014-06-22 12:51:55', 'admin', '管理员', '2014-06-22 12:51:55', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c1aec50146c1eaf4d6002d', 'online.develop', 'common.page.menu.onlinedev', 'Online 开发', 'zh-cn', '2014-06-22 12:52:19', 'admin', '管理员', '2014-06-22 12:52:19', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c1aec50146c1eb749c002f', 'system.manage', 'common.page.menu.sysmanage', '系统管理', 'zh-cn', '2014-06-22 12:52:51', 'admin', '管理员', '2014-06-22 12:52:51', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c1aec50146c1ebac710031', 'system.manage', 'common.page.menu.sysmanage', 'System Manage', 'en', '2014-06-22 12:53:06', 'admin', '管理员', '2014-06-22 12:53:06', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c1aec50146c1ec37a10033', 'project.manage', 'common.page.menu.prjmanage', '项目管理', 'zh-cn', '2014-06-22 12:53:41', 'admin', '管理员', '2014-06-22 12:53:41', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c1aec50146c1ec67a40035', 'project.manage', 'common.page.menu.prjmanage', 'Project Manage', 'en', '2014-06-22 12:53:54', 'admin', '管理员', '2014-06-22 12:53:54', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c1aec50146c1ed9e6e0037', 'general.demo', 'common.page.menu.demo', '常用示例', 'zh-cn', '2014-06-22 12:55:13', 'admin', '管理员', '2014-06-22 12:55:13', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c1aec50146c1edcc6d0039', 'general.demo', 'common.page.menu.demo', 'Demo', 'en', '2014-06-22 12:55:25', 'admin', '管理员', '2014-06-22 12:55:25', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c1aec50146c1ee629d003b', 'system.monitor', 'common.page.menu.sysmonitor', '系统监控', 'zh-cn', '2014-06-22 12:56:03', 'admin', '管理员', '2014-06-22 12:56:03', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c1aec50146c1eebe6c003d', 'system.monitor', 'common.page.menu.sysmonitor', 'System Monitor', 'en', '2014-06-22 12:56:27', 'admin', '管理员', '2014-06-22 12:56:27', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c1aec50146c1ef4206003f', 'workflow.manage', 'common.page.menu.wfmanag', '工作流管理', 'zh-cn', '2014-06-22 12:57:01', 'admin', '管理员', '2014-06-22 12:57:01', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c1aec50146c1ef78d20041', 'workflow.manage', 'common.page.menu.wfmanag', 'Workflow Manage', 'en', '2014-06-22 12:57:15', 'admin', '管理员', '2014-06-22 12:57:15', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c1aec50146c1fe512f0045', 'common.change.password', 'common.page.layout.changepassword', '修改密码', 'zh-cn', '2014-06-22 13:13:28', 'admin', '管理员', '2014-06-22 13:13:28', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c1aec50146c1fe90260047', 'common.change.password', 'common.page.layout.changepassword', 'Change Password', 'en', '2014-06-22 13:13:44', 'admin', '管理员', '2014-06-22 13:13:44', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c1aec50146c202c92c0049', 'common.copyright', 'common.page.foot.copyright', 'JEECG 版权所有', 'zh-cn', '2014-06-22 13:18:20', 'admin', '管理员', '2014-06-23 11:01:46', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c1aec50146c203cd8d004b', 'common.copyright', 'common.page.foot.copyright', 'JEEECT Copyright Reserved', 'en', '2014-06-22 13:19:27', 'admin', '管理员', '2014-06-22 13:19:27', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c1aec50146c20508bf004d', 'common.refresh', 'common.page.button.refresh', '刷新', 'zh-cn', '2014-06-22 13:20:48', 'admin', '管理员', '2014-06-22 13:20:48', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c1aec50146c2053659004f', 'common.refresh', 'common.page.button.refresh', 'Refresh', 'en', '2014-06-22 13:20:59', 'admin', '管理员', '2014-06-22 13:20:59', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c1aec50146c2057c580051', 'common.close', 'common.page.close', 'Close', 'en', '2014-06-22 13:21:17', 'admin', '管理员', '2014-06-22 13:21:17', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c1aec50146c205aff20053', 'common.close', 'common.page.close', '关闭', 'zh-cn', '2014-06-22 13:21:31', 'admin', '管理员', '2014-06-22 13:21:31', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c1aec50146c205f4be0055', 'common.closeall', 'common.page.allclose', '全部关闭', 'zh-cn', '2014-06-22 13:21:48', 'admin', '管理员', '2014-06-22 13:21:48', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c1aec50146c20631f70057', 'common.closeall', 'common.page.allclose', 'Close All', 'en', '2014-06-22 13:22:04', 'admin', '管理员', '2014-06-22 13:22:04', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c1aec50146c2070b8a0059', 'common.closeallbutthis', 'common.page.closeallbutthis', 'Close all but this', 'en', '2014-06-22 13:23:00', 'admin', '管理员', '2014-06-22 13:23:00', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c1aec50146c2074657005b', 'common.closeallbutthis', 'common.page.closeallbutthis', '除此之外全部关闭', 'zh-cn', '2014-06-22 13:23:15', 'admin', '管理员', '2014-06-22 13:23:15', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c1aec50146c207f0bc005d', 'common.closeallright', 'common.page.closeallright', '当前页右侧全部关闭', 'zh-cn', '2014-06-22 13:23:58', 'admin', '管理员', '2014-06-22 13:23:58', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c1aec50146c2085b89005f', 'common.closeallright', 'common.page.closeallright', 'Close all on right', 'en', '2014-06-22 13:24:26', 'admin', '管理员', '2014-06-22 13:24:26', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c1aec50146c208cabc0061', 'common.closeallleft', 'common.page.closeallleft', '当前页左侧全部关闭', 'zh-cn', '2014-06-22 13:24:54', 'admin', '管理员', '2014-06-22 13:24:54', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c1aec50146c2094dee0063', 'common.closeallleft', 'common.page.closeallleft', 'Close all on left', 'en', '2014-06-22 13:25:28', 'admin', '管理员', '2014-06-22 13:25:28', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c1aec50146c2325e890069', 'common.assisttools', 'common.page.layout.tools', '辅助工具', 'zh-cn', '2014-06-22 14:10:19', 'admin', '管理员', '2014-06-22 14:10:19', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c1aec50146c2330cf3006b', 'common.assisttools', 'common.page.layout.tools', 'tool', 'en', '2014-06-22 14:11:04', 'admin', '管理员', '2014-06-22 14:11:04', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c1aec50146c238a6eb006d', 'common.onlineuser', 'common.page.layout.onlineuser', '用户在线列表', 'zh-cn', '2014-06-22 14:17:11', 'admin', '管理员', '2014-06-22 14:17:11', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fc5346c1aec50146c238d41e006f', 'common.onlineuser', 'common.page.layout.onlineuser', 'Online User', 'en', '2014-06-22 14:17:22', 'admin', '管理员', '2014-06-22 14:17:22', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471f9575f10001', 'language.manage', 'sysmanage.mutilang.langmanage', '语言管理', 'zh-cn', '2014-07-10 17:23:14', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 17:23:14', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471f95fdd20003', 'language.manage', 'sysmanage.mutilang.langmanage', 'Lang Manage', 'en', '2014-07-10 17:23:49', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 17:23:49', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471fc79e0f000c', 'common.remove', 'remove', '移除', 'zh-cn', '2014-07-10 18:18:01', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:18:01', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471fc7ec24000e', 'common.remove', 'remove', 'Remove', 'en', '2014-07-10 18:18:21', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:18:21', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471fc8bd5d0010', 'form.template', 'formtemplate', '表单模板', 'zh-cn', '2014-07-10 18:19:15', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:19:15', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471fc8dc9b0012', 'form.template', 'formtemplate', 'Form Template', 'en', '2014-07-10 18:19:23', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:19:23', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471fc961b70014', 'function.test', 'functiontest', '功能测试', 'zh-cn', '2014-07-10 18:19:57', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:19:57', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471fc97f300016', 'function.test', 'functiontest', 'Function Test', 'en', '2014-07-10 18:20:04', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:20:04', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471fc9e6310018', 'config.place', 'settingaddress', '配置地址', 'zh-cn', '2014-07-10 18:20:31', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:20:31', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471fca0508001a', 'config.place', 'settingaddress', 'Setting Address', 'en', '2014-07-10 18:20:39', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:20:39', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471fcc9f96001c', 'confirm.delrecord', 'confirmdelete', '确认删除该记录', 'zh-cn', '2014-07-10 18:23:29', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:23:29', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471fccbf1a001e', 'confirm.delrecord', 'confirmdelete', 'Confirm Delete', 'en', '2014-07-10 18:23:37', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:23:37', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471fcd6c920020', 'table.exitindbconfirm', 'tableexit.confrimdelete', '表在数据库中已存在\\n确认删除', 'zh-cn', '2014-07-10 18:24:22', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:24:22', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471fcdd7140022', 'table.exitindbconfirm', 'tableexit.confrimdelete', 'Table exit already\\n Confirm Delete', 'en', '2014-07-10 18:24:49', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:24:49', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471fce9e7a0024', 'confirm.deleterecord', 'confirm.delete.record', '确认移除该记录', 'zh-cn', '2014-07-10 18:25:40', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:25:40', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471fcec9d60026', 'confirm.deleterecord', 'confirm.delete.record', 'Confirm delete record', 'en', '2014-07-10 18:25:51', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:25:51', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471fcf68be0028', 'form.datalist', 'form.data.list', '表单数据列表', 'zh-cn', '2014-07-10 18:26:32', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:26:32', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471fcf948f002a', 'form.datalist', 'form.data.list', 'Form data list', 'en', '2014-07-10 18:26:43', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:26:43', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471fd33eb1002e', 'common.pleaseselectedititem', 'please.select.edit.item', '请选择编辑项目', 'zh-cn', '2014-07-10 18:30:43', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:30:43', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471fd36c4d0030', 'common.pleaseselectedititem', 'please.select.edit.item', 'Please select edit item', 'en', '2014-07-10 18:30:55', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:30:55', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471fd429130032', 'common.pleaseonerecordtoedit', 'please.select.one.record.edit', '请选择一条记录再编辑', 'zh-cn', '2014-07-10 18:31:43', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:31:43', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471fd487c40034', 'common.pleaseonerecordtoedit', 'please.select.one.record.edit', 'Please select one record to edit', 'en', '2014-07-10 18:32:07', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:32:07', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471fd706750036', 'common.confirm', 'confirm', '确定', 'zh-cn', '2014-07-10 18:34:51', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:34:51', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471fd71f530038', 'common.confirm', 'confirm', 'Confirm', 'en', '2014-07-10 18:34:57', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:34:57', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471fd8bd8f003c', 'common.menulink', 'menu.link', '菜单链接', 'zh-cn', '2014-07-10 18:36:43', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:36:43', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471fd8d355003e', 'common.menulink', 'menu.link', 'Menu Link', 'en', '2014-07-10 18:36:49', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:36:49', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471fdae99f0040', 'form.sqlimport', 'form.sql.import', '表单SQL导入', 'zh-cn', '2014-07-10 18:39:06', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:39:06', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471fdb06f60042', 'form.sqlimport', 'form.sql.import', 'Form SQL Import', 'en', '2014-07-10 18:39:13', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:39:13', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471fdbd2b60044', 'slavetable.cannotgeneratecode', 'slave.table.cannot.generate.code', '附表不能代码生成', 'zh-cn', '2014-07-10 18:40:05', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:40:05', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471fdc1ba70046', 'slavetable.cannotgeneratecode', 'slave.table.cannot.generate.code', 'Slave table can not generate code', 'en', '2014-07-10 18:40:24', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:47:00', '8a8ab0b246dc81120146dc8181950052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471fdd7b230048', 'please.syncdb', 'please.syns.database', '请先同步数据库', 'zh-cn', '2014-07-10 18:41:54', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:41:54', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471fde0d02004a', 'please.syncdb', 'please.syns.database', 'Please synchronize database first', 'en', '2014-07-10 18:42:31', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:42:31', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471fde8727004c', 'code.generate', 'code.generate', '代码生成', 'zh-cn', '2014-07-10 18:43:03', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:43:03', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471fdebba6004e', 'code.generate', 'code.generate', 'Code Generate', 'en', '2014-07-10 18:43:16', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:43:16', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471fdfb0040050', 'please.selectsyncmethod', 'please.select.sysn.method', '请选择同步方式', 'zh-cn', '2014-07-10 18:44:19', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:44:19', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471fdff96f0052', 'please.selectsyncmethod', 'please.select.sysn.method', 'Please select synchronize method', 'en', '2014-07-10 18:44:37', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:44:37', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471fe393f60059', 'normal.sync', 'normal.sysn.remain.data', '普通同步(保留表数据)', 'zh-cn', '2014-07-10 18:48:34', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:48:34', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471fe4c6cb005b', 'normal.sync', 'normal.sysn.remain.data', 'Normal Sync(Retain Data)', 'en', '2014-07-10 18:49:52', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:49:52', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471fe58641005d', 'force.sync', 'force.sync.delete.table', '强制同步(删除表,重新生成)', 'zh-cn', '2014-07-10 18:50:41', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:50:41', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471fe611cd005f', 'force.sync', 'force.sync.delete.table', 'Force Sync(Delete Table, ReGenerate)', 'en', '2014-07-10 18:51:17', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 18:51:17', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471ff8d3000061', 'enhance.type', 'enhance.type', '增强类型', 'zh-cn', '2014-07-10 19:11:46', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 19:11:46', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471ff8fcca0063', 'enhance.type', 'enhance.type', 'Enhance Type', 'en', '2014-07-10 19:11:57', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 19:11:57', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471ff9ec220065', 'enhance.js', 'enhance.js', '增强js', 'zh-cn', '2014-07-10 19:12:58', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 19:12:58', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471ffa2ef10067', 'enhance.js', 'enhance.js', 'Enhance JS', 'en', '2014-07-10 19:13:15', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 19:13:15', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471ffb99300069', 'get.error', 'get.error', '出错了', 'zh-cn', '2014-07-10 19:14:48', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 19:14:48', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471ffbb3d7006b', 'get.error', 'get.error', 'Get Error', 'en', '2014-07-10 19:14:55', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 19:14:55', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471ffcc59f006d', 'operate.code', 'operate.code', '操作码', 'zh-cn', '2014-07-10 19:16:05', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 19:16:05', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471ffce066006f', 'operate.code', 'operate.code', 'Operate Code', 'en', '2014-07-10 19:16:12', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 19:16:12', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471ffdf2350071', 'common.desc', 'description', '描述', 'zh-cn', '2014-07-10 19:17:22', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 19:17:22', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471ffe0b130073', 'common.desc', 'description', 'Description', 'en', '2014-07-10 19:17:28', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 19:17:28', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471ffed3280075', 'enhance.sql', 'enhance.sql', '增强sql', 'zh-cn', '2014-07-10 19:18:19', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 19:18:19', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('4028fd2b471f63bb01471ffeef0d0077', 'enhance.sql', 'enhance.sql', 'Enhance SQL', 'en', '2014-07-10 19:18:26', '8a8ab0b246dc81120146dc8181950052', 'admin', '2014-07-10 19:18:26', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('41e9ba5d4f2546fd871d0a4a401732a8', 'common.phone', 'sysmanage.user.column.phone', '手机号码', 'zh-cn', '2014-07-03 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('42a24520ac85497d9da92af210113da2', 'common.status', 'sysmanage.user.column.status', '状态', 'zh-cn', '2014-07-03 18:39:42', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('52ce422654ab40329fe3a0518b5c8f67', 'password.rang6to18', 'sysmanage.user.tip.password', 'The password is at least 6 characters long, up to 18 characters', 'en', '2014-07-04 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-04 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('5910b83799b242318f456a4f42303cb0', 'select.byrole', 'sysmanage.user.column.roleselect', '按角色选择', 'zh-cn', '2014-07-03 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('5976f42d8b6c4e099c2af2d391501e7e', 'common.rolename', 'sysmanage.user.column.rolename', 'Role Name', 'en', '2014-07-03 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('5e5106b716d6476cae700ab27f2da555', 'common.middle', 'sysmanage.user.tip.middle', '中', 'zh-cn', '2014-07-04 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-04 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('767053e885704be2b203fbe5c0389b73', 'common.passwordreset', 'sysmanage.user.button.passwordreset', '密码重置', 'zh-cn', '2014-07-03 18:39:42', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('7aae85094220429a84158e4db5c05d45', 'common.status', 'sysmanage.user.column.status', 'Status', 'en', '2014-07-03 18:39:42', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('7f980a800b114020b085530096b95d86', 'role.mutiselect', 'sysmanage.user.tip.role', '角色可多选', 'zh-cn', '2014-07-04 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-04 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('8a8ab00846c664b70146c741b9ed0045', 'lang.langkey', 'sysmanage.mutilang.column.languagekey', '语言主键', 'zh-cn', '2014-06-23 13:45:11', 'admin', '管理员', '2014-06-23 13:45:11', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('8a8ab00846c664b70146c74226100047', 'lang.langkey', 'sysmanage.mutilang.column.languagekey', 'Lang Key', 'en', '2014-06-23 13:45:39', 'admin', '管理员', '2014-06-23 13:45:39', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('8a8ab00846c664b70146c743a8a40049', 'common.content', 'sysmanage.mutilang.column.content', '内容', 'zh-cn', '2014-06-23 13:47:18', 'admin', '管理员', '2014-06-23 13:47:18', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('8a8ab00846c664b70146c74416f5004b', 'common.content', 'sysmanage.mutilang.column.content', 'Content', 'en', '2014-06-23 13:47:46', 'admin', '管理员', '2014-06-23 13:47:46', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('8a8ab00846c664b70146c744a460004d', 'common.language', 'sysmanage.mutilang.column.language', '语言', 'zh-cn', '2014-06-23 13:48:23', 'admin', '管理员', '2014-06-23 13:48:31', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('8a8ab00846c664b70146c74526330050', 'common.language', 'sysmanage.mutilang.column.language', 'Language', 'en', '2014-06-23 13:48:56', 'admin', '管理员', '2014-06-23 13:48:56', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('8a8ab00846c664b70146c77efdb60076', 'common.import', 'common.page.button.import', '数据导入', 'zh-cn', '2014-06-23 14:52:06', 'admin', '管理员', '2014-06-23 14:52:06', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('8a8ab00846c664b70146c77f95070078', 'common.import', 'common.page.button.import', 'Data Import', 'en', '2014-06-23 14:52:45', 'admin', '管理员', '2014-06-23 14:52:45', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('8a8ab00846c664b70146c7802f4f007a', 'common.export', 'common.page.button.export', '数据导出', 'zh-cn', '2014-06-23 14:53:25', 'admin', '管理员', '2014-06-23 14:58:50', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('8a8ab00846c664b70146c7809eb6007c', 'common.export', 'common.page.button.export', 'Data Export', 'en', '2014-06-23 14:53:53', 'admin', '管理员', '2014-06-23 14:59:00', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('8a8ab00846d1bb660146d1ef63000003', 'user.manage', 'sysmanage.user.user_maintain', '用户管理', 'zh-cn', '2014-06-25 15:31:05', 'admin', '管理员', '2014-06-25 15:31:05', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('8a8ab00846d1bb660146d1eff19e0005', 'user.manage', 'sysmanage.user.user_maintain', 'User Manage', 'en', '2014-06-25 15:31:41', 'admin', '管理员', '2014-06-25 15:31:41', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('8a8ab00846d1bb660146d1f12ae00007', 'common.datadictionary', 'sysmanage.datadictionary.datadictionary_maintain', 'Data Dictionary ', 'en', '2014-06-25 15:33:01', 'admin', '管理员', '2014-06-25 16:10:45', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('8a8ab00846d1bb660146d1f1635a0009', 'common.datadictionary', 'sysmanage.datadictionary.datadictionary_maintain', '数据字典', 'zh-cn', '2014-06-25 15:33:16', 'admin', '管理员', '2014-06-25 15:33:16', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('8a8ab00846d1bb660146d1f24c0b000b', 'role.manage', 'sysmanage.role.role_maintain', '角色管理', 'zh-cn', '2014-06-25 15:34:15', 'admin', '管理员', '2014-06-25 15:34:15', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('8a8ab00846d1bb660146d1f35861000f', 'role.manage', 'sysmanage.role.role_maintain', 'Role Manage', 'en', '2014-06-25 15:35:24', 'admin', '管理员', '2014-06-25 15:35:24', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('8a8ab00846d1bb660146d1f459750011', 'menu.manage', 'sysmanage.function.function_maintain', '菜单管理', 'zh-cn', '2014-06-25 15:36:30', 'admin', '管理员', '2014-06-25 15:36:30', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('8a8ab00846d1bb660146d1f4fd280013', 'menu.manage', 'sysmanage.function.function_maintain', 'Menu Manage', 'en', '2014-06-25 15:37:12', 'admin', '管理员', '2014-06-25 15:37:12', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('8a8ab00846d1bb660146d1f8e1610015', 'icon.manage', 'sysmanage.icon.icon_maintain', '图标管理', 'zh-cn', '2014-06-25 15:41:27', 'admin', '管理员', '2014-06-25 15:41:27', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('8a8ab00846d1bb660146d1fbc5bf0017', 'icon.manage', 'sysmanage.icon.icon_maintain', 'Icon Manage', 'en', '2014-06-25 15:44:36', 'admin', '管理员', '2014-06-25 15:44:36', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('8a8ab00846d1bb660146d1fffdb40019', 'depart.manage', 'sysmanage.depart.depart_maintain', '部门管理', 'zh-cn', '2014-06-25 15:49:13', 'admin', '管理员', '2014-06-25 15:49:13', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('8a8ab00846d1bb660146d20cbafe001b', 'depart.manage', 'sysmanage.depart.depart_maintain', 'Depart Manage', 'en', '2014-06-25 16:03:08', 'admin', '管理员', '2014-06-25 16:03:08', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('8a8ab00846d1bb660146d2112a4a001d', 'area.manage', 'sysmanage.area.area_maintain', '地域管理', 'zh-cn', '2014-06-25 16:07:58', 'admin', '管理员', '2014-06-25 16:07:58', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('8a8ab00846d1bb660146d2121e37001f', 'area.manage', 'sysmanage.area.area_maintain', 'Area Manage', 'en', '2014-06-25 16:09:01', 'admin', '管理员', '2014-06-25 16:09:01', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('8a8ab01b46b7bff40146b7c2eb6f0001', 'common.dash_board', 'common.page.dash_board', '首页', 'zh-cn', '2014-06-20 13:32:23', 'admin', '管理员', '2014-06-20 14:58:43', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('8a8ab01b46b7bff40146b7c38f560003', 'common.dash_board', 'common.page.dash_board', 'Dashboard', 'en', '2014-06-20 13:33:05', 'admin', '管理员', '2014-06-20 14:58:51', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('8a8ab01b46b802300146b8038a070001', 'common.add.success', 'common.msg.add.success', '添加成功', 'zh-cn', '2014-06-20 14:42:58', 'admin', '管理员', '2014-06-20 14:42:58', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('8a8ab01b46b802300146b8048a5e0004', 'common.add.success', 'common.msg.add.success', 'Add success', 'en', '2014-06-20 14:44:03', 'admin', '管理员', '2014-06-20 14:44:03', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('8a8ab01b46b802300146b806d7bd0006', 'common.edit.success', 'common.msg.edit.success', '更新成功', 'zh-cn', '2014-06-20 14:46:34', 'admin', '管理员', '2014-06-20 14:46:34', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('8a8ab01b46b802300146b807c4e60008', 'common.edit.success', 'common.msg.edit.success', 'Update success', 'en', '2014-06-20 14:47:35', 'admin', '管理员', '2014-06-20 14:47:35', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('8a8ab01b46b80a850146b80cf84d0002', 'common.del.success', 'common.msg.del.success', '删除成功', 'zh-cn', '2014-06-20 14:53:16', 'admin', '管理员', '2014-06-20 14:53:16', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('8a8ab01b46b80a850146b80d35b70004', 'common.del.success', 'common.msg.del.success', 'Delete success', 'en', '2014-06-20 14:53:31', 'admin', '管理员', '2014-06-20 14:53:31', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('8a8ab01b46b80a850146b80e7d420006', 'common.edit.fail', 'common.msg.edit.fail', '更新失败', 'zh-cn', '2014-06-20 14:54:55', 'admin', '管理员', '2014-06-20 14:54:55', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('8a8ab01b46b80a850146b80eddca0008', 'common.edit.fail', 'common.msg.edit.fail', 'Update Fail', 'en', '2014-06-20 14:55:20', 'admin', '管理员', '2014-06-20 14:55:20', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('8a8ab01b46b83b0b0146b83ec7070008', 'common.notfind.langkey', 'common.msg.notfind.langkey', '?', 'zh-cn', '2014-06-20 15:55:50', 'admin', '管理员', '2014-06-21 01:18:10', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('8a8ab01b46b83b0b0146b83ec7070009', 'common.notfind.langkey', 'common.msg.notfind.langkey', '?', 'en', '2014-06-20 15:57:14', 'admin', '管理员', '2014-06-21 01:18:16', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('8a8ab0de46c66d490146c674f6ee0002', 'common.dataloading', 'common.page.dataload', '数据加载中...', 'zh-cn', '2014-06-23 10:01:32', 'admin', '管理员', '2014-06-23 10:01:32', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('8a8ab0de46c66d490146c675351b0004', 'common.dataloading', 'common.page.dataload', 'Data Loading......', 'en', '2014-06-23 10:01:48', 'admin', '管理员', '2014-06-23 10:01:48', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('8a8ab0de46c66d490146c6788e550006', 'common.exitconfirm', 'common.page.msg.exitconfirm', '确定退出该系统吗 ?', 'zh-cn', '2014-06-23 10:05:28', 'admin', '管理员', '2014-06-23 10:05:28', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('8a8ab0de46c66d490146c678d8600008', 'common.exitconfirm', 'common.page.msg.exitconfirm', 'Confirm Exit?', 'en', '2014-06-23 10:05:46', 'admin', '管理员', '2014-06-23 10:05:46', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('8a8ab0de46c66d490146c67af864000a', 'common.changestyle', 'common.page.changestyle', '修改首页风格', 'zh-cn', '2014-06-23 10:08:06', 'admin', '管理员', '2014-06-23 10:08:06', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('8a8ab0de46c66d490146c67b3590000c', 'common.changestyle', 'common.page.changestyle', 'Change Style', 'en', '2014-06-23 10:08:21', 'admin', '管理员', '2014-06-23 10:08:21', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('8a8ab0de46c66d490146c683c4ea0012', 'common.browser', 'common.page.browser', '(推荐使用IE8+,谷歌浏览器可以获得更快,更安全的页面响应速度) 技术支持：', 'zh-cn', '2014-06-23 10:17:42', 'admin', '管理员', '2014-06-23 11:05:48', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('8a8ab0de46c66d490146c68486160014', 'common.browser', 'common.page.browser', '(Recommend IE+, Google browser) Support: ', 'en', '2014-06-23 10:18:32', 'admin', '管理员', '2014-06-23 10:18:32', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('8a8ab0de46c66d490146c6a7e0e2001a', 'common.login', 'common.page.button.login', '登陆', 'zh-cn', '2014-06-23 10:57:09', 'admin', '管理员', '2014-06-23 10:57:09', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('8a8ab0de46c66d490146c6a7f88b001c', 'common.login', 'common.page.button.login', 'Login', 'en', '2014-06-23 10:57:15', 'admin', '管理员', '2014-06-23 10:57:15', 'admin', '管理员');
INSERT INTO `t_s_muti_lang_copy` VALUES ('8b4f561992c84eaa958b10c7912896b8', 'common.weak', 'sysmanage.user.tip.weak', '弱', 'zh-cn', '2014-07-04 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-04 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('8ca84db9bbcb44bfb39746822a976907', 'common.role', 'sysmanage.user.column.role', 'Role', 'en', '2014-07-03 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('8f9cc9fc824f4d3985376df51c4167e8', 'common.add.param', 'sysmanage.user.button.createuser', '用户录入', 'zh-cn', '2014-07-03 18:39:42', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('9552351e91244a5b99246d1ed87d1995', 'common.rolelist', 'sysmanage.user.column.rolelist', 'Role List', 'en', '2014-07-03 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('95903aa116c74bdb95b5be510a89c79d', 'common.tel', 'sysmanage.user.column.telephone', '办公电话', 'zh-cn', '2014-07-03 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('9c3a8db4891a4d4390f6093ae2fd81af', 'common.strong', 'sysmanage.user.tip.strong', '强', 'zh-cn', '2014-07-04 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-04 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('9f750fb969ed4bdcbbdb212c43746112', 'common.lockuser', 'sysmanage.user.button.lockuser', 'Lock User', 'en', '2014-07-03 18:39:42', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('a57aa9a94e604a98a72f288993116e65', 'common.operation', 'sysmanage.user.column.usermanage', '操作', 'zh-cn', '2014-07-03 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('a8e5a8e8c5e44576a1500c3b5f57937b', 'select.byrole', 'sysmanage.user.column.roleselect', 'According to the role select', 'en', '2014-07-03 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('ac43aecc3356487c8eb5fa869149412f', 'common.repeatpassword', 'sysmanage.user.column.repeat', '重复密码', 'zh-cn', '2014-07-03 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('aec73ffa01b5499db0253b3b34194560', 'username.rang2to10', 'sysmanage.user.tip.username', '用户名范围在2~10位字符', 'zh-cn', '2014-07-04 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('b8865c9032054772b39d43efda9ba0c8', 'role.mutiselect', 'sysmanage.user.tip.role', 'The role of multiple choices', 'en', '2014-07-04 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-04 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('b8dae445b3ef468db87167ddd8cd1b64', 'please.selectpart', 'sysmanage.user.tip.depart', '请选择部门', 'zh-cn', '2014-07-04 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-04 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('ba1ff4ab5f5445bb97feb19b2c660570', 'common.usermanage', 'sysmanage.user.column.usermanage', 'User Management', 'en', '2014-07-03 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('c150726fac0d43fd9bf28f4590018950', 'common.username', 'sysmanage.user.column.username', 'User Name', 'en', '2014-07-03 18:39:42', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('caaf209a7acb413ea59bbdf30e944f20', 'common.commonmail', 'sysmanage.user.column.mail', 'Mail', 'en', '2014-07-03 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('ce8b2968f1fc49bba1a636ca18e7f08f', 'usename.range2to10', 'sysmanage.user.tip.username', 'The user name in the range of 2~10 characters', 'en', '2014-07-03 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('d136cd1f25cc42fe8a0fae2dddc5de23', 'common.weak', 'sysmanage.user.tip.weak', 'Weak', 'en', '2014-07-04 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-04 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('db582cfc0edb43d4ba6976d350cccd4f', 'common.add.param', 'sysmanage.user.button.createuser', 'Create User', 'en', '2014-07-03 18:39:42', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('dc787a2087ea4f248a394f8a88a5792c', 'common.realname', 'sysmanage.user.column.realname', '真实姓名', 'zh-cn', '2014-07-03 18:39:42', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('df075bc6373b4658afcfaff33b088952', 'common.role', 'sysmanage.user.column.role', '角色', 'zh-cn', '2014-07-03 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('e1fb12b3993b4d1ea35bd536801ada1f', 'common.commonmail', 'sysmanage.user.column.mail', '常用邮箱', 'zh-cn', '2014-07-03 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('e547fec1826c4811b6d759f2d81153f8', 'common.passwordreset', 'sysmanage.user.button.passwordreset', 'Password Reset', 'en', '2014-07-03 18:39:42', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('edbef7ba50aa4854b591973cdbed6f13', 'common.rolelist', 'sysmanage.user.column.rolelist', '角色列表', 'zh-cn', '2014-07-03 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('efaeaac21aaa4eaf99ec4b91e4114616', 'common.operateion', 'sysmanage.user.column.options', '操作', 'zh-cn', '2014-07-03 18:39:42', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('f9bb058989884acf89f2fb5b196fa256', 'common.rolename', 'sysmanage.user.column.rolename', '角色名称', 'zh-cn', '2014-07-03 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('f9f74528bde04a0f9e25e29cbc87d9fb', 'fill.realname', 'sysmanage.user.tip.realname', '填写个人真实姓名', 'zh-cn', '2014-07-04 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-04 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');
INSERT INTO `t_s_muti_lang_copy` VALUES ('fa07850cb8ed4c268cc91ffd31e7ace1', 'common.password', 'sysmanage.user.column.password', 'Password', 'en', '2014-07-03 18:39:43', '4028818d46f764fb0146f7661cb60052', 'admin', '2014-07-02 23:27:53', '4028818d46f764fb0146f7661cb60052', 'admin');

-- ----------------------------
-- Table structure for `t_s_operation`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_operation`;
CREATE TABLE `t_s_operation` (
  `ID` varchar(32) NOT NULL,
  `operationcode` varchar(50) default NULL,
  `operationicon` varchar(100) default NULL,
  `operationname` varchar(50) default NULL,
  `status` smallint(6) default NULL,
  `functionid` varchar(32) default NULL,
  `iconid` varchar(32) default NULL,
  `operationtype` smallint(6) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_pceuy41wr2fjbcilyc7mk3m1f` (`functionid`),
  KEY `FK_ny5de7922l39ta2pkhyspd5f` (`iconid`),
  CONSTRAINT `FK_ny5de7922l39ta2pkhyspd5f` FOREIGN KEY (`iconid`) REFERENCES `t_s_icon` (`ID`),
  CONSTRAINT `FK_pceuy41wr2fjbcilyc7mk3m1f` FOREIGN KEY (`functionid`) REFERENCES `t_s_function` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_operation
-- ----------------------------
INSERT INTO `t_s_operation` VALUES ('40288088481d019401481d30a0d1000f', 'add_phnoe', null, '手机号码录入', '0', '40288088481d019401481d2fcebf000d', '8a8ab0b246dc81120146dc8180460000', '1');
INSERT INTO `t_s_operation` VALUES ('402880e6481d48cb01481d539df6000c', 'userName', null, 'userName', '0', '8a8ab0b246dc81120146dc8181300037', '8a8ab0b246dc81120146dc8180460000', '0');
INSERT INTO `t_s_operation` VALUES ('8a8ab0b246dc81120146dc81824f0078', 'add', null, '录入', '0', '8a8ab0b246dc81120146dc8181300037', '8a8ab0b246dc81120146dc8180800001', '0');
INSERT INTO `t_s_operation` VALUES ('8a8ab0b246dc81120146dc8182540079', 'edit', null, '编辑', '0', '8a8ab0b246dc81120146dc8181300037', '8a8ab0b246dc81120146dc8180800001', '0');
INSERT INTO `t_s_operation` VALUES ('8a8ab0b246dc81120146dc818258007a', 'del', null, '删除', '0', '8a8ab0b246dc81120146dc8181300037', '8a8ab0b246dc81120146dc8180800001', '0');
INSERT INTO `t_s_operation` VALUES ('8a8ab0b246dc81120146dc81825b007b', 'szqm', null, '审核', '0', '8a8ab0b246dc81120146dc8181300037', '8a8ab0b246dc81120146dc8180800001', '0');

-- ----------------------------
-- Table structure for `t_s_opintemplate`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_opintemplate`;
CREATE TABLE `t_s_opintemplate` (
  `ID` varchar(32) NOT NULL,
  `descript` varchar(100) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_opintemplate
-- ----------------------------

-- ----------------------------
-- Table structure for `t_s_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_role`;
CREATE TABLE `t_s_role` (
  `ID` varchar(32) NOT NULL,
  `rolecode` varchar(10) default NULL,
  `rolename` varchar(100) NOT NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_role
-- ----------------------------
INSERT INTO `t_s_role` VALUES ('8a8ab0b246dc81120146dc8181870050', 'admin', '管理员');
INSERT INTO `t_s_role` VALUES ('8a8ab0b246dc81120146dc81818b0051', 'manager', '普通用户');

-- ----------------------------
-- Table structure for `t_s_role_function`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_role_function`;
CREATE TABLE `t_s_role_function` (
  `ID` varchar(32) NOT NULL,
  `operation` varchar(10000) default NULL,
  `functionid` varchar(32) default NULL,
  `roleid` varchar(32) default NULL,
  `datarule` varchar(1000) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_fvsillj2cxyk5thnuu625urab` (`functionid`),
  KEY `FK_9dww3p4w8jwvlrgwhpitsbfif` (`roleid`),
  CONSTRAINT `FK_9dww3p4w8jwvlrgwhpitsbfif` FOREIGN KEY (`roleid`) REFERENCES `t_s_role` (`ID`),
  CONSTRAINT `FK_fvsillj2cxyk5thnuu625urab` FOREIGN KEY (`functionid`) REFERENCES `t_s_function` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_role_function
-- ----------------------------
INSERT INTO `t_s_role_function` VALUES ('4028808848845c0f01488464dbe2000e', null, '4028808848845c0f014884649488000c', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('4028808848845c0f01488464dc1a000f', null, '4028808848845c0f01488461226e0001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('4028808848845c0f01488464dc1a0010', null, '4028808848845c0f01488462658f0006', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('4028808848845c0f01488464dc1a0011', null, '4028808848845c0f01488463aa210009', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('4028808848845c0f01488464dc1a0012', null, '4028808848845c0f01488461b3ac0004', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880e448a28b750148a290dbcb0003', null, '402880e448a28b750148a290c0e50001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402880e6481d48cb01481d4bc92a0001', '40288088481d019401481d30a0d1000f,', '40288088481d019401481d2fcebf000d', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('402881c746de1ea60146de20b9d60003', '', '402881c746de1ea60146de207d770001', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('402889fb486e848101486e9179aa000d', null, '402889fb486e848101486e8de3d60005', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('402889fb486e848101486e9179ac000e', null, '402889fb486e848101486e8e2e8b0007', '8a8ab0b246dc81120146dc81818b0051', '402889fb486e848101486e913cd6000b,');
INSERT INTO `t_s_role_function` VALUES ('402889fb486e848101486e9ae4530018', null, '402889fb486e848101486e93a7c80014', '8a8ab0b246dc81120146dc81818b0051', '402889fb486e848101486e98d20d0016,');
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc81826d007c', '', '8a8ab0b246dc81120146dc8180ce0019', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc818272007d', '', '8a8ab0b246dc81120146dc8180ce0019', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc818275007e', '', '8a8ab0b246dc81120146dc8180d2001a', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc818279007f', '', '8a8ab0b246dc81120146dc8180d2001a', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc81827d0080', '', '8a8ab0b246dc81120146dc8180d4001b', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc8182820081', '', '8a8ab0b246dc81120146dc8180d4001b', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc81828a0082', '', '8a8ab0b246dc81120146dc8180d7001c', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc81828f0083', '', '8a8ab0b246dc81120146dc8180d7001c', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc8182920084', '', '8a8ab0b246dc81120146dc8180d9001d', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc8182950085', '', '8a8ab0b246dc81120146dc8180d9001d', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc8182980086', '', '8a8ab0b246dc81120146dc8180df001f', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc81829b0087', '', '8a8ab0b246dc81120146dc8180df001f', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc81829e0088', '', '8a8ab0b246dc81120146dc8180e30021', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc8182a20089', '', '8a8ab0b246dc81120146dc8180e30021', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc8182a5008a', '', '8a8ab0b246dc81120146dc8180e70023', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc8182a7008b', '', '8a8ab0b246dc81120146dc8180e70023', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc8182aa008c', '', '8a8ab0b246dc81120146dc8180ee0025', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc8182ad008d', '', '8a8ab0b246dc81120146dc8180ee0025', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc8182b0008e', '', '8a8ab0b246dc81120146dc8180f30027', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc8182b2008f', '', '8a8ab0b246dc81120146dc8180f30027', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc8182b40090', '', '8a8ab0b246dc81120146dc8180f60028', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc8182b60091', '', '8a8ab0b246dc81120146dc8180f60028', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc8182b70092', '', '8a8ab0b246dc81120146dc8180f80029', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc8182b90093', '', '8a8ab0b246dc81120146dc8180f80029', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc8182bb0094', '', '8a8ab0b246dc81120146dc8180fe002b', '8a8ab0b246dc81120146dc8181870050', '402889fe47fcb29c0147fcb6b6220001,');
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc8182bd0095', '', '8a8ab0b246dc81120146dc8180fe002b', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc8182be0096', '', '8a8ab0b246dc81120146dc818106002d', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc8182c00097', '', '8a8ab0b246dc81120146dc818106002d', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc8182c20098', '', '8a8ab0b246dc81120146dc818109002e', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc8182c40099', '', '8a8ab0b246dc81120146dc818109002e', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc8182c6009a', '', '8a8ab0b246dc81120146dc8181100030', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc8182c7009b', '', '8a8ab0b246dc81120146dc8181100030', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc8182c9009c', '', '8a8ab0b246dc81120146dc81811d0032', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc8182cb009d', '', '8a8ab0b246dc81120146dc81811d0032', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc8182cd009e', '', '8a8ab0b246dc81120146dc8181250034', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc8182ce009f', '', '8a8ab0b246dc81120146dc8181250034', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc8182d000a0', '', '8a8ab0b246dc81120146dc81812b0036', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc8182d200a1', '', '8a8ab0b246dc81120146dc81812b0036', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc8182d400a2', '', '8a8ab0b246dc81120146dc8181300037', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc8182d500a3', '', '8a8ab0b246dc81120146dc8181300037', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc8182d700a4', '', '8a8ab0b246dc81120146dc8181330038', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc8182d900a5', '', '8a8ab0b246dc81120146dc8181330038', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc8182da00a6', '', '8a8ab0b246dc81120146dc8181370039', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc8182dc00a7', '', '8a8ab0b246dc81120146dc8181370039', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc8182de00a8', '', '8a8ab0b246dc81120146dc81813a003a', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc8182e000a9', '', '8a8ab0b246dc81120146dc81813a003a', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc8182e200aa', '', '8a8ab0b246dc81120146dc81813e003b', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc8182e400ab', '', '8a8ab0b246dc81120146dc81813e003b', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc8182e600ac', '', '8a8ab0b246dc81120146dc818141003c', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc8182e800ad', '', '8a8ab0b246dc81120146dc818141003c', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc8182ea00ae', '', '8a8ab0b246dc81120146dc818145003d', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc8182ed00af', '', '8a8ab0b246dc81120146dc818145003d', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc8182ef00b0', '', '8a8ab0b246dc81120146dc818148003e', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc8182f100b1', '', '8a8ab0b246dc81120146dc818148003e', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc8182f300b2', '', '8a8ab0b246dc81120146dc81814b003f', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc8182f600b3', '', '8a8ab0b246dc81120146dc81814b003f', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc8182f800b4', '', '8a8ab0b246dc81120146dc81814e0040', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc8182fa00b5', '', '8a8ab0b246dc81120146dc81814e0040', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc8182fd00b6', '', '8a8ab0b246dc81120146dc8181510041', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc8182ff00b7', '', '8a8ab0b246dc81120146dc8181510041', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc81830100b8', '', '8a8ab0b246dc81120146dc8181530042', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc81830300b9', '', '8a8ab0b246dc81120146dc8181530042', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc81830500ba', '', '8a8ab0b246dc81120146dc8181590044', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc81830700bb', '', '8a8ab0b246dc81120146dc8181590044', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc81830a00bc', '', '8a8ab0b246dc81120146dc81815c0045', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc81830c00bd', '', '8a8ab0b246dc81120146dc81815c0045', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc81830e00be', '', '8a8ab0b246dc81120146dc8181610046', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc81830f00bf', '', '8a8ab0b246dc81120146dc8181610046', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc81831100c0', '', '8a8ab0b246dc81120146dc8181640047', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc81831400c1', '', '8a8ab0b246dc81120146dc8181640047', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc81831600c2', '', '8a8ab0b246dc81120146dc8181680048', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc81831800c3', '', '8a8ab0b246dc81120146dc8181680048', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc81831a00c4', '', '8a8ab0b246dc81120146dc81816b0049', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc81831c00c5', '', '8a8ab0b246dc81120146dc81816b0049', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc81831e00c6', '', '8a8ab0b246dc81120146dc818173004b', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc81832100c7', '', '8a8ab0b246dc81120146dc818173004b', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc81832300c8', '', '8a8ab0b246dc81120146dc818176004c', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc81832500c9', '', '8a8ab0b246dc81120146dc818176004c', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc81832700ca', '', '8a8ab0b246dc81120146dc81817b004d', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc81832900cb', '', '8a8ab0b246dc81120146dc81817b004d', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc81832b00cc', '', '8a8ab0b246dc81120146dc81817f004e', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc81832d00cd', '', '8a8ab0b246dc81120146dc81817f004e', '8a8ab0b246dc81120146dc81818b0051', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc81832f00ce', '', '8a8ab0b246dc81120146dc818183004f', '8a8ab0b246dc81120146dc8181870050', null);
INSERT INTO `t_s_role_function` VALUES ('8a8ab0b246dc81120146dc81833100cf', '', '8a8ab0b246dc81120146dc818183004f', '8a8ab0b246dc81120146dc81818b0051', null);

-- ----------------------------
-- Table structure for `t_s_role_org`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_role_org`;
CREATE TABLE `t_s_role_org` (
  `ID` varchar(32) NOT NULL,
  `org_id` varchar(32) default NULL,
  `role_id` varchar(32) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_role_org
-- ----------------------------

-- ----------------------------
-- Table structure for `t_s_role_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_role_user`;
CREATE TABLE `t_s_role_user` (
  `ID` varchar(32) NOT NULL,
  `roleid` varchar(32) default NULL,
  `userid` varchar(32) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_n2ucxeorvpjy7qhnmuem01kbx` (`roleid`),
  KEY `FK_d4qb5xld2pfb0bkjx9iwtolda` (`userid`),
  CONSTRAINT `FK_d4qb5xld2pfb0bkjx9iwtolda` FOREIGN KEY (`userid`) REFERENCES `t_s_user` (`id`),
  CONSTRAINT `FK_n2ucxeorvpjy7qhnmuem01kbx` FOREIGN KEY (`roleid`) REFERENCES `t_s_role` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_role_user
-- ----------------------------
INSERT INTO `t_s_role_user` VALUES ('402889f3489de53901489de9a06a0008', '8a8ab0b246dc81120146dc81818b0051', '8a8ab0b246dc81120146dc81819d0053');
INSERT INTO `t_s_role_user` VALUES ('402889fb486e848101486e89fa5a0003', '8a8ab0b246dc81120146dc8181870050', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_role_user` VALUES ('8a8ab0b246dc81120146dc81834100d3', '8a8ab0b246dc81120146dc8181870050', '8a8ab0b246dc81120146dc8181a10054');
INSERT INTO `t_s_role_user` VALUES ('8a8ab0b246dc81120146dc81834300d4', '8a8ab0b246dc81120146dc8181870050', '8a8ab0b246dc81120146dc8181a60055');

-- ----------------------------
-- Table structure for `t_s_sms`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_sms`;
CREATE TABLE `t_s_sms` (
  `id` varchar(36) NOT NULL,
  `create_name` varchar(50) default NULL COMMENT '创建人名称',
  `create_by` varchar(50) default NULL COMMENT '创建人登录名称',
  `create_date` datetime default NULL COMMENT '创建日期',
  `update_name` varchar(50) default NULL COMMENT '更新人名称',
  `update_by` varchar(50) default NULL COMMENT '更新人登录名称',
  `update_date` datetime default NULL COMMENT '更新日期',
  `es_title` varchar(32) default NULL COMMENT '消息标题',
  `es_type` varchar(1) default NULL COMMENT '消息类型',
  `es_sender` varchar(50) default NULL COMMENT '发送人',
  `es_receiver` varchar(50) default NULL COMMENT '接收人',
  `es_content` longtext COMMENT '内容',
  `es_sendtime` datetime default NULL COMMENT '发送时间',
  `es_status` varchar(1) default NULL COMMENT '发送状态',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_sms
-- ----------------------------

-- ----------------------------
-- Table structure for `t_s_sms_sql`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_sms_sql`;
CREATE TABLE `t_s_sms_sql` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `sql_name` varchar(32) default NULL COMMENT 'SQL名称',
  `sql_content` varchar(1000) default NULL COMMENT 'SQL内容',
  `create_date` datetime default NULL COMMENT '创建日期',
  `create_by` varchar(50) default NULL COMMENT '创建人登录名称',
  `create_name` varchar(50) default NULL COMMENT '创建人名称',
  `update_date` datetime default NULL COMMENT '更新日期',
  `update_by` varchar(50) default NULL COMMENT '更新人登录名称',
  `update_name` varchar(50) default NULL COMMENT '更新人名称',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_sms_sql
-- ----------------------------
INSERT INTO `t_s_sms_sql` VALUES ('4028808848848c580148848cf2310001', 'zdfsd', 'sadf', '2014-09-18 00:58:22', 'admin', '管理员', null, '', '');

-- ----------------------------
-- Table structure for `t_s_sms_template`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_sms_template`;
CREATE TABLE `t_s_sms_template` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `template_type` varchar(1) default NULL COMMENT '模板类型',
  `template_name` varchar(50) default NULL COMMENT '模板名称',
  `template_content` varchar(1000) default NULL COMMENT '模板内容',
  `create_date` datetime default NULL COMMENT '创建日期',
  `create_by` varchar(50) default NULL COMMENT '创建人登录名称',
  `create_name` varchar(50) default NULL COMMENT '创建人名称',
  `update_date` datetime default NULL COMMENT '更新日期',
  `update_by` varchar(50) default NULL COMMENT '更新人登录名称',
  `update_name` varchar(50) default NULL COMMENT '更新人名称',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_sms_template
-- ----------------------------
INSERT INTO `t_s_sms_template` VALUES ('402880884883fdc20148841fff260002', '1', 'xzc', 'cxv', '2014-09-17 00:00:00', 'admin', '管理员', null, null, null);

-- ----------------------------
-- Table structure for `t_s_sms_template_sql`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_sms_template_sql`;
CREATE TABLE `t_s_sms_template_sql` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `code` varchar(32) default NULL COMMENT '配置CODE',
  `name` varchar(32) default NULL COMMENT '配置名称',
  `sql_id` varchar(32) default NULL COMMENT '业务SQLID',
  `template_id` varchar(32) default NULL COMMENT '消息模本ID',
  `create_date` datetime default NULL COMMENT '创建日期',
  `create_by` varchar(50) default NULL COMMENT '创建人登录名称',
  `create_name` varchar(50) default NULL COMMENT '创建人名称',
  `update_date` datetime default NULL COMMENT '更新日期',
  `update_by` varchar(50) default NULL COMMENT '更新人登录名称',
  `update_name` varchar(50) default NULL COMMENT '更新人名称',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_sms_template_sql
-- ----------------------------
INSERT INTO `t_s_sms_template_sql` VALUES ('4028808848848c580148848d331d0003', 'dsaf', 'dsa', '4028808848848c580148848cf2310001', '402880884883fdc20148841fff260002', '2014-09-18 00:58:39', 'admin', '管理员', null, '', '');

-- ----------------------------
-- Table structure for `t_s_student`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_student`;
CREATE TABLE `t_s_student` (
  `ID` varchar(32) NOT NULL,
  `classname` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `sex` varchar(255) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_student
-- ----------------------------
INSERT INTO `t_s_student` VALUES ('8a8ab0b246dc81120146dc8186270176', '1班', '张三', 'f');
INSERT INTO `t_s_student` VALUES ('8a8ab0b246dc81120146dc81862a0177', '1班', '李四', 'f');
INSERT INTO `t_s_student` VALUES ('8a8ab0b246dc81120146dc81862b0178', '1班', '王五', 'm');
INSERT INTO `t_s_student` VALUES ('8a8ab0b246dc81120146dc81862c0179', '1班', '赵六', 'f');
INSERT INTO `t_s_student` VALUES ('8a8ab0b246dc81120146dc81862d017a', '2班', '张三', 'f');
INSERT INTO `t_s_student` VALUES ('8a8ab0b246dc81120146dc81862e017b', '2班', '李四', 'f');
INSERT INTO `t_s_student` VALUES ('8a8ab0b246dc81120146dc818631017c', '2班', '王五', 'm');
INSERT INTO `t_s_student` VALUES ('8a8ab0b246dc81120146dc818632017d', '2班', '赵六', 'f');
INSERT INTO `t_s_student` VALUES ('8a8ab0b246dc81120146dc818634017e', '3班', '张三', 'f');
INSERT INTO `t_s_student` VALUES ('8a8ab0b246dc81120146dc818636017f', '3班', '李四', 'f');
INSERT INTO `t_s_student` VALUES ('8a8ab0b246dc81120146dc81863a0180', '3班', '王五', 'm');
INSERT INTO `t_s_student` VALUES ('8a8ab0b246dc81120146dc81863d0181', '3班', '李四', 'f');
INSERT INTO `t_s_student` VALUES ('8a8ab0b246dc81120146dc8186400182', '3班', '王五', 'm');
INSERT INTO `t_s_student` VALUES ('8a8ab0b246dc81120146dc8186410183', '3班', '赵六', 'f');
INSERT INTO `t_s_student` VALUES ('8a8ab0b246dc81120146dc8186420184', '4班', '张三', 'f');
INSERT INTO `t_s_student` VALUES ('8a8ab0b246dc81120146dc8186420185', '4班', '李四', 'f');
INSERT INTO `t_s_student` VALUES ('8a8ab0b246dc81120146dc8186440186', '4班', '王五', 'm');
INSERT INTO `t_s_student` VALUES ('8a8ab0b246dc81120146dc8186440187', '4班', '赵六', 'f');
INSERT INTO `t_s_student` VALUES ('8a8ab0b246dc81120146dc8186450188', '5班', '张三', 'm');
INSERT INTO `t_s_student` VALUES ('8a8ab0b246dc81120146dc8186460189', '5班', '李四', 'f');
INSERT INTO `t_s_student` VALUES ('8a8ab0b246dc81120146dc818647018a', '5班', '王五', 'm');
INSERT INTO `t_s_student` VALUES ('8a8ab0b246dc81120146dc818647018b', '5班', '赵六', 'm');
INSERT INTO `t_s_student` VALUES ('8a8ab0b246dc81120146dc818648018c', '5班', '赵六', 'm');
INSERT INTO `t_s_student` VALUES ('8a8ab0b246dc81120146dc818649018d', '5班', '李四', 'f');
INSERT INTO `t_s_student` VALUES ('8a8ab0b246dc81120146dc818649018e', '5班', '王五', 'm');
INSERT INTO `t_s_student` VALUES ('8a8ab0b246dc81120146dc81864a018f', '5班', '赵六', 'm');
INSERT INTO `t_s_student` VALUES ('8a8ab0b246dc81120146dc81864b0190', '5班', '赵六', 'm');

-- ----------------------------
-- Table structure for `t_s_territory`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_territory`;
CREATE TABLE `t_s_territory` (
  `ID` varchar(32) NOT NULL,
  `territorycode` varchar(10) NOT NULL,
  `territorylevel` smallint(6) NOT NULL,
  `territoryname` varchar(50) NOT NULL,
  `territory_pinyin` varchar(40) default NULL,
  `territorysort` varchar(3) NOT NULL,
  `x_wgs84` double NOT NULL,
  `y_wgs84` double NOT NULL,
  `territoryparentid` varchar(32) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_territory
-- ----------------------------
INSERT INTO `t_s_territory` VALUES ('1', '100', '1', '全国', 'qg', '0', '106.258754', '38.471318', '0');
INSERT INTO `t_s_territory` VALUES ('10', '00000016', '2', '河南省', 'HNS', '0', '113.687228', '34.76819', '1');
INSERT INTO `t_s_territory` VALUES ('100', '371300', '3', '临沂市', 'LYS', '0', '118.356448', '35.104672', '18');
INSERT INTO `t_s_territory` VALUES ('1000', '370903', '4', '岱岳区', 'DYQ', '0', '117.041582', '36.18799', '96');
INSERT INTO `t_s_territory` VALUES ('1001', '370921', '4', '宁阳县', 'NYX', '0', '116.805797', '35.758787', '96');
INSERT INTO `t_s_territory` VALUES ('1002', '370923', '4', '东平县', 'DPX', '0', '116.470304', '35.937102', '96');
INSERT INTO `t_s_territory` VALUES ('1003', '370982', '4', '新泰市', 'XTS', '0', '117.767953', '35.909032', '96');
INSERT INTO `t_s_territory` VALUES ('1004', '370983', '4', '肥城市', 'FCS', '0', '116.768358', '36.182571', '96');
INSERT INTO `t_s_territory` VALUES ('1005', '371002', '4', '环翠区', 'HCQ', '0', '122.123444', '37.501991', '97');
INSERT INTO `t_s_territory` VALUES ('1006', '371081', '4', '文登市', 'WDS', '0', '122.058128', '37.1939129', '97');
INSERT INTO `t_s_territory` VALUES ('1007', '371082', '4', '荣成市', 'RCS', '0', '122.486676', '37.165249', '97');
INSERT INTO `t_s_territory` VALUES ('1008', '371083', '4', '乳山市', 'RSS', '0', '121.539764', '36.919816', '97');
INSERT INTO `t_s_territory` VALUES ('1009', '371102', '4', '东港区', 'DGQ', '0', '119.462228', '35.425475', '98');
INSERT INTO `t_s_territory` VALUES ('101', '371400', '3', '德州市', 'DZS', '0', '116.357465', '37.434093', '18');
INSERT INTO `t_s_territory` VALUES ('1010', '371103', '4', '岚山区', 'LSQ', '0', '119.318813', '35.121816', '98');
INSERT INTO `t_s_territory` VALUES ('1011', '371121', '4', '五莲县', 'WLX', '0', '119.208744', '35.750095', '98');
INSERT INTO `t_s_territory` VALUES ('1012', '371122', '4', '莒县', 'JX', '0', '118.837131', '35.579868', '98');
INSERT INTO `t_s_territory` VALUES ('1013', '371202', '4', '莱城区', 'LCQ', '0', '117.659864', '36.203208', '99');
INSERT INTO `t_s_territory` VALUES ('1014', '371203', '4', '钢城区', 'GCQ', '0', '117.811355', '36.058572', '99');
INSERT INTO `t_s_territory` VALUES ('1015', '371302', '4', '兰山区', 'LSQ', '0', '118.347707', '35.051729', '100');
INSERT INTO `t_s_territory` VALUES ('1016', '371311', '4', '罗庄区', 'LZQ', '0', '118.284786', '34.996741', '100');
INSERT INTO `t_s_territory` VALUES ('1017', '371312', '4', '河东区', 'HDQ', '0', '118.402893', '35.089917', '100');
INSERT INTO `t_s_territory` VALUES ('1018', '371321', '4', '沂南县', 'YNX', '0', '118.465213', '35.549976', '100');
INSERT INTO `t_s_territory` VALUES ('1019', '371322', '4', '郯城县', 'TCX', '0', '118.367263', '34.613557', '100');
INSERT INTO `t_s_territory` VALUES ('102', '371500', '3', '聊城市', 'LCS', '0', '115.985371', '36.4567039', '18');
INSERT INTO `t_s_territory` VALUES ('1020', '371323', '4', '沂水县', 'YSX', '0', '118.627918', '35.79045', '100');
INSERT INTO `t_s_territory` VALUES ('1021', '371324', '4', '苍山县', 'CSX', '0', '118.07065', '34.857149', '100');
INSERT INTO `t_s_territory` VALUES ('1022', '371325', '4', '费县', 'FX', '0', '117.977868', '35.26634', '100');
INSERT INTO `t_s_territory` VALUES ('1023', '371326', '4', '平邑县', 'PYX', '0', '117.640352', '35.5059429', '100');
INSERT INTO `t_s_territory` VALUES ('1024', '371327', '4', '莒南县', 'JNX', '0', '118.835163', '35.174846', '100');
INSERT INTO `t_s_territory` VALUES ('1025', '371328', '4', '蒙阴县', 'MYX', '0', '117.945085', '35.710032', '100');
INSERT INTO `t_s_territory` VALUES ('1026', '371329', '4', '临沭县', 'LSX', '0', '118.650782', '34.919852', '100');
INSERT INTO `t_s_territory` VALUES ('1027', '371402', '4', '德城区', 'DCQ', '0', '116.299434', '37.451272', '101');
INSERT INTO `t_s_territory` VALUES ('1028', '371421', '4', '陵县', 'LX', '0', '116.576176', '37.33579', '101');
INSERT INTO `t_s_territory` VALUES ('1029', '371422', '4', '宁津县', 'NJX', '0', '116.800324', '37.652329', '101');
INSERT INTO `t_s_territory` VALUES ('103', '371600', '3', '滨州市', 'BZS', '0', '117.970703', '37.38199', '18');
INSERT INTO `t_s_territory` VALUES ('1030', '371423', '4', '庆云县', 'QYX', '0', '117.385123', '37.77539', '101');
INSERT INTO `t_s_territory` VALUES ('1031', '371424', '4', '临邑县', 'LYX', '0', '116.86665', '37.189864', '101');
INSERT INTO `t_s_territory` VALUES ('1032', '371425', '4', '齐河县', 'QHX', '0', '116.758917', '36.795011', '101');
INSERT INTO `t_s_territory` VALUES ('1033', '371426', '4', '平原县', 'PYX', '0', '116.434187', '37.165419', '101');
INSERT INTO `t_s_territory` VALUES ('1034', '371427', '4', '夏津县', 'XJX', '0', '116.001726', '36.948371', '101');
INSERT INTO `t_s_territory` VALUES ('1035', '371428', '4', '武城县', 'WCX', '0', '116.069302', '37.213311', '101');
INSERT INTO `t_s_territory` VALUES ('1036', '371481', '4', '乐陵市', 'LLS', '0', '117.231935', '37.729907', '101');
INSERT INTO `t_s_territory` VALUES ('1037', '371482', '4', '禹城市', 'YCS', '0', '116.638387', '36.934259', '101');
INSERT INTO `t_s_territory` VALUES ('1038', '371502', '4', '东昌府区', 'DCFQ', '0', '115.988484', '36.434697', '102');
INSERT INTO `t_s_territory` VALUES ('1039', '371521', '4', '阳谷县', 'YGX', '0', '115.79182', '36.114392', '102');
INSERT INTO `t_s_territory` VALUES ('104', '371700', '3', '菏泽市', 'HZS', '0', '115.480656', '35.23375', '18');
INSERT INTO `t_s_territory` VALUES ('1040', '371522', '4', '莘县', 'SX', '0', '115.671191', '36.233599', '102');
INSERT INTO `t_s_territory` VALUES ('1041', '371523', '4', '茌平县', 'CPX', '0', '116.255282', '36.5807639', '102');
INSERT INTO `t_s_territory` VALUES ('1042', '371524', '4', '东阿县', 'DAX', '0', '116.24758', '36.334917', '102');
INSERT INTO `t_s_territory` VALUES ('1043', '371525', '4', '冠县', 'GX', '0', '115.44274', '36.484009', '102');
INSERT INTO `t_s_territory` VALUES ('1044', '371526', '4', '高唐县', 'GTX', '0', '116.231478', '36.866062', '102');
INSERT INTO `t_s_territory` VALUES ('1045', '371581', '4', '临清市', 'LQS', '0', '115.704881', '36.838277', '102');
INSERT INTO `t_s_territory` VALUES ('1046', '371602', '4', '滨城区', 'BCQ', '0', '118.019146', '37.43206', '103');
INSERT INTO `t_s_territory` VALUES ('1047', '371621', '4', '惠民县', 'HMX', '0', '117.510451', '37.489769', '103');
INSERT INTO `t_s_territory` VALUES ('1048', '371622', '4', '阳信县', 'YXX', '0', '117.578262', '37.641106', '103');
INSERT INTO `t_s_territory` VALUES ('1049', '371623', '4', '无棣县', 'WDX', '0', '117.625696', '37.770261', '103');
INSERT INTO `t_s_territory` VALUES ('1050', '371624', '4', '沾化县', 'ZHX', '0', '118.132199', '37.698281', '103');
INSERT INTO `t_s_territory` VALUES ('1051', '371625', '4', '博兴县', 'BXX', '0', '118.131815', '37.150226', '103');
INSERT INTO `t_s_territory` VALUES ('1052', '371626', '4', '邹平县', 'ZPX', '0', '117.743109', '36.862989', '103');
INSERT INTO `t_s_territory` VALUES ('1053', '371702', '4', '牡丹区', 'MDQ', '0', '115.417827', '35.252512', '104');
INSERT INTO `t_s_territory` VALUES ('1054', '371721', '4', '曹县', 'CX', '0', '115.542328', '34.825508', '104');
INSERT INTO `t_s_territory` VALUES ('1055', '371722', '4', '单县', 'DX', '0', '116.107428', '34.778808', '104');
INSERT INTO `t_s_territory` VALUES ('1056', '371723', '4', '成武县', 'CWX', '0', '115.889765', '34.952459', '104');
INSERT INTO `t_s_territory` VALUES ('1057', '371724', '4', '巨野县', 'JYX', '0', '116.094674', '35.396261', '104');
INSERT INTO `t_s_territory` VALUES ('1058', '371725', '4', '郓城县', 'YCX', '0', '115.943613', '35.599758', '104');
INSERT INTO `t_s_territory` VALUES ('1059', '371726', '4', '鄄城县', 'JCX', '0', '115.510193', '35.563408', '104');
INSERT INTO `t_s_territory` VALUES ('1060', '371727', '4', '定陶县', 'DTX', '0', '115.573094', '35.071', '104');
INSERT INTO `t_s_territory` VALUES ('1061', '371728', '4', '东明县', 'DMX', '0', '115.089905', '35.289368', '104');
INSERT INTO `t_s_territory` VALUES ('11', '00000008', '2', '黑龙江省', 'HLJS', '0', '126.662507', '45.7421699', '1');
INSERT INTO `t_s_territory` VALUES ('12', '20000000', '2', '上海市', 'SHS', '0', '121.473704', '31.230393', '1');
INSERT INTO `t_s_territory` VALUES ('13', '00000010', '2', '江苏省', 'JSS', '0', '118.763232', '32.061707', '1');
INSERT INTO `t_s_territory` VALUES ('14', '00000011', '2', '浙江省', 'ZJS', '0', '120.153676', '30.26586', '1');
INSERT INTO `t_s_territory` VALUES ('15', '00000012', '2', '安徽省', 'AHS', '0', '117.284923', '31.861184', '1');
INSERT INTO `t_s_territory` VALUES ('16', '00000013', '2', '福建省', 'FJS', '0', '119.296506', '26.099933', '1');
INSERT INTO `t_s_territory` VALUES ('17', '00000014', '2', '江西省', 'JXS', '0', '115.909175', '28.674424', '1');
INSERT INTO `t_s_territory` VALUES ('1739', '360102', '4', '东湖区', 'DHQ', '0', '115.89901', '28.6849159', '184');
INSERT INTO `t_s_territory` VALUES ('1740', '360103', '4', '西湖区', 'XHQ', '0', '115.877287', '28.656887', '184');
INSERT INTO `t_s_territory` VALUES ('1741', '360104', '4', '青云谱区', 'QYPQ', '0', '115.925749', '28.621169', '184');
INSERT INTO `t_s_territory` VALUES ('1742', '360105', '4', '湾里区', 'WLQ', '0', '115.730994', '28.714869', '184');
INSERT INTO `t_s_territory` VALUES ('1743', '360111', '4', '青山湖区', 'QSHQ', '0', '115.962144', '28.682985', '184');
INSERT INTO `t_s_territory` VALUES ('1744', '360121', '4', '南昌县', 'NCX', '0', '115.944162', '28.545459', '184');
INSERT INTO `t_s_territory` VALUES ('1745', '360122', '4', '新建县', 'XJX', '0', '115.815233', '28.692437', '184');
INSERT INTO `t_s_territory` VALUES ('1746', '360123', '4', '安义县', 'AYX', '0', '115.549199', '28.844429', '184');
INSERT INTO `t_s_territory` VALUES ('1747', '360124', '4', '进贤县', 'JXX', '0', '116.240924', '28.376918', '184');
INSERT INTO `t_s_territory` VALUES ('1748', '360202', '4', '昌江区', 'CJQ', '0', '117.183688', '29.27342', '185');
INSERT INTO `t_s_territory` VALUES ('1749', '360203', '4', '珠山区', 'ZSQ', '0', '117.202336', '29.301272', '185');
INSERT INTO `t_s_territory` VALUES ('1750', '360222', '4', '浮梁县', 'FLX', '0', '117.215061', '29.351739', '185');
INSERT INTO `t_s_territory` VALUES ('1751', '360281', '4', '乐平市', 'LPS', '0', '117.129169', '28.961902', '185');
INSERT INTO `t_s_territory` VALUES ('1752', '360302', '4', '安源区', 'AYQ', '0', '113.87073', '27.615202', '186');
INSERT INTO `t_s_territory` VALUES ('1753', '360313', '4', '湘东区', 'XDQ', '0', '113.733059', '27.640075', '186');
INSERT INTO `t_s_territory` VALUES ('1754', '360321', '4', '莲花县', 'LHX', '0', '113.961465', '27.127669', '186');
INSERT INTO `t_s_territory` VALUES ('1755', '360322', '4', '上栗县', 'SLX', '0', '113.795219', '27.880567', '186');
INSERT INTO `t_s_territory` VALUES ('1756', '360323', '4', '芦溪县', 'LXX', '0', '114.029595', '27.631145', '186');
INSERT INTO `t_s_territory` VALUES ('1757', '360402', '4', '庐山区', 'LSQ', '0', '115.989212', '29.671775', '187');
INSERT INTO `t_s_territory` VALUES ('1758', '360403', '4', '浔阳区', 'XYQ', '0', '115.990399', '29.72746', '187');
INSERT INTO `t_s_territory` VALUES ('1759', '360421', '4', '九江县', 'JJX', '0', '115.911314', '29.608456', '187');
INSERT INTO `t_s_territory` VALUES ('1760', '360423', '4', '武宁县', 'WNX', '0', '115.100579', '29.256323', '187');
INSERT INTO `t_s_territory` VALUES ('1761', '360424', '4', '修水县', 'XSX', '0', '114.547356', '29.025707', '187');
INSERT INTO `t_s_territory` VALUES ('1762', '360425', '4', '永修县', 'YXX', '0', '115.809111', '29.021824', '187');
INSERT INTO `t_s_territory` VALUES ('1763', '360426', '4', '德安县', 'DAX', '0', '115.756883', '29.314348', '187');
INSERT INTO `t_s_territory` VALUES ('1764', '360427', '4', '星子县', 'XZX', '0', '116.044893', '29.448037', '187');
INSERT INTO `t_s_territory` VALUES ('1765', '360428', '4', '都昌县', 'DCX', '0', '116.204099', '29.273194', '187');
INSERT INTO `t_s_territory` VALUES ('1766', '360429', '4', '湖口县', 'HKX', '0', '116.220266', '29.73944', '187');
INSERT INTO `t_s_territory` VALUES ('1767', '360430', '4', '彭泽县', 'PZX', '0', '116.549359', '29.896061', '187');
INSERT INTO `t_s_territory` VALUES ('1768', '360481', '4', '瑞昌市', 'RCS', '0', '115.681504', '29.673795', '187');
INSERT INTO `t_s_territory` VALUES ('1769', '360499', '4', '共青城', 'GQC', '0', '115.774', '29.2417', '187');
INSERT INTO `t_s_territory` VALUES ('1770', '360502', '4', '渝水区', 'YSQ', '0', '114.944574', '27.80038', '188');
INSERT INTO `t_s_territory` VALUES ('1771', '360521', '4', '分宜县', 'FYX', '0', '114.692039', '27.814628', '188');
INSERT INTO `t_s_territory` VALUES ('1772', '360602', '4', '月湖区', 'YHQ', '0', '117.036676', '28.238797', '189');
INSERT INTO `t_s_territory` VALUES ('1773', '360622', '4', '余江县', 'YJX', '0', '116.818871', '28.204174', '189');
INSERT INTO `t_s_territory` VALUES ('1774', '360681', '4', '贵溪市', 'GXS', '0', '117.245497', '28.292519', '189');
INSERT INTO `t_s_territory` VALUES ('1775', '360702', '4', '章贡区', 'ZGQ', '0', '114.941826', '25.862827', '190');
INSERT INTO `t_s_territory` VALUES ('1776', '360721', '4', '赣县', 'GX', '0', '115.011561', '25.860691', '190');
INSERT INTO `t_s_territory` VALUES ('1777', '360722', '4', '信丰县', 'XFX', '0', '114.922963', '25.386278', '190');
INSERT INTO `t_s_territory` VALUES ('1778', '360723', '4', '大余县', 'DYX', '0', '114.362094', '25.401283', '190');
INSERT INTO `t_s_territory` VALUES ('1779', '360724', '4', '上犹县', 'SYX', '0', '114.551371', '25.784978', '190');
INSERT INTO `t_s_territory` VALUES ('1780', '360725', '4', '崇义县', 'CYX', '0', '114.308273', '25.681879', '190');
INSERT INTO `t_s_territory` VALUES ('1781', '360726', '4', '安远县', 'AYX', '0', '115.393922', '25.136925', '190');
INSERT INTO `t_s_territory` VALUES ('1782', '360727', '4', '龙南县', 'LNX', '0', '114.789811', '24.911107', '190');
INSERT INTO `t_s_territory` VALUES ('1783', '360728', '4', '定南县', 'DNX', '0', '115.027845', '24.78441', '190');
INSERT INTO `t_s_territory` VALUES ('1784', '360729', '4', '全南县', 'QNX', '0', '114.530125', '24.742401', '190');
INSERT INTO `t_s_territory` VALUES ('1785', '360730', '4', '宁都县', 'NDX', '0', '116.009472', '26.470116', '190');
INSERT INTO `t_s_territory` VALUES ('1786', '360731', '4', '于都县', 'YDX', '0', '115.41551', '25.952066', '190');
INSERT INTO `t_s_territory` VALUES ('1787', '360732', '4', '兴国县', 'XGX', '0', '115.36319', '26.337937', '190');
INSERT INTO `t_s_territory` VALUES ('1788', '360733', '4', '会昌县', 'HCX', '0', '115.786057', '25.600272', '190');
INSERT INTO `t_s_territory` VALUES ('1789', '360734', '4', '寻乌县', 'YWX', '0', '115.646525', '24.963322', '190');
INSERT INTO `t_s_territory` VALUES ('1790', '360735', '4', '石城县', 'SCX', '0', '116.354201', '26.32686', '190');
INSERT INTO `t_s_territory` VALUES ('1791', '360781', '4', '瑞金市', 'RJS', '0', '116.02713', '25.885561', '190');
INSERT INTO `t_s_territory` VALUES ('1792', '360782', '4', '南康市', 'NKS', '0', '114.765238', '25.661356', '190');
INSERT INTO `t_s_territory` VALUES ('1793', '360802', '4', '吉州区', 'JZQ', '0', '114.994307', '27.129975', '191');
INSERT INTO `t_s_territory` VALUES ('1794', '360803', '4', '青原区', 'QYQ', '0', '115.01424', '27.081719', '191');
INSERT INTO `t_s_territory` VALUES ('1795', '360821', '4', '吉安县', 'JAX', '0', '114.907659', '27.040142', '191');
INSERT INTO `t_s_territory` VALUES ('1796', '360822', '4', '吉水县', 'JSX', '0', '115.135507', '27.229632', '191');
INSERT INTO `t_s_territory` VALUES ('1797', '360823', '4', '峡江县', 'XJX', '0', '115.316566', '27.582901', '191');
INSERT INTO `t_s_territory` VALUES ('1798', '360824', '4', '新干县', 'XGX', '0', '115.393043', '27.740809', '191');
INSERT INTO `t_s_territory` VALUES ('1799', '360825', '4', '永丰县', 'YFX', '0', '115.441477', '27.317869', '191');
INSERT INTO `t_s_territory` VALUES ('18', '00000015', '2', '山东省', 'SDS', '0', '117.020411', '36.668627', '1');
INSERT INTO `t_s_territory` VALUES ('1800', '360826', '4', '泰和县', 'THX', '0', '114.908861', '26.790231', '191');
INSERT INTO `t_s_territory` VALUES ('1801', '360827', '4', '遂川县', 'SCX', '0', '114.52098', '26.311894', '191');
INSERT INTO `t_s_territory` VALUES ('1802', '360828', '4', '万安县', 'WAX', '0', '114.786256', '26.458257', '191');
INSERT INTO `t_s_territory` VALUES ('1803', '360829', '4', '安福县', 'AFX', '0', '114.619893', '27.392874', '191');
INSERT INTO `t_s_territory` VALUES ('1804', '360830', '4', '永新县', 'YXX', '0', '114.242675', '26.945233', '191');
INSERT INTO `t_s_territory` VALUES ('1805', '360881', '4', '井冈山市', 'JGSS', '0', '114.289182', '26.748186', '191');
INSERT INTO `t_s_territory` VALUES ('1806', '360902', '4', '袁州区', 'YZQ', '0', '114.424657', '27.798846', '192');
INSERT INTO `t_s_territory` VALUES ('1807', '360921', '4', '奉新县', 'FXX', '0', '115.384904', '28.700806', '192');
INSERT INTO `t_s_territory` VALUES ('1808', '360922', '4', '万载县', 'WZX', '0', '114.447551', '28.10455', '192');
INSERT INTO `t_s_territory` VALUES ('1809', '360923', '4', '上高县', 'SGX', '0', '114.924494', '28.232827', '192');
INSERT INTO `t_s_territory` VALUES ('1810', '360924', '4', '宜丰县', 'YFX', '0', '114.803542', '28.393613', '192');
INSERT INTO `t_s_territory` VALUES ('1811', '360925', '4', '靖安县', 'JAX', '0', '115.362629', '28.861475', '192');
INSERT INTO `t_s_territory` VALUES ('1812', '360926', '4', '铜鼓县', 'TGX', '0', '114.37098', '28.520747', '192');
INSERT INTO `t_s_territory` VALUES ('1813', '360981', '4', '丰城市', 'FCS', '0', '115.771195', '28.159325', '192');
INSERT INTO `t_s_territory` VALUES ('1814', '360982', '4', '樟树市', 'ZSS', '0', '115.546063', '28.055796', '192');
INSERT INTO `t_s_territory` VALUES ('1815', '360983', '4', '高安市', 'GAS', '0', '115.375618', '28.417261', '192');
INSERT INTO `t_s_territory` VALUES ('1816', '361002', '4', '临川区', 'LCQ', '0', '116.31136', '27.934529', '193');
INSERT INTO `t_s_territory` VALUES ('1817', '361021', '4', '南城县', 'NCX', '0', '116.644658', '27.552748', '193');
INSERT INTO `t_s_territory` VALUES ('1818', '361022', '4', '黎川县', 'LCX', '0', '116.907508', '27.282382', '193');
INSERT INTO `t_s_territory` VALUES ('1819', '361023', '4', '南丰县', 'NFX', '0', '116.525725', '27.218445', '193');
INSERT INTO `t_s_territory` VALUES ('1820', '361024', '4', '崇仁县', 'CRX', '0', '116.061164', '27.764681', '193');
INSERT INTO `t_s_territory` VALUES ('1821', '361025', '4', '乐安县', 'LAX', '0', '115.837895', '27.420441', '193');
INSERT INTO `t_s_territory` VALUES ('1822', '361026', '4', '宜黄县', 'YHX', '0', '116.222128', '27.546146', '193');
INSERT INTO `t_s_territory` VALUES ('1823', '361027', '4', '金溪县', 'JXX', '0', '116.775435', '27.908337', '193');
INSERT INTO `t_s_territory` VALUES ('1824', '361028', '4', '资溪县', 'ZXX', '0', '117.060264', '27.706102', '193');
INSERT INTO `t_s_territory` VALUES ('1825', '361029', '4', '东乡县', 'DXX', '0', '116.590465', '28.236118', '193');
INSERT INTO `t_s_territory` VALUES ('1826', '361030', '4', '广昌县', 'GCX', '0', '116.325757', '26.837267', '193');
INSERT INTO `t_s_territory` VALUES ('1827', '361102', '4', '信州区', 'XZQ', '0', '117.966823', '28.43121', '194');
INSERT INTO `t_s_territory` VALUES ('1828', '361121', '4', '上饶县', 'SRX', '0', '117.90785', '28.448983', '194');
INSERT INTO `t_s_territory` VALUES ('1829', '361122', '4', '广丰县', 'GFX', '0', '118.19124', '28.436286', '194');
INSERT INTO `t_s_territory` VALUES ('1830', '361123', '4', '玉山县', 'YSX', '0', '118.245124', '28.682055', '194');
INSERT INTO `t_s_territory` VALUES ('1831', '361124', '4', '铅山县', 'QSX', '0', '117.709451', '28.315217', '194');
INSERT INTO `t_s_territory` VALUES ('1832', '361125', '4', '横峰县', 'HFX', '0', '117.596452', '28.407118', '194');
INSERT INTO `t_s_territory` VALUES ('1833', '361126', '4', '弋阳县', 'YYX', '0', '117.449588', '28.378044', '194');
INSERT INTO `t_s_territory` VALUES ('1834', '361127', '4', '余干县', 'YGX', '0', '116.695647', '28.702302', '194');
INSERT INTO `t_s_territory` VALUES ('1835', '361128', '4', '鄱阳县', 'PYX', '0', '116.699746', '29.011699', '194');
INSERT INTO `t_s_territory` VALUES ('1836', '361129', '4', '万年县', 'WNX', '0', '117.058445', '28.694582', '194');
INSERT INTO `t_s_territory` VALUES ('1837', '361130', '4', '婺源县', 'WYX', '0', '117.861911', '29.2480249', '194');
INSERT INTO `t_s_territory` VALUES ('1838', '361181', '4', '德兴市', 'DXS', '0', '117.578713', '28.946464', '194');
INSERT INTO `t_s_territory` VALUES ('1839', '370102', '4', '历下区', 'LXQ', '0', '117.07653', '36.666344', '195');
INSERT INTO `t_s_territory` VALUES ('184', '360100', '3', '南昌市', 'NCS', '0', '115.858089', '28.68316', '17');
INSERT INTO `t_s_territory` VALUES ('1840', '370103', '4', '市中区', 'SZQ', '0', '116.997475', '36.6511749', '195');
INSERT INTO `t_s_territory` VALUES ('1841', '370104', '4', '槐荫区', 'HYQ', '0', '116.90113', '36.651301', '195');
INSERT INTO `t_s_territory` VALUES ('1842', '370105', '4', '天桥区', 'TQQ', '0', '116.987492', '36.678016', '195');
INSERT INTO `t_s_territory` VALUES ('1843', '370112', '4', '历城区', 'LCQ', '0', '117.065222', '36.680171', '195');
INSERT INTO `t_s_territory` VALUES ('185', '360200', '3', '景德镇市', 'JDZS', '0', '117.17842', '29.268836', '17');
INSERT INTO `t_s_territory` VALUES ('186', '360300', '3', '萍乡市', 'PXS', '0', '113.854676', '27.622865', '17');
INSERT INTO `t_s_territory` VALUES ('187', '360400', '3', '九江市', 'JJS', '0', '116.001951', '29.705103', '17');
INSERT INTO `t_s_territory` VALUES ('188', '360500', '3', '新余市', 'XYS', '0', '114.91741', '27.817819', '17');
INSERT INTO `t_s_territory` VALUES ('189', '360600', '3', '鹰潭市', 'YTS', '0', '117.069202', '28.260189', '17');
INSERT INTO `t_s_territory` VALUES ('19', '00000017', '2', '湖北省', 'HBS', '0', '114.341921', '30.545861', '1');
INSERT INTO `t_s_territory` VALUES ('190', '360700', '3', '赣州市', 'GZS', '0', '114.935025', '25.831925', '17');
INSERT INTO `t_s_territory` VALUES ('191', '360800', '3', '吉安市', 'JAS', '0', '114.992912', '27.113039', '17');
INSERT INTO `t_s_territory` VALUES ('192', '360900', '3', '宜春市', 'YCS', '0', '114.416778', '27.815619', '17');
INSERT INTO `t_s_territory` VALUES ('193', '361000', '3', '抚州市', 'FZS', '0', '116.358176', '27.9492', '17');
INSERT INTO `t_s_territory` VALUES ('194', '361100', '3', '上饶市', 'SRS', '0', '117.943433', '28.454863', '17');
INSERT INTO `t_s_territory` VALUES ('195', '370100', '3', '济南市', 'JNS', '0', '116.994917', '36.665282', '18');
INSERT INTO `t_s_territory` VALUES ('20', '00000018', '2', '湖南省', 'HNS', '0', '112.98381', '28.112444', '1');
INSERT INTO `t_s_territory` VALUES ('21', '40000000', '2', '重庆市', 'ZQS', '0', '106.551557', '29.56301', '1');
INSERT INTO `t_s_territory` VALUES ('22', '00000022', '2', '四川省', 'SCS', '0', '104.075931', '30.651652', '1');
INSERT INTO `t_s_territory` VALUES ('23', '00000019', '2', '广东省', 'GDS', '0', '113.266531', '23.132191', '1');
INSERT INTO `t_s_territory` VALUES ('24', '00000020', '2', '广西壮族自治区', 'GXZZZZQ', '0', '108.327546', '22.815478', '1');
INSERT INTO `t_s_territory` VALUES ('25', '00000021', '2', '海南省', 'HNS', '0', '110.349229', '20.017378', '1');
INSERT INTO `t_s_territory` VALUES ('26', '810000', '2', '香港特别行政区', 'XGTBXZQ', '0', '114.109497', '22.396428', '1');
INSERT INTO `t_s_territory` VALUES ('27', '820000', '2', '澳门特别行政区', 'AMTBXZQ', '0', '113.543873', '22.198745', '1');
INSERT INTO `t_s_territory` VALUES ('28', '00000023', '2', '贵州省', 'GZS', '0', '106.707116', '26.598026', '1');
INSERT INTO `t_s_territory` VALUES ('29', '00000024', '2', '云南省', 'YNS', '0', '102.709812', '25.045359', '1');
INSERT INTO `t_s_territory` VALUES ('3', '00000006', '2', '辽宁省', 'LNS', '0', '123.42944', '41.835441', '1');
INSERT INTO `t_s_territory` VALUES ('30', '00000025', '2', '西藏自治区', 'XCZZQ', '0', '91.1170059', '29.647951', '1');
INSERT INTO `t_s_territory` VALUES ('31', '00000026', '2', '陕西省', 'SXS', '0', '108.954239', '34.265472', '1');
INSERT INTO `t_s_territory` VALUES ('32', '00000027', '2', '甘肃省', 'GSS', '0', '103.826308', '36.059421', '1');
INSERT INTO `t_s_territory` VALUES ('33', '00000028', '2', '青海省', 'QHS', '0', '101.780199', '36.620901', '1');
INSERT INTO `t_s_territory` VALUES ('34', '00000029', '2', '宁夏回族自治区', 'NXHZZZQ', '0', '106.258754', '38.471318', '1');
INSERT INTO `t_s_territory` VALUES ('35', '00000030', '2', '新疆维吾尔自治区', 'XJWWEZZQ', '0', '87.6278119', '43.793028', '1');
INSERT INTO `t_s_territory` VALUES ('4', '00000007', '2', '吉林省', 'JLS', '0', '125.326065', '43.896082', '1');
INSERT INTO `t_s_territory` VALUES ('5', '10000000', '2', '北京市', 'BJS', '0', '116.407413', '39.904214', '1');
INSERT INTO `t_s_territory` VALUES ('6', '30000000', '2', '天津市', 'TJS', '0', '117.200983', '39.084158', '1');
INSERT INTO `t_s_territory` VALUES ('7', '00000003', '2', '河北省', 'HBS', '0', '114.468665', '38.037057', '1');
INSERT INTO `t_s_territory` VALUES ('8', '00000004', '2', '山西省', 'SXS', '0', '112.562569', '37.873376', '1');
INSERT INTO `t_s_territory` VALUES ('89', '370200', '3', '青岛市', 'QDS', '0', '120.382504', '36.06722', '18');
INSERT INTO `t_s_territory` VALUES ('9', '00000005', '2', '内蒙古自治区', 'NMGZZQ', '0', '111.765618', '40.817498', '1');
INSERT INTO `t_s_territory` VALUES ('90', '370300', '3', '淄博市', 'ZBS', '0', '118.055007', '36.813497', '18');
INSERT INTO `t_s_territory` VALUES ('91', '370400', '3', '枣庄市', 'ZZS', '0', '117.323725', '34.810488', '18');
INSERT INTO `t_s_territory` VALUES ('92', '370500', '3', '东营市', 'DYS', '0', '118.674767', '37.434751', '18');
INSERT INTO `t_s_territory` VALUES ('926', '370113', '4', '长清区', 'CQQ', '0', '116.751959', '36.553691', '195');
INSERT INTO `t_s_territory` VALUES ('927', '370124', '4', '平阴县', 'PYX', '0', '116.456187', '36.289265', '195');
INSERT INTO `t_s_territory` VALUES ('928', '370125', '4', '济阳县', 'JYX', '0', '117.173529', '36.978547', '195');
INSERT INTO `t_s_territory` VALUES ('929', '370126', '4', '商河县', 'SHX', '0', '117.157183', '37.309045', '195');
INSERT INTO `t_s_territory` VALUES ('93', '370600', '3', '烟台市', 'YTS', '0', '121.447926', '37.463819', '18');
INSERT INTO `t_s_territory` VALUES ('930', '370181', '4', '章丘市', 'ZQS', '0', '117.534326', '36.714015', '195');
INSERT INTO `t_s_territory` VALUES ('931', '370202', '4', '市南区', 'SNQ', '0', '120.412392', '36.075651', '89');
INSERT INTO `t_s_territory` VALUES ('932', '370203', '4', '市北区', 'SBQ', '0', '120.374801', '36.087661', '89');
INSERT INTO `t_s_territory` VALUES ('933', '370205', '4', '四方区', 'SFQ', '0', '120.366454', '36.103993', '89');
INSERT INTO `t_s_territory` VALUES ('934', '370211', '4', '黄岛区', 'HDQ', '0', '120.198054', '35.960935', '89');
INSERT INTO `t_s_territory` VALUES ('935', '370212', '4', '崂山区', 'LSQ', '0', '120.468956', '36.107538', '89');
INSERT INTO `t_s_territory` VALUES ('936', '370213', '4', '李沧区', 'LCQ', '0', '120.432864', '36.145476', '89');
INSERT INTO `t_s_territory` VALUES ('937', '370214', '4', '城阳区', 'CYQ', '0', '120.396529', '36.307061', '89');
INSERT INTO `t_s_territory` VALUES ('938', '370281', '4', '胶州市', 'JZS', '0', '120.033345', '36.264664', '89');
INSERT INTO `t_s_territory` VALUES ('939', '370282', '4', '即墨市', 'JMS', '0', '120.447162', '36.389401', '89');
INSERT INTO `t_s_territory` VALUES ('94', '370700', '3', '潍坊市', 'WFS', '0', '119.16193', '36.706691', '18');
INSERT INTO `t_s_territory` VALUES ('940', '370283', '4', '平度市', 'PDS', '0', '119.960014', '36.7867', '89');
INSERT INTO `t_s_territory` VALUES ('941', '370284', '4', '胶南市', 'JNS', '0', '120.04643', '35.8725', '89');
INSERT INTO `t_s_territory` VALUES ('942', '370285', '4', '莱西市', 'LXS', '0', '120.51769', '36.889084', '89');
INSERT INTO `t_s_territory` VALUES ('943', '370302', '4', '淄川区', 'ZCQ', '0', '117.966842', '36.643449', '90');
INSERT INTO `t_s_territory` VALUES ('944', '370303', '4', '张店区', 'ZDQ', '0', '118.017656', '36.806773', '90');
INSERT INTO `t_s_territory` VALUES ('945', '370304', '4', '博山区', 'BSQ', '0', '117.861698', '36.494752', '90');
INSERT INTO `t_s_territory` VALUES ('946', '370305', '4', '临淄区', 'LZQ', '0', '118.308977', '36.827343', '90');
INSERT INTO `t_s_territory` VALUES ('947', '370306', '4', '周村区', 'ZCQ', '0', '117.869877', '36.803109', '90');
INSERT INTO `t_s_territory` VALUES ('948', '370321', '4', '桓台县', 'HTX', '0', '118.097955', '36.959623', '90');
INSERT INTO `t_s_territory` VALUES ('949', '370322', '4', '高青县', 'GQX', '0', '117.826916', '37.171063', '90');
INSERT INTO `t_s_territory` VALUES ('95', '370800', '3', '济宁市', 'JNS', '0', '116.587099', '35.414921', '18');
INSERT INTO `t_s_territory` VALUES ('950', '370323', '4', '沂源县', 'YYX', '0', '118.170979', '36.184827', '90');
INSERT INTO `t_s_territory` VALUES ('951', '370402', '4', '市中区', 'SZQ', '0', '117.556124', '34.864114', '91');
INSERT INTO `t_s_territory` VALUES ('952', '370403', '4', '薛城区', 'YCQ', '0', '117.263157', '34.795206', '91');
INSERT INTO `t_s_territory` VALUES ('953', '370404', '4', '峄城区', 'YCQ', '0', '117.590819', '34.772236', '91');
INSERT INTO `t_s_territory` VALUES ('954', '370405', '4', '台儿庄区', 'TEZQ', '0', '117.733832', '34.562528', '91');
INSERT INTO `t_s_territory` VALUES ('955', '370406', '4', '山亭区', 'STQ', '0', '117.461343', '35.099549', '91');
INSERT INTO `t_s_territory` VALUES ('956', '370481', '4', '滕州市', 'TZS', '0', '117.164388', '35.084021', '91');
INSERT INTO `t_s_territory` VALUES ('957', '370502', '4', '东营区', 'DYQ', '0', '118.582184', '37.448964', '92');
INSERT INTO `t_s_territory` VALUES ('958', '370503', '4', '河口区', 'HKQ', '0', '118.525579', '37.886138', '92');
INSERT INTO `t_s_territory` VALUES ('959', '370521', '4', '垦利县', 'KLX', '0', '118.547627', '37.58754', '92');
INSERT INTO `t_s_territory` VALUES ('960', '370522', '4', '利津县', 'LJX', '0', '118.255273', '37.49026', '92');
INSERT INTO `t_s_territory` VALUES ('961', '370523', '4', '广饶县', 'GRX', '0', '118.407045', '37.0537', '92');
INSERT INTO `t_s_territory` VALUES ('962', '370602', '4', '芝罘区', 'ZFQ', '0', '121.400031', '37.540687', '93');
INSERT INTO `t_s_territory` VALUES ('963', '370611', '4', '福山区', 'FSQ', '0', '121.267697', '37.498051', '93');
INSERT INTO `t_s_territory` VALUES ('964', '370612', '4', '牟平区', 'MPQ', '0', '121.600512', '37.386901', '93');
INSERT INTO `t_s_territory` VALUES ('965', '370613', '4', '莱山区', 'LSQ', '0', '121.445304', '37.511305', '93');
INSERT INTO `t_s_territory` VALUES ('966', '370614', '4', '开发区', 'KFQ', '0', '121.251001', '37.554683', '93');
INSERT INTO `t_s_territory` VALUES ('967', '370634', '4', '长岛县', 'CDX', '0', '120.736584', '37.921417', '93');
INSERT INTO `t_s_territory` VALUES ('968', '370681', '4', '龙口市', 'LKS', '0', '120.477836', '37.646064', '93');
INSERT INTO `t_s_territory` VALUES ('969', '370682', '4', '莱阳市', 'LYS', '0', '120.711607', '36.97891', '93');
INSERT INTO `t_s_territory` VALUES ('970', '370683', '4', '莱州市', 'LZS', '0', '119.942327', '37.177017', '93');
INSERT INTO `t_s_territory` VALUES ('971', '370684', '4', '蓬莱市', 'PLS', '0', '120.758848', '37.810661', '93');
INSERT INTO `t_s_territory` VALUES ('972', '370685', '4', '招远市', 'ZYS', '0', '120.434072', '37.355469', '93');
INSERT INTO `t_s_territory` VALUES ('973', '370686', '4', '栖霞市', 'QXS', '0', '120.849675', '37.335123', '93');
INSERT INTO `t_s_territory` VALUES ('974', '370687', '4', '海阳市', 'HYS', '0', '121.158477', '36.776425', '93');
INSERT INTO `t_s_territory` VALUES ('975', '370702', '4', '潍城区', 'WCQ', '0', '119.024836', '36.7281', '94');
INSERT INTO `t_s_territory` VALUES ('976', '370703', '4', '寒亭区', 'HTQ', '0', '119.219734', '36.775491', '94');
INSERT INTO `t_s_territory` VALUES ('977', '370704', '4', '坊子区', 'FZQ', '0', '119.166485', '36.654448', '94');
INSERT INTO `t_s_territory` VALUES ('978', '370705', '4', '奎文区', 'KWQ', '0', '119.132486', '36.707676', '94');
INSERT INTO `t_s_territory` VALUES ('979', '370724', '4', '临朐县', 'LQX', '0', '118.542982', '36.5125059', '94');
INSERT INTO `t_s_territory` VALUES ('980', '370725', '4', '昌乐县', 'CLX', '0', '118.829914', '36.706945', '94');
INSERT INTO `t_s_territory` VALUES ('981', '370781', '4', '青州市', 'QZS', '0', '118.479622', '36.684528', '94');
INSERT INTO `t_s_territory` VALUES ('982', '370782', '4', '诸城市', 'ZCS', '0', '119.410103', '35.995654', '94');
INSERT INTO `t_s_territory` VALUES ('983', '370783', '4', '寿光市', 'SGS', '0', '118.790652', '36.85548', '94');
INSERT INTO `t_s_territory` VALUES ('984', '370784', '4', '安丘市', 'AQS', '0', '119.218978', '36.478494', '94');
INSERT INTO `t_s_territory` VALUES ('985', '370785', '4', '高密市', 'GMS', '0', '119.755597', '36.3825949', '94');
INSERT INTO `t_s_territory` VALUES ('986', '370786', '4', '昌邑市', 'CYS', '0', '119.398525', '36.85882', '94');
INSERT INTO `t_s_territory` VALUES ('987', '370802', '4', '市中区', 'SZQ', '0', '116.596614', '35.40819', '95');
INSERT INTO `t_s_territory` VALUES ('988', '370811', '4', '任城区', 'RCQ', '0', '116.628562', '35.433727', '95');
INSERT INTO `t_s_territory` VALUES ('989', '370826', '4', '微山县', 'WSX', '0', '117.128946', '34.8071', '95');
INSERT INTO `t_s_territory` VALUES ('990', '370827', '4', '鱼台县', 'YTX', '0', '116.650608', '35.012749', '95');
INSERT INTO `t_s_territory` VALUES ('991', '370828', '4', '金乡县', 'JXX', '0', '116.311532', '35.06662', '95');
INSERT INTO `t_s_territory` VALUES ('992', '370829', '4', '嘉祥县', 'JXX', '0', '116.342442', '35.407829', '95');
INSERT INTO `t_s_territory` VALUES ('993', '370830', '4', '汶上县', 'WSX', '0', '116.489043', '35.732799', '95');
INSERT INTO `t_s_territory` VALUES ('994', '370831', '4', '泗水县', 'SSX', '0', '117.251195', '35.664323', '95');
INSERT INTO `t_s_territory` VALUES ('995', '370832', '4', '梁山县', 'LSX', '0', '116.096044', '35.802306', '95');
INSERT INTO `t_s_territory` VALUES ('996', '370881', '4', '曲阜市', 'QFS', '0', '116.986532', '35.581137', '95');
INSERT INTO `t_s_territory` VALUES ('997', '370882', '4', '兖州市', 'YZS', '0', '116.783834', '35.553144', '95');
INSERT INTO `t_s_territory` VALUES ('998', '370883', '4', '邹城市', 'ZCS', '0', '117.003743', '35.405185', '95');
INSERT INTO `t_s_territory` VALUES ('999', '370902', '4', '泰山区', 'TSQ', '0', '117.135354', '36.192084', '96');

-- ----------------------------
-- Table structure for `t_s_timetask`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_timetask`;
CREATE TABLE `t_s_timetask` (
  `ID` varchar(32) NOT NULL,
  `CREATE_BY` varchar(32) default NULL,
  `CREATE_DATE` datetime default NULL,
  `CREATE_NAME` varchar(32) default NULL,
  `CRON_EXPRESSION` varchar(100) NOT NULL,
  `IS_EFFECT` varchar(1) NOT NULL,
  `IS_START` varchar(1) NOT NULL,
  `TASK_DESCRIBE` varchar(50) NOT NULL,
  `TASK_ID` varchar(100) NOT NULL,
  `UPDATE_BY` varchar(32) default NULL,
  `UPDATE_DATE` datetime default NULL,
  `UPDATE_NAME` varchar(32) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_timetask
-- ----------------------------
INSERT INTO `t_s_timetask` VALUES ('8a8ab0b246dc81120146dc81850c016a', null, null, null, '0 0/1 * * * ?', '0', '0', '测试Demo', 'taskDemoServiceTaskCronTrigger', null, null, null);

-- ----------------------------
-- Table structure for `t_s_type`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_type`;
CREATE TABLE `t_s_type` (
  `ID` varchar(32) NOT NULL,
  `typecode` varchar(50) default NULL,
  `typename` varchar(50) default NULL,
  `typepid` varchar(32) default NULL,
  `typegroupid` varchar(32) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_nw2b22gy7plh7pqows186odmq` (`typepid`),
  KEY `FK_3q40mr4ebtd0cvx79matl39x1` (`typegroupid`),
  CONSTRAINT `FK_3q40mr4ebtd0cvx79matl39x1` FOREIGN KEY (`typegroupid`) REFERENCES `t_s_typegroup` (`ID`),
  CONSTRAINT `FK_nw2b22gy7plh7pqows186odmq` FOREIGN KEY (`typepid`) REFERENCES `t_s_type` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_type
-- ----------------------------
INSERT INTO `t_s_type` VALUES ('297e201047e95ee30147e9baab5c000b', '1', 'common.company', null, '297e201047e95ee30147e9ba56ce0009');
INSERT INTO `t_s_type` VALUES ('297e201047e95ee30147e9baef97000d', '2', 'common.department', null, '297e201047e95ee30147e9ba56ce0009');
INSERT INTO `t_s_type` VALUES ('297e201047e95ee30147e9bb1210000f', '3', 'common.position', null, '297e201047e95ee30147e9ba56ce0009');
INSERT INTO `t_s_type` VALUES ('402880884883eff4014884180bf80029', '1', '蔷薇七村', null, '402880884883eff401488415cbb60027');
INSERT INTO `t_s_type` VALUES ('402881e946e71f5f0146e736c4e80008', 'en', 'common.english', null, '402881e946e71f5f0146e73619bb0002');
INSERT INTO `t_s_type` VALUES ('402881e946e71f5f0146e740dcad0012', 'zh-cn', 'common.chinese', null, '402881e946e71f5f0146e73619bb0002');
INSERT INTO `t_s_type` VALUES ('8a8ab0b246dc81120146dc8181f30060', '2', 'menu.icon', null, '8a8ab0b246dc81120146dc8181aa0056');
INSERT INTO `t_s_type` VALUES ('8a8ab0b246dc81120146dc8181f70061', '1', 'system.icon', null, '8a8ab0b246dc81120146dc8181aa0056');
INSERT INTO `t_s_type` VALUES ('8a8ab0b246dc81120146dc8181fa0062', 'files', 'common.attachment', null, '8a8ab0b246dc81120146dc8181ca005e');
INSERT INTO `t_s_type` VALUES ('8a8ab0b246dc81120146dc8181fe0063', '1', 'lang.excellent.order', null, '8a8ab0b246dc81120146dc8181b10057');
INSERT INTO `t_s_type` VALUES ('8a8ab0b246dc81120146dc8182010064', '2', 'lang.normal.order', null, '8a8ab0b246dc81120146dc8181b10057');
INSERT INTO `t_s_type` VALUES ('8a8ab0b246dc81120146dc8182050065', '1', 'lang.contract.customer', null, '8a8ab0b246dc81120146dc8181b50058');
INSERT INTO `t_s_type` VALUES ('8a8ab0b246dc81120146dc8182080066', '2', 'lang.normal.customer', null, '8a8ab0b246dc81120146dc8181b50058');
INSERT INTO `t_s_type` VALUES ('8a8ab0b246dc81120146dc81820b0067', '1', 'lang.special.servcie', null, '8a8ab0b246dc81120146dc8181b90059');
INSERT INTO `t_s_type` VALUES ('8a8ab0b246dc81120146dc8182100068', '2', 'lang.normal.service', null, '8a8ab0b246dc81120146dc8181b90059');
INSERT INTO `t_s_type` VALUES ('8a8ab0b246dc81120146dc8182130069', 'single', 'common.single.condition.query', null, '8a8ab0b246dc81120146dc8181bc005a');
INSERT INTO `t_s_type` VALUES ('8a8ab0b246dc81120146dc818216006a', 'group', 'common.scope.query', null, '8a8ab0b246dc81120146dc8181bc005a');
INSERT INTO `t_s_type` VALUES ('8a8ab0b246dc81120146dc81821a006b', 'Y', 'common.yes', null, '8a8ab0b246dc81120146dc8181c0005b');
INSERT INTO `t_s_type` VALUES ('8a8ab0b246dc81120146dc81821d006c', 'N', 'common.no', null, '8a8ab0b246dc81120146dc8181c0005b');
INSERT INTO `t_s_type` VALUES ('8a8ab0b246dc81120146dc818221006d', 'Integer', 'common.db.integer', null, '8a8ab0b246dc81120146dc8181c3005c');
INSERT INTO `t_s_type` VALUES ('8a8ab0b246dc81120146dc818224006e', 'Date', 'common.db.date', null, '8a8ab0b246dc81120146dc8181c3005c');
INSERT INTO `t_s_type` VALUES ('8a8ab0b246dc81120146dc818227006f', 'String', 'common.db.string', null, '8a8ab0b246dc81120146dc8181c3005c');
INSERT INTO `t_s_type` VALUES ('8a8ab0b246dc81120146dc81822b0070', 'Long', 'common.db.long', null, '8a8ab0b246dc81120146dc8181c3005c');
INSERT INTO `t_s_type` VALUES ('8a8ab0b246dc81120146dc81822f0071', 'act', 'common.workflow.engine.table', null, '8a8ab0b246dc81120146dc8181c6005d');
INSERT INTO `t_s_type` VALUES ('8a8ab0b246dc81120146dc8182320072', 't_s', 'common.system.table', null, '8a8ab0b246dc81120146dc8181c6005d');
INSERT INTO `t_s_type` VALUES ('8a8ab0b246dc81120146dc8182350073', 't_b', 'common.business.table', null, '8a8ab0b246dc81120146dc8181c6005d');
INSERT INTO `t_s_type` VALUES ('8a8ab0b246dc81120146dc8182390074', 't_p', 'common.customer.engine.table', null, '8a8ab0b246dc81120146dc8181c6005d');
INSERT INTO `t_s_type` VALUES ('8a8ab0b246dc81120146dc81823c0075', 'news', 'common.news', null, '8a8ab0b246dc81120146dc8181ca005e');
INSERT INTO `t_s_type` VALUES ('8a8ab0b246dc81120146dc8182400076', '0', 'common.male', null, '8a8ab0b246dc81120146dc8181cd005f');
INSERT INTO `t_s_type` VALUES ('8a8ab0b246dc81120146dc8182430077', '1', 'common.female', null, '8a8ab0b246dc81120146dc8181cd005f');
INSERT INTO `t_s_type` VALUES ('8a8ab0ba487c527201487c7863ec001b', 'oracle', 'common.oracle', null, '8a8ab0ba487c527201487c7732790019');
INSERT INTO `t_s_type` VALUES ('8a8ab0ba487c527201487c78aefc001d', 'sqlserver2008', 'common.sqlserver2008', null, '8a8ab0ba487c527201487c7732790019');
INSERT INTO `t_s_type` VALUES ('8a8ab0ba487c527201487c78fbb5001f', 'mysql', 'common.mysql', null, '8a8ab0ba487c527201487c7732790019');
INSERT INTO `t_s_type` VALUES ('f852d85d47ed64a40147ed71f6b40005', '>', '大于', null, 'f852d85d47ed64a40147ed70894c0003');
INSERT INTO `t_s_type` VALUES ('f852d85d47ed64a40147ed72a9dc0007', '>=', '大于等于', null, 'f852d85d47ed64a40147ed70894c0003');
INSERT INTO `t_s_type` VALUES ('f852d85d47ed64a40147ed750e1c0009', '<', '小于', null, 'f852d85d47ed64a40147ed70894c0003');
INSERT INTO `t_s_type` VALUES ('f852d85d47ed64a40147ed753b6f000b', '<=', '小于等于', null, 'f852d85d47ed64a40147ed70894c0003');
INSERT INTO `t_s_type` VALUES ('f852d85d47ed64a40147ed75afe5000d', '=', '等于', null, 'f852d85d47ed64a40147ed70894c0003');
INSERT INTO `t_s_type` VALUES ('f852d85d47ed64a40147ed75ed62000f', 'IN', '包含', null, 'f852d85d47ed64a40147ed70894c0003');
INSERT INTO `t_s_type` VALUES ('f852d85d47ed64a40147ed7638b20011', 'LIKE', '模糊', null, 'f852d85d47ed64a40147ed70894c0003');
INSERT INTO `t_s_type` VALUES ('f852d85d47ed64a40147ed767c240013', '!=', '不等于', null, 'f852d85d47ed64a40147ed70894c0003');

-- ----------------------------
-- Table structure for `t_s_typegroup`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_typegroup`;
CREATE TABLE `t_s_typegroup` (
  `ID` varchar(32) NOT NULL,
  `typegroupcode` varchar(50) default NULL,
  `typegroupname` varchar(50) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_typegroup
-- ----------------------------
INSERT INTO `t_s_typegroup` VALUES ('297e201047e95ee30147e9ba56ce0009', 'orgtype', 'common.org.type');
INSERT INTO `t_s_typegroup` VALUES ('402880884883eff401488415cbb60027', 'smsTplType', '模板类型');
INSERT INTO `t_s_typegroup` VALUES ('402881e946e71f5f0146e73619bb0002', 'lang', 'common.mutilang');
INSERT INTO `t_s_typegroup` VALUES ('8a8ab0b246dc81120146dc8181aa0056', 'icontype', 'common.icon.type');
INSERT INTO `t_s_typegroup` VALUES ('8a8ab0b246dc81120146dc8181b10057', 'order', 'lang.order.type');
INSERT INTO `t_s_typegroup` VALUES ('8a8ab0b246dc81120146dc8181b50058', 'custom', 'lang.customer.type');
INSERT INTO `t_s_typegroup` VALUES ('8a8ab0b246dc81120146dc8181b90059', 'service', 'lang.service.item.type');
INSERT INTO `t_s_typegroup` VALUES ('8a8ab0b246dc81120146dc8181bc005a', 'searchmode', 'common.query.module');
INSERT INTO `t_s_typegroup` VALUES ('8a8ab0b246dc81120146dc8181c0005b', 'yesorno', 'common.logic.condition');
INSERT INTO `t_s_typegroup` VALUES ('8a8ab0b246dc81120146dc8181c3005c', 'fieldtype', 'field.type');
INSERT INTO `t_s_typegroup` VALUES ('8a8ab0b246dc81120146dc8181c6005d', 'database', 'common.data.table');
INSERT INTO `t_s_typegroup` VALUES ('8a8ab0b246dc81120146dc8181ca005e', 'fieltype', 'common.document.category');
INSERT INTO `t_s_typegroup` VALUES ('8a8ab0b246dc81120146dc8181cd005f', 'sex', 'common.sex.type');
INSERT INTO `t_s_typegroup` VALUES ('8a8ab0ba487c527201487c7732790019', 'dbtype', 'common.dbtype');
INSERT INTO `t_s_typegroup` VALUES ('f852d85d47ed64a40147ed70894c0003', 'rulecon', '规则条件');

-- ----------------------------
-- Table structure for `t_s_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_user`;
CREATE TABLE `t_s_user` (
  `email` varchar(50) default NULL,
  `mobilePhone` varchar(30) default NULL,
  `officePhone` varchar(20) default NULL,
  `signatureFile` varchar(100) default NULL,
  `id` varchar(32) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_2cuji5h6yorrxgsr8ojndlmal` (`id`),
  CONSTRAINT `FK_2cuji5h6yorrxgsr8ojndlmal` FOREIGN KEY (`id`) REFERENCES `t_s_base_user` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_user
-- ----------------------------
INSERT INTO `t_s_user` VALUES ('', '', '', 'images/renfang/qm/licf.gif', '8a8ab0b246dc81120146dc8181950052');
INSERT INTO `t_s_user` VALUES ('zhangdaiscott@163.com', '13426432910', '7496661', null, '8a8ab0b246dc81120146dc81819d0053');
INSERT INTO `t_s_user` VALUES (null, null, null, null, '8a8ab0b246dc81120146dc8181a10054');
INSERT INTO `t_s_user` VALUES (null, null, null, null, '8a8ab0b246dc81120146dc8181a60055');

-- ----------------------------
-- Table structure for `t_s_user_org`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_user_org`;
CREATE TABLE `t_s_user_org` (
  `ID` varchar(32) NOT NULL,
  `user_id` varchar(32) default NULL,
  `org_id` varchar(32) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_user_org
-- ----------------------------
INSERT INTO `t_s_user_org` VALUES ('402889f3489de53901489de9a0140006', '8a8ab0b246dc81120146dc81819d0053', '402880e447e9a9570147e9b762e30009');
INSERT INTO `t_s_user_org` VALUES ('402889f3489de53901489de9a0150007', '8a8ab0b246dc81120146dc81819d0053', '8a8ab0b246dc81120146dc8180bd0018');
INSERT INTO `t_s_user_org` VALUES ('402889fb486e848101486e89f9fa0001', '8a8ab0b246dc81120146dc8181950052', '8a8ab0b246dc81120146dc8180a20016');
INSERT INTO `t_s_user_org` VALUES ('402889fb486e848101486e89f9fc0002', '8a8ab0b246dc81120146dc8181950052', '402880e447e9a9570147e9b710d20007');
INSERT INTO `t_s_user_org` VALUES ('8a8ab0b246dc81120146dc8181a10054', '8a8ab0b246dc81120146dc8181a10054', '8a8ab0b246dc81120146dc8180a20016');
INSERT INTO `t_s_user_org` VALUES ('8a8ab0b246dc81120146dc8181a60055', '8a8ab0b246dc81120146dc8181a60055', '8a8ab0b246dc81120146dc8180a20016');

-- ----------------------------
-- Table structure for `t_s_version`
-- ----------------------------
DROP TABLE IF EXISTS `t_s_version`;
CREATE TABLE `t_s_version` (
  `ID` varchar(32) NOT NULL,
  `loginpage` varchar(100) default NULL,
  `versioncode` varchar(50) default NULL,
  `versionname` varchar(30) default NULL,
  `versionnum` varchar(20) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_s_version
-- ----------------------------
