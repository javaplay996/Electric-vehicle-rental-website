/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - diandongchezulin
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`diandongchezulin` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `diandongchezulin`;

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1608781605726 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (1608781605725,'2020-12-24 11:46:45',1608781436204,NULL,'这里可以咨询  可以求救 后台管理员会回复',NULL,0);

/*Table structure for table `cheliang` */

DROP TABLE IF EXISTS `cheliang`;

CREATE TABLE `cheliang` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) DEFAULT NULL COMMENT '车辆牌照 Search',
  `brand` varchar(200) DEFAULT NULL COMMENT '品牌',
  `design` varchar(200) DEFAULT NULL COMMENT '款式',
  `img_photo` varchar(200) DEFAULT NULL COMMENT '车辆图片',
  `money` int(11) DEFAULT NULL COMMENT '租赁价格/时',
  `age` int(11) DEFAULT NULL COMMENT '车龄',
  `zt_types` int(11) DEFAULT NULL COMMENT '车辆状态',
  `miaoshu_content` varchar(200) DEFAULT NULL COMMENT '车辆描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='车辆';

/*Data for the table `cheliang` */

insert  into `cheliang`(`id`,`name`,`brand`,`design`,`img_photo`,`money`,`age`,`zt_types`,`miaoshu_content`) values (1,'11111','品牌1','款式1','http://localhost:8080/diandongchezulin/file/download?fileName=1616224896929.jpg',10,1,1,'<img src=\"http://localhost:8080/diandongchezulin/upload/1616224896931.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/diandongchezulin/upload/1616224896931.jpg\">\r\n'),(2,'22222','品牌2','款式2','http://localhost:8080/diandongchezulin/file/download?fileName=1616224888572.jpg',20,2,1,'<img src=\"http://localhost:8080/diandongchezulin/upload/1616224888573.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/diandongchezulin/upload/1616224888573.jpg\">\r\n'),(3,'33333','品牌3','款式3','http://localhost:8080/diandongchezulin/file/download?fileName=1616224878742.jpg',30,3,2,'<img src=\"http://localhost:8080/diandongchezulin/upload/1616224878743.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/diandongchezulin/upload/1616224878743.jpg\">\r\n'),(4,'44444','品牌4','款式4','http://localhost:8080/diandongchezulin/file/download?fileName=1616224871259.jpg',40,4,2,'<img src=\"http://localhost:8080/diandongchezulin/upload/1616224871250.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/diandongchezulin/upload/1616224871250.jpg\">\r\n'),(5,'55555','雅迪','高大上款','http://localhost:8080/diandongchezulin/file/download?fileName=1616226219360.jpg',100,1,1,'没有\r\n');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/diandongchezulin/upload/1616224935590.jpg'),(2,'picture2','http://localhost:8080/diandongchezulin/upload/1616224941165.jpg'),(3,'picture3','http://localhost:8080/diandongchezulin/upload/1616224946304.jpg'),(4,'picture4','http://localhost:8080/diandongchezulin/upload/1616224951408.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-02-25 11:41:54'),(2,'sex_types','性别',2,'女',NULL,'2021-02-25 11:41:54'),(3,'sf_types','是否',1,'是',NULL,'2021-02-25 11:41:54'),(4,'sf_types','是否',2,'否',NULL,'2021-02-25 11:41:54'),(5,'zt_types','车辆状态',1,'已租',NULL,'2021-02-25 11:41:54'),(6,'zt_types','车辆状态',2,'未租',NULL,'2021-02-25 11:41:54');

/*Table structure for table `hetong` */

DROP TABLE IF EXISTS `hetong`;

CREATE TABLE `hetong` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) DEFAULT NULL COMMENT '合同名称 Search',
  `wenjian_file` varchar(200) DEFAULT NULL COMMENT '合同文件',
  `yh_types` int(11) DEFAULT NULL COMMENT '签署人',
  `qianding_time` timestamp NULL DEFAULT NULL COMMENT '签署日期',
  `pledge` int(11) DEFAULT NULL COMMENT '押金',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='租赁合同';

/*Data for the table `hetong` */

insert  into `hetong`(`id`,`name`,`wenjian_file`,`yh_types`,`qianding_time`,`pledge`) values (1,'合同名称1','http://localhost:8080/diandongchezulin/file/download?fileName=1616226909516.doc',2,'2021-03-20 15:55:10',1000),(2,'合同名称2','http://localhost:8080/diandongchezulin/file/download?fileName=1616226926799.xls',2,'2021-03-20 15:55:28',1000);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`picture`,`content`) values (1,'2020-12-24 11:36:16','标题1','http://localhost:8080/diandongchezulin/upload/1616224909238.jpg','内容1\r\n'),(2,'2020-12-24 11:36:16','标题2','http://localhost:8080/diandongchezulin/upload/1616224914991.jpg','内容2\r\n'),(3,'2020-12-24 11:36:16','标题3','http://localhost:8080/diandongchezulin/upload/1616224919193.jpg','内容3\r\n'),(4,'2020-12-24 11:36:16','标题4','http://localhost:8080/diandongchezulin/upload/1616224923464.jpg','内容4\r\n');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1613638715480 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1612504694204,'2021-02-05 13:58:14',6,2,'yishengzuozhen','医生姓名2','http://localhost:8080/jspmb254v/upload/yishengzuozhen_touxiang2.jpg'),(1612505207834,'2021-02-05 14:06:47',1608781436204,2,'yishengzuozhen','医生姓名2','http://localhost:8080/jspmb254v/upload/yishengzuozhen_touxiang2.jpg'),(1613638715479,'2021-02-18 16:58:34',1608781436204,1,'yaopin','药品1','http://localhost:8080/jspmb254v/upload/yaopin_tupian1.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` int(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','33aeft98evw8u66qdjmcr2ur339gwt16','2021-01-28 18:04:51','2021-04-21 10:32:33'),(2,1,'小札','users','用户','xsphz89py99b6skwsxxg79hdl2xfseyd','2021-02-03 16:33:33','2021-04-21 10:55:36'),(3,30,'123','users',NULL,'31ztl98nm0uiodqbiajww0ig3bkqm92z','2021-02-03 16:59:57','2021-02-03 17:59:57'),(4,30,'123','users','用户','y33tglpuy0aacwtcyu9x6ewodbs15tox','2021-02-03 17:05:40','2021-02-03 18:05:57'),(5,32,'1233','users','用户','vkl4u1yicgsxytzrhxztol20vp3ha6g0','2021-02-03 17:15:57','2021-02-03 18:16:16'),(6,34,'uamm','users','用户','h6dq0z9qux5jyjwfondkawy98o7mdu3l','2021-02-03 17:56:00','2021-02-03 18:56:00'),(7,1,'房东1','users','房东','0bes8lkk0ld015fl4pdbki29erz1gyrn','2021-02-06 10:36:26','2021-02-18 16:33:02');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) NOT NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-01-28 18:04:51');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) DEFAULT NULL COMMENT '名称  Search111',
  `username` varchar(255) DEFAULT NULL COMMENT '账号',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `img_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` tinyint(4) DEFAULT NULL COMMENT '性别  Search111',
  `phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `money` int(255) DEFAULT '0' COMMENT '余额',
  `role` varchar(255) DEFAULT NULL COMMENT '身份',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`name`,`username`,`password`,`img_photo`,`sex_types`,`phone`,`money`,`role`) values (1,'小金','111','111','http://localhost:8080/diandongchezulin/file/download?fileName=1616224840652.jpg',1,'17796312333',9878903,'用户'),(2,'小札','222','222','http://localhost:8080/diandongchezulin/file/download?fileName=1616224832916.jpg',2,'12312312333',0,'用户');

/*Table structure for table `zulin` */

DROP TABLE IF EXISTS `zulin`;

CREATE TABLE `zulin` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `cl_types` int(11) DEFAULT NULL COMMENT '车辆信息',
  `yh_types` int(11) DEFAULT NULL COMMENT '租车用户',
  `day` int(11) DEFAULT NULL COMMENT '租赁期限',
  `sf_types` int(11) DEFAULT NULL COMMENT '是否签订合同 Search',
  `maxmoney` int(11) DEFAULT NULL COMMENT '总价格',
  `pledge` int(11) DEFAULT NULL COMMENT '押金',
  `zhuangtai` int(11) DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='租赁模块';

/*Data for the table `zulin` */

insert  into `zulin`(`id`,`cl_types`,`yh_types`,`day`,`sf_types`,`maxmoney`,`pledge`,`zhuangtai`) values (3,3,1,19,2,570,0,1),(4,4,1,2,2,80,32,NULL),(5,5,1,12,2,1200,480,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
