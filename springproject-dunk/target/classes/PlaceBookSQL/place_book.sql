## DATABASE 생성 및 선택
CREATE DATABASE IF NOT EXISTS project;
use project;

DROP TABLE IF EXISTS place_book;

CREATE TABLE place_book (
  no INT PRIMARY KEY AUTO_INCREMENT,
  place_no INT NOT NULL,
  place_name VARCHAR(255) NOT NULL,
  place_address1 VARCHAR(80) NOT NULL,
  place_address2 VARCHAR(80) NULL,
  place_pay INT NULL,
  user_id VARCHAR(40) NULL,
  user_nick varchar(40) NULL,
  dates DATE NULL, 
  player_num INT NULL,
  time_book VARCHAR(30) NULL

)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, "bigstart",  "짱구",	'2023-07-07', NULL, '10:00~12:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', null, "globalit",  "이제숨좀",	'2023-07-07', NULL, '18:00~20:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, NULL,  NULL,	'2023-07-07', NULL, '20:00~22:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, NULL,  NULL,	'2023-07-08', NULL, '10:00~12:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, NULL,  NULL,	'2023-07-08', NULL, '12:00~14:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, "yellowbear",  "흰둥이",	'2023-07-08', NULL, '14:00~16:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, "socute",  "유체리", '2023-07-08', NULL, '16:00~18:00');

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
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, NULL,  NULL,	'2023-07-14', NULL, '16:00~18:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (24, '관악구민종합체육센터', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', NULL, "hahazam",  "하츠마루",	'2023-07-14', NULL, '20:00~22:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (23, '삼성리틀썬더스 목동점', '서울특별시 양천구 중앙로 312', NULL, 40000, "basketking",  "소고기사탕", '2023-07-07', NULL, '14:00~16:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (23, '삼성리틀썬더스 목동점', '서울특별시 양천구 중앙로 312', NULL, 40000, NULL,  NULL, '2023-07-07', NULL, '20:00~22:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (23, '삼성리틀썬더스 목동점', '서울특별시 양천구 중앙로 312', NULL, 40000, "hahazam",  "하츠마루", '2023-07-08', NULL, '20:00~22:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (23, '삼성리틀썬더스 목동점', '서울특별시 양천구 중앙로 312', NULL, 40000, NULL,  NULL, '2023-07-09', NULL, '10:00~12:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (23, '삼성리틀썬더스 목동점', '서울특별시 양천구 중앙로 312', NULL, 40000, NULL,  NULL, '2023-07-09', NULL, '16:00~18:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (23, '삼성리틀썬더스 목동점', '서울특별시 양천구 중앙로 312', NULL, 40000, "bigstart",  "짱구", '2023-07-09', NULL, '20:00~22:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (23, '삼성리틀썬더스 목동점', '서울특별시 양천구 중앙로 312', NULL, 40000, "globalit",  "이제숨좀", '2023-07-10', NULL, '18:00~20:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (23, '삼성리틀썬더스 목동점', '서울특별시 양천구 중앙로 312', NULL, 40000, "hahazam",  "하츠마루", '2023-07-10', NULL, '20:00~22:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (23, '삼성리틀썬더스 목동점', '서울특별시 양천구 중앙로 312', NULL, 40000, "socute",  "유체리", '2023-07-11', NULL, '20:00~22:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (23, '삼성리틀썬더스 목동점', '서울특별시 양천구 중앙로 312', NULL, 40000, NULL,  NULL, '2023-07-12', NULL, '12:00~14:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (23, '삼성리틀썬더스 목동점', '서울특별시 양천구 중앙로 312', NULL, 40000, NULL,  NULL, '2023-07-12', NULL, '20:00~22:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (23, '삼성리틀썬더스 목동점', '서울특별시 양천구 중앙로 312', NULL, 40000, NULL,  NULL, '2023-07-13', NULL, '12:00~14:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (23, '삼성리틀썬더스 목동점', '서울특별시 양천구 중앙로 312', NULL, 40000, NULL,  NULL, '2023-07-13', NULL, '16:00~18:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (23, '삼성리틀썬더스 목동점', '서울특별시 양천구 중앙로 312', NULL, 40000, NULL,  NULL, '2023-07-13', NULL, '20:00~22:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (22, '서울휘트니스 목동본점', '서울특별시 양천구 신월로 389', '남부빌딩7층 B3', 50000, "leelee",  "대만여친", '2023-07-08', NULL, '20:00~22:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (22, '서울휘트니스 목동본점', '서울특별시 양천구 신월로 389', '남부빌딩7층 B3', 50000, "bigant",  "꽁지당", '2023-07-08', NULL, '18:00~20:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (22, '서울휘트니스 목동본점', '서울특별시 양천구 신월로 389', '남부빌딩7층 B3', 50000, "smallpen",  "묘미99", '2023-07-09', NULL, '18:00~20:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (22, '서울휘트니스 목동본점', '서울특별시 양천구 신월로 389', '남부빌딩7층 B3', 50000, NULL,  NULL, '2023-07-09', NULL, '20:00~22:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (22, '서울휘트니스 목동본점', '서울특별시 양천구 신월로 389', '남부빌딩7층 B3', 50000, "yellowbear",  "흰둥이", '2023-07-11', NULL, '14:00~16:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (22, '서울휘트니스 목동본점', '서울특별시 양천구 신월로 389', '남부빌딩7층 B3', 50000, NULL,  NULL, '2023-07-11', NULL, '18:00~20:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (22, '서울휘트니스 목동본점', '서울특별시 양천구 신월로 389', '남부빌딩7층 B3', 50000, "basketking",  "소고기사탕", '2023-07-13', NULL, '20:00~22:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (21, '인아우트', '서울특별시 마포구 와우산로13길 6', '지하2층', 100000, "bigant",  "꽁지당", '2023-07-11', NULL, '16:00~18:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (21, '인아우트', '서울특별시 마포구 와우산로13길 6', '지하2층', 100000, "globalit",  "이제숨좀", '2023-07-11', NULL, '20:00~22:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (21, '인아우트', '서울특별시 마포구 와우산로13길 6', '지하2층', 100000, "basketking",  "소고기사탕", '2023-07-12', NULL, '18:00~20:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (21, '인아우트', '서울특별시 마포구 와우산로13길 6', '지하2층', 100000, "yellowbear",  "흰둥이", '2023-07-13', NULL, '16:00~18:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (21, '인아우트', '서울특별시 마포구 와우산로13길 6', '지하2층', 100000, "bigstart",  "짱구", '2023-07-13', NULL, '20:00~22:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (20, '맥스체대입시노원교육원', '서울특별시 노원구 광운로 86 B1', '맥스체대입시', 50000, NULL,  NULL, '2023-07-11', NULL, '16:00~18:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (20, '맥스체대입시노원교육원', '서울특별시 노원구 광운로 86 B1', '맥스체대입시', 50000, NULL,  NULL, '2023-07-11', NULL, '20:00~22:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (20, '맥스체대입시노원교육원', '서울특별시 노원구 광운로 86 B1', '맥스체대입시', 50000, NULL,  NULL, '2023-07-12', NULL, '20:00~22:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (20, '맥스체대입시노원교육원', '서울특별시 노원구 광운로 86 B1', '맥스체대입시', 50000, NULL,  NULL, '2023-07-13', NULL, '20:00~22:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (20, '맥스체대입시노원교육원', '서울특별시 노원구 광운로 86 B1', '맥스체대입시', 50000, "bigant",  "꽁지당", '2023-07-14', NULL, '14:00~16:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (20, '맥스체대입시노원교육원', '서울특별시 노원구 광운로 86 B1', '맥스체대입시', 50000, NULL,  NULL, '2023-07-14', NULL, '18:00~20:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (20, '맥스체대입시노원교육원', '서울특별시 노원구 광운로 86 B1', '맥스체대입시', 50000, "leelee",  "대만여친", '2023-07-14', NULL, '20:00~22:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (19, '서울여자대학교체육관', '서울특별시 노원구 화랑로 621', NULL, 165000, NULL,  NULL, '2023-07-11', NULL, '20:00~22:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (19, '서울여자대학교체육관', '서울특별시 노원구 화랑로 621', NULL, 165000, NULL,  NULL, '2023-07-12', NULL, '14:00~16:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (19, '서울여자대학교체육관', '서울특별시 노원구 화랑로 621', NULL, 165000, NULL,  NULL, '2023-07-12', NULL, '16:00~18:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (19, '서울여자대학교체육관', '서울특별시 노원구 화랑로 621', NULL, 165000, NULL,  NULL, '2023-07-13', NULL, '10:00~12:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (19, '서울여자대학교체육관', '서울특별시 노원구 화랑로 621', NULL, 165000, NULL,  NULL, '2023-07-13', NULL, '18:00~20:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (19, '서울여자대학교체육관', '서울특별시 노원구 화랑로 621', NULL, 165000, NULL,  NULL, '2023-07-13', NULL, '20:00~22:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (19, '서울여자대학교체육관', '서울특별시 노원구 화랑로 621', NULL, 165000, "smallpen",  "묘미99", '2023-07-14', NULL, '18:00~20:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (19, '서울여자대학교체육관', '서울특별시 노원구 화랑로 621', NULL, 165000, "leelee",  "대만여친", '2023-07-16', NULL, '20:00~22:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (19, '서울여자대학교체육관', '서울특별시 노원구 화랑로 621', NULL, 165000, "socute",  "유체리", '2023-07-20', NULL, '18:00~20:00');

INSERT INTO place_book (place_no, place_name, place_address1, place_address2, place_pay, user_id, user_nick, dates, player_num, time_book)
VALUES (13, '아차산 배수지 체육공원', '서울특별시 광진구 천호대로 731', '아차산배수지체육공원', null, "smallpen",  "묘미99", '2023-07-20', NULL, '18:00~20:00');



COMMIT;

SELECT * FROM place_book; 