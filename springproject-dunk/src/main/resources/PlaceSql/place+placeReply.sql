-- place
use project;
drop DATABASE project;

## DATABASE 생성 및 선택
CREATE DATABASE IF NOT EXISTS project;
use project;


-- no, name, zipcode, address1, address2, area, phone, 
-- pay, start_time, end_time, avail_num, content, park, 
-- read_count, recommend, thank, latitude, longitude, image1, image2, image3, image4 ------------------bookmark? reply recommend?
-- int, String, String, String, String, String, 
-- int, TIME, TIME, int, text, boolean, 
-- int, int, float, float, String, String, String, String
-- Dongdaemun, Gwangjin, Seodaemun, Gangseo, Gangnam, Jungnang, Dobong, Yangcheon, Nowon, Gwanak  

# 테이블 생성 
DROP TABLE IF EXISTS place;
CREATE TABLE place (
  no INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  zipcode VARCHAR(80) NOT NULL,
  address1 VARCHAR(80) NOT NULL,
  address2 VARCHAR(80) NULL,
  area VARCHAR(50) NOT NULL,
  phone VARCHAR(50) NULL ,
  pay INT NULL,
  start_time TIME NULL,
  end_time TIME NULL,
  avail_num INT NULL,
  content TEXT NULL,
  park BOOLEAN NULL,
  read_count INT NULL,
  recommend INT NULL,
  thank INT NULL, 
  latitude FLOAT NULL,
  longitude FLOAT NULL,
  image1 VARCHAR(255) NULL,
  image2 VARCHAR(255) NULL,
  image3 VARCHAR(255) NULL,
  image4 VARCHAR(255) NULL
  )ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# 장소이름, 우편번호, 주소, 장소지역, 전화번호, 대관료, 시작시간, 마감시간, 이용가능인원, 상세설명, 주차, 조회수, 추천, 위도, 경도
INSERT INTO place(name, zipcode, address1, address2, area, phone, pay, start_time, end_time, avail_num, content, park, read_count, recommend, thank, latitude, longitude, image1, image2, image3, image4)
VALUES('동대문 어반바스켓볼', '02633', '서울특별시 동대문구 천호대로 385', '글로벌팰리스 102동 지하2층', 'Dongdaemun', '0507-1306-9420', 50000, '09:00:00', '22:00:00', 10, 
'- 농구공 무료 사용 가능\r\n\r\n
- 실내용 운동화 착용 必\r\n\r\n- 샤워시설 무료 이용 ( 수건 지참 必 )\r\n\r\n 
- 냉.난방시설 무료 이용\r\n', 
True, 123, 123, 5, 37.5622, 127.0619,'a1.jpg', 'a2.jpg', 'a3.jpg', 'a4.jpg');

INSERT INTO place(name, zipcode, address1, address2, area, phone, pay, start_time, end_time, avail_num, content, park, read_count, recommend, thank, latitude, longitude, image1, image2, image3, image4)
VALUES('동대문 토모짐', '02532', '서울특별시 동대문구 사가정로 148', 'Sk아파트스포츠 상가 5층', 'Dongdaemun', '0507-1471-8603', 80000, '06:00:00', '23:59:59', 10,
'- 농구공 사용 가능\r\n\r\n- 전자휘슬 / 유니폼 상하의(각 1,000원씩) /대형 전광판(24초계시기 포함)\r\n\r\n 
- 물음료 판매하고 있습니다!!\r\n\r\n
- 그 외 문의사항은 카톡채널을 이용해주세요 
- 카카오톡 채널 : TOMO GYM 검색\r\n', 
True, 123, 123, 4, 37.5582, 126.8458, 'b1.jpg', 'b2.jpg', 'b3.jpg', 'b4.jpg');

INSERT INTO place(name, zipcode, address1, address2, area, phone, pay, start_time, end_time, avail_num, content, park, read_count, recommend, thank, latitude, longitude, image1, image2, image3, image4)
VALUES('동대문구민 체육센터', '02641', '서울특별시 동대문구 장안벚꽃로 67', '동대문구민 체육센터', 'Dongdaemun', '02-2247-9772', 50000, '06:00:00', '22:00:00', 10,
'- https://www.dfmc.kr:8443/course/sports/fmcs/121\r\n\r\n
- 문의 02-2247-9772~4\r\n\r\n', 
True, 123, 123, 3, 37.5666, 127.0734,'c1.jpg', 'c2.jpg', 'c3.jpg', 'c4.jpg');

INSERT INTO place(name, zipcode, address1, address2, area, phone, pay, start_time, end_time, avail_num, content, park, read_count, recommend, thank, latitude, longitude, image1, image2, image3, image4)
VALUES ('중곡문화체육센터', '04904', '서울특별시 광진구 중곡동 168-8',  NULL, 'Gwangjin',  '02-3408-4919', 73000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 37.56221483399973, 127.06188312749731 ,'a1.jpg', 'a2.jpg', 'a3.jpg', 'a4.jpg');

# 장소이름, 우편번호, 주소, 장소지역, 전화번호, 대관료, 시작시간, 마감시간, 이용가능인원, 상세설명, 주차, 조회수, 추천, 위도, 경도
INSERT INTO place(name, zipcode, address1, address2, area, phone, pay, start_time, end_time, avail_num, content, park, read_count, recommend, thank, latitude, longitude, image1, image2, image3, image4)
VALUES('한국외국어대학교 서울캠퍼스 야외시설 농구장', '02450', '서울특별시 동대문구 이문로 107',  NULL, 'Dongdaemun', '02-2173-2114', 80000, '06:00:00', '23:59:59', 10,
'- 대관 중 시설 훼손이 발생한 경우 손해액을 호스트에게 배상해야합니다.\r\n\r\n
- 시간 초과시, 추가 요금은 현장 결제합니다. (1시간마다 발생. 1시간 이하 초과시간은 1시간으로 계산)\r\n\r\n
- 사용자 인원수가 초과될 경우, 초과 결제를 요청합니다.\r\n\r\n 
- 대여 시간 보다 적게 사용 하시더라도 환불되지 않습니다.\r\n',
True, 123, 123, 2, 37.5969, 127.0601,'b1.jpg', 'b2.jpg', 'b3.jpg', 'b4.jpg');

INSERT INTO place(name, zipcode, address1, address2, area, phone, pay, start_time, end_time, avail_num, content, park, read_count, recommend, thank, latitude, longitude, image1, image2, image3, image4)
VALUES('서대문 59스포츠', '03629', '서울특별시 서대문구 통일로 448',  'B2호', 'Seodaemun', '010-9883-9725', 50000, '00:00:00', '23:59:59', 10,
'- 가족과 함께 하는 실내놀이터, 실내농구 초중고방학특강, 대학농구실기 및 임용농구 실기 대비 레슨문의\r\n',
True,  123, 123, 1, 37.5888, 126.9444,'c1.jpg', 'c2.jpg', 'c3.jpg', 'c4.jpg');

INSERT INTO place(name, zipcode, address1, address2, area, phone, pay, start_time, end_time, avail_num, content, park, read_count, recommend, thank, latitude, longitude, image1, image2, image3, image4)
VALUES('강서 커넥트 농구장', '07590', '서울특별시 강서구 공항대로 343', '원풍빌딩 B1층', 'Gangseo', NULL, 80000, '06:00:00', '22:00:00', 10,
'- 건물 뒷 편 지상 주차장 10대 이상 주차 가능 (무료)\r\n\r\n
- 자리 없을 시 주차 불가\r\n\r\n- 정수기 구비\r\n\r\n
- 음료 판매 중\r\n\r\n- 길이 28 m * 넓이 9m\r\n\r\n
- 남자 샤워실 구비\r\n', 
True, 123, 123, 0, 37.5582, 126.8458,'a1.jpg', 'a2.jpg', 'a3.jpg', 'a4.jpg');

INSERT INTO place(name, zipcode, address1, address2, area, phone, pay, start_time, end_time, avail_num, content, park, read_count, recommend, thank, latitude, longitude, image1, image2, image3, image4)
VALUES('압구정 스포츠몬스터 야외 농구장', '06000', '서울특별시 강남구 압구정로 127', '스포츠몬스터 아카데미', 'Gangnam', '02-548-2441', '60000', '09:00:00', '21:00:00', '10',
'- 아카데미 시설은 주차장을 포함하여 전체 구역 학교 시설로 ‘금연’입니다\r\n\r\n
- 쓰레기는 배치된 분리수거통 용도에 맞게 분류하여 배출해주시기 바랍니다.\r\n\r\n
- 아파트 단지 내에 위치하여 민원이 발생할 수 있으니 소음 자제하세요.\r\n\r\n
- 공 조끼 등은 대여해드리지 않습니다.\r\n\r\n 
- 반려견 출입 금지\r\n', True, 549, 123, 0, 37.5252, 127.0227,'b1.jpg', 'b2.jpg', 'b3.jpg', 'b4.jpg');

INSERT INTO place(name, zipcode, address1, address2, area, phone, pay, start_time, end_time, avail_num, content, park, read_count, recommend, thank, latitude, longitude, image1, image2, image3, image4)
VALUES('플레이존스포츠 C구장', '06051', '서울특별시 강남구 도산대로30길 53', '지하2층', 'Gangnam', '010-2956-1710', 70000, '00:00:00', '23:59:59', 6,
'- 최대 8명까지 이용가능\r\n\r\n
- 평일 18시 이후 및 주말 건물주차장 10대 주차 가능 (무료) 평일 18시 이전 지정자리 2대 이용 가능 (무료)\r\n\r\n
- 농구공&팀조끼 대여 가능 (무료)\r\n\r\n 
- 정수기 구비\r\n',
True, 148, 123, 0, 37.5165, 127.031,'c1.jpg', 'c2.jpg', 'c3.jpg', 'c4.jpg');

INSERT INTO place(name, zipcode, address1, address2, area, phone, pay, start_time, end_time, avail_num, content, park, read_count, recommend, thank, latitude, longitude, image1, image2, image3, image4)
VALUES('피스톤S 체대입시 강남', '06062', '서울특별시 강남구 도산대로56길 10', '세목정빌딩 지하 1층-2층', 'Gangnam', '02-511-2775', 65000, '08:30:00', '23:59:59', 10,
'- 지상주차장  5~6대 가능(옆 건물 주차 절대 금지)\r\n\r\n
- 대여 품목 없음 (체육관만 대관)\r\n\r\n
- 매점 음료 및 생수 판매 중\r\n', 
True, 723, 123, 0, 37.5225, 127.0401,'a1.jpg', 'a2.jpg', 'a3.jpg', 'a4.jpg');

INSERT INTO place(name, zipcode, address1, address2, area, phone, pay, start_time, end_time, avail_num, content, park, read_count, recommend, thank, latitude, longitude, image1, image2, image3, image4)
VALUES('KAPA 스포츠 아카데미', '05269', '서울특별시 강동구 동남로75길 29', '세종빌딩 B2', 'Gangdong', '02-441-3825', 50000, '09:00:00', '23:59:59', 6,'
- 최대 10명까지 이용가능 (10명 초과 시 담당자에게 문의바람)\r\n\r\n
- 주차장 3대 가능\r\n\r\n- 농구공&팀조끼 대여 가능\r\n\r\n
- 정수기 (O)\r\n',
True, 323, 123, 0, 37.5542, 127.1545,'b1.jpg', 'b2.jpg', 'b3.jpg', 'b4.jpg');

# 장소이름, 우편번호, 주소, 장소지역, 전화번호, 대관료, 시작시간, 마감시간, 이용가능인원, 상세설명, 주차, 조회수, 추천, 위도, 경도

INSERT INTO place(name, zipcode, address1, address2, area, phone, pay, start_time, end_time, avail_num, content, park, read_count, recommend, thank, latitude, longitude, image1, image2, image3, image4)
VALUES ('광진구민체육센터', '04970', '서울특별시 광진구 광장동 318',  NULL, 'Gwangjin',  '02-2049-4800', 220000, '06:00:00', '23:59:59', 10, 
'-토요일 08:00~ 18:00\r\n\r\n
- 일요일은 휴무입니다.\r\n\r\n
- https://gumin.gwangjin.or.kr/\r\n\r\n
- 02-2049-4800\r\n',
TRUE, 358, 128, 0, 37.546, 127.107,'c1.jpg', 'c2.jpg', 'c3.jpg', 'c4.jpg');

INSERT INTO place( name, zipcode, address1, address2, area, phone, pay, start_time, end_time, avail_num, content, park, read_count, recommend, thank, latitude, longitude, image1, image2, image3, image4)
VALUES ('아차산 배수지 체육공원', '04958', '서울특별시 광진구 천호대로 731', '아차산배수지체육공원', 'Gwangjin', '02-3437-7234', 0, NULL, NULL, NULL, NULL, true, 0 , 0, 0, 37.58387779307712, 126.8783037319873 , 'c1.jpg', 'c2.jpg', 'c3.jpg', 'c4.jpg');

INSERT INTO place(name, zipcode, address1, address2, area, phone, pay, start_time, end_time, avail_num, content, park, read_count, recommend, thank, latitude, longitude, image1, image2, image3, image4)
VALUES ("퍼시픽스포츠그룹강서점", "07587", "서울특별시 강서구 공항대로41길 34", '플러스존', "Gangseo", "1877-4565", 100000, "00:00:00", "23:59:59", 30, 
"★★체육관 A와 B, 풋살장 전체를 포함한 모든 시설 사용이 가능한 통 대관입니다!!\r\n\r\n
★★★촬영의 경우 규모와 촬영 특성에 따라 가격이 변동될 수 있습니다!!\r\n\r\n
★★★아래 Q&A에 문의를 남겨주시면 가격 협의 도와드리겠습니다!!!\r\n\r\n
★주차: 무제한(선착순, 기계식 주차+지상주차, 휴일 공용주차장 무료)\r\n\r\n
★시설 및 기자재: 농구공(20개), 고깔, 냉난방(6대), 공기청정기(6대), 정수기, 자판기, 내부 샤워실, 내부 화장실, 탈의실, 대기실\r\n",
true, 0 , 0, 0, 37.362, 126.8463,'a1.jpg', 'a2.jpg', 'a3.jpg', 'a4.jpg');

INSERT INTO place(name, zipcode, address1, address2, area, phone, pay, start_time, end_time, avail_num, content, park, read_count, recommend, thank, latitude, longitude, image1, image2, image3, image4)
VALUES ("서일대학교 실내농구장", "02192", "서울특별시 중랑구 용마산로 90길 28",  NULL, "Jungnang", "1234-5678", 160000, "10:00:00", "18:00:00", 10, 
"*예약 전 아래 설명들을 필독 해주시기 바랍니다. *(고객 미숙지로 인한 불이익 시 책임지지 않습니다.)\r\n\r\n
0. 공통\r\n\r\n
★학교 사정으로 인해 예약이 취소될 수 있습니다. \r\n
(해당 경우 100% 환불 조치 외에, 별다른 보상이 제공되지 않으니 예약 시에 참고 부탁드립니다.)\r\n\r\n
★예약 후, 체육관 이용 시 학교 관계자의 지시 및 요청에 절대적으로 협조해주셔야 합니다.\r\n\r\n
1. 실시간 ‘생활체육’ 예약 안내\r\n\r\n
★공지\r\n
예약 과정에서 ′호스트 전달 내용′에 이용하려는 스포츠 종목을 꼭 적어주세요.\r\n\r\n
★가능 종목\r\n
: 농구(5:5)\r\n\r\n
★예약 가능 일자\r\n
: 매월 20일(20일이 휴일인 경우 이후 가장 빠른 평일) 18시 익월 한 달 예약 오픈\r\n
(학교 일정에 따라 매월 예약 가능한 일시가 달라지기 때문에 한 달 단위 예약만 가능, 장기대관 불가)\r\n\r\n
★공간 규격 정보\r\n
1. 공간 전체 가로*세로*높이: 35m*18m*9m\r\n
2. 농구코트: 5vs5 (28m*15m)\r\n
★시설 및 기자재\r\n
1. 사용 가능: 농구 골대(2ea, 천장 부착식 높낮이 조절)\r\n
2. 사용 불가능: 기타 스포츠 장비(농구공, 배구공, 배구 지주, 배구 네트, 조끼 등등) 대여 불가\r\n
3. 하절기(7, 8월) 냉방 유료(필수) 제공 (20,000원/2시간)\r\n
4. 동절기(12, 1월) 난방 유료(필수) 제공 (20,000원/2시간)\r\n\r\n
★이용시간\r\n
: 정시 입장 정시 퇴장\r\n
(전 시간 이용 고객이 없다면, 시작시간 15분 전부터 입장가능)\r\n\r\n
★문의\r\n
: 사전&사후 문의는 페이지 상단 ‘문의’ 기능을 통해 확인 가능\r\n
현장에서는 스쿨매니저(현장 관리자)에게 문의 (시설 개방 및 요청사항 응대)\r\n\r\n
★주차 및 체육관 위치\r\n\r\n
1. 정문에서 바리게이트 통과 후 우회전하면 흥학관 건물 주차장이 바로 보이고, 주차장 주차 후 바로 체육관으로 이어지는 문을 통해 체육관 로비로 입장 가능\r\n
2. 흥학관 1층에 체육관이 위치해 있음\r\n
3. 주차비는 무료\r\n
4. 도보로 방문 시, 정문에서 오른쪽으로 가면 흥학관 건물이 나옴\r\n",
    True, 0, 0, 0, 37.4987, 127.0218,'b1.jpg', 'b2.jpg', 'b3.jpg', 'b4.jpg');
    
INSERT INTO place(name, zipcode, address1, address2, area, phone, pay, start_time, end_time, avail_num, content, park, read_count, recommend, thank, latitude, longitude, image1, image2, image3, image4)
VALUES("상아스포츠아카데미", "01428", "서울특별시 도봉구 노해로 273",  NULL, "Dobong", "0507-1492-1149", 40000, "09:00:00", "21:00:00", 8,
"★★★새벽시간대 대관을 원하시면 아래 문의하기에 내용을 남겨주세요!!!★★★\r\n\r\n
★체육관 사이즈: 14m*21m*10m (가로*세로*높이)\r\n\r\n
★가능 종목: 농구(4:4), 배구(6인제 코트), 기타 실내스포츠\r\n\r\n
★접근성: 쌍문역, 창동고등학교, 정의여중고교입구사거리 근처\r\n\r\n 
★주차: 8대(무료)까지 가능\r\n\r\n
★시설 및 기자재: 대기실, 탈의실, 실내 화장실, 배구&농구 시설 완비(배구 지주, 네트, 안테나, 공 10개 이상, 농구공, 디맨, 전자점수판)\r\n\r\n
★코로나 방역수칙 준수\r\n",
True, 0, 0, 0, 37.5868, 1270979,'c1.jpg', 'c2.jpg', 'c3.jpg', 'c4.jpg');

INSERT INTO place(name, zipcode, address1, address2, area, phone, pay, start_time, end_time, avail_num, content, park, read_count, recommend, thank, latitude, longitude, image1, image2, image3, image4)
VALUES ("현대스포츠실내농구장", "01434", "서울특별시 도봉구 시루봉로 58",  NULL, "Dobong", "1234-5678", 50000, "10:00:00", "18:00:00", 10, 
"★체육관 사이즈: 33m*12m*9m (가로*세로*높이)\r\n\r\n
★가능 종목: 농구, 배구, 배드민턴 등 각종 실내체육\r\n\r\n
★접근성: 선덕고 정문 맞은편에 바로 위치 실내버스 정류장 바로앞.\r\n\r\n
★주차: 상가 주차장 이용 (방문증 작성시 10대이상 가능)\r\n\r\n
★시설 및 기자재: 남녀 화장실및 샤워실, 탈의실, 정수기, 팀조끼, 전광판, 전자호각, 전자볼펌프, 농구공 다량보유.\r\n\r\n
★특이사항:\r\n 
1. 성인 농구 정규코트 규격 대비 70%코트입니다.\r\n
2. 풀코트 외 하프코트 추가 제공\r\n
3. 초,중등부 5:5 / 성인4:4 적당하며 5:5도 가능합니다. (골대 높낮이 조절가능)\r\n
4. 실내운동화 착용 필수입니다.\r\n
5. 행사 및 촬영 대관은 추가비용이 발생할 수 있습니다.\r\n\r\n
★코로나 방역수칙 준수\r\n", 
True, 0, 0, 0, 37.656, 127.0293,'a1.jpg', 'a2.jpg', 'a3.jpg', 'a4.jpg');

INSERT INTO place (name, zipcode, address1, address2, area, phone, pay, start_time, end_time, avail_num, content, park, read_count, recommend, thank, latitude, longitude, image1, image2, image3, image4)
VALUES ("서울휘트니스목동점", "08023", "서울특별시 양천구 신월로 389", '남부빌딩', "Yangcheon", "1234-5678", 50000, "10:00:00", "22:00:00", 10,
"★체육관 사이즈: 29m*10m*3m (가로*세로*높이)\r\n\r\n
★가능 종목: 높은 층고를 필요로 하는 성인 실내 스포츠 불가, 유아스포츠 및 층고가 낮은 스포츠만 가능\r\n\r\n
★주차: 5대\r\n\r\n
★시설 및 기자재: 승강기, 와이파이, 기본 스포츠 용품\r\n\r\n
★특이사항: 건물 내 풋살장이 같이 있습니다. (예약 희망 시 서울 휘트니스 풋살장 검색 후 같이 예약)\r\n\r\n
★코로나 방역수칙 준수\r\n", 
True, 0, 0, 0, 37.5226, 126.8644,'b1.jpg', 'b2.jpg', 'b3.jpg', 'b4.jpg');

INSERT INTO place (name, zipcode, address1, address2, area, phone, pay, start_time, end_time, avail_num, content, park, read_count, recommend, thank, latitude, longitude, image1, image2, image3, image4)
VALUES('서울여자대학교체육관', '01797', '서울특별시 노원구 화랑로 621',  NULL, 'Nowon', '02-970-5114', 165000, NULL, NULL, NULL, '실내농구장\r\n자가용 이용시, 할인 주차권 구매 가능 (5시간권 3,000원)\r\n대관은 최소 4시간 해야 함', True, 0, 0, 0, 37.62564534934443, 127.0889698703506 ,'c1.jpg', 'c2.jpg', 'c3.jpg', 'c4.jpg');

INSERT INTO place (name, zipcode, address1, address2, area, phone, pay, start_time, end_time, avail_num, content, park, read_count, recommend, thank, latitude, longitude, image1, image2, image3, image4)
VALUES('맥스체대입시노원교육원', '01886', '서울특별시 노원구 광운로 86 B1', '맥스체대입시', 'Nowon', '0507-1427-8669', 50000, NULL, NULL, 30, '실내농구장\r\n250평 규모의 대체육관\r\n체육관 사이즈 : 31m*20*4m\r\n촬영 가능\r\n24시간 운영', True, 0, 0, 0, 37.62564534934443, 127.0889698703506 ,'a1.jpg', 'a2.jpg', 'a3.jpg', 'a4.jpg');

INSERT INTO place (name, zipcode, address1, address2, area, phone, pay, start_time, end_time, avail_num, content, park, read_count, recommend, thank, latitude, longitude, image1, image2, image3, image4)
VALUES('인아우트', '04049', '서울특별시 마포구 와우산로13길 6', '지하2층', 'Mapo', '0507-1331-7213', 100000, null, null, null, '실내농구장\r\n무선 인터넷\r\n남/녀 화장실 구분\r\n샤워시설 완비\r\n관람 공간 보유\r\n24시간 운영',False , 0, 0, 0, 37.58387779307712, 126.8783037319873 ,'b1.jpg', 'b2.jpg', 'b3.jpg', 'b4.jpg');

INSERT INTO place (name, zipcode, address1, address2, area, phone, pay, start_time, end_time, avail_num, content, park, read_count, recommend, thank, latitude, longitude, image1, image2, image3, image4)
VALUES('서울휘트니스 목동본점', '08023', '서울특별시 양천구 신월로 389', '남부빌딩7층 B3', 'Yangcheon', '0507-1471-2577', 50000, null, null, 30, '실내농구장\r\n24시간 운영\r\n주차 5대 가능\r\n무료 와이파이/ 승강기\r\n남/녀 화장실 구분', True, 0, 0, 0, 37.58387779307712, 126.8783037319873 ,'c1.jpg', 'c2.jpg', 'c3.jpg', 'c4.jpg');

INSERT INTO place (name, zipcode, address1, address2, area, phone, pay, start_time, end_time, avail_num, content, park, read_count, recommend, thank, latitude, longitude, image1, image2, image3, image4)
VALUES('삼성리틀썬더스 목동점', '08019', '서울특별시 양천구 중앙로 312',  NULL, 'Yangcheon', '010-4483-2213', 40000, '10:00', '22:00', 20, '실내농구장\r\n주차 2대 가능\r\n탄성마루 보유\r\n층고 3.7m로 일반 골대보다 낮고 장거리 슛 연습이 어려워서 슛에 제한이 있다.', True, 0, 0, 0, 37.52765809407295, 126.86408967105132 ,'a1.jpg', 'a2.jpg', 'a3.jpg', 'a4.jpg');

INSERT INTO place (name, zipcode, address1, address2, area, phone, pay, start_time, end_time, avail_num, content, park, read_count, recommend, thank, latitude, longitude, image1, image2, image3, image4)
VALUES ('관악구민종합체육센터', '08799', '서울 관악구 낙성대로3길 37', '관악구민종합체육센터', 'Gwanak', '02-870-7600', NULL, '06:00', '22:00', 2, '관악구민 종합 체육센터입니다. 스쿼시, 수영장 등의 편의시설이 있습니다. 매달 1번째 일요일 정기 휴무, 공휴일 휴무입니다.',
  TRUE,  0,  0, 0, 37.472775,  126.959405,'c1.jpg', 'c2.jpg', 'c3.jpg', 'c4.jpg');
COMMIT;

show tables;
SELECT * FROM place;



-- use project;
-- drop DATABASE project;

-- CREATE DATABASE IF NOT EXISTS project;
-- use project;
-- no, place_no, user_id, user_nick, reply_content, reg_date
# 장소문의 댓글
DROP TABLE IF EXISTS placeReply;
CREATE TABLE IF NOT EXISTS placeReply(
	no INTEGER AUTO_INCREMENT PRIMARY KEY,
	place_no INTEGER  NULL,
	user_id VARCHAR(20)  NULL,
    user_nick VARCHAR(20)  NULL,
	reply_content VARCHAR(1000)  NULL,
	reg_date TIMESTAMP  NULL	
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO placeReply(place_no, user_id, user_nick, reply_content, reg_date)VALUES(1, 'dunk01', '농구바라기', '문의드립니다', '2022-12-27 19:44:32');
INSERT INTO placeReply(place_no, user_id, user_nick, reply_content, reg_date)VALUES(2, 'dunk01', '농구바라기', '문의드립니다', '2022-12-27 19:44:32');
INSERT INTO placeReply(place_no, user_id, user_nick, reply_content, reg_date)VALUES(3, 'dunk01', '농구바라기', '문의드립니다', '2022-12-27 19:44:32');
INSERT INTO placeReply(place_no, user_id, user_nick, reply_content, reg_date)VALUES(4, 'dunk01', '농구바라기',  '문의드립니다', '2022-12-27 19:44:32');
INSERT INTO placeReply(place_no, user_id, user_nick, reply_content, reg_date)VALUES(5, 'dunk01', '농구바라기', '문의드립니다', '2022-12-27 19:44:32');
INSERT INTO placeReply(place_no, user_id, user_nick, reply_content, reg_date)VALUES(6, 'dunk01', '농구바라기', '문의드립니다', '2022-12-27 19:44:32');
INSERT INTO placeReply(place_no, user_id, user_nick, reply_content, reg_date)VALUES(7, 'dunk01', '농구바라기', '문의드립니다', '2022-12-27 19:44:32');
INSERT INTO placeReply(place_no, user_id, user_nick, reply_content, reg_date)VALUES(8, 'dunk01', '농구바라기', '문의드립니다', '2022-12-27 19:44:32');
INSERT INTO placeReply(place_no, user_id, user_nick, reply_content, reg_date)VALUES(9, 'dunk01', '농구바라기', '문의드립니다', '2022-12-27 19:44:32');
INSERT INTO placeReply(place_no, user_id, user_nick, reply_content, reg_date)VALUES(10, 'dunk01', '농구바라기', '문의드립니다', '2022-12-27 19:44:32');
INSERT INTO placeReply(place_no, user_id, user_nick, reply_content, reg_date)VALUES(11, 'dunk01', '농구바라기', '문의드립니다', '2022-12-27 19:44:32');
INSERT INTO placeReply(place_no, user_id, user_nick, reply_content, reg_date)VALUES(12, 'dunk01', '농구바라기', '문의드립니다', '2022-12-27 19:44:32');
INSERT INTO placeReply(place_no, user_id, user_nick, reply_content, reg_date)VALUES(13, 'dunk01', '농구바라기', '문의드립니다', '2022-12-27 19:44:32');
INSERT INTO placeReply(place_no, user_id, user_nick, reply_content, reg_date)VALUES(14, 'dunk01', '농구바라기', '문의드립니다', '2022-12-27 19:44:32');
INSERT INTO placeReply(place_no, user_id, user_nick, reply_content, reg_date)VALUES(15, 'dunk01', '농구바라기', '문의드립니다', '2022-12-27 19:44:32');
INSERT INTO placeReply(place_no, user_id, user_nick, reply_content, reg_date)VALUES(16, 'dunk01', '농구바라기', '문의드립니다', '2022-12-27 19:44:32');
INSERT INTO placeReply(place_no, user_id, user_nick, reply_content, reg_date)VALUES(17, 'dunk01', '농구바라기', '문의드립니다', '2022-12-27 19:44:32');
INSERT INTO placeReply(place_no, user_id, user_nick, reply_content, reg_date)VALUES(18, 'dunk01', '농구바라기', '문의드립니다', '2022-12-27 19:44:32');
INSERT INTO placeReply(place_no, user_id, user_nick, reply_content, reg_date)VALUES(19, 'dunk01', '농구바라기', '문의드립니다', '2022-12-27 19:44:32');
INSERT INTO placeReply(place_no, user_id, user_nick, reply_content, reg_date)VALUES(20, 'dunk01', '농구바라기', '문의드립니다', '2022-12-27 19:44:32');
INSERT INTO placeReply(place_no, user_id, user_nick, reply_content, reg_date)VALUES(21, 'dunk01', '농구바라기', '문의드립니다', '2022-12-27 19:44:32');
INSERT INTO placeReply(place_no, user_id, user_nick, reply_content, reg_date)VALUES(22, 'dunk01', '농구바라기', '문의드립니다', '2022-12-27 19:44:32');
INSERT INTO placeReply(place_no, user_id, user_nick, reply_content, reg_date)VALUES(23, 'dunk01', '농구바라기', '문의드립니다', '2022-12-27 19:44:32');
INSERT INTO placeReply(place_no, user_id, user_nick, reply_content, reg_date)VALUES(24, 'dunk01', '농구바라기', '문의드립니다', '2022-12-27 19:44:32');



commit;
show tables;
SELECT * FROM placeReply;
SELECT * FROM place;