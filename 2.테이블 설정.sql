#날짜 : 2022/01/10
#이름 : 양용민
#내용 : 2.테이블 설정하기

#실습 2-1
CREATE TABLE `User2`(
	`uid`  VARCHAR(10) PRIMARY KEY,
	`name` VARCHAR(10),
	`hp`   CHAR(13),
	`age`  INT
);

INSERT INTO `User2` VALUES('A106', '김유신', '010-1234-1111', 25);
INSERT INTO `User2` VALUES('A102', '김춘추', '010-1234-2222', 23);
INSERT INTO `User2` VALUES('A103', '장보고', '010-1234-3333', 32);
INSERT INTO `User2` VALUES('A104', '강감찬', '010-1234-4444', 45);
INSERT INTO `User2` SET
								`uid` = 'A105',
								`name`= '이순신',
								`hp`  = '010-1234-5555',
								`age` = 51;


#실습 2-2
CREATE TABLE `User3`(
	`uid`  VARCHAR(10) PRIMARY KEY,
	`name` VARCHAR(10),
	`hp`   CHAR(13) UNIQUE,
	`age`  INT
);

INSERT INTO `User3` VALUES('A101', '김유신', '010-1234-6666', 25);
INSERT INTO `User3` VALUES('A102', '김춘추', '010-1234-2222', 23);
INSERT INTO `User3` VALUES('A103', '장보고', '010-1234-3333', 32);
INSERT INTO `User3` VALUES('A104', '강감찬', '010-1234-4444', 45);
INSERT INTO `User3` SET
								`uid` = 'A105',
								`name`= '이순신',
								`hp`  = '010-1234-5555',
								`age` = 51;
								
#실습 2-3
CREATE TABLE `User4`(
	`seq`		INT AUTO_INCREMENT PRIMARY KEY,
	`name`   VARCHAR(10),
	`gender` TINYINT,
	`age`    INT,
	`addr`   VARCHAR(255)
);

INSERT INTO `User4` (`name`, `gender`, `age`, `addr`)VALUES('김유신', 1, 25, '김해시');
INSERT INTO `User4` (`name`, `gender`, `age`, `addr`)VALUES('김춘추', 1, 23, '경주시');
INSERT INTO `User4` (`name`, `gender`, `age`, `addr`)VALUES('장보고', 1, 35, '완도시');
INSERT INTO `User4` (`name`, `gender`, `age`, `addr`)VALUES('강감찬', 1, 42, '서울시');
INSERT INTO `User4` (`name`, `gender`, `age`, `addr`)VALUES('신사임당', 2, 47, '강릉시');
INSERT INTO `User4` (`gender`, `addr`)VALUES(2, '부산시');

#실습 2-4
CREATE TABLE `User5`(
	`seq`		INT AUTO_INCREMENT PRIMARY KEY,
	`name`   VARCHAR(10) NOT NULL,
	`gender` TINYINT,
	`age`    INT DEFAULT 1,
	`addr`   VARCHAR(255)
);
INSERT INTO `User5` (`name`, `gender`, `age`, `addr`)VALUES('김유신', 1, 25, '김해시');
INSERT INTO `User5` (`name`, `gender`, `age`, `addr`)VALUES('김춘추', 1, 23, '경주시');
INSERT INTO `User5` (`name`, `gender`, `age`, `addr`)VALUES('장보고', 1, 35, '완도시');
INSERT INTO `User5` (`name`, `gender`, `age`, `addr`)VALUES('강감찬', 1, 42, '서울시');
INSERT INTO `User5` (`name`, `gender`, `age`, `addr`)VALUES('신사임당', 2, 47, '강릉시');
INSERT INTO `User5` (`gender`, `addr`)VALUES(2, '부산시');

#실습 2-5
CREATE TABLE `User6` LIKE `User5`;

#실습 2-6
INSERT INTO `User6` SELECT * FROM `User5`;

INSERT INTO `User6` (`name`, `gender`, `age`, `addr`)
		 SELECT `name`, `gender`, `age`, `addr` FROM `User5`;