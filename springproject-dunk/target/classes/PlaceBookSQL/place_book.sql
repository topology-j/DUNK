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
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, 'aaaa',  NULL,	'2023-06-28', NULL, '10:00~12:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL,  'bbbb', NULL,	'2023-06-28', NULL, '12:00~14:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, 'cccc',  NULL,	'2023-06-28', NULL, '14:00~16:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, 'dddd', NULL,	'2023-06-28', NULL, '18:00~20:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL,  'eeee', NULL,	'2023-06-28', NULL, '20:00~22:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, 'ffff', NULL,	'2023-06-29', NULL, '16:00~18:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL,  'gggg',  NULL,	'2023-06-29', NULL, '18:00~20:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, 'hhhh',  NULL,	'2023-06-29', NULL, '20:00~22:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, 'hhhh', NULL,	'2023-06-30', NULL, '12:00~14:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, 'iiii', NULL,	'2023-06-30', NULL, '14:00~16:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, 'jjjj',  NULL,	'2023-06-30', NULL, '16:00~18:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, 'kkkk', NULL,	'2023-06-30', NULL, '18:00~20:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, 'llll', NULL,	'2023-06-30', NULL, '20:00~22:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, 'mmmm',NULL,	'2023-07-01', NULL, '10:00~12:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, 'nnnn', NULL,	'2023-07-01', NULL, '12:00~14:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, 'nnnn', NULL,	'2023-07-01', NULL, '14:00~16:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, 'nnnn', NULL,	'2023-07-01', NULL, '16:00~18:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, 'nnnn', NULL,	'2023-07-01', NULL, '18:00~20:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, 'nnnn', NULL,	'2023-07-01', NULL, '20:00~22:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, 'nnnn', NULL,	'2023-07-02', NULL, '10:00~12:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, 'nnnn', NULL,	'2023-07-02', NULL, '12:00~14:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, 'nnnn', NULL,	'2023-07-02', NULL, '14:00~16:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL,  'nnnn',  NULL,	'2023-07-02', NULL, '16:00~18:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, 'nnnn',  NULL,	'2023-07-02', NULL, '18:00~20:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, 'nnnn', NULL,	'2023-07-03', NULL, '16:00~18:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, 'nnnn', NULL,	'2023-07-03', NULL, '18:00~20:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, 'nnnn', NULL,	'2023-07-03', NULL, '20:00~22:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, 'nnnn', NULL,	'2023-07-03', NULL, '18:00~20:00'); 

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, 'nnnn',  NULL,	'2023-07-03', NULL, '20:00~22:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, 'nnnn',  NULL,	'2023-07-04', NULL, '20:00~22:00');

COMMIT;

SELECT * FROM place_book; 