#날짜 : 2021/08/10
#이름 : 박은비
#내용 : 게시판 프로젝트 테이블 설계

#약관테이블
#이용약관, 개인정보
CREATE TABLE `Jboard_terms` (
	`terms` 		TEXT,
	`privacy`	TEXT
);

#회원테이블

#비밀번호는 암호화
CREATE TABLE `Jboard_member` (
	`uid`			VARCHAR(20) PRIMARY key,
	`pass`		VARCHAR(255) NOT null,
	`name`		VARCHAR(20) NOT null,
	`nick`		VARCHAR(20) UNIQUE,
	`email`		VARCHAR(50) UNIQUE,
	`hp`			CHAR(13) UNIQUE,
	`grade`		TINYINT DEFAULT 2,
	`zip`			CHAR(5),
	`addr1`		VARCHAR(255),
	`addr2`		VARCHAR(255),
	`regip`		VARCHAR(20),
	`rdate`		DATETIME
);

#게시물테이블
CREATE TABLE `Jboard_article` (
	`seq`			INT AUTO_INCREMENT PRIMARY KEY,
	`parent` 	INT DEFAULT 0, 
	`comment`	INT DEFAULT 0, 
	`cate`		VARCHAR(20) DEFAULT 'free', 
	`title`		VARCHAR(255),
	`content`	TEXT,
	`file`		TINYINT DEFAULT 0,
	`hit`			INT DEFAULT 0,
	`uid`			VARCHAR(20),
	`regip`		VARCHAR(20),
	`rdate`		DATETIME
	
	
);

#파일 테이블
CREATE TABLE `Jboard_file` (
	`fseq`		INT AUTO_INCREMENT PRIMARY KEY,
	`parent`		INT,
	`oriName`	VARCHAR(255),
	`newName`	VARCHAR(255),
	`download`	INT DEFAULT 0,
	`rdate`		DATETIME
);




