/*
Navicat MySQL Data Transfer

Source Server         : link
Source Server Version : 80015
Source Host           : localhost:3306
Source Database       : novel

Target Server Type    : MYSQL
Target Server Version : 80015
File Encoding         : 65001

Date: 2019-11-15 17:24:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `bookshelf`
-- ----------------------------
DROP TABLE IF EXISTS `bookshelf`;
CREATE TABLE `bookshelf` (
  `user_id` int(11) NOT NULL,
  `novel_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`novel_id`),
  KEY `FK1cal3v12pp8q9fsp4fisqfna5` (`novel_id`),
  CONSTRAINT `FK1cal3v12pp8q9fsp4fisqfna5` FOREIGN KEY (`novel_id`) REFERENCES `novel` (`novel_id`),
  CONSTRAINT `FKs9f1lo8n7sksqrnwbtol8oap3` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bookshelf
-- ----------------------------

-- ----------------------------
-- Table structure for `novel`
-- ----------------------------
DROP TABLE IF EXISTS `novel`;
CREATE TABLE `novel` (
  `novel_id` int(11) NOT NULL AUTO_INCREMENT,
  `novel_author` varchar(255) NOT NULL,
  `novel_covers` varchar(255) DEFAULT 'default.jpg',
  `novel_description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `novel_state` varchar(16) DEFAULT '连载中',
  `novel_title` varchar(255) NOT NULL,
  `novel_updated_time` datetime NOT NULL,
  `novel_uploaded_time` datetime NOT NULL,
  `novel_sort_id` int(11) DEFAULT NULL,
  `novel_words` int(11) unsigned zerofill DEFAULT '00000000000',
  PRIMARY KEY (`novel_id`),
  KEY `FKkrvpfgtb8iqbaivbc1kcty3mn` (`novel_sort_id`),
  CONSTRAINT `FKkrvpfgtb8iqbaivbc1kcty3mn` FOREIGN KEY (`novel_sort_id`) REFERENCES `novel_sort` (`novel_sort_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of novel
-- ----------------------------
INSERT INTO `novel` VALUES ('2', '天蚕土豆', '斗破苍穹.jpg', '这里是属于斗气的世界，没有花俏艳丽的魔法，有的，仅仅是繁衍到巅峰的斗气！\r\n心潮澎湃，无限幻想，迎风挥击千层浪，少年不败热血！\r\n新书等级制度：斗之气，斗者，斗师，大斗师，斗灵，斗王，斗皇，斗宗，斗尊，斗圣，斗帝。', '连载中', '斗破苍穹', '2019-07-20 23:48:25', '2019-07-20 23:48:25', '1', '00000000015');
INSERT INTO `novel` VALUES ('3', '何常在', '官运.jpg', '官运之道，三分运气，五分背景，七分运作。 升迁速度，可由背景决定。位置高低，也在能力学历。台前幕后，尽在运作之术。高材生关', '连载中', '官运', '2019-07-20 23:55:17', '2019-07-20 23:55:17', '4', '00000000000');
INSERT INTO `novel` VALUES ('4', '剑游太虚', '剑道独尊.jpg', '真灵大陆，宗门千万，强者如林。 一个大家族子弟因为奇异的变故从庸才变为天才，不但能过目不忘，感知敏锐，领悟力更是直上云霄', '连载中', '剑道独尊', '2019-07-21 00:13:17', '2019-07-21 00:13:17', '1', '00000000002');
INSERT INTO `novel` VALUES ('5', '更俗', '官场之风流人生.jpg', '平民子弟意外身亡，突然成为官场豪门子弟的他， 是换一种人生，还是继续风流放纵的生涯？ 纯真的妹妹、冷艳的女上司、受伤的旧情', '连载中', '官场之风流人生', '2019-07-21 00:14:26', '2019-07-21 00:14:26', '4', '00000000000');
INSERT INTO `novel` VALUES ('6', '忘语', '凡人修仙传.jpg', '　　一个普通山村小子，偶然下进入到当地江湖小门派，成了一名记名弟子。他以这样身份，如何在门派中立足,如何以平庸的资质进入到修仙者的行列，从而笑傲三界之中！\r\n　　续篇《凡人修仙之仙界篇》已经在起点中文网上传了，欢迎大家继续支持哦！\r\n　　凡人修仙，风云再起\r\n　　时空穿梭，轮回逆转\r\n　　金仙太乙，大罗道祖\r\n　　三千大道，法则至尊\r\n　　《凡人修仙传》仙界篇，一个韩立叱咤仙界的故事，一个凡人小子修仙的不灭传说。', '连载中', '凡人修仙传', '2019-07-21 00:16:59', '2019-07-21 00:16:59', '1', '00000000000');
INSERT INTO `novel` VALUES ('7', '陆原李梦瑶', '财运天降.jpg', '作为一个超级富二代装穷是一种什么体验？别拦着我，没有人比我更有资格回答这个问题！', '连载中', '财运天降', '2019-07-21 00:18:48', '2019-07-21 00:18:48', '2', '00000000000');
INSERT INTO `novel` VALUES ('8', ' 育', '九星毒奶.jpg', '这是一个充满了星力的平行世界。 星图、星技、星宠、觉醒者大行其道。 魂穿而来的江晓，体内蕴含着一张奇特的内视星图，成为一名稀有的医疗系觉醒者。 他本想成为一只快乐的大奶，但却被众人冠上了毒奶之名。 这一切的故事， 从高中入学的前一周开始。 要从......那一巴掌开始说起...... **沉重的故事写累了，写点轻松搞笑的。', '连载中', '九星毒奶', '2019-07-21 00:20:49', '2019-07-21 00:20:49', '8', '00000000000');
INSERT INTO `novel` VALUES ('9', '张牧之', '神武战王.jpg', '圣域第一公子江辰遭心爱的人背叛，不幸陨落。灵魂穿越到五百年后，九天大6一名同名同姓的少年身上。身怀至尊神脉，掌握无数秘典，江辰誓要杀回圣域，手刃仇敌。', '已完结', '神武战王', '2019-07-21 04:10:37', '2019-07-21 04:10:37', '1', '00000000000');
INSERT INTO `novel` VALUES ('10', '千寻月', '永恒圣帝.jpg', ' 在这天地间，有一帝座，至高无上，主宰天下沉浮。 诸天万域，万千种族，亿万生灵，莫不俯首称臣。 大世天骄，万域', '已完结', '永恒圣帝', '2019-07-21 04:11:09', '2019-07-21 04:11:09', '1', '00000000000');
INSERT INTO `novel` VALUES ('11', '一枝轩', '都市之至尊战神.jpg', '生而为王，注定荣光！无论是过去，现在，将来，凡我宁轩辕失去的东西，我都会十倍，百倍的拿回来！ 谁挡谁死！', '连载中', '都市之至尊战神', '2019-07-23 03:25:48', '2019-07-23 03:25:48', '2', '00000000000');
INSERT INTO `novel` VALUES ('12', '耳根', '求魔.jpg', '既然世人皆称我为魔，则索性，从此我苏铭……就是魔！', '连载中', '求魔', '2019-07-23 03:29:42', '2019-07-23 03:29:42', '9', '00000000000');
INSERT INTO `novel` VALUES ('13', '观棋', '仙国大帝.jpg', '天下之大，惟我正统！以天朝之势横扫天下仙门！一个修‘帝王之道’的强者，降临仙门林立的世界，让修行者鄙夷的一个世俗王朝，一步步走到与各大顶级仙门平起平坐。王朝的法则是，普天之下莫非王土，率土之', '连载中', '仙国大帝', '2019-07-23 03:30:35', '2019-07-23 03:30:35', '1', '00000000000');
INSERT INTO `novel` VALUES ('14', '竹本无心', '带着淘宝去修真.jpg', '开局只是普通人，带着淘宝去修真。纵横四海独作乐，穿越三界我为尊。 ', '连载中', '带着淘宝去修真', '2019-07-23 03:31:38', '2019-07-23 03:31:38', '9', '00000000000');
INSERT INTO `novel` VALUES ('15', '爱恨雾气', '医武神相.jpg', '他出身平凡情场受挫后，祖传玉佩带他一路高歌。 一针千金，一方难求，妙手逆乾坤，神针转阴阳。 靠着精湛医术，一部逆天功法，从此展开万花丛中过的精彩人生。', '连载中', '医武神相', '2019-07-23 03:38:13', '2019-07-23 03:38:13', '1', '00000000000');
INSERT INTO `novel` VALUES ('16', '顾仁棉', '医武神相.jpg', '曾经病痛缠身，无缘仙道，而今得幸重生，竟也是个丹田被毁的废人之躯。 不怕不怕，谁让我有特殊修仙技巧。', '连载中', '绝品灵仙', '2019-07-23 03:40:27', '2019-07-23 03:40:27', '1', '00000000000');
INSERT INTO `novel` VALUES ('17', '乌鸦坐飞机', '校花的最强仙帝.jpg', ' 一代仙帝转世花都，无所不能的他，吊打各种不服。只是，这网瘾校花有些难办啊……“小哥哥，开黑吗？我会喊666。”  ', '连载中', '校花的最强仙帝', '2019-07-23 03:44:25', '2019-07-23 03:44:25', '9', '00000000000');

-- ----------------------------
-- Table structure for `novel_chapter`
-- ----------------------------
DROP TABLE IF EXISTS `novel_chapter`;
CREATE TABLE `novel_chapter` (
  `novel_chapter_id` int(11) NOT NULL AUTO_INCREMENT,
  `novel_chapter_no` int(11) DEFAULT NULL,
  `novel_chapter_content` text,
  `novel_chapter_title` varchar(128) NOT NULL,
  `novel_chapter_uploaded_time` datetime DEFAULT NULL,
  `novel_chapter_updated_time` datetime DEFAULT NULL,
  `novel_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`novel_chapter_id`),
  KEY `FKsnsmsr5kkss62qt6w3bmvhsqy` (`novel_id`),
  CONSTRAINT `FKsnsmsr5kkss62qt6w3bmvhsqy` FOREIGN KEY (`novel_id`) REFERENCES `novel` (`novel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of novel_chapter
-- ----------------------------
INSERT INTO `novel_chapter` VALUES ('33', '0', '好看', '111', '2019-07-21 17:42:28', '2019-07-22 22:17:17', '4');
INSERT INTO `novel_chapter` VALUES ('34', '1', '<p>“斗之力，三段！”<br><br>望着测验魔石碑上面闪亮得甚至有些刺眼的五个大字，少年面无表情，唇角有着一抹自嘲，紧握的手掌，因为大力，而导致略微尖锐的指甲深深的刺进了掌心之中，带来一阵阵钻心的疼痛…<br><br>“萧炎，斗之力，三段！级别：低级！”测验魔石碑之旁，一位中年男子，看了一眼碑上所显示出来的信息，语气漠然的将之公布了出来…<br><br>中年男子话刚刚脱口，便是不出意外的在人头汹涌的广场上带起了一阵嘲讽的骚动。<br><br>“三段？嘿嘿，果然不出我所料，这个“天才”这一年又是在原地踏步！”<br><br>“哎，这废物真是把家族的脸都给丢光了。”<br><br>“要不是族长是他的父亲，这种废物，早就被驱赶出家族，任其自生自灭了，哪还有机会待在家族中白吃白喝。”<br><br>“唉，昔年那名闻乌坦城的天才少年，如今怎么落魄成这般模样了啊？”<br><br>“谁知道呢，或许做了什么亏心事，惹得神灵降怒了吧…”<br><br>周围传来的不屑嘲笑以及惋惜轻叹，落在那如木桩待在原地的少年耳中，恍如一根根利刺狠狠的扎在心脏一般，让得少年呼吸微微急促。<br><br>少年缓缓抬起头来，露出一张有些清秀的稚嫩脸庞，漆黑的眸子木然的在周围那些嘲讽的同龄人身上扫过，少年嘴角的自嘲，似乎变得更加苦涩了。<br><br>“这些人，都如此刻薄势力吗？或许是因为三年前他们曾经在自己面前露出过最谦卑的笑容，所以，如今想要讨还回去吧…”苦涩的一笑，萧炎落寞的转身，安静的回到了队伍的最后一排，孤单的身影，与周围的世界，有些格格不入。<br><br>“下一个，萧媚！”<br><br>听着测验人的喊声，一名少女快速的人群中跑出，少女刚刚出场，附近的议论声便是小了许多，一双双略微火热的目光，牢牢的锁定着少女的脸颊…<br><br>少女年龄不过十四左右，虽然并算不上绝色，不过那张稚气未脱的小脸，却是蕴含着淡淡的妩媚，清纯与妩媚，矛盾的集合，让得她成功的成为了全场瞩目的焦点…<br><br>少女快步上前，小手轻车熟路的触摸着漆黑的魔石碑，然后缓缓闭上眼睛…<br><br>在少女闭眼片刻之后，漆黑的魔石碑之上再次亮起了光芒…<br><br>“斗之气：七段！”<br><br>“萧媚，斗之气：七段！级别:高级！”<br><br>“耶！”听着测验员所喊出的成绩，少女脸颊扬起了得意的笑容…<br><br>“啧啧，七段斗之气，真了不起，按这进度，恐怕顶多只需要三年时间，她就能成为一名真正的斗者了吧…”<br><br>“不愧是家族中种子级别的人物啊…”<br><br>听着人群中传来的一阵阵羡慕声，少女脸颊上的笑容更是多了几分，虚荣心，这是很多女孩都无法抗拒的诱惑…<br><br>与平日里的几个姐妹互相笑谈着，萧媚的视线，忽然的透过周围的人群，停在了人群外的那一道孤单身影上…<br><br>皱眉思虑了瞬间，萧媚还是打消了过去的念头，现在的两人，已经不在同一个阶层之上，以萧炎最近几年的表现，成年后，顶多只能作为家族中的下层人员，而天赋优秀的她，则将会成为家族重点培养的强者，前途可以说是不可限量。<br><br>“唉…”莫名的轻叹了一口气，萧媚脑中忽然浮现出三年前那意气风发的少年，四岁练气，十岁拥有九段斗之气，十一岁突破十段斗之气，成功凝聚斗之气旋，一跃成为家族百年之内最年轻的斗者！<br><br>当初的少年，自信而且潜力无可估量，不知让得多少少女对其春心荡漾，当然，这也包括以前的萧媚。<br><br>然而天才的道路，貌似总是曲折的，三年之前，这名声望达到巅峰的天才少年，却是突兀的接受到了有生以来最残酷的打击，不仅辛辛苦苦修炼十数载方才凝聚的斗之气旋，一夜之间，化为乌有，而且体内的斗之气，也是随着时间的流逝，变得诡异的越来越少。<br><br>斗之气消失的直接结果，便是导致其实力不断的后退。<br><br>从天才的神坛，一夜跌落到了连普通人都不如的地步，这种打击，让得少年从此失魂落魄，天才之名，也是逐渐的被不屑与嘲讽所替代。<br><br>站的越高，摔得越狠，这次的跌落，或许就再也没有爬起的机会。<br><br>“下一个，萧薰儿！”<br><br>喧闹的人群中，测试员的声音，再次响了起来。<br><br>随着这有些清雅的名字响起，人群忽然的安静了下来，所有的视线，豁然转移。<br><br>在众人视线汇聚之处，一位身着紫色衣裙的少女，正淡雅的站立，平静的稚嫩俏脸，并未因为众人的注目而改变分毫。<br><br>少女清冷淡然的气质，犹如清莲初绽，小小年纪，却已初具脱俗气质，难以想象，日后若是长大，少女将会如何的倾国倾城…<br><br>这名紫裙少女，论起美貌与气质来，比先前的萧媚，无疑还要更胜上几分，也难怪在场的众人都是这般动作。<br><br>莲步微移，名为萧薰儿的少女行到魔石碑之前，小手伸出，镶着黑金丝的紫袖滑落而下，露出一截雪白娇嫩的皓腕，然后轻触着石碑…<br><br>微微沉静，石碑之上，刺眼的光芒再次绽放。<br><br>“斗之气：九段！级别：高级！”<br><br>望着石碑之上的字体，场中陷入了一阵寂静。<br><br>“…竟然到九段了，真是恐怖！家族中年轻一辈的第一人，恐怕非薰儿小姐莫属了。”寂静过后，周围的少年，都是不由自主的咽了一口唾沫，眼神充满敬畏…<br><br>斗之气，每位斗者的必经之路，初阶斗之气分一至十段，当体内斗之气到达十段之时，便能凝聚斗之气旋，成为一名受人尊重的斗者！<br><br>人群中，萧媚皱着浅眉盯着石碑前的紫裙少女，脸颊上闪过一抹嫉妒…<br><br>望着石碑上的信息，一旁的中年测验员漠然的脸庞上竟然也是罕见的露出了一丝笑意，对着少女略微恭声道：“薰儿小姐，半年之后，你应该便能凝聚斗气之旋，如果你成功的话，那么以十四岁年龄成为一名真正的斗者，你是萧家百年内的第二人！”<br><br>是的，第二人，那位第一人，便是褪去了天才光环的萧炎。<br><br>“谢谢。”少女微微点了点头，平淡的小脸并未因为他的夸奖而出现喜悦，安静的回转过身，然后在众人炽热的注目中，缓缓的行到了人群最后面的那颓废少年面前…<br><br>“萧炎哥哥。”在经过少年身旁时，少女顿下了脚步，对着萧炎恭敬的弯了弯腰，美丽的俏脸上，居然露出了让周围少女为之嫉妒的清雅笑容。<br><br>“我现在还有资格让你这么叫么?”望着面前这颗已经成长为家族中最璀璨的明珠，萧炎苦涩的道，她是在自己落魄后，极为少数还对自己依旧保持着尊敬的人。<br><br>“萧炎哥哥，以前你曾经与薰儿说过，要能放下，才能拿起，提放自如，是自在人！”萧薰儿微笑着柔声道，略微稚嫩的嗓音，却是暖人心肺。<br><br>“呵呵，自在人？我也只会说而已，你看我现在的模样，像自在人吗？而且…这世界，本来就不属于我。”萧炎自嘲的一笑，意兴阑珊的道。<br><br>面对着萧炎的颓废，萧薰儿纤细的眉毛微微皱了皱，认真的道：“萧炎哥哥，虽然并不知道你究竟是怎么回事，不过，薰儿相信，你会重新站起来，取回属于你的荣耀与尊严…”话到此处，微顿了顿，少女白皙的俏脸，头一次露出淡淡的绯红：“当年的萧炎哥哥，的确很吸引人…”<br><br>“呵呵…”面对着少女毫不掩饰的坦率话语，少年尴尬的笑了一声，可却未再说什么，人不风流枉少年，可现在的他，实在没这资格与心情，落寞的回转过身，对着广场之外缓缓行去…<br><br>站在原地望着少年那恍如与世隔绝的孤独背影，萧薰儿踌躇了一会，然后在身后一干嫉妒的狼嚎声中，快步追了上去，与少年并肩而行…&nbsp;&nbsp;<br></p>', ' 陨落的天才', '2019-07-22 14:24:14', '2019-07-22 14:24:14', '2');
INSERT INTO `novel_chapter` VALUES ('35', '2', '<p>novelChapter.setNovel(novel);<br>		System.out.prin月如银盘，漫天繁星。</p><br>山崖之颠，萧炎斜躺在草地之上，嘴中叼中一根青草，微微嚼动，任由那淡淡的苦涩在嘴中弥漫开来…<br><br>举起有些白皙的手掌，挡在眼前，目光透过手指缝隙，遥望着天空上那轮巨大的银月。<br><br>“唉…”想起下午的测试，萧炎轻叹了一口气，懒懒的抽回手掌，双手枕着脑袋，眼神有些恍惚…<br><br>“十五年了呢…”低低的自喃声，忽然毫无边际的从少年嘴中轻吐了出来。<br><br>在萧炎的心中，有一个仅有他自己知道的秘密：他并不是这个世界的人，或者说，萧炎的灵魂，并不属于这个世界，他来自一个名叫地球的蔚蓝星球，至于为什么会来到这里，这种离奇经过，他也无法解释，不过在生活了一段时间之后，他还是后知后觉的明白了过来：他穿越了！<br><br>随着年龄的增长，对这块大陆，萧炎也是有了些模糊的了解…<br><br>大陆名为斗气大陆，大陆上并没有小说中常见的各系魔法，而斗气，才是大陆的唯一主调！<br><br>在这片大陆上，斗气的修炼，几乎已经在无数代人的努力之下，发展到了巅峰地步，而且由于斗气的不断繁衍，最后甚至扩散到了民间之中，这也导致，斗气，与人类的日常生活，变得息息相关，如此，斗气在大陆中的重要性，更是变得无可替代！<br><br>因为斗气的极端繁衍，同时也导致从这条主线中分化出了无数条斗气修炼之法，所谓手有长短，分化出来的斗气修炼之法，自然也是有强有弱。<br><br>经过归纳统计，斗气大陆将斗气功法的等级，由高到低分为四阶十二级：天.地.玄.黄！<br><br>而每一阶，又分初，中，高三级！<br><br>修炼的斗气功法等级的高低，也是决定日后成就高低的关键，比如修炼玄阶中级功法的人，自然要比修炼黄阶高级功法的同等级的人要强上几分。<br><br>斗气大陆，分辩强弱，取决于三种条件。<br><br>首先，最重要的，当然是自身的实力，如果本身实力只有一星斗者级别，那就算你修炼的是天阶高级的稀世功法，那也难以战胜一名修炼黄阶功法的斗师。<br><br>其次，便是功法！同等级的强者，如果你的功法等级较之对方要高级许多，那么在比试之时，种种优势，一触既知。<br><br>最后一种，名叫斗技！<br><br>顾名思义，这是一种发挥斗气的特殊技能，斗技在大陆之上，也有着等级之分，总的说来，同样也是分为天地玄黄四级。<br><br>斗气大陆斗技数不胜数，不过一般流传出来的大众斗技，大多都只是黄级左右，想要获得更高深的斗技，便必须加入宗派，或者大陆上的斗气学院。<br><br>当然，一些依靠奇遇所得到前人遗留而下的功法，或者有着自己相配套的斗技，这种由功法衍变而出的斗技，互相配合起来，威力要更强上一些。<br><br>依靠这三种条件，方才能判出究竟孰强孰弱，总的说来，如果能够拥有等级偏高的斗气功法，日后的好处，不言而喻…<br><br>不过高级斗气修炼功法常人很难得到，流传在普通阶层的功法，顶多只是黄阶功法，一些比较强大的家族或者中小宗派，应该有玄阶的修炼之法，比如萧炎所在的家族，最为顶层的功法，便是只有族长才有资格修炼的：狂狮怒罡，这是一种风属性，并且是玄阶中级的斗气功法。<br><br>玄阶之上，便是地阶了，不过这种高深功法，或许便只有那些超然势力与大帝国，方才可能拥有…<br><br>至于天阶…已经几百年未曾出现了。<br><br>从理论上来说，常人想要获得高级功法，基本上是难如登天，然而事无绝对，斗气大陆地域辽阔，万族林立，大陆之北，有号称力大无穷，可与兽魂合体的蛮族，大陆之南，也有各种智商奇高的高级魔兽家族，更有那以诡异阴狠而著名的黑暗种族等等…<br><br>由于地域的辽阔，也有很多不为人知的无名隐士，在生命走到尽头之后，性子孤僻的他们，或许会将平生所创功法隐于某处，等待有缘人取之，在斗气大陆上，流传一句话：如果某日，你摔落悬崖，掉落山洞，不要惊慌，往前走两步，或许，你，将成为强者！<br><br>此话，并不属假，大陆近千年历史中，并不泛这种依靠奇遇而成为强者的故事.<br><br>这个故事所造成的后果，便是造就了大批每天等在悬崖边，准备跳崖得绝世功法的怀梦之人，当然了，这些人大多都是以断胳膊断腿归来…<br><br>总之，这是一片充满奇迹，以及创造奇迹的大陆！<br><br>当然，想要修炼斗气秘籍，至少需要成为一名真正的斗者之后，方才够资格，而现在的萧炎隔那段距离，似乎还很是遥远…<br><br>“呸。”吐出嘴中的草根，萧炎忽然跳起身来，脸庞狰狞，对着夜空失态的咆哮道：“我草你奶奶的，把劳资穿过来当废物玩吗？草！”<br><br>在前世，萧炎只是庸碌众生中极其平凡的一员，金钱，美人，这些东西与他根本就是两条平行线，永远没有交叉点，然而，当来到这片斗气大陆之后，萧炎却是惊喜的发现，因为两世的经验，他的灵魂，竟然比常人要强上许多！<br><br>要知道，在斗气大陆，灵魂是天生的，或许它能随着年龄的增长而稍稍变强，可却从没有什么功法能够单独修炼灵魂，就算是天阶功法，也不可能！这是斗气大陆的常识。<br><br>灵魂的强化，也造就出萧炎的修炼天赋，同样，也造就了他的天才之名。<br><br>当一个平凡庸碌之人，在知道他有成为无数人瞩目的本钱之后，若是没有足够的定力，很难能够把握本心，很显然的，前世仅仅是普通人的萧炎，并没有这种超人般的定力，所以，在他开始修炼斗之气后，他选择了成为受人瞩目的天才之路，而并非是在安静中逐渐成长！<br><br>若是没有意外发生的话，萧炎或许还真能够顶着天才的名头越长越大，不过，很可惜，在十一岁那年，天才之名，逐渐被突如其来的变故剥夺而去，而天才，也是在一夜间，沦落成了路人口中嘲笑的废物！<br><br>……<br><br>在咆哮了几嗓子之后，萧炎的情绪也是缓缓的平息了下来，脸庞再次回复了平日的落寞，事与至此，不管他如何暴怒，也是挽不回辛苦修炼而来的斗之气旋。<br><br>苦涩的摇了摇头，萧炎心中其实有些委屈，毕竟他对自己身体究竟发生了什么事，也是一概不知，平日检查，却没有发现丝毫不对劲的地方，灵魂，随着年龄的增加，也是越来越强大，而且吸收斗之气的速度，比几年前最巅峰的状态还要强盛上几分，这种种条件，都说明自己的天赋从不曾减弱，可那些进入体内的斗之气，却都是无一例外的消失得干干净净，诡异的情形，让得萧炎黯然神伤…<br><br>黯然的叹了口气，萧炎抬起手掌，手指上有一颗黑色戒指，戒指很是古朴，不知是何材料所铸，其上还绘有些模糊的纹路，这是母亲临死前送给他的唯一礼物，从四岁开始，他已经佩戴了十年，母亲的遗物，让得萧炎对它也是有着一份眷恋，手指轻轻的抚摸着戒指，萧炎苦笑道：“这几年，还真是辜负母亲的期望了…”<br><br>深深的吐了一口气，萧炎忽然回转过头，对着漆黑的树林温暖的笑道：“父亲，您来了？”<br><br>虽然斗之气只有三段，不过萧炎的灵魂感知，却是比一名五星斗者都要敏锐许多，在先前说起母亲的时候，他便察觉到了树林中的一丝动静。<br><br>“呵呵，炎儿，这么晚了，怎么还待在这上面呢？”树林中，在静了片刻后，传出男子的关切笑声。<br><br>树枝一阵摇摆，一位中年人跃了出来，脸庞上带着笑意，凝视着自己那站在月光下的儿子。<br><br>中年人身着华贵的灰色衣衫，龙行虎步间颇有几分威严，脸上一对粗眉更是为其添了几分豪气，他便是萧家现任族长，同时也是萧炎的父亲，五星大斗师，萧战！<br><br>“父亲，您不也还没休息么？”望着中年男子，萧炎脸庞上的笑容更浓了一分，虽然自己有着前世的记忆，不过自出生以来，面前这位父亲便是对自己百般宠爱，在自己落魄之后，宠爱不减反增，如此行径，却是让得萧炎甘心叫他一声父亲。<br><br>“炎儿，还在想下午测验的事呢？”大步上前，萧战笑道。<br><br>“呵呵，有什么好想的，意料之中而已。”萧炎少年老成的摇了摇头，笑容却是有些勉强。<br><br>“唉…”望着萧炎那依旧有些稚嫩的清秀脸庞，萧战叹了一口气，沉默了片刻，忽然道：“炎儿，你十五岁了吧？”<br><br>“嗯，父亲。”<br><br>“再有一年，似乎…就该进行成年仪式了…”萧战苦笑道。<br><br>“是的，父亲，还有一年！”手掌微微一紧，萧炎平静的回道，成年仪式代表什么，他自然非常清楚，只要度过了成年仪式，那么没有修炼潜力的他，便将会被取消进入斗气阁寻找斗气功法的资格，从而被分配到家族的各处产业之中，为家族打理一些普通事物，这是家族的族规，就算他的父亲是族长，那也不可能改变！<br><br>毕竟，若是在二十五岁之前没有成为一名斗者，那将不会被家族所认可！<br><br>“对不起了，炎儿，如果在一年后你的斗之气达不到七段，那么父亲也只得忍痛把你分配到家族的产业中去，毕竟，这个家族，还并不是父亲一人说了算，那几个老家伙，可随时等着父亲犯错呢…”望着平静的萧炎，萧战有些歉疚的叹道。<br><br>“父亲，我会努力的，一年后，我一定会到达七段斗之气的！”萧炎微笑着安慰道。<br><br>“一年，四段？呵呵，如果是以前，或许还有可能吧，不过现在…基本没半点机会…”虽然口中在安慰着父亲，不过萧炎心中却是自嘲的苦笑了起来。<br><br>同样非常清楚萧炎底细的萧战，也只得叹息着应了一声，他知道一年修炼四段斗之气有多困难，轻拍了拍他的脑袋，忽然笑道：“不早了，回去休息吧，明天，家族中有贵客，你可别失了礼。”<br><br>“贵客？谁啊？”萧炎好奇的问道。<br><br>“明天就知道了.”对着萧炎挤了挤眼睛，萧战大笑而去，留下无奈的萧炎。<br><br>“放心吧，父亲，我会尽力的！”抚摸着手指上的古朴戒指，萧炎抬头喃喃道。<br><br>在萧炎抬头的那一刹，手指中的黑色古戒，却是忽然亮起了一抹极其微弱的诡异毫光，毫光眨眼便逝，没有引起任何人的察觉…', '斗气大陆', '2019-07-22 14:32:37', '2019-07-22 14:32:37', '2');
INSERT INTO `novel_chapter` VALUES ('36', '3', '<p>床榻之上，少年闭目盘腿而坐，双手在身前摆出奇异的手印，胸膛轻微起伏，一呼一吸间，形成完美的循环，而在气息循环间，有着淡淡的白色气流顺着口鼻，钻入了体内，温养着骨骼与**。<br><br>在少年闭目修炼之时，手指上那古朴的黑色戒指，再次诡异的微微发光，旋即沉寂…<br><br>“呼…”缓缓的吐出一口浊气，少年双眼乍然睁开，一抹淡淡的白芒在漆黑的眼中闪过，那是刚刚被吸收，而又未被完全炼化的斗之气。<br><br>“好不容易修炼而来的斗之气，又在消失…我，我草！”沉神感应了一下体内，少年脸庞猛然的愤怒了起来，声音有些尖锐的骂道。<br><br>拳头死死的捏在了一起，半晌后，少年苦笑着摇了摇头，身心疲惫的爬下了床，舒展了一下有些发麻的脚腕与大腿，仅仅拥有三段斗之气的他，可没有能力无视各种疲累。<br><br>简单的在房间中活动了下身体，房间外传来苍老的声音：“三少爷，族长请你去大厅！”<br><br>三少爷，萧炎在家中排行老三，上面还有两位哥哥，不过他们早已经外出历练，只有年终，才会偶尔回家，总的说来，两位哥哥对萧炎这位亲弟弟，也很是不错。<br><br>“哦。”随口的应了下来，换了一身衣衫，萧炎走出房间，对着房外的一名青衫老者微笑道：“走吧，墨管家。”<br><br>望着少年稚嫩的脸庞，青衫老者和善的点了点头，转身的霎那，浑浊的老眼，掠过一抹不易察觉的惋惜，唉，以三少爷以前的天赋，恐怕早该成为一名出色的斗者了吧，可惜…<br><br>跟着老管家从后院穿过，最后在肃穆的迎客大厅外停了下来，恭敬的敲了门，方才轻轻的推门而入。<br><br>大厅很是宽敞，其中的人数也是不少，坐于最上方的几位，便是萧战与三位脸色淡漠的老者，他们是族中的长老，权利不比族长小。<br><br>在四人的左手下方，坐着家族中一些有话语权且实力不弱的长辈，在他们的身旁，也有一些在家族中表现杰出的年轻一辈。<br><br>另外一边，坐着三位陌生人，想必他们便是昨夜萧战口中所说的贵客。<br><br>有些疑惑的目光在陌生的三人身上扫过，三人之中，有一位身穿月白衣袍的老者，老者满脸笑容，神采奕奕，一双有些细小的双眼，却是精光偶闪，萧炎的视线微微下移，最后停在了老者胸口上，心头猛然一凛，在老者的衣袍胸口处，赫然绘有一弯银色浅月，在浅月周围，还有点缀着七颗金光闪闪的星辰。<br><br>“七星大斗师！这老人竟然是一位七星大斗师？真是人不可貌相！”萧炎心中大感惊异，这老者的实力，竟然比自己的父亲，还要高出两星。<br><br>能够成为大斗师的人，至少都是名动一方的强者，那样的实力，将会让得任何势力趋之若鹜，而忽然间看见一位如此等级的强者，也难怪萧炎会感到诧异。<br><br>老者身旁，坐有一对年轻的男女，他们的身上同样穿着相同的月白袍服，男子年龄在二十左右，英俊的相貌，配上挺拔的身材，很是具有魅力，当然，最重要的，还是其胸口处所绘的五颗金星，这代表着青年的实力：五星斗者！<br><br>能够以二十岁左右的年龄成为一名五星斗者，这说明青年的修炼天赋，也很是不一般。<br><br>英俊的相貌，加上不俗的实力，这位青年，不仅将家族中的一些无知少女迷得神魂颠倒，就是连那坐在一旁的萧媚，美眸中在移向这边之时，也是微放着异彩。<br><br>少女虽然暗送秋波，不过这似乎对青年并没有什么吸引力，此时，这位青年正将所有的注意力，集中在自己身旁的美丽少女身上…<br><br>这位少女年龄和萧炎相仿，让萧炎有些意外的，她的容貌，竟然比萧媚还要美上几分，在这家族之中，恐怕也只有那犹如青莲一般的萧熏儿能够与之相比，难怪这男子对族中的这些胭脂俗粉不屑一顾。<br><br>少女娇嫩的耳垂上吊有着绿色的玉坠，微微摇动间，发出清脆的玉响，突兀的现出一抹娇贵…<br><br>另外，在少女那已经开始发育的玲珑小胸脯旁，绘有三颗金星。<br><br>“三星斗者，这女孩…如果没有靠外物激发的话，那便是一个绝顶天才！”心头轻轻的吸了一口凉气，萧炎的目光却只是在少女冷艳的小脸上停留了瞬间便是移了开去，不管如何说，在他幼稚的外貌下，也是拥有一个成熟的灵魂，虽然少女很美丽，不过他也没闲心露出流口水的猪哥状来讨人嫌。<br><br>萧炎的这举动似乎有些让得少女略感诧异，虽然她并不是那种以为世界围着自己转的女孩，不过自己的美貌与气质如何，她再清楚不过，萧炎的这番随意动作，倒真让她有点意外，当然，也仅此而已！<br><br>“父亲，三位长老！”快步上前，对着上位的萧战四人恭敬的行了一礼。<br><br>“呵呵，炎儿，来了啊，快坐下吧。”望着萧炎的到来，萧战止住了与客人的笑谈，冲着他点了点头，挥手道。<br><br>微笑点头，萧炎只当做没有看见一旁三位长老射来的不耐以及淡淡的不屑，回头在厅中扫了扫，却是愕然发现，竟然没自己的位置…<br><br>“唉，自己在这家族中的地位，看来还真是越来越低啊，往日倒好，现在竟然是当着客人的面给我难堪，这三个老不死的啊…”心头自嘲的一笑，萧炎暗自摇头。<br><br>望着站在原地不动的萧炎，周围的族中年轻人，都是忍不住的发出讥笑之声，显然很是喜欢看他出丑的模样。<br><br>此时，上面的萧战也是发现了萧炎的尴尬，脸庞上闪过一抹怒气，对着身旁的老者皱眉道：“二长老，你…”<br><br>“咳，实在抱歉，竟然把三少爷搞忘记了，呵呵，我马上叫人准备!”被萧战瞪住的黄袍老者，淡淡的笑了笑，“自责”的拍了拍额头，只是其眼中的那抹讥讽，却并未有多少遮掩。<br><br>“萧炎哥哥，坐这里吧！”少女淡淡的笑声，忽然的在大厅中响了起来。<br><br>三位长老微愣，目光移向角落中安静的萧熏儿，嘴巴蠕了蠕，竟然是都没有敢再说话…<br><br>在大厅的角落处，萧熏儿微笑着合拢了手中厚厚的书籍，气质淡雅从容，对着萧炎可爱的眨了眨眼睛。<br><br>望着萧熏儿那微笑的小脸，萧炎迟疑了一下，摸着鼻子点了点头，然后在众多少年那嫉妒的目光中，走了过去，挨着她坐了下去。<br><br>“你又帮我解围了。”嗅着身旁少女的淡淡体香，萧炎低笑道。<br><br>萧熏儿浅浅一笑，小脸上露出可爱的小酒窝，纤细的指尖再次翻开手中那本古朴的书籍，小小年纪，却有一种知性的美感，眨动着修长的睫毛在书中徘徊了片刻，忽然有些幽幽的道：“萧炎哥哥有三年没和熏儿单独坐一起了吧？”<br><br>“呃…现在熏儿可是家族中的天才了，想要朋友还不简单么？”瞧得少女有些幽怨的光洁侧脸，萧炎干笑道。<br><br>“在熏儿四岁到六岁的时候，每天晚上都有人溜进我的房间，然后用一种很是笨拙的手法以及并不雄厚的斗之气，温养我的骨骼与经脉，每次都要弄得自己大汗淋漓后，方才疲惫离开，萧炎哥哥，你说，他会是谁？”熏儿沉默了半晌，忽然的偏过头，对着萧炎嫣然一笑，少女独有的风情，让得周围的少年眼睛有些放光。<br><br>“咳…我，我怎么知道？那么小，我们都还在地上爬呢，我哪知道。”心头猛的一跳，萧炎讪笑了两声，旋即有些心虚的将目光转向大厅内。<br><br>“嘻嘻…”望着萧炎的反映，萧熏儿小嘴泛起了柔和的笑意，目光转移到书籍之上，口中似乎是自喃般的淡淡道：“虽然知道他是好意，可熏儿不管怎么说也是女孩子吧？哪有偷偷摸女孩子身体的道理，若是熏儿寻出了那人，哼…”<br><br>嘴角裂了裂，萧炎心头有些心虚，眼观鼻，鼻观心，不言不语…<br></p>', '客人', '2019-07-22 14:35:41', '2019-07-22 14:35:41', '2');
INSERT INTO `novel_chapter` VALUES ('37', '4', '<p>大厅中,萧战以及三位长老,正在颇为热切的与那位陌生老者交谈着,不过这位老者似乎有什么难以启齿的事情一般,每每到口的话语,都将会有些无奈的咽了回去,而每当这个时候,一旁的娇贵少女,都是忍不住的横了老者一眼…<br><br>倾耳听了一会，萧炎便是有些无聊的摇了摇头…<br><br>“萧炎哥哥，你知道他们的身份吗？”就在萧炎无聊得想要打瞌睡之时，身旁的熏儿，纤指再次翻开古朴的书页，目不斜视的微笑道。<br><br>“你知道？”好奇的转过头来，萧炎惊诧的问道。<br><br>“看见他们袍服袖口处的云彩银剑了么？”微微一笑，熏儿道。<br><br>“哦？”心头一动，萧炎目光转向三人袖口，果然是发现了一道云彩形状的银剑。<br><br>“他们是云岚宗的人？”萧炎惊讶的低声道。<br><br>虽然并没有外出历练，不过萧炎在一些书籍中却看过有关这剑派的资料，萧家所在的城市名为乌坦城，乌坦城隶属于加玛帝国，虽然此城因为背靠魔兽山脉的地利，而跻身进入帝国的大城市之列，不过也仅仅只是居于末座。<br><br>萧炎的家族，在乌坦城颇有份量，不过却也并不是唯一，城市中，还有另外两大家族实力与萧家相差无几，三方彼此明争暗斗了几十年，也未曾分出胜负…<br><br>如果说萧家是乌坦城的一霸，那么萧炎口中所说的云岚宗，或许便应该说是整个加玛帝国的一霸！这之间的差距，犹如鸿沟，也难怪连平日严肃的父亲，在言语上很是敬畏。<br><br>“他们来我们家族做什么？”萧炎有些疑惑的低声询问道。<br><br>移动的纤细指尖微微一顿，熏儿沉默了一会，方才道：“或许和萧炎哥哥有关…”<br><br>“我？我可没和他们有过什么交集啊？”闻言，萧炎一怔，摇头否认。<br><br>“知道那少女叫什么名字吗？”熏儿淡淡的扫了一眼对面的娇贵少女。<br><br>“什么？”眉头一皱，萧炎追问道。<br><br>“纳兰嫣然！”熏儿小脸浮现点点古怪之意，斜瞥着身子有些僵硬的萧炎。<br><br>“纳兰嫣然？加玛帝国狮心元帅纳兰桀的孙女纳兰嫣然？那位…那位与我指腹为婚的未婚妻？”萧炎脸色僵硬的道。<br><br>“嘻嘻，爷爷当年与纳兰桀是生死好友，而当时恰逢你与纳兰嫣然同时出生，所以，两位老爷子便定了这门亲事，不过，可惜，在你出生后的第三年，爷爷便因与仇人交战重伤而亡，而随着时间的流逝，萧家与纳兰家的关系也是逐渐的浅了下来…”熏儿微微顿了顿，望着萧炎那瞪大的眼睛，不由得轻笑了一声，接着道：“纳兰桀这老头不仅性子桀骜，而且为人又极其在乎承喏，当年的婚事，是他亲口应下来的，所以就算萧炎哥哥最近几年名声极差，他也未曾派人过来悔婚…”<br><br>“这老头还的确桀得可爱…”听到此处，萧炎也是忍不住笑着摇了摇头。<br><br>“纳兰桀在家族中拥有绝对的话语权，他说的话，一般都没人敢反对，虽然他也很疼爱纳兰嫣然这孙女，不过想要他开口解除婚约，却是有些困难…”熏儿美丽的眼睛微弯，戏谑道：“可五年之前，纳兰嫣然被云岚宗宗主云韵亲自收做弟子，五年间，纳兰嫣然表现出了绝佳的修炼天赋，更是让得云韵对其宠爱不已…当一个人拥有了改变自己命运的力量时候，那么她会想尽办法将自己不喜欢的事，解决掉…很不幸的，萧炎哥哥与她的婚事，便是让她最不满意的地方！”<br><br>“你是说，她此次是来解除婚约的？”<br><br>脸色一变，萧炎心头猛的涌出一阵怒气，这怒气并不是因为纳兰嫣然对他的歧视，说实在的，对面的少女虽然美丽，可他萧炎也不是一个被下半身支配心智的色狼，就算与她结不成秦晋之好，那萧炎也顶多只是有些男人惯性的遗憾而已，可如果她真的在大庭广众下对自己的父亲提出了解除婚约的请求，那么父亲这族长的脸，可就算是丢尽了！<br><br>纳兰嫣然不仅美丽娇俏，地位显赫，而且天赋绝佳，任何人在说起此事时，都将会认为他萧炎是癞蛤蟆想吃天鹅肉不成，却反被天鹅踏在了脚下…<br><br>如此的话，日后不仅萧炎，就算是他的父亲，也将会沦落为他人笑柄，威严大失。<br><br>轻轻的吸了一口冰凉的空气，萧炎那藏在袖间的手掌，却已是紧紧的握拢了起来：“如果自己现在是一名斗师，谁又敢如此践踏于我？”<br><br>的确，如果萧炎此时拥有斗师实力，那么，就算纳兰嫣然有着云岚宗撑腰，那也不可能做出如此行径，年仅十五岁的斗师，嘿，在斗气大陆这么多年的历史中，可唯有那寥寥数人而已，而且这几人，都早已经成为了斗气修炼界中的泰山北斗！<br><br>一只娇嫩的小手，悄悄的穿过衣袖，轻轻的按着萧炎紧握的手掌，熏儿柔声道：“萧炎哥哥，她若真如此行事，只是她的损失而已，熏儿相信，日后，她会为今日的短浅目光后悔！”<br><br>“后悔？”嗤笑了一声，萧炎脸庞满是自嘲：“现在的自己，有那资格？”<br><br>“熏儿，你对他们似乎知道得很清楚？你先前所说的一些东西中，或许就是连我父亲，也不知道吧？你是如何得知的？”轻摆了摆手，萧炎话音忽然一转，问道。<br><br>熏儿一怔，却是含笑不语。<br><br>望着熏儿的躲避态势，萧炎只得无奈的撇了撇嘴，熏儿虽然也姓萧，不过与他却没有半点血缘关系，而且熏儿的父母，萧炎也从未见过，每当他询问自己的父亲时，满脸笑容的父亲便会立刻闭口不语，显然对熏儿的父母很是忌讳，甚至…惧怕！<br><br>在萧炎心中，熏儿的身份，极为神秘，可不管他如何侧面询问，这小妮子都会机灵的以沉默应对，让得萧炎就算有计也是无处可施。<br><br>“唉，算了，懒得管你，不说就不说吧…”摇了摇头，萧炎的脸色忽然阴沉了下来，因为对面那在纳兰嫣然不断示意的眼色下，那位老者，终于是站起来了…<br><br>“呵呵，借助着云岚宗向父亲施威么？这纳兰嫣然，真是好手段呐…”萧炎的心头，响起了愤怒的冷笑。&nbsp;&nbsp;<br></p>', '云岚宗', '2019-07-22 14:39:02', '2019-07-22 14:39:02', '2');
INSERT INTO `novel_chapter` VALUES ('38', '5', '<p>“咳。”白袍老者轻咳了一声，站起身来对着萧战拱了拱手，微笑道：“萧族长，此次前来贵家族，主要是有事相求！”<br><br>“呵呵，葛叶先生，有事请说便是，如果力所能及，萧家应该不会推辞。”对于这位老者，萧战可不敢怠慢，连忙站起来客气的道，不过由于不知道对方到底所求何事，所以也不敢把话说得太满。<br><br>“呵呵，萧族长，你可认识她么？”葛叶微微一笑，指着身旁的少女含笑问道。<br><br>“呃…恕萧战眼拙，这位小姐…”闻言，萧战一愣，上下打量了一下少女，略微有些尴尬的摇了摇头。<br><br>当年纳兰嫣然被云韵收为弟子之时，年仅十岁，在云岚宗中修炼了五年时间，所谓女大十八变，好多年未见，萧战自然不知道面前的少女，便是自己名义上的儿媳妇。<br><br>“咳…她的名字叫纳兰嫣然。”<br><br>“纳兰嫣然？纳兰老爷子的孙女纳兰嫣然？”萧战先是一怔，紧接着满脸大喜，想必是记起了当年的那事，当下，急忙对着少女露出温和的笑容：“原来是纳兰侄女，萧叔叔可有好多年未曾与你见面了，可别怪罪叔叔眼拙。”<br><br>忽然出现的一幕，让得众人也是略微一愣，三位长老互相对视了一眼，眉头不由得皱了皱…<br><br>“萧叔叔，侄女一直未曾前来拜见，该赔罪的，可是我呢，哪敢怪罪萧叔叔。”纳兰嫣然甜甜的笑道。<br><br>“呵呵，纳兰侄女，以前便听说了你被云韵大人收入门下，当时还以为是流言，没想到，竟然是真的，侄女真是好天赋啊…”萧战笑着赞叹道。<br><br>“嫣然只是好运罢了…”浅浅一笑，纳兰嫣然有些吃不消萧战的热情，桌下的手掌，轻轻扯了扯身旁的葛叶。<br><br>“呵呵，萧族长，在下今日所请求之事，便与嫣然有关，而且此事，还是宗主大人亲自开口…”葛叶轻笑了一声，在提到宗主二字时，脸庞上的表情，略微郑重。<br><br>脸色微微一变，萧战也是收敛了笑容，云岚宗宗主云韵可是加玛帝国的大人物，他这小小的一族之长，可是半点都遭惹不起，可以她的实力与势力，又有何事需要萧家帮忙？葛叶说是与纳兰侄女有关，难道？<br><br>想到某种可能，萧战的嘴角忍不住的抽搐了几下，硕大的手掌微微颤抖，不过好在有着袖子的遮掩，所以也未曾被发现，强行压下心头的怒火，声音有些发颤的凝声道：“葛叶先生，请说！”<br><br>“咳…”葛叶脸色忽然出现了一抹尴尬，不过想起宗主对纳兰嫣然的疼爱，又只得咬了咬牙，笑道：“萧族长，您也知道，云岚宗门风严厉，而且宗主大人对嫣然的期望也是很高，现在基本上已经是把她当做云岚宗下一任的宗主在培养…而因为一些特殊的规矩，宗主传人在未成为正式宗主之前，都不可与男子有纠葛…”<br><br>“宗主大人在询问过嫣然之后，知道她与萧家还有一门亲事，所以…所以宗主大人想请萧族长，能够…解除了这婚约。”<br><br>“咔！”萧战手中的玉石杯，轰然间化为了一蓬粉末。<br><br>大厅之中，气氛有些寂静，上方的三位长老也是被葛叶的话震了了震，不过片刻之后，他们望向萧战的目光中，已经多出了一抹讥讽与嘲笑。<br><br>“嘿嘿，被人上门强行解除婚约，看你这族长，以后还有什么威望管理家族！”<br><br>一些年轻一辈的少年少女并不知晓萧炎与纳兰嫣然的婚约，不过在向身旁的父母打听了一下之后，他们的脸色，顿时变得精彩了起来，讥诮的嘲讽目光，投向了角落处的萧炎…<br><br>望着萧战那阴沉至极的脸色，纳兰嫣然也是不敢抬头，将头埋下，手指紧张的绞在了一起。<br><br>“萧族长，我知道这要求有些强人所难，不过还请看在宗主大人的面上，解除了婚约吧…”无奈的叹了一口气，葛叶淡淡的道。<br><br>萧战拳头紧握，淡淡的青色斗气，逐渐的覆盖了身躯，最后竟然隐隐约约的在脸庞处汇聚成了一个虚幻的狮头。<br><br>萧家顶级功法：狂狮怒罡！等级：玄阶中级！<br><br>望着萧战的反映，葛叶脸庞也顿时凝重了起来，身体挡在纳兰嫣然身前，鹰爪般的双手猛的曲拢，青色斗气在鹰爪中汇聚而起，散发着细小而凌厉的剑气。<br><br>云岚宗高深功法，青木剑诀！等级：玄阶低级！<br><br>随着两人气息的喷发，大厅之中，实力较弱的少年们，脸色猛的一白，旋即胸口有些发闷。<br><br>就在萧战的呼吸越加急促之声，三位长老的厉喝声，却是宛如惊雷般的在大厅中响起：“萧战，还不住手！你可不要忘记，你是萧家的族长！”<br><br>身子猛的一僵，萧战身体上的斗气缓缓的收敛，最后完全消失。<br><br>一屁股坐回椅子上，萧战脸色淡漠的望着低头不言的纳兰嫣然，声音有些嘶哑的道：“纳兰侄女呐，好魄力啊，纳兰肃有你这女儿，真是很让人羡慕啊！”<br><br>娇躯微微一颤，纳兰嫣然呐呐的道：“萧叔叔…”<br><br>“呵呵，叫我萧族长就好，叔叔这称谓，我担不起，你是未来云岚宗的宗主，日后也是斗气大陆的风云人物，我家炎儿不过是资质平庸之辈，也的确是配不上你…”淡淡的挥了挥手，萧战语气冷漠的道。<br><br>“多谢萧族长体谅了。”闻言，一旁的葛叶大喜，对着萧战赔笑道：“萧族长，宗主大人知道今天这要求很是有些不礼貌，所以特地让在下带来一物，就当做是赔礼！”<br><br>说着，葛叶伸手抹了抹手指上的一枚戒指，一只通体泛绿的古玉盒子在手中凭空出现…<br><br>小心的打开盒子，一股异香顿时弥漫了大厅，闻者皆都是精神为之一畅。<br><br>三位长老好奇的伸过头，望着玉匣子内，身体猛的一震，惊声道：“聚气散？”&nbsp;&nbsp;<br></p>', '聚气散', '2019-07-22 14:48:13', '2019-07-22 14:48:13', '2');
INSERT INTO `novel_chapter` VALUES ('39', '6', '<p>﻿古匣子之内，一枚通体碧绿，龙眼大小的药丸，正静静的躺卧，而那股诱人的异香，便是从中所发。<br><br>在斗气大陆，想要成为一名真正的斗者，前提便是必须在体内凝聚斗之气旋，而凝聚斗之气旋，却是有着不小的失败率，失败之后，九段斗之气，便将会降回八段，有些运气不好之人，说不定需要凝聚十多次，方才有可能成功，而如此重复的凝聚，却让得人失去了最好的修炼时间段，导致前途大损。<br><br>聚气散，它的作用，便是能够让一位九段斗之气，百分之百的成功凝聚斗之气旋！<br><br>这种特效，让得无数想要尽早成为斗者的人，都对其垂涎不已，日思夜想而不可得。<br><br>说起聚气散，便不得不说制造它的主人：炼药师！<br><br>斗气大陆，有一种凌驾于斗者之上的职业，人们称他们为，炼药师！<br><br>炼药师，顾名思义，他们能够炼制出种种提升实力的神奇丹药，任何一名炼药师，都将会被各方势力不惜代价，竭力拉拢，身份地位显赫之极！<br><br>炼药师能够拥有这般待遇，自然与它的稀少，实用有关，想要成为一名炼药师，条件苛刻异常。<br><br>首先，必须自身属性属火，其次，火体之中，还必须夹杂一丝木气，以作炼药催化之效！<br><br>要知道，斗气大陆人体的属性，取决于他们的灵魂，一条灵魂，永远都只具备一种属性，不可能有其他的属性掺杂，所以，一个躯体，拥有两种不同强弱的属性，基本上是不可能。<br><br>当然，事无绝对，亿万人中，总会有一些变异的灵魂，而这些拥有变异灵魂之人，便有潜力成为一名炼药师！<br><br>不过单单拥有火木属性的灵魂，却依然不能称为一名真正的炼药师，因为炼药师的另外一种必要条件，同样是不可缺少，那便是：灵魂的感知力！也称为灵魂塑造力！<br><br>炼制丹药，最重要的三种条件：材料，火种，灵魂感知力！<br><br>材料，自然是各种天材地宝，炼药师毕竟不是神，没有极品的材料，他们也是巧妇难为无米之炊，所以，好的材料，非常重要！<br><br>火种，也就是炼药时所需要的火焰，炼制丹药，不可能用普通火，而必须使用由火属性斗气催化而出的斗气火焰，当然，世间充斥着天地异火，一些实力强横的炼药师，也会取而用之，用这些异火来炼药，不仅成功率会高上许多！而且炼出的丹药，也比普通斗气火焰炼出的丹药，药效更浓更强！<br><br>由于炼药是长时间的事，长时间的炼制，极其消耗斗气，因此，每一位杰出的炼药师，其实也都是实力强横的火焰斗者！<br><br>最后一种条件，便是灵魂感知力！<br><br>在炼药之时，火候的轻重是重中之中，有时候只要火候稍稍重点，整炉丹药，都将会化为灰烬，导致前功尽弃，所以，掌控好火候，是炼药师必须学会的，然而想要将火候掌控好，那便必须需要强悍的灵魂感知力，失去了这点，就算你前面两点做得再好，那也不过是无用之功罢了!<br><br>在这种种苛刻的条件之下，有资格成为炼药师的人，当然是凤毛麟角，而炼药师少了，那些神奇的丹药，自然也是少之又少，物以稀为贵，也因此，才造就了炼药师那尊贵得甚至有些畸形的身份。<br><br>……<br><br>大厅之中，听着三位长老的惊声，厅内的少年少女们，眼睛猛的瞪大了起来，一双双炽热的目光，死死的盯在葛叶手中的玉匣子。<br><br>坐在父亲身旁的萧媚，粉嫩娇舌轻轻的添了添红唇，盯着玉匣子的眸子眨也不眨…<br><br>“呵呵，这是本宗名誉长老古河大人亲自所炼，想必各位也听过他老人家的名讳吧？”望着三位长老失态的模样，葛叶心头忍不住的有些得意，微笑道。<br><br>“此药竟然还是出自丹王古河之手？”闻言，三位长老耸然动容。<br><br>丹王古河，在加玛帝国中影响力极其庞大，一手炼药之术，神奇莫测，无数强者想对其巴结逢迎，都是无路可寻。<br><br>古河不仅炼药术神奇，而且本身实力，早已晋入斗王之阶，名列加玛帝国十大强者之一。<br><br>如此一位人物，从他手中传出来的聚气散，恐怕其价值，将会翻上好几倍。<br><br>三位长老喜笑颜开的望着玉匣子中的聚气散，如果家族有了这枚聚气散，恐怕就又能创造一名少年斗者了。<br><br>就在三位长老在心中寻思着如何给自己孙子把丹药弄到手之时，少年那压抑着怒气的淡淡声音，却是在大厅中突兀响了起来。<br><br>“葛叶老先生，你还是把丹药收回去吧，今日之事，我们或许不会答应！”<br><br>大厅噶然一静，所有目光都是豁然转移到了角落中那扬起清秀脸庞的萧炎身上。<br><br>“萧炎，这里哪有你说话的份？给我闭嘴！”脸色一沉，一位长老怒喝道。<br><br>“萧炎，退下去吧，我知道你心里不好受，不过这里我们自会做主！”另外一位年龄偏大的老者，也是淡淡的道。<br><br>“三位长老，如果今天他们悔婚的对象是你们的儿子或者孙子，你们还会这么说么？”萧炎缓缓站起身子，嘴角噙着嘲讽，笑问道，三位长老对他的不屑是显而易见，所以他也不必在他们面前装怂。<br><br>“你…”闻言，三位长老一滞，脾气暴躁的三长老，更是眼睛一瞪，斗气缓缓附体。<br><br>“三位长老，萧炎哥哥说得并没有错，这事，他是当事人，你们还是不要跟着参合吧。”少女轻灵的嗓音，在厅中淡然的响起。<br><br>听着少女的轻声，三位长老的气焰顿时消了下来，无奈的对视了一眼，旋即点了点头。<br><br>望着萎靡的三位长老，萧炎回转过头，深深的凝视了一眼笑吟吟的萧薰儿，你这妮子，究竟是什么身份？怎么让得三位长老如此忌惮…<br><br>压下心中的疑问，萧炎大步行上，先是对着萧战恭敬的行了一礼，然后转过身面对着纳兰嫣然，深吐了一口气，平静的出言问道：“纳兰小姐，我想请问一下，今日悔婚之事，纳兰老爷子，可曾答应？”<br><br>先前瞧得萧炎忽然出身阻拦，纳兰嫣然心头便是略微有些不快，现在听得他的询问，秀眉更是微微一皱，这人，初时看来倒也不错，怎么却也是个死缠烂打的讨厌人，难道他不知道两人间的差距吗？<br><br>心中责备萧炎的她，却是未曾想过，她这当众的悔婚之举，让得萧炎以及他的父亲，陷入了何种尴尬与愤怒的处境。<br><br>站起身来，凝视着身前这本该成为自己丈夫的少年，纳兰嫣然语气平淡娇柔：“爷爷不曾答应，不过这是我的事，与他也没关系。”<br><br>“既然老爷子未曾开口，那么还望包涵，我父亲也不会答应你这要求，当初的婚事，是两家老爷子亲自开口，现在他们没有开口解除，那么这婚事，便没人敢解，否则，那便是亵渎死去的长辈！我想，我们族中，应该没人会干出这种忤逆的事吧？”萧炎微微偏过头，冷笑着盯着三位长老。<br><br>被萧炎这么大顶帽子压过来，三位长老顿时不吭气了，在森严的家族真，这种罪名，可是足以让得他们失去长老的位置。<br><br>“你…”被萧炎一阵抢白，纳兰嫣然一怔，却是寻不出反驳之语，当下气得小脸有些铁青，重重的跺了跺脚，吸了一口气，常年被惯出来的大小姐脾气也是激了出来，有些厌恶的盯着面前的少年，心中烦躁的她，更是直接把话挑明：“你究竟想怎样才肯解除婚约？嫌赔偿少？好，我可以让老师再给你三枚聚气散，另外，如果你愿意，我还可以让你进入云岚宗修习高深斗气功法，这样，够了吗？”<br><br>听着少女嘴中一句句蹦出来的诱人条件，三位长老顿时感觉呼吸变得急促起来了，大厅中的少年们，更是咕噜的咽了一口唾沫，进入云岚宗修习？天呐，那可是无数人梦寐以求的啊…<br><br>在说完这些条件之后，纳兰嫣然微扬着雪白的下巴，宛如公主般骄傲的等待着萧炎的回答，在她的认知中，这种条件，足以让任何少年疯狂…&nbsp;&nbsp;<br></p>', '炼药师', '2019-07-22 14:49:14', '2019-07-22 14:49:14', '2');
INSERT INTO `novel_chapter` VALUES ('40', '7', '<p>纳兰嫣然所期待的有些不同，在她话出之后，面前的少年，身体猛的剧烈颤抖了起来，缓缓的抬起头来，那张清秀的稚嫩小脸，现在却是狰狞得有些可怖…<br><br>虽然三年中一直遭受着嘲讽，不过在萧炎的心中，却是有着属于他的底线，纳兰嫣然这番高高在上，犹如施舍般的举动，正好狠狠的踏在萧炎隐藏在心中那仅剩的尊严之上。<br><br>“啊…”被少年狰狞模样吓了一跳，少女急忙后退一步，一旁的那位英俊青年，豁然的拔出长剑，目光阴冷的直指萧炎。<br><br>“我…真的很想把你宰了！”牙齿在颤抖间，泄露出杀意凛然的字句，萧炎拳头紧握，漆黑的眼睛燃烧着暴怒的火焰。<br><br>“炎儿，不可无理！”首位之上，萧战也是被萧炎的举动吓了一跳，连忙喝道，现在的萧家，可得罪不起云岚宗啊。<br><br>拳头狠狠的握拢起来，萧炎微微垂首，片刻之后，又轻轻的抬了起来，只不过，先前的那股狰狞恐怖，却是已经化为了平静…<br><br>三年中，虽然受尽了歧视与嘲讽，不过却也因此，锻造出了萧炎那远超常人的隐忍。<br><br>面前的纳兰嫣然，是云岚宗的宠儿，如果自己现在真对她做了什么事，恐怕会给父亲带来数不尽的麻烦，所以，他只得忍！<br><br>望着面前几乎是骤然间收敛了内心情绪的少年，葛叶以及纳兰嫣然心中忽然的有些感到发寒…<br><br>“这小子，日后若一直是废物，倒也罢了，如果真让他拥有了力量，绝对是个危险人物…”葛叶在心中，凝重的暗暗道。<br><br>“萧炎，虽然不知道为什么我的举动让你如此愤怒，不过，你…还是解除婚约吧！”轻轻的吐了一口气，纳兰嫣然从先前的惊吓中平复下了心情，小脸微沉的道。<br><br>“请记住，此次我前来萧家，是我的老师，云岚宗宗主，亲自首肯的！”抿着小嘴，纳兰嫣然微偏着头，有些无奈的道：“你可以把这当做是胁迫，不过，你也应该清楚，现实就是这样，没有什么事是绝对的公平，虽然并不想表达什么，可你也清楚你与我之间的差距，我们…”<br><br>“基本没什么希望…”<br><br>听着少女宛如神灵般的审判，萧炎嘴角溢出一抹冷笑：“纳兰小姐…你应该知道，在斗气大陆，女方悔婚会让对方有多难堪，呵呵，我脸皮厚，倒是没什么，可我的父亲！他是一族之长，今日若是真答应了你的要求，他日后在如何掌管萧家？还如何在乌坦城立足？”<br><br>望着脸庞充斥着暴怒的少年，纳兰嫣然眉头轻皱，眼角瞟了瞟首位上那忽然间似乎衰老了许多的萧战，心头也是略微有些歉然，轻咬了咬樱唇，沉吟了片刻，灵动的眼珠微微转了转，忽然轻声道：“今日的事，的确是嫣然有些莽撞了，今天，我可以暂时收回解除婚约的要求，不过，我需要你答应我一个约定！”<br><br>“什么约定？”萧炎皱眉问道。<br><br>“今日的要求，我可以延迟三年，三年之后，你来云岚宗向我挑战，如果输了，我便当众将婚约解除，而到那时候，想必你也进行了家族的成年仪式，所以，就算是输了，也不会让萧叔叔脸面太过难堪，你可敢接？”纳兰嫣然淡淡的道。<br><br>“呵呵，到时候若是输了，的确不会再如何损耗父亲的名声，可我，或许这辈子都得背负耻辱的失败之名了吧，这女人…还真狠呐！”心头悲愤一笑，萧炎的面庞，满是讥讽。<br><br>“纳兰小姐，你又不是不清楚炎儿的状况，你让他拿什么和你挑战？如此这般侮辱与他，有意思么？”萧战一巴掌拍在桌面之上，怒然而起。<br><br>“萧叔叔，悔婚这种事，总需要有人去承担责任，若不是为了保全您的面子，嫣然此刻便会强行解婚！然后公布于众！”几次受阻，纳兰嫣然也是有些不耐，转过头对着沉默的萧炎冷喝道：“你既然不愿让萧叔叔颜面受损，那么便接下约定！三年之后与现在，你究竟选择前者还是后者？”<br><br>“纳兰嫣然，你不用做出如此强势的姿态，你想退婚，无非便是认为我萧炎一届废物配不上你这天之骄女，说句刻薄的，你除了你的美貌之外，其他的本少爷根本瞧不上半点！云岚宗的确很强，可我还年轻，我还有的是时间，我十二岁便已经成为一名斗者，而你，纳兰嫣然，你十二岁的时候，是几段斗之气？没错，现在的我的确是废物，可我既然能够在三年前创造奇迹，那么日后的岁月里，你凭什么认为我不能再次翻身？”面对着少女咄咄逼人的态势，沉默的萧炎终于犹如火山般的爆发了起来，小脸冷肃，一腔话语，将大厅之中的所有人都是震得发愣，谁能想到，平日那沉默寡言的少年，竟然如此利害。<br><br>纳兰嫣然蠕动着小嘴，虽然被萧炎对她的评价气得俏脸铁青，不过却是无法申辩，萧炎所说的确是事实，不管他现在再如何废物，当初十二岁成为一名斗者，却是真真切切，而当时的纳兰嫣然，方才不过八段斗之气而已…<br><br>“纳兰小姐，看在纳兰老爷子的面上，萧炎奉劝你几句话，三十年河东，三十年河西，莫欺少年穷！”萧炎铮铮冷语，让得纳兰嫣然娇躯轻颤了颤。<br><br>“好，好一句莫欺少年穷！我萧战的儿子，就是不凡！”首位之上，萧战双目一亮，双掌重砸在桌面之上，溅起茶水洒落。<br><br>咬牙切齿的盯着面前冷笑的少年，纳兰嫣然常年被人娇惯，哪曾被同龄人如此教训，当下气得脑袋发昏，略带着稚气的声音也是有些尖锐：“你凭什么教训我？就算你以前的天赋无人能及，可现在的你，就是一个废物！好，我纳兰嫣然就等着你再次超越我的那天，今天解除婚约之事，我可以不再提，不过三年之后，我在云岚宗等你，有本事，你就让我看看你能翻身到何种地步！如果到时候你能打败我，我纳兰嫣然今生为奴为婢，全都你说了算！”<br><br>“当然，三年后如果你依旧是这般废物，那纸解除婚约的契约，你也给我乖乖的交出来！”<br><br>望着小脸铁青的少女，萧炎笑着嘲讽出了声：“不用三年之后，我对你，实在是提不起半点兴趣！”说完，也不理会那俏脸冰寒的纳兰嫣然，豁然转身，快步行到桌前，奋笔疾书！<br><br>墨落，笔停！<br><br>萧炎右手骤然抽出桌上的短剑，锋利的剑刃，在左手掌之上，猛然划出一道血口…<br><br>沾染鲜血的手掌，在白纸之上，留下刺眼的血印！<br><br>轻轻拈起这份契约，萧炎发出一声冷笑，在路过纳兰嫣然面前之时，手掌将之重重的砸在了桌面之上。<br><br>“不要以为我萧炎多在乎你这什么天才老婆，这张契约，不是解除婚约的契约，而是本少爷把你逐出萧家的休证！从此以后，你，纳兰嫣然，与我萧家，再无半点瓜葛！”<br><br>“你…你敢休我？”望着桌上的血手契约，纳兰嫣然美丽的大眼睛瞪得老大，有些不敢置信的道，以她的美貌，天赋以及背景，竟然会被一个小家族中的废物，给直接休了？这种突如其来的变况，让得她觉得太不真实了。<br><br>冷冷的望着纳兰嫣然错愕的模样，萧炎忽然的转过身，对着萧战曲腿跪下，重重的磕了一头，紧咬着嘴唇，却是倔强的不言不语…<br><br>虽然在家族之中，名义上是他把纳兰嫣然逐出了家族，可这事传出去之后，别人可不会这么认为，不清楚状况的他们，只会认为，是纳兰嫣然以强横的背景，强行让得萧家退婚，毕竟，以纳兰嫣然的天赋，美貌，以及背景，配萧家一废柴少爷，那是绝对的绰绰有余，没有人会认为，萧炎会有魄力休掉一位未来云岚宗的掌舵人…而如此，作为萧炎的父亲，萧战定然会受到无数讥讽…<br><br>望着跪伏的萧炎，明白他心中极为歉疚的萧战淡然一笑，笑吟吟的道：“我相信我儿子不会是一辈子的废物，区区流言蜚语，日后在现实面前，自会不攻而破。”<br><br>“父亲，三年之后，炎儿会去云岚宗，为您亲自洗刷今日之辱！”眼角有些湿润，萧炎重重的磕了一头，然后径直起身，毫不犹豫的对着大厅之外行去。<br><br>在路过纳兰嫣然之时，萧炎脚步一顿，清淡的稚嫩话语，冰冷吐出。<br><br>“三年之后，我会找你！”<br><br>少年的背影在阳光的照耀下，被拉扯得极长，看上去，孤独而落寞。<br><br>纳兰嫣然小嘴微张，有些茫然的盯着那道逐渐消失的背影，手中的那纸契约，忽然的变得重如千斤…<br><br>“三位，既然你们的目的已经达到，那便请回吧。”望着离开的少年，萧战脸庞淡漠，掩藏在衣袖中的拳头，却是捏得手指泛白。<br><br>“萧叔叔，今日之事，嫣然向您道歉了，日后若是有空，请到纳兰家做客！”恭身对着脸色漠然的萧战行了一礼，纳兰嫣然也不想多留，起身对着大厅之外行去，后面，葛叶与那名英俊的青年急忙跟上。<br><br>“聚气散也带走！”手掌一挥，桌上的玉匣子，便是被萧战冷冷的甩飞了出去。<br><br>葛叶手掌向后一探，稳稳的抓住匣子，苦笑了一声，将之收进了戒指内。<br><br>“纳兰家的小姐，希望你日后不会为今日的大小姐举动而感到后悔，再有，不要以为有云岚宗撑腰便可横行无忌，斗气大陆很大很大，比云韵强横的人，也并不少…”在纳兰嫣然三人即将出门的霎那，少女轻灵的嗓音，带着淡淡的冷漠，忽然的响了起来。<br><br>三人脚步猛的一顿，微变的目光，投向了角落中，那轻轻翻动着书籍的紫裙少女身上。<br><br>阳光从门窗缝隙中投射而进，刚好将少女包裹其中，远远看去，宛如在俗世中盛开的紫色莲花，清净优美，不惹尘埃…<br><br>似是察觉到三人的目光射来，少女从古朴的书页中抬起了精美的小脸，那双宛如秋水的美眸，忽然的涌出一袅细小的金色火焰…<br><br>望着少女眸中的细小金色火焰，葛叶身体猛的一颤，惊恐的神色顷刻间覆盖了那苍老的面孔，干枯的手掌仓皇的抓着正疑惑的纳兰嫣然以及那名青年，然后逃命般的窜出了大厅之中…<br><br>瞧着葛叶的举动，大厅内的除了少数几人之外，其他的都不由得满脸错愕…&nbsp;&nbsp;<br></p>', '休！', '2019-07-22 14:51:40', '2019-07-22 14:51:40', '2');
INSERT INTO `novel_chapter` VALUES ('41', '8', '<p>﻿表情淡漠的离开大厅，有些神不守舍的萧炎按照平日的习惯，慢慢的攀上了家族的后山，坐在山壁之上，平静的望着对面笼罩在雾气之中的险峻山峦，那里，是加玛帝国闻名的魔兽山脉。<br><br>“呵呵，实力呐…这个世界，没有实力，连一坨屎都不如，至少，屎还没人敢去踩！”肩膀轻轻的耸动，少年那低沉的自嘲笑声，带着悲愤，在山顶上缓缓的徘徊。<br><br>十指插进一头黑发之中，萧炎牙齿紧紧的咬着嘴唇，任由那淡淡的血腥在嘴角散开，虽然在大厅中他并没有表现出什么不妥的情绪，可纳兰嫣然的那一句句话，却是犹如刀割在心头一般，让得萧炎浑身颤粟…<br><br>“今日的侮辱，我不想再受第二次！”摊开那有着一道血痕的左手，萧炎的声音，嘶哑却坚定。<br><br>“嘿嘿，小娃娃，看来你需要帮助啊？”<br><br>就在萧炎心中刻下誓言之时，一道苍老的怪笑声，忽然的传进了耳朵。<br><br>小脸一变，萧炎豁然转身，鹰般锐利的目光在身后一阵扫视，可却未曾发现半个人影…<br><br>“嘿嘿，别找了，在你手指上呢。”<br><br>就在萧炎以为只是错觉之时，那怪笑声，再次毫无边际的传出。<br><br>眼瞳一缩，萧炎的目光，陡然停在了右手之上…的黑色古朴戒指。<br><br>“是你在说话？”萧炎强忍住心头的惊恐，努力让自己声音平静下来。<br><br>“小娃娃定力还不错，竟然没被吓得跳下去。”戒指之中，响起戏谑的笑声。<br><br>“你是谁？为什么在我的戒指之中？你想干什么？”<br><br>略微沉默之后，萧炎口齿清晰的询问出了关键问题。<br><br>“我是谁你就先别管了，反正不会害你便是，唉，这么多年，终于碰见个灵魂强度过关的人了，真是幸运，嘿嘿，不过还是得先谢谢小娃娃这三年的供奉啊，要不然，我恐怕还得继续沉睡。”<br><br>“供奉？”疑惑的眨了眨眼睛，片刻之后，萧炎那张小脸骤然阴沉了下来，森寒的字眼，从牙齿间，艰难的蹦了出来：“我体内莫名其妙消失的斗之气，是你搞的鬼？”<br><br>“嘿嘿，我也是被逼无奈啊，小娃娃可别怪啊。”<br><br>“我草你妈！”<br><br>一向自诩沉稳冷静的萧炎，此刻忽然宛如疯子般的暴跳起来，小脸布满狰狞，也不管这是母亲留给自己的遗物，不假思索的利马扯下手指上的戒指，然后将之奋力对着陡峭之下，掷甩了出去…<br><br>戒指刚刚离手，萧炎心头猛的一清，急忙伸手欲抓，可离手的戒指，已经径直掉下了悬崖…<br><br>愣愣的望着那消失在雾气中的戒指，萧炎愕然了好片刻，小脸缓缓的平静了下来，懊恼的拍了拍额头：“蠢货，太莽撞了，太莽撞了！”<br><br>刚刚知晓自己三年来受辱的罪魁祸首竟然便是一直佩戴的戒指，这也难怪萧炎会失控成这模样。<br><br>在悬崖边坐了好片刻，萧炎这才无奈的摇了摇头，爬起身来，转过身，眼瞳猛的一瞪，手指惊颤的指着面前的东西…<br><br>在萧炎的面前，此时正悬浮着一颗漆黑的古朴戒指，最让萧炎震惊的，还是戒指的上空处，正飘荡着一道透明苍老人影…<br><br>“嘿嘿，小娃娃，用不着这么暴怒吧？不就是吸收了你三年的斗之气嘛。”透明的老者，笑眯眯的盯着目瞪口呆的萧炎，开口道。<br><br>嘴角一阵抽搐，萧炎的声音中，压抑着怒气：“老家伙，既然你躲在戒指之中，那么也应该知道因为你吸收了我的斗之气，给我带来了多少嘲骂吧？”<br><br>“可在这三年的嘲骂中，你成长了不是？你认为如果是在三年之前，你能拥有现在这般的隐忍力与心智吗？”不置可否的笑了笑，老者淡淡道。<br><br>眉头一皱，萧炎心情也是逐渐的平复了下来，在暴怒完毕之后，欣喜随之而来，既然知道了斗之气的消失之谜，那么现在，他的天赋，定然也是已经归来！<br><br>只要一想起终于有机会脱去废物的头衔，萧炎的身体，此刻几乎犹如重生般的舒畅了起来，面前那可恶的老头，看起来，也并不太过讨厌了。<br><br>有些东西，只有当失去了，才知道它的珍贵！失而复得，会让人更加珍惜！<br><br>轻轻舒展了一下手腕，萧炎长长的吐了一口气，仰头道：“虽然不知道你究竟是谁，不过我想问句，你以后还想依附在戒指中吸取我的斗之气？如果是那样的话，我劝你还是另外去找宿主吧，我养不起你。”<br><br>“嘿嘿，别人可没有你这般强横的灵魂感知力。”老者摸着一锊胡须笑了笑：“既然我自己选择了现身，那么以后在未得到你的许可之前，自然不会再吸收你的斗之气。”<br><br>萧炎翻了翻白眼，冷笑不语，他已打定主意，不管这老东西如何花言巧语，也不会再让他跟在自己身边。<br><br>“小娃娃，想变强吗？想受到别人的尊崇吗？”虽然心头已经将老者划为了不沾惹的一方，不过在这番话中，萧炎的心脏，还是忍不住的跳了跳。<br><br>“现在我已经知晓了斗之气消失的缘故，以我的天赋，变强还需要你么？”缓缓的吸了一口气，萧炎淡淡的道，他心中知道，天下没有白吃的午餐，莫名其妙接受一位神秘人的恩惠，可不是什么明智的决定。<br><br>“小娃娃，你的天赋固然很好，但你得知道，你现在已经十五岁了，而你的斗之气，却才第三段，我似乎听过，你明年就该进行成年仪式了吧？你认为，你能在短短一年之内，光靠勤奋修炼便飙升至七段斗之气？而且你先前还和那少女打了三年的赌，那女娃娃的天赋，可不会比你低多少噢，你想追上她并且将之超越，哪有这么容易。”老者那皱纹满布的老脸，此刻犹如一朵盛开的菊花。<br><br>“要不是你吸收我的斗之气，我能被她如此羞辱？你个老混蛋！”被老者捅到痛处，萧炎小脸再次阴沉，气得咬牙切齿的大骂了起来。<br><br>一通大骂过后，萧炎又自己萎靡了下来，事于至此，再如何骂也是于事无补，斗气的修炼，基础尤为重要，当年自己四岁练气，炼了整整六年，才具备九段的斗之气，即使现在自己的天赋已经回复，可想要在一年时间修内炼至七段斗之气，基本上是没多大的可能…<br><br>沮丧的叹了一口气，萧炎眼睛瞟了瞟那故作高深莫测模样的透明老者，心头一动，撇嘴道：“你有办法吧？”<br><br>“或许吧。”老者含糊的怪笑道。<br><br>“你帮助我在一年时间达到七段斗之气，你以前吸收我三年斗之气之事，便一笔勾销，怎么样？”萧炎试探的问道。<br><br>“嘿嘿，小娃娃好算计呐。”<br><br>“如果你对我没什么帮助，那我何必带个拖油瓶在身边？我看，您老还是另外找个倒霉蛋曲身吧…”萧炎冷笑道，聊了片刻，他也看出了这透明的老者似乎并不能随便吸收别人的斗之气。<br><br>“你可一点都不像是个十五岁的少年，看来这三年，你真成长了许多，这能算是我自食恶果吗？”望着油滑的萧炎，老者一愣，旋即有些哭笑不得的摇了摇头。<br><br>萧炎摊了摊手，淡淡的道：“想让我继续供奉你，你总得拿出一些诚意吧？”<br><br>“真是个牙尖嘴利的小娃娃，好，好，谁让老头我还有求你这小家伙呢。”无奈的点了点头，老者身形降下地面，目光在萧炎身上打量了几番，一抹奸计得逞的怪笑在脸庞上飞速浮现，旋即消散，迟疑了一会，似乎方才极其不情愿的开口道：“你想成为炼药师吗？”&nbsp;&nbsp;<br></p>', '神秘的老者', '2019-07-22 14:54:55', '2019-07-22 14:54:55', '2');
INSERT INTO `novel_chapter` VALUES ('51', '1', '<p>&nbsp;开往江州市的火车上。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;林晨目光有些呆滞。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;“我真的回来了吗？”<br><br>&nbsp;&nbsp;&nbsp;&nbsp;脑海当中的眩晕感，让他产生了强烈的怀疑。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;“如果是梦的话，给自己一巴掌，应该就能醒了吧？”<br><br>&nbsp;&nbsp;&nbsp;&nbsp;他扬起手，猛然朝着自己的脸上拍了过去。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;然而，火车的摇晃，让他的手一抖。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;“啪！”<br><br>&nbsp;&nbsp;&nbsp;&nbsp;清脆的声音响起。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;唐小棠打死也不敢相信，自己竟然会被轻薄。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;那被牛仔裤包裹着的翘-臀，被人给狠狠地拍了一巴掌，而且那只手竟然还没有松开。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;还不等她开口，对方瞪大着双眸，目光当中带着一丝紧张以及急切，<br><br>&nbsp;&nbsp;&nbsp;&nbsp;“疼吗？”<br><br>&nbsp;&nbsp;&nbsp;&nbsp;“……”<br><br>&nbsp;&nbsp;&nbsp;&nbsp;沉默两秒，她冷着一张脸，“你说呢？”<br><br>&nbsp;&nbsp;&nbsp;&nbsp;“太棒了！”<br><br>&nbsp;&nbsp;&nbsp;&nbsp;对方的反应让她的脸一黑。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;不过很快，道歉的声音便是响起了，<br><br>&nbsp;&nbsp;&nbsp;&nbsp;“真不好意思，我刚才不是故意的。”<br><br>&nbsp;&nbsp;&nbsp;&nbsp;望着对方那干净的眼眸，唐小棠心里头一软，犹豫了下，最终懒得跟对方多计较。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;证实了自己并非是在做梦，林晨内心一阵荡漾。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;“以失去自己一身强大的修为，作为重返地球的代价吗？”<br><br>&nbsp;&nbsp;&nbsp;&nbsp;在昆仑界，他可是达到了渡劫期，举手投足之间能够翻江倒海。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;而现在，他体内空空荡荡的，没有一点力量。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;“虽然说地球上的灵气稀薄，但是问题不大，只要给我足够的时间，我便是能够重返巅峰！”<br><br>&nbsp;&nbsp;&nbsp;&nbsp;即便是在人才辈出的昆仑界，他的天赋也是数一数二的。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;“宋泽，马月梅！”<br><br>&nbsp;&nbsp;&nbsp;&nbsp;脑海当中浮现出来的两道身影，让他的眼眸当中充满着杀意。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;这对狗男女，是他上一世心中最大的遗憾。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;如果不是因为他们两个人，他又岂会身死魂穿昆仑界呢？<br><br>&nbsp;&nbsp;&nbsp;&nbsp;等他恢复实力之后，第一件事情，就是将这对狗男女给铲除！<br><br>&nbsp;&nbsp;&nbsp;&nbsp;收敛心中的思绪，林晨望向坐在自己对面的女孩，顿时一怔。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;这被自己拍了一巴掌屁-股的女孩，他正好认识。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;唐小棠。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;江州中学大名鼎鼎的校花。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;曾经几时，唐小棠也是林晨梦中的常客，但是两个人身份差距太大，这份情愫，被他给很快就是抹杀了。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;只是没有想到今天竟然能够在这里相遇，他的心情还是不错的。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;不过…一想到自己之前的行为，他的表情略显尴尬。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;拍那弹-性十足的翘-臀实非他所愿。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;见对方并没有认出自己，林晨心里头微微一叹。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;两个人虽然说是在同一个班，但是由于自己在班上的成绩垫底，外加上家世又不怎么样，班上根本就没几个人记得他，那就更别说唐小棠这种被万人追捧的天之骄女了。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;一名年迈的老者，在唐小棠的身边坐下。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;“爷爷，我都说了没有必要去的，我身上的病根本没有人可以治好。”<br><br>&nbsp;&nbsp;&nbsp;&nbsp;唐小棠清冷的声音，清晰地落入了林晨的耳朵里面。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;病？<br><br>&nbsp;&nbsp;&nbsp;&nbsp;他定睛一看，落在了那对方的身上。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;虽说他一身修为荡然无存，但是多年的见识，造就了他惊人的眼力。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;很快，他便是发现了唐小棠身上的不正常。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;那瘦弱的娇-躯当中，蕴含-着一股冰冷的力量，正不断地对她发起侵蚀。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;然而，唐小棠仿佛早已经是习惯了这种痛苦，表情不变，只是脸色变得更加苍白了几分。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;“她的体内蕴含-着一股寒冰之气！”<br><br>&nbsp;&nbsp;&nbsp;&nbsp;林晨立刻就是判断出来了。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;这股寒冰之气，又岂是寻常医术能够化解呢？<br><br>&nbsp;&nbsp;&nbsp;&nbsp;难过唐小棠会说出如此绝望的言语来。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;不过……<br><br>&nbsp;&nbsp;&nbsp;&nbsp;这寒冰之气对于林晨而言，可是最好的修炼资源！<br><br>&nbsp;&nbsp;&nbsp;&nbsp;他手中掌握着的《玄黄诀》，可以吞噬天地间一切力量。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;小小一道寒冰之气，更是不在话下！<br><br>&nbsp;&nbsp;&nbsp;&nbsp;“这就是属于我的机缘吗？”<br><br>&nbsp;&nbsp;&nbsp;&nbsp;林晨深吸一口气，他正愁自己该怎么才能够恢复实力，没想到现在解决的办法就出现了。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;然而，还没有等他来得及上前搭讪，一道不和谐的声音便是响起，<br><br>&nbsp;&nbsp;&nbsp;&nbsp;“我说你盯着人家小妹妹看了这么久，要不要脸？”<br><br>&nbsp;&nbsp;&nbsp;&nbsp;林晨转过头，只见一名油头粉面的青年，一脸鄙夷地看着他。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;“看什么看，说的就是你，小小年纪不学好，长大以后一定是社会上面的蛀虫！”<br><br>&nbsp;&nbsp;&nbsp;&nbsp;青年的声音瞬间就是吸引了车厢里面其他人的注意力，这也包括唐小棠在内。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;面对青年的呵斥，林晨一脸平静地说道，<br><br>&nbsp;&nbsp;&nbsp;&nbsp;“我可不是什么蛀虫，我是一名医生。”<br><br>&nbsp;&nbsp;&nbsp;&nbsp;“医生？”<br><br>&nbsp;&nbsp;&nbsp;&nbsp;青年忍不住笑了，<br><br>&nbsp;&nbsp;&nbsp;&nbsp;“你满十八了吗？有你这么年轻的医生吗？”<br><br>&nbsp;&nbsp;&nbsp;&nbsp;其他乘客也全部都是用质疑的目光盯着林晨。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;毕竟林晨面相实在是太青涩了。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;唐小棠眼眸微垂，对于坐在自己面前的林晨，更加不喜了。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;她隐隐已经是猜测到了，对方是听到了她的话，所以才借此机会，想要跟自己搭讪。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;反倒是在她身边的那名老者，则饶有兴致地看着林晨。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;“年纪不重要，重要的是我的本事。”<br><br>&nbsp;&nbsp;&nbsp;&nbsp;林晨语气依旧平静，身上带着一股云淡风轻之意。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;他不但在修行上面有高深的造诣，而且还精通医道丹道等等。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;不等青年质疑，他又是说道，<br><br>&nbsp;&nbsp;&nbsp;&nbsp;“若是不介意的话，可以让我看看你身上的毛病。”<br><br>&nbsp;&nbsp;&nbsp;&nbsp;“行！”<br><br>&nbsp;&nbsp;&nbsp;&nbsp;青年咬定林晨是一个骗子，自然是没有多在意，<br><br>&nbsp;&nbsp;&nbsp;&nbsp;“你要是看不出个所以然，我可得报警把你这个骗子给抓进去。”<br><br>&nbsp;&nbsp;&nbsp;&nbsp;他的话音还没有彻底落下，林晨便已经是开口了，<br><br>&nbsp;&nbsp;&nbsp;&nbsp;“你少年时期**频繁，青年时期房-事过度，导致体内肾脏精气阴阳不足，患有严重的肾-虚，并且还伴随着早-泄现象。”<br><br>&nbsp;&nbsp;&nbsp;&nbsp;对面的唐小棠柳眉皱得更加深了，这说的都是些什么？<br><br>&nbsp;&nbsp;&nbsp;&nbsp;然而，她却注意到了，那名青年因为林晨的一番话，表情发生了巨大的转变。<br><br>&nbsp;&nbsp;&nbsp;&nbsp;“如果我没有猜错的话，你最近应该是在服用六味地黄丸，只不过效果并不怎么好吧？”<br></p>', '重生', '2019-07-24 01:02:43', '2019-07-24 01:02:43', '17');

-- ----------------------------
-- Table structure for `novel_sort`
-- ----------------------------
DROP TABLE IF EXISTS `novel_sort`;
CREATE TABLE `novel_sort` (
  `novel_sort_id` int(11) NOT NULL AUTO_INCREMENT,
  `novel_sort_created_time` datetime NOT NULL,
  `novel_sort_name` varchar(128) NOT NULL,
  `novel_sort_updated_time` datetime NOT NULL,
  PRIMARY KEY (`novel_sort_id`),
  UNIQUE KEY `UK_g5fgjxoper9naqd9honomh8u7` (`novel_sort_name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of novel_sort
-- ----------------------------
INSERT INTO `novel_sort` VALUES ('1', '2019-07-20 23:35:40', '玄幻', '2019-07-20 23:35:40');
INSERT INTO `novel_sort` VALUES ('2', '2019-07-20 23:53:13', '都市', '2019-07-20 23:53:13');
INSERT INTO `novel_sort` VALUES ('3', '2019-07-20 23:53:37', '重生', '2019-07-20 23:53:37');
INSERT INTO `novel_sort` VALUES ('4', '2019-07-20 23:53:58', '官场', '2019-07-20 23:53:58');
INSERT INTO `novel_sort` VALUES ('5', '2019-07-20 23:54:09', '修真', '2019-07-20 23:54:09');
INSERT INTO `novel_sort` VALUES ('6', '2019-07-20 23:54:23', '异界', '2019-07-20 23:54:23');
INSERT INTO `novel_sort` VALUES ('7', '2019-07-20 23:54:43', '言情', '2019-07-20 23:54:43');
INSERT INTO `novel_sort` VALUES ('8', '2019-07-21 08:20:04', '科幻', '2019-07-21 08:20:10');
INSERT INTO `novel_sort` VALUES ('9', '2019-07-23 11:29:06', '武侠', '2019-07-23 11:29:11');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_email` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_phone` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UK_lqjrcobrh9jc8wpcar64q1bfh` (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------

-- ----------------------------
-- Function structure for `firstPinyin`
-- ----------------------------
DROP FUNCTION IF EXISTS `firstPinyin`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `firstPinyin`(P_NAME VARCHAR(255)) RETURNS varchar(255) CHARSET utf8
BEGIN
    DECLARE V_RETURN VARCHAR(255);
    SET V_RETURN = ELT(INTERVAL(CONV(HEX(left(CONVERT(P_NAME USING gbk),1)),16,10), 
        0xB0A1,0xB0C5,0xB2C1,0xB4EE,0xB6EA,0xB7A2,0xB8C1,0xB9FE,0xBBF7, 
        0xBFA6,0xC0AC,0xC2E8,0xC4C3,0xC5B6,0xC5BE,0xC6DA,0xC8BB,
        0xC8F6,0xCBFA,0xCDDA,0xCEF4,0xD1B9,0xD4D1),    
    'A','B','C','D','E','F','G','H','J','K','L','M','N','O','P','Q','R','S','T','W','X','Y','Z');
    RETURN V_RETURN;
END
;;
DELIMITER ;