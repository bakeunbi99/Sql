#날짜 : 2021/08/03
#이름 : 박은비
#내용 : SQL 확인문제

#실습하기 3-1
CREATE TABLE TBL_MEMBER(
	memberID CHAR(8) PRIMARY KEY,
	memberName CHAR(5) NOT NULL,
	memberAddress CHAR(20)
);


CREATE TABLE tbl_product(
	productName CHAR(4) PRIMARY KEY,
	cost INT NOT NULL,
	makeDate DATE,
	company CHAR(5),
	amount INT NOT NULL
);

#실습하기 3-2
INSERT INTO TBL_MEMBER VALUE('jang', '장보고', '완도군');
INSERT INTO TBL_MEMBER VALUE('kang', '강감찬', '서울시');
INSERT INTO TBL_MEMBER(memberID, memberName) VALUE('kim', '김유신');
INSERT INTO TBL_MEMBER VALUE('lee', '이순신', '서울시');

INSERT INTO tbl_product VALUE('냄장고', 800, '2021-05-17', 'LG', 1);
INSERT INTO tbl_product VALUE('노트북', 1500, '2021-05-17', '삼성', 5);
INSERT INTO tbl_product VALUE('컴퓨터', 1000, '2021-05-17', 'LG', 10);

#실습하기 3-3

