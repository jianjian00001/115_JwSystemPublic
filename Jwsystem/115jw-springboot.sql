/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : localhost:3306
 Source Schema         : jw-springboot

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 04/01/2024 16:47:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for absent
-- ----------------------------
DROP TABLE IF EXISTS `absent`;
CREATE TABLE `absent`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` date NULL DEFAULT NULL,
  `sectionId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `description` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `team_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of absent
-- ----------------------------
INSERT INTO `absent` VALUES ('1737469192592478209', '1737085145357815809', '20001', '9', '2023-12-20', '10', 1, NULL, '2');
INSERT INTO `absent` VALUES ('1737469211680755714', '1737085145357815809', '20001', '9', '2023-12-20', '10', 1, NULL, '2');
INSERT INTO `absent` VALUES ('1740295357116030977', '1740295039045181442', '20001', '9', '2023-12-28', '12', 1, NULL, '1');

-- ----------------------------
-- Table structure for auth_function
-- ----------------------------
DROP TABLE IF EXISTS `auth_function`;
CREATE TABLE `auth_function`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '\'cs\'',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `page` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `generatemenu` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zindex` int(11) NULL DEFAULT NULL,
  `pid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `AK_Key_2`(`name`) USING BTREE,
  INDEX `FK_Reference_1`(`pid`) USING BTREE,
  CONSTRAINT `FK_Reference_1` FOREIGN KEY (`pid`) REFERENCES `auth_function` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_function
-- ----------------------------

-- ----------------------------
-- Table structure for auth_role
-- ----------------------------
DROP TABLE IF EXISTS `auth_role`;
CREATE TABLE `auth_role`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `AK_Key_2`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_role
-- ----------------------------
INSERT INTO `auth_role` VALUES ('1211619707833311234', '教务人员', 'jwry', '教务人员');
INSERT INTO `auth_role` VALUES ('6b4fef6e4ecb11e8bf5d34de1af4e65a', '讲师', 'js', '讲师');
INSERT INTO `auth_role` VALUES ('6be2e8aa4ec911e8bf5d34de1af4e65a', '管理员', 'gly', '管理员');
INSERT INTO `auth_role` VALUES ('8a6eb9ab5cc439b9015cc43d66590000', '院主任', 'yzr', '院主任');
INSERT INTO `auth_role` VALUES ('b762e0f84ec911e8bf5d34de1af4e65a', '学生', 'xs', '学生');

-- ----------------------------
-- Table structure for course_comment
-- ----------------------------
DROP TABLE IF EXISTS `course_comment`;
CREATE TABLE `course_comment`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `q1` int(11) NULL DEFAULT NULL,
  `q2` int(11) NULL DEFAULT NULL,
  `q3` int(11) NULL DEFAULT NULL,
  `q4` int(11) NULL DEFAULT NULL,
  `q5` int(11) NULL DEFAULT NULL,
  `q6` int(11) NULL DEFAULT NULL,
  `q7` int(11) NULL DEFAULT NULL,
  `q8` int(11) NULL DEFAULT NULL,
  `q9` int(11) NULL DEFAULT NULL,
  `q10` int(11) NULL DEFAULT NULL,
  `scontent` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tcontent` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tm_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of course_comment
-- ----------------------------
INSERT INTO `course_comment` VALUES ('1738034790502330370', 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, '很不错', NULL, '1');

-- ----------------------------
-- Table structure for course_system
-- ----------------------------
DROP TABLE IF EXISTS `course_system`;
CREATE TABLE `course_system`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of course_system
-- ----------------------------
INSERT INTO `course_system` VALUES ('1', '公共课程', 1);
INSERT INTO `course_system` VALUES ('2', '专业课程', 1);
INSERT INTO `course_system` VALUES ('3', '实体教学课程', 1);
INSERT INTO `course_system` VALUES ('4', '通识教育', 1);
INSERT INTO `course_system` VALUES ('5', '实践与创新创业教育 ', 1);
INSERT INTO `course_system` VALUES ('6', '学科基础教育', 1);

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `i_frame` bit(1) NULL DEFAULT NULL COMMENT '是否外链',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件',
  `pid` bigint(20) NOT NULL DEFAULT 0 COMMENT '上级菜单ID',
  `sort` bigint(20) NULL DEFAULT NULL COMMENT '排序',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '链接地址',
  `cache` bit(1) NULL DEFAULT b'0',
  `hidden` bit(1) NULL DEFAULT b'0',
  `component_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '-',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `permission` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKqcf9gem97gqa5qjm4d3elcqt5`(`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, b'0', '基础管理', NULL, 0, 1, 'system', 'admin', b'0', b'0', NULL, '2018-12-18 15:11:29', NULL, 0);
INSERT INTO `menu` VALUES (2, b'0', '学院管理', 'admin/college/index', 1, 2, 'peoples', 'college', b'1', b'0', 'College', '2018-12-18 15:14:44', 'user:list', 1);
INSERT INTO `menu` VALUES (3, b'0', '专业管理', 'admin/specialty/index', 1, 3, 'role', 'specialty', b'1', b'0', 'Specialty', '2018-12-18 15:16:07', 'roles:list', 1);
INSERT INTO `menu` VALUES (5, b'0', '班级管理', 'admin/classes/index', 1, 5, 'menu', 'classes', b'1', b'0', 'Classes', '2018-12-18 15:17:28', 'menu:list', 1);
INSERT INTO `menu` VALUES (6, b'0', '权限管理', NULL, 0, 10, 'monitor', 'admin', b'0', b'0', NULL, '2018-12-18 15:17:48', NULL, 0);
INSERT INTO `menu` VALUES (7, b'0', '权限管理', 'admin/menu/index', 6, 1, 'log', 'menu', b'0', b'0', 'Menu', '2018-12-18 15:18:26', NULL, 1);
INSERT INTO `menu` VALUES (8, b'0', '角色管理', 'admin/role/index', 6, 2, 'redis', 'role', b'0', b'0', 'Role', '2018-12-18 15:19:01', 'redis:list', 1);
INSERT INTO `menu` VALUES (9, b'0', '用户管理', 'admin/user/index', 6, 3, 'sqlMonitor', 'user', b'0', b'0', 'User', '2018-12-18 15:19:34', NULL, 1);
INSERT INTO `menu` VALUES (14, b'0', '教学计划管理', '', 0, 0, 'system', 'admin', b'0', b'0', '', '2019-12-30 08:23:35', '', 0);
INSERT INTO `menu` VALUES (15, b'0', '教学执行管理', 'admin/plan/index', 14, 1, 'system', 'plan', b'0', b'0', 'Plan', '2019-12-30 08:46:09', '', 1);
INSERT INTO `menu` VALUES (16, b'0', '培养方案管理', 'admin/program/index', 14, 2, 'system', 'program', b'0', b'0', 'Program', '2019-12-30 08:46:12', '', 1);
INSERT INTO `menu` VALUES (17, b'0', '信息查询', '', 0, 0, 'system', 'student', b'0', b'0', '', '2019-12-30 08:46:15', '', 0);
INSERT INTO `menu` VALUES (18, b'0', '个人课表', 'student/schedule/index', 17, 1, 'system', 'schedule', b'0', b'0', 'Schedule', '2019-12-30 08:46:19', '', 1);
INSERT INTO `menu` VALUES (19, b'0', '成绩查询', 'student/score/index', 17, 2, 'system', 'score', b'0', b'0', 'Score', '2019-12-30 08:46:22', '', 1);
INSERT INTO `menu` VALUES (20, b'0', '培养管理', '', 0, 0, 'system', 'student', b'0', b'0', '', '2019-12-30 08:46:24', '', 0);
INSERT INTO `menu` VALUES (21, b'0', '教学执行计划', 'student/plan/index', 20, 1, 'system', 'plan', b'0', b'0', 'Plan', '2019-12-30 08:44:41', '', 1);
INSERT INTO `menu` VALUES (22, b'0', '培养方案明细', 'student/program/index', 20, 2, 'system', 'program', b'0', b'0', 'Program', '2019-12-30 08:46:49', '', 1);
INSERT INTO `menu` VALUES (23, b'0', '学籍管理', '', 0, 0, 'system', 'student', b'0', b'0', '', '2019-12-30 08:48:10', '', 0);
INSERT INTO `menu` VALUES (24, b'0', '学籍卡片', 'student/info/index', 23, 1, 'system', 'info', b'0', b'0', 'Info', '2019-12-30 08:48:39', '', 1);
INSERT INTO `menu` VALUES (25, b'0', '教学评价', '', 0, 0, 'system', 'student', b'0', b'0', '', '2019-12-30 08:49:33', '', 0);
INSERT INTO `menu` VALUES (26, b'0', '学生评价', 'student/comment/index', 25, 1, 'system', 'comment', b'0', b'0', 'Comment', '2019-12-30 08:50:07', '', 1);
INSERT INTO `menu` VALUES (27, b'0', '选课中心', '', 0, 0, 'system', 'student', b'0', b'0', '', '2019-12-30 08:51:50', '', 0);
INSERT INTO `menu` VALUES (28, b'0', '学生选课', 'student/course/index', 27, 1, 'system', 'Course', b'0', b'0', 'Course', '2019-12-30 08:53:51', '', 1);
INSERT INTO `menu` VALUES (29, b'0', '成绩管理', '', 0, 0, 'system', 'teacher', b'0', b'0', '', '2019-12-30 08:58:28', '', 0);
INSERT INTO `menu` VALUES (30, b'0', '成绩录入', 'teacher/score/index', 29, 1, 'stystem', 'score', b'0', b'0', 'Score', '2019-12-30 08:59:45', '', 1);
INSERT INTO `menu` VALUES (31, b'0', '评价管理', '', 0, 0, 'system', 'teacher', b'0', b'0', '', '2019-12-30 09:00:27', '', 0);
INSERT INTO `menu` VALUES (32, b'0', '评价查询', 'teacher/comment/index', 31, 1, 'system', 'comment', b'0', b'0', 'Comment', '2019-12-30 09:01:00', '', 1);
INSERT INTO `menu` VALUES (33, b'0', '信息查询', '', 0, 0, 'system', 'teacher', b'0', b'0', '', '2019-12-30 09:01:43', '', 0);
INSERT INTO `menu` VALUES (34, b'0', '个人信息', 'teacher/info/index', 33, 1, 'system', 'info', b'0', b'0', 'Info', '2019-12-30 09:02:30', '', 1);
INSERT INTO `menu` VALUES (35, b'0', '个人课表', 'teacher/schedule/index', 33, 2, 'system', 'schedule', b'0', b'0', 'Schedule', '2019-12-30 09:05:22', '', 1);
INSERT INTO `menu` VALUES (36, b'0', '课程查询', 'teacher/course/index', 33, 3, 'system', 'course', b'0', b'0', 'Course', '2019-12-30 09:06:00', '', 1);
INSERT INTO `menu` VALUES (37, b'0', '评价信息', 'student/comment/teamComment', 25, 3, '', 'teamComment', b'0', b'1', 'TeamComment', '2020-01-04 21:03:59', '', 1);
INSERT INTO `menu` VALUES (38, b'0', '教师管理', '', 0, 0, 'system', 'admin', b'0', b'0', '', '2020-01-05 14:23:31', '', 1);
INSERT INTO `menu` VALUES (39, b'0', '选课管理', '', 0, 0, 'system', 'admin', b'0', b'0', '', '2020-01-05 14:24:20', '', 0);
INSERT INTO `menu` VALUES (40, b'0', '信息查询', 'admin/course/index', 39, 1, 'system', 'course', b'0', b'0', 'Course', '2020-01-05 14:25:07', '', 1);
INSERT INTO `menu` VALUES (41, b'0', '档案管理', 'admin/teacher/index', 38, 1, 'system', 'teacher', b'0', b'0', 'Teacher', '2020-01-05 14:26:02', '', 0);
INSERT INTO `menu` VALUES (42, b'0', '结课申请', 'admin/course/endCourse', 39, 2, 'system', 'endCourse', b'0', b'0', 'EndCourse', '2020-01-05 14:30:47', '', 1);
INSERT INTO `menu` VALUES (43, b'0', '成绩管理', '', 0, 0, 'system', 'admin', b'0', b'0', '', '2020-01-05 14:32:38', '', 0);
INSERT INTO `menu` VALUES (44, b'0', '成绩统计', 'admin/score/index', 43, 1, 'system', 'score', b'0', b'0', 'Score', '2020-01-05 14:33:15', '', 1);
INSERT INTO `menu` VALUES (45, b'0', '评价课程列表', 'teacher/comment/teamComment', 31, 3, 'system', 'teacherTeamComment', b'0', b'1', 'TeacherTeamComment', '2020-01-23 10:28:42', NULL, 1);
INSERT INTO `menu` VALUES (46, b'0', '学生评价列表', 'teacher/comment/studentList', 31, 4, '', 'studentList', b'0', b'1', 'StudentList', '2020-01-23 11:05:33', '', 0);
INSERT INTO `menu` VALUES (47, b'0', '评价管理', '', 0, 0, 'system', 'admin', b'0', b'0', '', '2020-01-23 17:57:08', '', 1);
INSERT INTO `menu` VALUES (48, b'0', '发布评价', 'admin/comment/index', 47, 1, 'system', 'comment', b'0', b'0', 'Comment', '2020-01-23 17:58:43', '', 0);
INSERT INTO `menu` VALUES (49, b'0', '开课申请', 'admin/course/applyCourse', 39, 3, 'system', 'applyCourse', b'0', b'0', 'ApplyCourse', '2020-01-26 15:06:50', '', 0);
INSERT INTO `menu` VALUES (50, b'0', '选课管理', '', 0, 0, 'system', 'teacher', b'0', b'0', '', '2020-01-28 11:04:28', '', 1);
INSERT INTO `menu` VALUES (51, b'0', '课程申请', 'teacher/course/apply', 50, 1, 'system', 'apply', b'0', b'0', 'Apply', '2020-01-28 11:05:39', '', 0);
INSERT INTO `menu` VALUES (52, b'0', '选课分配', 'admin/course/distribute', 39, NULL, 'peoples', 'distribute', b'0', b'0', 'Distribute', '2020-04-12 17:37:48', '', 0);

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` date NULL DEFAULT NULL COMMENT '修改时间',
  `status` int(11) NULL DEFAULT NULL COMMENT '是否可用',
  `publisher` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发布者id',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `html_content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('1738120727362048002', '18周考试', '2023-12-22', NULL, 1, '3', '18周考试', '<p>18周考试</p>\n');

-- ----------------------------
-- Table structure for plan
-- ----------------------------
DROP TABLE IF EXISTS `plan`;
CREATE TABLE `plan`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `create_time` date NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT 1,
  `year_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `specialty_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of plan
-- ----------------------------
INSERT INTO `plan` VALUES ('1213760757788155905', '大一第一学期教学计划', '2020-01-05', 1, '1', '080902');
INSERT INTO `plan` VALUES ('1213761697119313922', '大一第二学期教学计划', '2020-01-05', 1, '2', '080902');
INSERT INTO `plan` VALUES ('1221261560312262657', '大二第一学期教学计划', '2020-01-26', 1, '3', '080902');
INSERT INTO `plan` VALUES ('1221261643577585665', '大二第二学期教学计划', '2020-01-26', 1, '4', '080902');
INSERT INTO `plan` VALUES ('1221261675945029634', '大三第一学期教学计划', '2020-01-26', 1, '5', '080902');
INSERT INTO `plan` VALUES ('1221261710074081281', '大三第二学期教学计划', '2020-01-26', 1, '6', '080902');
INSERT INTO `plan` VALUES ('1221261740679917570', '大四第一学期教学计划', '2020-01-26', 1, '7', '080902');
INSERT INTO `plan` VALUES ('1221261776981618690', '大四第二学期教学计划', '2020-01-26', 1, '8', '080902');
INSERT INTO `plan` VALUES ('1258728971487440898', '第一学期上学期', '2020-05-08', 1, '1', '1');
INSERT INTO `plan` VALUES ('1259116189062299649', '第一学期上学期', '2020-05-09', 1, '1', '1');
INSERT INTO `plan` VALUES ('1259116245542797313', '大一下学期', '2020-05-09', 1, '2', '1');
INSERT INTO `plan` VALUES ('1737442456647553025', '培养计划', '2023-12-20', 1, '1', '020101');
INSERT INTO `plan` VALUES ('1738021627543252993', '基础学习', '2023-12-22', 1, '1', '080902');

-- ----------------------------
-- Table structure for plan_course
-- ----------------------------
DROP TABLE IF EXISTS `plan_course`;
CREATE TABLE `plan_course`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `plan_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `course_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of plan_course
-- ----------------------------
INSERT INTO `plan_course` VALUES ('1737442596368207874', '1737442456647553025', '1221309074533359618');
INSERT INTO `plan_course` VALUES ('1737442596368207875', '1737442456647553025', '1221312939894886402');
INSERT INTO `plan_course` VALUES ('1738021734992932866', '1213760757788155905', '1');
INSERT INTO `plan_course` VALUES ('1738021734992932867', '1213760757788155905', '1221309074533359618');
INSERT INTO `plan_course` VALUES ('1738021796057804801', '1213761697119313922', '1221318462354608130');
INSERT INTO `plan_course` VALUES ('1738021796057804802', '1213761697119313922', '1221318535016730625');
INSERT INTO `plan_course` VALUES ('1738022539280084993', '1221261560312262657', '1221318740151750658');
INSERT INTO `plan_course` VALUES ('1738022539338805250', '1221261560312262657', '1221318859127377921');
INSERT INTO `plan_course` VALUES ('1738022590752583682', '1221261643577585665', '1221318912357289986');
INSERT INTO `plan_course` VALUES ('1738022590815498241', '1221261643577585665', '1221318960268824578');
INSERT INTO `plan_course` VALUES ('1738022676790341634', '1221261675945029634', '1221313899031547906');
INSERT INTO `plan_course` VALUES ('1738022676853256193', '1221261675945029634', '1221314174962225153');
INSERT INTO `plan_course` VALUES ('1738022676853256194', '1221261675945029634', '1221318140391444482');
INSERT INTO `plan_course` VALUES ('1738022844591861762', '1221261710074081281', '1221319002601934849');
INSERT INTO `plan_course` VALUES ('1738022844591861763', '1221261710074081281', '1221319073804439554');
INSERT INTO `plan_course` VALUES ('1738022844591861764', '1221261710074081281', '1221319114690514945');
INSERT INTO `plan_course` VALUES ('1738022844591861765', '1221261710074081281', '1221319993577558018');
INSERT INTO `plan_course` VALUES ('1740294836867145729', '1213760757788155905', '1221313823722819585');

-- ----------------------------
-- Table structure for program
-- ----------------------------
DROP TABLE IF EXISTS `program`;
CREATE TABLE `program`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `year_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `specialty_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` date NULL DEFAULT NULL,
  `update_time` date NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `html_name` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of program
-- ----------------------------
INSERT INTO `program` VALUES ('1738023167339360258', '培养适合社会主义现代化建设需要，系统掌握计算机科学与技术专业基础知识，能够从事计算机研究\n与应用的规划设计、组建、管理和维护，从事计算机工程应用系统设计、开发、管理和维护，从事计算机\n科学基础理论研究、分析的专业技术人才。毕业生具备在计算机科学、计算机应用和计算机工程等相关领\n域从事一定的应用研究、科技开发、科技管理以及分析和解决实际问题的能力。适宜到信息技术行业从业，\n适宜到科研部门、大中专院校从事科学研究和教学工作；也可以继续攻读本学科及相关学科的硕士\n', NULL, '080902', '2023-12-22', '2023-12-22', 1, '<p>培养适合社会主义现代化建设需要，系统掌握计算机科学与技术专业基础知识，能够从事计算机研究<br />\n与应用的规划设计、组建、管理和维护，从事计算机工程应用系统设计、开发、管理和维护，从事计算机<br />\n科学基础理论研究、分析的专业技术人才。毕业生具备在计算机科学、计算机应用和计算机工程等相关领<br />\n域从事一定的应用研究、科技开发、科技管理以及分析和解决实际问题的能力。适宜到信息技术行业从业，<br />\n适宜到科研部门、大中专院校从事科学研究和教学工作；也可以继续攻读本学科及相关学科的硕士</p>\n');

-- ----------------------------
-- Table structure for role_function
-- ----------------------------
DROP TABLE IF EXISTS `role_function`;
CREATE TABLE `role_function`  (
  `role_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `function_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`role_id`, `function_id`) USING BTREE,
  INDEX `FK_Reference_2`(`function_id`) USING BTREE,
  CONSTRAINT `FK_Reference_2` FOREIGN KEY (`function_id`) REFERENCES `auth_function` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Reference_3` FOREIGN KEY (`role_id`) REFERENCES `auth_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role_function
-- ----------------------------

-- ----------------------------
-- Table structure for roles_menus
-- ----------------------------
DROP TABLE IF EXISTS `roles_menus`;
CREATE TABLE `roles_menus`  (
  `menu_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单ID',
  `role_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`menu_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of roles_menus
-- ----------------------------
INSERT INTO `roles_menus` VALUES ('1', '1211619707833311234');
INSERT INTO `roles_menus` VALUES ('1', '6be2e8aa4ec911e8bf5d34de1af4e65a');
INSERT INTO `roles_menus` VALUES ('14', '1211619707833311234');
INSERT INTO `roles_menus` VALUES ('14', '6be2e8aa4ec911e8bf5d34de1af4e65a');
INSERT INTO `roles_menus` VALUES ('15', '1211619707833311234');
INSERT INTO `roles_menus` VALUES ('15', '6be2e8aa4ec911e8bf5d34de1af4e65a');
INSERT INTO `roles_menus` VALUES ('16', '1211619707833311234');
INSERT INTO `roles_menus` VALUES ('16', '6be2e8aa4ec911e8bf5d34de1af4e65a');
INSERT INTO `roles_menus` VALUES ('17', 'b762e0f84ec911e8bf5d34de1af4e65a');
INSERT INTO `roles_menus` VALUES ('18', 'b762e0f84ec911e8bf5d34de1af4e65a');
INSERT INTO `roles_menus` VALUES ('19', 'b762e0f84ec911e8bf5d34de1af4e65a');
INSERT INTO `roles_menus` VALUES ('2', '1211619707833311234');
INSERT INTO `roles_menus` VALUES ('2', '6be2e8aa4ec911e8bf5d34de1af4e65a');
INSERT INTO `roles_menus` VALUES ('20', 'b762e0f84ec911e8bf5d34de1af4e65a');
INSERT INTO `roles_menus` VALUES ('21', 'b762e0f84ec911e8bf5d34de1af4e65a');
INSERT INTO `roles_menus` VALUES ('22', 'b762e0f84ec911e8bf5d34de1af4e65a');
INSERT INTO `roles_menus` VALUES ('23', '1211619707833311234');
INSERT INTO `roles_menus` VALUES ('23', 'b762e0f84ec911e8bf5d34de1af4e65a');
INSERT INTO `roles_menus` VALUES ('24', '1211619707833311234');
INSERT INTO `roles_menus` VALUES ('24', 'b762e0f84ec911e8bf5d34de1af4e65a');
INSERT INTO `roles_menus` VALUES ('25', '6be2e8aa4ec911e8bf5d34de1af4e65a');
INSERT INTO `roles_menus` VALUES ('25', 'b762e0f84ec911e8bf5d34de1af4e65a');
INSERT INTO `roles_menus` VALUES ('26', '6be2e8aa4ec911e8bf5d34de1af4e65a');
INSERT INTO `roles_menus` VALUES ('26', 'b762e0f84ec911e8bf5d34de1af4e65a');
INSERT INTO `roles_menus` VALUES ('27', 'b762e0f84ec911e8bf5d34de1af4e65a');
INSERT INTO `roles_menus` VALUES ('28', 'b762e0f84ec911e8bf5d34de1af4e65a');
INSERT INTO `roles_menus` VALUES ('29', '6b4fef6e4ecb11e8bf5d34de1af4e65a');
INSERT INTO `roles_menus` VALUES ('3', '1211619707833311234');
INSERT INTO `roles_menus` VALUES ('3', '6be2e8aa4ec911e8bf5d34de1af4e65a');
INSERT INTO `roles_menus` VALUES ('30', '6b4fef6e4ecb11e8bf5d34de1af4e65a');
INSERT INTO `roles_menus` VALUES ('31', '6b4fef6e4ecb11e8bf5d34de1af4e65a');
INSERT INTO `roles_menus` VALUES ('32', '6b4fef6e4ecb11e8bf5d34de1af4e65a');
INSERT INTO `roles_menus` VALUES ('33', '6b4fef6e4ecb11e8bf5d34de1af4e65a');
INSERT INTO `roles_menus` VALUES ('34', '6b4fef6e4ecb11e8bf5d34de1af4e65a');
INSERT INTO `roles_menus` VALUES ('35', '6b4fef6e4ecb11e8bf5d34de1af4e65a');
INSERT INTO `roles_menus` VALUES ('36', '6b4fef6e4ecb11e8bf5d34de1af4e65a');
INSERT INTO `roles_menus` VALUES ('37', '6be2e8aa4ec911e8bf5d34de1af4e65a');
INSERT INTO `roles_menus` VALUES ('37', 'b762e0f84ec911e8bf5d34de1af4e65a');
INSERT INTO `roles_menus` VALUES ('38', '1211619707833311234');
INSERT INTO `roles_menus` VALUES ('38', '6be2e8aa4ec911e8bf5d34de1af4e65a');
INSERT INTO `roles_menus` VALUES ('39', '1211619707833311234');
INSERT INTO `roles_menus` VALUES ('39', '6be2e8aa4ec911e8bf5d34de1af4e65a');
INSERT INTO `roles_menus` VALUES ('40', '1211619707833311234');
INSERT INTO `roles_menus` VALUES ('40', '6be2e8aa4ec911e8bf5d34de1af4e65a');
INSERT INTO `roles_menus` VALUES ('41', '1211619707833311234');
INSERT INTO `roles_menus` VALUES ('41', '6be2e8aa4ec911e8bf5d34de1af4e65a');
INSERT INTO `roles_menus` VALUES ('42', '1211619707833311234');
INSERT INTO `roles_menus` VALUES ('42', '6be2e8aa4ec911e8bf5d34de1af4e65a');
INSERT INTO `roles_menus` VALUES ('43', '1211619707833311234');
INSERT INTO `roles_menus` VALUES ('43', '6b4fef6e4ecb11e8bf5d34de1af4e65a');
INSERT INTO `roles_menus` VALUES ('43', '6be2e8aa4ec911e8bf5d34de1af4e65a');
INSERT INTO `roles_menus` VALUES ('44', '1211619707833311234');
INSERT INTO `roles_menus` VALUES ('44', '6b4fef6e4ecb11e8bf5d34de1af4e65a');
INSERT INTO `roles_menus` VALUES ('44', '6be2e8aa4ec911e8bf5d34de1af4e65a');
INSERT INTO `roles_menus` VALUES ('45', '6b4fef6e4ecb11e8bf5d34de1af4e65a');
INSERT INTO `roles_menus` VALUES ('46', '6b4fef6e4ecb11e8bf5d34de1af4e65a');
INSERT INTO `roles_menus` VALUES ('47', '1211619707833311234');
INSERT INTO `roles_menus` VALUES ('47', '6be2e8aa4ec911e8bf5d34de1af4e65a');
INSERT INTO `roles_menus` VALUES ('48', '1211619707833311234');
INSERT INTO `roles_menus` VALUES ('48', '6be2e8aa4ec911e8bf5d34de1af4e65a');
INSERT INTO `roles_menus` VALUES ('49', '1211619707833311234');
INSERT INTO `roles_menus` VALUES ('49', '6be2e8aa4ec911e8bf5d34de1af4e65a');
INSERT INTO `roles_menus` VALUES ('5', '1211619707833311234');
INSERT INTO `roles_menus` VALUES ('5', '6be2e8aa4ec911e8bf5d34de1af4e65a');
INSERT INTO `roles_menus` VALUES ('50', '6b4fef6e4ecb11e8bf5d34de1af4e65a');
INSERT INTO `roles_menus` VALUES ('51', '6b4fef6e4ecb11e8bf5d34de1af4e65a');
INSERT INTO `roles_menus` VALUES ('52', '1211619707833311234');
INSERT INTO `roles_menus` VALUES ('52', '6be2e8aa4ec911e8bf5d34de1af4e65a');
INSERT INTO `roles_menus` VALUES ('6', '6be2e8aa4ec911e8bf5d34de1af4e65a');
INSERT INTO `roles_menus` VALUES ('7', '6be2e8aa4ec911e8bf5d34de1af4e65a');
INSERT INTO `roles_menus` VALUES ('8', '6be2e8aa4ec911e8bf5d34de1af4e65a');
INSERT INTO `roles_menus` VALUES ('9', '6be2e8aa4ec911e8bf5d34de1af4e65a');

-- ----------------------------
-- Table structure for student_role
-- ----------------------------
DROP TABLE IF EXISTS `student_role`;
CREATE TABLE `student_role`  (
  `role_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `student_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`student_id`, `role_id`) USING BTREE,
  INDEX `FKFEE0E3FA33C76441`(`role_id`) USING BTREE,
  INDEX `FKFEE0E3FA248A3C33`(`student_id`) USING BTREE,
  CONSTRAINT `FKFEE0E3FA248A3C33` FOREIGN KEY (`student_id`) REFERENCES `t_student` (`sid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKFEE0E3FA33C76441` FOREIGN KEY (`role_id`) REFERENCES `auth_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of student_role
-- ----------------------------
INSERT INTO `student_role` VALUES ('b762e0f84ec911e8bf5d34de1af4e65a', '20001');
INSERT INTO `student_role` VALUES ('b762e0f84ec911e8bf5d34de1af4e65a', '20002');

-- ----------------------------
-- Table structure for t_classes
-- ----------------------------
DROP TABLE IF EXISTS `t_classes`;
CREATE TABLE `t_classes`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `classname` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教室名称',
  `specialty_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专业id',
  `college_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学院id',
  `people` int(11) NULL DEFAULT NULL COMMENT '人数',
  `grade_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属年级',
  `year` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '入学年份',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_classes
-- ----------------------------
INSERT INTO `t_classes` VALUES ('1735850905920147458', '软件工程201班', '080902', '16935', NULL, '2020', NULL);

-- ----------------------------
-- Table structure for t_college
-- ----------------------------
DROP TABLE IF EXISTS `t_college`;
CREATE TABLE `t_college`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_college
-- ----------------------------
INSERT INTO `t_college` VALUES ('16797', '数学与统计学院', '1');
INSERT INTO `t_college` VALUES ('16798', '物理与机电工程学院', '1');
INSERT INTO `t_college` VALUES ('16799', '化学化工学院', '1');
INSERT INTO `t_college` VALUES ('16800', '信息科学与工程学院', '1');
INSERT INTO `t_college` VALUES ('16801', '旅游与管理工程学院', '1');
INSERT INTO `t_college` VALUES ('16802', '外国语学院', '1');
INSERT INTO `t_college` VALUES ('16803', '国际教育学院', '1');
INSERT INTO `t_college` VALUES ('16804', '音乐舞蹈学院', '1');
INSERT INTO `t_college` VALUES ('16805', '体育科学学院', '1');
INSERT INTO `t_college` VALUES ('16806', '美术学院', '1');
INSERT INTO `t_college` VALUES ('16807', '师范学院', '1');
INSERT INTO `t_college` VALUES ('16935', '软件学院', '1');
INSERT INTO `t_college` VALUES ('16936', '土木工程与建筑学院', '1');
INSERT INTO `t_college` VALUES ('16937', '生物资源与环境科学学院', '1');
INSERT INTO `t_college` VALUES ('16938', '医学院', '1');
INSERT INTO `t_college` VALUES ('16939', '文学与新闻传播学院', '1');
INSERT INTO `t_college` VALUES ('16940', '法学与公共管理学院', '1');
INSERT INTO `t_college` VALUES ('16941', '历史与文化学院', '1');
INSERT INTO `t_college` VALUES ('16943', '商学院', '1');
INSERT INTO `t_college` VALUES ('16966', '民族预科教育学院', '1');
INSERT INTO `t_college` VALUES ('16967', '张家界学院', '1');
INSERT INTO `t_college` VALUES ('16968', '继续教育学院', '1');
INSERT INTO `t_college` VALUES ('17016', '国防教育学院', '1');
INSERT INTO `t_college` VALUES ('17766', '教育科学研究院', '1');
INSERT INTO `t_college` VALUES ('2', '测试1', '0');
INSERT INTO `t_college` VALUES ('3', 'ceshi 2', '0');

-- ----------------------------
-- Table structure for t_comments
-- ----------------------------
DROP TABLE IF EXISTS `t_comments`;
CREATE TABLE `t_comments`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `team_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `commentType` int(11) NULL DEFAULT NULL,
  `commentBatch` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `beginTime` date NULL DEFAULT NULL COMMENT '留言',
  `endTime` date NULL DEFAULT NULL COMMENT '评价类别',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_comments
-- ----------------------------
INSERT INTO `t_comments` VALUES ('1738018428019109889', '2', 0, '1', '2023-12-21', '2023-12-30');

-- ----------------------------
-- Table structure for t_course
-- ----------------------------
DROP TABLE IF EXISTS `t_course`;
CREATE TABLE `t_course`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `credit` decimal(11, 1) NULL DEFAULT NULL COMMENT '学分',
  `nature_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程性质',
  `total_time` int(20) NULL DEFAULT NULL COMMENT '总学时',
  `way_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考核方式',
  `cstatus_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程属性',
  `college_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开课学院',
  `system_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程体系',
  `year_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学年',
  `isExam` int(10) NULL DEFAULT NULL COMMENT '是否考试',
  `status` int(10) NULL DEFAULT 1 COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_course
-- ----------------------------
INSERT INTO `t_course` VALUES ('1', '大学体育（Ⅰ）', 1.0, '1', 28, '1', '2', '16935', '1', '1', 1, 1);
INSERT INTO `t_course` VALUES ('1214193850411909121', '“互联网+”双创系列讲座', 2.0, '2', 32, '2', '3', '16935', '2', '1', 0, 1);
INSERT INTO `t_course` VALUES ('1221309074533359618', '大学英语Ⅰ', 3.0, '2', 60, '1', '2', '16935', '1', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221312939894886402', '军事理论及训练', 2.0, '1', 24, '2', '2', '16935', '1', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221313043238342657', '就业指导Ⅰ（讲座）', 0.5, '1', 8, '2', '2', '16935', '1', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221313823722819585', '大学体育（Ⅱ）', 1.0, '1', 36, '1', '2', '16935', '1', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221313899031547906', '“互联网+”双创系列讲座', 2.0, '1', 32, '2', '3', '16935', '1', NULL, 2, 1);
INSERT INTO `t_course` VALUES ('1221314069009911810', '创新创业项目实践', 2.0, '1', 32, '2', '3', '16935', '1', NULL, 2, 1);
INSERT INTO `t_course` VALUES ('1221314174962225153', '高等数学AⅡ', 6.0, '1', 96, '1', '2', '16935', '1', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221314217760903170', '离散结构', 2.0, '1', 32, '1', '2', '16935', '1', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221314273926828034', '日语Ⅱ', 6.0, '1', 128, '1', '2', '16935', '1', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221314367501750274', '程序设计基础Ⅱ', 4.0, '1', 96, '1', '2', '16935', '6', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221314429699084290', '程序设计基础Ⅱ', 3.0, '1', 64, '1', '2', '16935', '6', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221317003391127553', '线性代数A', 3.0, '1', 48, '1', '2', '16935', '1', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221317261080776705', '大学生心理健康教育', 1.0, '1', 16, '2', '2', '16935', '4', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221317875252711425', '(网络)人生与人心', 1.5, '1', 26, '1', '1', '16935', '4', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221317935088652290', '食品安全与健康', 1.5, '1', 26, '1', '1', '16935', '4', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221317984661131266', '当代主要环境问题及科学对策', 1.5, '1', 26, '1', '1', '16935', '4', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221318048934645762', '专升本英语', 6.0, '1', 108, '1', '2', '16935', '1', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221318140391444482', '编译原理', 2.0, '1', 32, '1', '2', '16935', '6', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221318195328438274', '操作系统', 2.0, '1', 32, '1', '2', '16935', '6', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221318462354608130', '软件工程经济学', 2.0, '1', 32, '2', '3', '16935', '2', NULL, 2, 1);
INSERT INTO `t_course` VALUES ('1221318535016730625', 'Java Web编程技术', 3.0, '1', 48, '2', '2', '16935', '2', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221318586451480577', 'Web前端开发基础', 2.0, '1', 32, '2', '2', '16935', '2', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221318621452947458', '软件测试与质量', 2.0, '1', 32, '2', '2', '16935', '2', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221318662208999425', '软件需求工程', 2.0, '1', 32, '2', '2', '16935', '2', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221318740151750658', '设计模式', 2.0, '1', 32, '2', '2', '16935', '2', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221318801204039682', '就业指导-就业技能', 1.0, '1', 8, '1', '2', '16935', '1', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221318859127377921', 'Android开发技术', 2.0, '1', 32, '2', '2', '16935', '2', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221318912357289986', 'C++程序设计', 2.0, '1', 32, '2', '2', '16935', '2', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221318960268824578', 'Java Web框架技术', 4.0, '1', 64, '2', '2', '16935', '2', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221319002601934849', 'UI设计', 2.0, '1', 32, '2', '2', '16935', '2', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221319073804439554', '软件系统分析与设计', 2.0, '1', 32, '2', '2', '16935', '2', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221319114690514945', '软件项目管理', 2.0, '1', 32, '2', '2', '16935', '2', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221319236216279042', '沉浸式5R专业综合实训', 10.0, '1', 17, '2', '2', '16935', '5', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221319892155092993', '大学英语Ⅱ', 3.0, '1', 64, '1', '2', '16935', '1', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221319945842184194', '大学体育3', 1.0, '1', 35, '1', '2', '16935', '1', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221319993577558018', '大学英语3', 3.0, '1', 64, '1', '2', '16935', '1', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221320041363263490', '毛泽东思想和中国特色社会主义理论体系概论', 6.0, '1', 108, '1', '2', '16935', '1', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221320077828542466', '概率论与数理统计', 3.0, '1', 48, '1', '2', '16935', '1', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221320201594064898', 'Java程序设计1', 4.0, '1', 64, '1', '2', '16935', '6', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221320266962292737', '数据结构与算法', 4.0, '1', 64, '1', '2', '16935', '6', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221320410105499650', '形势与政策3', 0.5, '1', 8, '2', '2', '16935', '1', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221320458956558337', '日语Ⅲ', 6.0, '1', 144, '1', '2', '16935', '1', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221320505089708033', '创业基础', 2.0, '1', 32, '1', '2', '16935', '1', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221320594755538945', '大学体育4', 1.0, '1', 35, '1', '2', '16935', '1', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221320637000568834', '大学英语4', 3.0, '1', 64, '1', '2', '16935', '1', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221320697213997058', '马克思主义基本原理概论', 3.0, '1', 54, '1', '2', '16935', '1', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221320738880212993', '形势与政策', 2.0, '1', 32, '1', '2', '16935', '1', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221320796807745538', 'Java程序设计2', 3.5, '1', 56, '1', '2', '16935', '6', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221320832408997889', '计算机网络', 2.0, '1', 32, '1', '2', '16935', '6', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221320869604085762', '数据库原理及应用', 4.0, '1', 64, '1', '2', '16935', '6', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221320906790785026', '数据库原理及应用', 4.0, '1', 64, '1', '2', '16935', '6', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221320986830688258', '软件工程', 2.0, '1', 32, '1', '2', '16935', '6', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221321071446577153', '日语Ⅳ', 4.0, '1', 112, '1', '2', '16935', '1', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221321143353724929', 'UML技术', 2.0, '1', 32, '2', '2', '16935', '6', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221321372903788545', '创新创业项目实践', 2.0, '1', 32, '2', '1', '16935', '5', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221321403740311553', '创新创业项目实践', 2.0, '1', 32, '2', '1', '16935', '5', NULL, 2, 1);
INSERT INTO `t_course` VALUES ('1221321447507873793', '毕业论文（设计）', 8.0, '1', 10, '2', '2', '16935', '5', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1221321490134585346', '毕业实习', 8.0, '1', 8, '2', '2', '16935', '5', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1256901013122674690', '情商管理', 4.0, '1', 16, '2', '1', '16935', '1', NULL, 2, 1);
INSERT INTO `t_course` VALUES ('1256901107104444417', '情商管理', 4.0, '1', 32, '2', '1', '16935', '4', NULL, 2, 1);
INSERT INTO `t_course` VALUES ('1256901161080942593', '世界文化遗产赏析', 4.0, '1', 32, '2', '1', '16935', '4', NULL, 2, 1);
INSERT INTO `t_course` VALUES ('1256901204764618754', '中国古典园林植物文化', 4.0, '1', 32, '2', '1', '16935', '4', NULL, 2, 1);
INSERT INTO `t_course` VALUES ('1256901249962438657', '中国神话故事', 4.0, '1', 32, '2', '1', '16935', '4', NULL, 2, 1);
INSERT INTO `t_course` VALUES ('1256901309928402946', 'DIY时尚丝网花', 4.0, '1', 32, '2', '1', '16935', '4', NULL, 2, 1);
INSERT INTO `t_course` VALUES ('1256901369772732418', '趣味心理学', 4.0, '1', 32, '1', '1', '16935', '4', NULL, 2, 1);
INSERT INTO `t_course` VALUES ('1256902978858741761', '大学创业与规划', 4.0, '1', 32, '1', '1', '16935', '4', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1256903815634972674', '英语电影赏析', 4.0, '1', 32, '1', '1', '16935', '4', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1256903862288216066', '职场英语', 4.0, '1', 32, '2', '1', '16935', '4', NULL, 2, 1);
INSERT INTO `t_course` VALUES ('1256903938611965953', '大学生心理健康教育', 4.0, '1', 32, '2', '1', '16935', '4', NULL, 2, 1);
INSERT INTO `t_course` VALUES ('1256904104538632194', '瑜伽通识选修课', 5.0, '1', 3, '2', '1', '16935', '4', NULL, 2, 1);
INSERT INTO `t_course` VALUES ('1256904173438464001', '人体学', 4.0, '1', 32, '2', '1', '16935', '4', NULL, 2, 1);
INSERT INTO `t_course` VALUES ('1256904237187690497', '数学模式', 4.0, '1', 32, '1', '1', '16935', '4', NULL, 1, 1);
INSERT INTO `t_course` VALUES ('1256904673198174209', '人类遗传与优生', 4.0, '1', 32, '2', '1', '16935', '4', NULL, 2, 1);
INSERT INTO `t_course` VALUES ('1256904819340308481', '税收筹划', 4.0, '1', 32, '2', '1', '16935', '4', NULL, 2, 1);
INSERT INTO `t_course` VALUES ('1256904877431418882', '欧美电影赏析', 4.0, '1', 32, '2', '1', '16935', '4', NULL, 2, 1);
INSERT INTO `t_course` VALUES ('1256904928459321346', '共和国档案', 4.0, '1', 32, '2', '1', '16935', '4', NULL, 2, 1);
INSERT INTO `t_course` VALUES ('1256905009807847426', '淘宝网店运营与推广 ', 4.0, '1', 32, '2', '1', '16935', '4', NULL, 2, 1);
INSERT INTO `t_course` VALUES ('1256905057702604801', '花文化与养生保健', 4.0, '1', 32, '2', '1', '16935', '4', NULL, 2, 1);
INSERT INTO `t_course` VALUES ('1256905099536592898', '酒的酿造与酒文化', 4.0, '1', 32, '2', '1', '16935', '4', NULL, 2, 1);
INSERT INTO `t_course` VALUES ('1256905174388142082', '茶叶品鉴艺术', 4.0, '1', 32, '2', '1', '16935', '4', NULL, 2, 1);
INSERT INTO `t_course` VALUES ('1256905232902877185', '成功销售技巧与人脉关 系', 4.0, '1', 32, '2', '1', '16935', '4', NULL, 2, 1);
INSERT INTO `t_course` VALUES ('1256905280994766849', '环球旅行', 4.0, '1', 32, '2', '1', '16935', '4', NULL, 2, 1);
INSERT INTO `t_course` VALUES ('1256905345972924418', '西方文化欣赏', 4.0, '1', 32, '2', '1', '16935', '4', NULL, 2, 1);
INSERT INTO `t_course` VALUES ('1256905432715325441', '美术鉴赏', 4.0, '1', 32, '2', '1', '16935', '4', NULL, 2, 1);
INSERT INTO `t_course` VALUES ('1256905492626763778', '高效时间管理', 4.0, '1', 32, '2', '1', '16935', '4', NULL, 2, 1);
INSERT INTO `t_course` VALUES ('1257197040547520513', '测试实体教学课程', 4.0, '1', 32, '2', '1', '16935', '3', NULL, 2, 1);
INSERT INTO `t_course` VALUES ('1259328639149891586', '毕业设计时间', 4.0, '1', 32, '2', '2', '16935', '5', NULL, 2, 1);
INSERT INTO `t_course` VALUES ('2', '“互联网+”双创系列讲座', 2.0, '1', 32, '2', '3', '16935', '1', '1', 0, 1);
INSERT INTO `t_course` VALUES ('3', '高等数学AⅠ', 4.0, '1', 64, '1', '2', '16935', '1', '1', 1, 1);
INSERT INTO `t_course` VALUES ('4', '专业导论', 1.0, '1', 16, '2', '2', '16935', '1', '1', 0, 1);
INSERT INTO `t_course` VALUES ('4028eaa85cbe122b015cbe12ec1c0000', '日语Ⅰ', 6.0, '1', 104, '1', '2', '16935', '1', '1', 1, 1);
INSERT INTO `t_course` VALUES ('5', '计算机应用基础', 2.0, '1', 42, '1', '2', '16935', '6', '1', 1, 1);
INSERT INTO `t_course` VALUES ('7', '外包企业素养与实践（一）', 0.5, '1', 6, '1', '2', '16935', '1', '1', 1, 1);
INSERT INTO `t_course` VALUES ('8', '程序设计基础Ⅰ', 3.0, '1', 60, '1', '2', '16935', '6', '1', 1, 1);
INSERT INTO `t_course` VALUES ('8fa66065baae11e7956534de1af4e65a', '思想道德修养与法律基础', 3.0, '1', 54, '2', '2', '16935', '1', '1', 0, 1);
INSERT INTO `t_course` VALUES ('996523a6f14611e99f3400e04c680992', '形势与政策Ⅰ（讲座）', 0.5, '1', 8, '2', '2', '16935', '1', '1', 0, 1);

-- ----------------------------
-- Table structure for t_cstatus
-- ----------------------------
DROP TABLE IF EXISTS `t_cstatus`;
CREATE TABLE `t_cstatus`  (
  `id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_cstatus
-- ----------------------------
INSERT INTO `t_cstatus` VALUES ('1', '公选', '1');
INSERT INTO `t_cstatus` VALUES ('2', '必修', '1');
INSERT INTO `t_cstatus` VALUES ('3', '限选', '1');

-- ----------------------------
-- Table structure for t_examway
-- ----------------------------
DROP TABLE IF EXISTS `t_examway`;
CREATE TABLE `t_examway`  (
  `id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_examway
-- ----------------------------
INSERT INTO `t_examway` VALUES ('1', '考试', '1');
INSERT INTO `t_examway` VALUES ('2', '考查', '1');

-- ----------------------------
-- Table structure for t_grade
-- ----------------------------
DROP TABLE IF EXISTS `t_grade`;
CREATE TABLE `t_grade`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_grade
-- ----------------------------
INSERT INTO `t_grade` VALUES ('2010', '2010');
INSERT INTO `t_grade` VALUES ('2011', '2011');
INSERT INTO `t_grade` VALUES ('2012', '2012');
INSERT INTO `t_grade` VALUES ('2013', '2013');
INSERT INTO `t_grade` VALUES ('2014', '2014');
INSERT INTO `t_grade` VALUES ('2015', '2015');
INSERT INTO `t_grade` VALUES ('2016', '2016');
INSERT INTO `t_grade` VALUES ('2017', '2017');
INSERT INTO `t_grade` VALUES ('2018', '2018');
INSERT INTO `t_grade` VALUES ('2019', '2019');
INSERT INTO `t_grade` VALUES ('2020', '2020');
INSERT INTO `t_grade` VALUES ('2021', '2021');
INSERT INTO `t_grade` VALUES ('2022', '2022');
INSERT INTO `t_grade` VALUES ('2023', '2023');

-- ----------------------------
-- Table structure for t_nature
-- ----------------------------
DROP TABLE IF EXISTS `t_nature`;
CREATE TABLE `t_nature`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_nature
-- ----------------------------
INSERT INTO `t_nature` VALUES ('1', '通识选修课');
INSERT INTO `t_nature` VALUES ('2', '公共必修课');
INSERT INTO `t_nature` VALUES ('3', '学科基础课');
INSERT INTO `t_nature` VALUES ('4', '专业方向课');
INSERT INTO `t_nature` VALUES ('5', '专业主干课');
INSERT INTO `t_nature` VALUES ('6', '专业方向课');

-- ----------------------------
-- Table structure for t_score
-- ----------------------------
DROP TABLE IF EXISTS `t_score`;
CREATE TABLE `t_score`  (
  `course_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `student_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `teacher_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attendance` int(11) NULL DEFAULT NULL COMMENT '考勤分数',
  `usually` int(11) NULL DEFAULT NULL COMMENT '平时分',
  `exam` int(11) NULL DEFAULT NULL COMMENT '考试分数',
  `score` int(11) NULL DEFAULT NULL COMMENT '总分数',
  `absent` int(50) NULL DEFAULT 0,
  `status` int(11) NULL DEFAULT 0 COMMENT '课程状态,选课',
  `point` decimal(11, 1) NULL DEFAULT NULL,
  PRIMARY KEY (`student_id`, `course_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_score
-- ----------------------------
INSERT INTO `t_score` VALUES ('1737085145357815809', '20001', '9', 16, 20, 60, 96, 2, 1, 4.0);
INSERT INTO `t_score` VALUES ('1740295039045181442', '20001', '9', NULL, NULL, NULL, NULL, 1, 0, NULL);
INSERT INTO `t_score` VALUES ('1740295549189988353', '20001', '9', NULL, NULL, NULL, NULL, 0, 0, NULL);
INSERT INTO `t_score` VALUES ('1740295039045181442', '20002', '9', NULL, NULL, NULL, NULL, 0, 0, NULL);

-- ----------------------------
-- Table structure for t_section
-- ----------------------------
DROP TABLE IF EXISTS `t_section`;
CREATE TABLE `t_section`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `week` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `section` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_section
-- ----------------------------
INSERT INTO `t_section` VALUES ('1', '周一', '1-2节');
INSERT INTO `t_section` VALUES ('10', '周二', '9-10节');
INSERT INTO `t_section` VALUES ('11', '周三', '1-2节');
INSERT INTO `t_section` VALUES ('12', '周三', '3-4节');
INSERT INTO `t_section` VALUES ('13', '周三', '5-6节');
INSERT INTO `t_section` VALUES ('14', '周三', '7-8节');
INSERT INTO `t_section` VALUES ('15', '周三', '9-10节');
INSERT INTO `t_section` VALUES ('16', '周四', '1-2节');
INSERT INTO `t_section` VALUES ('17', '周四', '3-4节');
INSERT INTO `t_section` VALUES ('18', '周四', '5-6节');
INSERT INTO `t_section` VALUES ('19', '周四', '7-8节');
INSERT INTO `t_section` VALUES ('2', '周一', '3-4节');
INSERT INTO `t_section` VALUES ('20', '周四', '9-10节');
INSERT INTO `t_section` VALUES ('21', '周五', '1-2节');
INSERT INTO `t_section` VALUES ('22', '周五', '3-4节');
INSERT INTO `t_section` VALUES ('23', '周五', '5-6节');
INSERT INTO `t_section` VALUES ('24', '周五', '7-8节');
INSERT INTO `t_section` VALUES ('25', '周五', '9-10节');
INSERT INTO `t_section` VALUES ('26', '周六', '1-2节');
INSERT INTO `t_section` VALUES ('27', '周六', '3-4节');
INSERT INTO `t_section` VALUES ('28', '周六', '5-6节');
INSERT INTO `t_section` VALUES ('29', '周六', '7-8节');
INSERT INTO `t_section` VALUES ('3', '周一', '5-6节');
INSERT INTO `t_section` VALUES ('30', '周六', '9-10节');
INSERT INTO `t_section` VALUES ('31', '周日', '1-2节');
INSERT INTO `t_section` VALUES ('32', '周日', '3-4节');
INSERT INTO `t_section` VALUES ('33', '周日', '5-6节');
INSERT INTO `t_section` VALUES ('34', '周日', '7-8节');
INSERT INTO `t_section` VALUES ('35', '周日', '9-10节');
INSERT INTO `t_section` VALUES ('4', '周一', '7-8节');
INSERT INTO `t_section` VALUES ('5', '周一', '9-10节');
INSERT INTO `t_section` VALUES ('6', '周二', '1-2节');
INSERT INTO `t_section` VALUES ('7', '周二', '3-4节');
INSERT INTO `t_section` VALUES ('8', '周二', '5-6节');
INSERT INTO `t_section` VALUES ('9', '周二', '7-8节');

-- ----------------------------
-- Table structure for t_specialty
-- ----------------------------
DROP TABLE IF EXISTS `t_specialty`;
CREATE TABLE `t_specialty`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学制',
  `category` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学位授予门类',
  `college_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_specialty
-- ----------------------------
INSERT INTO `t_specialty` VALUES ('020101', '经济学', '4', '理学', '16943', '1');
INSERT INTO `t_specialty` VALUES ('020102', '经济统计学', '4', '理学', '16797', '1');
INSERT INTO `t_specialty` VALUES ('020302', '金融工程', '4', '经济学', '16797', '1');
INSERT INTO `t_specialty` VALUES ('020305T', '金融数学', '4', '理学', '16797', '1');
INSERT INTO `t_specialty` VALUES ('020401', '国际经济与贸易', NULL, NULL, '16943', '1');
INSERT INTO `t_specialty` VALUES ('030101', '法学', '4', '法学', '16940', '1');
INSERT INTO `t_specialty` VALUES ('030503', '思想政治教育（师范类）', 'asd', 'asd', '16941', '1');
INSERT INTO `t_specialty` VALUES ('040201', '体育教育（师范类）', '4', '教育学', '16805', '1');
INSERT INTO `t_specialty` VALUES ('040204K', '武术与民族传统体育（兼师范类）', '4', '教育学', '16805', '1');
INSERT INTO `t_specialty` VALUES ('050101', '汉语言文学（兼师范类）', '4', '文学', '16939', '1');
INSERT INTO `t_specialty` VALUES ('050201', '英语（兼师范类）', '4', '文学', '16802', '1');
INSERT INTO `t_specialty` VALUES ('050207', '日语', '4', '文学', '16802', '1');
INSERT INTO `t_specialty` VALUES ('050262', '商务英语', '4', '文学', '16803', '1');
INSERT INTO `t_specialty` VALUES ('050301', '新闻学', '4', '文学', '16939', '1');
INSERT INTO `t_specialty` VALUES ('050303', '广告学', NULL, NULL, '0', '1');
INSERT INTO `t_specialty` VALUES ('060101', '历史学（兼师范类）', NULL, NULL, '16941', '1');
INSERT INTO `t_specialty` VALUES ('070101', '数学与应用数学（兼师范类）', '4', '理学', '16797', '1');
INSERT INTO `t_specialty` VALUES ('070102', '信息与计算科学', '4', '工学', '16800', '1');
INSERT INTO `t_specialty` VALUES ('070201', '物理学（兼师范类）', '4', '理学', '16798', '1');
INSERT INTO `t_specialty` VALUES ('071001', '生物科学（兼师范类）', NULL, NULL, '16937', '1');
INSERT INTO `t_specialty` VALUES ('071201', '统计学', '4', '理学', '16797', '1');
INSERT INTO `t_specialty` VALUES ('071202', '应用统计学', '4', '理学', '16797', '1');
INSERT INTO `t_specialty` VALUES ('080202', '机械设计制造及其自动化', '4', '工学', '16798', '1');
INSERT INTO `t_specialty` VALUES ('080401', '材料科学与工程', '4', '工学', '16798', '1');
INSERT INTO `t_specialty` VALUES ('080406', '无机非金属材料工程', NULL, NULL, '0', '1');
INSERT INTO `t_specialty` VALUES ('080701', '电子信息工程', '4', '工学', '16800', '1');
INSERT INTO `t_specialty` VALUES ('080901', '计算机科学与技术（兼师范类）', '4', '工学', '16800', '1');
INSERT INTO `t_specialty` VALUES ('080902', '软件工程', '4', '工学', '16935', '1');
INSERT INTO `t_specialty` VALUES ('082502', '环境工程', '4', '工学', '16937', '1');
INSERT INTO `t_specialty` VALUES ('082503', '环境科学', '4', '工学', '16937', '1');
INSERT INTO `t_specialty` VALUES ('083001', '生物工程', '4', '理学', '16937', '1');
INSERT INTO `t_specialty` VALUES ('090104', '植物科学与技术', '4', '工学', '16937', '1');
INSERT INTO `t_specialty` VALUES ('1', '测试软件专业1', '4', '工学', '16935', '0');
INSERT INTO `t_specialty` VALUES ('100701', '药学', '4', '理学', '16937', '1');
INSERT INTO `t_specialty` VALUES ('110217S', '信息传播与策划', NULL, NULL, '0', '1');
INSERT INTO `t_specialty` VALUES ('120201K', '工商管理', NULL, NULL, '16943', '1');
INSERT INTO `t_specialty` VALUES ('120202', '市场营销', NULL, NULL, '0', '1');
INSERT INTO `t_specialty` VALUES ('120203K', '会计学', NULL, NULL, '16943', '1');
INSERT INTO `t_specialty` VALUES ('120210', '文化产业管理', '4', '管理学', '16940', '1');
INSERT INTO `t_specialty` VALUES ('120401', '公共事业管理', '4', '管理学', '16940', '1');
INSERT INTO `t_specialty` VALUES ('3', '计算机', '4', '4', '16935', '1');

-- ----------------------------
-- Table structure for t_student
-- ----------------------------
DROP TABLE IF EXISTS `t_student`;
CREATE TABLE `t_student`  (
  `sid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学号',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `sname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `sex` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `scity` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '户籍',
  `qx` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限',
  `absent` int(11) NULL DEFAULT NULL COMMENT '考勤',
  `classes_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班级id',
  `grade_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学年id',
  `beginTime` date NULL DEFAULT NULL COMMENT '入学日期',
  `endTime` date NULL DEFAULT NULL COMMENT '离校日期',
  `phone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `idcard` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证',
  `address` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '家庭地址',
  `politicalStatus` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '政治面貌',
  PRIMARY KEY (`sid`) USING BTREE,
  INDEX `FK_student_class`(`classes_id`) USING BTREE,
  CONSTRAINT `FK_student_class` FOREIGN KEY (`classes_id`) REFERENCES `t_classes` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_student
-- ----------------------------
INSERT INTO `t_student` VALUES ('20001', '123456', '张强', '男', '江苏', '学生', 3, '1735850905920147458', '2020', '2020-09-01', NULL, '15712341224', '340000200001010101', '北京', '党员');
INSERT INTO `t_student` VALUES ('20002', '123456', '李庆', '男', '江苏', '学生', 0, '1735850905920147458', '2020', '2020-09-01', NULL, '15712341266', '340000200001010122', '南京', '党员');

-- ----------------------------
-- Table structure for t_teacher
-- ----------------------------
DROP TABLE IF EXISTS `t_teacher`;
CREATE TABLE `t_teacher`  (
  `tid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '教师编号',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `tname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `tsex` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `tage` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年龄',
  `status` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态：0表示在职，1表示辞职，2表示离职',
  `college_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属院系',
  `qx` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限',
  `beginTime` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '工作日期',
  `salary` double NULL DEFAULT NULL COMMENT '薪水',
  `politicalStatus` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '政治面貌',
  `address` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '家庭住址',
  `idcard` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  PRIMARY KEY (`tid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_teacher
-- ----------------------------
INSERT INTO `t_teacher` VALUES ('10001', '123456', '李强', '1', '29', '1', NULL, '讲师', '2023-12-28 00:00:00', NULL, '党员', '北京', '320000200001010101');
INSERT INTO `t_teacher` VALUES ('10002', '123456', '张庆', '1', '29', '1', NULL, '讲师', '2023-12-28 00:00:00', NULL, '党员', '上海', '320000200001010101');
INSERT INTO `t_teacher` VALUES ('9', '123456', '苏老师', '1', '18', '1', '16935', '讲师', '2020-04-13 00:00:00', 10000, '党员', 'xx大学', '123456789012345678');

-- ----------------------------
-- Table structure for t_team
-- ----------------------------
DROP TABLE IF EXISTS `t_team`;
CREATE TABLE `t_team`  (
  `id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `start` int(11) NULL DEFAULT NULL,
  `end` int(11) NULL DEFAULT NULL,
  `team` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_team
-- ----------------------------
INSERT INTO `t_team` VALUES ('1', '2018-2019-1', '1', 2018, 2019, 1);
INSERT INTO `t_team` VALUES ('2', '2018-2019-2', '1', 2018, 2019, 2);

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `qx` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `collegeId` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'a', '123456', '管理员', '1', NULL, '2222', '15711341234', NULL, '/images/avator.png', '男');
INSERT INTO `t_user` VALUES ('2', 'aaa', '123456', '管理员', '1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_user` VALUES ('3', '张三', '123456', '教务人员', '1', '16935', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_user` VALUES ('4', 'aa', '123456', '教务人员', '1', '16798', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for t_week
-- ----------------------------
DROP TABLE IF EXISTS `t_week`;
CREATE TABLE `t_week`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_week
-- ----------------------------
INSERT INTO `t_week` VALUES ('1', '第2周-第19周');
INSERT INTO `t_week` VALUES ('2', '第2周-第5周');
INSERT INTO `t_week` VALUES ('3', '第2周-第6周');
INSERT INTO `t_week` VALUES ('4', '第2周-第9周');
INSERT INTO `t_week` VALUES ('5', '第2周-第6周');
INSERT INTO `t_week` VALUES ('6', '第7周-第11周');
INSERT INTO `t_week` VALUES ('7', '第12周-第12周');
INSERT INTO `t_week` VALUES ('8', '第13周-第17周');
INSERT INTO `t_week` VALUES ('9', '第18周-第19周');

-- ----------------------------
-- Table structure for t_year
-- ----------------------------
DROP TABLE IF EXISTS `t_year`;
CREATE TABLE `t_year`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `grade` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_year
-- ----------------------------
INSERT INTO `t_year` VALUES ('1', '大一', '大一上学期');
INSERT INTO `t_year` VALUES ('2', '大一', '大一下学期');
INSERT INTO `t_year` VALUES ('3', '大二', '大二上学期');
INSERT INTO `t_year` VALUES ('4', '大二', '大二下学期');
INSERT INTO `t_year` VALUES ('5', '大三', '大三上学期');
INSERT INTO `t_year` VALUES ('6', '大三', '大三下学期');
INSERT INTO `t_year` VALUES ('7', '大四', '大四上学期');
INSERT INTO `t_year` VALUES ('8', '大四', '大四下学期');

-- ----------------------------
-- Table structure for teacher_course
-- ----------------------------
DROP TABLE IF EXISTS `teacher_course`;
CREATE TABLE `teacher_course`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `team_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学期',
  `teacher_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师编号',
  `week_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '周时',
  `section_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课时',
  `end` int(11) NULL DEFAULT NULL COMMENT '是否结课',
  `comment` int(11) NULL DEFAULT NULL COMMENT '是否可以评论',
  `cid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程编号',
  `people` int(11) NULL DEFAULT NULL COMMENT '已选人数',
  `total_people` int(11) NULL DEFAULT NULL COMMENT '总人数',
  `classroom` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上课教室',
  `status` int(11) NULL DEFAULT NULL,
  `apply` int(11) NULL DEFAULT NULL COMMENT '申请状态',
  `classes_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班级id',
  `is_classes` int(11) NULL DEFAULT 0 COMMENT '0:未绑定 1:绑定班级',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of teacher_course
-- ----------------------------
INSERT INTO `teacher_course` VALUES ('1737085145357815809', '2', '9', '1', '10', 2, 0, '1256902978858741761', 1, 50, '201', 1, 1, NULL, 0);
INSERT INTO `teacher_course` VALUES ('1738037455714086914', '2', '9', '4', '20', 2, 0, '1221320201594064898', 0, 66, '666', 1, 1, NULL, 0);
INSERT INTO `teacher_course` VALUES ('1740295039045181442', '1', '9', '2', '12', 0, 0, '1221309074533359618', 0, NULL, '101', 1, 1, '1735850905920147458', 1);
INSERT INTO `teacher_course` VALUES ('1740295549189988353', '2', '9', '1', '1', 0, 0, '1221318535016730625', 1, 30, '202', 1, 1, NULL, 0);

-- ----------------------------
-- Table structure for teacher_role
-- ----------------------------
DROP TABLE IF EXISTS `teacher_role`;
CREATE TABLE `teacher_role`  (
  `role_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `teacher_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`teacher_id`, `role_id`) USING BTREE,
  INDEX `FKFB4C8AB333C76441`(`role_id`) USING BTREE,
  INDEX `FKFB4C8AB3352586D3`(`teacher_id`) USING BTREE,
  CONSTRAINT `FKFB4C8AB333C76441` FOREIGN KEY (`role_id`) REFERENCES `auth_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKFB4C8AB3352586D3` FOREIGN KEY (`teacher_id`) REFERENCES `t_teacher` (`tid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of teacher_role
-- ----------------------------
INSERT INTO `teacher_role` VALUES ('6b4fef6e4ecb11e8bf5d34de1af4e65a', '10001');
INSERT INTO `teacher_role` VALUES ('6b4fef6e4ecb11e8bf5d34de1af4e65a', '10002');
INSERT INTO `teacher_role` VALUES ('6b4fef6e4ecb11e8bf5d34de1af4e65a', '9');

-- ----------------------------
-- Table structure for team_comment
-- ----------------------------
DROP TABLE IF EXISTS `team_comment`;
CREATE TABLE `team_comment`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `cid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程编号',
  `sid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生编号',
  `tid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师编号',
  `remark` int(11) NULL DEFAULT NULL COMMENT '评分',
  `status` int(11) NULL DEFAULT NULL COMMENT '已评',
  `comment_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评价id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of team_comment
-- ----------------------------
INSERT INTO `team_comment` VALUES (1, '1737085145357815809', '20001', '9', 98, 1, '1738018428019109889');

-- ----------------------------
-- Table structure for user_notice
-- ----------------------------
DROP TABLE IF EXISTS `user_notice`;
CREATE TABLE `user_notice`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `notice_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_notice
-- ----------------------------

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE,
  INDEX `FK_Reference_5`(`role_id`) USING BTREE,
  CONSTRAINT `FK_Reference_4` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Reference_5` FOREIGN KEY (`role_id`) REFERENCES `auth_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('3', '1211619707833311234');
INSERT INTO `user_role` VALUES ('4', '1211619707833311234');
INSERT INTO `user_role` VALUES ('1', '6be2e8aa4ec911e8bf5d34de1af4e65a');
INSERT INTO `user_role` VALUES ('2', '6be2e8aa4ec911e8bf5d34de1af4e65a');

-- ----------------------------
-- Table structure for visits
-- ----------------------------
DROP TABLE IF EXISTS `visits`;
CREATE TABLE `visits`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NULL DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip_counts` bigint(20) NULL DEFAULT NULL,
  `pv_counts` bigint(20) NULL DEFAULT NULL,
  `week_day` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_11aksgq87euk9bcyeesfs4vtp`(`date`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1740271798830342146 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of visits
-- ----------------------------
INSERT INTO `visits` VALUES (1731657584318435329, NULL, '2023-12-04', 10, 4, 'Mon');
INSERT INTO `visits` VALUES (1731934878609965057, NULL, '2023-12-05', 10, 8, 'Tue');
INSERT INTO `visits` VALUES (1732684786132676610, NULL, '2023-12-07', 10, 2, 'Thu');
INSERT INTO `visits` VALUES (1733314591781912578, NULL, '2023-12-09', 10, 6, 'Sat');
INSERT INTO `visits` VALUES (1733653979296497665, NULL, '2023-12-10', 1, 1, 'Sun');
INSERT INTO `visits` VALUES (1735849608072466434, NULL, '2023-12-16', 10, 6, 'Sat');
INSERT INTO `visits` VALUES (1736938963125932033, NULL, '2023-12-19', 10, 12, 'Tue');
INSERT INTO `visits` VALUES (1737277165586206722, NULL, '2023-12-20', 10, 15, 'Wed');
INSERT INTO `visits` VALUES (1737744950825091074, NULL, '2023-12-21', 10, 5, 'Thu');
INSERT INTO `visits` VALUES (1738011540581871618, NULL, '2023-12-22', 10, 34, 'Fri');
INSERT INTO `visits` VALUES (1740271798830342145, NULL, '2023-12-28', 10, 11, 'Thu');

SET FOREIGN_KEY_CHECKS = 1;
