DROP DATABASE IF EXISTS jiangnanuetc;
CREATE DATABASE jiangnanuetc;
USE jiangnanuetc;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_code
-- ----------------------------
DROP TABLE IF EXISTS `t_code`;
CREATE TABLE `t_code`  (
  `id` bigint(20) NOT NULL,
  `code` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_ru04yyk865o435xj9383099pn`(`code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_code
-- ----------------------------

-- ----------------------------
-- Table structure for t_code_hibernate_seq
-- ----------------------------
DROP TABLE IF EXISTS `t_code_hibernate_seq`;
CREATE TABLE `t_code_hibernate_seq`  (
  `sequence_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sequence_next_hi_value` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`sequence_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_code_hibernate_seq
-- ----------------------------
INSERT INTO `t_code_hibernate_seq` VALUES ('code_id', 0);

-- ----------------------------
-- Table structure for t_data
-- ----------------------------
DROP TABLE IF EXISTS `t_data`;
CREATE TABLE `t_data`  (
  `id` bigint(20) NOT NULL,
  `college` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `date` datetime(6) NULL DEFAULT NULL,
  `district` int(11) NULL DEFAULT NULL,
  `grade` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `local` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `mark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `order_date` datetime(6) NULL DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `qq` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `repair_date` datetime(6) NULL DEFAULT NULL,
  `repair_message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `repairer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `service` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `state` int(11) NULL DEFAULT NULL,
  `tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_data
-- ----------------------------

-- ----------------------------
-- Table structure for t_data_change_log
-- ----------------------------
DROP TABLE IF EXISTS `t_data_change_log`;
CREATE TABLE `t_data_change_log`  (
  `id` bigint(20) NOT NULL,
  `change_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `data_id` bigint(20) NULL DEFAULT NULL,
  `date` datetime(6) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKbp22mtuuly61r5xmxcdh5gotj`(`data_id`) USING BTREE,
  CONSTRAINT `FKbp22mtuuly61r5xmxcdh5gotj` FOREIGN KEY (`data_id`) REFERENCES `t_data` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_data_change_log
-- ----------------------------

-- ----------------------------
-- Table structure for t_data_change_log_hibernate_seq
-- ----------------------------
DROP TABLE IF EXISTS `t_data_change_log_hibernate_seq`;
CREATE TABLE `t_data_change_log_hibernate_seq`  (
  `sequence_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sequence_next_hi_value` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`sequence_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_data_change_log_hibernate_seq
-- ----------------------------
INSERT INTO `t_data_change_log_hibernate_seq` VALUES ('data_change_log_id', 0);

-- ----------------------------
-- Table structure for t_data_hibernate_seq
-- ----------------------------
DROP TABLE IF EXISTS `t_data_hibernate_seq`;
CREATE TABLE `t_data_hibernate_seq`  (
  `sequence_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sequence_next_hi_value` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`sequence_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_data_hibernate_seq
-- ----------------------------
INSERT INTO `t_data_hibernate_seq` VALUES ('data_id', 0);

-- ----------------------------
-- Table structure for t_mingju
-- ----------------------------
DROP TABLE IF EXISTS `t_mingju`;
CREATE TABLE `t_mingju`  (
  `id` bigint(20) NOT NULL,
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `shi_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `topic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_mingju
-- ----------------------------
INSERT INTO `t_mingju` VALUES (1, '纳兰性德', '人生若只如初见，何事秋风悲画扇。', '木兰词·拟古决绝词柬友', '', '人生');
INSERT INTO `t_mingju` VALUES (2, '元稹', '曾经沧海难为水，除却巫山不是云。', '离思五首·其四', '', '人生');
INSERT INTO `t_mingju` VALUES (3, '苏轼', '人生如逆旅，我亦是行人。', '临江仙·送钱穆父', '', '人生');
INSERT INTO `t_mingju` VALUES (4, '苏轼', '十年生死两茫茫，不思量，自难忘。', '江城子·乙卯正月二十日夜记梦', '', '人生');
INSERT INTO `t_mingju` VALUES (5, '唐寅', '雨打梨花深闭门，忘了青春，误了青春。', '一剪梅·雨打梨花深闭门', '', '人生');
INSERT INTO `t_mingju` VALUES (6, '秦观', '两情若是久长时，又岂在朝朝暮暮。', '鹊桥仙·纤云弄巧', '', '人生');
INSERT INTO `t_mingju` VALUES (7, '欧阳修', '人生自是有情痴，此恨不关风与月。', '玉楼春·尊前拟把归期说', '', '人生');
INSERT INTO `t_mingju` VALUES (8, '李商隐', '身无彩凤双飞翼，心有灵犀一点通。', '无题·昨夜星辰昨夜风', '', '人生');
INSERT INTO `t_mingju` VALUES (9, '崔护', '去年今日此门中，人面桃花相映红。', '题都城南庄', '', '人生');
INSERT INTO `t_mingju` VALUES (10, '苏轼', '休对故人思故国，且将新火试新茶。诗酒趁年华。', '望江南·超然台作', '', '人生');
INSERT INTO `t_mingju` VALUES (11, '李煜', '林花谢了春红，太匆匆。无奈朝来寒雨晚来风。', '相见欢·林花谢了春红', '', '人生');
INSERT INTO `t_mingju` VALUES (12, '李白', '抽刀断水水更流，举杯消愁愁更愁。', '宣州谢脁楼饯别校书叔云 / 陪侍御叔华登楼歌', '', '人生');
INSERT INTO `t_mingju` VALUES (13, '惠能', '菩提本无树，明镜亦非台。', '菩提偈', '', '人生');
INSERT INTO `t_mingju` VALUES (14, '李商隐', '此情可待成追忆，只是当时已惘然。', '锦瑟', '', '人生');
INSERT INTO `t_mingju` VALUES (15, '黄庭坚', '桃李春风一杯酒，江湖夜雨十年灯。', '寄黄几复', '', '人生');
INSERT INTO `t_mingju` VALUES (16, '苏麟', '近水楼台先得月，向阳花木易为春。', '断句', '', '人生');
INSERT INTO `t_mingju` VALUES (17, '晏殊', '时光只解催人老，不信多情，长恨离亭，泪滴春衫酒易醒。', '采桑子·时光只解催人老', '', '人生');
INSERT INTO `t_mingju` VALUES (18, '李白', '今人不见古时月，今月曾经照古人。', '把酒问月·故人贾淳令予问之', '', '人生');
INSERT INTO `t_mingju` VALUES (19, '韦应物', '浮云一别后，流水十年间。', '淮上喜会梁川故人 / 淮上喜会梁州故人', '', '人生');
INSERT INTO `t_mingju` VALUES (20, '杜秋娘', '劝君莫惜金缕衣，劝君惜取少年时。', '金缕衣', '', '人生');
INSERT INTO `t_mingju` VALUES (21, '郑思肖', '宁可枝头抱香死，何曾吹落北风中。', '画菊', '', '人生');
INSERT INTO `t_mingju` VALUES (22, '李贺', '男儿何不带吴钩，收取关山五十州。', '南园十三首·其五', '', '人生');
INSERT INTO `t_mingju` VALUES (23, '黄蘖禅师', '不经一番寒彻骨，怎得梅花扑鼻香。', '上堂开示颂', '', '人生');
INSERT INTO `t_mingju` VALUES (24, '陆游', '纸上得来终觉浅，绝知此事要躬行。', '冬夜读书示子聿', '', '人生');
INSERT INTO `t_mingju` VALUES (25, '杜荀鹤', '时人不识凌云木，直待凌云始道高。', '小松', '', '人生');
INSERT INTO `t_mingju` VALUES (26, '贺铸', '当年不肯嫁春风，无端却被秋风误。', '芳心苦·杨柳回塘', '', '人生');
INSERT INTO `t_mingju` VALUES (27, '杨慎', '青山依旧在，几度夕阳红。', '临江仙·滚滚长江东逝水', '', '人生');
INSERT INTO `t_mingju` VALUES (28, '辛弃疾', '我见青山多妩媚，料青山见我应如是。', '贺新郎·甚矣吾衰矣', '', '人生');
INSERT INTO `t_mingju` VALUES (29, '辛弃疾', '众里寻他千百度，蓦然回首，那人却在，灯火阑珊处。', '青玉案·元夕', '', '人生');
INSERT INTO `t_mingju` VALUES (30, '李煜', '世事漫随流水，算来一梦浮生。', '乌夜啼·昨夜风兼雨', '', '人生');
INSERT INTO `t_mingju` VALUES (31, '贾岛', '十年磨一剑，霜刃未曾试。', '剑客 / 述剑', '', '人生');
INSERT INTO `t_mingju` VALUES (32, '林则徐', '苟利国家生死以，岂因祸福避趋之。', '赴戍登程口占示家人·其二', '', '人生');
INSERT INTO `t_mingju` VALUES (33, '刘过', '欲买桂花同载酒，终不似，少年游。', '唐多令·芦叶满汀洲', '', '人生');
INSERT INTO `t_mingju` VALUES (34, '王贞白', '读书不觉已春深，一寸光阴一寸金。', '白鹿洞二首·其一', '', '人生');
INSERT INTO `t_mingju` VALUES (35, '白居易', '同是天涯沦落人，相逢何必曾相识！', '琵琶行 / 琵琶引', '', '人生');
INSERT INTO `t_mingju` VALUES (36, '卢梅坡', '梅须逊雪三分白，雪却输梅一段香。', '雪梅·其一', '', '人生');
INSERT INTO `t_mingju` VALUES (37, '罗隐', '采得百花成蜜后，为谁辛苦为谁甜。', '蜂', '', '人生');
INSERT INTO `t_mingju` VALUES (38, '李清照', '物是人非事事休，欲语泪先流。', '武陵春·春晚', '', '人生');
INSERT INTO `t_mingju` VALUES (39, '张可久', '美人自刎乌江岸，战火曾烧赤壁山，将军空老玉门关。', '卖花声·怀古', '', '人生');
INSERT INTO `t_mingju` VALUES (40, '苏轼', '人间有味是清欢。', '浣溪沙·细雨斜风作晓寒', '', '人生');
INSERT INTO `t_mingju` VALUES (41, '陆游', '伤心桥下春波绿，曾是惊鸿照影来。', '沈园二首', '', '人生');
INSERT INTO `t_mingju` VALUES (42, '朱敦儒', '世事短如春梦，人情薄似秋云。', '西江月·世事短如春梦', '', '人生');
INSERT INTO `t_mingju` VALUES (43, '李商隐', '春蚕到死丝方尽，蜡炬成灰泪始干。', '无题·相见时难别亦难', '', '人生');
INSERT INTO `t_mingju` VALUES (44, '刘禹锡', '沉舟侧畔千帆过，病树前头万木春。', '酬乐天扬州初逢席上见赠', '', '人生');
INSERT INTO `t_mingju` VALUES (45, '李商隐', '锦瑟无端五十弦，一弦一柱思华年。', '锦瑟', '', '人生');
INSERT INTO `t_mingju` VALUES (46, '张鸣善', '月有盈亏花有开谢，想人生最苦离别。', '普天乐·咏世', '', '人生');
INSERT INTO `t_mingju` VALUES (47, '杜甫', '射人先射马，擒贼先擒王。', '前出塞九首·其六', '', '人生');
INSERT INTO `t_mingju` VALUES (48, '苏轼', '竹外桃花三两枝，春江水暖鸭先知。', '惠崇春江晚景 / 惠崇春江晓景', '', '人生');
INSERT INTO `t_mingju` VALUES (49, '李白', '长风破浪会有时，直挂云帆济沧海。', '行路难·其一', '', '人生');
INSERT INTO `t_mingju` VALUES (50, '李商隐', '夕阳无限好，只是近黄昏。', '乐游原 / 登乐游原', '', '人生');
INSERT INTO `t_mingju` VALUES (51, '张谓', '世人结交须黄金，黄金不多交不深。', '题长安壁主人', '', '人生');
INSERT INTO `t_mingju` VALUES (52, '龚自珍', '落红不是无情物，化作春泥更护花。', '己亥杂诗·其五', '', '人生');
INSERT INTO `t_mingju` VALUES (53, '秦观', '韶华不为少年留，恨悠悠，几时休？', '江城子·西城杨柳弄春柔', '', '人生');
INSERT INTO `t_mingju` VALUES (54, '陆游', '呜呼！楚虽三户能亡秦，岂有堂堂中国空无人！', '金错刀行', '', '人生');
INSERT INTO `t_mingju` VALUES (55, '韦庄', '遇酒且呵呵，人生能几何！', '菩萨蛮·劝君今夜须沈醉', '', '人生');
INSERT INTO `t_mingju` VALUES (56, '杜甫', '白日放歌须纵酒，青春作伴好还乡。', '闻官军收河南河北', '', '人生');
INSERT INTO `t_mingju` VALUES (57, '纳兰性德', '山一程，水一程，身向榆关那畔行，夜深千帐灯。', '长相思·山一程', '', '人生');
INSERT INTO `t_mingju` VALUES (58, '刘希夷', '年年岁岁花相似，岁岁年年人不同。', '代悲白头翁 / 白头吟 / 有所思', '', '人生');
INSERT INTO `t_mingju` VALUES (59, '苏轼', '人生到处知何似，应似飞鸿踏雪泥。', '和子由渑池怀旧', '', '人生');
INSERT INTO `t_mingju` VALUES (60, '李白', '大鹏一日同风起，扶摇直上九万里。', '上李邕', '', '人生');
INSERT INTO `t_mingju` VALUES (61, '黄庭坚', '我欲穿花寻路，直入白云深处，浩气展虹霓。', '水调歌头·游览', '', '人生');
INSERT INTO `t_mingju` VALUES (62, '王昌龄', '秦时明月汉时关，万里长征人未还。', '出塞二首·其一', '', '人生');
INSERT INTO `t_mingju` VALUES (63, '朱熹', '少年易老学难成，一寸光阴不可轻。', '劝学诗 / 偶成', '', '人生');
INSERT INTO `t_mingju` VALUES (64, '苏轼', '万事到头都是梦，休休。明日黄花蝶也愁。', '南乡子·重九涵辉楼呈徐君猷', '', '人生');
INSERT INTO `t_mingju` VALUES (65, '袁枚', '莫唱当年长恨歌，人间亦自有银河。', '马嵬', '', '人生');
INSERT INTO `t_mingju` VALUES (66, '陆游', '位卑未敢忘忧国，事定犹须待阖棺。', '病起书怀', '', '人生');
INSERT INTO `t_mingju` VALUES (67, '苏轼', '粗缯大布裹生涯，腹有诗书气自华。', '和董传留别', '', '人生');
INSERT INTO `t_mingju` VALUES (68, '岳飞', '三十功名尘与土，八千里路云和月。', '满江红·写怀', '', '人生');
INSERT INTO `t_mingju` VALUES (69, '汤恢', '羡青山有思，白鹤忘机。', '八声甘州·摘青梅荐酒', '', '人生');
INSERT INTO `t_mingju` VALUES (70, '戴叔伦', '愿得此身长报国，何须生入玉门关。', '塞上曲二首·其二', '', '人生');
INSERT INTO `t_mingju` VALUES (71, '陆游', '山重水复疑无路，柳暗花明又一村。', '游山西村', '', '人生');
INSERT INTO `t_mingju` VALUES (72, '杜牧', '十年一觉扬州梦，赢得青楼薄幸名。', '遣怀', '', '人生');
INSERT INTO `t_mingju` VALUES (73, '李白', '宣父犹能畏后生，丈夫未可轻年少。', '上李邕', '', '人生');
INSERT INTO `t_mingju` VALUES (74, '王籍', '蝉噪林逾静，鸟鸣山更幽。', '入若耶溪', '', '人生');
INSERT INTO `t_mingju` VALUES (75, '范云', '昔去雪如花，今来花似雪。', '别诗', '', '人生');
INSERT INTO `t_mingju` VALUES (76, '晏几道', '当时明月在，曾照彩云归。', '临江仙·梦后楼台高锁', '', '人生');
INSERT INTO `t_mingju` VALUES (77, '李煜', '自是人生长恨水长东。', '相见欢·林花谢了春红', '', '人生');
INSERT INTO `t_mingju` VALUES (78, '郑燮', '咬定青山不放松，立根原在破岩中。', '竹石', '', '人生');
INSERT INTO `t_mingju` VALUES (79, '朱熹', '等闲识得东风面，万紫千红总是春。', '春日', '', '人生');
INSERT INTO `t_mingju` VALUES (80, '鲍照', '人生亦有命，安能行叹复坐愁？', '拟行路难·其四', '', '人生');
INSERT INTO `t_mingju` VALUES (81, '杜甫', '出师未捷身先死，长使英雄泪满襟。', '蜀相', '', '人生');
INSERT INTO `t_mingju` VALUES (82, '蒋捷', '流光容易把人抛，红了樱桃，绿了芭蕉。', '一剪梅·舟过吴江', '', '人生');
INSERT INTO `t_mingju` VALUES (83, '张九龄', '草木有本心，何求美人折！', '感遇十二首·其一', '', '人生');
INSERT INTO `t_mingju` VALUES (84, '李白', '天生我材必有用，千金散尽还复来。', '将进酒', '', '人生');
INSERT INTO `t_mingju` VALUES (85, '颜真卿', '黑发不知勤学早，白首方悔读书迟。', '劝学诗', '', '人生');
INSERT INTO `t_mingju` VALUES (86, '陶渊明', '盛年不重来，一日难再晨。', '杂诗·人生无根蒂', '', '人生');
INSERT INTO `t_mingju` VALUES (87, '李商隐', '沧海月明珠有泪，蓝田日暖玉生烟。', '锦瑟', '', '人生');
INSERT INTO `t_mingju` VALUES (88, '赵秉文', '劝君莫惜花前醉，今年花谢，明年花谢，白了人头。', '青杏儿·风雨替花愁', '', '人生');
INSERT INTO `t_mingju` VALUES (89, '王勃', '海内存知己，天涯若比邻。', '送杜少府之任蜀州 / 送杜少府之任蜀川', '', '人生');
INSERT INTO `t_mingju` VALUES (90, '佚名', '知我者，谓我心忧；不知我者，谓我何求。', '黍离', '', '人生');
INSERT INTO `t_mingju` VALUES (91, '杜甫', '会当凌绝顶，一览众山小。', '望岳', '', '人生');
INSERT INTO `t_mingju` VALUES (92, '李清照', '枕上诗书闲处好，门前风景雨来佳。', '摊破浣溪沙·病起萧萧两鬓华', '', '人生');
INSERT INTO `t_mingju` VALUES (93, '文天祥', '人生自古谁无死？留取丹心照汗青。', '过零丁洋', '', '人生');
INSERT INTO `t_mingju` VALUES (94, '唐寅', '我也不登天子船，我也不上长安眠。', '把酒对月歌', '', '人生');
INSERT INTO `t_mingju` VALUES (95, '白居易', '松树千年终是朽，槿花一日自为荣。', '放言五首·其五', '', '人生');
INSERT INTO `t_mingju` VALUES (96, '颜真卿', '三更灯火五更鸡，正是男儿读书时。', '劝学诗', '', '人生');
INSERT INTO `t_mingju` VALUES (97, '苏轼', '一别都门三改火，天涯踏尽红尘。', '临江仙·送钱穆父', '', '人生');
INSERT INTO `t_mingju` VALUES (98, '陆游', '古人学问无遗力，少壮工夫老始成。', '冬夜读书示子聿', '', '人生');
INSERT INTO `t_mingju` VALUES (99, '白居易', '试玉要烧三日满，辨材须待七年期。', '放言五首·其三', '', '人生');
INSERT INTO `t_mingju` VALUES (100, '陶渊明', '及时当勉励，岁月不待人。', '杂诗·人生无根蒂', '', '人生');
INSERT INTO `t_mingju` VALUES (101, '刘著', '江南几度梅花发，人在天涯鬓已斑。', '鹧鸪天·雪照山城玉指寒', '', '人生');
INSERT INTO `t_mingju` VALUES (102, '辛弃疾', '想当年，金戈铁马，气吞万里如虎。', '永遇乐·京口北固亭怀古', '', '人生');
INSERT INTO `t_mingju` VALUES (103, '苏轼', '长恨此身非我有，何时忘却营营。', '临江仙·夜饮东坡醒复醉', '', '人生');
INSERT INTO `t_mingju` VALUES (104, '屈原', '身既死兮神以灵，魂魄毅兮为鬼雄。', '国殇', '', '人生');
INSERT INTO `t_mingju` VALUES (105, '韦应物', '去年花里逢君别，今日花开已一年。', '寄李儋元锡', '', '人生');
INSERT INTO `t_mingju` VALUES (106, '杨炯', '宁为百夫长，胜作一书生。', '从军行', '', '人生');
INSERT INTO `t_mingju` VALUES (107, '苏轼', '博观而约取，厚积而薄发', '稼说送张琥', '', '人生');
INSERT INTO `t_mingju` VALUES (108, '张维屏', '造物无言却有情，每于寒尽觉春生。', '新雷', '', '人生');
INSERT INTO `t_mingju` VALUES (109, '赵翼', '江山代有才人出，各领风骚数百年。', '论诗五首·其二', '', '人生');
INSERT INTO `t_mingju` VALUES (110, '白居易', '离离原上草，一岁一枯荣。', '草 / 赋得古原草送别', '', '人生');
INSERT INTO `t_mingju` VALUES (111, '高适', '功名万里外，心事一杯中。', '送李侍御赴安西', '', '人生');
INSERT INTO `t_mingju` VALUES (112, '李清照', '生当作人杰，死亦为鬼雄。', '夏日绝句', '', '人生');
INSERT INTO `t_mingju` VALUES (113, '王安石', '不畏浮云遮望眼，只缘身在最高层。', '登飞来峰', '', '人生');
INSERT INTO `t_mingju` VALUES (114, '赵恒', '娶妻无媒毋须恨，书中有女颜如玉。', '劝学诗', '', '人生');
INSERT INTO `t_mingju` VALUES (115, '韦应物', '我有一瓢酒，可以慰风尘。', '简卢陟', '', '人生');
INSERT INTO `t_mingju` VALUES (116, '苏轼', '此生此夜不长好，明月明年何处看。', '阳关曲 / 中秋月', '', '人生');
INSERT INTO `t_mingju` VALUES (117, '曹松', '凭君莫话封侯事，一将功成万骨枯。', '己亥岁感事', '', '人生');
INSERT INTO `t_mingju` VALUES (118, '白居易', '莫笑贱贫夸富贵，共成枯骨两何如？', '放言五首·其四', '', '人生');
INSERT INTO `t_mingju` VALUES (119, '佚名', '昔我往矣，杨柳依依。', '采薇', '', '人生');
INSERT INTO `t_mingju` VALUES (120, '苏轼', '一点浩然气，千里快哉风。', '水调歌头·黄州快哉亭赠张偓佺', '', '人生');
INSERT INTO `t_mingju` VALUES (121, '屈原', '路漫漫其修远兮，吾将上下而求索。', '离骚', '', '人生');
INSERT INTO `t_mingju` VALUES (122, '毛泽东', '恰同学少年，风华正茂；书生意气，挥斥方遒。', '沁园春·长沙', '', '人生');
INSERT INTO `t_mingju` VALUES (123, '苏轼', '谁道人生无再少？门前流水尚能西！休将白发唱黄鸡。', '浣溪沙·游蕲水清泉寺', '', '人生');
INSERT INTO `t_mingju` VALUES (124, '苏轼', '人似秋鸿来有信，事如春梦了无痕。', '正月二十日与潘郭二生出郊寻春忽记去年是日同至女王城作诗乃和前韵', '', '人生');
INSERT INTO `t_mingju` VALUES (125, '苏轼', '不识庐山真面目，只缘身在此山中。', '题西林壁', '', '人生');
INSERT INTO `t_mingju` VALUES (126, '何梦桂', '数人世相逢，百年欢笑，能得几回又。', '摸鱼儿·记年时人人何处', '', '人生');
INSERT INTO `t_mingju` VALUES (127, '朱熹', '未觉池塘春草梦，阶前梧叶已秋声。', '偶成', '', '人生');
INSERT INTO `t_mingju` VALUES (128, '苏轼', '若言琴上有琴声，放在匣中何不鸣？', '琴诗', '', '人生');
INSERT INTO `t_mingju` VALUES (129, '苏轼', '一蓑烟雨任平生。', '定风波·莫听穿林打叶声', '', '人生');
INSERT INTO `t_mingju` VALUES (130, '杜甫', '尔曹身与名俱灭，不废江河万古流。', '戏为六绝句·其二', '', '人生');
INSERT INTO `t_mingju` VALUES (131, '刘禹锡', '千淘万漉虽辛苦，吹尽狂沙始到金。', '浪淘沙九首', '', '人生');
INSERT INTO `t_mingju` VALUES (132, '曹雪芹', '草木也知愁，韶华竟白头。', '唐多令·柳絮', '', '人生');
INSERT INTO `t_mingju` VALUES (133, '李白', '人生得意须尽欢，莫使金樽空对月。', '将进酒', '', '人生');
INSERT INTO `t_mingju` VALUES (134, '辛弃疾', '老来情味减，对别酒，怯流年。', '木兰花慢·滁州送范倅', '', '人生');
INSERT INTO `t_mingju` VALUES (135, '姜夔', '春未绿，鬓先丝。人间别久不成悲。', '鹧鸪天·元夕有所梦', '', '人生');
INSERT INTO `t_mingju` VALUES (136, '杜甫', '为人性僻耽佳句，语不惊人死不休。', '江上值水如海势聊短述', '', '人生');
INSERT INTO `t_mingju` VALUES (137, '杜甫', '人生不相见，动如参与商。', '赠卫八处士', '', '人生');
INSERT INTO `t_mingju` VALUES (138, '辛弃疾', '醉里挑灯看剑，梦回吹角连营。', '破阵子·为陈同甫赋壮词以寄之', '', '人生');
INSERT INTO `t_mingju` VALUES (139, '刘禹锡', '人世几回伤往事，山形依旧枕寒流。', '西塞山怀古', '', '人生');
INSERT INTO `t_mingju` VALUES (140, '陈陶', '可怜无定河边骨，犹是春闺梦里人。', '陇西行四首', '', '人生');
INSERT INTO `t_mingju` VALUES (141, '贺知章', '少小离家老大回，乡音无改鬓毛衰。', '回乡偶书二首·其一', '', '人生');
INSERT INTO `t_mingju` VALUES (142, '罗隐', '今朝有酒今朝醉，明日愁来明日愁。', '自遣', '', '人生');
INSERT INTO `t_mingju` VALUES (143, '李贺', '衰兰送客咸阳道，天若有情天亦老。', '金铜仙人辞汉歌', '', '人生');
INSERT INTO `t_mingju` VALUES (144, '李世民', '疾风知劲草，板荡识诚臣。', '赐萧瑀', '', '人生');
INSERT INTO `t_mingju` VALUES (145, '佚名', '人生天地间，忽如远行客。', '青青陵上柏', '', '人生');
INSERT INTO `t_mingju` VALUES (146, '李白', '夫天地者，万物之逆旅也；光阴者，百代之过客也。', '春夜宴桃李园序 / 春夜宴从弟桃花园序', '', '人生');
INSERT INTO `t_mingju` VALUES (147, '虞世南', '居高声自远，非是藉秋风。', '蝉', '', '人生');
INSERT INTO `t_mingju` VALUES (148, '苏轼', '诗酒趁年华。', '望江南·超然台作', '', '人生');
INSERT INTO `t_mingju` VALUES (149, '贺知章', '离别家乡岁月多，近来人事半消磨。', '回乡偶书二首', '', '人生');
INSERT INTO `t_mingju` VALUES (150, '李贺', '黑云压城城欲摧，甲光向日金鳞开。', '雁门太守行', '', '人生');
INSERT INTO `t_mingju` VALUES (151, '欧阳修', '去年元夜时，花市灯如昼。', '生查子·元夕', '', '人生');
INSERT INTO `t_mingju` VALUES (152, '朱熹', '问渠哪得清如许？为有源头活水来。', '活水亭观书有感二首·其一', '', '人生');
INSERT INTO `t_mingju` VALUES (153, '毛泽东', '雄关漫道真如铁，而今迈步从头越。', '忆秦娥·娄山关', '', '人生');
INSERT INTO `t_mingju` VALUES (154, '岑参', '花门楼前见秋草，岂能贫贱相看老。', '凉州馆中与诸判官夜集', '', '人生');
INSERT INTO `t_mingju` VALUES (155, '姜夔', '谁教岁岁红莲夜，两处沉吟各自知。', '鹧鸪天·元夕有所梦', '', '人生');
INSERT INTO `t_mingju` VALUES (156, '杜甫', '酒债寻常行处有，人生七十古来稀。', '曲江二首', '', '人生');
INSERT INTO `t_mingju` VALUES (157, '佚名', '少壮不努力，老大徒伤悲！', '长歌行', '', '人生');
INSERT INTO `t_mingju` VALUES (158, '李白', '世间行乐亦如此，古来万事东流水。', '梦游天姥吟留别 / 别东鲁诸公', '', '人生');
INSERT INTO `t_mingju` VALUES (159, '韩愈', '最是一年春好处，绝胜烟柳满皇都。', '早春呈水部张十八员外 / 初春小雨 / 早春', '', '人生');
INSERT INTO `t_mingju` VALUES (160, '李商隐', '历览前贤国与家，成由勤俭破由奢。', '咏史二首·其二', '', '人生');
INSERT INTO `t_mingju` VALUES (161, '陆游', '当年万里觅封侯。匹马戍梁州。', '诉衷情·当年万里觅封侯', '', '人生');
INSERT INTO `t_mingju` VALUES (162, '罗隐', '家国兴亡自有时，吴人何苦怨西施。', '西施', '', '人生');
INSERT INTO `t_mingju` VALUES (163, '刘禹锡', '莫道桑榆晚，为霞尚满天。', '酬乐天咏老见示', '', '人生');
INSERT INTO `t_mingju` VALUES (164, '苏轼', '世事一场大梦，人生几度秋凉？', '西江月·世事一场大梦', '', '人生');
INSERT INTO `t_mingju` VALUES (165, '贾岛', '两句三年得，一吟双泪流。', '题诗后', '', '人生');
INSERT INTO `t_mingju` VALUES (166, '朱熹', '半亩方塘一鉴开，天光云影共徘徊。', '活水亭观书有感二首·其一', '', '人生');
INSERT INTO `t_mingju` VALUES (167, '诸葛亮', '非淡泊无以明志，非宁静无以致远。', '诫子书', '', '人生');
INSERT INTO `t_mingju` VALUES (168, '杜甫', '读书破万卷，下笔如有神。', '奉赠韦左丞丈二十二韵', '', '人生');
INSERT INTO `t_mingju` VALUES (169, '王维', '一身转战三千里，一剑曾当百万师。', '老将行', '', '人生');
INSERT INTO `t_mingju` VALUES (170, '辛弃疾', '人间万事，毫发常重泰山轻。', '水调歌头·壬子三山被召陈端仁给事饮饯席上作', '', '人生');
INSERT INTO `t_mingju` VALUES (171, '王维', '晚年唯好静，万事不关心。', '酬张少府', '', '人生');
INSERT INTO `t_mingju` VALUES (172, '杜牧', '江东子弟多才俊，卷土重来未可知。', '题乌江亭', '', '人生');
INSERT INTO `t_mingju` VALUES (173, '陶渊明', '人生无根蒂，飘如陌上尘。', '杂诗', '', '人生');
INSERT INTO `t_mingju` VALUES (174, '杜甫', '富贵必从勤苦得，男儿须读五车书。', '柏学士茅屋', '', '人生');
INSERT INTO `t_mingju` VALUES (175, '卢纶', '林暗草惊风，将军夜引弓。', '和张仆射塞下曲·其二', '', '人生');
INSERT INTO `t_mingju` VALUES (176, '贾岛', '只在此山中，云深不知处。', '寻隐者不遇 / 孙革访羊尊师诗', '', '人生');
INSERT INTO `t_mingju` VALUES (177, '于谦', '千锤万凿出深山，烈火焚烧若等闲。', '石灰吟', '', '人生');
INSERT INTO `t_mingju` VALUES (178, '陆游', '死去元知万事空，但悲不见九州同。', '示儿', '', '人生');
INSERT INTO `t_mingju` VALUES (179, '晏殊', '一向年光有限身，等闲离别易销魂，酒筵歌席莫辞频。', '浣溪沙·一向年光有限身', '', '人生');
INSERT INTO `t_mingju` VALUES (180, '萧抡谓', '一月不读书，耳目失精爽。', '读书有所见作', '', '人生');
INSERT INTO `t_mingju` VALUES (181, '乔吉', '三千丈清愁鬓发，五十年春梦繁华。', '折桂令·客窗清明', '', '人生');
INSERT INTO `t_mingju` VALUES (182, '佚名', '花开堪折直须折，莫待无花空折枝。', '金缕衣', '', '人生');
INSERT INTO `t_mingju` VALUES (183, '骆宾王', '昔时人已没，今日水犹寒。', '于易水送人 / 于易水送别', '', '人生');
INSERT INTO `t_mingju` VALUES (184, '秦韬玉', '苦恨年年压金线，为他人作嫁衣裳。', '贫女', '', '人生');
INSERT INTO `t_mingju` VALUES (185, '柳永', '此去经年，应是良辰好景虚设。', '雨霖铃·寒蝉凄切', '', '人生');
INSERT INTO `t_mingju` VALUES (186, '王维', '新丰美酒斗十千，咸阳游侠多少年。', '少年行四首', '', '人生');
INSERT INTO `t_mingju` VALUES (187, '郑燮', '千磨万击还坚劲，任尔东西南北风。', '竹石', '', '人生');
INSERT INTO `t_mingju` VALUES (188, '佚名', '沧浪之水清兮，可以濯我缨；', '沧浪歌', '', '人生');
INSERT INTO `t_mingju` VALUES (189, '韦庄', '纵被无情弃，不能羞。', '思帝乡·春日游', '', '人生');
INSERT INTO `t_mingju` VALUES (190, '孟郊', '青春须早为，岂能长少年。', '劝学', '', '人生');
INSERT INTO `t_mingju` VALUES (191, '陆游', '莫笑农家腊酒浑，丰年留客足鸡豚。', '游山西村', '', '人生');
INSERT INTO `t_mingju` VALUES (192, '曹植', '捐躯赴国难，视死忽如归！', '白马篇', '', '人生');
INSERT INTO `t_mingju` VALUES (193, '曹操', '对酒当歌，人生几何！', '短歌行', '', '人生');
INSERT INTO `t_mingju` VALUES (194, '章良能', '旧游无处不堪寻。无寻处，惟有少年心。', '小重山·柳暗花明春事深', '', '人生');
INSERT INTO `t_mingju` VALUES (195, '陆游', '壮心未与年俱老，死去犹能作鬼雄。', '书愤五首·其二', '', '人生');
INSERT INTO `t_mingju` VALUES (196, '陆游', '此身合是诗人未？细雨骑驴入剑门。', '剑门道中遇微雨', '', '人生');
INSERT INTO `t_mingju` VALUES (197, '陆游', '僵卧孤村不自哀，尚思为国戍轮台。', '十一月四日风雨大作', '', '人生');
INSERT INTO `t_mingju` VALUES (198, '晏几道', '年年陌上生秋草，日日楼中到夕阳。', '鹧鸪天·醉拍春衫惜旧香', '', '人生');
INSERT INTO `t_mingju` VALUES (199, '文天祥', '山河破碎风飘絮，身世浮沉雨打萍。', '过零丁洋', '', '人生');
INSERT INTO `t_mingju` VALUES (200, '陈与义', '二十余年如一梦，此身虽在堪惊。', '临江仙·夜登小阁忆洛中旧游', '', '人生');
INSERT INTO `t_mingju` VALUES (201, '李白', '古人今人若流水，共看明月皆如此。', '把酒问月·故人贾淳令予问之', '', '人生');
INSERT INTO `t_mingju` VALUES (202, '陶渊明', '结庐在人境，而无车马喧。', '饮酒·其五', '', '人生');
INSERT INTO `t_mingju` VALUES (203, '苏轼', '莫听穿林打叶声，何妨吟啸且徐行。', '定风波·莫听穿林打叶声', '', '人生');
INSERT INTO `t_mingju` VALUES (204, '杜牧', '胜败兵家事不期，包羞忍耻是男儿。', '题乌江亭', '', '人生');
INSERT INTO `t_mingju` VALUES (205, '杜甫', '明日隔山岳，世事两茫茫。', '赠卫八处士', '', '人生');
INSERT INTO `t_mingju` VALUES (206, '朱熹', '少年易老学难成，一寸光阴不可轻。', '偶成', '', '人生');
INSERT INTO `t_mingju` VALUES (207, '魏夫人', '聚散匆匆，此恨年年有。', '点绛唇·波上清风', '', '人生');
INSERT INTO `t_mingju` VALUES (208, '李绅', '假金方用真金镀，若是真金不镀金。', '答章孝标', '', '人生');
INSERT INTO `t_mingju` VALUES (209, '晏殊', '绿杨芳草长亭路。年少抛人容易去。', '玉楼春·春恨', '', '人生');
INSERT INTO `t_mingju` VALUES (210, '白居易', '草萤有耀终非火，荷露虽团岂是珠。', '放言五首·其一', '', '人生');
INSERT INTO `t_mingju` VALUES (211, '于谦', '一寸丹心图报国，两行清泪为思亲。', '立春日感怀', '', '人生');
INSERT INTO `t_mingju` VALUES (212, '苏轼', '彩线轻缠红玉臂，小符斜挂绿云鬟。佳人相见一千年。', '浣溪沙·端午', '', '人生');
INSERT INTO `t_mingju` VALUES (213, '苏轼', '问汝平生功业，黄州惠州儋州。', '自题金山画像', '', '人生');
INSERT INTO `t_mingju` VALUES (214, '纳兰性德', '背灯和月就花阴，已是十年踪迹十年心。', '虞美人·银床淅沥青梧老', '', '人生');
INSERT INTO `t_mingju` VALUES (215, '刘禹锡', '长恨人心不如水，等闲平地起波澜。', '竹枝词九首', '', '人生');
INSERT INTO `t_mingju` VALUES (216, '王勃', '穷且益坚，不坠青云之志。', '滕王阁序', '', '人生');
INSERT INTO `t_mingju` VALUES (217, '杨慎', '白发渔樵江渚上，惯看秋月春风。', '临江仙·滚滚长江东逝水', '', '人生');
INSERT INTO `t_mingju` VALUES (218, '诸葛亮', '非学无以广才，非志无以成学。', '诫子书', '', '人生');
INSERT INTO `t_mingju` VALUES (219, '苏轼', '惆怅东栏一株雪，人生看得几清明。', '东栏梨花', '', '人生');
INSERT INTO `t_mingju` VALUES (220, '戚继光', '一年三百六十日，多是横戈马上行。', '马上作', '', '人生');
INSERT INTO `t_mingju` VALUES (221, '李白', '安能摧眉折腰事权贵，使我不得开心颜！', '梦游天姥吟留别 / 梦游天姥山别东鲁诸公', '', '人生');
INSERT INTO `t_mingju` VALUES (222, '韦庄', '洛阳城里春光好，洛阳才子他乡老。', '菩萨蛮', '', '人生');
INSERT INTO `t_mingju` VALUES (223, '陆游', '遗民泪尽胡尘里，南望王师又一年。', '秋夜将晓出篱门迎凉有感', '', '人生');
INSERT INTO `t_mingju` VALUES (224, '张祜', '故国三千里，深宫二十年。', '宫词·故国三千里', '', '人生');
INSERT INTO `t_mingju` VALUES (225, '李白', '白日何短短，百年苦易满。', '短歌行', '', '人生');
INSERT INTO `t_mingju` VALUES (226, '苏轼', '横看成岭侧成峰，远近高低各不同。', '题西林壁', '', '人生');
INSERT INTO `t_mingju` VALUES (227, '范仲淹', '羌管悠悠霜满地，人不寐，将军白发征夫泪。', '渔家傲·秋思', '', '人生');
INSERT INTO `t_mingju` VALUES (228, '王安石', '看似寻常最奇崛，成如容易却艰辛。', '题张司业诗', '', '人生');
INSERT INTO `t_mingju` VALUES (229, '黄遵宪', '杜鹃再拜忧天泪，精卫无穷填海心。', '赠梁任父母同年 / 题梁任父同年', '', '人生');
INSERT INTO `t_mingju` VALUES (230, '秋瑾', '休言女子非英物，夜夜龙泉壁上鸣。', '鹧鸪天·祖国沉沦感不禁', '', '人生');
INSERT INTO `t_mingju` VALUES (231, '辛弃疾', '镜中已觉星星误。人不负春春自负。', '玉楼春·风前欲劝春光住', '', '人生');
INSERT INTO `t_mingju` VALUES (232, '李白', '清水出芙蓉，天然去雕饰。', '经乱离后天恩流夜郎忆旧游书怀赠江夏韦太守良宰', '', '人生');
INSERT INTO `t_mingju` VALUES (233, '高适', '战士军前半死生，美人帐下犹歌舞。', '燕歌行', '', '人生');
INSERT INTO `t_mingju` VALUES (234, '韩愈', '清谈可以饱，梦想接无由。', '洞庭湖阻风赠张十一署·时自阳山徙掾江陵', '', '人生');
INSERT INTO `t_mingju` VALUES (235, '王勃', '闲云潭影日悠悠，物换星移几度秋。', '滕王阁序', '', '人生');
INSERT INTO `t_mingju` VALUES (236, '晏殊', '一曲新词酒一杯，去年天气旧亭台。', '浣溪沙·一曲新词酒一杯', '', '人生');
INSERT INTO `t_mingju` VALUES (237, '陆游', '梦断香消四十年，沈园柳老不吹绵。', '沈园二首', '', '人生');
INSERT INTO `t_mingju` VALUES (238, '曾几', '年年岁岁望中秋，岁岁年年雾雨愁。', '癸未八月十四日至十六夜月色皆佳', '', '人生');
INSERT INTO `t_mingju` VALUES (239, '李清照', '九万里风鹏正举。', '渔家傲·天接云涛连晓雾', '', '人生');
INSERT INTO `t_mingju` VALUES (240, '曹操', '老骥伏枥，志在千里。', '龟虽寿 / 神龟虽寿', '', '人生');
INSERT INTO `t_mingju` VALUES (241, '李颀', '白日登山望烽火，黄昏饮马傍交河。', '古从军行', '', '人生');
INSERT INTO `t_mingju` VALUES (242, '谢枋得', '十年无梦得还家，独立青峰野水涯。', '武夷山中', '', '人生');
INSERT INTO `t_mingju` VALUES (243, '龚自珍', '万一禅关砉然破，美人如玉剑如虹。', '夜坐二首', '', '人生');
INSERT INTO `t_mingju` VALUES (244, '陶渊明', '纵浪大化中，不喜亦不惧。', '形影神三首', '', '人生');
INSERT INTO `t_mingju` VALUES (245, '佚名', '生年不满百，常怀千岁忧。', '生年不满百', '', '人生');
INSERT INTO `t_mingju` VALUES (246, '李商隐', '世界微尘里，吾宁爱与憎。', '北青萝', '', '人生');
INSERT INTO `t_mingju` VALUES (247, '佚名', '高山仰止，景行行止。', '车舝', '', '人生');
INSERT INTO `t_mingju` VALUES (248, '白居易', '野火烧不尽，春风吹又生。', '草 / 赋得古原草送别', '', '人生');
INSERT INTO `t_mingju` VALUES (249, '晏几道', '醉别西楼醒不记。春梦秋云，聚散真容易。', '蝶恋花·醉别西楼醒不记', '', '人生');
INSERT INTO `t_mingju` VALUES (250, '陈师道', '书当快意读易尽，客有可人期不来。', '绝句·书当快意读易尽', '', '人生');
INSERT INTO `t_mingju` VALUES (251, '晏几道', '花不语，水空流。年年拚得为花愁。', '鹧鸪天·守得莲开结伴游', '', '人生');
INSERT INTO `t_mingju` VALUES (252, '岑参', '将军角弓不得控，都护铁衣冷难着。', '白雪歌送武判官归京', '', '人生');
INSERT INTO `t_mingju` VALUES (253, '苏轼', '长恨此身非我有，何时忘却营营。', '临江仙·夜饮东坡醒复醉', '', '人生');
INSERT INTO `t_mingju` VALUES (254, '赵鼎', '寂寂柴门村落里，也教插柳记年华。', '寒食', '', '人生');
INSERT INTO `t_mingju` VALUES (255, '杜甫', '弟妹萧条各何在，干戈衰谢两相催！', '九日五首·其一', '', '人生');
INSERT INTO `t_mingju` VALUES (256, '郑燮', '千磨万击还坚劲，任尔东西南北风。', '竹石', '', '人生');
INSERT INTO `t_mingju` VALUES (257, '佚名', '昼短苦夜长，何不秉烛游！', '生年不满百', '', '人生');
INSERT INTO `t_mingju` VALUES (258, '佚名', '人生天地间，忽如远行客。', '青青陵上柏', '', '人生');
INSERT INTO `t_mingju` VALUES (259, '唐寅', '我也不登天子船，我也不上长安眠。', '把酒对月歌', '', '人生');
INSERT INTO `t_mingju` VALUES (260, '陆游', '此身合是诗人未？细雨骑驴入剑门。', '剑门道中遇微雨', '', '人生');
INSERT INTO `t_mingju` VALUES (261, '秋瑾', '休言女子非英物，夜夜龙泉壁上鸣。', '鹧鸪天·祖国沉沦感不禁', '', '人生');
INSERT INTO `t_mingju` VALUES (262, '李白', '今人不见古时月，今月曾经照古人。', '把酒问月·故人贾淳令予问之', '', '人生');
INSERT INTO `t_mingju` VALUES (263, '李贺', '衰兰送客咸阳道，天若有情天亦老。', '金铜仙人辞汉歌', '', '人生');
INSERT INTO `t_mingju` VALUES (264, '辛弃疾', '想当年，金戈铁马，气吞万里如虎。', '永遇乐·京口北固亭怀古', '', '人生');
INSERT INTO `t_mingju` VALUES (265, '纳兰性德', '碧海年年，试问取、冰轮为谁圆缺？', '琵琶仙·中秋', '', '人生');
INSERT INTO `t_mingju` VALUES (266, '黄庭坚', '想见读书头已白，隔溪猿哭瘴溪藤。', '寄黄几复', '', '人生');
INSERT INTO `t_mingju` VALUES (267, '苏轼', '竹外桃花三两枝，春江水暖鸭先知。', '惠崇春江晚景 / 惠崇春江晓景', '', '人生');
INSERT INTO `t_mingju` VALUES (268, '白居易', '来如春梦几多时？去似朝云无觅处。', '花非花', '', '人生');
INSERT INTO `t_mingju` VALUES (269, '欧阳修', '今年元夜时，月与灯依旧。', '生查子·元夕', '', '人生');
INSERT INTO `t_mingju` VALUES (270, '辛弃疾', '举头西北浮云，倚天万里须长剑。', '水龙吟·过南剑双溪楼', '', '人生');
INSERT INTO `t_mingju` VALUES (271, '李煜', '林花谢了春红，太匆匆。无奈朝来寒雨晚来风。', '相见欢·林花谢了春红', '', '人生');
INSERT INTO `t_mingju` VALUES (272, '廖世美', '催促年光，旧来流水知何处。', '烛影摇红·题安陆浮云楼', '', '人生');
INSERT INTO `t_mingju` VALUES (273, '戚继光', '十年驱驰海色寒，孤臣于此望宸銮。', '望阙台', '', '人生');
INSERT INTO `t_mingju` VALUES (274, '陆游', '文章本天成，妙手偶得之。', '文章', '', '人生');
INSERT INTO `t_mingju` VALUES (275, '王勃', '穷且益坚，不坠青云之志。', '滕王阁序', '', '人生');
INSERT INTO `t_mingju` VALUES (276, '白居易', '乡国真堪恋，光阴可合轻。', '洛桥寒食日作十韵', '', '人生');
INSERT INTO `t_mingju` VALUES (277, '陆机', '冉冉年时暮，迢迢天路征。', '梁甫吟', '', '人生');
INSERT INTO `t_mingju` VALUES (278, '王籍', '蝉噪林逾静，鸟鸣山更幽。', '入若耶溪', '', '人生');
INSERT INTO `t_mingju` VALUES (279, '杜甫', '别裁伪体亲风雅，转益多师是汝师。', '戏为六绝句', '', '人生');
INSERT INTO `t_mingju` VALUES (280, '曾棨', '楼台处处迷芳草，风雨年年怨落花。', '维扬怀古', '', '人生');
INSERT INTO `t_mingju` VALUES (281, '李白', '十五入汉宫，花颜笑春红。', '怨歌行', '', '人生');
INSERT INTO `t_mingju` VALUES (282, '苏轼', '泥上偶然留指爪，鸿飞那复计东西。', '和子由渑池怀旧', '', '人生');
INSERT INTO `t_mingju` VALUES (283, '陶渊明', '及时当勉励，岁月不待人。', '杂诗·人生无根蒂', '', '人生');
INSERT INTO `t_mingju` VALUES (284, '阮籍', '朝阳不再盛，白日忽西幽。', '咏怀八十二首·其三十二', '', '人生');
INSERT INTO `t_mingju` VALUES (285, '蒋捷', '而今灯漫挂。不是暗尘明月，那时元夜。', '女冠子·元夕', '', '人生');
INSERT INTO `t_mingju` VALUES (286, '张祜', '故国三千里，深宫二十年。', '宫词·故国三千里', '', '人生');
INSERT INTO `t_mingju` VALUES (287, '李商隐', '凄凉宝剑篇，羁泊欲穷年。', '风雨', '', '人生');
INSERT INTO `t_mingju` VALUES (288, '苏轼', '人似秋鸿来有信，事如春梦了无痕。', '正月二十日与潘郭二生出郊寻春忽记去年是日同至女王城作诗乃和前韵', '', '人生');
INSERT INTO `t_mingju` VALUES (289, '陈维崧', '转眼葵肌初绣，又红欹栏角。', '好事近·夏日史遽庵先生招饮即用先生喜余归自吴阊过访原韵', '', '人生');
INSERT INTO `t_mingju` VALUES (290, '苏轼', '春衫犹是，小蛮针线，曾湿西湖雨。', '青玉案·送伯固归吴中', '', '人生');
INSERT INTO `t_mingju` VALUES (291, '陆游', '归志宁无五亩园，读书本意在元元。', '读书', '', '人生');
INSERT INTO `t_mingju` VALUES (292, '左思', '弱冠弄柔翰，卓荦观群书。', '咏史八首·其一', '', '人生');
INSERT INTO `t_mingju` VALUES (293, '文天祥', '命随年欲尽，身与世俱忘；', '除夜', '', '人生');
INSERT INTO `t_mingju` VALUES (294, '王昌龄', '明敕星驰封宝剑，辞君一夜取楼兰。', '从军行七首', '', '人生');
INSERT INTO `t_mingju` VALUES (295, '吴激', '到家应是，童稚牵衣，笑我华颠。', '诉衷情·夜寒茅店不成眠', '', '人生');
INSERT INTO `t_mingju` VALUES (296, '陆游', '此身行作稽山土，犹吊遗踪一泫然。', '沈园二首', '', '人生');
INSERT INTO `t_mingju` VALUES (297, '杜牧', '胜败兵家事不期，包羞忍耻是男儿。', '题乌江亭', '', '人生');
INSERT INTO `t_mingju` VALUES (298, '李清照', '年年雪里。常插梅花醉。', '清平乐·年年雪里', '', '人生');
INSERT INTO `t_mingju` VALUES (299, '杜甫', '寺忆曾游处，桥怜再渡时。', '后游', '', '人生');
INSERT INTO `t_mingju` VALUES (300, '纳兰性德', '荆江日落阵云低，横戈跃马今何时。', '送荪友', '', '人生');
INSERT INTO `t_mingju` VALUES (301, '序灯', '吟怀未许老重阳，霜雪无端入鬓长。', '九日吴山宴集值雨次韵', '', '人生');
INSERT INTO `t_mingju` VALUES (302, '王维', '新丰美酒斗十千，咸阳游侠多少年。', '少年行四首', '', '人生');
INSERT INTO `t_mingju` VALUES (303, '杜牧', '清时有味是无能，闲爱孤云静爱僧。', '将赴吴兴登乐游原一绝', '', '人生');
INSERT INTO `t_mingju` VALUES (304, '韦应物', '昨别今已春，鬓丝生几缕。', '长安遇冯著', '', '人生');
INSERT INTO `t_mingju` VALUES (305, '李清照', '我报路长嗟日暮，学诗谩有惊人句。', '渔家傲·天接云涛连晓雾', '', '人生');
INSERT INTO `t_mingju` VALUES (306, '贺铸', '当年不肯嫁春风，无端却被秋风误。', '芳心苦·杨柳回塘', '', '人生');
INSERT INTO `t_mingju` VALUES (307, '苏麟', '近水楼台先得月，向阳花木易为春。', '断句', '', '人生');
INSERT INTO `t_mingju` VALUES (308, '李白', '宣父犹能畏后生，丈夫未可轻年少。', '上李邕', '', '人生');
INSERT INTO `t_mingju` VALUES (309, '辛弃疾', '细读离骚还痛饮，饱看修竹何妨肉。', '满江红·山居即事', '', '人生');
INSERT INTO `t_mingju` VALUES (310, '刘彤', '记得年时临上马，看人眼泪汪汪。', '临江仙·千里长安名利客', '', '人生');
INSERT INTO `t_mingju` VALUES (311, '张孝祥', '隔水毡乡，落日牛羊下，区脱纵横。', '六州歌头·长淮望断', '', '人生');
INSERT INTO `t_mingju` VALUES (312, '苏轼', '人生到处知何似，应似飞鸿踏雪泥。', '和子由渑池怀旧', '', '人生');
INSERT INTO `t_mingju` VALUES (313, '李白', '三杯吐然诺，五岳倒为轻。', '侠客行', '', '人生');
INSERT INTO `t_mingju` VALUES (314, '苏轼', '若言琴上有琴声，放在匣中何不鸣？', '琴诗', '', '人生');
INSERT INTO `t_mingju` VALUES (315, '顾太清', '待何年归去，谈笑各争雄。', '高山流水·次夫子清风阁落成韵', '', '人生');
INSERT INTO `t_mingju` VALUES (316, '李清照', '枕上诗书闲处好，门前风景雨来佳。', '摊破浣溪沙·病起萧萧两鬓华', '', '人生');
INSERT INTO `t_mingju` VALUES (317, '姜夔', '谁教岁岁红莲夜，两处沉吟各自知。', '鹧鸪天·元夕有所梦', '', '人生');
INSERT INTO `t_mingju` VALUES (318, '乔吉', '三千丈清愁鬓发，五十年春梦繁华。', '折桂令·客窗清明', '', '人生');
INSERT INTO `t_mingju` VALUES (319, '晏几道', '行人莫便消魂去，汉渚星桥尚有期。', '鹧鸪天·梅蕊新妆桂叶眉', '', '人生');
INSERT INTO `t_mingju` VALUES (320, '李清照', '骚人可煞无情思，何事当年不见收。', '鹧鸪天·桂花', '', '人生');
INSERT INTO `t_mingju` VALUES (321, '李煜', '林花谢了春红，太匆匆。无奈朝来寒雨晚来风。', '相见欢·林花谢了春红', '', '人生');
INSERT INTO `t_mingju` VALUES (322, '白居易', '试玉要烧三日满，辨材须待七年期。', '放言五首·其三', '', '人生');
INSERT INTO `t_mingju` VALUES (323, '苏轼', '惆怅东栏一株雪，人生看得几清明。', '东栏梨花', '', '人生');
INSERT INTO `t_mingju` VALUES (324, '陆游', '去年射虎南山秋，夜归急雪满貂裘。', '三月十七日夜醉中作', '', '人生');
INSERT INTO `t_mingju` VALUES (325, '张籍', '前年伐月支，城上没全师。', '没蕃故人', '', '人生');
INSERT INTO `t_mingju` VALUES (326, '李颀', '今为羌笛出塞声，使我三军泪如雨。', '古意', '', '人生');
INSERT INTO `t_mingju` VALUES (327, '杜甫', '杀人亦有限，列国自有疆。', '前出塞九首·其六', '', '人生');
INSERT INTO `t_mingju` VALUES (328, '李益', '莫遣只轮归海窟，仍留一箭射天山。', '塞下曲', '', '人生');
INSERT INTO `t_mingju` VALUES (329, '吴渊', '岁月匆匆留不住，鬓已星星堪镊。', '念奴娇·我来牛渚', '', '人生');
INSERT INTO `t_mingju` VALUES (330, '诸葛亮', '夫君子之行，静以修身，俭以养德。', '诫子书', '', '人生');
INSERT INTO `t_mingju` VALUES (331, '苏轼', '一蓑烟雨任平生。', '定风波·莫听穿林打叶声', '', '人生');
INSERT INTO `t_mingju` VALUES (332, '吴文英', '泥落画梁空，梦想青春语。', '生查子·秋社', '', '人生');
INSERT INTO `t_mingju` VALUES (333, '李世民', '悠悠卷旆旌，饮马出长城。', '饮马长城窟行', '', '人生');
INSERT INTO `t_mingju` VALUES (334, '黄庭坚', '黄菊枝头生晓寒。人生莫放酒杯干。', '鹧鸪天·坐中有眉山隐客史应之和前韵', '', '人生');
INSERT INTO `t_mingju` VALUES (335, '罗隐', '采得百花成蜜后，为谁辛苦为谁甜。', '蜂', '', '人生');
INSERT INTO `t_mingju` VALUES (336, '白居易', '三年遇寒食，尽在洛阳城。', '洛桥寒食日作十韵', '', '人生');
INSERT INTO `t_mingju` VALUES (337, '杜甫', '出师未捷身先死，长使英雄泪满襟。', '蜀相', '', '人生');
INSERT INTO `t_mingju` VALUES (338, '佚名', '高山仰止，景行行止。', '车舝', '', '人生');
INSERT INTO `t_mingju` VALUES (339, '叶清臣', '不知来岁牡丹时，再相逢何处。', '贺圣朝·留别', '', '人生');
INSERT INTO `t_mingju` VALUES (340, '宋江', '头上尽教添白发，鬓边不可无黄菊。', '满江红·喜遇重阳', '', '人生');
INSERT INTO `t_mingju` VALUES (341, '辛弃疾', '八百里分麾下炙，五十弦翻塞外声。', '破阵子·为陈同甫赋壮词以寄之', '', '人生');
INSERT INTO `t_mingju` VALUES (342, '辛弃疾', '醉里挑灯看剑，梦回吹角连营。', '破阵子·为陈同甫赋壮词以寄之', '', '人生');
INSERT INTO `t_mingju` VALUES (343, '屈原', '旌蔽日兮敌若云，矢交坠兮士争先。', '国殇', '', '人生');
INSERT INTO `t_mingju` VALUES (344, '辛弃疾', '汉水东流，都洗尽、髭胡膏血。', '满江红·汉水东流', '', '人生');
INSERT INTO `t_mingju` VALUES (345, '韦应物', '我有一瓢酒，可以慰风尘。', '简卢陟', '', '人生');
INSERT INTO `t_mingju` VALUES (346, '杨慎', '古今多少事，都付笑谈中。', '临江仙·滚滚长江东逝水', '', '人生');
INSERT INTO `t_mingju` VALUES (347, '高适', '战士军前半死生，美人帐下犹歌舞。', '燕歌行', '', '人生');
INSERT INTO `t_mingju` VALUES (348, '王镃', '马嘶经战地，雕认打围山。', '塞上曲', '', '人生');
INSERT INTO `t_mingju` VALUES (349, '辛弃疾', '舞榭歌台，风流总被雨打风吹去。', '永遇乐·京口北固亭怀古', '', '人生');
INSERT INTO `t_mingju` VALUES (350, '韩疁', '朱颜那有年年好，逞艳游、赢取如今。', '高阳台·除夜', '', '人生');
INSERT INTO `t_mingju` VALUES (351, '王建', '玉颜憔悴三年，谁复商量管弦。', '宫中调笑·团扇', '', '人生');
INSERT INTO `t_mingju` VALUES (352, '叶清臣', '不知来岁牡丹时，再相逢何处。', '贺圣朝·留别', '', '人生');
INSERT INTO `t_mingju` VALUES (353, '黄庭坚', '桃李春风一杯酒，江湖夜雨十年灯。', '寄黄几复', '', '人生');
INSERT INTO `t_mingju` VALUES (354, '卢梅坡', '梅须逊雪三分白，雪却输梅一段香。', '雪梅·其一', '', '人生');
INSERT INTO `t_mingju` VALUES (355, '陶渊明', '误落尘网中，一去三十年。', '归园田居·其一', '', '人生');
INSERT INTO `t_mingju` VALUES (356, '陶渊明', '结庐在人境，而无车马喧。', '饮酒·其五', '', '人生');
INSERT INTO `t_mingju` VALUES (357, '张先', '庭轩寂寞近清明，残花中酒，又是去年病。', '青门引·春思', '', '人生');
INSERT INTO `t_mingju` VALUES (358, '乔吉', '三千丈清愁鬓发，五十年春梦繁华。', '折桂令·客窗清明', '', '人生');
INSERT INTO `t_mingju` VALUES (359, '文天祥', '人生自古谁无死？留取丹心照汗青。', '过零丁洋', '', '人生');
INSERT INTO `t_mingju` VALUES (360, '晏几道', '年年陌上生秋草，日日楼中到夕阳。', '鹧鸪天·醉拍春衫惜旧香', '', '人生');
INSERT INTO `t_mingju` VALUES (361, '李白', '汉甲连胡兵，沙尘暗云海。', '经乱离后天恩流夜郎忆旧游书怀赠江夏韦太守良宰', '', '人生');
INSERT INTO `t_mingju` VALUES (362, '戚继光', '十年驱驰海色寒，孤臣于此望宸銮。', '望阙台', '', '人生');
INSERT INTO `t_mingju` VALUES (363, '张玉娘', '流星飞玉弹，宝剑落秋霜。', '从军行', '', '人生');
INSERT INTO `t_mingju` VALUES (364, '陆游', '当年万里觅封侯。匹马戍梁州。', '诉衷情·当年万里觅封侯', '', '人生');
INSERT INTO `t_mingju` VALUES (365, '苏轼', '休对故人思故国，且将新火试新茶。诗酒趁年华。', '望江南·超然台作', '', '人生');
INSERT INTO `t_mingju` VALUES (366, '孟子及其弟子', '人恒过然后能改，困于心衡于虑而后作，征于色，发于声，而后喻。', '生于忧患，死于安乐', '', '人生');
INSERT INTO `t_mingju` VALUES (367, '张孝祥', '隔水毡乡，落日牛羊下，区脱纵横。', '六州歌头·长淮望断', '', '人生');
INSERT INTO `t_mingju` VALUES (368, '欧阳修', '祸患常积于忽微，而智勇多困于所溺', '伶官传序', '', '人生');
INSERT INTO `t_mingju` VALUES (369, '曹操', '白骨露於野，千里无鸡鸣。', '蒿里行', '', '人生');
INSERT INTO `t_mingju` VALUES (370, '白居易', '莫笑贱贫夸富贵，共成枯骨两何如？', '放言五首·其四', '', '人生');
INSERT INTO `t_mingju` VALUES (371, '韦应物', '终罢斯结庐，慕陶直可庶。', '东郊', '', '人生');
INSERT INTO `t_mingju` VALUES (372, '辛弃疾', '可惜流年，忧愁风雨，树犹如此！', '水龙吟·登建康赏心亭', '', '人生');
INSERT INTO `t_mingju` VALUES (373, '李益', '莫遣只轮归海窟，仍留一箭射天山。', '塞下曲', '', '人生');
INSERT INTO `t_mingju` VALUES (374, '黄遵宪', '杜鹃再拜忧天泪，精卫无穷填海心。', '赠梁任父母同年 / 题梁任父同年', '', '人生');
INSERT INTO `t_mingju` VALUES (375, '袁枚', '莫唱当年长恨歌，人间亦自有银河。', '马嵬', '', '人生');
INSERT INTO `t_mingju` VALUES (376, '于谦', '眼前直下三千字，胸次全无一点尘。', '观书', '', '人生');
INSERT INTO `t_mingju` VALUES (377, '梁启超', '惟有年时芳俦在，一例差池双剪。', '金缕曲·丁未五月归国旋复东渡却寄沪上诸君子', '', '人生');
INSERT INTO `t_mingju` VALUES (378, '白居易', '草萤有耀终非火，荷露虽团岂是珠。', '放言五首·其一', '', '人生');
INSERT INTO `t_mingju` VALUES (379, '陆游', '上马击狂胡，下马草军书。', '观大散关图有感', '', '人生');
INSERT INTO `t_mingju` VALUES (380, '晏几道', '当时明月在，曾照彩云归。', '临江仙·梦后楼台高锁', '', '人生');
INSERT INTO `t_mingju` VALUES (381, '苏舜钦', '落日暴风雨，归路绕汀湾。', '水调歌头·潇洒太湖岸', '', '人生');
INSERT INTO `t_mingju` VALUES (382, '李颀', '年年战骨埋荒外，空见蒲桃入汉家。', '古从军行', '', '人生');
INSERT INTO `t_mingju` VALUES (383, '卢纶', '林暗草惊风，将军夜引弓。', '和张仆射塞下曲·其二', '', '人生');
INSERT INTO `t_mingju` VALUES (384, '司马迁', '不鸣则已，一鸣惊人。', '滑稽列传', '', '人生');
INSERT INTO `t_mingju` VALUES (385, '辛弃疾', '冉冉年华吾自老。水满汀洲，何处寻芳草。', '蝶恋花·月下醉书雨岩石浪', '', '人生');
INSERT INTO `t_mingju` VALUES (386, '李白', '夫天地者，万物之逆旅也；光阴者，百代之过客也。', '春夜宴桃李园序 / 春夜宴从弟桃花园序', '', '人生');
INSERT INTO `t_mingju` VALUES (387, '陶渊明', '历览千载书，时时见遗烈。', '癸卯岁十二月中作与从弟敬远', '', '人生');
INSERT INTO `t_mingju` VALUES (388, '王维', '世事浮云何足问，不如高卧且加餐。', '酌酒与裴迪', '', '人生');
INSERT INTO `t_mingju` VALUES (389, '岑参', '纷纷暮雪下辕门，风掣红旗冻不翻。', '白雪歌送武判官归京', '', '人生');
INSERT INTO `t_mingju` VALUES (390, '周敦颐', '予独爱莲之出淤泥而不染，濯清涟而不妖', '爱莲说', '', '人生');
INSERT INTO `t_mingju` VALUES (391, '韩愈', '清谈可以饱，梦想接无由。', '洞庭湖阻风赠张十一署·时自阳山徙掾江陵', '', '人生');
INSERT INTO `t_mingju` VALUES (392, '屈原', '凌余阵兮躐余行，左骖殪兮右刃伤。', '国殇', '', '人生');
INSERT INTO `t_mingju` VALUES (393, '李白', '桃李务青春，谁能贯白日。', '长歌行', '', '人生');
INSERT INTO `t_mingju` VALUES (394, '李甲', '忆得盈盈拾翠侣，共携赏、凤城寒食。', '帝台春·芳草碧色', '', '人生');
INSERT INTO `t_mingju` VALUES (395, '苏轼', '诗酒趁年华。', '望江南·超然台作', '', '人生');
INSERT INTO `t_mingju` VALUES (396, '欧阳修', '人生自是有情痴，此恨不关风与月。', '玉楼春·尊前拟把归期说', '', '人生');
INSERT INTO `t_mingju` VALUES (397, '陆游', '莫笑农家腊酒浑，丰年留客足鸡豚。', '游山西村', '', '人生');
INSERT INTO `t_mingju` VALUES (398, '吴文英', '去年折赠行人远，今年恨、依然纤手。', '花心动·柳', '', '人生');
INSERT INTO `t_mingju` VALUES (399, '朱敦儒', '北客翩然，壮心偏感，年华将暮。', '水龙吟·放船千里凌波去', '', '人生');
INSERT INTO `t_mingju` VALUES (400, '秦韬玉', '苦恨年年压金线，为他人作嫁衣裳。', '贫女', '', '人生');
INSERT INTO `t_mingju` VALUES (401, '屈原', '旌蔽日兮敌若云，矢交坠兮士争先。', '国殇', '', '人生');
INSERT INTO `t_mingju` VALUES (402, '刘禹锡', '莫道谗言如浪深，莫言迁客似沙沉。', '浪淘沙九首', '', '人生');
INSERT INTO `t_mingju` VALUES (403, '王国维', '不知何日始工愁。记取那回花下一低头。', '虞美人·弄梅骑竹嬉游日', '', '人生');
INSERT INTO `t_mingju` VALUES (404, '纳兰性德', '山一程，水一程，身向榆关那畔行，夜深千帐灯。', '长相思·山一程', '', '人生');
INSERT INTO `t_mingju` VALUES (405, '李白', '君不见，高堂明镜悲白发，朝如青丝暮成雪。', '将进酒', '', '人生');
INSERT INTO `t_mingju` VALUES (406, '刘禹锡', '绝景良时难再并，他年此日应惆怅。', '八月十五夜桃源玩月', '', '人生');
INSERT INTO `t_mingju` VALUES (407, '李白', '俯视洛阳川，茫茫走胡兵。', '古风·其十九', '', '人生');
INSERT INTO `t_mingju` VALUES (408, '佚名', '学而时习之，不亦说乎？', '论语十则', '', '人生');
INSERT INTO `t_mingju` VALUES (409, '杜甫', '何时诏此金钱会，暂醉佳人锦瑟旁。', '曲江对雨', '', '人生');
INSERT INTO `t_mingju` VALUES (410, '陆游', '遗民泪尽胡尘里，南望王师又一年。', '秋夜将晓出篱门迎凉有感', '', '人生');
INSERT INTO `t_mingju` VALUES (411, '虞集', '不须更上新亭望，大不如前洒泪时。', '挽文丞相', '', '人生');
INSERT INTO `t_mingju` VALUES (412, '朱熹', '人生如寄，何事辛苦怨斜晖。', '水调歌头·隐括杜牧之齐山诗', '', '人生');
INSERT INTO `t_mingju` VALUES (413, '唐寅', '我也不登天子船，我也不上长安眠。', '把酒对月歌', '', '人生');
INSERT INTO `t_mingju` VALUES (414, '陆游', '和戎诏下十五年，将军不战空临边。', '关山月', '', '人生');
INSERT INTO `t_mingju` VALUES (415, '白居易', '花非花，雾非雾。', '花非花', '', '人生');
INSERT INTO `t_mingju` VALUES (416, '王维', '迢递嵩高下，归来且闭关。', '归嵩山作', '', '人生');
INSERT INTO `t_mingju` VALUES (417, '李煜', '雍雍新雁咽寒声，愁恨年年长相似。', '谢新恩·冉冉秋光留不住', '', '人生');
INSERT INTO `t_mingju` VALUES (418, '李纲', '谁念迁客归来，老大伤名节。', '六么令·次韵和贺方回金陵怀古鄱阳席上作', '', '人生');
INSERT INTO `t_mingju` VALUES (419, '杜牧', '繁华事散逐香尘，流水无情草自春。', '金谷园', '', '人生');
INSERT INTO `t_mingju` VALUES (420, '佚名', '惠子曰：子非鱼，安知鱼之乐？', '庄子与惠子游于濠梁', '', '人生');
INSERT INTO `t_mingju` VALUES (421, '屈原', '鸟飞反故乡兮，狐死必首丘。', '九章', '', '人生');
INSERT INTO `t_mingju` VALUES (422, '晏殊', '一向年光有限身，等闲离别易销魂，酒筵歌席莫辞频。', '浣溪沙·一向年光有限身', '', '人生');
INSERT INTO `t_mingju` VALUES (423, '诸葛亮', '非学无以广才，非志无以成学。', '诫子书', '', '人生');
INSERT INTO `t_mingju` VALUES (424, '吴潜', '世事悠悠浑未了，年光冉冉今如许。', '满江红·送李御带珙', '', '人生');
INSERT INTO `t_mingju` VALUES (425, '苏轼', '诗酒趁年华。', '望江南·超然台作', '', '人生');
INSERT INTO `t_mingju` VALUES (426, '王勃', '穷且益坚，不坠青云之志。', '滕王阁序', '', '人生');
INSERT INTO `t_mingju` VALUES (427, '温庭筠', '红烛背，绣帘垂，梦长君不知。', '更漏子·柳丝长', '', '人生');
INSERT INTO `t_mingju` VALUES (428, '李白', '行路难！行路难！多歧路，今安在？', '行路难三首', '', '人生');
INSERT INTO `t_mingju` VALUES (429, '刘过', '欲买桂花同载酒，终不似，少年游。', '唐多令·芦叶满汀洲', '', '人生');
INSERT INTO `t_mingju` VALUES (430, '杜牧', '江东子弟多才俊，卷土重来未可知。', '题乌江亭', '', '人生');
INSERT INTO `t_mingju` VALUES (431, '李斯', '河海不择细流，故能就其深；', '谏逐客书', '', '人生');
INSERT INTO `t_mingju` VALUES (432, '晏几道', '长恨去年今夜雨，洒离亭。', '愁倚阑令·花阴月', '', '人生');
INSERT INTO `t_mingju` VALUES (433, '刘禹锡', '怀旧空吟闻笛赋，到乡翻似烂柯人。', '酬乐天扬州初逢席上见赠', '', '人生');
INSERT INTO `t_mingju` VALUES (434, '晏几道', '年年陌上生秋草，日日楼中到夕阳。', '鹧鸪天·醉拍春衫惜旧香', '', '人生');
INSERT INTO `t_mingju` VALUES (435, '苏舜钦', '壮年何事憔悴，华发改朱颜。', '水调歌头·沧浪亭', '', '人生');
INSERT INTO `t_mingju` VALUES (436, '纳兰性德', '年华共，混同江水，流去几时回。', '满庭芳·堠雪翻鸦', '', '人生');
INSERT INTO `t_mingju` VALUES (437, '陶渊明', '及时当勉励，岁月不待人。', '杂诗·人生无根蒂', '', '人生');
INSERT INTO `t_mingju` VALUES (438, '佚名', '人生天地间，忽如远行客。', '青青陵上柏', '', '人生');
INSERT INTO `t_mingju` VALUES (439, '曹松', '传闻一战百神愁，两岸强兵过未休。', '己亥岁二首·僖宗广明元年', '', '人生');
INSERT INTO `t_mingju` VALUES (440, '袁去华', '纵收香藏镜，他年重到，人面桃花在否。', '瑞鹤仙·郊原初过雨', '', '人生');
INSERT INTO `t_mingju` VALUES (441, '辛弃疾', '落日塞尘起，胡骑猎清秋。', '水调歌头·舟次扬州和人韵', '', '人生');
INSERT INTO `t_mingju` VALUES (442, '陆游', '壮岁从戎，曾是气吞残虏。', '谢池春·壮岁从戎', '', '人生');
INSERT INTO `t_mingju` VALUES (443, '吴潜', '岁月无多人易老，乾坤虽大愁难著。', '满江红·豫章滕王阁', '', '人生');
INSERT INTO `t_mingju` VALUES (444, '陈亮', '昔叹当年无李牧，今知江左有夷吾。', '送文子转漕江东二首', '', '人生');
INSERT INTO `t_mingju` VALUES (445, '薛道衡', '前年过代北，今岁往辽西。', '昔昔盐', '', '人生');
INSERT INTO `t_mingju` VALUES (446, '周紫芝', '记得武陵相见日，六年往事堪惊。', '临江仙·送光州曾使君', '', '人生');
INSERT INTO `t_mingju` VALUES (447, '陆游', '文章本天成，妙手偶得之。', '文章', '', '人生');
INSERT INTO `t_mingju` VALUES (448, '沈佺期', '九月寒砧催木叶，十年征戍忆辽阳。', '古意呈补阙乔知之 / 古意 / 独不见', '', '人生');
INSERT INTO `t_mingju` VALUES (449, '陶渊明', '死去何所道，托体同山阿。', '拟挽歌辞三首', '', '人生');
INSERT INTO `t_mingju` VALUES (450, '杜甫', '丹青不知老将至，富贵于我如浮云。', '丹青引赠曹将军霸', '', '人生');
INSERT INTO `t_mingju` VALUES (451, '陶渊明', '人生无根蒂，飘如陌上尘。', '杂诗', '', '人生');
INSERT INTO `t_mingju` VALUES (452, '朱敦儒', '世事短如春梦，人情薄似秋云。', '西江月·世事短如春梦', '', '人生');
INSERT INTO `t_mingju` VALUES (453, '刘禹锡', '千淘万漉虽辛苦，吹尽狂沙始到金。', '浪淘沙九首', '', '人生');
INSERT INTO `t_mingju` VALUES (454, '陆游', '此身合是诗人未？细雨骑驴入剑门。', '剑门道中遇微雨', '', '人生');
INSERT INTO `t_mingju` VALUES (455, '龚自珍', '一箫一剑平生意，负尽狂名十五年。', '漫感', '', '人生');
INSERT INTO `t_mingju` VALUES (456, '韦庄', '遇酒且呵呵，人生能几何！', '菩萨蛮·劝君今夜须沈醉', '', '人生');
INSERT INTO `t_mingju` VALUES (457, '崔允', '慷慨十年长剑在，登楼一笑暮山横。', '花马池咏', '', '人生');
INSERT INTO `t_mingju` VALUES (458, '戴叔伦', '愁颜与衰鬓，明日又逢春。', '除夜宿石头驿', '', '人生');
INSERT INTO `t_mingju` VALUES (459, '陈洵', '谁分去来乡国事，凄然，曾是承平两少年。', '南乡子·己巳三月自郡城归乡过区菶吾西园话旧', '', '人生');
INSERT INTO `t_mingju` VALUES (460, '柳永', '想当年、空运筹决战，图王取霸无休。', '双声子·晚天萧索', '', '人生');
INSERT INTO `t_mingju` VALUES (461, '荀子', '冰，水为之，而寒于水。', '劝学', '', '人生');
INSERT INTO `t_mingju` VALUES (462, '张可久', '九日明朝酒香，一年好景橙黄。', '满庭芳·客中九日', '', '人生');
INSERT INTO `t_mingju` VALUES (463, '李白', '登鸾车，侍轩辕，遨游青天中，其乐不可言。', '飞龙引二首·其一', '', '人生');
INSERT INTO `t_mingju` VALUES (464, '李白', '风引龙虎旗，歌钟昔追攀。', '登邯郸洪波台置酒观发兵', '', '人生');
INSERT INTO `t_mingju` VALUES (465, '李煜', '自是人生长恨水长东。', '相见欢·林花谢了春红', '', '人生');
INSERT INTO `t_mingju` VALUES (466, '李清照', '物是人非事事休，欲语泪先流。', '武陵春·春晚', '', '人生');
INSERT INTO `t_mingju` VALUES (467, '文征明', '记得去年今夕，酾酒溪亭，淡月云来去。', '念奴娇·中秋对月', '', '人生');
INSERT INTO `t_mingju` VALUES (468, '张先', '惜恐镜中春。不如花草新。', '菩萨蛮·忆郎还上层楼曲', '', '人生');
INSERT INTO `t_mingju` VALUES (469, '高观国', '屈指数春来，弹指惊春去。', '卜算子·泛西湖坐间寅斋同赋', '', '人生');
INSERT INTO `t_mingju` VALUES (470, '刘因', '东风吹落战尘沙，梦想西湖处士家。', '观梅有感', '', '人生');
INSERT INTO `t_mingju` VALUES (471, '孟浩然', '黄金燃桂尽，壮志逐年衰。', '秦中感秋寄远上人 / 秦中寄远上人', '', '人生');
INSERT INTO `t_mingju` VALUES (472, '李白', '悲吟雨雪动林木，放书辍剑思高堂。', '留别于十一兄逖裴十三游塞垣', '', '人生');
INSERT INTO `t_mingju` VALUES (473, '陆机', '笼天地于形内，挫万物于笔端。', '文赋', '', '人生');
INSERT INTO `t_mingju` VALUES (474, '晏殊', '数年来往咸京道，残杯冷炙谩消魂。', '山亭柳·赠歌者', '', '人生');
INSERT INTO `t_mingju` VALUES (475, '晏殊', '长于春梦几多时，散似秋云无觅处。', '木兰花·燕鸿过后莺归去', '', '人生');
INSERT INTO `t_mingju` VALUES (476, '文天祥', '命随年欲尽，身与世俱忘；', '除夜', '', '人生');
INSERT INTO `t_mingju` VALUES (477, '徐锡麟', '军歌应唱大刀环，誓灭胡奴出玉关。', '出塞', '', '人生');
INSERT INTO `t_mingju` VALUES (478, '纳兰性德', '山一程，水一程，身向榆关那畔行，夜深千帐灯。', '长相思·山一程', '', '人生');
INSERT INTO `t_mingju` VALUES (479, '钱起', '献赋十年犹未遇，羞将白发对华簪。', '赠阙下裴舍人', '', '人生');
INSERT INTO `t_mingju` VALUES (480, '崔与之', '万里云间戍，立马剑门关。', '水调歌头·题剑阁', '', '人生');
INSERT INTO `t_mingju` VALUES (481, '张炎', '当年燕子知何处，但苔深韦曲，草暗斜川。', '高阳台·西湖春感', '', '人生');
INSERT INTO `t_mingju` VALUES (482, '王安石', '四百年来成一梦，堪愁。', '南乡子·自古帝王州', '', '人生');
INSERT INTO `t_mingju` VALUES (483, '杜甫', '射人先射马，擒贼先擒王。', '前出塞九首·其六', '', '人生');
INSERT INTO `t_mingju` VALUES (484, '陆游', '早岁那知世事艰，中原北望气如山。', '书愤五首·其一', '', '人生');
INSERT INTO `t_mingju` VALUES (485, '李纲', '谁念迁客归来，老大伤名节。', '六么令·次韵和贺方回金陵怀古鄱阳席上作', '', '人生');
INSERT INTO `t_mingju` VALUES (486, '蒋捷', '流光容易把人抛，红了樱桃，绿了芭蕉。', '一剪梅·舟过吴江', '', '人生');
INSERT INTO `t_mingju` VALUES (487, '赵佶', '愿月常圆，休要暂时缺。', '醉落魄·预赏景龙门追悼明节皇后', '', '人生');
INSERT INTO `t_mingju` VALUES (488, '宇文虚中', '满腹诗书漫古今，频年流落易伤心。', '在金日作·选二', '', '人生');
INSERT INTO `t_mingju` VALUES (489, '刘禹锡', '不知何日东瀛变，此地还成要路津。', '汉寿城春望', '', '人生');
INSERT INTO `t_mingju` VALUES (490, '刘过', '欲买桂花同载酒，终不似，少年游。', '唐多令·芦叶满汀洲', '', '人生');
INSERT INTO `t_mingju` VALUES (491, '宋江', '头上尽教添白发，鬓边不可无黄菊。', '满江红·喜遇重阳', '', '人生');
INSERT INTO `t_mingju` VALUES (492, '李白', '人生在世不称意，明朝散发弄扁舟。', '宣州谢脁楼饯别校书叔云', '', '人生');
INSERT INTO `t_mingju` VALUES (493, '杜甫', '酒债寻常行处有，人生七十古来稀。', '曲江二首', '', '人生');
INSERT INTO `t_mingju` VALUES (494, '陈亮', '昔叹当年无李牧，今知江左有夷吾。', '送文子转漕江东二首', '', '人生');
INSERT INTO `t_mingju` VALUES (495, '纳兰性德', '年华共，混同江水，流去几时回。', '满庭芳·堠雪翻鸦', '', '人生');
INSERT INTO `t_mingju` VALUES (496, '李白', '今人不见古时月，今月曾经照古人。', '把酒问月·故人贾淳令予问之', '', '人生');
INSERT INTO `t_mingju` VALUES (497, '杜甫', '杀人亦有限，列国自有疆。', '前出塞九首·其六', '', '人生');
INSERT INTO `t_mingju` VALUES (498, '杜甫', '文章千古事，得失寸心知。', '偶题', '', '人生');
INSERT INTO `t_mingju` VALUES (499, '辛弃疾', '举头西北浮云，倚天万里须长剑。', '水龙吟·过南剑双溪楼', '', '人生');
INSERT INTO `t_mingju` VALUES (500, '吴文英', '看雪飞、苹底芦梢，未如鬓白。', '瑞鹤仙·秋感', '', '人生');
INSERT INTO `t_mingju` VALUES (501, '佚名', '山有木兮木有枝，心悦君兮君不知。', '越人歌', '', '抒情');
INSERT INTO `t_mingju` VALUES (502, '纳兰性德', '人生若只如初见，何事秋风悲画扇。', '木兰词·拟古决绝词柬友', '', '抒情');
INSERT INTO `t_mingju` VALUES (503, '元稹', '曾经沧海难为水，除却巫山不是云。', '离思五首·其四', '', '抒情');
INSERT INTO `t_mingju` VALUES (504, '苏轼', '十年生死两茫茫，不思量，自难忘。', '江城子·乙卯正月二十日夜记梦', '', '抒情');
INSERT INTO `t_mingju` VALUES (505, '温庭筠', '玲珑骰子安红豆，入骨相思知不知。', '南歌子词二首 / 新添声杨柳枝词', '', '抒情');
INSERT INTO `t_mingju` VALUES (506, '李白', '入我相思门，知我相思苦，', '三五七言 / 秋风词', '', '抒情');
INSERT INTO `t_mingju` VALUES (507, '李之仪', '只愿君心似我心，定不负相思意。', '卜算子·我住长江头', '', '抒情');
INSERT INTO `t_mingju` VALUES (508, '佚名', '山无陵，江水为竭，冬雷震震，夏雨雪。天地合，乃敢与君绝。', '上邪', '', '抒情');
INSERT INTO `t_mingju` VALUES (509, '秦观', '两情若是久长时，又岂在朝朝暮暮。', '鹊桥仙·纤云弄巧', '', '抒情');
INSERT INTO `t_mingju` VALUES (510, '徐再思', '平生不会相思，才会相思，便害相思。', '折桂令·春情', '', '抒情');
INSERT INTO `t_mingju` VALUES (511, '唐温如', '醉后不知天在水，满船清梦压星河。', '题龙阳县青草湖', '', '抒情');
INSERT INTO `t_mingju` VALUES (512, '卓文君', '愿得一心人，白头不相离。', '白头吟', '', '抒情');
INSERT INTO `t_mingju` VALUES (513, '欧阳修', '人生自是有情痴，此恨不关风与月。', '玉楼春·尊前拟把归期说', '', '抒情');
INSERT INTO `t_mingju` VALUES (514, '辛弃疾', '少年不识愁滋味，爱上层楼。爱上层楼，为赋新词强说愁。', '丑奴儿·书博山道中壁', '', '抒情');
INSERT INTO `t_mingju` VALUES (515, '李商隐', '身无彩凤双飞翼，心有灵犀一点通。', '无题·昨夜星辰昨夜风', '', '抒情');
INSERT INTO `t_mingju` VALUES (516, '李清照', '花自飘零水自流。一种相思，两处闲愁。', '一剪梅·红藕香残玉簟秋', '', '抒情');
INSERT INTO `t_mingju` VALUES (517, '司马相如', '一日不见兮，思之如狂。', '凤求凰 / 琴歌', '', '抒情');
INSERT INTO `t_mingju` VALUES (518, '高蟾', '世间无限丹青手，一片伤心画不成。', '金陵晚望', '', '抒情');
INSERT INTO `t_mingju` VALUES (519, '孟郊', '春风得意马蹄疾，一日看尽长安花。', '登科后', '', '抒情');
INSERT INTO `t_mingju` VALUES (520, '徐再思', '一声梧叶一声秋，一点芭蕉一点愁，三更归梦三更后。', '水仙子·夜雨', '', '抒情');
INSERT INTO `t_mingju` VALUES (521, '元好问', '问世间，情为何物，直教生死相许？', '摸鱼儿·雁丘词 / 迈陂塘', '', '抒情');
INSERT INTO `t_mingju` VALUES (522, '白居易', '君埋泉下泥销骨，我寄人间雪满头。', '梦微之', '', '抒情');
INSERT INTO `t_mingju` VALUES (523, '苏轼', '休对故人思故国，且将新火试新茶。诗酒趁年华。', '望江南·超然台作', '', '抒情');
INSERT INTO `t_mingju` VALUES (524, '纳兰性德', '一往情深深几许？深山夕照深秋雨。', '蝶恋花·出塞', '', '抒情');
INSERT INTO `t_mingju` VALUES (525, '佚名', '执子之手，与子偕老。', '击鼓', '', '抒情');
INSERT INTO `t_mingju` VALUES (526, '李白', '抽刀断水水更流，举杯消愁愁更愁。', '宣州谢脁楼饯别校书叔云 / 陪侍御叔华登楼歌', '', '抒情');
INSERT INTO `t_mingju` VALUES (527, '崔护', '人面不知何处去，桃花依旧笑春风。', '题都城南庄', '', '抒情');
INSERT INTO `t_mingju` VALUES (528, '岑参', '一生大笑能几回，斗酒相逢须醉倒。', '凉州馆中与诸判官夜集', '', '抒情');
INSERT INTO `t_mingju` VALUES (529, '秦观', '自在飞花轻似梦，无边丝雨细如愁。', '浣溪沙·漠漠轻寒上小楼', '', '抒情');
INSERT INTO `t_mingju` VALUES (530, '晏殊', '昨夜西风凋碧树，独上高楼，望尽天涯路。', '蝶恋花·槛菊愁烟兰泣露', '', '抒情');
INSERT INTO `t_mingju` VALUES (531, '李商隐', '此情可待成追忆，只是当时已惘然。', '锦瑟', '', '抒情');
INSERT INTO `t_mingju` VALUES (532, '唐寅', '晓看天色暮看云，行也思君，坐也思君。', '一剪梅·雨打梨花深闭门', '', '抒情');
INSERT INTO `t_mingju` VALUES (533, '黄景仁', '似此星辰非昨夜，为谁风露立中宵。', '绮怀', '', '抒情');
INSERT INTO `t_mingju` VALUES (534, '李白', '仰天大笑出门去，我辈岂是蓬蒿人。', '南陵别儿童入京', '', '抒情');
INSERT INTO `t_mingju` VALUES (535, '黄庭坚', '桃李春风一杯酒，江湖夜雨十年灯。', '寄黄几复', '', '抒情');
INSERT INTO `t_mingju` VALUES (536, '林逋', '疏影横斜水清浅，暗香浮动月黄昏。', '山园小梅·其一', '', '抒情');
INSERT INTO `t_mingju` VALUES (537, '晏殊', '时光只解催人老，不信多情，长恨离亭，泪滴春衫酒易醒。', '采桑子·时光只解催人老', '', '抒情');
INSERT INTO `t_mingju` VALUES (538, '乐婉', '若是前生未有缘，待重结、来生愿。', '卜算子·答施', '', '抒情');
INSERT INTO `t_mingju` VALUES (539, '元稹', '取次花丛懒回顾，半缘修道半缘君。', '离思五首·其四', '', '抒情');
INSERT INTO `t_mingju` VALUES (540, '白居易', '思悠悠，恨悠悠，恨到归时方始休。', '长相思·汴水流', '', '抒情');
INSERT INTO `t_mingju` VALUES (541, '韦应物', '浮云一别后，流水十年间。', '淮上喜会梁川故人 / 淮上喜会梁州故人', '', '抒情');
INSERT INTO `t_mingju` VALUES (542, '秦观', '夜月一帘幽梦，春风十里柔情。', '八六子·倚危亭', '', '抒情');
INSERT INTO `t_mingju` VALUES (543, '晏几道', '落花人独立，微雨燕双飞。', '临江仙·梦后楼台高锁', '', '抒情');
INSERT INTO `t_mingju` VALUES (544, '王昌龄', '黄沙百战穿金甲，不破楼兰终不还。', '从军行七首·其四', '', '抒情');
INSERT INTO `t_mingju` VALUES (545, '李煜', '问君能有几多愁？恰似一江春水向东流。', '虞美人·春花秋月何时了', '', '抒情');
INSERT INTO `t_mingju` VALUES (546, '李白', '凤凰台上凤凰游，凤去台空江自流。', '登金陵凤凰台', '', '抒情');
INSERT INTO `t_mingju` VALUES (547, '张籍', '还君明珠双泪垂，恨不相逢未嫁时。', '节妇吟·寄东平李司空师道', '', '抒情');
INSERT INTO `t_mingju` VALUES (548, '俞彦', '怕相思，已相思，轮到相思没处辞，眉间露一丝。', '长相思·折花枝', '', '抒情');
INSERT INTO `t_mingju` VALUES (549, '李商隐', '直道相思了无益，未妨惆怅是清狂。', '无题·重帏深下莫愁堂', '', '抒情');
INSERT INTO `t_mingju` VALUES (550, '李贺', '男儿何不带吴钩，收取关山五十州。', '南园十三首·其五', '', '抒情');
INSERT INTO `t_mingju` VALUES (551, '杜牧', '一骑红尘妃子笑，无人知是荔枝来。', '过华清宫绝句三首', '', '抒情');
INSERT INTO `t_mingju` VALUES (552, '晏殊', '天涯地角有穷时，只有相思无尽处。', '玉楼春·春恨', '', '抒情');
INSERT INTO `t_mingju` VALUES (553, '李觏', '人言落日是天涯，望极天涯不见家。', '乡思', '', '抒情');
INSERT INTO `t_mingju` VALUES (554, '王国维', '最是人间留不住，朱颜辞镜花辞树。', '蝶恋花·阅尽天涯离别苦', '', '抒情');
INSERT INTO `t_mingju` VALUES (555, '刘方平', '寂寞空庭春欲晚，梨花满地不开门。', '春怨', '', '抒情');
INSERT INTO `t_mingju` VALUES (556, '纳兰性德', '被酒莫惊春睡重，赌书消得泼茶香，当时只道是寻常。', '浣溪沙·谁念西风独自凉', '', '抒情');
INSERT INTO `t_mingju` VALUES (557, '苏轼', '试问岭南应不好，却道：此心安处是吾乡。', '少年游·南海归赠王定国侍人寓娘', '', '抒情');
INSERT INTO `t_mingju` VALUES (558, '张九龄', '海上生明月，天涯共此时。', '望月怀远', '', '抒情');
INSERT INTO `t_mingju` VALUES (559, '欧阳修', '泪眼问花花不语，乱红飞过秋千去。', '蝶恋花·庭院深深深几许', '', '抒情');
INSERT INTO `t_mingju` VALUES (560, '林则徐', '苟利国家生死以，岂因祸福避趋之。', '赴戍登程口占示家人·其二', '', '抒情');
INSERT INTO `t_mingju` VALUES (561, '王翰', '醉卧沙场君莫笑，古来征战几人回？', '凉州词二首·其一', '', '抒情');
INSERT INTO `t_mingju` VALUES (562, '顾夐', '换我心，为你心，始知相忆深。', '诉衷情·永夜抛人何处去', '', '抒情');
INSERT INTO `t_mingju` VALUES (563, '白居易', '同是天涯沦落人，相逢何必曾相识！', '琵琶行 / 琵琶引', '', '抒情');
INSERT INTO `t_mingju` VALUES (564, '高适', '莫愁前路无知己，天下谁人不识君。', '别董大二首', '', '抒情');
INSERT INTO `t_mingju` VALUES (565, '李之仪', '日日思君不见君，共饮长江水。', '卜算子·我住长江头', '', '抒情');
INSERT INTO `t_mingju` VALUES (566, '李煜', '独自莫凭栏，无限江山，别时容易见时难。', '浪淘沙令·帘外雨潺潺', '', '抒情');
INSERT INTO `t_mingju` VALUES (567, '佚名', '生当复来归，死当长相思。', '留别妻', '', '抒情');
INSERT INTO `t_mingju` VALUES (568, '柳永', '衣带渐宽终不悔，为伊消得人憔悴。', '蝶恋花·伫倚危楼风细细', '', '抒情');
INSERT INTO `t_mingju` VALUES (569, '卓文君', '闻君有两意，故来相决绝。', '白头吟', '', '抒情');
INSERT INTO `t_mingju` VALUES (570, '佚名', '风萧萧兮易水寒，壮士一去兮不复还。', '荆轲歌 / 渡易水歌', '', '抒情');
INSERT INTO `t_mingju` VALUES (571, '晏殊', '无可奈何花落去，似曾相识燕归来。', '浣溪沙·一曲新词酒一杯', '', '抒情');
INSERT INTO `t_mingju` VALUES (572, '李白', '相思相见知何日？此时此夜难为情！', '三五七言 / 秋风词', '', '抒情');
INSERT INTO `t_mingju` VALUES (573, '柳永', '多情自古伤离别，更那堪冷落清秋节！', '雨霖铃·寒蝉凄切', '', '抒情');
INSERT INTO `t_mingju` VALUES (574, '李清照', '物是人非事事休，欲语泪先流。', '武陵春·春晚', '', '抒情');
INSERT INTO `t_mingju` VALUES (575, '张可久', '美人自刎乌江岸，战火曾烧赤壁山，将军空老玉门关。', '卖花声·怀古', '', '抒情');
INSERT INTO `t_mingju` VALUES (576, '杜甫', '露从今夜白，月是故乡明。', '月夜忆舍弟', '', '抒情');
INSERT INTO `t_mingju` VALUES (577, '张先', '心似双丝网，中有千千结。', '千秋岁·数声鶗鴂', '', '抒情');
INSERT INTO `t_mingju` VALUES (578, '陆游', '伤心桥下春波绿，曾是惊鸿照影来。', '沈园二首', '', '抒情');
INSERT INTO `t_mingju` VALUES (579, '李商隐', '春蚕到死丝方尽，蜡炬成灰泪始干。', '无题·相见时难别亦难', '', '抒情');
INSERT INTO `t_mingju` VALUES (580, '苏轼', '夜来幽梦忽还乡，小轩窗，正梳妆。相顾无言，惟有泪千行。', '江城子·乙卯正月二十日夜记梦', '', '抒情');
INSERT INTO `t_mingju` VALUES (581, '张鸣善', '月有盈亏花有开谢，想人生最苦离别。', '普天乐·咏世', '', '抒情');
INSERT INTO `t_mingju` VALUES (582, '佚名', '盈盈一水间，脉脉不得语。', '迢迢牵牛星', '', '抒情');
INSERT INTO `t_mingju` VALUES (583, '苏轼', '大江东去，浪淘尽，千古风流人物。', '念奴娇·赤壁怀古', '', '抒情');
INSERT INTO `t_mingju` VALUES (584, '范仲淹', '酒入愁肠，化作相思泪。', '苏幕遮·怀旧', '', '抒情');
INSERT INTO `t_mingju` VALUES (585, '张谓', '世人结交须黄金，黄金不多交不深。', '题长安壁主人', '', '抒情');
INSERT INTO `t_mingju` VALUES (586, '李商隐', '夕阳无限好，只是近黄昏。', '乐游原 / 登乐游原', '', '抒情');
INSERT INTO `t_mingju` VALUES (587, '欧阳修', '渐行渐远渐无书，水阔鱼沉何处问。', '玉楼春·别后不知君远近', '', '抒情');
INSERT INTO `t_mingju` VALUES (588, '龚自珍', '落红不是无情物，化作春泥更护花。', '己亥杂诗·其五', '', '抒情');
INSERT INTO `t_mingju` VALUES (589, '陆凯', '江南无所有，聊赠一枝春。', '赠范晔诗', '', '抒情');
INSERT INTO `t_mingju` VALUES (590, '柳永', '系我一生心，负你千行泪。', '忆帝京·薄衾小枕凉天气', '', '抒情');
INSERT INTO `t_mingju` VALUES (591, '陆游', '呜呼！楚虽三户能亡秦，岂有堂堂中国空无人！', '金错刀行', '', '抒情');
INSERT INTO `t_mingju` VALUES (592, '李白', '花间一壶酒，独酌无相亲。', '月下独酌四首·其一', '', '抒情');
INSERT INTO `t_mingju` VALUES (593, '辛弃疾', '若教眼底无离恨，不信人间有白头。', '鹧鸪天·晚日寒鸦一片愁', '', '抒情');
INSERT INTO `t_mingju` VALUES (594, '白居易', '天长地久有时尽，此恨绵绵无绝期。', '长恨歌', '', '抒情');
INSERT INTO `t_mingju` VALUES (595, '杜甫', '白日放歌须纵酒，青春作伴好还乡。', '闻官军收河南河北', '', '抒情');
INSERT INTO `t_mingju` VALUES (596, '元好问', '渺万里层云，千山暮雪，只影向谁去？', '摸鱼儿·雁丘词 / 迈陂塘', '', '抒情');
INSERT INTO `t_mingju` VALUES (597, '刘彻', '兰有秀兮菊有芳，怀佳人兮不能忘。', '秋风辞', '', '抒情');
INSERT INTO `t_mingju` VALUES (598, '黄公绍', '花无人戴，酒无人劝，醉也无人管。', '青玉案·年年社日停针线', '', '抒情');
INSERT INTO `t_mingju` VALUES (599, '陆游', '夜阑卧听风吹雨，铁马冰河入梦来。', '十一月四日风雨大作', '', '抒情');
INSERT INTO `t_mingju` VALUES (600, '佚名', '海水梦悠悠，君愁我亦愁。', '西洲曲', '', '抒情');
INSERT INTO `t_mingju` VALUES (601, '王雱', '相思只在，丁香枝上，豆蔻梢头。', '眼儿媚·杨柳丝丝弄轻柔', '', '抒情');
INSERT INTO `t_mingju` VALUES (602, '李商隐', '相见时难别亦难，东风无力百花残。', '无题·相见时难别亦难', '', '抒情');
INSERT INTO `t_mingju` VALUES (603, '张九龄', '思君如满月，夜夜减清辉。', '赋得自君之出矣', '', '抒情');
INSERT INTO `t_mingju` VALUES (604, '王昌龄', '秦时明月汉时关，万里长征人未还。', '出塞二首·其一', '', '抒情');
INSERT INTO `t_mingju` VALUES (605, '项羽', '力拔山兮气盖世。时不利兮骓不逝。', '垓下歌', '', '抒情');
INSERT INTO `t_mingju` VALUES (606, '袁枚', '莫唱当年长恨歌，人间亦自有银河。', '马嵬', '', '抒情');
INSERT INTO `t_mingju` VALUES (607, '李白', '美人卷珠帘，深坐颦蛾眉。', '怨情', '', '抒情');
INSERT INTO `t_mingju` VALUES (608, '刘禹锡', '旧时王谢堂前燕，飞入寻常百姓家。', '乌衣巷', '', '抒情');
INSERT INTO `t_mingju` VALUES (609, '陆游', '位卑未敢忘忧国，事定犹须待阖棺。', '病起书怀', '', '抒情');
INSERT INTO `t_mingju` VALUES (610, '张继', '月落乌啼霜满天，江枫渔火对愁眠。', '枫桥夜泊 / 夜泊枫江', '', '抒情');
INSERT INTO `t_mingju` VALUES (611, '贺铸', '衰兰送客咸阳道，天若有情天亦老。', '行路难·缚虎手', '', '抒情');
INSERT INTO `t_mingju` VALUES (612, '佚名', '青青子衿，悠悠我心。', '子衿', '', '抒情');
INSERT INTO `t_mingju` VALUES (613, '岳飞', '三十功名尘与土，八千里路云和月。', '满江红·写怀', '', '抒情');
INSERT INTO `t_mingju` VALUES (614, '汤恢', '羡青山有思，白鹤忘机。', '八声甘州·摘青梅荐酒', '', '抒情');
INSERT INTO `t_mingju` VALUES (615, '晏几道', '欲把相思说似谁，浅情人不知。', '长相思·长相思', '', '抒情');
INSERT INTO `t_mingju` VALUES (616, '曹植', '愿为西南风，长逝入君怀。', '明月上高楼', '', '抒情');
INSERT INTO `t_mingju` VALUES (617, '戴叔伦', '愿得此身长报国，何须生入玉门关。', '塞上曲二首·其二', '', '抒情');
INSERT INTO `t_mingju` VALUES (618, '唐婉', '世情薄，人情恶，雨送黄昏花易落。', '钗头凤·世情薄', '', '抒情');
INSERT INTO `t_mingju` VALUES (619, '李清照', '云中谁寄锦书来，雁字回时，月满西楼。', '一剪梅·红藕香残玉簟秋', '', '抒情');
INSERT INTO `t_mingju` VALUES (620, '佚名', '结发为夫妻，恩爱两不疑。', '留别妻', '', '抒情');
INSERT INTO `t_mingju` VALUES (621, '李清照', '寻寻觅觅，冷冷清清，凄凄惨惨戚戚。', '声声慢·寻寻觅觅', '', '抒情');
INSERT INTO `t_mingju` VALUES (622, '佚名', '关关雎鸠，在河之洲。窈窕淑女，君子好逑。', '关雎', '', '抒情');
INSERT INTO `t_mingju` VALUES (623, '纳兰性德', '谁念西风独自凉，萧萧黄叶闭疏窗，沉思往事立残阳。', '浣溪沙·谁念西风独自凉', '', '抒情');
INSERT INTO `t_mingju` VALUES (624, '王安石', '春风又绿江南岸，明月何时照我还？', '泊船瓜洲', '', '抒情');
INSERT INTO `t_mingju` VALUES (625, '张泌', '多情只有春庭月，犹为离人照落花。', '寄人', '', '抒情');
INSERT INTO `t_mingju` VALUES (626, '范云', '昔去雪如花，今来花似雪。', '别诗', '', '抒情');
INSERT INTO `t_mingju` VALUES (627, '王昌龄', '洛阳亲友如相问，一片冰心在玉壶。', '芙蓉楼送辛渐', '', '抒情');
INSERT INTO `t_mingju` VALUES (628, '纳兰性德', '人到情多情转薄，而今真个不多情。', '山花子·风絮飘残已化萍', '', '抒情');
INSERT INTO `t_mingju` VALUES (629, '杜牧', '南朝四百八十寺，多少楼台烟雨中。', '江南春', '', '抒情');
INSERT INTO `t_mingju` VALUES (630, '李商隐', '嫦娥应悔偷灵药，碧海青天夜夜心。', '嫦娥', '', '抒情');
INSERT INTO `t_mingju` VALUES (631, '马戴', '落叶他乡树，寒灯独夜人。', '灞上秋居', '', '抒情');
INSERT INTO `t_mingju` VALUES (632, '李清照', '知否，知否？应是绿肥红瘦。', '如梦令·昨夜雨疏风骤', '', '抒情');
INSERT INTO `t_mingju` VALUES (633, '刘禹锡', '曾与美人桥上别，恨无消息到今朝。', '杨柳枝 / 柳枝词', '', '抒情');
INSERT INTO `t_mingju` VALUES (634, '辛弃疾', '肠已断，泪难收。相思重上小红楼。', '鹧鸪天·晚日寒鸦一片愁', '', '抒情');
INSERT INTO `t_mingju` VALUES (635, '李商隐', '春心莫共花争发，一寸相思一寸灰！', '无题·飒飒东风细雨来', '', '抒情');
INSERT INTO `t_mingju` VALUES (636, '王维', '劝君更尽一杯酒，西出阳关无故人。', '渭城曲 / 送元二使安西', '', '抒情');
INSERT INTO `t_mingju` VALUES (637, '杜甫', '出师未捷身先死，长使英雄泪满襟。', '蜀相', '', '抒情');
INSERT INTO `t_mingju` VALUES (638, '宋之问', '近乡情更怯，不敢问来人。', '渡汉江', '', '抒情');
INSERT INTO `t_mingju` VALUES (639, '李商隐', '沧海月明珠有泪，蓝田日暖玉生烟。', '锦瑟', '', '抒情');
INSERT INTO `t_mingju` VALUES (640, '晏殊', '无情不似多情苦。一寸还成千万缕。', '玉楼春·春恨', '', '抒情');
INSERT INTO `t_mingju` VALUES (641, '李清照', '此情无计可消除，才下眉头，却上心头。', '一剪梅·红藕香残玉簟秋', '', '抒情');
INSERT INTO `t_mingju` VALUES (642, '晏殊', '欲寄彩笺兼尺素，山长水阔知何处。', '蝶恋花·槛菊愁烟兰泣露', '', '抒情');
INSERT INTO `t_mingju` VALUES (643, '李商隐', '君问归期未有期，巴山夜雨涨秋池。', '夜雨寄北', '', '抒情');
INSERT INTO `t_mingju` VALUES (644, '苏轼', '小舟从此逝，江海寄余生。', '临江仙·夜饮东坡醒复醉', '', '抒情');
INSERT INTO `t_mingju` VALUES (645, '王勃', '海内存知己，天涯若比邻。', '送杜少府之任蜀州 / 送杜少府之任蜀川', '', '抒情');
INSERT INTO `t_mingju` VALUES (646, '张籍', '君知妾有夫，赠妾双明珠。', '节妇吟·寄东平李司空师道', '', '抒情');
INSERT INTO `t_mingju` VALUES (647, '李白', '故人西辞黄鹤楼，烟花三月下扬州。', '黄鹤楼送孟浩然之广陵', '', '抒情');
INSERT INTO `t_mingju` VALUES (648, '白居易', '借问江潮与海水，何似君情与妾心？', '浪淘沙·借问江潮与海水', '', '抒情');
INSERT INTO `t_mingju` VALUES (649, '朱彝尊', '相思了无益，悔当初相见。', '忆少年·飞花时节', '', '抒情');
INSERT INTO `t_mingju` VALUES (650, '苏轼', '但愿人长久，千里共婵娟。', '水调歌头·丙辰中秋', '', '抒情');
INSERT INTO `t_mingju` VALUES (651, '文天祥', '人生自古谁无死？留取丹心照汗青。', '过零丁洋', '', '抒情');
INSERT INTO `t_mingju` VALUES (652, '苏轼', '柳庭风静人眠昼，昼眠人静风庭柳。', '菩萨蛮·回文夏闺怨', '', '抒情');
INSERT INTO `t_mingju` VALUES (653, '徐锡麟', '只解沙场为国死，何须马革裹尸还。', '出塞', '', '抒情');
INSERT INTO `t_mingju` VALUES (654, '陆游', '此生谁料，心在天山，身老沧洲。', '诉衷情·当年万里觅封侯', '', '抒情');
INSERT INTO `t_mingju` VALUES (655, '杜牧', '商女不知亡国恨，隔江犹唱后庭花。', '泊秦淮', '', '抒情');
INSERT INTO `t_mingju` VALUES (656, '王建', '今夜月明人尽望，不知秋思落谁家。', '十五夜望月寄杜郎中', '', '抒情');
INSERT INTO `t_mingju` VALUES (657, '韦应物', '春潮带雨晚来急，野渡无人舟自横。', '滁州西涧', '', '抒情');
INSERT INTO `t_mingju` VALUES (658, '李白', '谁家玉笛暗飞声，散入春风满洛城。', '春夜洛城闻笛 / 春夜洛阳城闻笛', '', '抒情');
INSERT INTO `t_mingju` VALUES (659, '苏轼', '相逢一醉是前缘，风雨散、飘然何处。', '鹊桥仙·七夕', '', '抒情');
INSERT INTO `t_mingju` VALUES (660, '王昌龄', '忽见陌头杨柳色，悔教夫婿觅封侯。', '闺怨', '', '抒情');
INSERT INTO `t_mingju` VALUES (661, '朱庆馀', '妆罢低声问夫婿，画眉深浅入时无。', '近试上张籍水部 / 近试上张水部 / 闺意献张水部', '', '抒情');
INSERT INTO `t_mingju` VALUES (662, '苏轼', '一别都门三改火，天涯踏尽红尘。', '临江仙·送钱穆父', '', '抒情');
INSERT INTO `t_mingju` VALUES (663, '白居易', '相恨不如潮有信，相思始觉海非深。', '浪淘沙·借问江潮与海水', '', '抒情');
INSERT INTO `t_mingju` VALUES (664, '佚名', '窈窕淑女，君子好逑。', '关雎', '', '抒情');
INSERT INTO `t_mingju` VALUES (665, '张若虚', '江畔何人初见月？江月何年初照人？', '春江花月夜', '', '抒情');
INSERT INTO `t_mingju` VALUES (666, '刘著', '江南几度梅花发，人在天涯鬓已斑。', '鹧鸪天·雪照山城玉指寒', '', '抒情');
INSERT INTO `t_mingju` VALUES (667, '辛弃疾', '想当年，金戈铁马，气吞万里如虎。', '永遇乐·京口北固亭怀古', '', '抒情');
INSERT INTO `t_mingju` VALUES (668, '屈原', '身既死兮神以灵，魂魄毅兮为鬼雄。', '国殇', '', '抒情');
INSERT INTO `t_mingju` VALUES (669, '元好问', '多情却被无情恼，今夜还如昨夜长。', '鹧鸪天·候馆灯昏雨送凉', '', '抒情');
INSERT INTO `t_mingju` VALUES (670, '纳兰性德', '风一更，雪一更，聒碎乡心梦不成，故园无此声。', '长相思·山一程', '', '抒情');
INSERT INTO `t_mingju` VALUES (671, '柳宗元', '孤舟蓑笠翁，独钓寒江雪。', '江雪', '', '抒情');
INSERT INTO `t_mingju` VALUES (672, '韦应物', '去年花里逢君别，今日花开已一年。', '寄李儋元锡', '', '抒情');
INSERT INTO `t_mingju` VALUES (673, '李白', '日色欲尽花含烟，月明欲素愁不眠。', '长相思·其二', '', '抒情');
INSERT INTO `t_mingju` VALUES (674, '李煜', '小楼昨夜又东风，故国不堪回首月明中。', '虞美人·春花秋月何时了', '', '抒情');
INSERT INTO `t_mingju` VALUES (675, '柳永', '执手相看泪眼，竟无语凝噎。', '雨霖铃·寒蝉凄切', '', '抒情');
INSERT INTO `t_mingju` VALUES (676, '纳兰性德', '若似月轮终皎洁，不辞冰雪为卿热。', '蝶恋花·辛苦最怜天上月', '', '抒情');
INSERT INTO `t_mingju` VALUES (677, '杜牧', '天阶夜色凉如水，卧看牵牛织女星。', '秋夕', '', '抒情');
INSERT INTO `t_mingju` VALUES (678, '惠洪', '一寸柔肠情几许？薄衾孤枕，梦回人静，彻晓潇潇雨。', '青玉案·丝槐烟柳长亭路', '', '抒情');
INSERT INTO `t_mingju` VALUES (679, '李煜', '无言独上西楼，月如钩。寂寞梧桐深院锁清秋。', '相见欢·无言独上西楼', '', '抒情');
INSERT INTO `t_mingju` VALUES (680, '元稹', '垂死病中惊坐起，暗风吹雨入寒窗。', '闻乐天授江州司马', '', '抒情');
INSERT INTO `t_mingju` VALUES (681, '李白', '举杯邀明月，对影成三人。', '月下独酌四首·其一', '', '抒情');
INSERT INTO `t_mingju` VALUES (682, '李煜', '山远天高烟水寒，相思枫叶丹。', '长相思·一重山', '', '抒情');
INSERT INTO `t_mingju` VALUES (683, '郑燮', '新竹高于旧竹枝，全凭老干为扶持。', '新竹', '', '抒情');
INSERT INTO `t_mingju` VALUES (684, '元稹', '诚知此恨人人有，贫贱夫妻百事哀。', '遣悲怀三首·其二', '', '抒情');
INSERT INTO `t_mingju` VALUES (685, '李白', '平生不下泪，于此泣无穷。', '江夏别宋之悌', '', '抒情');
INSERT INTO `t_mingju` VALUES (686, '李璟', '青鸟不传云外信，丁香空结雨中愁。', '摊破浣溪沙·手卷真珠上玉钩', '', '抒情');
INSERT INTO `t_mingju` VALUES (687, '张九龄', '悠悠天宇旷，切切故乡情。', '西江夜行', '', '抒情');
INSERT INTO `t_mingju` VALUES (688, '高适', '功名万里外，心事一杯中。', '送李侍御赴安西', '', '抒情');
INSERT INTO `t_mingju` VALUES (689, '苏轼', '中秋谁与共孤光。把盏凄然北望。', '西江月·世事一场大梦', '', '抒情');
INSERT INTO `t_mingju` VALUES (690, '龚自珍', '九州生气恃风雷，万马齐喑究可哀。', '己亥杂诗·其二百二十', '', '抒情');
INSERT INTO `t_mingju` VALUES (691, '纳兰性德', '相思相望不相亲，天为谁春。', '画堂春·一生一代一双人', '', '抒情');
INSERT INTO `t_mingju` VALUES (692, '吕本中', '恨君不似江楼月，南北东西，南北东西，只有相随无别离。', '采桑子·恨君不似江楼月', '', '抒情');
INSERT INTO `t_mingju` VALUES (693, '崔涂', '乱山残雪夜，孤烛异乡人。', '除夜 / 巴山道中除夜书怀 / 除夜有怀', '', '抒情');
INSERT INTO `t_mingju` VALUES (694, '蜀妓', '不茶不饭，不言不语，一味供他憔悴。', '鹊桥仙·说盟说誓', '', '抒情');
INSERT INTO `t_mingju` VALUES (695, '卓文君', '皑如山上雪，皎若云间月。', '白头吟', '', '抒情');
INSERT INTO `t_mingju` VALUES (696, '黄庭坚', '我居北海君南海，寄雁传书谢不能。', '寄黄几复', '', '抒情');
INSERT INTO `t_mingju` VALUES (697, '李白', '孤灯不明思欲绝，卷帷望月空长叹。', '长相思·其一', '', '抒情');
INSERT INTO `t_mingju` VALUES (698, '张九龄', '情人怨遥夜，竟夕起相思。', '望月怀远', '', '抒情');
INSERT INTO `t_mingju` VALUES (699, '纳兰性德', '我是人间惆怅客，知君何事泪纵横，断肠声里忆平生。', '浣溪沙·残雪凝辉冷画屏', '', '抒情');
INSERT INTO `t_mingju` VALUES (700, '韦庄', '无情最是台城柳，依旧烟笼十里堤。', '台城', '', '抒情');
INSERT INTO `t_mingju` VALUES (701, '曹松', '凭君莫话封侯事，一将功成万骨枯。', '己亥岁感事', '', '抒情');
INSERT INTO `t_mingju` VALUES (702, '李白', '我寄愁心与明月，随风直到夜郎西。', '闻王昌龄左迁龙标遥有此寄', '', '抒情');
INSERT INTO `t_mingju` VALUES (703, '查德卿', '八阵图名成卧龙，六韬书功在飞熊。', '蟾宫曲·怀古', '', '抒情');
INSERT INTO `t_mingju` VALUES (704, '屈原', '路漫漫其修远兮，吾将上下而求索。', '离骚', '', '抒情');
INSERT INTO `t_mingju` VALUES (705, '苏轼', '似花还似非花，也无人惜从教坠。', '水龙吟·次韵章质夫杨花词', '', '抒情');
INSERT INTO `t_mingju` VALUES (706, '刘过', '欲买桂花同载酒，终不似，少年游。', '唐多令·芦叶满汀洲', '', '抒情');
INSERT INTO `t_mingju` VALUES (707, '崔郊', '侯门一入深如海，从此萧郎是路人。', '赠去婢', '', '抒情');
INSERT INTO `t_mingju` VALUES (708, '蒋捷', '一片春愁待酒浇。江上舟摇，楼上帘招。', '一剪梅·舟过吴江', '', '抒情');
INSERT INTO `t_mingju` VALUES (709, '陆游', '楼船夜雪瓜洲渡，铁马秋风大散关。', '书愤五首·其一', '', '抒情');
INSERT INTO `t_mingju` VALUES (710, '李白', '相看两不厌，只有敬亭山。', '独坐敬亭山', '', '抒情');
INSERT INTO `t_mingju` VALUES (711, '王昌龄', '但使龙城飞将在，不教胡马度阴山。', '出塞二首', '', '抒情');
INSERT INTO `t_mingju` VALUES (712, '贺知章', '唯有门前镜湖水，春风不改旧时波。', '回乡偶书二首', '', '抒情');
INSERT INTO `t_mingju` VALUES (713, '杜甫', '感时花溅泪，恨别鸟惊心。', '春望', '', '抒情');
INSERT INTO `t_mingju` VALUES (714, '何梦桂', '数人世相逢，百年欢笑，能得几回又。', '摸鱼儿·记年时人人何处', '', '抒情');
INSERT INTO `t_mingju` VALUES (715, '司马光', '相见争如不见，多情何似无情。', '西江月·宝髻松松挽就', '', '抒情');
INSERT INTO `t_mingju` VALUES (716, '元稹', '惟将终夜常开眼，报答平生未展眉。', '遣悲怀三首·其三', '', '抒情');
INSERT INTO `t_mingju` VALUES (717, '李冠', '一寸相思千万绪。人间没个安排处。', '蝶恋花·春暮', '', '抒情');
INSERT INTO `t_mingju` VALUES (718, '辛弃疾', '千金纵买相如赋，脉脉此情谁诉。', '摸鱼儿·更能消几番风雨', '', '抒情');
INSERT INTO `t_mingju` VALUES (719, '苏轼', '一蓑烟雨任平生。', '定风波·莫听穿林打叶声', '', '抒情');
INSERT INTO `t_mingju` VALUES (720, '秦观', '依旧，依旧，人与绿杨俱瘦。', '如梦令·春景', '', '抒情');
INSERT INTO `t_mingju` VALUES (721, '纳兰性德', '红泪偷垂，满眼春风百事非。', '采桑子·当时错', '', '抒情');
INSERT INTO `t_mingju` VALUES (722, '晏殊', '梨花院落溶溶月，柳絮池塘淡淡风。', '无题·油壁香车不再逢', '', '抒情');
INSERT INTO `t_mingju` VALUES (723, '陆龟蒙', '丈夫非无泪，不洒离别间。', '别离', '', '抒情');
INSERT INTO `t_mingju` VALUES (724, '柳永', '今宵酒醒何处？杨柳岸，晓风残月。', '雨霖铃·寒蝉凄切', '', '抒情');
INSERT INTO `t_mingju` VALUES (725, '卢仝', '相思一夜梅花发，忽到窗前疑是君。', '有所思', '', '抒情');
INSERT INTO `t_mingju` VALUES (726, '辛弃疾', '何处望神州？满眼风光北固楼。', '南乡子·登京口北固亭有怀', '', '抒情');
INSERT INTO `t_mingju` VALUES (727, '纳兰性德', '风淅淅，雨纤纤。难怪春愁细细添。', '赤枣子·风淅淅', '', '抒情');
INSERT INTO `t_mingju` VALUES (728, '姜夔', '春未绿，鬓先丝。人间别久不成悲。', '鹧鸪天·元夕有所梦', '', '抒情');
INSERT INTO `t_mingju` VALUES (729, '辛弃疾', '老来情味减，对别酒，怯流年。', '木兰花慢·滁州送范倅', '', '抒情');
INSERT INTO `t_mingju` VALUES (730, '文天祥', '臣心一片磁针石，不指南方不肯休。', '扬子江', '', '抒情');
INSERT INTO `t_mingju` VALUES (731, '白居易', '我有所念人，隔在远远乡。', '夜雨', '', '抒情');
INSERT INTO `t_mingju` VALUES (732, '杜甫', '人生不相见，动如参与商。', '赠卫八处士', '', '抒情');
INSERT INTO `t_mingju` VALUES (733, '白居易', '红颜未老恩先断，斜倚薰笼坐到明。', '后宫词', '', '抒情');
INSERT INTO `t_mingju` VALUES (734, '辛弃疾', '千古兴亡多少事？悠悠。不尽长江滚滚流。', '南乡子·登京口北固亭有怀', '', '抒情');
INSERT INTO `t_mingju` VALUES (735, '纳兰性德', '一别如斯，落尽梨花月又西。', '采桑子·当时错', '', '抒情');
INSERT INTO `t_mingju` VALUES (736, '辛弃疾', '醉里挑灯看剑，梦回吹角连营。', '破阵子·为陈同甫赋壮词以寄之', '', '抒情');
INSERT INTO `t_mingju` VALUES (737, '杜甫', '国破山河在，城春草木深。', '春望', '', '抒情');
INSERT INTO `t_mingju` VALUES (738, '刘禹锡', '人世几回伤往事，山形依旧枕寒流。', '西塞山怀古', '', '抒情');
INSERT INTO `t_mingju` VALUES (739, '张惠言', '梅花雪，梨花月，总相思。', '相见欢·年年负却花期', '', '抒情');
INSERT INTO `t_mingju` VALUES (740, '李煜', '梦里不知身是客，一晌贪欢。', '浪淘沙令·帘外雨潺潺', '', '抒情');
INSERT INTO `t_mingju` VALUES (741, '周紫芝', '梧桐叶上三更雨，叶叶声声是别离。', '鹧鸪天·一点残红欲尽时', '', '抒情');
INSERT INTO `t_mingju` VALUES (742, '贺知章', '少小离家老大回，乡音无改鬓毛衰。', '回乡偶书二首·其一', '', '抒情');
INSERT INTO `t_mingju` VALUES (743, '陈陶', '可怜无定河边骨，犹是春闺梦里人。', '陇西行四首', '', '抒情');
INSERT INTO `t_mingju` VALUES (744, '李白', '我醉欲眠卿且去，明朝有意抱琴来。', '山中与幽人对酌', '', '抒情');
INSERT INTO `t_mingju` VALUES (745, '杜甫', '花径不曾缘客扫，蓬门今始为君开。', '客至', '', '抒情');
INSERT INTO `t_mingju` VALUES (746, '崔颢', '黄鹤一去不复返，白云千载空悠悠。', '黄鹤楼 / 登黄鹤楼', '', '抒情');
INSERT INTO `t_mingju` VALUES (747, '辛弃疾', '晚日寒鸦一片愁。柳塘新绿却温柔。', '鹧鸪天·晚日寒鸦一片愁', '', '抒情');
INSERT INTO `t_mingju` VALUES (748, '李白', '浮云游子意，落日故人情。', '送友人', '', '抒情');
INSERT INTO `t_mingju` VALUES (749, '李白', '当君怀归日，是妾断肠时。', '春思', '', '抒情');
INSERT INTO `t_mingju` VALUES (750, '李白', '一叫一回肠一断，三春三月忆三巴。', '宣城见杜鹃花 / 子规', '', '抒情');
INSERT INTO `t_mingju` VALUES (751, '唐寅', '雨打梨花深闭门，忘了青春，误了青春。', '一剪梅·雨打梨花深闭门', '', '四季');
INSERT INTO `t_mingju` VALUES (752, '苏轼', '春宵一刻值千金，花有清香月有阴。', '春宵·春宵一刻值千金', '', '四季');
INSERT INTO `t_mingju` VALUES (753, '李白', '云想衣裳花想容，春风拂槛露华浓。', '清平调·其一', '', '四季');
INSERT INTO `t_mingju` VALUES (754, '徐再思', '一声梧叶一声秋，一点芭蕉一点愁，三更归梦三更后。', '水仙子·夜雨', '', '四季');
INSERT INTO `t_mingju` VALUES (755, '崔护', '人面不知何处去，桃花依旧笑春风。', '题都城南庄', '', '四季');
INSERT INTO `t_mingju` VALUES (756, '志南', '沾衣欲湿杏花雨，吹面不寒杨柳风。', '绝句', '', '四季');
INSERT INTO `t_mingju` VALUES (757, '秦观', '夜月一帘幽梦，春风十里柔情。', '八六子·倚危亭', '', '四季');
INSERT INTO `t_mingju` VALUES (758, '陆游', '红酥手，黄縢酒，满城春色宫墙柳。', '钗头凤·红酥手', '', '四季');
INSERT INTO `t_mingju` VALUES (759, '王维', '空山新雨后，天气晚来秋。', '山居秋暝', '', '四季');
INSERT INTO `t_mingju` VALUES (760, '陆游', '小楼一夜听春雨，深巷明朝卖杏花。', '临安春雨初霁', '', '四季');
INSERT INTO `t_mingju` VALUES (761, '黄巢', '待到秋来九月八，我花开后百花杀。', '不第后赋菊', '', '四季');
INSERT INTO `t_mingju` VALUES (762, '刘方平', '寂寞空庭春欲晚，梨花满地不开门。', '春怨', '', '四季');
INSERT INTO `t_mingju` VALUES (763, '马致远', '枯藤老树昏鸦，小桥流水人家，古道西风瘦马。', '天净沙·秋思', '', '四季');
INSERT INTO `t_mingju` VALUES (764, '贺铸', '当年不肯嫁春风，无端却被秋风误。', '芳心苦·杨柳回塘', '', '四季');
INSERT INTO `t_mingju` VALUES (765, '白居易', '人间四月芳菲尽，山寺桃花始盛开。', '大林寺桃花', '', '四季');
INSERT INTO `t_mingju` VALUES (766, '白居易', '晚来天欲雪，能饮一杯无。', '问刘十九', '', '四季');
INSERT INTO `t_mingju` VALUES (767, '杜甫', '江碧鸟逾白，山青花欲燃。', '绝句二首', '', '四季');
INSERT INTO `t_mingju` VALUES (768, '王贞白', '读书不觉已春深，一寸光阴一寸金。', '白鹿洞二首·其一', '', '四季');
INSERT INTO `t_mingju` VALUES (769, '王勃', '落霞与孤鹜齐飞，秋水共长天一色。', '滕王阁序', '', '四季');
INSERT INTO `t_mingju` VALUES (770, '刘禹锡', '沉舟侧畔千帆过，病树前头万木春。', '酬乐天扬州初逢席上见赠', '', '四季');
INSERT INTO `t_mingju` VALUES (771, '毛泽东', '独立寒秋，湘江北去，橘子洲头。', '沁园春·长沙', '', '四季');
INSERT INTO `t_mingju` VALUES (772, '苏轼', '竹外桃花三两枝，春江水暖鸭先知。', '惠崇春江晚景 / 惠崇春江晓景', '', '四季');
INSERT INTO `t_mingju` VALUES (773, '陆凯', '江南无所有，聊赠一枝春。', '赠范晔诗', '', '四季');
INSERT INTO `t_mingju` VALUES (774, '杜牧', '春风十里扬州路，卷上珠帘总不如。', '赠别', '', '四季');
INSERT INTO `t_mingju` VALUES (775, '王维', '人闲桂花落，夜静春山空。', '鸟鸣涧', '', '四季');
INSERT INTO `t_mingju` VALUES (776, '刘彻', '兰有秀兮菊有芳，怀佳人兮不能忘。', '秋风辞', '', '四季');
INSERT INTO `t_mingju` VALUES (777, '李煜', '流水落花春去也，天上人间。', '浪淘沙令·帘外雨潺潺', '', '四季');
INSERT INTO `t_mingju` VALUES (778, '李商隐', '相见时难别亦难，东风无力百花残。', '无题·相见时难别亦难', '', '四季');
INSERT INTO `t_mingju` VALUES (779, '张继', '月落乌啼霜满天，江枫渔火对愁眠。', '枫桥夜泊 / 夜泊枫江', '', '四季');
INSERT INTO `t_mingju` VALUES (780, '张若虚', '春江潮水连海平，海上明月共潮生。', '春江花月夜', '', '四季');
INSERT INTO `t_mingju` VALUES (781, '王维', '红豆生南国，春来发几枝。', '相思', '', '四季');
INSERT INTO `t_mingju` VALUES (782, '纳兰性德', '谁念西风独自凉，萧萧黄叶闭疏窗，沉思往事立残阳。', '浣溪沙·谁念西风独自凉', '', '四季');
INSERT INTO `t_mingju` VALUES (783, '韩愈', '天街小雨润如酥，草色遥看近却无。', '早春呈水部张十八员外 / 初春小雨 / 早春', '', '四季');
INSERT INTO `t_mingju` VALUES (784, '王安石', '春风又绿江南岸，明月何时照我还？', '泊船瓜洲', '', '四季');
INSERT INTO `t_mingju` VALUES (785, '王籍', '蝉噪林逾静，鸟鸣山更幽。', '入若耶溪', '', '四季');
INSERT INTO `t_mingju` VALUES (786, '杨万里', '小荷才露尖尖角，早有蜻蜓立上头。', '小池', '', '四季');
INSERT INTO `t_mingju` VALUES (787, '李商隐', '秋阴不散霜飞晚，留得枯荷听雨声。', '宿骆氏亭寄怀崔雍崔衮', '', '四季');
INSERT INTO `t_mingju` VALUES (788, '李清照', '知否，知否？应是绿肥红瘦。', '如梦令·昨夜雨疏风骤', '', '四季');
INSERT INTO `t_mingju` VALUES (789, '李商隐', '春心莫共花争发，一寸相思一寸灰！', '无题·飒飒东风细雨来', '', '四季');
INSERT INTO `t_mingju` VALUES (790, '韦庄', '春水碧于天，画船听雨眠。', '菩萨蛮·人人尽说江南好', '', '四季');
INSERT INTO `t_mingju` VALUES (791, '朱熹', '等闲识得东风面，万紫千红总是春。', '春日', '', '四季');
INSERT INTO `t_mingju` VALUES (792, '蒋捷', '流光容易把人抛，红了樱桃，绿了芭蕉。', '一剪梅·舟过吴江', '', '四季');
INSERT INTO `t_mingju` VALUES (793, '晏殊', '满目山河空念远，落花风雨更伤春。', '浣溪沙·一向年光有限身', '', '四季');
INSERT INTO `t_mingju` VALUES (794, '崔道融', '朔风如解意，容易莫摧残。', '梅花', '', '四季');
INSERT INTO `t_mingju` VALUES (795, '宋祁', '绿杨烟外晓寒轻，红杏枝头春意闹。', '玉楼春·春景', '', '四季');
INSERT INTO `t_mingju` VALUES (796, '李商隐', '君问归期未有期，巴山夜雨涨秋池。', '夜雨寄北', '', '四季');
INSERT INTO `t_mingju` VALUES (797, '李白', '故人西辞黄鹤楼，烟花三月下扬州。', '黄鹤楼送孟浩然之广陵', '', '四季');
INSERT INTO `t_mingju` VALUES (798, '杨万里', '接天莲叶无穷碧，映日荷花别样红。', '晓出净慈寺送林子方', '', '四季');
INSERT INTO `t_mingju` VALUES (799, '高骈', '水晶帘动微风起，满架蔷薇一院香。', '山亭夏日', '', '四季');
INSERT INTO `t_mingju` VALUES (800, '杜甫', '迟日江山丽，春风花草香。', '绝句二首', '', '四季');
INSERT INTO `t_mingju` VALUES (801, '苏轼', '柳庭风静人眠昼，昼眠人静风庭柳。', '菩萨蛮·回文夏闺怨', '', '四季');
INSERT INTO `t_mingju` VALUES (802, '刘禹锡', '自古逢秋悲寂寥，我言秋日胜春朝。', '秋词', '', '四季');
INSERT INTO `t_mingju` VALUES (803, '柳宗元', '千山鸟飞绝，万径人踪灭。', '江雪', '', '四季');
INSERT INTO `t_mingju` VALUES (804, '王之涣', '羌笛何须怨杨柳，春风不度玉门关。', '凉州词二首·其一', '', '四季');
INSERT INTO `t_mingju` VALUES (805, '王冕', '冰雪林中著此身，不同桃李混芳尘；', '白梅', '', '四季');
INSERT INTO `t_mingju` VALUES (806, '李清照', '莫道不销魂，帘卷西风，人比黄花瘦。', '醉花阴·薄雾浓云愁永昼', '', '四季');
INSERT INTO `t_mingju` VALUES (807, '高鼎', '草长莺飞二月天，拂堤杨柳醉春烟。', '村居', '', '四季');
INSERT INTO `t_mingju` VALUES (808, '韦应物', '春潮带雨晚来急，野渡无人舟自横。', '滁州西涧', '', '四季');
INSERT INTO `t_mingju` VALUES (809, '王安石', '墙角数枝梅，凌寒独自开。', '梅花 / 梅', '', '四季');
INSERT INTO `t_mingju` VALUES (810, '李白', '谁家玉笛暗飞声，散入春风满洛城。', '春夜洛城闻笛 / 春夜洛阳城闻笛', '', '四季');
INSERT INTO `t_mingju` VALUES (811, '叶绍翁', '萧萧梧叶送寒声，江上秋风动客情。', '夜书所见', '', '四季');
INSERT INTO `t_mingju` VALUES (812, '冯延巳', '风乍起，吹皱一池春水。', '谒金门·风乍起', '', '四季');
INSERT INTO `t_mingju` VALUES (813, '杜甫', '两个黄鹂鸣翠柳，一行白鹭上青天。', '绝句', '', '四季');
INSERT INTO `t_mingju` VALUES (814, '刘著', '江南几度梅花发，人在天涯鬓已斑。', '鹧鸪天·雪照山城玉指寒', '', '四季');
INSERT INTO `t_mingju` VALUES (815, '王雱', '海棠未雨，梨花先雪，一半春休。', '眼儿媚·杨柳丝丝弄轻柔', '', '四季');
INSERT INTO `t_mingju` VALUES (816, '杨巨源', '若待上林花似锦，出门俱是看花人。', '城东早春', '', '四季');
INSERT INTO `t_mingju` VALUES (817, '范成大', '连雨不知春去，一晴方觉夏深。', '喜晴', '', '四季');
INSERT INTO `t_mingju` VALUES (818, '苏轼', '花褪残红青杏小。燕子飞时，绿水人家绕。', '蝶恋花·春景', '', '四季');
INSERT INTO `t_mingju` VALUES (819, '刘长卿', '日暮苍山远，天寒白屋贫。', '逢雪宿芙蓉山主人', '', '四季');
INSERT INTO `t_mingju` VALUES (820, '柳宗元', '孤舟蓑笠翁，独钓寒江雪。', '江雪', '', '四季');
INSERT INTO `t_mingju` VALUES (821, '杜牧', '青山隐隐水迢迢，秋尽江南草未凋。', '寄扬州韩绰判官', '', '四季');
INSERT INTO `t_mingju` VALUES (822, '苏轼', '欲把西湖比西子，淡妆浓抹总相宜。', '饮湖上初晴后雨二首·其二', '', '四季');
INSERT INTO `t_mingju` VALUES (823, '秦观', '有情芍药含春泪，无力蔷薇卧晓枝。', '春日', '', '四季');
INSERT INTO `t_mingju` VALUES (824, '白居易', '日出江花红胜火，春来江水绿如蓝。', '忆江南·江南好', '', '四季');
INSERT INTO `t_mingju` VALUES (825, '辛弃疾', '稻花香里说丰年。听取蛙声一片。', '西江月·夜行黄沙道中', '', '四季');
INSERT INTO `t_mingju` VALUES (826, '刘彻', '秋风起兮白云飞，草木黄落兮雁南归。', '秋风辞', '', '四季');
INSERT INTO `t_mingju` VALUES (827, '朱庭玉', '庭前落尽梧桐，水边开彻芙蓉。', '天净沙·秋', '', '四季');
INSERT INTO `t_mingju` VALUES (828, '白居易', '乱花渐欲迷人眼，浅草才能没马蹄。', '钱塘湖春行', '', '四季');
INSERT INTO `t_mingju` VALUES (829, '杜甫', '好雨知时节，当春乃发生。', '春夜喜雨', '', '四季');
INSERT INTO `t_mingju` VALUES (830, '王安石', '爆竹声中一岁除，春风送暖入屠苏。', '元日', '', '四季');
INSERT INTO `t_mingju` VALUES (831, '崔涂', '乱山残雪夜，孤烛异乡人。', '除夜 / 巴山道中除夜书怀 / 除夜有怀', '', '四季');
INSERT INTO `t_mingju` VALUES (832, '柳永', '有三秋桂子，十里荷花。', '望海潮·东南形胜', '', '四季');
INSERT INTO `t_mingju` VALUES (833, '杜牧', '停车坐爱枫林晚，霜叶红于二月花。', '山行', '', '四季');
INSERT INTO `t_mingju` VALUES (834, '赵师秀', '黄梅时节家家雨，青草池塘处处蛙。', '约客 / 有约', '', '四季');
INSERT INTO `t_mingju` VALUES (835, '蒋捷', '一片春愁待酒浇。江上舟摇，楼上帘招。', '一剪梅·舟过吴江', '', '四季');
INSERT INTO `t_mingju` VALUES (836, '杜牧', '千里莺啼绿映红，水村山郭酒旗风。', '江南春', '', '四季');
INSERT INTO `t_mingju` VALUES (837, '贺知章', '唯有门前镜湖水，春风不改旧时波。', '回乡偶书二首', '', '四季');
INSERT INTO `t_mingju` VALUES (838, '杜牧', '银烛秋光冷画屏，轻罗小扇扑流萤。', '秋夕', '', '四季');
INSERT INTO `t_mingju` VALUES (839, '王维', '漠漠水田飞白鹭，阴阴夏木啭黄鹂。', '积雨辋川庄作 / 秋归辋川庄作', '', '四季');
INSERT INTO `t_mingju` VALUES (840, '王昌龄', '荷叶罗裙一色裁，芙蓉向脸两边开。', '采莲曲', '', '四季');
INSERT INTO `t_mingju` VALUES (841, '朱熹', '胜日寻芳泗水滨，无边光景一时新。', '春日', '', '四季');
INSERT INTO `t_mingju` VALUES (842, '黄庭坚', '清风明月无人管，并作南楼一味凉。', '鄂州南楼书事', '', '四季');
INSERT INTO `t_mingju` VALUES (843, '朱熹', '未觉池塘春草梦，阶前梧叶已秋声。', '偶成', '', '四季');
INSERT INTO `t_mingju` VALUES (844, '毛泽东', '北国风光，千里冰封，万里雪飘。', '沁园春·雪', '', '四季');
INSERT INTO `t_mingju` VALUES (845, '纳兰性德', '红泪偷垂，满眼春风百事非。', '采桑子·当时错', '', '四季');
INSERT INTO `t_mingju` VALUES (846, '张孝祥', '满载一船秋色，平铺十里湖光。', '西江月·阻风山峰下', '', '四季');
INSERT INTO `t_mingju` VALUES (847, '杜甫', '国破山河在，城春草木深。', '春望', '', '四季');
INSERT INTO `t_mingju` VALUES (848, '苏轼', '一年好景君须记，最是橙黄橘绿时。', '赠刘景文 / 冬景', '', '四季');
INSERT INTO `t_mingju` VALUES (849, '李煜', '一重山，两重山。山远天高烟水寒，相思枫叶丹。', '长相思·一重山', '', '四季');
INSERT INTO `t_mingju` VALUES (850, '范仲淹', '碧云天，黄叶地，秋色连波，波上寒烟翠。', '苏幕遮·怀旧', '', '四季');
INSERT INTO `t_mingju` VALUES (851, '王昌龄', '青海长云暗雪山，孤城遥望玉门关。', '从军行七首·其四', '', '四季');
INSERT INTO `t_mingju` VALUES (852, '叶绍翁', '春色满园关不住，一枝红杏出墙来。', '游园不值', '', '四季');
INSERT INTO `t_mingju` VALUES (853, '李白', '一叫一回肠一断，三春三月忆三巴。', '宣城见杜鹃花 / 子规', '', '四季');
INSERT INTO `t_mingju` VALUES (854, '李峤', '解落三秋叶，能开二月花。', '风', '', '四季');
INSERT INTO `t_mingju` VALUES (855, '高骈', '绿树阴浓夏日长，楼台倒影入池塘。', '山亭夏日', '', '四季');
INSERT INTO `t_mingju` VALUES (856, '王维', '渭城朝雨浥轻尘，客舍青青柳色新。', '渭城曲 / 送元二使安西', '', '四季');
INSERT INTO `t_mingju` VALUES (857, '范仲淹', '塞下秋来风景异，衡阳雁去无留意。', '渔家傲·秋思', '', '四季');
INSERT INTO `t_mingju` VALUES (858, '高适', '千里黄云白日曛，北风吹雁雪纷纷。', '别董大二首', '', '四季');
INSERT INTO `t_mingju` VALUES (859, '卢纶', '欲将轻骑逐，大雪满弓刀。', '和张仆射塞下曲·其三', '', '四季');
INSERT INTO `t_mingju` VALUES (860, '苏轼', '枝上柳绵吹又少，天涯何处无芳草！', '蝶恋花·春景', '', '四季');
INSERT INTO `t_mingju` VALUES (861, '贺铸', '一川烟草，满城风絮，梅子黄时雨。', '青玉案·凌波不过横塘路', '', '四季');
INSERT INTO `t_mingju` VALUES (862, '韩愈', '云横秦岭家何在？雪拥蓝关马不前。', '左迁至蓝关示侄孙湘', '', '四季');
INSERT INTO `t_mingju` VALUES (863, '岑参', '花门楼前见秋草，岂能贫贱相看老。', '凉州馆中与诸判官夜集', '', '四季');
INSERT INTO `t_mingju` VALUES (864, '曹丕', '秋风萧瑟天气凉，草木摇落露为霜，群燕辞归鹄南翔。', '燕歌行二首·其一', '', '四季');
INSERT INTO `t_mingju` VALUES (865, '杜甫', '万里悲秋常作客，百年多病独登台。', '登高', '', '四季');
INSERT INTO `t_mingju` VALUES (866, '韦庄', '春日游，杏花吹满头。', '思帝乡·春日游', '', '四季');
INSERT INTO `t_mingju` VALUES (867, '杜牧', '尘世难逢开口笑，菊花须插满头归。', '九日齐山登高', '', '四季');
INSERT INTO `t_mingju` VALUES (868, '韩愈', '最是一年春好处，绝胜烟柳满皇都。', '早春呈水部张十八员外 / 初春小雨 / 早春', '', '四季');
INSERT INTO `t_mingju` VALUES (869, '王湾', '海日生残夜，江春入旧年。', '次北固山下', '', '四季');
INSERT INTO `t_mingju` VALUES (870, '杜甫', '窗含西岭千秋雪，门泊东吴万里船。', '绝句', '', '四季');
INSERT INTO `t_mingju` VALUES (871, '贾岛', '秋风生渭水，落叶满长安。', '忆江上吴处士', '', '四季');
INSERT INTO `t_mingju` VALUES (872, '戴叔伦', '燕子不归春事晚，一汀烟雨杏花寒。', '苏溪亭', '', '四季');
INSERT INTO `t_mingju` VALUES (873, '张谓', '不知近水花先发，疑是经冬雪未销。', '早梅', '', '四季');
INSERT INTO `t_mingju` VALUES (874, '杜甫', '渭北春天树，江东日暮云。', '春日忆李白', '', '四季');
INSERT INTO `t_mingju` VALUES (875, '李白', '秋风清，秋月明，落叶聚还散，寒鸦栖复惊。', '三五七言 / 秋风词', '', '四季');
INSERT INTO `t_mingju` VALUES (876, '欧阳修', '花似伊。柳似伊。花柳青春人别离。', '长相思·花似伊', '', '四季');
INSERT INTO `t_mingju` VALUES (877, '刘禹锡', '湖光秋月两相和，潭面无风镜未磨。', '望洞庭', '', '四季');
INSERT INTO `t_mingju` VALUES (878, '冯延巳', '春日宴，绿酒一杯歌一遍。', '长命女·春日宴', '', '四季');
INSERT INTO `t_mingju` VALUES (879, '白居易', '几处早莺争暖树，谁家新燕啄春泥。', '钱塘湖春行', '', '四季');
INSERT INTO `t_mingju` VALUES (880, '叶清臣', '三分春色二分愁，更一分风雨。', '贺圣朝·留别', '', '四季');
INSERT INTO `t_mingju` VALUES (881, '黄景仁', '惨惨柴门风雪夜，此时有子不如无。', '别老母', '', '四季');
INSERT INTO `t_mingju` VALUES (882, '李白', '燕山雪花大如席，片片吹落轩辕台。', '北风行', '', '四季');
INSERT INTO `t_mingju` VALUES (883, '刘方平', '今夜偏知春气暖，虫声新透绿窗纱。', '夜月 / 月夜', '', '四季');
INSERT INTO `t_mingju` VALUES (884, '陈文述', '一夜雨声凉到梦，万荷叶上送秋来。', '夏日杂诗', '', '四季');
INSERT INTO `t_mingju` VALUES (885, '杨万里', '梅子留酸软齿牙，芭蕉分绿与窗纱。', '闲居初夏午睡起', '', '四季');
INSERT INTO `t_mingju` VALUES (886, '孟浩然', '荷风送香气，竹露滴清响。', '夏日南亭怀辛大', '', '四季');
INSERT INTO `t_mingju` VALUES (887, '贺知章', '碧玉妆成一树高，万条垂下绿丝绦。', '咏柳 / 柳枝词', '', '四季');
INSERT INTO `t_mingju` VALUES (888, '李白', '长风万里送秋雁，对此可以酣高楼。', '宣州谢脁楼饯别校书叔云 / 陪侍御叔华登楼歌', '', '四季');
INSERT INTO `t_mingju` VALUES (889, '晏殊', '池上碧苔三四点，叶底黄鹂一两声。', '破阵子·春景', '', '四季');
INSERT INTO `t_mingju` VALUES (890, '王绩', '树树皆秋色，山山唯落晖。', '野望', '', '四季');
INSERT INTO `t_mingju` VALUES (891, '王湾', '客路青山外，行舟绿水前。', '次北固山下', '', '四季');
INSERT INTO `t_mingju` VALUES (892, '杜甫', '一片花飞减却春，风飘万点正愁人。', '曲江二首', '', '四季');
INSERT INTO `t_mingju` VALUES (893, '韩愈', '杨花榆荚无才思，惟解漫天作雪飞。', '晚春', '', '四季');
INSERT INTO `t_mingju` VALUES (894, '李煜', '别来春半，触目柔肠断。', '清平乐·别来春半', '', '四季');
INSERT INTO `t_mingju` VALUES (895, '杜牧', '江涵秋影雁初飞，与客携壶上翠微。', '九日齐山登高', '', '四季');
INSERT INTO `t_mingju` VALUES (896, '白居易', '夜深知雪重，时闻折竹声。', '夜雪', '', '四季');
INSERT INTO `t_mingju` VALUES (897, '王维', '月出惊山鸟，时鸣春涧中。', '鸟鸣涧', '', '四季');
INSERT INTO `t_mingju` VALUES (898, '贺知章', '不知细叶谁裁出，二月春风似剪刀。', '咏柳 / 柳枝词', '', '四季');
INSERT INTO `t_mingju` VALUES (899, '李璟', '菡萏香销翠叶残，西风愁起绿波间。', '摊破浣溪沙·菡萏香销翠叶残', '', '四季');
INSERT INTO `t_mingju` VALUES (900, '辛弃疾', '楚天千里清秋，水随天去秋无际。', '水龙吟·登建康赏心亭', '', '四季');
INSERT INTO `t_mingju` VALUES (901, '杜甫', '晓看红湿处，花重锦官城。', '春夜喜雨', '', '四季');
INSERT INTO `t_mingju` VALUES (902, '高骈', '六出飞花入户时，坐看青竹变琼枝。', '对雪', '', '四季');
INSERT INTO `t_mingju` VALUES (903, '晏几道', '年年陌上生秋草，日日楼中到夕阳。', '鹧鸪天·醉拍春衫惜旧香', '', '四季');
INSERT INTO `t_mingju` VALUES (904, '李白', '欲渡黄河冰塞川，将登太行雪满山。', '行路难·其一', '', '四季');
INSERT INTO `t_mingju` VALUES (905, '孟浩然', '八月湖水平，涵虚混太清。', '望洞庭湖赠张丞相 / 临洞庭', '', '四季');
INSERT INTO `t_mingju` VALUES (906, '韦应物', '世事茫茫难自料，春愁黯黯独成眠。', '寄李儋元锡', '', '四季');
INSERT INTO `t_mingju` VALUES (907, '辛弃疾', '却道“天凉好个秋”！', '丑奴儿·书博山道中壁', '', '四季');
INSERT INTO `t_mingju` VALUES (908, '李华', '芳树无人花自落，春山一路鸟空啼。', '春行即兴', '', '四季');
INSERT INTO `t_mingju` VALUES (909, '陈毅', '大雪压青松，青松挺且直。', '青松', '', '四季');
INSERT INTO `t_mingju` VALUES (910, '陶渊明', '春水满四泽，夏云多奇峰。', '四时', '', '四季');
INSERT INTO `t_mingju` VALUES (911, '郑谷', '扬子江头杨柳春，杨花愁杀渡江人。', '淮上与友人别', '', '四季');
INSERT INTO `t_mingju` VALUES (912, '杜甫', '黄师塔前江水东，春光懒困倚微风。', '江畔独步寻花·其五', '', '四季');
INSERT INTO `t_mingju` VALUES (913, '岑参', '山回路转不见君，雪上空留马行处。', '白雪歌送武判官归京', '', '四季');
INSERT INTO `t_mingju` VALUES (914, '晏殊', '绿杨芳草长亭路。年少抛人容易去。', '玉楼春·春恨', '', '四季');
INSERT INTO `t_mingju` VALUES (915, '秦观', '芳菲歇去何须恨，夏木阴阴正可人。', '三月晦日偶题', '', '四季');
INSERT INTO `t_mingju` VALUES (916, '唐寅', '多少天涯未归客，尽借篱落看秋风。', '菊花', '', '四季');
INSERT INTO `t_mingju` VALUES (917, '朱彝尊', '共眠一舸听秋雨，小簟轻衾各自寒。', '桂殿秋·思往事', '', '四季');
INSERT INTO `t_mingju` VALUES (918, '李白', '人烟寒橘柚，秋色老梧桐。', '秋登宣城谢脁北楼', '', '四季');
INSERT INTO `t_mingju` VALUES (919, '赵翼', '最是秋风管闲事，红他枫叶白人头。', '野步', '', '四季');
INSERT INTO `t_mingju` VALUES (920, '白居易', '草萤有耀终非火，荷露虽团岂是珠。', '放言五首·其一', '', '四季');
INSERT INTO `t_mingju` VALUES (921, '李商隐', '此花此叶常相映，翠减红衰愁杀人。', '赠荷花', '', '四季');
INSERT INTO `t_mingju` VALUES (922, '欧阳修', '雪消门外千山绿，花发江边二月晴。', '春日西湖寄谢法曹歌', '', '四季');
INSERT INTO `t_mingju` VALUES (923, '辛弃疾', '一轮秋影转金波。飞镜又重磨。', '太常引·建康中秋夜为吕叔潜赋', '', '四季');
INSERT INTO `t_mingju` VALUES (924, '曹雪芹', '一畦春韭绿，十里稻花香。', '菱荇鹅儿水', '', '四季');
INSERT INTO `t_mingju` VALUES (925, '秦观', '可堪孤馆闭春寒，杜鹃声里斜阳暮。', '踏莎行·郴州旅舍', '', '四季');
INSERT INTO `t_mingju` VALUES (926, '蔡确', '纸屏石枕竹方床，手倦抛书午梦长。', '夏日登车盖亭', '', '四季');
INSERT INTO `t_mingju` VALUES (927, '徐有贞', '中秋月。月到中秋偏皎洁。', '中秋月·中秋月', '', '四季');
INSERT INTO `t_mingju` VALUES (928, '范仲淹', '羌管悠悠霜满地，人不寐，将军白发征夫泪。', '渔家傲·秋思', '', '四季');
INSERT INTO `t_mingju` VALUES (929, '苏轼', '细雨斜风作晓寒。淡烟疏柳媚晴滩。', '浣溪沙·元丰七年十二月二十四日从泗州刘倩叔游南山', '', '四季');
INSERT INTO `t_mingju` VALUES (930, '王维', '草枯鹰眼疾，雪尽马蹄轻。', '观猎', '', '四季');
INSERT INTO `t_mingju` VALUES (931, '李煜', '砌下落梅如雪乱，拂了一身还满。', '清平乐·别来春半', '', '四季');
INSERT INTO `t_mingju` VALUES (932, '谢灵运', '池塘生春草，园柳变鸣禽。', '登池上楼', '', '四季');
INSERT INTO `t_mingju` VALUES (933, '李煜', '帘外雨潺潺，春意阑珊。', '浪淘沙令·帘外雨潺潺', '', '四季');
INSERT INTO `t_mingju` VALUES (934, '祖咏', '终南阴岭秀，积雪浮云端。', '终南望余雪', '', '四季');
INSERT INTO `t_mingju` VALUES (935, '王维', '寒山转苍翠，秋水日潺湲。', '辋川闲居赠裴秀才迪', '', '四季');
INSERT INTO `t_mingju` VALUES (936, '张栻', '律回岁晚冰霜少，春到人间草木知。', '立春偶成', '', '四季');
INSERT INTO `t_mingju` VALUES (937, '杨万里', '竹深树密虫鸣处，时有微凉不是风。', '夏夜追凉', '', '四季');
INSERT INTO `t_mingju` VALUES (938, '朱淑真', '把酒送春春不语。黄昏却下潇潇雨。', '蝶恋花·送春', '', '四季');
INSERT INTO `t_mingju` VALUES (939, '王士祯', '一曲高歌一樽酒，一人独钓一江秋。', '题秋江独钓图', '', '四季');
INSERT INTO `t_mingju` VALUES (940, '杜甫', '留连戏蝶时时舞，自在娇莺恰恰啼。', '江畔独步寻花·其六', '', '四季');
INSERT INTO `t_mingju` VALUES (941, '苏轼', '只恐夜深花睡去，故烧高烛照红妆。', '海棠', '', '四季');
INSERT INTO `t_mingju` VALUES (942, '王建', '中庭地白树栖鸦，冷露无声湿桂花。', '十五夜望月寄杜郎中', '', '四季');
INSERT INTO `t_mingju` VALUES (943, '关汉卿', '雪纷纷，掩重门，不由人不断魂，瘦损江梅韵。', '大德歌·冬', '', '四季');
INSERT INTO `t_mingju` VALUES (944, '吴淑姬', '烟霏霏。雪霏霏。雪向梅花枝上堆。', '长相思令·烟霏霏', '', '四季');
INSERT INTO `t_mingju` VALUES (945, '韩愈', '草树知春不久归，百般红紫斗芳菲。', '晚春', '', '四季');
INSERT INTO `t_mingju` VALUES (946, '岑参', '庭树不知人去尽，春来还发旧时花。', '山房春事二首', '', '四季');
INSERT INTO `t_mingju` VALUES (947, '虞集', '报道先生归也，杏花春雨江南。', '风入松·寄柯敬仲', '', '四季');
INSERT INTO `t_mingju` VALUES (948, '杜甫', '映阶碧草自春色，隔叶黄鹂空好音。', '蜀相', '', '四季');
INSERT INTO `t_mingju` VALUES (949, '郑燮', '晨起开门雪满山，雪晴云淡日光寒。', '山中雪后', '', '四季');
INSERT INTO `t_mingju` VALUES (950, '周朴', '桃花春色暖先开，明媚谁人不看来。', '桃花', '', '四季');
INSERT INTO `t_mingju` VALUES (951, '白居易', '漠漠秋云起，稍稍夜寒生。', '微雨夜行', '', '四季');
INSERT INTO `t_mingju` VALUES (952, '黄庭坚', '黄菊枝头生晓寒。人生莫放酒杯干。', '鹧鸪天·坐中有眉山隐客史应之和前韵', '', '四季');
INSERT INTO `t_mingju` VALUES (953, '杜牧', '雨暗残灯棋散后，酒醒孤枕雁来初。', '齐安郡晚秋', '', '四季');
INSERT INTO `t_mingju` VALUES (954, '苏轼', '料峭春风吹酒醒，微冷，山头斜照却相迎。', '定风波·三月七日', '', '四季');
INSERT INTO `t_mingju` VALUES (955, '岑参', '瀚海阑干百丈冰，愁云惨淡万里凝。', '白雪歌送武判官归京', '', '四季');
INSERT INTO `t_mingju` VALUES (956, '朱敦儒', '幸遇三杯酒好，况逢一朵花新。', '西江月·世事短如春梦', '', '四季');
INSERT INTO `t_mingju` VALUES (957, '秦观', '月明船笛参差起，风定池莲自在香。', '纳凉', '', '四季');
INSERT INTO `t_mingju` VALUES (958, '卢纶', '家在梦中何日到，春来江上几人还？', '长安春望', '', '四季');
INSERT INTO `t_mingju` VALUES (959, '韦应物', '怀君属秋夜，散步咏凉天。', '秋夜寄邱员外 / 秋夜寄丘二十二员外', '', '四季');
INSERT INTO `t_mingju` VALUES (960, '杜牧', '狂风落尽深红色，绿叶成阴子满枝。', '怅诗', '', '四季');
INSERT INTO `t_mingju` VALUES (961, '武元衡', '杨柳阴阴细雨晴，残花落尽见流莺。', '春兴', '', '四季');
INSERT INTO `t_mingju` VALUES (962, '顾太清', '小扇引微凉，悠悠夏日长。', '菩萨蛮·端午日咏盆中菊', '', '四季');
INSERT INTO `t_mingju` VALUES (963, '马致远', '天将暮，雪乱舞，半梅花半飘柳絮。', '寿阳曲·江天暮雪', '', '四季');
INSERT INTO `t_mingju` VALUES (964, '刘长卿', '柴门闻犬吠，风雪夜归人。', '逢雪宿芙蓉山主人', '', '四季');
INSERT INTO `t_mingju` VALUES (965, '苏轼', '莺初解语，最是一年春好处。', '减字木兰花·莺初解语', '', '四季');
INSERT INTO `t_mingju` VALUES (966, '庄子及门徒', '秋水时至，百川灌河。', '秋​水​(节​选)', '', '四季');
INSERT INTO `t_mingju` VALUES (967, '毛泽东', '风雨送春归，飞雪迎春到。', '卜算子·咏梅', '', '四季');
INSERT INTO `t_mingju` VALUES (968, '王令', '子规夜半犹啼血，不信东风唤不回。', '送春', '', '四季');
INSERT INTO `t_mingju` VALUES (969, '杨万里', '秋气堪悲未必然，轻寒正是可人天。', '秋凉晚步', '', '四季');
INSERT INTO `t_mingju` VALUES (970, '李煜', '冉冉秋光留不住，满阶红叶暮。', '谢新恩·冉冉秋光留不住', '', '四季');
INSERT INTO `t_mingju` VALUES (971, '曹组', '竹外一枝斜，想佳人，天寒日暮。', '蓦山溪·梅', '', '四季');
INSERT INTO `t_mingju` VALUES (972, '杜甫', '锦江春色来天地，玉垒浮云变古今。', '登楼', '', '四季');
INSERT INTO `t_mingju` VALUES (973, '欧阳詹', '云尽月如练，水凉风似秋。', '荆南夏夜水楼怀昭丘直上人云梦李莘', '', '四季');
INSERT INTO `t_mingju` VALUES (974, '李白', '笛中闻折柳，春色未曾看。', '塞下曲六首·其一', '', '四季');
INSERT INTO `t_mingju` VALUES (975, '李白', '燕草如碧丝，秦桑低绿枝。', '春思', '', '四季');
INSERT INTO `t_mingju` VALUES (976, '刘禹锡', '山明水净夜来霜，数树深红出浅黄。', '秋词二首', '', '四季');
INSERT INTO `t_mingju` VALUES (977, '李清照', '梅定妒，菊应羞。画阑开处冠中秋。', '鹧鸪天·桂花', '', '四季');
INSERT INTO `t_mingju` VALUES (978, '王昌龄', '饮马渡秋水，水寒风似刀。', '塞下曲四首', '', '四季');
INSERT INTO `t_mingju` VALUES (979, '司马光', '更无柳絮因风起，惟有葵花向日倾。', '客中初夏', '', '四季');
INSERT INTO `t_mingju` VALUES (980, '王安石', '晴日暖风生麦气，绿阴幽草胜花时。', '初夏即事', '', '四季');
INSERT INTO `t_mingju` VALUES (981, '欧阳修', '荷花开后西湖好，载酒来时。', '采桑子·荷花开后西湖好', '', '四季');
INSERT INTO `t_mingju` VALUES (982, '韩愈', '新年都未有芳华，二月初惊见草芽。', '春雪', '', '四季');
INSERT INTO `t_mingju` VALUES (983, '戚继光', '繁霜尽是心头血，洒向千峰秋叶丹。', '望阙台', '', '四季');
INSERT INTO `t_mingju` VALUES (984, '李商隐', '远书归梦两悠悠，只有空床敌素秋。', '端居', '', '四季');
INSERT INTO `t_mingju` VALUES (985, '李清照', '暖雨晴风初破冻，柳眼梅腮，已觉春心动。', '蝶恋花·暖雨晴风初破冻', '', '四季');
INSERT INTO `t_mingju` VALUES (986, '辛弃疾', '欲说还休，却道“天凉好个秋”！', '丑奴儿·书博山道中壁', '', '四季');
INSERT INTO `t_mingju` VALUES (987, '许浑', '红叶晚萧萧，长亭酒一瓢。', '秋日赴阙题潼关驿楼 / 行次潼关逢魏扶东归', '', '四季');
INSERT INTO `t_mingju` VALUES (988, '杜甫', '戍鼓断人行，边秋一雁声。', '月夜忆舍弟', '', '四季');
INSERT INTO `t_mingju` VALUES (989, '徐俯', '双飞燕子几时回？夹岸桃花蘸水开。', '春游湖', '', '四季');
INSERT INTO `t_mingju` VALUES (990, '苏舜钦', '树阴满地日当午，梦觉流莺时一声。', '夏意', '', '四季');
INSERT INTO `t_mingju` VALUES (991, '葛长庚', '江上春山远，山下暮云长。', '水调歌头·江上春山远', '', '四季');
INSERT INTO `t_mingju` VALUES (992, '贾至', '草色青青柳色黄，桃花历乱李花香。', '春思二首·其一', '', '四季');
INSERT INTO `t_mingju` VALUES (993, '白居易', '风吹古木晴天雨，月照平沙夏夜霜。', '江楼夕望招客', '', '四季');
INSERT INTO `t_mingju` VALUES (994, '李白', '南湖秋水夜无烟，耐可乘流直上天。', '游洞庭湖五首·其二', '', '四季');
INSERT INTO `t_mingju` VALUES (995, '杜牧', '深秋帘幕千家雨，落日楼台一笛风。', '题宣州开元寺水阁阁下宛溪夹溪居人', '', '四季');
INSERT INTO `t_mingju` VALUES (996, '道源', '万树寒无色，南枝独有花。', '早梅', '', '四季');
INSERT INTO `t_mingju` VALUES (997, '李重元', '风蒲猎猎小池塘。过雨荷花满院香。', '忆王孙·夏词', '', '四季');
INSERT INTO `t_mingju` VALUES (998, '李煜', '浪花有意千里雪，桃花无言一队春。', '渔父·浪花有意千里雪', '', '四季');
INSERT INTO `t_mingju` VALUES (999, '杜甫', '夜雨剪春韭，新炊间黄粱。', '赠卫八处士', '', '四季');
INSERT INTO `t_mingju` VALUES (1000, '顾彩', '秋风吹到江村，正黄昏，寂寞梧桐夜雨不开门。', '相见欢·秋风吹到江村', '', '四季');
INSERT INTO `t_mingju` VALUES (1001, '元稹', '曾经沧海难为水，除却巫山不是云。', '离思五首·其四', '', '山水');
INSERT INTO `t_mingju` VALUES (1002, '佚名', '山无陵，江水为竭，冬雷震震，夏雨雪。天地合，乃敢与君绝。', '上邪', '', '山水');
INSERT INTO `t_mingju` VALUES (1003, '李清照', '花自飘零水自流。一种相思，两处闲愁。', '一剪梅·红藕香残玉簟秋', '', '山水');
INSERT INTO `t_mingju` VALUES (1004, '杨慎', '滚滚长江东逝水，浪花淘尽英雄。', '临江仙·滚滚长江东逝水', '', '山水');
INSERT INTO `t_mingju` VALUES (1005, '李白', '抽刀断水水更流，举杯消愁愁更愁。', '宣州谢脁楼饯别校书叔云 / 陪侍御叔华登楼歌', '', '山水');
INSERT INTO `t_mingju` VALUES (1006, '王维', '行到水穷处，坐看云起时。', '终南别业 / 初至山中 / 入山寄城中故人', '', '山水');
INSERT INTO `t_mingju` VALUES (1007, '林逋', '疏影横斜水清浅，暗香浮动月黄昏。', '山园小梅·其一', '', '山水');
INSERT INTO `t_mingju` VALUES (1008, '苏麟', '近水楼台先得月，向阳花木易为春。', '断句', '', '山水');
INSERT INTO `t_mingju` VALUES (1009, '许浑', '溪云初起日沉阁，山雨欲来风满楼。', '咸阳城东楼 / 咸阳城西楼晚眺 / 西门', '', '山水');
INSERT INTO `t_mingju` VALUES (1010, '李煜', '问君能有几多愁？恰似一江春水向东流。', '虞美人·春花秋月何时了', '', '山水');
INSERT INTO `t_mingju` VALUES (1011, '李白', '凤凰台上凤凰游，凤去台空江自流。', '登金陵凤凰台', '', '山水');
INSERT INTO `t_mingju` VALUES (1012, '王维', '空山新雨后，天气晚来秋。', '山居秋暝', '', '山水');
INSERT INTO `t_mingju` VALUES (1013, '李贺', '男儿何不带吴钩，收取关山五十州。', '南园十三首·其五', '', '山水');
INSERT INTO `t_mingju` VALUES (1014, '马致远', '枯藤老树昏鸦，小桥流水人家，古道西风瘦马。', '天净沙·秋思', '', '山水');
INSERT INTO `t_mingju` VALUES (1015, '杨慎', '青山依旧在，几度夕阳红。', '临江仙·滚滚长江东逝水', '', '山水');
INSERT INTO `t_mingju` VALUES (1016, '白居易', '人间四月芳菲尽，山寺桃花始盛开。', '大林寺桃花', '', '山水');
INSERT INTO `t_mingju` VALUES (1017, '辛弃疾', '我见青山多妩媚，料青山见我应如是。', '贺新郎·甚矣吾衰矣', '', '山水');
INSERT INTO `t_mingju` VALUES (1018, '李煜', '世事漫随流水，算来一梦浮生。', '乌夜啼·昨夜风兼雨', '', '山水');
INSERT INTO `t_mingju` VALUES (1019, '杜甫', '江碧鸟逾白，山青花欲燃。', '绝句二首', '', '山水');
INSERT INTO `t_mingju` VALUES (1020, '李之仪', '日日思君不见君，共饮长江水。', '卜算子·我住长江头', '', '山水');
INSERT INTO `t_mingju` VALUES (1021, '王勃', '落霞与孤鹜齐飞，秋水共长天一色。', '滕王阁序', '', '山水');
INSERT INTO `t_mingju` VALUES (1022, '佚名', '风萧萧兮易水寒，壮士一去兮不复还。', '荆轲歌 / 渡易水歌', '', '山水');
INSERT INTO `t_mingju` VALUES (1023, '刘禹锡', '沉舟侧畔千帆过，病树前头万木春。', '酬乐天扬州初逢席上见赠', '', '山水');
INSERT INTO `t_mingju` VALUES (1024, '林升', '山外青山楼外楼，西湖歌舞几时休？', '题临安邸', '', '山水');
INSERT INTO `t_mingju` VALUES (1025, '毛泽东', '独立寒秋，湘江北去，橘子洲头。', '沁园春·长沙', '', '山水');
INSERT INTO `t_mingju` VALUES (1026, '佚名', '盈盈一水间，脉脉不得语。', '迢迢牵牛星', '', '山水');
INSERT INTO `t_mingju` VALUES (1027, '苏轼', '大江东去，浪淘尽，千古风流人物。', '念奴娇·赤壁怀古', '', '山水');
INSERT INTO `t_mingju` VALUES (1028, '苏轼', '竹外桃花三两枝，春江水暖鸭先知。', '惠崇春江晚景 / 惠崇春江晓景', '', '山水');
INSERT INTO `t_mingju` VALUES (1029, '欧阳修', '渐行渐远渐无书，水阔鱼沉何处问。', '玉楼春·别后不知君远近', '', '山水');
INSERT INTO `t_mingju` VALUES (1030, '王维', '人闲桂花落，夜静春山空。', '鸟鸣涧', '', '山水');
INSERT INTO `t_mingju` VALUES (1031, '纳兰性德', '山一程，水一程，身向榆关那畔行，夜深千帐灯。', '长相思·山一程', '', '山水');
INSERT INTO `t_mingju` VALUES (1032, '杜甫', '无边落木萧萧下，不尽长江滚滚来。', '登高', '', '山水');
INSERT INTO `t_mingju` VALUES (1033, '佚名', '海水梦悠悠，君愁我亦愁。', '西洲曲', '', '山水');
INSERT INTO `t_mingju` VALUES (1034, '李煜', '流水落花春去也，天上人间。', '浪淘沙令·帘外雨潺潺', '', '山水');
INSERT INTO `t_mingju` VALUES (1035, '张若虚', '春江潮水连海平，海上明月共潮生。', '春江花月夜', '', '山水');
INSERT INTO `t_mingju` VALUES (1036, '陆游', '山重水复疑无路，柳暗花明又一村。', '游山西村', '', '山水');
INSERT INTO `t_mingju` VALUES (1037, '李煜', '自是人生长恨水长东。', '相见欢·林花谢了春红', '', '山水');
INSERT INTO `t_mingju` VALUES (1038, '郑燮', '咬定青山不放松，立根原在破岩中。', '竹石', '', '山水');
INSERT INTO `t_mingju` VALUES (1039, '王维', '远看山有色，近听水无声。', '画', '', '山水');
INSERT INTO `t_mingju` VALUES (1040, '韦庄', '春水碧于天，画船听雨眠。', '菩萨蛮·人人尽说江南好', '', '山水');
INSERT INTO `t_mingju` VALUES (1041, '王维', '大漠孤烟直，长河落日圆。', '使至塞上', '', '山水');
INSERT INTO `t_mingju` VALUES (1042, '陶渊明', '采菊东篱下，悠然见南山。', '饮酒·其五', '', '山水');
INSERT INTO `t_mingju` VALUES (1043, '白居易', '一道残阳铺水中，半江瑟瑟半江红。', '暮江吟', '', '山水');
INSERT INTO `t_mingju` VALUES (1044, '李之仪', '我住长江头，君住长江尾。', '卜算子·我住长江头', '', '山水');
INSERT INTO `t_mingju` VALUES (1045, '辛弃疾', '七八个星天外，两三点雨山前。', '西江月·夜行黄沙道中', '', '山水');
INSERT INTO `t_mingju` VALUES (1046, '杜甫', '星垂平野阔，月涌大江流。', '旅夜书怀', '', '山水');
INSERT INTO `t_mingju` VALUES (1047, '晏殊', '满目山河空念远，落花风雨更伤春。', '浣溪沙·一向年光有限身', '', '山水');
INSERT INTO `t_mingju` VALUES (1048, '晏殊', '欲寄彩笺兼尺素，山长水阔知何处。', '蝶恋花·槛菊愁烟兰泣露', '', '山水');
INSERT INTO `t_mingju` VALUES (1049, '李商隐', '君问归期未有期，巴山夜雨涨秋池。', '夜雨寄北', '', '山水');
INSERT INTO `t_mingju` VALUES (1050, '苏轼', '水光潋滟晴方好，山色空蒙雨亦奇。', '饮湖上初晴后雨二首·其二', '', '山水');
INSERT INTO `t_mingju` VALUES (1051, '杜甫', '会当凌绝顶，一览众山小。', '望岳', '', '山水');
INSERT INTO `t_mingju` VALUES (1052, '白居易', '借问江潮与海水，何似君情与妾心？', '浪淘沙·借问江潮与海水', '', '山水');
INSERT INTO `t_mingju` VALUES (1053, '王观', '水是眼波横，山是眉峰聚。', '卜算子·送鲍浩然之浙东', '', '山水');
INSERT INTO `t_mingju` VALUES (1054, '杜甫', '迟日江山丽，春风花草香。', '绝句二首', '', '山水');
INSERT INTO `t_mingju` VALUES (1055, '陆游', '此生谁料，心在天山，身老沧洲。', '诉衷情·当年万里觅封侯', '', '山水');
INSERT INTO `t_mingju` VALUES (1056, '柳宗元', '千山鸟飞绝，万径人踪灭。', '江雪', '', '山水');
INSERT INTO `t_mingju` VALUES (1057, '叶绍翁', '萧萧梧叶送寒声，江上秋风动客情。', '夜书所见', '', '山水');
INSERT INTO `t_mingju` VALUES (1058, '李白', '明月出天山，苍茫云海间。', '关山月', '', '山水');
INSERT INTO `t_mingju` VALUES (1059, '张若虚', '江畔何人初见月？江月何年初照人？', '春江花月夜', '', '山水');
INSERT INTO `t_mingju` VALUES (1060, '李贺', '大漠沙如雪，燕山月似钩。', '马诗二十三首·其五', '', '山水');
INSERT INTO `t_mingju` VALUES (1061, '刘长卿', '日暮苍山远，天寒白屋贫。', '逢雪宿芙蓉山主人', '', '山水');
INSERT INTO `t_mingju` VALUES (1062, '柳宗元', '孤舟蓑笠翁，独钓寒江雪。', '江雪', '', '山水');
INSERT INTO `t_mingju` VALUES (1063, '杨万里', '毕竟西湖六月中，风光不与四时同。', '晓出净慈寺送林子方', '', '山水');
INSERT INTO `t_mingju` VALUES (1064, '杜牧', '青山隐隐水迢迢，秋尽江南草未凋。', '寄扬州韩绰判官', '', '山水');
INSERT INTO `t_mingju` VALUES (1065, '陶渊明', '少无适俗韵，性本爱丘山。', '归园田居·其一', '', '山水');
INSERT INTO `t_mingju` VALUES (1066, '苏轼', '欲把西湖比西子，淡妆浓抹总相宜。', '饮湖上初晴后雨二首·其二', '', '山水');
INSERT INTO `t_mingju` VALUES (1067, '白居易', '天平山上白云泉，云自无心水自闲。', '白云泉', '', '山水');
INSERT INTO `t_mingju` VALUES (1068, '刘禹锡', '山不在高，有仙则名。水不在深，有龙则灵。', '陋室铭', '', '山水');
INSERT INTO `t_mingju` VALUES (1069, '白居易', '日出江花红胜火，春来江水绿如蓝。', '忆江南·江南好', '', '山水');
INSERT INTO `t_mingju` VALUES (1070, '孟浩然', '野旷天低树，江清月近人。', '宿建德江', '', '山水');
INSERT INTO `t_mingju` VALUES (1071, '朱庭玉', '庭前落尽梧桐，水边开彻芙蓉。', '天净沙·秋', '', '山水');
INSERT INTO `t_mingju` VALUES (1072, '张志和', '西塞山前白鹭飞，桃花流水鳜鱼肥。', '渔歌子·西塞山前白鹭飞', '', '山水');
INSERT INTO `t_mingju` VALUES (1073, '李贺', '昆山玉碎凤凰叫，芙蓉泣露香兰笑。', '李凭箜篌引', '', '山水');
INSERT INTO `t_mingju` VALUES (1074, '白朴', '青山绿水，白草红叶黄花。', '天净沙·秋', '', '山水');
INSERT INTO `t_mingju` VALUES (1075, '王之涣', '黄河远上白云间，一片孤城万仞山。', '凉州词二首·其一', '', '山水');
INSERT INTO `t_mingju` VALUES (1076, '苏轼', '黑云翻墨未遮山，白雨跳珠乱入船。', '六月二十七日望湖楼醉书', '', '山水');
INSERT INTO `t_mingju` VALUES (1077, '王维', '江流天地外，山色有无中。', '汉江临泛 / 汉江临眺', '', '山水');
INSERT INTO `t_mingju` VALUES (1078, '佚名', '伯牙鼓琴，志在高山', '伯牙绝弦', '', '山水');
INSERT INTO `t_mingju` VALUES (1079, '杜牧', '千里莺啼绿映红，水村山郭酒旗风。', '江南春', '', '山水');
INSERT INTO `t_mingju` VALUES (1080, '李白', '相看两不厌，只有敬亭山。', '独坐敬亭山', '', '山水');
INSERT INTO `t_mingju` VALUES (1081, '贺知章', '唯有门前镜湖水，春风不改旧时波。', '回乡偶书二首', '', '山水');
INSERT INTO `t_mingju` VALUES (1082, '王昌龄', '但使龙城飞将在，不教胡马度阴山。', '出塞二首', '', '山水');
INSERT INTO `t_mingju` VALUES (1083, '朱熹', '胜日寻芳泗水滨，无边光景一时新。', '春日', '', '山水');
INSERT INTO `t_mingju` VALUES (1084, '苏轼', '不识庐山真面目，只缘身在此山中。', '题西林壁', '', '山水');
INSERT INTO `t_mingju` VALUES (1085, '白居易', '汴水流，泗水流，流到瓜州古渡头。吴山点点愁。', '长相思·汴水流', '', '山水');
INSERT INTO `t_mingju` VALUES (1086, '高适', '青枫江上秋帆远，白帝城边古木疏。', '送李少府贬峡中王少府贬长沙', '', '山水');
INSERT INTO `t_mingju` VALUES (1087, '张孝祥', '满载一船秋色，平铺十里湖光。', '西江月·阻风山峰下', '', '山水');
INSERT INTO `t_mingju` VALUES (1088, '辛弃疾', '千古兴亡多少事？悠悠。不尽长江滚滚流。', '南乡子·登京口北固亭有怀', '', '山水');
INSERT INTO `t_mingju` VALUES (1089, '李白', '山随平野尽，江入大荒流。', '渡荆门送别', '', '山水');
INSERT INTO `t_mingju` VALUES (1090, '宋方壶', '青山相待，白云相爱，梦不到紫罗袍共黄金带。', '山坡羊·道情', '', '山水');
INSERT INTO `t_mingju` VALUES (1091, '李煜', '一重山，两重山。山远天高烟水寒，相思枫叶丹。', '长相思·一重山', '', '山水');
INSERT INTO `t_mingju` VALUES (1092, '范仲淹', '碧云天，黄叶地，秋色连波，波上寒烟翠。', '苏幕遮·怀旧', '', '山水');
INSERT INTO `t_mingju` VALUES (1093, '王昌龄', '青海长云暗雪山，孤城遥望玉门关。', '从军行七首·其四', '', '山水');
INSERT INTO `t_mingju` VALUES (1094, '杜牧', '烟笼寒水月笼沙，夜泊秦淮近酒家。', '泊秦淮', '', '山水');
INSERT INTO `t_mingju` VALUES (1095, '杜牧', '远上寒山石径斜，白云深处有人家。', '山行', '', '山水');
INSERT INTO `t_mingju` VALUES (1096, '李煜', '四十年来家国，三千里地山河。', '破阵子·四十年来家国', '', '山水');
INSERT INTO `t_mingju` VALUES (1097, '陆游', '三万里河东入海，五千仞岳上摩天。', '秋夜将晓出篱门迎凉有感', '', '山水');
INSERT INTO `t_mingju` VALUES (1098, '毛泽东', '雄关漫道真如铁，而今迈步从头越。', '忆秦娥·娄山关', '', '山水');
INSERT INTO `t_mingju` VALUES (1099, '朱熹', '问渠哪得清如许？为有源头活水来。', '活水亭观书有感二首·其一', '', '山水');
INSERT INTO `t_mingju` VALUES (1100, '温庭筠', '过尽千帆皆不是，斜晖脉脉水悠悠。', '望江南·梳洗罢', '', '山水');
INSERT INTO `t_mingju` VALUES (1101, '温庭筠', '过尽千帆皆不是，斜晖脉脉水悠悠。', '望江南·梳洗罢', '', '山水');
INSERT INTO `t_mingju` VALUES (1102, '李白', '峨眉山月半轮秋，影入平羌江水流。', '峨眉山月歌', '', '山水');
INSERT INTO `t_mingju` VALUES (1103, '李白', '桃花潭水深千尺，不及汪伦送我情。', '赠汪伦', '', '山水');
INSERT INTO `t_mingju` VALUES (1104, '李白', '世间行乐亦如此，古来万事东流水。', '梦游天姥吟留别 / 别东鲁诸公', '', '山水');
INSERT INTO `t_mingju` VALUES (1105, '王湾', '海日生残夜，江春入旧年。', '次北固山下', '', '山水');
INSERT INTO `t_mingju` VALUES (1106, '李白', '朝辞白帝彩云间，千里江陵一日还。', '早发白帝城 / 白帝下江陵', '', '山水');
INSERT INTO `t_mingju` VALUES (1107, '张继', '姑苏城外寒山寺，夜半钟声到客船。', '枫桥夜泊 / 夜泊枫江', '', '山水');
INSERT INTO `t_mingju` VALUES (1108, '杜甫', '渭北春天树，江东日暮云。', '春日忆李白', '', '山水');
INSERT INTO `t_mingju` VALUES (1109, '刘禹锡', '杨柳青青江水平，闻郎江上踏歌声。', '竹枝词二首·其一', '', '山水');
INSERT INTO `t_mingju` VALUES (1110, '佚名', '敕勒川，阴山下。天似穹庐，笼盖四野。', '敕勒歌', '', '山水');
INSERT INTO `t_mingju` VALUES (1111, '王之涣', '白日依山尽，黄河入海流。', '登鹳雀楼', '', '山水');
INSERT INTO `t_mingju` VALUES (1112, '李白', '五月天山雪，无花只有寒。', '塞下曲六首·其一', '', '山水');
INSERT INTO `t_mingju` VALUES (1113, '刘禹锡', '湖光秋月两相和，潭面无风镜未磨。', '望洞庭', '', '山水');
INSERT INTO `t_mingju` VALUES (1114, '辛弃疾', '人间万事，毫发常重泰山轻。', '水调歌头·壬子三山被召陈端仁给事饮饯席上作', '', '山水');
INSERT INTO `t_mingju` VALUES (1115, '周邦彦', '叶上初阳干宿雨、水面清圆，一一风荷举。', '苏幕遮·燎沉香', '', '山水');
INSERT INTO `t_mingju` VALUES (1116, '李白', '燕山雪花大如席，片片吹落轩辕台。', '北风行', '', '山水');
INSERT INTO `t_mingju` VALUES (1117, '刘禹锡', '九曲黄河万里沙，浪淘风簸自天涯。', '浪淘沙·九曲黄河万里沙', '', '山水');
INSERT INTO `t_mingju` VALUES (1118, '李白', '日照香炉生紫烟，遥看瀑布挂前川。', '望庐山瀑布', '', '山水');
INSERT INTO `t_mingju` VALUES (1119, '李白', '平林漠漠烟如织，寒山一带伤心碧。', '菩萨蛮·平林漠漠烟如织', '', '山水');
INSERT INTO `t_mingju` VALUES (1120, '辛弃疾', '青山遮不住，毕竟东流去。', '菩萨蛮·书江西造口壁', '', '山水');
INSERT INTO `t_mingju` VALUES (1121, '于谦', '千锤万凿出深山，烈火焚烧若等闲。', '石灰吟', '', '山水');
INSERT INTO `t_mingju` VALUES (1122, '贾岛', '只在此山中，云深不知处。', '寻隐者不遇 / 孙革访羊尊师诗', '', '山水');
INSERT INTO `t_mingju` VALUES (1123, '刘禹锡', '巴山楚水凄凉地，二十三年弃置身。', '酬乐天扬州初逢席上见赠', '', '山水');
INSERT INTO `t_mingju` VALUES (1124, '陶渊明', '种豆南山下，草盛豆苗稀。', '归园田居·其三', '', '山水');
INSERT INTO `t_mingju` VALUES (1125, '韦庄', '江雨霏霏江草齐，六朝如梦鸟空啼。', '台城', '', '山水');
INSERT INTO `t_mingju` VALUES (1126, '翁卷', '绿遍山原白满川，子规声里雨如烟。', '乡村四月', '', '山水');
INSERT INTO `t_mingju` VALUES (1127, '王维', '空山不见人，但闻人语响。', '鹿柴', '', '山水');
INSERT INTO `t_mingju` VALUES (1128, '钱起', '曲终人不见，江上数峰青。', '省试湘灵鼓瑟', '', '山水');
INSERT INTO `t_mingju` VALUES (1129, '王昌龄', '青山一道同云雨，明月何曾是两乡。', '送柴侍御', '', '山水');
INSERT INTO `t_mingju` VALUES (1130, '王绩', '树树皆秋色，山山唯落晖。', '野望', '', '山水');
INSERT INTO `t_mingju` VALUES (1131, '王湾', '客路青山外，行舟绿水前。', '次北固山下', '', '山水');
INSERT INTO `t_mingju` VALUES (1132, '李商隐', '深知身在情长在，怅望江头江水声。', '暮秋独游曲江', '', '山水');
INSERT INTO `t_mingju` VALUES (1133, '崔颢', '日暮乡关何处是？烟波江上使人愁。', '黄鹤楼 / 登黄鹤楼', '', '山水');
INSERT INTO `t_mingju` VALUES (1134, '辛弃疾', '郁孤台下清江水，中间多少行人泪？', '菩萨蛮·书江西造口壁', '', '山水');
INSERT INTO `t_mingju` VALUES (1135, '李白', '两岸猿声啼不住，轻舟已过万重山。', '早发白帝城 / 白帝下江陵', '', '山水');
INSERT INTO `t_mingju` VALUES (1136, '黄庭坚', '落木千山天远大，澄江一道月分明。', '登快阁', '', '山水');
INSERT INTO `t_mingju` VALUES (1137, '王驾', '鹅湖山下稻粱肥，豚栅鸡栖半掩扉。', '社日', '', '山水');
INSERT INTO `t_mingju` VALUES (1138, '李白', '树深时见鹿，溪午不闻钟。', '访戴天山道士不遇', '', '山水');
INSERT INTO `t_mingju` VALUES (1139, '李白', '孤帆远影碧空尽，唯见长江天际流。', '黄鹤楼送孟浩然之广陵', '', '山水');
INSERT INTO `t_mingju` VALUES (1140, '辛弃疾', '楚天千里清秋，水随天去秋无际。', '水龙吟·登建康赏心亭', '', '山水');
INSERT INTO `t_mingju` VALUES (1141, '李白', '天门中断楚江开，碧水东流至此回。', '望天门山', '', '山水');
INSERT INTO `t_mingju` VALUES (1142, '李白', '欲渡黄河冰塞川，将登太行雪满山。', '行路难·其一', '', '山水');
INSERT INTO `t_mingju` VALUES (1143, '王安石', '一水护田将绿绕，两山排闼送青来。', '书湖阴先生壁', '', '山水');
INSERT INTO `t_mingju` VALUES (1144, '谢朓', '余霞散成绮，澄江静如练。', '晚登三山还望京邑', '', '山水');
INSERT INTO `t_mingju` VALUES (1145, '孟浩然', '八月湖水平，涵虚混太清。', '望洞庭湖赠张丞相 / 临洞庭', '', '山水');
INSERT INTO `t_mingju` VALUES (1146, '寇准', '只有天在上，更无山与齐。', '咏华山', '', '山水');
INSERT INTO `t_mingju` VALUES (1147, '李白', '古人今人若流水，共看明月皆如此。', '把酒问月·故人贾淳令予问之', '', '山水');
INSERT INTO `t_mingju` VALUES (1148, '王昌龄', '寒雨连天夜入吴，平明送客楚山孤。', '芙蓉楼送辛渐二首', '', '山水');
INSERT INTO `t_mingju` VALUES (1149, '杜甫', '明日隔山岳，世事两茫茫。', '赠卫八处士', '', '山水');
INSERT INTO `t_mingju` VALUES (1150, '杜甫', '黄师塔前江水东，春光懒困倚微风。', '江畔独步寻花·其五', '', '山水');
INSERT INTO `t_mingju` VALUES (1151, '陶渊明', '春水满四泽，夏云多奇峰。', '四时', '', '山水');
INSERT INTO `t_mingju` VALUES (1152, '欧阳修', '醉翁之意不在酒，在乎山水之间也。', '醉翁亭记', '', '山水');
INSERT INTO `t_mingju` VALUES (1153, '白居易', '孤山寺北贾亭西，水面初平云脚低。', '钱塘湖春行', '', '山水');
INSERT INTO `t_mingju` VALUES (1154, '佚名', '涉江采芙蓉，兰泽多芳草。', '涉江采芙蓉', '', '山水');
INSERT INTO `t_mingju` VALUES (1155, '李白', '仍怜故乡水，万里送行舟。', '渡荆门送别', '', '山水');
INSERT INTO `t_mingju` VALUES (1156, '杜甫', '穿花蛱蝶深深见，点水蜻蜓款款飞。', '曲江二首', '', '山水');
INSERT INTO `t_mingju` VALUES (1157, '辛弃疾', '西北望长安，可怜无数山。', '菩萨蛮·书江西造口壁', '', '山水');
INSERT INTO `t_mingju` VALUES (1158, '李白', '登高壮观天地间，大江茫茫去不还。', '庐山谣寄卢侍御虚舟', '', '山水');
INSERT INTO `t_mingju` VALUES (1159, '王昌龄', '寒雨连江夜入吴，平明送客楚山孤。', '芙蓉楼送辛渐', '', '山水');
INSERT INTO `t_mingju` VALUES (1160, '曾几', '梅子黄时日日晴，小溪泛尽却山行。', '三衢道中', '', '山水');
INSERT INTO `t_mingju` VALUES (1161, '祖咏', '终南阴岭秀，积雪浮云端。', '终南望余雪', '', '山水');
INSERT INTO `t_mingju` VALUES (1162, '王维', '寒山转苍翠，秋水日潺湲。', '辋川闲居赠裴秀才迪', '', '山水');
INSERT INTO `t_mingju` VALUES (1163, '李白', '雁引愁心去，山衔好月来。', '与夏十二登岳阳楼', '', '山水');
INSERT INTO `t_mingju` VALUES (1164, '钱福', '朝看水东流，暮看日西坠。', '明日歌', '', '山水');
INSERT INTO `t_mingju` VALUES (1165, '白居易', '逢郎欲语低头笑，碧玉搔头落水中。', '采莲曲', '', '山水');
INSERT INTO `t_mingju` VALUES (1166, '杜甫', '昔闻洞庭水，今上岳阳楼。', '登岳阳楼', '', '山水');
INSERT INTO `t_mingju` VALUES (1167, '戴叔伦', '凉月如眉挂柳湾，越中山色镜中看。', '兰溪棹歌', '', '山水');
INSERT INTO `t_mingju` VALUES (1168, '李颀', '白日登山望烽火，黄昏饮马傍交河。', '古从军行', '', '山水');
INSERT INTO `t_mingju` VALUES (1169, '纳兰性德', '半生已分孤眠过，山枕檀痕涴。', '虞美人·曲阑深处重相见', '', '山水');
INSERT INTO `t_mingju` VALUES (1170, '刘禹锡', '遥望洞庭山水色，白银盘里一青螺。', '望洞庭', '', '山水');
INSERT INTO `t_mingju` VALUES (1171, '杨万里', '泉眼无声惜细流，树阴照水爱晴柔。', '小池', '', '山水');
INSERT INTO `t_mingju` VALUES (1172, '吴均', '风烟俱净，天山共色。', '与朱元思书', '', '山水');
INSERT INTO `t_mingju` VALUES (1173, '孟浩然', '绿树村边合，青山郭外斜。', '过故人庄', '', '山水');
INSERT INTO `t_mingju` VALUES (1174, '王安石', '京口瓜洲一水间，钟山只隔数重山。', '泊船瓜洲', '', '山水');
INSERT INTO `t_mingju` VALUES (1175, '李白', '若非群玉山头见，会向瑶台月下逢。', '清平调·其一', '', '山水');
INSERT INTO `t_mingju` VALUES (1176, '杜甫', '岱宗夫如何？齐鲁青未了。', '望岳', '', '山水');
INSERT INTO `t_mingju` VALUES (1177, '欧阳修', '平芜尽处是春山，行人更在春山外。', '踏莎行·候馆梅残', '', '山水');
INSERT INTO `t_mingju` VALUES (1178, '李白', '三山半落青天外，二水中分白鹭洲。', '登金陵凤凰台', '', '山水');
INSERT INTO `t_mingju` VALUES (1179, '李白', '青山横北郭，白水绕东城。', '送友人', '', '山水');
INSERT INTO `t_mingju` VALUES (1180, '辛弃疾', '江头未是风波恶，别有人间行路难！', '鹧鸪天·送人', '', '山水');
INSERT INTO `t_mingju` VALUES (1181, '苏轼', '料峭春风吹酒醒，微冷，山头斜照却相迎。', '定风波·三月七日', '', '山水');
INSERT INTO `t_mingju` VALUES (1182, '刘桢', '亭亭山上松，瑟瑟谷中风。', '赠从弟', '', '山水');
INSERT INTO `t_mingju` VALUES (1183, '晏几道', '离多最是，东西流水，终解两相逢。', '少年游·离多最是', '', '山水');
INSERT INTO `t_mingju` VALUES (1184, '纳兰性德', '骊山语罢清宵半，泪雨霖铃终不怨。', '木兰词·拟古决绝词柬友', '', '山水');
INSERT INTO `t_mingju` VALUES (1185, '罗隐', '不论平地与山尖，无限风光尽被占。', '蜂', '', '山水');
INSERT INTO `t_mingju` VALUES (1186, '曹操', '山不厌高，海不厌深。', '短歌行', '', '山水');
INSERT INTO `t_mingju` VALUES (1187, '杜甫', '群山万壑赴荆门，生长明妃尚有村。', '咏怀古迹五首·其三', '', '山水');
INSERT INTO `t_mingju` VALUES (1188, '李白', '请君试问东流水，别意与之谁短长。', '金陵酒肆留别', '', '山水');
INSERT INTO `t_mingju` VALUES (1189, '荀子', '故不登高山，不知天之高也；不临深溪，不知地之厚也；', '劝学', '', '山水');
INSERT INTO `t_mingju` VALUES (1190, '李白', '黄河之水天上来，奔流到海不复回。', '将进酒', '', '山水');
INSERT INTO `t_mingju` VALUES (1191, '韦庄', '人人尽说江南好，游人只合江南老。', '菩萨蛮·人人尽说江南好', '', '山水');
INSERT INTO `t_mingju` VALUES (1192, '庄子及门徒', '秋水时至，百川灌河。', '秋​水​(节​选)', '', '山水');
INSERT INTO `t_mingju` VALUES (1193, '张养浩', '峰峦如聚，波涛如怒，山河表里潼关路。', '山坡羊·潼关怀古', '', '山水');
INSERT INTO `t_mingju` VALUES (1194, '辛弃疾', '江晚正愁余，山深闻鹧鸪。', '菩萨蛮·书江西造口壁', '', '山水');
INSERT INTO `t_mingju` VALUES (1195, '李白', '两岸青山相对出，孤帆一片日边来。', '望天门山', '', '山水');
INSERT INTO `t_mingju` VALUES (1196, '杜甫', '锦江春色来天地，玉垒浮云变古今。', '登楼', '', '山水');
INSERT INTO `t_mingju` VALUES (1197, '王维', '山中相送罢，日暮掩柴扉。', '送别 / 山中送别 / 送友', '', '山水');
INSERT INTO `t_mingju` VALUES (1198, '刘长卿', '荷笠带斜阳，青山独归远。', '送灵澈上人', '', '山水');
INSERT INTO `t_mingju` VALUES (1199, '常建', '山光悦鸟性，潭影空人心。', '题破山寺后禅院', '', '山水');
INSERT INTO `t_mingju` VALUES (1200, '辛弃疾', '浮天水送无穷树，带雨云埋一半山。', '鹧鸪天·送人', '', '山水');
INSERT INTO `t_mingju` VALUES (1201, '杜甫', '玉露凋伤枫树林，巫山巫峡气萧森。', '秋兴八首·其一', '', '山水');
INSERT INTO `t_mingju` VALUES (1202, '李白', '飞流直下三千尺，疑是银河落九天。', '望庐山瀑布', '', '山水');
INSERT INTO `t_mingju` VALUES (1203, '辛弃疾', '乘风好去，长空万里，直下看山河。', '太常引·建康中秋夜为吕叔潜赋', '', '山水');
INSERT INTO `t_mingju` VALUES (1204, '欧阳修', '荷花开后西湖好，载酒来时。', '采桑子·荷花开后西湖好', '', '山水');
INSERT INTO `t_mingju` VALUES (1205, '秦观', '漠漠轻寒上小楼。晓阴无赖似穷秋。淡烟流水画屏幽。', '浣溪沙·漠漠轻寒上小楼', '', '山水');
INSERT INTO `t_mingju` VALUES (1206, '刘禹锡', '淮水东边旧时月，夜深还过女墙来。', '金陵五题·石头城', '', '山水');
INSERT INTO `t_mingju` VALUES (1207, '葛长庚', '江上春山远，山下暮云长。', '水调歌头·江上春山远', '', '山水');
INSERT INTO `t_mingju` VALUES (1208, '李白', '南湖秋水夜无烟，耐可乘流直上天。', '游洞庭湖五首·其二', '', '山水');
INSERT INTO `t_mingju` VALUES (1209, '白居易', '泰山不要欺毫末，颜子无心羡老彭。', '放言五首·其五', '', '山水');
INSERT INTO `t_mingju` VALUES (1210, '王勃', '长江悲已滞，万里念将归。', '山中', '', '山水');
INSERT INTO `t_mingju` VALUES (1211, '孟浩然', '气蒸云梦泽，波撼岳阳城。', '望洞庭湖赠张丞相 / 临洞庭湖赠张丞相', '', '山水');
INSERT INTO `t_mingju` VALUES (1212, '王维', '万壑树参天，千山响杜鹃。', '送梓州李使君', '', '山水');
INSERT INTO `t_mingju` VALUES (1213, '吴均', '山际见来烟，竹中窥落日。', '山中杂诗', '', '山水');
INSERT INTO `t_mingju` VALUES (1214, '白居易', '未能抛得杭州去，一半勾留是此湖。', '春题湖上', '', '山水');
INSERT INTO `t_mingju` VALUES (1215, '李斯', '河海不择细流，故能就其深；', '谏逐客书', '', '山水');
INSERT INTO `t_mingju` VALUES (1216, '苏轼', '燕子飞时，绿水人家绕。', '蝶恋花·春景', '', '山水');
INSERT INTO `t_mingju` VALUES (1217, '王维', '中岁颇好道，晚家南山陲。', '终南别业 / 初至山中 / 入山寄城中故人', '', '山水');
INSERT INTO `t_mingju` VALUES (1218, '柳中庸', '三春白雪归青冢，万里黄河绕黑山。', '征人怨 / 征怨', '', '山水');
INSERT INTO `t_mingju` VALUES (1219, '苏轼', '试上超然台上看，半壕春水一城花。', '望江南·超然台作', '', '山水');
INSERT INTO `t_mingju` VALUES (1220, '荀子', '不积小流，无以成江海。', '劝学', '', '山水');
INSERT INTO `t_mingju` VALUES (1221, '杜甫', '清江一曲抱村流，长夏江村事事幽。', '江村', '', '山水');
INSERT INTO `t_mingju` VALUES (1222, '方岳', '秋雨一何碧，山色倚晴空。', '水调歌头·平山堂用东坡韵', '', '山水');
INSERT INTO `t_mingju` VALUES (1223, '白居易', '最爱湖东行不足，绿杨阴里白沙堤。', '钱塘湖春行', '', '山水');
INSERT INTO `t_mingju` VALUES (1224, '王维', '山路元无雨，空翠湿人衣。', '山中', '', '山水');
INSERT INTO `t_mingju` VALUES (1225, '白居易', '蜀江水碧蜀山青，圣主朝朝暮暮情。', '长恨歌', '', '山水');
INSERT INTO `t_mingju` VALUES (1226, '白朴', '云收雨过波添，楼高水冷瓜甜，绿树阴垂画檐。', '天净沙·夏', '', '山水');
INSERT INTO `t_mingju` VALUES (1227, '纳兰性德', '最是繁丝摇落后，转教人忆春山。', '临江仙·寒柳', '', '山水');
INSERT INTO `t_mingju` VALUES (1228, '柳宗元', '欸乃一声山水绿。回看天际下中流，岩上无心云相逐。', '渔翁', '', '山水');
INSERT INTO `t_mingju` VALUES (1229, '王勃', '城阙辅三秦，风烟望五津。', '送杜少府之任蜀州 / 送杜少府之任蜀川', '', '山水');
INSERT INTO `t_mingju` VALUES (1230, '仲殊', '十里青山远，潮平路带沙。数声啼鸟怨年华。', '南柯子·十里青山远', '', '山水');
INSERT INTO `t_mingju` VALUES (1231, '白居易', '山寺月中寻桂子，郡亭枕上看潮头。', '忆江南·江南忆', '', '山水');
INSERT INTO `t_mingju` VALUES (1232, '李商隐', '蓬山此去无多路，青鸟殷勤为探看。', '无题·相见时难别亦难', '', '山水');
INSERT INTO `t_mingju` VALUES (1233, '杜甫', '舍南舍北皆春水，但见群鸥日日来。', '客至', '', '山水');
INSERT INTO `t_mingju` VALUES (1234, '卢仝', '湘江两岸花木深，美人不见愁人心。', '有所思', '', '山水');
INSERT INTO `t_mingju` VALUES (1235, '杜甫', '人生有情泪沾臆，江水江花岂终极！', '哀江头', '', '山水');
INSERT INTO `t_mingju` VALUES (1236, '白居易', '浔阳江头夜送客，枫叶荻花秋瑟瑟。', '琵琶行 / 琵琶引', '', '山水');
INSERT INTO `t_mingju` VALUES (1237, '王勃', '滕王高阁临江渚，佩玉鸣鸾罢歌舞。', '滕王阁诗', '', '山水');
INSERT INTO `t_mingju` VALUES (1238, '欧阳修', '百啭千声随意移，山花红紫树高低。', '画眉鸟', '', '山水');
INSERT INTO `t_mingju` VALUES (1239, '李白', '两水夹明镜，双桥落彩虹。', '秋登宣城谢脁北楼', '', '山水');
INSERT INTO `t_mingju` VALUES (1240, '杜牧', '南山与秋色，气势两相高。', '长安秋望', '', '山水');
INSERT INTO `t_mingju` VALUES (1241, '苏轼', '庐山烟雨浙江潮，未至千般恨不消。', '庐山烟雨浙江潮', '', '山水');
INSERT INTO `t_mingju` VALUES (1242, '张祜', '人生只合扬州死，禅智山光好墓田。', '纵游淮南', '', '山水');
INSERT INTO `t_mingju` VALUES (1243, '苏轼', '林断山明竹隐墙。乱蝉衰草小池塘。', '鹧鸪天·林断山明竹隐墙', '', '山水');
INSERT INTO `t_mingju` VALUES (1244, '孟浩然', '木落雁南度，北风江上寒。', '早寒江上有怀 / 早寒有怀 / 江上思归', '', '山水');
INSERT INTO `t_mingju` VALUES (1245, '李白', '别君去兮何时还？且放白鹿青崖间。须行即骑访名山。', '梦游天姥吟留别 / 别东鲁诸公', '', '山水');
INSERT INTO `t_mingju` VALUES (1246, '秦观', '山抹微云，天连衰草，画角声断谯门。', '满庭芳·山抹微云', '', '山水');
INSERT INTO `t_mingju` VALUES (1247, '司马光', '四月清和雨乍晴，南山当户转分明。', '客中初夏', '', '山水');
INSERT INTO `t_mingju` VALUES (1248, '王安石', '飞来山上千寻塔，闻说鸡鸣见日升。', '登飞来峰', '', '山水');
INSERT INTO `t_mingju` VALUES (1249, '李白', '黄河落天走东海，万里写入胸怀间。', '赠裴十四', '', '山水');
INSERT INTO `t_mingju` VALUES (1250, '欧阳修', '群芳过后西湖好，狼籍残红。', '采桑子·群芳过后西湖好', '', '山水');
INSERT INTO `t_mingju` VALUES (1251, '岑参', '一生大笑能几回，斗酒相逢须醉倒。', '凉州馆中与诸判官夜集', '', '食物');
INSERT INTO `t_mingju` VALUES (1252, '黄庭坚', '桃李春风一杯酒，江湖夜雨十年灯。', '寄黄几复', '', '食物');
INSERT INTO `t_mingju` VALUES (1253, '陆游', '红酥手，黄縢酒，满城春色宫墙柳。', '钗头凤·红酥手', '', '食物');
INSERT INTO `t_mingju` VALUES (1254, '杜牧', '一骑红尘妃子笑，无人知是荔枝来。', '过华清宫绝句三首', '', '食物');
INSERT INTO `t_mingju` VALUES (1255, '纳兰性德', '被酒莫惊春睡重，赌书消得泼茶香，当时只道是寻常。', '浣溪沙·谁念西风独自凉', '', '食物');
INSERT INTO `t_mingju` VALUES (1256, '白居易', '晚来天欲雪，能饮一杯无。', '问刘十九', '', '食物');
INSERT INTO `t_mingju` VALUES (1257, '刘过', '欲买桂花同载酒，终不似，少年游。', '唐多令·芦叶满汀洲', '', '食物');
INSERT INTO `t_mingju` VALUES (1258, '欧阳修', '把酒祝东风。且共从容。', '浪淘沙·把酒祝东风', '', '食物');
INSERT INTO `t_mingju` VALUES (1259, '范仲淹', '酒入愁肠，化作相思泪。', '苏幕遮·怀旧', '', '食物');
INSERT INTO `t_mingju` VALUES (1260, '李白', '花间一壶酒，独酌无相亲。', '月下独酌四首·其一', '', '食物');
INSERT INTO `t_mingju` VALUES (1261, '杜甫', '白日放歌须纵酒，青春作伴好还乡。', '闻官军收河南河北', '', '食物');
INSERT INTO `t_mingju` VALUES (1262, '韦庄', '遇酒且呵呵，人生能几何！', '菩萨蛮·劝君今夜须沈醉', '', '食物');
INSERT INTO `t_mingju` VALUES (1263, '黄公绍', '花无人戴，酒无人劝，醉也无人管。', '青玉案·年年社日停针线', '', '食物');
INSERT INTO `t_mingju` VALUES (1264, '张可久', '松花酿酒，春水煎茶。', '人月圆·山中书事', '', '食物');
INSERT INTO `t_mingju` VALUES (1265, '王维', '劝君更尽一杯酒，西出阳关无故人。', '渭城曲 / 送元二使安西', '', '食物');
INSERT INTO `t_mingju` VALUES (1266, '白居易', '绿蚁新醅酒，红泥小火炉。', '问刘十九', '', '食物');
INSERT INTO `t_mingju` VALUES (1267, '苏轼', '明月几时有？把酒问青天。', '水调歌头·丙辰中秋', '', '食物');
INSERT INTO `t_mingju` VALUES (1268, '王翰', '葡萄美酒夜光杯，欲饮琵琶马上催。', '凉州词二首·其一', '', '食物');
INSERT INTO `t_mingju` VALUES (1269, '李白', '兰陵美酒郁金香，玉碗盛来琥珀光。', '客中行 / 客中作', '', '食物');
INSERT INTO `t_mingju` VALUES (1270, '苏轼', '日啖荔枝三百颗，不辞长作岭南人。', '惠州一绝', '', '食物');
INSERT INTO `t_mingju` VALUES (1271, '李煜', '一壶酒，一竿身，快活如侬有几人。', '渔父·浪花有意千里雪', '', '食物');
INSERT INTO `t_mingju` VALUES (1272, '刘过', '欲买桂花同载酒，终不似，少年游。', '唐多令·芦叶满汀洲', '', '食物');
INSERT INTO `t_mingju` VALUES (1273, '李白', '我醉欲眠卿且去，明朝有意抱琴来。', '山中与幽人对酌', '', '食物');
INSERT INTO `t_mingju` VALUES (1274, '杜耒', '寒夜客来茶当酒，竹炉汤沸火初红。', '寒夜', '', '食物');
INSERT INTO `t_mingju` VALUES (1275, '李白', '风吹柳花满店香，吴姬压酒唤客尝。', '金陵酒肆留别', '', '食物');
INSERT INTO `t_mingju` VALUES (1276, '杜甫', '酒债寻常行处有，人生七十古来稀。', '曲江二首', '', '食物');
INSERT INTO `t_mingju` VALUES (1277, '李白', '且就洞庭赊月色，将船买酒白云边。', '游洞庭湖五首·其二', '', '食物');
INSERT INTO `t_mingju` VALUES (1278, '李白', '唯愿当歌对酒时，月光长照金樽里。', '把酒问月·故人贾淳令予问之', '', '食物');
INSERT INTO `t_mingju` VALUES (1279, '冯延巳', '春日宴，绿酒一杯歌一遍。', '长命女·春日宴', '', '食物');
INSERT INTO `t_mingju` VALUES (1280, '范仲淹', '浊酒一杯家万里，燕然未勒归无计。', '渔家傲·秋思', '', '食物');
INSERT INTO `t_mingju` VALUES (1281, '黄庭坚', '朱弦已为佳人绝，青眼聊因美酒横。', '登快阁', '', '食物');
INSERT INTO `t_mingju` VALUES (1282, '王维', '新丰美酒斗十千，咸阳游侠多少年。', '少年行四首', '', '食物');
INSERT INTO `t_mingju` VALUES (1283, '李清照', '昨夜雨疏风骤，浓睡不消残酒。', '如梦令·昨夜雨疏风骤', '', '食物');
INSERT INTO `t_mingju` VALUES (1284, '陆游', '莫笑农家腊酒浑，丰年留客足鸡豚。', '游山西村', '', '食物');
INSERT INTO `t_mingju` VALUES (1285, '曹操', '对酒当歌，人生几何！', '短歌行', '', '食物');
INSERT INTO `t_mingju` VALUES (1286, '李清照', '东篱把酒黄昏后，有暗香盈袖。', '醉花阴·薄雾浓云愁永昼', '', '食物');
INSERT INTO `t_mingju` VALUES (1287, '苏轼', '酒贱常愁客少，月明多被云妨。', '西江月·世事一场大梦', '', '食物');
INSERT INTO `t_mingju` VALUES (1288, '欧阳修', '醉翁之意不在酒，在乎山水之间也。', '醉翁亭记', '', '食物');
INSERT INTO `t_mingju` VALUES (1289, '李白', '两人对酌山花开，一杯一杯复一杯。', '山中与幽人对酌', '', '食物');
INSERT INTO `t_mingju` VALUES (1290, '李白', '天若不爱酒，酒星不在天。', '月下独酌四首', '', '食物');
INSERT INTO `t_mingju` VALUES (1291, '王士祯', '一曲高歌一樽酒，一人独钓一江秋。', '题秋江独钓图', '', '食物');
INSERT INTO `t_mingju` VALUES (1292, '晏殊', '一曲新词酒一杯，去年天气旧亭台。', '浣溪沙·一曲新词酒一杯', '', '食物');
INSERT INTO `t_mingju` VALUES (1293, '宋祁', '为君持酒劝斜阳，且向花间留晚照。', '玉楼春·春景', '', '食物');
INSERT INTO `t_mingju` VALUES (1294, '范仲淹', '愁肠已断无由醉，酒未到，先成泪。', '御街行·秋日怀旧', '', '食物');
INSERT INTO `t_mingju` VALUES (1295, '李白', '金樽清酒斗十千，玉盘珍羞直万钱。', '行路难·其一', '', '食物');
INSERT INTO `t_mingju` VALUES (1296, '苏轼', '酒困路长惟欲睡，日高人渴漫思茶。', '浣溪沙·簌簌衣巾落枣花', '', '食物');
INSERT INTO `t_mingju` VALUES (1297, '杜甫', '痛饮狂歌空度日，飞扬跋扈为谁雄。', '赠李白', '', '食物');
INSERT INTO `t_mingju` VALUES (1298, '李白', '且乐生前一杯酒，何须身后千载名？', '行路难三首', '', '食物');
INSERT INTO `t_mingju` VALUES (1299, '欧阳修', '遥知湖上一樽酒，能忆天涯万里人。', '春日西湖寄谢法曹歌', '', '食物');
INSERT INTO `t_mingju` VALUES (1300, '朱敦儒', '幸遇三杯酒好，况逢一朵花新。', '西江月·世事短如春梦', '', '食物');
INSERT INTO `t_mingju` VALUES (1301, '孟浩然', '开轩面场圃，把酒话桑麻。', '过故人庄', '', '食物');
INSERT INTO `t_mingju` VALUES (1302, '杜牧', '借问酒家何处有？牧童遥指杏花村。', '清明', '', '食物');
INSERT INTO `t_mingju` VALUES (1303, '李白', '青天有月来几时？我今停杯一问之。', '把酒问月·故人贾淳令予问之', '', '食物');
INSERT INTO `t_mingju` VALUES (1304, '李白', '笑尽一杯酒，杀人都市中。', '结客少年场行', '', '食物');
INSERT INTO `t_mingju` VALUES (1305, '曹操', '何以解忧？唯有杜康。', '短歌行', '', '食物');
INSERT INTO `t_mingju` VALUES (1306, '李白', '笑杀陶渊明，不饮杯中酒。', '嘲王历阳不肯饮酒', '', '食物');
INSERT INTO `t_mingju` VALUES (1307, '苏轼', '对酒卷帘邀明月，风露透窗纱。', '少年游·润州作', '', '食物');
INSERT INTO `t_mingju` VALUES (1308, '欧阳修', '白发戴花君莫笑，六幺催拍盏频传。', '浣溪沙·堤上游人逐画船', '', '食物');
INSERT INTO `t_mingju` VALUES (1309, '晏殊', '绿酒初尝人易醉。一枕小窗浓睡。', '清平乐·金风细细', '', '食物');
INSERT INTO `t_mingju` VALUES (1310, '欧阳修', '荷花开后西湖好，载酒来时。', '采桑子·荷花开后西湖好', '', '食物');
INSERT INTO `t_mingju` VALUES (1311, '许浑', '红叶晚萧萧，长亭酒一瓢。', '秋日赴阙题潼关驿楼 / 行次潼关逢魏扶东归', '', '食物');
INSERT INTO `t_mingju` VALUES (1312, '白居易', '无由持一碗，寄与爱茶人。', '山泉煎茶有怀', '', '食物');
INSERT INTO `t_mingju` VALUES (1313, '秋瑾', '浊酒不销忧国泪，救时应仗出群才。', '黄海舟中日人索句并见日俄战争地图', '', '食物');
INSERT INTO `t_mingju` VALUES (1314, '刘禹锡', '今日听君歌一曲，暂凭杯酒长精神。', '酬乐天扬州初逢席上见赠', '', '食物');
INSERT INTO `t_mingju` VALUES (1315, '黄景仁', '三五年时三五月，可怜杯酒不曾消。', '绮怀', '', '食物');
INSERT INTO `t_mingju` VALUES (1316, '卢祖皋', '载酒买花年少事，浑不似，旧心情。', '江城子·画楼帘暮卷新晴', '', '食物');
INSERT INTO `t_mingju` VALUES (1317, '杜甫', '艰难苦恨繁霜鬓，潦倒新停浊酒杯。', '登高', '', '食物');
INSERT INTO `t_mingju` VALUES (1318, '王维', '下马饮君酒，问君何所之？', '送别', '', '食物');
INSERT INTO `t_mingju` VALUES (1319, '周紫芝', '谁知江上酒，还与故人倾。', '临江仙·送光州曾使君', '', '食物');
INSERT INTO `t_mingju` VALUES (1320, '朱服', '寄语东阳沽酒市，拼一醉，而今乐事他年泪。', '渔家傲·小雨纤纤风细细', '', '食物');
INSERT INTO `t_mingju` VALUES (1321, '陆游', '叹息老来交旧尽，睡来谁共午瓯茶。', '幽居初夏', '', '食物');
INSERT INTO `t_mingju` VALUES (1322, '高翥', '人生有酒须当醉，一滴何曾到九泉。', '清明日对酒', '', '食物');
INSERT INTO `t_mingju` VALUES (1323, '周邦彦', '正单衣试酒，恨客里、光阴虚掷。', '六丑·落花', '', '食物');
INSERT INTO `t_mingju` VALUES (1324, '唐寅', '李白能诗复能酒，我今百杯复千首。', '把酒对月歌', '', '食物');
INSERT INTO `t_mingju` VALUES (1325, '王禹偁', '无花无酒过清明，兴味萧然似野僧。', '清明', '', '食物');
INSERT INTO `t_mingju` VALUES (1326, '秋瑾', '不惜千金买宝刀，貂裘换酒也堪豪。', '对酒·不惜千金买宝刀', '', '食物');
INSERT INTO `t_mingju` VALUES (1327, '袁枚', '半天凉月色，一笛酒人心。', '夜过借园见主人坐月下吹笛', '', '食物');
INSERT INTO `t_mingju` VALUES (1328, '李贺', '飞光飞光，劝尔一杯酒。', '苦昼短', '', '食物');
INSERT INTO `t_mingju` VALUES (1329, '白居易', '晚来天欲雪，能饮一杯无？', '问刘十九', '', '食物');
INSERT INTO `t_mingju` VALUES (1330, '毛滂', '酒浓春入梦，窗破月寻人。', '临江仙·都城元夕', '', '食物');
INSERT INTO `t_mingju` VALUES (1331, '辛弃疾', '长安故人问我，道寻常、泥酒只依然。', '木兰花慢·滁州送范倅', '', '食物');
INSERT INTO `t_mingju` VALUES (1332, '陆游', '矮纸斜行闲作草，晴窗细乳戏分茶。', '临安春雨初霁', '', '食物');
INSERT INTO `t_mingju` VALUES (1333, '张先', '水调数声持酒听。午醉醒来愁未醒。', '天仙子·水调数声持酒听', '', '食物');
INSERT INTO `t_mingju` VALUES (1334, '卢照邻', '他乡共酌金花酒，万里同悲鸿雁天。', '九月九日玄武山旅眺', '', '食物');
INSERT INTO `t_mingju` VALUES (1335, '戴敏', '东园载酒西园醉，摘尽枇杷一树金。', '初夏游张园', '', '食物');
INSERT INTO `t_mingju` VALUES (1336, '李清照', '三杯两盏淡酒，怎敌他、晚来风急？', '声声慢·寻寻觅觅', '', '食物');
INSERT INTO `t_mingju` VALUES (1337, '李商隐', '隔座送钩春酒暖，分曹射覆蜡灯红。', '无题·昨夜星辰昨夜风', '', '食物');
INSERT INTO `t_mingju` VALUES (1338, '白居易', '琴里知闻唯渌水，茶中故旧是蒙山。', '琴茶', '', '食物');
INSERT INTO `t_mingju` VALUES (1339, '卓文君', '今日斗酒会，明旦沟水头。', '白头吟', '', '食物');
INSERT INTO `t_mingju` VALUES (1340, '柳永', '拟把疏狂图一醉，对酒当歌，强乐还无味。', '蝶恋花·伫倚危楼风细细', '', '食物');
INSERT INTO `t_mingju` VALUES (1341, '李白', '白酒新熟山中归，黄鸡啄黍秋正肥。', '南陵别儿童入京', '', '食物');
INSERT INTO `t_mingju` VALUES (1342, '张籍', '锦江近西烟水绿，新雨山头荔枝熟。', '成都曲', '', '食物');
INSERT INTO `t_mingju` VALUES (1343, '张可久', '九日明朝酒香，一年好景橙黄。', '满庭芳·客中九日', '', '食物');
INSERT INTO `t_mingju` VALUES (1344, '柳永', '狎兴生疏，酒徒萧索，不似少年时。', '少年游·长安古道马迟迟', '', '食物');
INSERT INTO `t_mingju` VALUES (1345, '柳永', '对酒当歌，强乐还无味。', '蝶恋花·伫倚危楼风细细', '', '食物');
INSERT INTO `t_mingju` VALUES (1346, '李贺', '琉璃钟，琥珀浓，小槽酒滴真珠红。', '将进酒', '', '食物');
INSERT INTO `t_mingju` VALUES (1347, '张孝祥', '万里中原烽火北，一尊浊酒戍楼东。', '浣溪沙·霜日明霄水蘸空', '', '食物');
INSERT INTO `t_mingju` VALUES (1348, '苏轼', '数亩荒园留我住，半瓶浊酒待君温。', '正月二十日往岐亭郡人潘古郭三人送余于女王城东禅庄院', '', '食物');
INSERT INTO `t_mingju` VALUES (1349, '李白', '呼儿将出换美酒，与尔同销万古愁。', '将进酒', '', '食物');
INSERT INTO `t_mingju` VALUES (1350, '李白', '我醉君复乐，陶然共忘机。', '下终南山过斛斯山人宿置酒', '', '食物');
INSERT INTO `t_mingju` VALUES (1351, '辛弃疾', '满堂唯有烛花红，歌且从容，杯且从容。', '一剪梅·中秋元月', '', '食物');
INSERT INTO `t_mingju` VALUES (1352, '白居易', '吴酒一杯春竹叶，吴娃双舞醉芙蓉。', '忆江南词三首', '', '食物');
INSERT INTO `t_mingju` VALUES (1353, '高适', '饮酒莫辞醉，醉多适不愁。', '淇上送韦司仓往滑台', '', '食物');
INSERT INTO `t_mingju` VALUES (1354, '李珣', '酒盈杯，书满架，名利不将心挂。', '渔歌子·荻花秋', '', '食物');
INSERT INTO `t_mingju` VALUES (1355, '苏轼', '送行无酒亦无钱，劝尔一杯菩萨泉。', '武昌酌菩萨泉送王子立', '', '食物');
INSERT INTO `t_mingju` VALUES (1356, '朱敦儒', '日日深杯酒满，朝朝小圃花开。', '西江月·日日深杯酒满', '', '食物');
INSERT INTO `t_mingju` VALUES (1357, '陶渊明', '得欢当作乐，斗酒聚比邻。', '杂诗·人生无根蒂', '', '食物');
INSERT INTO `t_mingju` VALUES (1358, '岑参', '老人七十仍沽酒，千壶百瓮花门口。', '戏问花门酒家翁', '', '食物');
INSERT INTO `t_mingju` VALUES (1359, '冯延巳', '日日花前常病酒，敢辞镜里朱颜瘦。', '鹊踏枝·谁道闲情抛掷久', '', '食物');
INSERT INTO `t_mingju` VALUES (1360, '白居易', '更待菊黄家酝熟，共君一醉一陶然。', '与梦得沽酒闲饮且约后期', '', '食物');
INSERT INTO `t_mingju` VALUES (1361, '苏轼', '若待得君来向此，花前对酒不忍触。', '贺新郎·夏景', '', '食物');
INSERT INTO `t_mingju` VALUES (1362, '张大烈', '茶鼎熟，酒卮扬，醉来诗兴狂。', '阮郎归·立夏', '', '食物');
INSERT INTO `t_mingju` VALUES (1363, '张先', '庭轩寂寞近清明，残花中酒，又是去年病。', '青门引·春思', '', '食物');
INSERT INTO `t_mingju` VALUES (1364, '王之涣', '今日暂同芳菊酒，明朝应作断蓬飞。', '九日送别', '', '食物');
INSERT INTO `t_mingju` VALUES (1365, '杜牧', '落魄江南载酒行，楚腰纤细掌中轻。', '遣怀', '', '食物');
INSERT INTO `t_mingju` VALUES (1366, '王维', '复值接舆醉，狂歌五柳前。', '辋川闲居赠裴秀才迪', '', '食物');
INSERT INTO `t_mingju` VALUES (1367, '李煜', '花满渚，酒满瓯，万顷波中得自由。', '渔父·一棹春风一叶舟', '', '食物');
INSERT INTO `t_mingju` VALUES (1368, '辛弃疾', '一杯酒，问何似，身后名？', '水调歌头·壬子三山被召陈端仁给事饮饯席上作', '', '食物');
INSERT INTO `t_mingju` VALUES (1369, '李师中', '两岸荔枝红，万家烟雨中。', '菩萨蛮·子规啼破城楼月', '', '食物');
INSERT INTO `t_mingju` VALUES (1370, '张九龄', '松叶堪为酒，春来酿几多。', '答陆澧', '', '食物');
INSERT INTO `t_mingju` VALUES (1371, '白居易', '花时同醉破春愁，醉折花枝作酒筹。', '同李十一醉忆元九', '', '食物');
INSERT INTO `t_mingju` VALUES (1372, '李商隐', '心断新丰酒，销愁斗几千。', '风雨', '', '食物');
INSERT INTO `t_mingju` VALUES (1373, '岑参', '强欲登高去，无人送酒来。', '行军九日思长安故园', '', '食物');
INSERT INTO `t_mingju` VALUES (1374, '李白', '穷愁千万端，美酒三百杯。', '月下独酌四首', '', '食物');
INSERT INTO `t_mingju` VALUES (1375, '王维', '酌酒与君君自宽，人情翻覆似波澜。', '酌酒与裴迪', '', '食物');
INSERT INTO `t_mingju` VALUES (1376, '佚名', '我有一罇酒，欲以赠远人。', '旧题苏武诗 / 别诗四首·其一', '', '食物');
INSERT INTO `t_mingju` VALUES (1377, '白居易', '小酌酒巡销永夜，大开口笑送残年。', '雪夜小饮赠梦得', '', '食物');
INSERT INTO `t_mingju` VALUES (1378, '贺铸', '易醉扶头酒，难逢敌手棋。', '南歌子·疏雨池塘见', '', '食物');
INSERT INTO `t_mingju` VALUES (1379, '陈维崧', '残酒忆荆高，燕赵悲歌事未消。', '南乡子·邢州道上作', '', '食物');
INSERT INTO `t_mingju` VALUES (1380, '辛弃疾', '老去逢春如病酒，唯有，茶瓯香篆小帘栊。', '定风波·暮春漫兴', '', '食物');
INSERT INTO `t_mingju` VALUES (1381, '李清照', '酒阑更喜团茶苦，梦断偏宜瑞脑香。', '鹧鸪天·寒日萧萧上琐窗', '', '食物');
INSERT INTO `t_mingju` VALUES (1382, '鲍照', '酌酒以自宽，举杯断绝歌路难。', '拟行路难·其四', '', '食物');
INSERT INTO `t_mingju` VALUES (1383, '孟浩然', '何当载酒来，共醉重阳节。', '秋登兰山寄张五', '', '食物');
INSERT INTO `t_mingju` VALUES (1384, '李清照', '不怕风狂雨骤，恰才称，煮酒笺花。', '转调满庭芳·芳草池塘', '', '食物');
INSERT INTO `t_mingju` VALUES (1385, '周邦彦', '酒已都醒，如何消夜永！', '关河令·秋阴时晴渐向暝', '', '食物');
INSERT INTO `t_mingju` VALUES (1386, '李白', '烹羊宰牛且为乐，会须一饮三百杯。', '将进酒', '', '食物');
INSERT INTO `t_mingju` VALUES (1387, '杜牧', '几度思归还把酒，拂云堆上祝明妃。', '题木兰庙', '', '食物');
INSERT INTO `t_mingju` VALUES (1388, '辛弃疾', '山远近，路横斜，青旗沽酒有人家。', '鹧鸪天·陌上柔桑破嫩芽', '', '食物');
INSERT INTO `t_mingju` VALUES (1389, '丘浚', '世间珍果更无加，玉雪肌肤罩绛纱。', '咏荔枝', '', '食物');
INSERT INTO `t_mingju` VALUES (1390, '王维', '酌酒会临泉水，抱琴好倚长松。', '田园乐七首·其七', '', '食物');
INSERT INTO `t_mingju` VALUES (1391, '李清照', '酒美梅酸，恰称人怀抱。', '蝶恋花·上巳召亲族', '', '食物');
INSERT INTO `t_mingju` VALUES (1392, '李清照', '断香残酒情怀恶。西风催衬梧桐落。', '忆秦娥·咏桐', '', '食物');
INSERT INTO `t_mingju` VALUES (1393, '韦庄', '珍重主人心，酒深情亦深。', '菩萨蛮·劝君今夜须沈醉', '', '食物');
INSERT INTO `t_mingju` VALUES (1394, '李煜', '落花狼藉酒阑珊，笙歌醉梦间。', '阮郎归·呈郑王十二弟', '', '食物');
INSERT INTO `t_mingju` VALUES (1395, '白居易', '为我引杯添酒饮，与君把箸击盘歌。', '醉赠刘二十八使君', '', '食物');
INSERT INTO `t_mingju` VALUES (1396, '杜甫', '何时一樽酒，重与细论文。', '春日忆李白', '', '食物');
INSERT INTO `t_mingju` VALUES (1397, '纳兰性德', '漫惹炉烟双袖紫，空将酒晕一衫青。', '浣溪沙·伏雨朝寒愁不胜', '', '食物');
INSERT INTO `t_mingju` VALUES (1398, '白居易', '春江花朝秋月夜，往往取酒还独倾。', '琵琶行 / 琵琶引', '', '食物');
INSERT INTO `t_mingju` VALUES (1399, '李清照', '豆蔻连梢煎熟水，莫分茶。', '摊破浣溪沙·病起萧萧两鬓华', '', '食物');
INSERT INTO `t_mingju` VALUES (1400, '大须', '呵笔难临帖，敲床且煮茶。', '暮雪', '', '食物');
INSERT INTO `t_mingju` VALUES (1401, '祝允明', '山僧过岭看茶老，村女当垆煮酒香。', '首夏山中行吟', '', '食物');
INSERT INTO `t_mingju` VALUES (1402, '杜甫', '重阳独酌杯中酒，抱病起登江上台。', '九日五首·其一', '', '食物');
INSERT INTO `t_mingju` VALUES (1403, '王禹偁', '脱衣换得商山酒，笑把离骚独自倾。', '清明日独酌', '', '食物');
INSERT INTO `t_mingju` VALUES (1404, '李清照', '险韵诗成，扶头酒醒，别是闲滋味。', '念奴娇·春情', '', '食物');
INSERT INTO `t_mingju` VALUES (1405, '岑参', '道傍榆荚仍似钱，摘来沽酒君肯否。', '戏问花门酒家翁', '', '食物');
INSERT INTO `t_mingju` VALUES (1406, '杜甫', '报答春光知有处，应须美酒送生涯。', '江畔独步寻花七绝句', '', '食物');
INSERT INTO `t_mingju` VALUES (1407, '李贺', '劝君终日酩酊醉，酒不到刘伶坟上土。', '将进酒', '', '食物');
INSERT INTO `t_mingju` VALUES (1408, '李颀', '主人有酒欢今夕，请奏鸣琴广陵客。', '琴歌', '', '食物');
INSERT INTO `t_mingju` VALUES (1409, '刘克庄', '若对黄花孤负酒，怕黄花、也笑人岑寂。', '贺新郎·九日', '', '食物');
INSERT INTO `t_mingju` VALUES (1410, '杜甫', '浅把涓涓酒，深凭送此生。', '水槛遣心二首', '', '食物');
INSERT INTO `t_mingju` VALUES (1411, '李珣', '木兰舟上珠帘卷，歌声远，椰子酒倾鹦鹉盏。', '南乡子·山果熟', '', '食物');
INSERT INTO `t_mingju` VALUES (1412, '李白', '呼童烹鸡酌白酒，儿女嬉笑牵人衣。', '南陵别儿童入京', '', '食物');
INSERT INTO `t_mingju` VALUES (1413, '白居易', '商人重利轻别离，前月浮梁买茶去。', '琵琶行 / 琵琶引', '', '食物');
INSERT INTO `t_mingju` VALUES (1414, '欧阳修', '西风酒旗市，细雨菊花天。', '秋怀', '', '食物');
INSERT INTO `t_mingju` VALUES (1415, '毛滂', '一年滴尽莲花漏。碧井酴酥沈冻酒。', '玉楼春·己卯岁元日', '', '食物');
INSERT INTO `t_mingju` VALUES (1416, '赵长卿', '怀家寒食夜，中酒落花天。', '临江仙·暮春', '', '食物');
INSERT INTO `t_mingju` VALUES (1417, '纳兰性德', '新寒中酒敲窗雨，残香细袅秋情绪。', '菩萨蛮·新寒中酒敲窗雨', '', '食物');
INSERT INTO `t_mingju` VALUES (1418, '王维', '当轩对尊酒，四面芙蓉开。', '临湖亭', '', '食物');
INSERT INTO `t_mingju` VALUES (1419, '李白', '感之欲叹息，对酒还自倾。', '春日醉起言志', '', '食物');
INSERT INTO `t_mingju` VALUES (1420, '杜甫', '酒肆人间世，琴台日暮云。', '琴台', '', '食物');
INSERT INTO `t_mingju` VALUES (1421, '韦应物', '欲持一瓢酒，远慰风雨夕。', '寄全椒山中道士', '', '食物');
INSERT INTO `t_mingju` VALUES (1422, '张养浩', '画船儿天边至，酒旗儿风外飐。', '水仙子·咏江南', '', '食物');
INSERT INTO `t_mingju` VALUES (1423, '李白', '酒后竞风采，三杯弄宝刀。', '白马篇', '', '食物');
INSERT INTO `t_mingju` VALUES (1424, '陶渊明', '漉我新熟酒，只鸡招近局。', '归园田居·其五', '', '食物');
INSERT INTO `t_mingju` VALUES (1425, '李白', '欢言得所憩，美酒聊共挥。', '下终南山过斛斯山人宿置酒', '', '食物');
INSERT INTO `t_mingju` VALUES (1426, '杨炎正', '把酒对斜日，无语问西风。', '水调歌头·把酒对斜日', '', '食物');
INSERT INTO `t_mingju` VALUES (1427, '吴文英', '春未来时，酒携不到千岩路。', '点绛唇·越山见梅', '', '食物');
INSERT INTO `t_mingju` VALUES (1428, '刘彤', '恨无千日酒，空断九回肠。', '临江仙·千里长安名利客', '', '食物');
INSERT INTO `t_mingju` VALUES (1429, '李白', '携壶酌流霞，搴菊泛寒荣。', '九日', '', '食物');
INSERT INTO `t_mingju` VALUES (1430, '陶渊明', '一觞虽独尽，杯尽壶自倾。', '饮酒·其四', '', '食物');
INSERT INTO `t_mingju` VALUES (1431, '温庭筠', '何当重相见，尊酒慰离颜。', '送人东游', '', '食物');
INSERT INTO `t_mingju` VALUES (1432, '欧阳修', '花光浓烂柳轻明，酌酒花前送我行。', '别滁', '', '食物');
INSERT INTO `t_mingju` VALUES (1433, '张镃', '清愁诗酒少，寒食雨风多。', '寒食', '', '食物');
INSERT INTO `t_mingju` VALUES (1434, '韦应物', '把酒看花想诸弟，杜陵寒食草青青。', '寒食寄京师诸弟', '', '食物');
INSERT INTO `t_mingju` VALUES (1435, '文森', '何期今日酒，忽对故园花。', '九日', '', '食物');
INSERT INTO `t_mingju` VALUES (1436, '张蠙', '井放辘轳闲浸酒，笼开鹦鹉报煎茶。', '夏日题老将林亭', '', '食物');
INSERT INTO `t_mingju` VALUES (1437, '岑参', '中军置酒饮归客，胡琴琵琶与羌笛。', '白雪歌送武判官归京', '', '食物');
INSERT INTO `t_mingju` VALUES (1438, '王安石', '把酒祝东风，且莫恁、匆匆去。', '伤春怨·雨打江南树', '', '食物');
INSERT INTO `t_mingju` VALUES (1439, '黄庭坚', '儿大诗书女丝麻，公但读书煮春茶。', '送王郎', '', '食物');
INSERT INTO `t_mingju` VALUES (1440, '贾至', '红粉当垆弱柳垂，金花腊酒解酴醿。', '春思二首', '', '食物');
INSERT INTO `t_mingju` VALUES (1441, '韦庄', '晴烟漠漠柳毵毵，不那离情酒半酣。', '古离别', '', '食物');
INSERT INTO `t_mingju` VALUES (1442, '高启', '喜得故人同待诏，拟沽春酒醉京华。', '清明呈馆中诸公', '', '食物');
INSERT INTO `t_mingju` VALUES (1443, '韩元吉', '春来茗叶还争白，腊尽梅梢尽放红。', '送陆务观福建提仓', '', '食物');
INSERT INTO `t_mingju` VALUES (1444, '李白', '何时更杯酒，再得论心胸。', '魏郡别苏明府因北游', '', '食物');
INSERT INTO `t_mingju` VALUES (1445, '晏几道', '无计奈情何，且醉金杯酒。', '生查子·轻匀两脸花', '', '食物');
INSERT INTO `t_mingju` VALUES (1446, '李白', '鲁酒不可醉，齐歌空复情。', '沙丘城下寄杜甫', '', '食物');
INSERT INTO `t_mingju` VALUES (1447, '杜甫', '盘飧市远无兼味，樽酒家贫只旧醅。', '客至', '', '食物');
INSERT INTO `t_mingju` VALUES (1448, '李贺', '零落栖迟一杯酒，主人奉觞客长寿。', '致酒行', '', '食物');
INSERT INTO `t_mingju` VALUES (1449, '程颢', '莫辞盏酒十分劝，只恐风花一片飞。', '郊行即事', '', '食物');
INSERT INTO `t_mingju` VALUES (1450, '陆龟蒙', '杖剑对尊酒，耻为游子颜。', '别离', '', '食物');
INSERT INTO `t_mingju` VALUES (1451, '晏几道', '歌中醉倒谁能恨，唱罢归来酒未消。', '鹧鸪天·小令尊前见玉箫', '', '食物');
INSERT INTO `t_mingju` VALUES (1452, '杜牧', '贾傅松醪酒，秋来美更香。', '送薛种游湖南', '', '食物');
INSERT INTO `t_mingju` VALUES (1453, '曹雪芹', '酒未开樽句未裁，寻春问腊到蓬莱。', '访妙玉乞红梅', '', '食物');
INSERT INTO `t_mingju` VALUES (1454, '刘过', '泛菊杯深，吹梅角远，同在京城。', '柳梢青·送卢梅坡', '', '食物');
INSERT INTO `t_mingju` VALUES (1455, '辛弃疾', '黄鸡白酒，君去村社一番秋。', '水调歌头·送杨民瞻', '', '食物');
INSERT INTO `t_mingju` VALUES (1456, '吴文英', '酹酒苍茫，倚歌平远，亭上玉虹腰冷。', '十二郎·垂虹桥', '', '食物');
INSERT INTO `t_mingju` VALUES (1457, '姜塘', '重阳佳节意休休，与客携壶共上楼。', '摘星楼九日登临', '', '食物');
INSERT INTO `t_mingju` VALUES (1458, '许德溥', '沽酒清阴时系马，招凉短槛几留题。', '西桥柳色', '', '食物');
INSERT INTO `t_mingju` VALUES (1459, '李清照', '当年曾胜赏，生香熏袖，活火分茶。', '转调满庭芳·芳草池塘', '', '食物');
INSERT INTO `t_mingju` VALUES (1460, '辛弃疾', '待羔儿、酒罢又烹茶，扬州鹤。', '满江红·和范先之雪', '', '食物');
INSERT INTO `t_mingju` VALUES (1461, '李白', '君歌杨叛儿，妾劝新丰酒。', '杨叛儿', '', '食物');
INSERT INTO `t_mingju` VALUES (1462, '杜甫', '莫辞酒味薄，黍地无人耕。', '羌村三首·其三', '', '食物');
INSERT INTO `t_mingju` VALUES (1463, '李珣', '春酒香熟鲈鱼美，谁同醉？缆却扁舟篷底睡。', '南乡子·云带雨', '', '食物');
INSERT INTO `t_mingju` VALUES (1464, '陆游', '谁知得酒尚能狂，脱帽向人时大叫。', '三月十七日夜醉中作', '', '食物');
INSERT INTO `t_mingju` VALUES (1465, '谢朓', '穗帷飘井干，樽酒若平生。', '同谢谘议咏铜雀台', '', '食物');
INSERT INTO `t_mingju` VALUES (1466, '吴锡麒', '江南三月听莺天，买酒莫论钱。', '少年游·江南三月听莺天', '', '食物');
INSERT INTO `t_mingju` VALUES (1467, '吴文英', '料峭春寒中酒，交加晓梦啼莺。', '风入松·听风听雨过清明', '', '食物');
INSERT INTO `t_mingju` VALUES (1468, '李白', '鹔鹴换美酒，舞衣罢雕龙。', '怨歌行', '', '食物');
INSERT INTO `t_mingju` VALUES (1469, '晁补之', '任翠幄张天，柔茵藉地，酒尽未能去。', '摸鱼儿·东皋寓居', '', '食物');
INSERT INTO `t_mingju` VALUES (1470, '孟浩然', '旧曲梅花唱，新正柏酒传。', '岁除夜会乐城张少府宅', '', '食物');
INSERT INTO `t_mingju` VALUES (1471, '姜夔', '强携酒、小桥宅，怕梨花落尽成秋色。', '淡黄柳·空城晓角', '', '食物');
INSERT INTO `t_mingju` VALUES (1472, '韦应物', '俯饮一杯酒，仰聆金玉章。', '郡斋雨中与诸文士燕集', '', '食物');
INSERT INTO `t_mingju` VALUES (1473, '贺铸', '谁问旗亭，美酒斗十千。', '行路难·缚虎手', '', '食物');
INSERT INTO `t_mingju` VALUES (1474, '杜甫', '坐开桑落酒，来把菊花枝。', '九日杨奉先会白水崔明府', '', '食物');
INSERT INTO `t_mingju` VALUES (1475, '岑参', '九日黄花酒，登高会昔闻。', '奉陪封大夫九日登高', '', '食物');
INSERT INTO `t_mingju` VALUES (1476, '吴文英', '正蹇驴吟影，茶烟灶冷，酒亭门闭。', '无闷·催雪', '', '食物');
INSERT INTO `t_mingju` VALUES (1477, '张孝祥', '唤起封姨清晚景，更将荔子荐新圆。', '浣溪沙·中秋坐上十八客', '', '食物');
INSERT INTO `t_mingju` VALUES (1478, '欧阳修', '酿泉为酒，泉香而酒洌；', '醉翁亭记', '', '食物');
INSERT INTO `t_mingju` VALUES (1479, '赵时春', '将坛醇酒冰浆细，元夜邀宾灯火新。', '元宵饮陶总戎家二首', '', '食物');
INSERT INTO `t_mingju` VALUES (1480, '元稹', '一日官军收海服，驱牛驾车食牛肉，归来攸得牛两角。', '田家词 / 田家行', '', '食物');
INSERT INTO `t_mingju` VALUES (1481, '李郢', '小男供饵妇搓丝，溢榼香醪倒接罹。', '南池', '', '食物');
INSERT INTO `t_mingju` VALUES (1482, '秋瑾', '对菊难逢元亮酒，登楼愧乏仲宣才。', '九日感赋', '', '食物');
INSERT INTO `t_mingju` VALUES (1483, '王琼', '辕门菊酒生豪兴，雁塞风云惬壮游。', '九日登花马池城', '', '食物');
INSERT INTO `t_mingju` VALUES (1484, '张孝祥', '试问梅花何处好，与君藉草携壶。', '临江仙·试问梅花何处好', '', '食物');
INSERT INTO `t_mingju` VALUES (1485, '李颀', '岁夜高堂列明烛，美酒一杯声一曲。', '听安万善吹觱篥歌', '', '食物');
INSERT INTO `t_mingju` VALUES (1486, '司马光', '取酒须勤醉，乡关不可思。', '送张寺丞觐知富顺监', '', '食物');
INSERT INTO `t_mingju` VALUES (1487, '董必武', '举杯互敬屠苏酒，散席分尝胜利茶。', '元旦口占用柳亚子怀人韵', '', '食物');
INSERT INTO `t_mingju` VALUES (1488, '鲍照', '奉君金卮之美酒，玳瑁玉匣之雕琴。', '拟行路难·其一', '', '食物');
INSERT INTO `t_mingju` VALUES (1489, '李白', '北斗酌美酒，劝龙各一觞。', '短歌行', '', '食物');
INSERT INTO `t_mingju` VALUES (1490, '赵蕃', '何意更觞昌歜酒，为君击节一长歌。', '端午三首', '', '食物');
INSERT INTO `t_mingju` VALUES (1491, '宋祁', '遨欢任落风前帽，促饮争吹酒上花。', '九日置酒', '', '食物');
INSERT INTO `t_mingju` VALUES (1492, '王建', '停车数行日，劝酒问回期。', '送人游塞', '', '食物');
INSERT INTO `t_mingju` VALUES (1493, '吴文英', '晓窗移枕，酒困香残，春阴帘卷。', '烛影摇红·元夕雨', '', '食物');
INSERT INTO `t_mingju` VALUES (1494, '陈著', '杯酒相延，今夕不应慳。', '江城子·中秋早雨晚晴', '', '食物');
INSERT INTO `t_mingju` VALUES (1495, '李白', '称是秦时避世人，劝酒相欢不知老。', '山人劝酒', '', '食物');
INSERT INTO `t_mingju` VALUES (1496, '王沂孙', '前度绿阴载酒，枝头色比舞裙同。', '庆清朝·榴花', '', '食物');
INSERT INTO `t_mingju` VALUES (1497, '李白', '置酒望白云，商飙起寒梧。', '登单父陶少府半月台', '', '食物');
INSERT INTO `t_mingju` VALUES (1498, '孟浩然', '酒伴来相命，开尊共解酲。', '春中喜王九相寻 / 晚春', '', '食物');
INSERT INTO `t_mingju` VALUES (1499, '汤恢', '摘青梅荐酒，甚残寒，犹怯苎萝衣。', '八声甘州·摘青梅荐酒', '', '食物');
INSERT INTO `t_mingju` VALUES (1500, '李清照', '酒阑歌罢玉尊空，青缸暗明灭。', '好事近·风定落花深', '', '食物');
INSERT INTO `t_mingju` VALUES (1501, '秦观', '两情若是久长时，又岂在朝朝暮暮。', '鹊桥仙·纤云弄巧', '', '节日');
INSERT INTO `t_mingju` VALUES (1502, '欧阳修', '月上柳梢头，人约黄昏后。', '生查子·元夕', '', '节日');
INSERT INTO `t_mingju` VALUES (1503, '秦观', '金风玉露一相逢，便胜却人间无数。', '鹊桥仙·纤云弄巧', '', '节日');
INSERT INTO `t_mingju` VALUES (1504, '李商隐', '嫦娥应悔偷灵药，碧海青天夜夜心。', '嫦娥', '', '节日');
INSERT INTO `t_mingju` VALUES (1505, '苏轼', '但愿人长久，千里共婵娟。', '水调歌头·丙辰中秋', '', '节日');
INSERT INTO `t_mingju` VALUES (1506, '李清照', '莫道不销魂，帘卷西风，人比黄花瘦。', '醉花阴·薄雾浓云愁永昼', '', '节日');
INSERT INTO `t_mingju` VALUES (1507, '王建', '今夜月明人尽望，不知秋思落谁家。', '十五夜望月寄杜郎中', '', '节日');
INSERT INTO `t_mingju` VALUES (1508, '杜牧', '天阶夜色凉如水，卧看牵牛织女星。', '秋夕', '', '节日');
INSERT INTO `t_mingju` VALUES (1509, '苏轼', '中秋谁与共孤光。把盏凄然北望。', '西江月·世事一场大梦', '', '节日');
INSERT INTO `t_mingju` VALUES (1510, '王安石', '爆竹声中一岁除，春风送暖入屠苏。', '元日', '', '节日');
INSERT INTO `t_mingju` VALUES (1511, '林杰', '七夕今宵看碧霄，牵牛织女渡河桥。', '乞巧', '', '节日');
INSERT INTO `t_mingju` VALUES (1512, '苏轼', '此生此夜不长好，明月明年何处看。', '阳关曲 / 中秋月', '', '节日');
INSERT INTO `t_mingju` VALUES (1513, '韩翃', '春城无处不飞花，寒食东风御柳斜。', '寒食 / 寒食日即事', '', '节日');
INSERT INTO `t_mingju` VALUES (1514, '佚名', '迢迢牵牛星，皎皎河汉女。', '迢迢牵牛星', '', '节日');
INSERT INTO `t_mingju` VALUES (1515, '晏殊', '燕子来时新社，梨花落后清明。', '破阵子·春景', '', '节日');
INSERT INTO `t_mingju` VALUES (1516, '杜牧', '清明时节雨纷纷，路上行人欲断魂。', '清明', '', '节日');
INSERT INTO `t_mingju` VALUES (1517, '欧阳修', '去年元夜时，花市灯如昼。', '生查子·元夕', '', '节日');
INSERT INTO `t_mingju` VALUES (1518, '姜夔', '谁教岁岁红莲夜，两处沉吟各自知。', '鹧鸪天·元夕有所梦', '', '节日');
INSERT INTO `t_mingju` VALUES (1519, '杜牧', '尘世难逢开口笑，菊花须插满头归。', '九日齐山登高', '', '节日');
INSERT INTO `t_mingju` VALUES (1520, '苏味道', '火树银花合，星桥铁锁开。', '正月十五夜', '', '节日');
INSERT INTO `t_mingju` VALUES (1521, '戴叔伦', '一年将尽夜，万里未归人。', '除夜宿石头驿', '', '节日');
INSERT INTO `t_mingju` VALUES (1522, '陆游', '素衣莫起风尘叹，犹及清明可到家。', '临安春雨初霁', '', '节日');
INSERT INTO `t_mingju` VALUES (1523, '辛弃疾', '忆对中秋丹桂丛。花在杯中。月在杯中。', '一剪梅·中秋元月', '', '节日');
INSERT INTO `t_mingju` VALUES (1524, '李清照', '东篱把酒黄昏后，有暗香盈袖。', '醉花阴·薄雾浓云愁永昼', '', '节日');
INSERT INTO `t_mingju` VALUES (1525, '孟浩然', '待到重阳日，还来就菊花。', '过故人庄', '', '节日');
INSERT INTO `t_mingju` VALUES (1526, '苏轼', '彩线轻缠红玉臂，小符斜挂绿云鬟。佳人相见一千年。', '浣溪沙·端午', '', '节日');
INSERT INTO `t_mingju` VALUES (1527, '白居易', '西北望乡何处是，东南见月几回圆。', '八月十五日夜湓亭望月', '', '节日');
INSERT INTO `t_mingju` VALUES (1528, '辛弃疾', '一轮秋影转金波。飞镜又重磨。', '太常引·建康中秋夜为吕叔潜赋', '', '节日');
INSERT INTO `t_mingju` VALUES (1529, '徐有贞', '中秋月。月到中秋偏皎洁。', '中秋月·中秋月', '', '节日');
INSERT INTO `t_mingju` VALUES (1530, '王维', '遥知兄弟登高处，遍插茱萸少一人。', '九月九日忆山东兄弟 / 九月九忆山东兄弟', '', '节日');
INSERT INTO `t_mingju` VALUES (1531, '王安石', '千门万户曈曈日，总把新桃换旧符。', '元日', '', '节日');
INSERT INTO `t_mingju` VALUES (1532, '苏轼', '轻汗微微透碧纨，明朝端午浴芳兰。', '浣溪沙·端午', '', '节日');
INSERT INTO `t_mingju` VALUES (1533, '杜牧', '借问酒家何处有？牧童遥指杏花村。', '清明', '', '节日');
INSERT INTO `t_mingju` VALUES (1534, '秦观', '柔情似水，佳期如梦，忍顾鹊桥归路。', '鹊桥仙·纤云弄巧', '', '节日');
INSERT INTO `t_mingju` VALUES (1535, '张可久', '人老去西风白发，蝶愁来明日黄花。', '折桂令·九日', '', '节日');
INSERT INTO `t_mingju` VALUES (1536, '徐有贞', '好时节，愿得年年，常见中秋月。', '中秋月·中秋月', '', '节日');
INSERT INTO `t_mingju` VALUES (1537, '高适', '故乡今夜思千里，霜鬓明朝又一年。', '除夜作', '', '节日');
INSERT INTO `t_mingju` VALUES (1538, '德容', '双星何事今宵会，遗我庭前月一钩。', '七夕二首·其一', '', '节日');
INSERT INTO `t_mingju` VALUES (1539, '林杰', '家家乞巧望秋月，穿尽红丝几万条。', '乞巧', '', '节日');
INSERT INTO `t_mingju` VALUES (1540, '薛道衡', '入春才七日，离家已二年。', '人日思归', '', '节日');
INSERT INTO `t_mingju` VALUES (1541, '毛泽东', '人生易老天难老，岁岁重阳。', '采桑子·重阳', '', '节日');
INSERT INTO `t_mingju` VALUES (1542, '白居易', '满园花菊郁金黄，中有孤丛色似霜。', '重阳席上赋白菊', '', '节日');
INSERT INTO `t_mingju` VALUES (1543, '张耒', '国亡身殒今何有，只留离骚在世间。', '和端午', '', '节日');
INSERT INTO `t_mingju` VALUES (1544, '毛泽东', '今又重阳，战地黄花分外香。', '采桑子·重阳', '', '节日');
INSERT INTO `t_mingju` VALUES (1545, '黄庭坚', '佳节清明桃李笑，野田荒冢只生愁。', '清明', '', '节日');
INSERT INTO `t_mingju` VALUES (1546, '高翥', '南北山头多墓田，清明祭扫各纷然。', '清明日对酒', '', '节日');
INSERT INTO `t_mingju` VALUES (1547, '王禹偁', '无花无酒过清明，兴味萧然似野僧。', '清明', '', '节日');
INSERT INTO `t_mingju` VALUES (1548, '皮日休', '至今不会天中事，应是嫦娥掷与人。', '天竺寺八月十五日夜桂子', '', '节日');
INSERT INTO `t_mingju` VALUES (1549, '苏辙', '离别一何久，七度过中秋。', '水调歌头·徐州中秋', '', '节日');
INSERT INTO `t_mingju` VALUES (1550, '辛弃疾', '况屈指中秋，十分好月，不照人圆。', '木兰花慢·滁州送范倅', '', '节日');
INSERT INTO `t_mingju` VALUES (1551, '陆游', '半盏屠苏犹未举，灯前小草写桃符。', '除夜雪', '', '节日');
INSERT INTO `t_mingju` VALUES (1552, '徐有贞', '阴晴圆缺都休说，且喜人间好时节。', '中秋月·中秋月', '', '节日');
INSERT INTO `t_mingju` VALUES (1553, '辛弃疾', '宝马雕车香满路。', '青玉案·元夕', '', '节日');
INSERT INTO `t_mingju` VALUES (1554, '张孝祥', '洞庭青草，近中秋，更无一点风色。', '念奴娇·过洞庭', '', '节日');
INSERT INTO `t_mingju` VALUES (1555, '吴文英', '十年旧梦无寻处，几度新春不在家。', '思佳客·癸卯除夜', '', '节日');
INSERT INTO `t_mingju` VALUES (1556, '卢照邻', '他乡共酌金花酒，万里同悲鸿雁天。', '九月九日玄武山旅眺', '', '节日');
INSERT INTO `t_mingju` VALUES (1557, '王勃', '九月九日望乡台，他席他乡送客杯。', '蜀中九日 / 九日登高', '', '节日');
INSERT INTO `t_mingju` VALUES (1558, '冯延巳', '百草千花寒食路，香车系在谁家树。', '鹊踏枝·几日行云何处去', '', '节日');
INSERT INTO `t_mingju` VALUES (1559, '吴惟信', '梨花风起正清明，游子寻春半出城。', '苏堤清明即事', '', '节日');
INSERT INTO `t_mingju` VALUES (1560, '吴文英', '人间梦隔西风，算天上、年华一瞬。', '惜秋华·七夕', '', '节日');
INSERT INTO `t_mingju` VALUES (1561, '张可久', '九日明朝酒香，一年好景橙黄。', '满庭芳·客中九日', '', '节日');
INSERT INTO `t_mingju` VALUES (1562, '张祜', '千门开锁万灯明，正月中旬动地京。', '正月十五夜灯', '', '节日');
INSERT INTO `t_mingju` VALUES (1563, '辛弃疾', '凤箫声动，玉壶光转，一夜鱼龙舞。', '青玉案·元夕', '', '节日');
INSERT INTO `t_mingju` VALUES (1564, '戴复古', '万物迎春送残腊，一年结局在今宵。', '除夜', '', '节日');
INSERT INTO `t_mingju` VALUES (1565, '郑谷', '王孙莫把比蓬蒿，九日枝枝近鬓毛。', '菊', '', '节日');
INSERT INTO `t_mingju` VALUES (1566, '杜甫', '满月飞明镜，归心折大刀。', '八月十五夜月二首', '', '节日');
INSERT INTO `t_mingju` VALUES (1567, '高启', '风雨梨花寒食过，几家坟上子孙来？', '送陈秀才还沙上省墓', '', '节日');
INSERT INTO `t_mingju` VALUES (1568, '欧阳修', '今年元夜时，月与灯依旧。', '生查子·元夕', '', '节日');
INSERT INTO `t_mingju` VALUES (1569, '贺铸', '五更钟动笙歌散，十里月明灯火稀。', '思越人·紫府东风放夜时', '', '节日');
INSERT INTO `t_mingju` VALUES (1570, '李白', '菊花何太苦，遭此两重阳？', '九月十日即事', '', '节日');
INSERT INTO `t_mingju` VALUES (1571, '白居易', '棠梨花映白杨树，尽是死生别离处。', '寒食野望吟', '', '节日');
INSERT INTO `t_mingju` VALUES (1572, '孟云卿', '二月江南花满枝，他乡寒食远堪悲。', '寒食', '', '节日');
INSERT INTO `t_mingju` VALUES (1573, '高适', '云山行处合，风雨兴中秋。', '送魏八', '', '节日');
INSERT INTO `t_mingju` VALUES (1574, '苏轼', '明年岂无年，心事恐蹉跎。', '守岁', '', '节日');
INSERT INTO `t_mingju` VALUES (1575, '晏殊', '芙蓉金菊斗馨香。天气欲重阳。', '诉衷情·芙蓉金菊斗馨香', '', '节日');
INSERT INTO `t_mingju` VALUES (1576, '冯延巳', '满眼游丝兼落絮，红杏开时，一霎清明雨。', '鹊踏枝·清明', '', '节日');
INSERT INTO `t_mingju` VALUES (1577, '吴文英', '听风听雨过清明。愁草瘗花铭。', '风入松·听风听雨过清明', '', '节日');
INSERT INTO `t_mingju` VALUES (1578, '秋瑾', '小住京华，早又是，中秋佳节。', '满江红·小住京华', '', '节日');
INSERT INTO `t_mingju` VALUES (1579, '卢挚', '卧看牵牛织女星，月转过梧桐树影。', '沉醉东风·七夕', '', '节日');
INSERT INTO `t_mingju` VALUES (1580, '张先', '庭轩寂寞近清明，残花中酒，又是去年病。', '青门引·春思', '', '节日');
INSERT INTO `t_mingju` VALUES (1581, '李清照', '天与秋光，转转情伤，探金英知近重阳。', '行香子·天与秋光', '', '节日');
INSERT INTO `t_mingju` VALUES (1582, '李白', '九日龙山饮，黄花笑逐臣。', '九日龙山饮', '', '节日');
INSERT INTO `t_mingju` VALUES (1583, '李清照', '佳节又重阳，玉枕纱厨，半夜凉初透。', '醉花阴·薄雾浓云愁永昼', '', '节日');
INSERT INTO `t_mingju` VALUES (1584, '纳兰性德', '佳时倍惜风光别，不为登高。只觉魂销。', '采桑子·九日', '', '节日');
INSERT INTO `t_mingju` VALUES (1585, '文天祥', '命随年欲尽，身与世俱忘；', '除夜', '', '节日');
INSERT INTO `t_mingju` VALUES (1586, '李商隐', '此日六军同驻马，当时七夕笑牵牛。', '马嵬·其二', '', '节日');
INSERT INTO `t_mingju` VALUES (1587, '吕本中', '短篱残菊一枝黄。正是乱山深处、过重阳。', '南歌子·驿路侵斜月', '', '节日');
INSERT INTO `t_mingju` VALUES (1588, '陆游', '北风吹雪四更初，嘉瑞天教及岁除。', '除夜雪', '', '节日');
INSERT INTO `t_mingju` VALUES (1589, '韩翃', '日暮汉宫传蜡烛，轻烟散入五侯家。', '寒食', '', '节日');
INSERT INTO `t_mingju` VALUES (1590, '吴文英', '衣懒换，酒难赊。可怜此夕看梅花。', '思佳客·癸卯除夜', '', '节日');
INSERT INTO `t_mingju` VALUES (1591, '刘禹锡', '绝景良时难再并，他年此日应惆怅。', '八月十五夜桃源玩月', '', '节日');
INSERT INTO `t_mingju` VALUES (1592, '苏味道', '金吾不禁夜，玉漏莫相催。', '正月十五夜', '', '节日');
INSERT INTO `t_mingju` VALUES (1593, '张先', '中庭月色正清明，无数杨花过无影。', '木兰花·乙卯吴兴寒食', '', '节日');
INSERT INTO `t_mingju` VALUES (1594, '苏轼', '起舞徘徊风露下，今夕不知何夕。', '念奴娇·中秋', '', '节日');
INSERT INTO `t_mingju` VALUES (1595, '刘过', '柳下系舟犹未稳，能几日、又中秋。', '唐多令·芦叶满汀洲', '', '节日');
INSERT INTO `t_mingju` VALUES (1596, '张埜', '恨人间、会少离多，万古千秋今夕。', '夺锦标·七夕', '', '节日');
INSERT INTO `t_mingju` VALUES (1597, '辛弃疾', '野棠花落，又匆匆过了，清明时节。', '念奴娇·书东流村壁', '', '节日');
INSERT INTO `t_mingju` VALUES (1598, '边贡', '屈子冤魂终古在，楚乡遗俗至今留。', '午日观竞渡', '', '节日');
INSERT INTO `t_mingju` VALUES (1599, '晏殊', '十轮霜影转庭梧，此夕羁人独向隅。', '中秋月', '', '节日');
INSERT INTO `t_mingju` VALUES (1600, '孟浩然', '何当载酒来，共醉重阳节。', '秋登兰山寄张五', '', '节日');
INSERT INTO `t_mingju` VALUES (1601, '范成大', '细数十年事，十处过中秋。', '水调歌头·细数十年事', '', '节日');
INSERT INTO `t_mingju` VALUES (1602, '卢照邻', '九月九日眺山川，归心归望积风烟。', '九月九日玄武山旅眺', '', '节日');
INSERT INTO `t_mingju` VALUES (1603, '王磐', '听元宵，今岁嗟呀，愁也千家，怨也千家。', '古蟾宫·元宵', '', '节日');
INSERT INTO `t_mingju` VALUES (1604, '白居易', '冥冥重泉哭不闻，萧萧暮雨人归去。', '寒食野望吟', '', '节日');
INSERT INTO `t_mingju` VALUES (1605, '慧霖', '一月可曾闲几日，百年难得闰中秋。', '闰中秋玩月', '', '节日');
INSERT INTO `t_mingju` VALUES (1606, '苏轼', '自我来黄州，已过三寒食。', '寒食雨二首', '', '节日');
INSERT INTO `t_mingju` VALUES (1607, '王建', '两情缠绵忽如故。复畏秋风生晓路。', '七夕曲', '', '节日');
INSERT INTO `t_mingju` VALUES (1608, '白居易', '好风胧月清明夜，碧砌红轩刺史家。', '清明夜', '', '节日');
INSERT INTO `t_mingju` VALUES (1609, '曹组', '清明又近也，却天涯为客。', '忆少年·年时酒伴', '', '节日');
INSERT INTO `t_mingju` VALUES (1610, '晏殊', '重阳过后，西风渐紧，庭树叶纷纷。', '少年游·重阳过后', '', '节日');
INSERT INTO `t_mingju` VALUES (1611, '李清照', '元宵佳节，融和天气，次第岂无风雨。', '永遇乐·落日熔金', '', '节日');
INSERT INTO `t_mingju` VALUES (1612, '孟浩然', '昨夜斗回北，今朝岁起东。', '田家元日', '', '节日');
INSERT INTO `t_mingju` VALUES (1613, '德容', '织女牵牛送夕阳，临看不觉鹊桥长。', '七夕二首·其二', '', '节日');
INSERT INTO `t_mingju` VALUES (1614, '舒頔', '碧艾香蒲处处忙。谁家儿共女，庆端阳。', '小重山·端午', '', '节日');
INSERT INTO `t_mingju` VALUES (1615, '苏轼', '帐底吹笙香吐麝，更无一点尘随马。', '蝶恋花·密州上元', '', '节日');
INSERT INTO `t_mingju` VALUES (1616, '晏几道', '绿杯红袖趁重阳。人情似故乡。', '阮郎归·天边金掌露成霜', '', '节日');
INSERT INTO `t_mingju` VALUES (1617, '王守仁', '故园今夕是元宵，独向蛮村坐寂寥。', '元夕二首', '', '节日');
INSERT INTO `t_mingju` VALUES (1618, '顾太清', '明朝寒食了，又是一年春。', '临江仙·清明前一日种海棠', '', '节日');
INSERT INTO `t_mingju` VALUES (1619, '李冠', '才过清明，渐觉伤春暮。', '蝶恋花·春暮', '', '节日');
INSERT INTO `t_mingju` VALUES (1620, '辛弃疾', '是天外空汗漫，但长风、浩浩送中秋。', '木兰花慢·中秋饮酒将旦客谓前人诗词有赋待月无送月者因用天问体赋', '', '节日');
INSERT INTO `t_mingju` VALUES (1621, '杜甫', '重阳独酌杯中酒，抱病起登江上台。', '九日五首·其一', '', '节日');
INSERT INTO `t_mingju` VALUES (1622, '杜甫', '明年此会知谁健？醉把茱萸仔细看。', '九日蓝田崔氏庄', '', '节日');
INSERT INTO `t_mingju` VALUES (1623, '范成大', '双星良夜，耕慵织懒，应被群仙相妒。', '鹊桥仙·七夕', '', '节日');
INSERT INTO `t_mingju` VALUES (1624, '魏承班', '几多情，无处说，落花飞絮清明节。', '渔歌子·柳如眉', '', '节日');
INSERT INTO `t_mingju` VALUES (1625, '王元鼎', '画楼洗净鸳鸯瓦，彩绳半湿秋千架。', '醉太平·寒食', '', '节日');
INSERT INTO `t_mingju` VALUES (1626, '周邦彦', '暗柳啼鸦，单衣伫立，小帘朱户。', '琐窗寒·寒食', '', '节日');
INSERT INTO `t_mingju` VALUES (1627, '欧阳修', '绿杨带雨垂垂重。五色新丝缠角粽。', '渔家傲·五月榴花妖艳烘', '', '节日');
INSERT INTO `t_mingju` VALUES (1628, '殷尧藩', '鹤发垂肩尺许长，离家三十五端阳。', '同州端午', '', '节日');
INSERT INTO `t_mingju` VALUES (1629, '赵蕃', '年年端午风兼雨，似为屈原陈昔冤。', '端午三首', '', '节日');
INSERT INTO `t_mingju` VALUES (1630, '徐凝', '一道鹊桥横渺渺，千声玉佩过玲玲。', '七夕', '', '节日');
INSERT INTO `t_mingju` VALUES (1631, '吴文英', '万里婵娟，几许雾屏云幔。', '玉漏迟·瓜泾度中秋夕赋', '', '节日');
INSERT INTO `t_mingju` VALUES (1632, '刘长卿', '乡心新岁切，天畔独潸然。', '新年作', '', '节日');
INSERT INTO `t_mingju` VALUES (1633, '孟浩然', '不见穿针妇，空怀故国楼。', '他乡七夕', '', '节日');
INSERT INTO `t_mingju` VALUES (1634, '陈著', '中秋佳月最端圆。老痴顽。见多番。', '江城子·中秋早雨晚晴', '', '节日');
INSERT INTO `t_mingju` VALUES (1635, '贝琼', '风雨端阳生晦冥，汨罗无处吊英灵。', '已酉端午', '', '节日');
INSERT INTO `t_mingju` VALUES (1636, '窦巩', '烟水初销见万家，东风吹柳万条斜。', '襄阳寒食寄宇文籍', '', '节日');
INSERT INTO `t_mingju` VALUES (1637, '苏轼', '霜风渐欲作重阳，熠熠溪边野菊香。', '捕蝗至浮云岭山行疲苶有怀子由弟二首·其二', '', '节日');
INSERT INTO `t_mingju` VALUES (1638, '李商隐', '月色灯山满帝都，香车宝盖隘通衢。', '观灯乐行', '', '节日');
INSERT INTO `t_mingju` VALUES (1639, '元好问', '袨服华妆着处逢，六街灯火闹儿童。', '京都元夕', '', '节日');
INSERT INTO `t_mingju` VALUES (1640, '毛滂', '一年滴尽莲花漏。碧井酴酥沈冻酒。', '玉楼春·己卯岁元日', '', '节日');
INSERT INTO `t_mingju` VALUES (1641, '权德舆', '良辰当五日，偕老祝千年。', '端午日礼部宿斋有衣服彩结之贶以诗还答', '', '节日');
INSERT INTO `t_mingju` VALUES (1642, '德容', '玉露金风报素秋，穿针楼上独含愁。', '七夕二首·其一', '', '节日');
INSERT INTO `t_mingju` VALUES (1643, '辛弃疾', '问他有甚堪悲处？思量却也有悲时，重阳节近多风雨。', '踏莎行·庚戌中秋后二夕带湖篆冈小酌', '', '节日');
INSERT INTO `t_mingju` VALUES (1644, '朱敦儒', '美人慵翦上元灯，弹泪倚瑶瑟。', '好事近·春雨细如尘', '', '节日');
INSERT INTO `t_mingju` VALUES (1645, '高启', '白下有山皆绕郭，清明无客不思家。', '清明呈馆中诸公', '', '节日');
INSERT INTO `t_mingju` VALUES (1646, '郭应祥', '琼楼玉宇。分明不受人间暑。寻常岂是无三五。', '醉落魄·丙寅中秋', '', '节日');
INSERT INTO `t_mingju` VALUES (1647, '慧霖', '遮莫圆明似前度，不知谁续广寒游。', '闰中秋玩月', '', '节日');
INSERT INTO `t_mingju` VALUES (1648, '文森', '三载重阳菊，开时不在家。', '九日', '', '节日');
INSERT INTO `t_mingju` VALUES (1649, '序灯', '吟怀未许老重阳，霜雪无端入鬓长。', '九日吴山宴集值雨次韵', '', '节日');
INSERT INTO `t_mingju` VALUES (1650, '朱淑真', '清明过了，不堪回首，云锁朱楼。', '眼儿媚·风日迟迟弄轻柔', '', '节日');
INSERT INTO `t_mingju` VALUES (1651, '赵长卿', '怀家寒食夜，中酒落花天。', '临江仙·暮春', '', '节日');
INSERT INTO `t_mingju` VALUES (1652, '柳永', '拆桐花烂漫，乍疏雨、洗清明。', '木兰花慢·拆桐花烂漫', '', '节日');
INSERT INTO `t_mingju` VALUES (1653, '苏轼', '寒食后，酒醒却咨嗟。', '望江南·超然台作', '', '节日');
INSERT INTO `t_mingju` VALUES (1654, '王磐', '听元宵，往岁喧哗，歌也千家，舞也千家。', '古蟾宫·元宵', '', '节日');
INSERT INTO `t_mingju` VALUES (1655, '韦庄', '清晓妆成寒食天，柳球斜袅间花钿，卷帘直出画堂前。', '浣溪沙·清晓妆成寒食天', '', '节日');
INSERT INTO `t_mingju` VALUES (1656, '张镃', '清愁诗酒少，寒食雨风多。', '寒食', '', '节日');
INSERT INTO `t_mingju` VALUES (1657, '韦应物', '把酒看花想诸弟，杜陵寒食草青青。', '寒食寄京师诸弟', '', '节日');
INSERT INTO `t_mingju` VALUES (1658, '殷尧藩', '不效艾符趋习俗，但祈蒲酒话升平。', '端午日', '', '节日');
INSERT INTO `t_mingju` VALUES (1659, '文天祥', '五月五日午，赠我一枝艾。', '端午即事', '', '节日');
INSERT INTO `t_mingju` VALUES (1660, '文森', '何期今日酒，忽对故园花。', '九日', '', '节日');
INSERT INTO `t_mingju` VALUES (1661, '李商隐', '恐是仙家好别离，故教迢递作佳期。', '辛未七夕', '', '节日');
INSERT INTO `t_mingju` VALUES (1662, '李商隐', '岂能无意酬乌鹊，惟与蜘蛛乞巧丝。', '辛未七夕', '', '节日');
INSERT INTO `t_mingju` VALUES (1663, '韦应物', '雨中禁火空斋冷，江上流莺独坐听。', '寒食寄京师诸弟', '', '节日');
INSERT INTO `t_mingju` VALUES (1664, '皇甫冉', '莺啼燕语报新年，马邑龙堆路几千。', '春思', '', '节日');
INSERT INTO `t_mingju` VALUES (1665, '卢照邻', '锦里开芳宴，兰缸艳早年。', '十五夜观灯', '', '节日');
INSERT INTO `t_mingju` VALUES (1666, '崔液', '玉漏银壶且莫催，铁关金锁彻明开。', '上元夜六首·其一', '', '节日');
INSERT INTO `t_mingju` VALUES (1667, '蒋捷', '不是暗尘明月，那时元夜。', '女冠子·元夕', '', '节日');
INSERT INTO `t_mingju` VALUES (1668, '沈佺期', '此夜星繁河正白，人传织女牵牛客。', '七夕曝衣篇', '', '节日');
INSERT INTO `t_mingju` VALUES (1669, '卢照邻', '接汉疑星落，依楼似月悬。', '十五夜观灯', '', '节日');
INSERT INTO `t_mingju` VALUES (1670, '周邦彦', '箫鼓喧，人影参差，满路飘香麝。', '解语花·上元', '', '节日');
INSERT INTO `t_mingju` VALUES (1671, '王建', '河边独自看星宿，夜织天丝难接续。', '七夕曲', '', '节日');
INSERT INTO `t_mingju` VALUES (1672, '董必武', '共庆新年笑语哗，红岩士女赠梅花。', '元旦口占用柳亚子怀人韵', '', '节日');
INSERT INTO `t_mingju` VALUES (1673, '孟浩然', '帝里重清明，人心自愁思。', '清明即事', '', '节日');
INSERT INTO `t_mingju` VALUES (1674, '李贺', '鹊辞穿线月，花入曝衣楼。', '七夕', '', '节日');
INSERT INTO `t_mingju` VALUES (1675, '郭应祥', '惟有今宵，皓彩皆同普。', '醉落魄·丙寅中秋', '', '节日');
INSERT INTO `t_mingju` VALUES (1676, '文征明', '寄言俦侣，莫负广寒沈醉。', '念奴娇·中秋对月', '', '节日');
INSERT INTO `t_mingju` VALUES (1677, '史达祖', '斟酌姮娥，九秋宫殿冷。', '齐天乐·中秋宿真定驿', '', '节日');
INSERT INTO `t_mingju` VALUES (1678, '史达祖', '想子胥今夜见嫦娥，沉冤雪。', '满江红·中秋夜潮', '', '节日');
INSERT INTO `t_mingju` VALUES (1679, '韩偓', '夜深斜搭秋千索，楼阁朦胧烟雨中。', '夜深 / 寒食夜', '', '节日');
INSERT INTO `t_mingju` VALUES (1680, '周密', '暗凝伫。近重阳、满城风雨。', '扫花游·九日怀归', '', '节日');
INSERT INTO `t_mingju` VALUES (1681, '妙信', '握手经年别，惊心九日霜。', '九日酬诸子', '', '节日');
INSERT INTO `t_mingju` VALUES (1682, '李煜', '又是过重阳，台榭登临处，茱萸香坠。', '谢新恩·冉冉秋光留不住', '', '节日');
INSERT INTO `t_mingju` VALUES (1683, '张先', '芳洲拾翠暮忘归，秀野踏青来不定。', '木兰花·乙卯吴兴寒食', '', '节日');
INSERT INTO `t_mingju` VALUES (1684, '李甲', '忆得盈盈拾翠侣，共携赏、凤城寒食。', '帝台春·芳草碧色', '', '节日');
INSERT INTO `t_mingju` VALUES (1685, '程颢', '况是清明好天气，不妨游衍莫忘归。', '郊行即事', '', '节日');
INSERT INTO `t_mingju` VALUES (1686, '张继', '试上吴门窥郡郭，清明几处有新烟。', '闾门即事', '', '节日');
INSERT INTO `t_mingju` VALUES (1687, '晏几道', '万条千缕绿相迎。舞烟眠雨过清明。', '浣溪沙·二月和风到碧城', '', '节日');
INSERT INTO `t_mingju` VALUES (1688, '白居易', '乌啼鹊噪昏乔木，清明寒食谁家哭。', '寒食野望吟', '', '节日');
INSERT INTO `t_mingju` VALUES (1689, '薛昭蕴', '清明节，雨晴天，得意正当年。', '喜迁莺·清明节', '', '节日');
INSERT INTO `t_mingju` VALUES (1690, '姜塘', '重阳佳节意休休，与客携壶共上楼。', '摘星楼九日登临', '', '节日');
INSERT INTO `t_mingju` VALUES (1691, '赵可', '九日黄花才过了，一尊聊慰秋容老。', '凤栖梧·霜树重重青嶂小', '', '节日');
INSERT INTO `t_mingju` VALUES (1692, '苏辙', '素娥无赖，西去曾不为人留。', '水调歌头·徐州中秋', '', '节日');
INSERT INTO `t_mingju` VALUES (1693, '陈师道', '东飞乌鹊西飞燕。盈盈一水经年见。', '菩萨蛮·七夕', '', '节日');
INSERT INTO `t_mingju` VALUES (1694, '赵以夫', '寻思不似鹊桥人，犹自得、一年一度。', '鹊桥仙·富沙七夕为友人赋', '', '节日');
INSERT INTO `t_mingju` VALUES (1695, '毛文锡', '七夕年年信不违，银河清浅白云微，蟾光鹊影伯劳飞。', '浣溪沙·七夕年年信不违', '', '节日');
INSERT INTO `t_mingju` VALUES (1696, '严蕊', '穿针人在合欢楼，正月露、玉盘高泻。', '鹊桥仙·碧梧初出', '', '节日');
INSERT INTO `t_mingju` VALUES (1697, '苏洵', '佳节久从愁里过，壮心偶傍醉中来。', '九日和韩魏公', '', '节日');
INSERT INTO `t_mingju` VALUES (1698, '孟浩然', '他乡逢七夕，旅馆益羁愁。', '他乡七夕', '', '节日');
INSERT INTO `t_mingju` VALUES (1699, '宋之问', '马上逢寒食，愁中属暮春。', '途中寒食题黄梅临江驿寄崔融', '', '节日');
INSERT INTO `t_mingju` VALUES (1700, '徐灿', '时节是重阳，菊花牵恨长。', '菩萨蛮·秋闺', '', '节日');
INSERT INTO `t_mingju` VALUES (1701, '汤显祖', '独写菖蒲竹叶杯，蓬城芳草踏初回。', '午日处州禁竞渡', '', '节日');
INSERT INTO `t_mingju` VALUES (1702, '曹雪芹', '对兹佳品酬佳节，桂拂清风菊带霜。', '螃蟹咏', '', '节日');
INSERT INTO `t_mingju` VALUES (1703, '杜甫', '采采黄金花，何由满衣袖。', '九日寄岑参', '', '节日');
INSERT INTO `t_mingju` VALUES (1704, '罗隐', '应倾谢女珠玑箧，尽写檀郎锦绣篇。', '七夕', '', '节日');
INSERT INTO `t_mingju` VALUES (1705, '周邦彦', '望千门如昼，嬉笑游冶。', '解语花·上元', '', '节日');
INSERT INTO `t_mingju` VALUES (1706, '符曾', '见说马家滴粉好，试灯风里卖元宵。', '上元竹枝词', '', '节日');
INSERT INTO `t_mingju` VALUES (1707, '文征明', '不求见面惟通谒，名纸朝来满敝庐。', '拜年', '', '节日');
INSERT INTO `t_mingju` VALUES (1708, '刘辰翁', '宣和旧日，临安南渡，芳景犹自如故。', '永遇乐·璧月初晴', '', '节日');
INSERT INTO `t_mingju` VALUES (1709, '崔曙', '且欲近寻彭泽宰，陶然共醉菊花杯。', '九日登望仙台呈刘明府容', '', '节日');
INSERT INTO `t_mingju` VALUES (1710, '云表', '寒食时看郭外春，野人无处不伤神。', '寒食诗', '', '节日');
INSERT INTO `t_mingju` VALUES (1711, '李清照', '淡荡春光寒食天。玉炉沈水袅残烟。梦回山枕隐花钿。', '浣溪沙·淡荡春光寒食天', '', '节日');
INSERT INTO `t_mingju` VALUES (1712, '宋之问', '去年上巳洛桥边，今年寒食庐山曲。', '寒食江州满塘驿', '', '节日');
INSERT INTO `t_mingju` VALUES (1713, '孟浩然', '谁忍窥河汉，迢迢问斗牛。', '他乡七夕', '', '节日');
INSERT INTO `t_mingju` VALUES (1714, '吴文英', '夜色银河情一片。轻帐偷欢，银烛罗屏怨。', '凤栖梧·甲辰七夕', '', '节日');
INSERT INTO `t_mingju` VALUES (1715, '吴文英', '每圆处即良宵，甚此夕偏饶，对歌临怨。', '玉漏迟·瓜泾度中秋夕赋', '', '节日');
INSERT INTO `t_mingju` VALUES (1716, '妙信', '不负东篱约，携尊过草堂。', '九日酬诸子', '', '节日');
INSERT INTO `t_mingju` VALUES (1717, '宋祁', '白头太守真愚甚，满插茱萸望辟邪。', '九日置酒', '', '节日');
INSERT INTO `t_mingju` VALUES (1718, '吴文英', '分不尽，半凉天。可怜闲剩此婵娟。', '思佳客·闰中秋', '', '节日');
INSERT INTO `t_mingju` VALUES (1719, '辛弃疾', '想见广寒宫殿，正云梳风掠。', '好事近·中秋席上和王路钤', '', '节日');
INSERT INTO `t_mingju` VALUES (1720, '柳永', '拆桐花烂熳，乍疏雨、洗清明。', '木兰花慢·拆桐花烂熳', '', '节日');
INSERT INTO `t_mingju` VALUES (1721, '苏轼', '彩线轻缠红玉臂，小符斜挂绿云鬟。', '浣溪沙·端午', '', '节日');
INSERT INTO `t_mingju` VALUES (1722, '吴文英', '时霎清明，载花不过西园路。', '点绛唇·时霎清明', '', '节日');
INSERT INTO `t_mingju` VALUES (1723, '杨万里', '梨花自寒食，进节只愁余。', '寒食上冢', '', '节日');
INSERT INTO `t_mingju` VALUES (1724, '周邦彦', '又酒趁哀弦，灯照离席。梨花榆火催寒食。', '兰陵王·柳', '', '节日');
INSERT INTO `t_mingju` VALUES (1725, '沈辂', '万里秋光客兴赊，同人九日惜年华。', '九日登高台寺', '', '节日');
INSERT INTO `t_mingju` VALUES (1726, '张可久', '细看茱萸一笑，诗翁健似常年。', '风入松·九日', '', '节日');
INSERT INTO `t_mingju` VALUES (1727, '孟云卿', '贫居往往无烟火，不独明朝为子推。', '寒食', '', '节日');
INSERT INTO `t_mingju` VALUES (1728, '沈佺期', '不知何处火，来就客心然。', '寒食', '', '节日');
INSERT INTO `t_mingju` VALUES (1729, '沈佺期', '普天皆灭焰，匝地尽藏烟。', '寒食', '', '节日');
INSERT INTO `t_mingju` VALUES (1730, '杨徽之', '清明时节出郊原，寂寂山城柳映门。', '寒食寄郑起侍郎', '', '节日');
INSERT INTO `t_mingju` VALUES (1731, '赵令畤', '残杏枝头花几许。啼红正恨清明雨。', '蝶恋花·欲减罗衣寒未去', '', '节日');
INSERT INTO `t_mingju` VALUES (1732, '赵时春', '九日登高处，群山入望赊。', '原州九日', '', '节日');
INSERT INTO `t_mingju` VALUES (1733, '张可久', '西风泼眼山如画，有黄花休恨无钱。', '风入松·九日', '', '节日');
INSERT INTO `t_mingju` VALUES (1734, '齐之鸾', '朔方三度重阳节，河曲干旌岁岁忙。', '九日登清水营城', '', '节日');
INSERT INTO `t_mingju` VALUES (1735, '吴文英', '算明朝、未了重阳，紫萸应耐看。', '霜花腴·重阳前一日泛石湖', '', '节日');
INSERT INTO `t_mingju` VALUES (1736, '姚云文', '紫萸一枝传赐，梦谁到、汉家陵。', '紫萸香慢·近重阳', '', '节日');
INSERT INTO `t_mingju` VALUES (1737, '王建', '幸回郎意且斯须，一年中别今始初。', '七夕曲', '', '节日');
INSERT INTO `t_mingju` VALUES (1738, '毛文锡', '每恨蟪蛄怜婺女，几回娇妒下鸳机，今宵嘉会两依依。', '浣溪沙·七夕年年信不违', '', '节日');
INSERT INTO `t_mingju` VALUES (1739, '王安石', '更倾寒食泪，欲涨冶城潮。', '壬辰寒食', '', '节日');
INSERT INTO `t_mingju` VALUES (1740, '杜甫', '佳辰强饮食犹寒，隐几萧条戴鹖冠。', '小寒食舟中作', '', '节日');
INSERT INTO `t_mingju` VALUES (1741, '韦安石', '重九开秋节，得一动宸仪。', '奉和九日幸临渭亭登高应制得枝字', '', '节日');
INSERT INTO `t_mingju` VALUES (1742, '董必武', '陪都歌舞迎佳节，遥祝延安景物华。', '元旦口占用柳亚子怀人韵', '', '节日');
INSERT INTO `t_mingju` VALUES (1743, '晁端礼', '九衢雪小，千门月淡，元宵灯近。', '水龙吟·咏月', '', '节日');
INSERT INTO `t_mingju` VALUES (1744, '杜甫', '是节东篱菊，纷披为谁秀。', '九日寄岑参', '', '节日');
INSERT INTO `t_mingju` VALUES (1745, '岑参', '九日黄花酒，登高会昔闻。', '奉陪封大夫九日登高', '', '节日');
INSERT INTO `t_mingju` VALUES (1746, '范成大', '媪引浓妆女，儿扶烂醉翁。', '寒食郊行书事', '', '节日');
INSERT INTO `t_mingju` VALUES (1747, '王琼', '辕门菊酒生豪兴，雁塞风云惬壮游。', '九日登花马池城', '', '节日');
INSERT INTO `t_mingju` VALUES (1748, '吴文英', '疏篱下、试觅重阳，醉擘青露菊。', '一寸金·秋感', '', '节日');
INSERT INTO `t_mingju` VALUES (1749, '周端臣', '霭芳阴未解，乍天气、过元宵。', '木兰花慢·送人之官九华', '', '节日');
INSERT INTO `t_mingju` VALUES (1750, '赵时春', '将坛醇酒冰浆细，元夜邀宾灯火新。', '元宵饮陶总戎家二首', '', '节日');

-- ----------------------------
-- Table structure for t_mingju_hibernate_seq
-- ----------------------------
DROP TABLE IF EXISTS `t_mingju_hibernate_seq`;
CREATE TABLE `t_mingju_hibernate_seq`  (
  `sequence_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sequence_next_hi_value` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`sequence_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_mingju_hibernate_seq
-- ----------------------------
INSERT INTO `t_mingju_hibernate_seq` VALUES ('mingju_id', 1750);

-- ----------------------------
-- Table structure for t_state
-- ----------------------------
DROP TABLE IF EXISTS `t_state`;
CREATE TABLE `t_state`  (
  `id` bigint(20) NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `available` bit(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_8ikys3ocofofq23pkptulmxc1`(`type`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_state
-- ----------------------------
INSERT INTO `t_state` VALUES (1, 'repair', b'1');
INSERT INTO `t_state` VALUES (2, 'dayDP', b'0');
INSERT INTO `t_state` VALUES (3, 'register', b'0');

-- ----------------------------
-- Table structure for t_state_hibernate_seq
-- ----------------------------
DROP TABLE IF EXISTS `t_state_hibernate_seq`;
CREATE TABLE `t_state_hibernate_seq`  (
  `sequence_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sequence_next_hi_value` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`sequence_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_state_hibernate_seq
-- ----------------------------
INSERT INTO `t_state_hibernate_seq` VALUES ('state_id', 3);

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` bigint(20) NOT NULL,
  `form_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `open_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `reg_date` datetime(6) NULL DEFAULT NULL,
  `root_level` int(11) NULL DEFAULT NULL,
  `sex` int(11) NULL DEFAULT NULL,
  `sno` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `which_group` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- TODO Records of t_user
-- ----------------------------

-- ----------------------------
-- Table structure for t_user_hibernate_seq
-- ----------------------------
DROP TABLE IF EXISTS `t_user_hibernate_seq`;
CREATE TABLE `t_user_hibernate_seq`  (
  `sequence_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sequence_next_hi_value` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`sequence_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_hibernate_seq
-- ----------------------------
INSERT INTO `t_user_hibernate_seq` VALUES ('user_id', 1000);

-- ----------------------------
-- Table structure for t_version
-- ----------------------------
DROP TABLE IF EXISTS `t_version`;
CREATE TABLE `t_version`  (
  `id` bigint(20) NOT NULL DEFAULT 0 COMMENT 'versionCode',
  `date` datetime(6) NULL DEFAULT NULL,
  `message` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `version` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'versionName',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_version
-- ----------------------------
INSERT INTO `t_version` VALUES (1, '2019-08-24 11:39:13.000000', '修改检查更新的位置', 'https://www.lanzous.com/i5rwyjc', '1.5');
INSERT INTO `t_version` VALUES (2, '2019-08-25 11:45:07.000000', '增加历史更新记录', 'https://www.lanzous.com/i5sag5e', '1.6');
INSERT INTO `t_version` VALUES (3, '2019-08-26 11:30:13.000000', '修复屏幕旋转会闪退的bug（强制竖屏）', 'https://www.lanzous.com/i5sp00d', '1.7');
INSERT INTO `t_version` VALUES (4, '2019-09-05 15:59:52.000000', '（更新到这个版本会出现打不开的情况，清除一下数据就行了）。1.增加导出报修数据到excel文件功能（管理员）。2.bug修复。3.查看和下载历史版本。', 'https://www.lanzous.com/i5z0aej', '1.8');
INSERT INTO `t_version` VALUES (5, '2019-09-10 22:39:56.000000', '（从1.8版本之下更新的麻烦清除一下APP数据，否则会闪退）。1.报修单详情界面增加学院和年级（其实是前面忘了......），看需求更新。2.bug修复。', 'https://www.lanzous.com/i642gkd', '1.9');
INSERT INTO `t_version` VALUES (6, '2019-09-13 15:42:07.000000', '（从1.9版本之下更新的麻烦清除一下APP数据，否则会闪退）。详情界面增加查看故障图片功能（图片如果较大请耐心等待）。', 'https://www.lanzous.com/i65h5dg', '2.0');
INSERT INTO `t_version` VALUES (7, '2019-09-13 19:38:49.000000', '增加图片加载提示', 'https://www.lanzous.com/i65kwng', '2.1');
INSERT INTO `t_version` VALUES (8, '2019-09-15 12:22:08.000000', '点击图片放大', 'https://www.lanzous.com/i66f0ah', '2.2');
INSERT INTO `t_version` VALUES (9, '2019-09-23 22:40:08.000000', '1.详情界面点击QQ会复制QQ号并且打开QQ应用，不会进入临时聊天。2.支持查看多张图片，图片放大缩小的动画暂时没弄。', 'https://www.lanzous.com/i6d10mh', '2.3');
INSERT INTO `t_version` VALUES (10, '2019-10-05 11:22:30.000000', '1.修改管理员权限级别。2.更新改为强制更新。', 'https://www.lanzous.com/i6l5cji', '2.4');
INSERT INTO `t_version` VALUES (11, '2019-10-20 21:47:16.000000', '1.增加搜索功能，除了园区和报修单状态其他都可检索。2.增加开屏图片（上传图片找苗锦洲），可以设置是否启用和展示时间。3.已处理界面标题可以显示报修单个数。4.删除报修单时会先显示选中的报修单了', 'https://www.lanzous.com/i6voila', '2.5');
INSERT INTO `t_version` VALUES (12, '2019-10-22 22:42:29.000000', '增加了一些自定义设置', 'https://www.lanzous.com/i76761c', '2.6');
INSERT INTO `t_version` VALUES (13, '2019-11-13 23:10:40.000000', '1.登录界面布局微调，默认选中自动登录。2.每日一图增加服务开关（每天一张有点难顶，还是加个开关，让我名正言顺的咕咕咕吧😂）。3.每日一图的跳过操作会立马执行，不会等到图片加载完成后才响应操作。4.打开APP或者检查更新时如果发现服务端不可用则提示禁止使用APP。5.可以修改与自己有关的已反馈报修单的维修人了，点击详情界面的维修人弹出选择框（管理员无限制）。6.侧滑栏园区文字颜色强制设置为黑色，因为某些第三方操作系统会覆盖默认主题。', 'https://www.lanzous.com/i7cjbed', '2.7');
INSERT INTO `t_version` VALUES (14, '2019-11-25 15:32:00.000000', '1.侧滑栏增加报修入口（可关闭）。2.增加修改报修单功能。3.详情界面界面微调。4.删除和修改操作会记录在服务端。', 'https://www.lanzous.com/i7ki75c', '2.8');
INSERT INTO `t_version` VALUES (15, '2019-12-23 23:01:00.000000', '报修系统后端用SpringBoot重写了一遍。新增：。1.可以上传每日启动图片了（管理员）。2.控制台新增注册开关，界面布局有微调。3.报修单如果有故障图片会在“故障详情”四个字后面出现“（有图）”。修复：。转让按钮又回来了。优化：。第一次打开应用权限请求流程优化，拒绝授权后会弹出权限说明', 'https://www.lanzous.com/i88d3eb', '2.9');
INSERT INTO `t_version` VALUES (16, '2020-01-16 21:43:00.000000', '新增：（可在设置里调整部分效果）。1.维修排行及统计	。a.周排行榜、总排行榜	。b.接单时间段、接单日期、报修园区、报修学院、报修年级、报修人电脑水平、服务内容	（图表内容均可点击查看对应的报修单）。2.顶部标题栏副标题展示随机名句（自己从古诗文网爬取的，可在设置里选择话题和是否启用），点击顶部标题栏可弹出诗句的详细信息。3.搜索时如果输入“有图”则会展示带图的报修单。修复：。报修网址变为https://www.jiangnan-dzjsb.club:444或http://www.jiangnan-dzjsb.club:81，现在域名必须备案才能使用80和443端口......。优化：。优化展示报修单列表的界面的标题', 'https://www.jiangnan-dzjsb.club:444', '3.0.0');
INSERT INTO `t_version` VALUES (17, '2020-01-24 16:27:50.000000', '适配夜间模式（需系统支持且开启深夜模式）。部分体验优化。报修网址改为https://jiangnan-dzjsb.club', 'https://www.lanzous.com/i8uhk2h', '3.0.1（春节快乐！）');
INSERT INTO `t_version` VALUES (18, '2020-01-24 16:48:50.000000', '关于界面新增当前版本更新日志', 'https://www.lanzous.com/i8uhtfe', '3.0.2（武汉加油！）');
INSERT INTO `t_version` VALUES (19, '2020-02-02 23:04:50.000000', 'API接口更新。报修网址：https://www.jiangnan-dzjsb.club或https://jiangnan-dzjsb.club', 'https://www.jiangnan-dzjsb.club', '3.0.3（武汉加油，中国加油！）');
INSERT INTO `t_version` VALUES (20, '2020-02-09 23:33:37.000000', '新增：\n1.控制台新增发布新版本推送功能（最高管理员）\n注：非MIUI如果要接受通知则必须授予获取手机号和存储空间权限（小米推送官方文档要求的），并常驻后台\n2.增加可拖动滑动指示条\n优化：\n管理台界面优化\n其他：\n报修网站前端发布到gitpage上了，80和443端口不会被拦截，http也会自动跳转，https://jiangnan-dzjsb.club.club或者https://www.jiangnan-dzjsb.club均可正常访问，并增加服务端不可用界面，优化体验', 'https://www.lanzous.com/i978mab', '3.0.4（武汉加油，中国加油！）');

-- ----------------------------
-- Table structure for t_version_hibernate_seq
-- ----------------------------
DROP TABLE IF EXISTS `t_version_hibernate_seq`;
CREATE TABLE `t_version_hibernate_seq`  (
  `sequence_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sequence_next_hi_value` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`sequence_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_version_hibernate_seq
-- ----------------------------
INSERT INTO `t_version_hibernate_seq` VALUES ('version_id', 20);

SET FOREIGN_KEY_CHECKS = 1;
