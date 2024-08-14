/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t358`;
CREATE DATABASE IF NOT EXISTS `t358` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t358`;

DROP TABLE IF EXISTS `chengguopinggu`;
CREATE TABLE IF NOT EXISTS `chengguopinggu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xiangmu_id` int DEFAULT NULL COMMENT '项目',
  `pingshenzhuanjia_id` int DEFAULT NULL COMMENT '评审专家',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `chengguopinggu_content` text COMMENT '评估意见',
  `pinggu_defen` decimal(10,2) DEFAULT NULL COMMENT '评估得分',
  `chengguopinggu_types` int DEFAULT NULL COMMENT '评估结果 Search111',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '评估时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COMMENT='成果评估';

DELETE FROM `chengguopinggu`;
INSERT INTO `chengguopinggu` (`id`, `xiangmu_id`, `pingshenzhuanjia_id`, `insert_time`, `chengguopinggu_content`, `pinggu_defen`, `chengguopinggu_types`, `update_time`, `create_time`) VALUES
	(15, 9, 2, '2023-02-24 13:28:25', '<p>鬼地方个</p>', 55.00, 3, '2023-02-25 01:22:10', '2023-02-24 13:28:25'),
	(16, 5, 1, '2023-02-24 13:31:07', '<p>大萨达是个</p>', 80.00, 2, '2023-02-24 13:40:47', '2023-02-24 13:31:07'),
	(17, 15, 2, '2023-02-25 01:19:53', '<p>挂号费地方绝代风华</p>', 99.00, 1, '2023-02-25 01:22:23', '2023-02-25 01:19:53');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2023-02-24 11:23:31'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2023-02-24 11:23:31'),
	(3, 'yanjiufangxiang_types', '研究方向', 1, '研究方向1', NULL, NULL, '2023-02-24 11:23:31'),
	(4, 'yanjiufangxiang_types', '研究方向', 2, '研究方向2', NULL, NULL, '2023-02-24 11:23:31'),
	(5, 'yanjiufangxiang_types', '研究方向', 3, '研究方向3', NULL, NULL, '2023-02-24 11:23:31'),
	(6, 'yanjiufangxiang_types', '研究方向', 4, '研究方向4', NULL, NULL, '2023-02-24 11:23:31'),
	(7, 'laiyuan_types', '课题来源', 1, '课题来源1', NULL, NULL, '2023-02-24 11:23:31'),
	(8, 'laiyuan_types', '课题来源', 2, '课题来源2', NULL, NULL, '2023-02-24 11:23:31'),
	(9, 'xiangmu_types', '项目类型', 1, '项目类型1', NULL, NULL, '2023-02-24 11:23:31'),
	(10, 'xiangmu_types', '项目类型', 2, '项目类型2', NULL, NULL, '2023-02-24 11:23:31'),
	(11, 'xiangmu_types', '项目类型', 3, '项目类型3', NULL, NULL, '2023-02-24 11:23:31'),
	(12, 'xiangmu_types', '项目类型', 4, '项目类型4', NULL, NULL, '2023-02-24 11:23:31'),
	(13, 'xiangmu_yesno_types', '申请状态', 1, '待审核', NULL, NULL, '2023-02-24 11:23:31'),
	(14, 'xiangmu_yesno_types', '申请状态', 2, '同意', NULL, NULL, '2023-02-24 11:23:31'),
	(15, 'xiangmu_yesno_types', '申请状态', 3, '拒绝', NULL, NULL, '2023-02-24 11:23:31'),
	(16, 'chengguopinggu_types', '评估结果', 1, '非常好', NULL, NULL, '2023-02-24 11:23:31'),
	(17, 'chengguopinggu_types', '评估结果', 2, '一般', NULL, NULL, '2023-02-24 11:23:31'),
	(18, 'chengguopinggu_types', '评估结果', 3, '差', NULL, NULL, '2023-02-24 11:23:31'),
	(19, 'gonggao_types', '公告类型', 1, '公告类型1', NULL, NULL, '2023-02-24 11:23:31'),
	(20, 'gonggao_types', '公告类型', 2, '公告类型2', NULL, NULL, '2023-02-24 11:23:31'),
	(21, 'yanjiufangxiang_types', '研究方向', 5, '研究方向5', NULL, '', '2023-02-25 01:22:58');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='公告';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '公告名称1', 1, '2023-02-24 11:24:26', '公告详情1', '2023-02-24 11:24:26'),
	(2, '公告名称2', 1, '2023-02-24 11:24:26', '公告详情2', '2023-02-24 11:24:26'),
	(3, '公告名称3', 2, '2023-02-24 11:24:26', '公告详情3', '2023-02-24 11:24:26'),
	(4, '公告名称4', 2, '2023-02-24 11:24:26', '公告详情4', '2023-02-24 11:24:26'),
	(5, '公告名称5', 1, '2023-02-24 11:24:26', '公告详情5', '2023-02-24 11:24:26'),
	(6, '公告名称6', 2, '2023-02-24 11:24:26', '公告详情6', '2023-02-24 11:24:26'),
	(7, '公告名称7', 2, '2023-02-24 11:24:26', '公告详情7', '2023-02-24 11:24:26'),
	(8, '公告名称8', 2, '2023-02-24 11:24:26', '公告详情8', '2023-02-24 11:24:26'),
	(9, '公告名称9', 2, '2023-02-24 11:24:26', '公告详情9', '2023-02-24 11:24:26'),
	(10, '公告名称10', 2, '2023-02-24 11:24:26', '公告详情10', '2023-02-24 11:24:26'),
	(11, '公告名称11', 1, '2023-02-24 11:24:26', '公告详情11', '2023-02-24 11:24:26'),
	(12, '公告名称12', 2, '2023-02-24 11:24:26', '公告详情12', '2023-02-24 11:24:26'),
	(13, '公告名称13', 1, '2023-02-24 11:24:26', '公告详情13', '2023-02-24 11:24:26'),
	(14, '公告名称14', 1, '2023-02-24 11:24:26', '公告详情14', '2023-02-24 11:24:26');

DROP TABLE IF EXISTS `pingshenzhuanjia`;
CREATE TABLE IF NOT EXISTS `pingshenzhuanjia` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `pingshenzhuanjia_name` varchar(200) DEFAULT NULL COMMENT '评审专家姓名 Search111 ',
  `pingshenzhuanjia_phone` varchar(200) DEFAULT NULL COMMENT '评审专家手机号',
  `pingshenzhuanjia_id_number` varchar(200) DEFAULT NULL COMMENT '评审专家身份证号',
  `pingshenzhuanjia_photo` varchar(200) DEFAULT NULL COMMENT '评审专家头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `pingshenzhuanjia_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `yanjiufangxiang_types` int DEFAULT NULL COMMENT '研究方向 Search111 ',
  `pingshenzhuanjia_content` text COMMENT '专家介绍',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='评审专家';

DELETE FROM `pingshenzhuanjia`;
INSERT INTO `pingshenzhuanjia` (`id`, `username`, `password`, `pingshenzhuanjia_name`, `pingshenzhuanjia_phone`, `pingshenzhuanjia_id_number`, `pingshenzhuanjia_photo`, `sex_types`, `pingshenzhuanjia_email`, `yanjiufangxiang_types`, `pingshenzhuanjia_content`, `create_time`) VALUES
	(1, '评审专家1', '123456', '评审专家姓名1', '17703786901', '410224199010102001', 'upload/pingshenzhuanjia1.jpg', 1, '1@qq.com', 4, '<p>专家介绍1广东省发生</p>', '2023-02-24 11:24:26'),
	(2, '评审专家2', '123456', '评审专家姓名2', '17703786902', '410224199010102002', 'upload/pingshenzhuanjia2.jpg', 2, '2@qq.com', 3, '专家介绍2', '2023-02-24 11:24:26'),
	(3, '评审专家3', '123456', '评审专家姓名3', '17703786903', '410224199010102003', 'upload/pingshenzhuanjia3.jpg', 1, '3@qq.com', 1, '专家介绍3', '2023-02-24 11:24:26');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', '9xnu3j8pqmixzme2ee6hc876sfucgjyt', '2023-02-24 12:11:42', '2024-08-09 04:32:40'),
	(2, 1, 'a1', 'pingshenzhuanjia', '评审专家', 'aotj9i053l8tv6p1qfm69bplq6j215eb', '2023-02-24 13:35:42', '2024-08-09 04:33:36'),
	(3, 1, 'a1', 'yonghu', '用户', 'ct0affhxs4k1mwlsx57x3zz6a7gftb3p', '2023-02-25 01:16:15', '2024-08-09 04:33:49'),
	(4, 4, 'a9', 'yonghu', '用户', 'dq1x9rb4rnvg4w035v6grocej232zchd', '2023-02-25 01:17:04', '2023-02-25 02:17:05'),
	(5, 2, 'a2', 'pingshenzhuanjia', '评审专家', '41jwl6668gx3v5t40dmkyyaazepmo08s', '2023-02-25 01:21:55', '2023-02-25 02:21:55');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-02-24 11:23:31');

DROP TABLE IF EXISTS `xiangmu`;
CREATE TABLE IF NOT EXISTS `xiangmu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `xiangmu_uuid_number` varchar(200) DEFAULT NULL COMMENT '项目编号',
  `xiangmu_name` varchar(200) DEFAULT NULL COMMENT '项目名称  Search111 ',
  `laiyuan_types` int DEFAULT NULL COMMENT '课题来源 Search111',
  `xiangmu_types` int DEFAULT NULL COMMENT '项目类型 Search111',
  `kaishi_time` timestamp NULL DEFAULT NULL COMMENT '项目开始时间',
  `jieshu_time` timestamp NULL DEFAULT NULL COMMENT '项目结束时间',
  `huafei_jine` decimal(10,2) DEFAULT NULL COMMENT '项目花费',
  `yanjiufangxiang_types` int DEFAULT NULL COMMENT '所属方向 Search111',
  `yanjiufangxiang_file` varchar(200) DEFAULT NULL COMMENT '附件',
  `xiangmu_content` text COMMENT '项目内容',
  `xiangmu_chengguo_content` text COMMENT '项目成果',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `xiangmu_yesno_types` int DEFAULT NULL COMMENT '申请状态 Search111',
  `xiangmu_yesno_text` text COMMENT '审核意见',
  `xiangmu_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='项目';

DELETE FROM `xiangmu`;
INSERT INTO `xiangmu` (`id`, `yonghu_id`, `xiangmu_uuid_number`, `xiangmu_name`, `laiyuan_types`, `xiangmu_types`, `kaishi_time`, `jieshu_time`, `huafei_jine`, `yanjiufangxiang_types`, `yanjiufangxiang_file`, `xiangmu_content`, `xiangmu_chengguo_content`, `insert_time`, `xiangmu_yesno_types`, `xiangmu_yesno_text`, `xiangmu_shenhe_time`, `create_time`) VALUES
	(1, 3, '1677237866605', '项目名称1', 2, 4, '2023-02-24 11:24:26', '2023-02-24 11:24:26', 149.95, 1, 'upload/file.rar', '项目内容1', '项目成果1', '2023-02-24 11:24:26', 1, NULL, NULL, '2023-02-24 11:24:26'),
	(2, 3, '1677237866688', '项目名称2', 2, 4, '2023-02-24 11:24:26', '2023-02-24 11:24:26', 366.35, 2, 'upload/file.rar', '项目内容2', '项目成果2', '2023-02-24 11:24:26', 1, NULL, NULL, '2023-02-24 11:24:26'),
	(3, 2, '1677237866684', '项目名称3', 2, 2, '2023-02-24 11:24:26', '2023-02-24 11:24:26', 310.20, 3, 'upload/file.rar', '项目内容3', '项目成果3', '2023-02-24 11:24:26', 1, NULL, NULL, '2023-02-24 11:24:26'),
	(4, 2, '1677237866599', '项目名称4', 2, 4, '2023-02-24 11:24:26', '2023-02-24 11:24:26', 496.50, 2, 'upload/file.rar', '项目内容4', '项目成果4', '2023-02-24 11:24:26', 2, '通过', '2023-02-24 11:24:26', '2023-02-24 11:24:26'),
	(5, 1, '1677237866630', '项目名称5', 2, 2, '2023-02-24 11:24:26', '2023-02-24 11:24:26', 186.06, 4, 'upload/file.rar', '项目内容5', '项目成果5', '2023-02-24 11:24:26', 2, '通过', '2023-02-24 11:24:26', '2023-02-24 11:24:26'),
	(6, 1, '1677237866670', '项目名称6', 2, 4, '2023-02-24 11:24:26', '2023-02-24 11:24:26', 931.20, 4, 'upload/file.rar', '项目内容6', '项目成果6', '2023-02-24 11:24:26', 2, '通过', '2023-02-24 11:24:26', '2023-02-24 11:24:26'),
	(7, 3, '1677237866695', '项目名称7', 1, 1, '2023-02-24 11:24:26', '2023-02-24 11:24:26', 923.27, 3, 'upload/file.rar', '项目内容7', '项目成果7', '2023-02-24 11:24:26', 2, '通过', '2023-02-24 11:24:26', '2023-02-24 11:24:26'),
	(8, 3, '1677237866647', '项目名称8', 1, 1, '2023-02-24 11:24:26', '2023-02-24 11:24:26', 58.34, 4, 'upload/file.rar', '项目内容8', '项目成果8', '2023-02-24 11:24:26', 2, '通过', '2023-02-24 11:24:26', '2023-02-24 11:24:26'),
	(9, 3, '1677237866597', '项目名称9', 2, 4, '2023-02-24 11:24:26', '2023-02-24 11:24:26', 29.32, 3, 'upload/file.rar', '项目内容9', '项目成果9', '2023-02-24 11:24:26', 2, '通过', '2023-02-24 11:24:26', '2023-02-24 11:24:26'),
	(10, 3, '1677237866612', '项目名称10', 1, 2, '2023-02-24 11:24:26', '2023-02-24 11:24:26', 303.31, 4, 'upload/file.rar', '项目内容10', '项目成果10', '2023-02-24 11:24:26', 1, NULL, NULL, '2023-02-24 11:24:26'),
	(11, 1, '1677237866619', '项目名称11', 2, 2, '2023-02-24 11:24:26', '2023-02-24 11:24:26', 262.32, 1, 'upload/file.rar', '项目内容11', '项目成果11', '2023-02-24 11:24:26', 3, '不通过', '2023-02-24 11:24:26', '2023-02-24 11:24:26'),
	(12, 2, '1677237866612', '项目名称12', 1, 3, '2023-02-24 11:24:26', '2023-02-24 11:24:26', 737.86, 4, 'upload/file.rar', '项目内容12', '项目成果12', '2023-02-24 11:24:26', 3, '不通过', '2023-02-24 11:24:26', '2023-02-24 11:24:26'),
	(13, 2, '1677237866621', '项目名称13', 2, 1, '2023-02-24 11:24:26', '2023-02-24 11:24:26', 611.06, 2, 'upload/file.rar', '项目内容13', '项目成果13', '2023-02-24 11:24:26', 1, NULL, NULL, '2023-02-24 11:24:26'),
	(14, 2, '1677237866691', '项目名称14', 1, 4, '2023-02-24 11:24:26', '2023-02-24 11:24:26', 113.82, 2, 'upload/file.rar', '项目内容14', '项目成果14', '2023-02-24 11:24:26', 1, NULL, NULL, '2023-02-24 11:24:26'),
	(15, 4, '1677287847975', '项目111', 1, 3, '2023-02-06 16:00:00', '2023-02-25 01:17:43', 55000.00, 3, '/upload/1677287873277.doc', '<p>项目内容1111</p>', '<p>发都是水电费根深蒂固</p>', '2023-02-25 01:18:02', 2, '第三方第三方士大夫的', '2023-02-25 01:18:28', '2023-02-25 01:18:02');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', '17703786901', '410224199010102001', 'upload/yonghu1.jpg', 2, '1@qq.com', '2023-02-24 11:24:26'),
	(2, '用户2', '123456', '用户姓名2', '17703786902', '410224199010102002', 'upload/yonghu2.jpg', 1, '2@qq.com', '2023-02-24 11:24:26'),
	(3, '用户3', '123456', '用户姓名3', '17703786903', '410224199010102003', 'upload/yonghu3.jpg', 1, '3@qq.com', '2023-02-24 11:24:26'),
	(4, '用户4', '123456', '张9', '17703786905', '4102241996102320051', '/upload/1677287835817.jpg', 1, '5@qq.com', '2023-02-25 01:16:58');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
