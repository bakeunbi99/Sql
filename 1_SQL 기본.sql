#날짜 : 2021/08/03
#이름 : 박은비
#내용 : 1.SQL 기본

#실습하기 1-1
--backtick : ``
CREATE DATABASE `TestDB`; 
DROP TABLE `TestDB`;

#실습하기 1-2
/* VARCHAR 가변길이, CHAR 고정길이 */
CREATE TABLE `USER1` (
	`uid` VARCHAR(10), 
	`name` VARCHAR(10),
	`hp` CHAR(13),
	`age` INT
);

DROP TABLE `USER1`;

#실습하기 1-3
INSERT INTO `USER1` VALUES('A101', '김유신', '010-1234-1111', 25);
INSERT INTO `USER1` VALUES('A102', '김춘추', '010-1234-2222', 23);
INSERT INTO `USER1` VALUES('A103', '장보고', '010-1234-3333', 32);
INSERT INTO `USER1`(`age`, `name`, `uid`, `hp`)
VALUES(45, '감감찬', 'A104', '010-1234-4444');
INSERT INTO `USER1`
	SET `name`='이순신',
		`age` = 51,
		`hp` = '010-1234-5555',
		`uid` = 'A105';

#실습하기 1-4
SELECT `uid`, `name`, `age`, `hp` FROM `USER1`;
SELECT `name`, `uid`, `hp` FROM `USER1`;
SELECT * FROM `USER1`;
SELECT * FROM `USER1` WHERE `uid`= 'A101';
SELECT * FROM `USER1` WHERE `name`= '김춘추';
SELECT * FROM `USER1` WHERE `age` > 30;

#실습하기 1-5
UPDATE `USER1` SET `hp` = '010-1234-1234';
UPDATE `USER1` SET `uid` = 'B101', `name` = '홍길동';
UPDATE `USER1` SET 
						`uid` = 'A101', 
						`name` = '김유신'
					where
					 	`age` = 25;
					 	
UPDATE `USER1` SET
						`hp` = '010-1234-1111'
						where
							'name' = '김유신';
						
UPDATE `USER1` SET
						`uid` = 'A102',
						`name` = '김춘추',
						`hp` = '010-1234-2222'
					where
						`age` = 23;

#실습하기 1-6						
DELETE FROM `USER1` WHERE `uid` = 'A101';
DELETE FROM `USER1` WHERE `uid` = 'A102' AND 'age' = 25;
DELETE FROM `USER1` WHERE `age` >= 30;









