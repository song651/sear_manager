/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 5.7.32 : Database - seatreservation
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`seatreservation` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `seatreservation`;

/*Table structure for table `announce` */

DROP TABLE IF EXISTS `announce`;

CREATE TABLE `announce` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `datetime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `announce` */

insert  into `announce`(`id`,`title`,`content`,`datetime`) values 
(1,'图书馆预约须知','1.图书馆22:30闭馆。\r\n2.用户可在0:00-21:00时间段预约座位，开始时间最早为8:00，最迟预约到22:30。\r\n3.预约开始时间前后半小时可以签到，签到码通过馆内数据大屏查询或询问老师和管理员,超时记为违规并释放座位。\r\n4.暂离图书馆要在60分钟内返回签到，否则座位将被释放，同时记违规使用。',1660171080175),
(2,'馆内文明须知','1、注意仪表，衣冠不整者谢绝入馆。\r\n2、保持馆内安静，请勿喧哗，入馆后请将手机调至振动档。\r\n3、保持馆内清洁卫生，请勿在馆内进食，不随地吐痰、不乱扔纸屑。爱护公共设施，不得涂抹刻画。\r\n4、维护馆内安全，本馆严禁吸烟，严禁携带易燃、易爆物品入内。\r\n5、爱护图书文献，请勿涂写、折页、撕毁书刊，违者将按章罚款。\r\n6、未办理有关手续不得携带书刊、光盘出馆，违者按本馆《书刊保护条例》处理。\r\n7、请讲普通话，请注意文明用语，读者与工作人员互相尊重。\r\n8、读者必须经过大厅磁检门离馆，如遇监测器报警，请配合值班人员的检查。\r\n9、请遵守图书馆的规章制度，做一名文明的读者。',1660171080175);

/*Table structure for table `area` */

DROP TABLE IF EXISTS `area`;

CREATE TABLE `area` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `areaName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '区域名',
  `subName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '区域缩写',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `area` */

insert  into `area`(`aid`,`areaName`,`subName`) values 
(1,'一层西阅览区','AW'),
(2,'一层东阅览区','AE'),
(3,'二层西自习区','BW'),
(4,'二层东自习区','BE'),
(5,'三层西自习区','CW'),
(6,'三层东自习区','CE');

/*Table structure for table `article` */

DROP TABLE IF EXISTS `article`;

CREATE TABLE `article` (
  `datetime` bigint(20) DEFAULT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `article` */

insert  into `article`(`datetime`,`id`,`content`,`title`,`uid`) values 
(1660171080175,2,'最近刷了7年的英语真题，有两套错一个 ，两套错三个 10年11年12年都是错四个.也试做了英语一10年的错6个\r\n万能的吧友求教！！！！','英语二10年后平均每套错三个什么水平 等到考试能考多少分？',3),
(1660171080175,3,'材料考本专业 期望院校只要考上国家线就能稳上 哎 不知道还来不来得及有点焦虑 家里人意思是不想考研就准备考事业单位了','现在开始备考能考上国家线吗….英一数二',1),
(1660171080175,4,'本人英语学渣，四级没过，考研目标50分，怎么去复习作文啊，要不要去买晚上的模板啊，背王江涛的作文20篇还是直接背他书上的模板啊？','本人英语学渣，四级没过，考研目标50分，怎么去复习作文啊',3);

/*Table structure for table `comments` */

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `cid` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uid` bigint(20) DEFAULT NULL,
  `aid` bigint(20) DEFAULT NULL COMMENT '动态id',
  `datetime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `comments` */

insert  into `comments`(`cid`,`content`,`uid`,`aid`,`datetime`) values 
(2,'我21届阅读比你还差点最后79，如果22难度的话上80没啥问题吧',1,2,1660175986071),
(3,'这都能上80了吗？，我平均错5个，有时候能错个3个，上个70我就满意了',1,2,1660176005810),
(4,'没啥参考价值，七八十吧',1,2,1660176025848),
(5,'我英一英二那些卷子60分的选择几乎都在55以上，最后82',1,2,1660176036320),
(6,'还行，我一战英二平时也错三个，偶尔错四个或者两个，最后江苏考了76，这个分数讲真的很不满意，因为平时感觉80分十有八九。 你后面作文啥的注意一下哈，新题型保证别错，其他问题不大。',1,2,1660176040474),
(7,'努力吧，我同学大二就说自己出国没问题了，结果英语才考50分',1,4,1660176057495),
(8,'十几年没碰英语，现在复习三月，刷真题英语二最好成绩是17年，客观题拿50分',1,4,1660176085212),
(9,'模板 有需要的发你，去年有同学用了，考的好。',1,4,1660176101546),
(10,'emmm，同学，过不过国家线不是吧友说的算的，加油吧。',1,3,1660176111721);

/*Table structure for table `reservation` */

DROP TABLE IF EXISTS `reservation`;

CREATE TABLE `reservation` (
  `rid` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) DEFAULT NULL COMMENT '用户id',
  `startTime` bigint(20) DEFAULT NULL,
  `endTime` bigint(20) DEFAULT NULL,
  `sid` bigint(20) DEFAULT NULL COMMENT '座位id',
  `state` int(11) DEFAULT '0' COMMENT '0待签到1已签到使用中2未及时签到3暂离4暂离60分钟未签到-1使用完成',
  `leaveTime` bigint(20) DEFAULT NULL COMMENT '暂离时间',
  `score` int(11) DEFAULT NULL COMMENT '扣多少信用分',
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `reservation` */

insert  into `reservation`(`rid`,`uid`,`startTime`,`endTime`,`sid`,`state`,`leaveTime`,`score`) values 
(15,1,1660116600000,1660129024000,100,2,NULL,10),
(16,3,1660116600000,1660129024000,101,2,NULL,NULL),
(17,1,1660183200000,1660221000000,61,-1,1660161142018,NULL),
(18,3,1660185000000,1660215600000,65,2,NULL,NULL),
(19,6,1660190400000,1660219200000,63,-1,NULL,NULL),
(20,9,1660192200000,1660210200000,69,2,NULL,NULL),
(21,10,1660201200000,1660219200000,72,2,NULL,NULL),
(22,10,1660210200000,1660212000000,70,4,1660209524628,NULL),
(24,10,1660212000000,1660213800000,58,-1,NULL,NULL),
(25,10,1660219200000,1660221000000,35,-1,1660218204527,NULL),
(26,1,1659943800000,1659961800000,35,-1,NULL,NULL),
(27,3,1659933000000,1659940200000,100,-1,NULL,NULL),
(28,1,1659832200000,1659839400000,101,-1,NULL,NULL),
(29,10,1659749400000,1659756600000,58,-1,NULL,NULL),
(30,6,1659943800000,1659961800000,35,-1,NULL,NULL),
(31,1,1659943800000,1659961800000,61,-1,NULL,NULL),
(32,1,1659943800000,1659961800000,35,-1,NULL,NULL),
(33,6,1660210200000,1660212000000,70,-1,NULL,NULL),
(34,6,1660226400000,1660226400000,72,-1,NULL,NULL);

/*Table structure for table `seat` */

DROP TABLE IF EXISTS `seat`;

CREATE TABLE `seat` (
  `sid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '位置id',
  `area` int(11) DEFAULT NULL COMMENT '区域',
  `type` int(11) DEFAULT '0' COMMENT '0座位1桌子',
  `row` int(11) DEFAULT NULL COMMENT '行',
  `column` int(11) DEFAULT NULL COMMENT '列',
  `state` int(11) DEFAULT '0' COMMENT '0有座1有约2被使用',
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=671 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `seat` */

insert  into `seat`(`sid`,`area`,`type`,`row`,`column`,`state`) values 
(35,1,0,2,2,0),
(36,1,1,1,2,0),
(37,1,1,1,3,0),
(38,1,1,1,4,0),
(39,1,1,1,5,0),
(40,1,0,2,5,0),
(41,1,0,2,4,0),
(42,1,0,2,3,0),
(46,1,1,9,2,0),
(47,1,1,9,3,0),
(48,1,1,9,4,0),
(49,1,1,9,5,0),
(50,1,0,8,2,0),
(51,1,0,8,3,0),
(52,1,0,8,4,0),
(53,1,0,8,5,0),
(54,1,1,5,2,0),
(55,1,1,5,3,0),
(56,1,1,5,4,0),
(57,1,1,5,5,0),
(58,1,0,4,2,0),
(59,1,0,4,3,0),
(60,1,0,4,4,0),
(61,1,0,4,5,0),
(62,1,0,6,2,0),
(63,1,0,6,3,0),
(64,1,0,6,4,0),
(65,1,0,6,5,0),
(66,1,0,2,8,0),
(67,1,0,3,8,0),
(68,1,0,4,8,0),
(69,1,0,5,8,0),
(70,1,0,6,8,0),
(71,1,0,7,8,0),
(72,1,0,8,8,0),
(73,1,1,2,9,0),
(74,1,1,3,9,0),
(75,1,1,4,9,0),
(76,1,1,5,9,0),
(77,1,1,6,9,0),
(78,1,1,7,9,0),
(79,1,1,8,9,0),
(80,1,0,2,10,0),
(82,1,0,4,10,0),
(83,1,0,5,10,0),
(84,1,0,6,10,0),
(85,1,0,7,10,0),
(86,1,0,8,10,0),
(87,1,0,3,10,0),
(88,1,0,2,13,0),
(96,1,0,1,13,0),
(97,1,1,1,14,0),
(98,1,1,2,14,0),
(99,1,1,1,15,0),
(100,1,1,2,15,0),
(101,1,0,1,16,0),
(102,1,0,2,16,0),
(104,1,1,4,14,0),
(105,1,1,4,15,0),
(106,1,1,5,15,0),
(107,1,1,5,14,0),
(108,1,0,4,13,0),
(109,1,0,5,13,0),
(110,1,0,4,16,0),
(112,1,0,5,16,0),
(113,1,0,8,14,0),
(114,1,0,8,13,0),
(115,1,0,8,15,0),
(116,1,0,8,16,0),
(118,1,1,9,16,0),
(119,1,1,9,15,0),
(120,1,1,9,14,0),
(121,1,1,9,13,0),
(122,1,1,4,20,0),
(123,1,1,4,21,0),
(124,1,1,4,22,0),
(125,1,1,5,22,0),
(126,1,1,5,21,0),
(127,1,1,5,20,0),
(128,1,0,3,19,0),
(129,1,0,3,20,0),
(130,1,0,4,19,0),
(131,1,0,5,19,0),
(132,1,0,6,19,0),
(134,1,0,6,21,0),
(135,1,0,6,22,0),
(136,1,0,3,21,0),
(137,1,0,3,22,0),
(138,1,0,3,23,0),
(139,1,0,4,23,0),
(140,1,0,5,23,0),
(141,1,0,6,23,0),
(144,1,0,6,20,0),
(152,2,0,2,6,0),
(153,2,0,2,7,0),
(154,2,0,2,8,0),
(155,2,0,2,9,0),
(156,2,0,2,10,0),
(157,2,0,2,11,0),
(158,2,0,2,12,0),
(159,2,0,2,13,0),
(160,2,0,2,14,0),
(161,2,0,2,15,0),
(166,2,1,3,6,0),
(167,2,1,3,7,0),
(168,2,1,3,8,0),
(169,2,1,3,9,0),
(170,2,1,3,10,0),
(171,2,1,3,11,0),
(172,2,1,3,12,0),
(173,2,1,3,13,0),
(174,2,1,3,14,0),
(175,2,1,3,15,0),
(180,2,0,4,6,0),
(181,2,0,4,7,0),
(182,2,0,4,8,0),
(183,2,0,4,9,0),
(184,2,0,4,10,0),
(185,2,0,4,11,0),
(186,2,0,4,12,0),
(187,2,0,4,13,0),
(188,2,0,4,14,0),
(189,2,0,4,15,0),
(190,2,0,6,2,0),
(191,2,0,6,3,0),
(192,2,0,6,4,0),
(193,2,0,6,5,0),
(194,2,0,6,6,0),
(195,2,0,6,7,0),
(196,2,0,6,8,0),
(197,2,0,6,9,0),
(198,2,0,6,11,0),
(199,2,0,6,10,0),
(200,2,0,6,12,0),
(201,2,0,6,13,0),
(202,2,0,6,14,0),
(203,2,0,6,15,0),
(204,2,0,8,15,0),
(205,2,0,8,14,0),
(206,2,0,8,13,0),
(207,2,0,8,12,0),
(208,2,0,8,11,0),
(209,2,0,8,10,0),
(210,2,0,8,9,0),
(211,2,0,8,8,0),
(212,2,0,8,7,0),
(213,2,0,8,6,0),
(214,2,0,8,5,0),
(215,2,0,8,4,0),
(216,2,0,8,3,0),
(217,2,0,8,2,0),
(218,2,1,7,2,0),
(219,2,1,7,3,0),
(220,2,1,7,4,0),
(221,2,1,7,5,0),
(222,2,1,7,6,0),
(223,2,1,7,7,0),
(224,2,1,7,8,0),
(225,2,1,7,9,0),
(226,2,1,7,10,0),
(227,2,1,7,11,0),
(228,2,1,7,12,0),
(229,2,1,7,13,0),
(230,2,1,7,14,0),
(231,2,1,7,15,0),
(234,2,0,2,16,0),
(235,2,0,2,17,0),
(237,2,0,2,19,0),
(238,2,0,2,20,0),
(239,2,0,2,21,0),
(240,2,0,2,22,0),
(241,2,0,2,23,0),
(242,2,0,2,24,0),
(243,2,0,4,24,0),
(244,2,0,4,23,0),
(245,2,0,4,22,0),
(246,2,0,4,21,0),
(247,2,0,4,20,0),
(248,2,0,4,19,0),
(249,2,0,4,18,0),
(250,2,0,4,17,0),
(251,2,0,4,16,0),
(252,2,1,3,16,0),
(253,2,1,3,17,0),
(254,2,1,3,18,0),
(255,2,1,3,20,0),
(256,2,1,3,19,0),
(257,2,1,3,21,0),
(258,2,1,3,22,0),
(259,2,1,3,23,0),
(260,2,1,3,24,0),
(261,2,0,2,18,0),
(278,3,1,5,2,0),
(279,3,1,5,3,0),
(280,3,1,5,4,0),
(281,3,1,5,5,0),
(282,3,0,4,2,0),
(283,3,0,4,3,0),
(284,3,0,4,4,0),
(285,3,0,4,5,0),
(286,3,0,6,2,0),
(287,3,0,6,3,0),
(288,3,0,6,4,0),
(289,3,0,6,5,0),
(290,3,0,2,8,0),
(291,3,0,3,8,0),
(292,3,0,4,8,0),
(293,3,0,5,8,0),
(294,3,0,6,8,0),
(295,3,0,7,8,0),
(296,3,0,8,8,0),
(297,3,1,2,9,0),
(298,3,1,3,9,0),
(299,3,1,4,9,0),
(300,3,1,5,9,0),
(301,3,1,6,9,0),
(302,3,1,7,9,0),
(303,3,1,8,9,0),
(304,3,0,2,10,0),
(305,3,0,4,10,0),
(306,3,0,5,10,0),
(307,3,0,6,10,0),
(308,3,0,7,10,0),
(309,3,0,8,10,0),
(310,3,0,3,10,0),
(311,3,0,2,13,0),
(312,3,0,1,13,0),
(313,3,1,1,14,0),
(314,3,1,2,14,0),
(315,3,1,1,15,0),
(316,3,1,2,15,0),
(317,3,0,1,16,0),
(318,3,0,2,16,0),
(319,3,1,4,14,0),
(320,3,1,4,15,0),
(321,3,1,5,15,0),
(322,3,1,5,14,0),
(323,3,0,4,13,0),
(324,3,0,5,13,0),
(325,3,0,4,16,0),
(326,3,0,5,16,0),
(327,3,0,8,14,0),
(328,3,0,8,13,0),
(329,3,0,8,15,0),
(330,3,0,8,16,0),
(331,3,1,9,16,0),
(332,3,1,9,15,0),
(333,3,1,9,14,0),
(334,3,1,9,13,0),
(335,3,1,4,20,0),
(336,3,1,4,21,0),
(337,3,1,4,22,0),
(338,3,1,5,22,0),
(339,3,1,5,21,0),
(340,3,1,5,20,0),
(341,3,0,3,19,0),
(342,3,0,3,20,0),
(343,3,0,4,19,0),
(344,3,0,5,19,0),
(345,3,0,6,19,0),
(346,3,0,6,21,0),
(347,3,0,6,22,0),
(348,3,0,3,21,0),
(349,3,0,3,22,0),
(350,3,0,3,23,0),
(351,3,0,4,23,0),
(352,3,0,5,23,0),
(353,3,0,6,23,0),
(354,3,0,6,20,0),
(355,5,0,2,2,0),
(356,5,1,1,2,0),
(357,5,1,1,3,0),
(358,5,1,1,4,0),
(359,5,1,1,5,0),
(360,5,0,2,5,0),
(361,5,0,2,4,0),
(362,5,0,2,3,0),
(363,5,1,9,2,0),
(364,5,1,9,3,0),
(365,5,1,9,4,0),
(366,5,1,9,5,0),
(367,5,0,8,2,0),
(368,5,0,8,3,0),
(369,5,0,8,4,0),
(370,5,0,8,5,0),
(383,5,0,2,8,0),
(384,5,0,3,8,0),
(385,5,0,4,8,0),
(386,5,0,5,8,0),
(387,5,0,6,8,0),
(388,5,0,7,8,0),
(389,5,0,8,8,0),
(390,5,1,2,9,0),
(391,5,1,3,9,0),
(392,5,1,4,9,0),
(393,5,1,5,9,0),
(394,5,1,6,9,0),
(395,5,1,7,9,0),
(396,5,1,8,9,0),
(397,5,0,2,10,0),
(398,5,0,4,10,0),
(399,5,0,5,10,0),
(400,5,0,6,10,0),
(401,5,0,7,10,0),
(402,5,0,8,10,0),
(403,5,0,3,10,0),
(404,5,0,2,13,0),
(405,5,0,1,13,0),
(406,5,1,1,14,0),
(407,5,1,2,14,0),
(408,5,1,1,15,0),
(409,5,1,2,15,0),
(410,5,0,1,16,0),
(411,5,0,2,16,0),
(412,5,1,4,14,0),
(413,5,1,4,15,0),
(414,5,1,5,15,0),
(415,5,1,5,14,0),
(416,5,0,4,13,0),
(417,5,0,5,13,0),
(418,5,0,4,16,0),
(419,5,0,5,16,0),
(420,5,0,8,14,0),
(421,5,0,8,13,0),
(422,5,0,8,15,0),
(423,5,0,8,16,0),
(424,5,1,9,16,0),
(425,5,1,9,15,0),
(426,5,1,9,14,0),
(427,5,1,9,13,0),
(428,5,1,4,20,0),
(429,5,1,4,21,0),
(430,5,1,4,22,0),
(431,5,1,5,22,0),
(432,5,1,5,21,0),
(433,5,1,5,20,0),
(434,5,0,3,19,0),
(435,5,0,3,20,0),
(436,5,0,4,19,0),
(437,5,0,5,19,0),
(438,5,0,6,19,0),
(439,5,0,6,21,0),
(440,5,0,6,22,0),
(441,5,0,3,21,0),
(442,5,0,3,22,0),
(443,5,0,3,23,0),
(444,5,0,4,23,0),
(445,5,0,5,23,0),
(446,5,0,6,23,0),
(447,5,0,6,20,0),
(448,4,0,2,2,0),
(449,4,0,2,3,0),
(450,4,0,2,4,0),
(451,4,0,2,5,0),
(452,4,0,2,6,0),
(453,4,0,2,7,0),
(454,4,0,2,8,0),
(455,4,0,2,9,0),
(456,4,0,2,10,0),
(457,4,0,2,11,0),
(458,4,0,2,12,0),
(459,4,0,2,13,0),
(460,4,0,2,14,0),
(461,4,0,2,15,0),
(462,4,1,3,2,0),
(463,4,1,3,3,0),
(464,4,1,3,4,0),
(465,4,1,3,5,0),
(466,4,1,3,6,0),
(467,4,1,3,7,0),
(468,4,1,3,8,0),
(469,4,1,3,9,0),
(470,4,1,3,10,0),
(471,4,1,3,11,0),
(472,4,1,3,12,0),
(473,4,1,3,13,0),
(474,4,1,3,14,0),
(475,4,1,3,15,0),
(476,4,0,4,2,0),
(477,4,0,4,3,0),
(478,4,0,4,4,0),
(479,4,0,4,5,0),
(480,4,0,4,6,0),
(481,4,0,4,7,0),
(482,4,0,4,8,0),
(483,4,0,4,9,0),
(484,4,0,4,10,0),
(485,4,0,4,11,0),
(486,4,0,4,12,0),
(487,4,0,4,13,0),
(488,4,0,4,14,0),
(489,4,0,4,15,0),
(490,4,0,6,2,0),
(491,4,0,6,3,0),
(492,4,0,6,4,0),
(493,4,0,6,5,0),
(494,4,0,6,6,0),
(495,4,0,6,7,0),
(496,4,0,6,8,0),
(497,4,0,6,9,0),
(498,4,0,6,11,0),
(499,4,0,6,10,0),
(500,4,0,6,12,0),
(501,4,0,6,13,0),
(502,4,0,6,14,0),
(503,4,0,6,15,0),
(504,4,0,8,15,0),
(505,4,0,8,14,0),
(506,4,0,8,13,0),
(507,4,0,8,12,0),
(508,4,0,8,11,0),
(509,4,0,8,10,0),
(510,4,0,8,9,0),
(511,4,0,8,8,0),
(512,4,0,8,7,0),
(513,4,0,8,6,0),
(514,4,0,8,5,0),
(515,4,0,8,4,0),
(516,4,0,8,3,0),
(517,4,0,8,2,0),
(518,4,1,7,2,0),
(519,4,1,7,3,0),
(520,4,1,7,4,0),
(521,4,1,7,5,0),
(522,4,1,7,6,0),
(523,4,1,7,7,0),
(524,4,1,7,8,0),
(525,4,1,7,9,0),
(526,4,1,7,10,0),
(527,4,1,7,11,0),
(528,4,1,7,12,0),
(529,4,1,7,13,0),
(530,4,1,7,14,0),
(531,4,1,7,15,0),
(532,4,0,2,16,0),
(533,4,0,2,17,0),
(534,4,0,2,19,0),
(535,4,0,2,20,0),
(536,4,0,2,21,0),
(537,4,0,2,22,0),
(538,4,0,2,23,0),
(539,4,0,2,24,0),
(540,4,0,4,24,0),
(541,4,0,4,23,0),
(542,4,0,4,22,0),
(543,4,0,4,21,0),
(544,4,0,4,20,0),
(545,4,0,4,19,0),
(546,4,0,4,18,0),
(547,4,0,4,17,0),
(548,4,0,4,16,0),
(549,4,1,3,16,0),
(550,4,1,3,17,0),
(551,4,1,3,18,0),
(552,4,1,3,20,0),
(553,4,1,3,19,0),
(554,4,1,3,21,0),
(555,4,1,3,22,0),
(556,4,1,3,23,0),
(557,4,1,3,24,0),
(558,4,0,2,18,0),
(560,6,0,2,3,0),
(561,6,0,2,4,0),
(562,6,0,2,5,0),
(563,6,0,2,6,0),
(564,6,0,2,7,0),
(565,6,0,2,8,0),
(566,6,0,2,9,0),
(567,6,0,2,10,0),
(568,6,0,2,11,0),
(570,6,0,2,13,0),
(571,6,0,2,14,0),
(572,6,0,2,15,0),
(574,6,1,3,3,0),
(575,6,1,3,4,0),
(576,6,1,3,5,0),
(577,6,1,3,6,0),
(578,6,1,3,7,0),
(579,6,1,3,8,0),
(580,6,1,3,9,0),
(581,6,1,3,10,0),
(582,6,1,3,11,0),
(584,6,1,3,13,0),
(585,6,1,3,14,0),
(586,6,1,3,15,0),
(588,6,0,4,3,0),
(589,6,0,4,4,0),
(590,6,0,4,5,0),
(591,6,0,4,6,0),
(592,6,0,4,7,0),
(593,6,0,4,8,0),
(594,6,0,4,9,0),
(595,6,0,4,10,0),
(596,6,0,4,11,0),
(598,6,0,4,13,0),
(599,6,0,4,14,0),
(600,6,0,4,15,0),
(602,6,0,6,3,0),
(603,6,0,6,4,0),
(604,6,0,6,5,0),
(605,6,0,6,6,0),
(606,6,0,6,7,0),
(607,6,0,6,8,0),
(608,6,0,6,9,0),
(609,6,0,6,11,0),
(610,6,0,6,10,0),
(619,6,0,8,11,0),
(620,6,0,8,10,0),
(621,6,0,8,9,0),
(622,6,0,8,8,0),
(623,6,0,8,7,0),
(624,6,0,8,6,0),
(625,6,0,8,5,0),
(626,6,0,8,4,0),
(627,6,0,8,3,0),
(630,6,1,7,3,0),
(631,6,1,7,4,0),
(632,6,1,7,5,0),
(633,6,1,7,6,0),
(634,6,1,7,7,0),
(635,6,1,7,8,0),
(636,6,1,7,9,0),
(637,6,1,7,10,0),
(638,6,1,7,11,0),
(643,6,0,2,16,0),
(644,6,0,2,17,0),
(645,6,0,2,19,0),
(646,6,0,2,20,0),
(647,6,0,2,21,0),
(648,6,0,2,22,0),
(649,6,0,2,23,0),
(652,6,0,4,23,0),
(653,6,0,4,22,0),
(654,6,0,4,21,0),
(655,6,0,4,20,0),
(656,6,0,4,19,0),
(657,6,0,4,18,0),
(658,6,0,4,17,0),
(659,6,0,4,16,0),
(660,6,1,3,16,0),
(661,6,1,3,17,0),
(662,6,1,3,18,0),
(663,6,1,3,20,0),
(664,6,1,3,19,0),
(665,6,1,3,21,0),
(666,6,1,3,22,0),
(667,6,1,3,23,0),
(669,6,0,2,18,0);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `uid` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT '0' COMMENT '0学生1老师2管理员',
  `score` int(11) DEFAULT '100' COMMENT '信用分',
  `number` bigint(20) DEFAULT NULL COMMENT '学号',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `user` */

insert  into `user`(`uid`,`username`,`password`,`type`,`score`,`number`) values 
(1,'张三','123456789',0,90,123),
(2,'王老师','123456789',1,100,999),
(3,'李四','123456789',0,100,124),
(6,'赵四','123456789',0,100,126),
(7,'周一','123456789',0,100,130),
(9,'张六','123456789',0,100,131),
(10,'李明','123456789',0,100,135);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;