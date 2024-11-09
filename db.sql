/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmqr7n9
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmqr7n9` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmqr7n9`;

/*Table structure for table `chexing` */

DROP TABLE IF EXISTS `chexing`;

CREATE TABLE `chexing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chexing` varchar(200) DEFAULT NULL COMMENT '车型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='车型';

/*Data for the table `chexing` */

insert  into `chexing`(`id`,`addtime`,`chexing`) values (31,'2021-04-27 19:09:34','车型1');
insert  into `chexing`(`id`,`addtime`,`chexing`) values (32,'2021-04-27 19:09:34','车型2');
insert  into `chexing`(`id`,`addtime`,`chexing`) values (33,'2021-04-27 19:09:34','车型3');
insert  into `chexing`(`id`,`addtime`,`chexing`) values (34,'2021-04-27 19:09:34','车型4');
insert  into `chexing`(`id`,`addtime`,`chexing`) values (35,'2021-04-27 19:09:34','车型5');
insert  into `chexing`(`id`,`addtime`,`chexing`) values (36,'2021-04-27 19:09:34','车型6');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmqr7n9/upload/1619521845564.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssmqr7n9/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssmqr7n9/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `haichejiesuan` */

DROP TABLE IF EXISTS `haichejiesuan`;

CREATE TABLE `haichejiesuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `chexing` varchar(200) DEFAULT NULL COMMENT '车型',
  `cheliangyanse` varchar(200) DEFAULT NULL COMMENT '车辆颜色',
  `chuzujiage` int(11) DEFAULT NULL COMMENT '出租价格',
  `xuzuzujin` int(11) DEFAULT NULL COMMENT '续租租金',
  `shigufei` int(11) DEFAULT NULL COMMENT '事故费',
  `fajinfei` int(11) DEFAULT NULL COMMENT '罚金费',
  `qitafeiyong` int(11) DEFAULT NULL COMMENT '其他费用',
  `zonge` int(11) DEFAULT NULL COMMENT '总额',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shijian` date DEFAULT NULL COMMENT '时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='还车结算';

/*Data for the table `haichejiesuan` */

insert  into `haichejiesuan`(`id`,`addtime`,`chepaihao`,`chexing`,`cheliangyanse`,`chuzujiage`,`xuzuzujin`,`shigufei`,`fajinfei`,`qitafeiyong`,`zonge`,`tupian`,`shijian`,`zhanghao`,`xingming`,`ispay`) values (81,'2021-04-27 19:09:34','车牌号1','车型1','车辆颜色1',1,1,1,1,1,1,'http://localhost:8080/ssmqr7n9/upload/haichejiesuan_tupian1.jpg','2021-04-27','账号1','姓名1','未支付');
insert  into `haichejiesuan`(`id`,`addtime`,`chepaihao`,`chexing`,`cheliangyanse`,`chuzujiage`,`xuzuzujin`,`shigufei`,`fajinfei`,`qitafeiyong`,`zonge`,`tupian`,`shijian`,`zhanghao`,`xingming`,`ispay`) values (82,'2021-04-27 19:09:34','车牌号2','车型2','车辆颜色2',2,2,2,2,2,2,'http://localhost:8080/ssmqr7n9/upload/haichejiesuan_tupian2.jpg','2021-04-27','账号2','姓名2','未支付');
insert  into `haichejiesuan`(`id`,`addtime`,`chepaihao`,`chexing`,`cheliangyanse`,`chuzujiage`,`xuzuzujin`,`shigufei`,`fajinfei`,`qitafeiyong`,`zonge`,`tupian`,`shijian`,`zhanghao`,`xingming`,`ispay`) values (83,'2021-04-27 19:09:34','车牌号3','车型3','车辆颜色3',3,3,3,3,3,3,'http://localhost:8080/ssmqr7n9/upload/haichejiesuan_tupian3.jpg','2021-04-27','账号3','姓名3','未支付');
insert  into `haichejiesuan`(`id`,`addtime`,`chepaihao`,`chexing`,`cheliangyanse`,`chuzujiage`,`xuzuzujin`,`shigufei`,`fajinfei`,`qitafeiyong`,`zonge`,`tupian`,`shijian`,`zhanghao`,`xingming`,`ispay`) values (84,'2021-04-27 19:09:34','车牌号4','车型4','车辆颜色4',4,4,4,4,4,4,'http://localhost:8080/ssmqr7n9/upload/haichejiesuan_tupian4.jpg','2021-04-27','账号4','姓名4','未支付');
insert  into `haichejiesuan`(`id`,`addtime`,`chepaihao`,`chexing`,`cheliangyanse`,`chuzujiage`,`xuzuzujin`,`shigufei`,`fajinfei`,`qitafeiyong`,`zonge`,`tupian`,`shijian`,`zhanghao`,`xingming`,`ispay`) values (85,'2021-04-27 19:09:34','车牌号5','车型5','车辆颜色5',5,5,5,5,5,5,'http://localhost:8080/ssmqr7n9/upload/haichejiesuan_tupian5.jpg','2021-04-27','账号5','姓名5','未支付');
insert  into `haichejiesuan`(`id`,`addtime`,`chepaihao`,`chexing`,`cheliangyanse`,`chuzujiage`,`xuzuzujin`,`shigufei`,`fajinfei`,`qitafeiyong`,`zonge`,`tupian`,`shijian`,`zhanghao`,`xingming`,`ispay`) values (86,'2021-04-27 19:09:34','车牌号6','车型6','车辆颜色6',6,6,6,6,6,6,'http://localhost:8080/ssmqr7n9/upload/haichejiesuan_tupian6.jpg','2021-04-27','账号6','姓名6','未支付');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='租赁资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (111,'2021-04-27 19:09:34','标题1','简介111111','http://localhost:8080/ssmqr7n9/upload/news_picture1.jpg','<p>内容111111111</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (112,'2021-04-27 19:09:34','标题2','简介2','http://localhost:8080/ssmqr7n9/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (113,'2021-04-27 19:09:34','标题3','简介3','http://localhost:8080/ssmqr7n9/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (114,'2021-04-27 19:09:34','标题4','简介4','http://localhost:8080/ssmqr7n9/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (116,'2021-04-27 19:09:34','标题6','简介6','http://localhost:8080/ssmqr7n9/upload/news_picture6.jpg','内容6');

/*Table structure for table `qichechuzu` */

DROP TABLE IF EXISTS `qichechuzu`;

CREATE TABLE `qichechuzu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `chexing` varchar(200) DEFAULT NULL COMMENT '车型',
  `cheliangyanse` varchar(200) DEFAULT NULL COMMENT '车辆颜色',
  `cheliangyajin` int(11) DEFAULT NULL COMMENT '车辆押金',
  `chuzuzhuangtai` varchar(200) DEFAULT NULL COMMENT '出租状态',
  `cheliangmiaoshu` longtext COMMENT '车辆描述',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `hetong` varchar(200) DEFAULT NULL COMMENT '合同',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shijian` date DEFAULT NULL COMMENT '时间',
  `rizujin` int(11) DEFAULT NULL COMMENT '日租金',
  `shiyongtianshu` int(11) DEFAULT NULL COMMENT '使用天数',
  `chuzujiage` int(11) DEFAULT NULL COMMENT '出租价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='汽车出租';

/*Data for the table `qichechuzu` */

insert  into `qichechuzu`(`id`,`addtime`,`chepaihao`,`chexing`,`cheliangyanse`,`cheliangyajin`,`chuzuzhuangtai`,`cheliangmiaoshu`,`tupian`,`hetong`,`zhanghao`,`xingming`,`shijian`,`rizujin`,`shiyongtianshu`,`chuzujiage`) values (51,'2021-04-27 19:09:34','车牌号1','车型1','车辆颜色1',1,'出租状态1','车辆描述1','http://localhost:8080/ssmqr7n9/upload/qichechuzu_tupian1.jpg','','账号1','姓名1','2021-04-27',1,1,1);
insert  into `qichechuzu`(`id`,`addtime`,`chepaihao`,`chexing`,`cheliangyanse`,`cheliangyajin`,`chuzuzhuangtai`,`cheliangmiaoshu`,`tupian`,`hetong`,`zhanghao`,`xingming`,`shijian`,`rizujin`,`shiyongtianshu`,`chuzujiage`) values (52,'2021-04-27 19:09:34','车牌号2','车型2','车辆颜色2',2,'出租状态2','车辆描述2','http://localhost:8080/ssmqr7n9/upload/qichechuzu_tupian2.jpg','','账号2','姓名2','2021-04-27',2,2,2);
insert  into `qichechuzu`(`id`,`addtime`,`chepaihao`,`chexing`,`cheliangyanse`,`cheliangyajin`,`chuzuzhuangtai`,`cheliangmiaoshu`,`tupian`,`hetong`,`zhanghao`,`xingming`,`shijian`,`rizujin`,`shiyongtianshu`,`chuzujiage`) values (53,'2021-04-27 19:09:34','车牌号3','车型3','车辆颜色3',3,'出租状态3','车辆描述3','http://localhost:8080/ssmqr7n9/upload/qichechuzu_tupian3.jpg','','账号3','姓名3','2021-04-27',3,3,3);
insert  into `qichechuzu`(`id`,`addtime`,`chepaihao`,`chexing`,`cheliangyanse`,`cheliangyajin`,`chuzuzhuangtai`,`cheliangmiaoshu`,`tupian`,`hetong`,`zhanghao`,`xingming`,`shijian`,`rizujin`,`shiyongtianshu`,`chuzujiage`) values (54,'2021-04-27 19:09:34','车牌号4','车型4','车辆颜色4',4,'出租状态4','车辆描述4','http://localhost:8080/ssmqr7n9/upload/qichechuzu_tupian4.jpg','','账号4','姓名4','2021-04-27',4,4,4);
insert  into `qichechuzu`(`id`,`addtime`,`chepaihao`,`chexing`,`cheliangyanse`,`cheliangyajin`,`chuzuzhuangtai`,`cheliangmiaoshu`,`tupian`,`hetong`,`zhanghao`,`xingming`,`shijian`,`rizujin`,`shiyongtianshu`,`chuzujiage`) values (55,'2021-04-27 19:09:34','车牌号5','车型5','车辆颜色5',5,'出租状态5','车辆描述5','http://localhost:8080/ssmqr7n9/upload/qichechuzu_tupian5.jpg','','账号5','姓名5','2021-04-27',5,5,5);
insert  into `qichechuzu`(`id`,`addtime`,`chepaihao`,`chexing`,`cheliangyanse`,`cheliangyajin`,`chuzuzhuangtai`,`cheliangmiaoshu`,`tupian`,`hetong`,`zhanghao`,`xingming`,`shijian`,`rizujin`,`shiyongtianshu`,`chuzujiage`) values (56,'2021-04-27 19:09:34','车牌号6','车型6','车辆颜色6',6,'出租状态6','车辆描述6','http://localhost:8080/ssmqr7n9/upload/qichechuzu_tupian6.jpg','','账号6','姓名6','2021-04-27',6,6,6);

/*Table structure for table `qichejiayou` */

DROP TABLE IF EXISTS `qichejiayou`;

CREATE TABLE `qichejiayou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `chexing` varchar(200) DEFAULT NULL COMMENT '车型',
  `cheliangyanse` varchar(200) DEFAULT NULL COMMENT '车辆颜色',
  `qiyouxinghao` varchar(200) DEFAULT NULL COMMENT '汽油型号',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='汽车加油';

/*Data for the table `qichejiayou` */

insert  into `qichejiayou`(`id`,`addtime`,`chepaihao`,`chexing`,`cheliangyanse`,`qiyouxinghao`,`riqi`,`tupian`) values (71,'2021-04-27 19:09:34','车牌号1','车型1','车辆颜色1','汽油型号1','2021-04-27','http://localhost:8080/ssmqr7n9/upload/qichejiayou_tupian1.jpg');
insert  into `qichejiayou`(`id`,`addtime`,`chepaihao`,`chexing`,`cheliangyanse`,`qiyouxinghao`,`riqi`,`tupian`) values (72,'2021-04-27 19:09:34','车牌号2','车型2','车辆颜色2','汽油型号2','2021-04-27','http://localhost:8080/ssmqr7n9/upload/qichejiayou_tupian2.jpg');
insert  into `qichejiayou`(`id`,`addtime`,`chepaihao`,`chexing`,`cheliangyanse`,`qiyouxinghao`,`riqi`,`tupian`) values (73,'2021-04-27 19:09:34','车牌号3','车型3','车辆颜色3','汽油型号3','2021-04-27','http://localhost:8080/ssmqr7n9/upload/qichejiayou_tupian3.jpg');
insert  into `qichejiayou`(`id`,`addtime`,`chepaihao`,`chexing`,`cheliangyanse`,`qiyouxinghao`,`riqi`,`tupian`) values (74,'2021-04-27 19:09:34','车牌号4','车型4','车辆颜色4','汽油型号4','2021-04-27','http://localhost:8080/ssmqr7n9/upload/qichejiayou_tupian4.jpg');
insert  into `qichejiayou`(`id`,`addtime`,`chepaihao`,`chexing`,`cheliangyanse`,`qiyouxinghao`,`riqi`,`tupian`) values (75,'2021-04-27 19:09:34','车牌号5','车型5','车辆颜色5','汽油型号5','2021-04-27','http://localhost:8080/ssmqr7n9/upload/qichejiayou_tupian5.jpg');
insert  into `qichejiayou`(`id`,`addtime`,`chepaihao`,`chexing`,`cheliangyanse`,`qiyouxinghao`,`riqi`,`tupian`) values (76,'2021-04-27 19:09:34','车牌号6','车型6','车辆颜色6','汽油型号6','2021-04-27','http://localhost:8080/ssmqr7n9/upload/qichejiayou_tupian6.jpg');

/*Table structure for table `qicheweixiu` */

DROP TABLE IF EXISTS `qicheweixiu`;

CREATE TABLE `qicheweixiu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `chexing` varchar(200) DEFAULT NULL COMMENT '车型',
  `cheliangyanse` varchar(200) DEFAULT NULL COMMENT '车辆颜色',
  `weixiuneirong` longtext COMMENT '维修内容',
  `weixiurenyuan` varchar(200) DEFAULT NULL COMMENT '维修人员',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shijian` date DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='汽车维修';

/*Data for the table `qicheweixiu` */

insert  into `qicheweixiu`(`id`,`addtime`,`chepaihao`,`chexing`,`cheliangyanse`,`weixiuneirong`,`weixiurenyuan`,`tupian`,`shijian`) values (91,'2021-04-27 19:09:34','车牌号1','车型1','车辆颜色1','维修内容1','维修人员1','http://localhost:8080/ssmqr7n9/upload/qicheweixiu_tupian1.jpg','2021-04-27');
insert  into `qicheweixiu`(`id`,`addtime`,`chepaihao`,`chexing`,`cheliangyanse`,`weixiuneirong`,`weixiurenyuan`,`tupian`,`shijian`) values (92,'2021-04-27 19:09:34','车牌号2','车型2','车辆颜色2','维修内容2','维修人员2','http://localhost:8080/ssmqr7n9/upload/qicheweixiu_tupian2.jpg','2021-04-27');
insert  into `qicheweixiu`(`id`,`addtime`,`chepaihao`,`chexing`,`cheliangyanse`,`weixiuneirong`,`weixiurenyuan`,`tupian`,`shijian`) values (93,'2021-04-27 19:09:34','车牌号3','车型3','车辆颜色3','维修内容3','维修人员3','http://localhost:8080/ssmqr7n9/upload/qicheweixiu_tupian3.jpg','2021-04-27');
insert  into `qicheweixiu`(`id`,`addtime`,`chepaihao`,`chexing`,`cheliangyanse`,`weixiuneirong`,`weixiurenyuan`,`tupian`,`shijian`) values (94,'2021-04-27 19:09:34','车牌号4','车型4','车辆颜色4','维修内容4','维修人员4','http://localhost:8080/ssmqr7n9/upload/qicheweixiu_tupian4.jpg','2021-04-27');
insert  into `qicheweixiu`(`id`,`addtime`,`chepaihao`,`chexing`,`cheliangyanse`,`weixiuneirong`,`weixiurenyuan`,`tupian`,`shijian`) values (95,'2021-04-27 19:09:34','车牌号5','车型5','车辆颜色5','维修内容5','维修人员5','http://localhost:8080/ssmqr7n9/upload/qicheweixiu_tupian5.jpg','2021-04-27');
insert  into `qicheweixiu`(`id`,`addtime`,`chepaihao`,`chexing`,`cheliangyanse`,`weixiuneirong`,`weixiurenyuan`,`tupian`,`shijian`) values (96,'2021-04-27 19:09:34','车牌号6','车型6','车辆颜色6','维修内容6','维修人员6','http://localhost:8080/ssmqr7n9/upload/qicheweixiu_tupian6.jpg','2021-04-27');

/*Table structure for table `qichexuzu` */

DROP TABLE IF EXISTS `qichexuzu`;

CREATE TABLE `qichexuzu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `chexing` varchar(200) DEFAULT NULL COMMENT '车型',
  `cheliangyanse` varchar(200) DEFAULT NULL COMMENT '车辆颜色',
  `cheliangyajin` int(11) DEFAULT NULL COMMENT '车辆押金',
  `chuzujiage` int(11) DEFAULT NULL COMMENT '出租价格',
  `chuzuzhuangtai` varchar(200) DEFAULT NULL COMMENT '出租状态',
  `cheliangmiaoshu` longtext COMMENT '车辆描述',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shijian` date DEFAULT NULL COMMENT '时间',
  `haicheriqi` date DEFAULT NULL COMMENT '还车日期',
  `rizujin` int(11) DEFAULT NULL COMMENT '日租金',
  `xuzutianshu` int(11) DEFAULT NULL COMMENT '续租天数',
  `xuzuzujin` int(11) DEFAULT NULL COMMENT '续租租金',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='汽车续租';

/*Data for the table `qichexuzu` */

insert  into `qichexuzu`(`id`,`addtime`,`chepaihao`,`chexing`,`cheliangyanse`,`cheliangyajin`,`chuzujiage`,`chuzuzhuangtai`,`cheliangmiaoshu`,`tupian`,`zhanghao`,`xingming`,`shijian`,`haicheriqi`,`rizujin`,`xuzutianshu`,`xuzuzujin`) values (61,'2021-04-27 19:09:34','车牌号1','车型1','车辆颜色1',1,1,'已出租','车辆描述1','http://localhost:8080/ssmqr7n9/upload/qichexuzu_tupian1.jpg','账号1','姓名1','2021-04-27','2021-04-27',1,1,1);
insert  into `qichexuzu`(`id`,`addtime`,`chepaihao`,`chexing`,`cheliangyanse`,`cheliangyajin`,`chuzujiage`,`chuzuzhuangtai`,`cheliangmiaoshu`,`tupian`,`zhanghao`,`xingming`,`shijian`,`haicheriqi`,`rizujin`,`xuzutianshu`,`xuzuzujin`) values (62,'2021-04-27 19:09:34','车牌号2','车型2','车辆颜色2',2,2,'已出租','车辆描述2','http://localhost:8080/ssmqr7n9/upload/qichexuzu_tupian2.jpg','账号2','姓名2','2021-04-27','2021-04-27',2,2,2);
insert  into `qichexuzu`(`id`,`addtime`,`chepaihao`,`chexing`,`cheliangyanse`,`cheliangyajin`,`chuzujiage`,`chuzuzhuangtai`,`cheliangmiaoshu`,`tupian`,`zhanghao`,`xingming`,`shijian`,`haicheriqi`,`rizujin`,`xuzutianshu`,`xuzuzujin`) values (63,'2021-04-27 19:09:34','车牌号3','车型3','车辆颜色3',3,3,'已出租','车辆描述3','http://localhost:8080/ssmqr7n9/upload/qichexuzu_tupian3.jpg','账号3','姓名3','2021-04-27','2021-04-27',3,3,3);
insert  into `qichexuzu`(`id`,`addtime`,`chepaihao`,`chexing`,`cheliangyanse`,`cheliangyajin`,`chuzujiage`,`chuzuzhuangtai`,`cheliangmiaoshu`,`tupian`,`zhanghao`,`xingming`,`shijian`,`haicheriqi`,`rizujin`,`xuzutianshu`,`xuzuzujin`) values (64,'2021-04-27 19:09:34','车牌号4','车型4','车辆颜色4',4,4,'已出租','车辆描述4','http://localhost:8080/ssmqr7n9/upload/qichexuzu_tupian4.jpg','账号4','姓名4','2021-04-27','2021-04-27',4,4,4);
insert  into `qichexuzu`(`id`,`addtime`,`chepaihao`,`chexing`,`cheliangyanse`,`cheliangyajin`,`chuzujiage`,`chuzuzhuangtai`,`cheliangmiaoshu`,`tupian`,`zhanghao`,`xingming`,`shijian`,`haicheriqi`,`rizujin`,`xuzutianshu`,`xuzuzujin`) values (65,'2021-04-27 19:09:34','车牌号5','车型5','车辆颜色5',5,5,'已出租','车辆描述5','http://localhost:8080/ssmqr7n9/upload/qichexuzu_tupian5.jpg','账号5','姓名5','2021-04-27','2021-04-27',5,5,5);
insert  into `qichexuzu`(`id`,`addtime`,`chepaihao`,`chexing`,`cheliangyanse`,`cheliangyajin`,`chuzujiage`,`chuzuzhuangtai`,`cheliangmiaoshu`,`tupian`,`zhanghao`,`xingming`,`shijian`,`haicheriqi`,`rizujin`,`xuzutianshu`,`xuzuzujin`) values (66,'2021-04-27 19:09:34','车牌号6','车型6','车辆颜色6',6,6,'已出租','车辆描述6','http://localhost:8080/ssmqr7n9/upload/qichexuzu_tupian6.jpg','账号6','姓名6','2021-04-27','2021-04-27',6,6,6);

/*Table structure for table `shigudengji` */

DROP TABLE IF EXISTS `shigudengji`;

CREATE TABLE `shigudengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `chexing` varchar(200) DEFAULT NULL COMMENT '车型',
  `cheliangyanse` varchar(200) DEFAULT NULL COMMENT '车辆颜色',
  `shiguqiyin` longtext COMMENT '事故起因',
  `shijian` datetime DEFAULT NULL COMMENT '时间',
  `diaochajieguo` longtext COMMENT '调查结果',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='事故登记';

/*Data for the table `shigudengji` */

insert  into `shigudengji`(`id`,`addtime`,`chepaihao`,`chexing`,`cheliangyanse`,`shiguqiyin`,`shijian`,`diaochajieguo`,`tupian`,`zhanghao`,`xingming`) values (101,'2021-04-27 19:09:34','车牌号1','车型1','车辆颜色1','事故起因1','2021-04-27 19:09:34','调查结果1','http://localhost:8080/ssmqr7n9/upload/shigudengji_tupian1.jpg','账号1','姓名1');
insert  into `shigudengji`(`id`,`addtime`,`chepaihao`,`chexing`,`cheliangyanse`,`shiguqiyin`,`shijian`,`diaochajieguo`,`tupian`,`zhanghao`,`xingming`) values (102,'2021-04-27 19:09:34','车牌号2','车型2','车辆颜色2','事故起因2','2021-04-27 19:09:34','调查结果2','http://localhost:8080/ssmqr7n9/upload/shigudengji_tupian2.jpg','账号2','姓名2');
insert  into `shigudengji`(`id`,`addtime`,`chepaihao`,`chexing`,`cheliangyanse`,`shiguqiyin`,`shijian`,`diaochajieguo`,`tupian`,`zhanghao`,`xingming`) values (103,'2021-04-27 19:09:34','车牌号3','车型3','车辆颜色3','事故起因3','2021-04-27 19:09:34','调查结果3','http://localhost:8080/ssmqr7n9/upload/shigudengji_tupian3.jpg','账号3','姓名3');
insert  into `shigudengji`(`id`,`addtime`,`chepaihao`,`chexing`,`cheliangyanse`,`shiguqiyin`,`shijian`,`diaochajieguo`,`tupian`,`zhanghao`,`xingming`) values (104,'2021-04-27 19:09:34','车牌号4','车型4','车辆颜色4','事故起因4','2021-04-27 19:09:34','调查结果4','http://localhost:8080/ssmqr7n9/upload/shigudengji_tupian4.jpg','账号4','姓名4');
insert  into `shigudengji`(`id`,`addtime`,`chepaihao`,`chexing`,`cheliangyanse`,`shiguqiyin`,`shijian`,`diaochajieguo`,`tupian`,`zhanghao`,`xingming`) values (105,'2021-04-27 19:09:34','车牌号5','车型5','车辆颜色5','事故起因5','2021-04-27 19:09:34','调查结果5','http://localhost:8080/ssmqr7n9/upload/shigudengji_tupian5.jpg','账号5','姓名5');
insert  into `shigudengji`(`id`,`addtime`,`chepaihao`,`chexing`,`cheliangyanse`,`shiguqiyin`,`shijian`,`diaochajieguo`,`tupian`,`zhanghao`,`xingming`) values (106,'2021-04-27 19:09:34','车牌号6','车型6','车辆颜色6','事故起因6','2021-04-27 19:09:34','调查结果6','http://localhost:8080/ssmqr7n9/upload/shigudengji_tupian6.jpg','账号6','姓名6');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','k424hb8ahtlcfd2eo4e1ll64cttmu7yu','2021-04-27 19:10:30','2021-04-27 20:10:30');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-27 19:09:34');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`touxiang`) values (11,'2021-04-27 19:09:34','用户1','123456','姓名1','男','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/ssmqr7n9/upload/yonghu_touxiang1.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`touxiang`) values (12,'2021-04-27 19:09:34','用户2','123456','姓名2','男','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/ssmqr7n9/upload/yonghu_touxiang2.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`touxiang`) values (13,'2021-04-27 19:09:34','用户3','123456','姓名3','男','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/ssmqr7n9/upload/yonghu_touxiang3.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`touxiang`) values (14,'2021-04-27 19:09:34','用户4','123456','姓名4','男','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/ssmqr7n9/upload/yonghu_touxiang4.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`touxiang`) values (15,'2021-04-27 19:09:34','用户5','123456','姓名5','男','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/ssmqr7n9/upload/yonghu_touxiang5.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`touxiang`) values (16,'2021-04-27 19:09:34','用户6','123456','姓名6','男','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/ssmqr7n9/upload/yonghu_touxiang6.jpg');

/*Table structure for table `yuangong` */

DROP TABLE IF EXISTS `yuangong`;

CREATE TABLE `yuangong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yuangong` */

insert  into `yuangong`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`touxiang`) values (21,'2021-04-27 19:09:34','员工1','123456','姓名1','男','13823888881','773890001@qq.com','http://localhost:8080/ssmqr7n9/upload/yuangong_touxiang1.jpg');
insert  into `yuangong`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`touxiang`) values (22,'2021-04-27 19:09:34','员工2','123456','姓名2','男','13823888882','773890002@qq.com','http://localhost:8080/ssmqr7n9/upload/yuangong_touxiang2.jpg');
insert  into `yuangong`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`touxiang`) values (23,'2021-04-27 19:09:34','员工3','123456','姓名3','男','13823888883','773890003@qq.com','http://localhost:8080/ssmqr7n9/upload/yuangong_touxiang3.jpg');
insert  into `yuangong`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`touxiang`) values (24,'2021-04-27 19:09:34','员工4','123456','姓名4','男','13823888884','773890004@qq.com','http://localhost:8080/ssmqr7n9/upload/yuangong_touxiang4.jpg');
insert  into `yuangong`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`touxiang`) values (25,'2021-04-27 19:09:34','员工5','123456','姓名5','男','13823888885','773890005@qq.com','http://localhost:8080/ssmqr7n9/upload/yuangong_touxiang5.jpg');
insert  into `yuangong`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`touxiang`) values (26,'2021-04-27 19:09:34','员工6','123456','姓名6','男','13823888886','773890006@qq.com','http://localhost:8080/ssmqr7n9/upload/yuangong_touxiang6.jpg');

/*Table structure for table `zulinxinxi` */

DROP TABLE IF EXISTS `zulinxinxi`;

CREATE TABLE `zulinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `chexing` varchar(200) DEFAULT NULL COMMENT '车型',
  `cheliangyanse` varchar(200) DEFAULT NULL COMMENT '车辆颜色',
  `cheliangyajin` int(11) DEFAULT NULL COMMENT '车辆押金',
  `rizujin` int(11) DEFAULT NULL COMMENT '日租金',
  `chuzuzhuangtai` varchar(200) DEFAULT NULL COMMENT '出租状态',
  `cheliangmiaoshu` longtext COMMENT '车辆描述',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='租赁信息';

/*Data for the table `zulinxinxi` */

insert  into `zulinxinxi`(`id`,`addtime`,`chepaihao`,`chexing`,`cheliangyanse`,`cheliangyajin`,`rizujin`,`chuzuzhuangtai`,`cheliangmiaoshu`,`tupian`) values (41,'2021-04-27 19:09:34','车牌号1','车型1','车辆颜色1',1,1,'已出租','车辆描述1','http://localhost:8080/ssmqr7n9/upload/zulinxinxi_tupian1.jpg');
insert  into `zulinxinxi`(`id`,`addtime`,`chepaihao`,`chexing`,`cheliangyanse`,`cheliangyajin`,`rizujin`,`chuzuzhuangtai`,`cheliangmiaoshu`,`tupian`) values (42,'2021-04-27 19:09:34','车牌号2','车型2','车辆颜色2',2,2,'已出租','车辆描述2','http://localhost:8080/ssmqr7n9/upload/zulinxinxi_tupian2.jpg');
insert  into `zulinxinxi`(`id`,`addtime`,`chepaihao`,`chexing`,`cheliangyanse`,`cheliangyajin`,`rizujin`,`chuzuzhuangtai`,`cheliangmiaoshu`,`tupian`) values (43,'2021-04-27 19:09:34','车牌号3','车型3','车辆颜色3',3,3,'已出租','车辆描述3','http://localhost:8080/ssmqr7n9/upload/zulinxinxi_tupian3.jpg');
insert  into `zulinxinxi`(`id`,`addtime`,`chepaihao`,`chexing`,`cheliangyanse`,`cheliangyajin`,`rizujin`,`chuzuzhuangtai`,`cheliangmiaoshu`,`tupian`) values (44,'2021-04-27 19:09:34','车牌号4','车型4','车辆颜色4',4,4,'已出租','车辆描述4','http://localhost:8080/ssmqr7n9/upload/zulinxinxi_tupian4.jpg');
insert  into `zulinxinxi`(`id`,`addtime`,`chepaihao`,`chexing`,`cheliangyanse`,`cheliangyajin`,`rizujin`,`chuzuzhuangtai`,`cheliangmiaoshu`,`tupian`) values (45,'2021-04-27 19:09:34','车牌号5','车型5','车辆颜色5',5,5,'已出租','车辆描述5','http://localhost:8080/ssmqr7n9/upload/zulinxinxi_tupian5.jpg');
insert  into `zulinxinxi`(`id`,`addtime`,`chepaihao`,`chexing`,`cheliangyanse`,`cheliangyajin`,`rizujin`,`chuzuzhuangtai`,`cheliangmiaoshu`,`tupian`) values (46,'2021-04-27 19:09:34','车牌号6','车型6','车辆颜色6',6,6,'已出租','车辆描述6','http://localhost:8080/ssmqr7n9/upload/zulinxinxi_tupian6.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
