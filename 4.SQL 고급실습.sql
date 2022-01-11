#날짜 : 2022/01/11
#이름 : 양용민
#내용 : 4.SQL 고급실습

#실습하기 4-1
CREATE TABLE `Member` (
	`uid`		VARCHAR(10) PRIMARY KEY,
	`name`	VARCHAR(10) NOT NULL,
	`hp`		CHAR(13) UNIQUE NOT NULL,
	`pos`		VARCHAR(10) NOT NULL DEFAULT '사원',
	`dep`		INT,
	`rdate`	DATETIME NOT NULL
);

CREATE TABLE `Department` (
	`depNo` INT PRIMARY KEY,
	`name` VARCHAR(10) NOT NULL,
	`tel`  CHAR(12) NOT NULL
);

CREATE TABLE `Sales` (
	`seq`   INT PRIMARY KEY AUTO_INCREMENT,
	`uid`   VARCHAR(10) NOT NULL,
	`year`  YEAR NOT NULL,
	`month` TINYINT NOT NULL,
	`sale`  INT NOT NULL
);

#실습하기 4-2
INSERT INTO `Member` VALUES ('a101', '박혁거세', '010-1234-1001', '부장', 101, NOW());
INSERT INTO `Member` VALUES ('a102', '김유신',   '010-1234-1002', '차장', 101, NOW());
INSERT INTO `Member` VALUES ('a103', '김춘추',   '010-1234-1003', '사원', 101, NOW());
INSERT INTO `Member` VALUES ('a104', '장보고',   '010-1234-1004', '대리', 102, NOW());
INSERT INTO `Member` VALUES ('a105', '강감찬',   '010-1234-1005', '과장', 102, NOW());
INSERT INTO `Member` VALUES ('a106', '이성계',   '010-1234-1006', '차장', 103, NOW());
INSERT INTO `Member` VALUES ('a107', '정철',     '010-1234-1007', '차장', 103, NOW());
INSERT INTO `Member` VALUES ('a108', '이순신',   '010-1234-1008', '부장', 104, NOW());
INSERT INTO `Member` VALUES ('a109', '허균',     '010-1234-1009', '부장', 104, NOW());

INSERT INTO `Member` (`uid`, `name`, `hp`, `dep`, `rdate`) 
				   VALUES ('a110', '정약용',   '010-1234-1010', 105, NOW());
				   
INSERT INTO `Member` (`uid`, `name`, `hp`, `dep`, `rdate`) 
               VALUES ('a111', '박지원',   '010-1234-1011', 105, NOW());

INSERT INTO `Department` VALUES (101, '영업1부',    '051-512-1001');
INSERT INTO `Department` VALUES (102, '영업2부',    '051-512-1002');
INSERT INTO `Department` VALUES (103, '영업3부',    '051-512-1003');
INSERT INTO `Department` VALUES (104, '영업4부',    '051-512-1004');
INSERT INTO `Department` VALUES (105, '영업5부',    '051-512-1005');
INSERT INTO `Department` VALUES (106, '영업지원부', '051-512-1006');
INSERT INTO `Department` VALUES (107, '인사부',     '051-512-1007');

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a101', 2018, 1,  98100);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2018, 1, 136000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2018, 1,  80100);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2018, 1,  78000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2018, 1,  93000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a101', 2018, 2,  23500);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2018, 2, 126000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2018, 2,  18500);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2018, 2,  19000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a106', 2018, 2,  53000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a101', 2019, 1,  24000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2019, 1, 109000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2019, 1, 101000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2019, 1,  53500);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a107', 2019, 1,  24000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2019, 2, 160000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2019, 2, 101000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2019, 2,  43000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2019, 2,  24000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a106', 2019, 2, 109000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2020, 1, 201000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2020, 1,  63000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2020, 1,  74000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a106', 2020, 1, 122000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a107', 2020, 1, 111000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2020, 2, 120000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2020, 2,  93000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2020, 2,  84000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2020, 2, 180000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a108', 2020, 2,  76000);

#실습하기 4-3
SELECT * FROM `Member` WHERE `name` != '김춘추';
SELECT * FROM `Member` WHERE `name` <> '김춘추';
SELECT * FROM `Member` WHERE `pos`='사원' OR `pos`='대리';
SELECT * FROM `Member` WHERE `pos` IN('사원', '대리');

SELECT * FROM `Member` WHERE `name` LIKE '%신';
SELECT * FROM `Member` WHERE `name` LIKE '정_';

SELECT * FROM `Member` WHERE `name`='김유신';
SELECT * FROM `Member` WHERE `pos` = '차장' AND dep=101;
SELECT * FROM `Member` WHERE `pos` = '차장' OR dep=101;
SELECT * FROM `Member` WHERE `name` != '김춘추';
SELECT * FROM `Member` WHERE `name` <> '김춘추';
SELECT * FROM `Member` WHERE `pos` = '사원' OR `pos` = '대리';
SELECT * FROM `Member` WHERE `pos` IN ('사원', '대리');
SELECT * FROM `Member` WHERE `dep` IN (101, 102, 103);
 
#실습하기 4-4
SELECT * FROM `Sales` ORDER BY `sale`;
SELECT * FROM `Sales` ORDER BY `sale`DESC;
SELECT * FROM `Member` ORDER BY `name`;
SELECT * FROM `Member` ORDER BY `name`DESC;
SELECT * FROM `Member` ORDER BY `rdate`ASC;

SELECT * FROM `Sales` 
 WHERE `sale` > 50000 
  ORDER BY `sale`DESC;

SELECT * FROM `Sales`
 WHERE `sale` > 50000
  ORDER BY `year`, `month`, `sale` DESC;

#실습하기 4-5
SELECT * FROM `Sales` LIMIT 3;
SELECT * FROM `Sales` LIMIT 0, 3;
SELECT * FROM `Sales` LIMIT 1, 3;
SELECT * FROM `Sales` LIMIT 4, 5;

SELECT * FROM `Sales` 
 ORDER BY `sale` DESC 
  LIMIT 3, 5;
  
SELECT * FROM `Sales` 
 WHERE `sale` < 50000
  ORDER BY `sale` DESC
   LIMIT 3;

SELECT * FROM `Sales` 
 WHERE `sale` > 50000
	ORDER BY `year` DESC, `month`, `sale` DESC
 	 LIMIT 5;
 	 
#실습하기 4-6
SELECT SUM(`sale`) AS `합계` FROM `Sales`;
SELECT AVG(`sale`) AS `평균` FROM `Sales`;
SELECT MAX(`sale`) AS `최대값` FROM `Sales`;
SELECT COUNT(`sale`) AS `갯수` FROM `Sales`;
SELECT COUNT(*) AS `갯수` FROM `Sales`;
INSERT INTO `Member` VALUES ('b101', '을지문덕', '010-5555-1234', '사장', 107, NOW());

#확인문제 1. 2018년 1월 매출의 총합을 구하시오
SELECT SUM(`sale`) FROM `Sales` WHERE `year`=2018 AND `month`=1;

#확인문제 2. 2019년 2월달에 5만원 이상 매출에 대한 총합과 평균을 구하시오.
SELECT 
	SUM(`sale`) AS `총합`,
	AVG(`sale`) AS `평균`
FROM
	`Sales`
WHERE
	`year`  = 2019 AND 
	`month` = 2		AND 
	`sale`  >= 50000;
	
#확인문제 3. 2020년 전체 매출 가운데 최저, 최고, 매출을 구하시오.
SELECT
	MAX(`sale`) AS `최고매출`,
	MIN(`sale`) AS `최저매출`
FROM
	`Sales`
WHERE
	`year` = 2020;
	
#실습하기 4-7
SELECT * FROM `Sales` GROUP BY `uid`;
SELECT * FROM `Sales` GROUP BY `year`;
SELECT * FROM `Sales` GROUP BY `uid`, `year`;

SELECT `uid`, COUNT(*) AS `건수` 
	FROM `Sales` 
		GROUP BY `uid`; 

SELECT `uid`, SUM(`sale`) AS `합계`
	FROM `Sales`
		GROUP BY `uid`;
		
SELECT `uid`, AVG(`sale`) AS `평균`
	FROM `Sales`
		GROUP BY `uid`; 

#실습하기 4-8
SELECT `uid`, SUM(`sale`) AS `합계` 
 FROM `Sales`
  GROUP BY `uid`
	HAVING `합계` >= 200000;

SELECT `uid`, `year`, SUM(`sale`) AS `합계`
 FROM `Sales`
	WHERE `sale` >= 100000
	 GROUP by `uid`, `year`
		HAVING SUM(`sale`) >= 200000
		 ORDER BY `합계` DESC;
		 
#실습하기 4-9
CREATE TABLE `Sales2` LIKE `Sales`;
INSERT INTO `Sales2` SELECT * FROM `Sales`;
UPDATE `Sales2` SET `year` = `year` + 3;
UPDATE `Sales2` SET `sale` = `sale` + 1;

SELECT * FROM `Sales` UNION SELECT * FROM `Sales2`;

#실습하기 4-10
SELECT `seq`, `uid`, `sale` FROM `Sales`
UNION
SELECT `seq`, `uid`, `sale` FROM `Sales2`;

SELECT `seq`, `uid`, `sale` FROM `Sales`
UNION ALL
SELECT `seq`, `uid`, `sale` FROM `Sales2`;

#실습하기 4-11
SELECT * FROM `Sales` JOIN `Member` ON `Sales`.`uid` = `Member`.`uid`;

SELECT * FROM `Sales` AS a
JOIN `Member` AS b
ON a.uid = b.uid;

SELECT * FROM `Sales` AS a
JOIN `Member` AS b
USING(`uid`);

SELECT * FROM `Sales` AS a, `Member` AS b
WHERE a.uid = b.uid;

SELECT * FROM `Sales` AS a
JOIN `Member` 			 AS b ON a.uid = b.uid
JOIN `Department`		 AS c ON b.dep = c.depNo;

#실습하기 4-12
SELECT * FROM `Sales` AS a 
RIGHT JOIN `Member` AS b
ON a.uid = b.uid;

#확인문제1. 모든 직원의 아이디, 이름, 직급, 부서명을 조회하시오.
SELECT `uid`, a.`name`, `pos`, b.`name` FROM `Member` AS a
JOIN `Department` AS b
ON a.dep = b.depNo;

#확인문제2. '김유신' 직원의 2019년도 매출의 합을 조회하시오.
SELECT `name`, SUM(`sale`) AS `2019년도 매출 합` 
FROM `Sales` AS a 
JOIN `Member` AS b
ON a.uid = b.uid
WHERE `year` IN(2019) AND b.name = '김유신';

#확인문제3. 2019년 50,000이상의 매출에 대해 직원별 매출의 합이 100,000원 이상인 
#				직원의 이름, 부서명, 직급, 년도, 매출합을 조회하시오. (단, 매출 합이 큰 순서부터 정렬)
SELECT b.`name`, c.`name`, `pos`, `year`, SUM(`sale`) AS `매출합` FROM `Sales` AS a
JOIN `Member`     AS b ON a.uid = b.uid
JOIN `Department` AS c ON b.dep = c.depNo
WHERE `year` = 2019 AND `sale` >= 50000
GROUP BY a.`uid`
HAVING `매출합` >= 100000
ORDER BY `매출합` DESC;