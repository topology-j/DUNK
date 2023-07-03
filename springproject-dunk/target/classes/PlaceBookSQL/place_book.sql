## DATABASE 생성 및 선택
CREATE DATABASE IF NOT EXISTS project;
use project;

DROP TABLE IF EXISTS place_book;


CREATE TABLE place_book (
  no INT PRIMARY KEY AUTO_INCREMENT,
  place_no INT NOT NULL, 	# 외래키
  place_name VARCHAR(255) NOT NULL,
  place_address1 VARCHAR(80) NOT NULL,
  place_address2 VARCHAR(80) NULL,
  place_pay INT NULL,
  #dmin_id VARCHAR(30) NULL,
  user_id VARCHAR(40) NULL, # 외래키 
  user_nick varchar(40) NULL,
  dates DATE NULL, 
  player_num INT NULL,
  time_book VARCHAR(30) NULL
 
  #FOREIGN KEY (place_no) REFERENCES place (no),
  #FOREIGN KEY (user_id) REFERENCES user(id),
  #FOREIGN KEY (team_no) REFERENCES team(no)
  
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, NULL,  NULL,	'2023-07-05', NULL, '16:00~18:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, NULL,  NULL,	'2023-07-05', NULL, '18:00~20:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, NULL,  NULL,	'2023-07-05', NULL, '20:00~22:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, NULL,  NULL,	'2023-07-06', NULL, '12:00~14:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, NULL,  NULL,	'2023-07-06', NULL, '14:00~16:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, NULL,  NULL,	'2023-07-06', NULL, '16:00~18:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, NULL,  NULL,	'2023-07-06', NULL, '18:00~20:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, NULL,  NULL,	'2023-07-06', NULL, '20:00~22:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, NULL,  NULL,	'2023-07-07', NULL, '10:00~12:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, NULL,  NULL,	'2023-07-07', NULL, '18:00~20:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, NULL,  NULL,	'2023-07-07', NULL, '20:00~22:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, NULL,  NULL,	'2023-07-08', NULL, '10:00~12:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, NULL,  NULL,	'2023-07-08', NULL, '12:00~14:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, NULL,  NULL,	'2023-07-08', NULL, '14:00~16:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, NULL,  NULL,	'2023-07-08', NULL, '16:00~18:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, NULL,  NULL,	'2023-07-08', NULL, '18:00~20:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, NULL,  NULL,	'2023-07-08', NULL, '20:00~22:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, NULL,  NULL,	'2023-07-09', NULL, '10:00~12:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, NULL,  NULL,	'2023-07-09', NULL, '12:00~14:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, NULL,  NULL,	'2023-07-09', NULL, '14:00~16:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, NULL,  NULL,	'2023-07-09', NULL, '16:00~18:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, NULL,  NULL,	'2023-07-09', NULL, '18:00~20:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, NULL,  NULL,	'2023-07-09', NULL, '20:00~22:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, NULL,  NULL,	'2023-07-10', NULL, '20:00~22:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, NULL,  NULL,	'2023-07-11', NULL, '18:00~20:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, NULL,  NULL,	'2023-07-11', NULL, '20:00~22:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, NULL,  NULL,	'2023-07-12', NULL, '10:00~12:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, NULL,  NULL,	'2023-07-12', NULL, '18:00~20:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, NULL,  NULL,	'2023-07-13', NULL, '16:00~18:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, NULL,  NULL,	'2023-07-13', NULL, '20:00~22:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (23, '삼성리틀썬더스 목동점', '서울특별시 양천구 중앙로 312', NULL, 40000, NULL,  NULL, '2023-07-07', NULL, '20:00~22:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (23, '삼성리틀썬더스 목동점', '서울특별시 양천구 중앙로 312', NULL, 40000, NULL,  NULL, '2023-07-08', NULL, '20:00~22:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (23, '삼성리틀썬더스 목동점', '서울특별시 양천구 중앙로 312', NULL, 40000, NULL,  NULL, '2023-07-09', NULL, '20:00~22:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (23, '삼성리틀썬더스 목동점', '서울특별시 양천구 중앙로 312', NULL, 40000, NULL,  NULL, '2023-07-10', NULL, '20:00~22:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (23, '삼성리틀썬더스 목동점', '서울특별시 양천구 중앙로 312', NULL, 40000, NULL,  NULL, '2023-07-11', NULL, '20:00~22:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (23, '삼성리틀썬더스 목동점', '서울특별시 양천구 중앙로 312', NULL, 40000, NULL,  NULL, '2023-07-12', NULL, '20:00~22:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (23, '삼성리틀썬더스 목동점', '서울특별시 양천구 중앙로 312', NULL, 40000, NULL,  NULL, '2023-07-13', NULL, '20:00~22:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (22, '서울휘트니스 목동본점', '서울특별시 양천구 신월로 389', '남부빌딩7층 B3', 50000, NULL,  NULL, '2023-07-13', NULL, '20:00~22:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (21, '인아우트', '서울특별시 마포구 와우산로13길 6', '지하2층', 100000, NULL,  NULL, '2023-07-13', NULL, '20:00~22:00');

COMMIT;

SELECT * FROM place_book; 