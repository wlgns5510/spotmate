-- 롤백
rollback;

-- 커밋
commit;

-- -- SYSTIMESTAMP 출력형식 변경
ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY-MM-DD HH24:MI:SS';

------------------ 회원 --------------------
DROP INDEX PK_users;

-- 테이블 삭제
DROP TABLE users 
   CASCADE CONSTRAINTS;
    
-- 시퀀스 삭제
drop sequence seq_users_no;

-- 테이블 생성 : 회원
CREATE TABLE users (
   no NUMBER NOT NULL, /* 회원번호 */
   id VARCHAR2(100), /* 아이디 */
   pw VARCHAR2(100), /* 패스워드 */
   name VARCHAR2(100), /* 이름 */
   email VARCHAR2(100), /* 이메일 */
   phone VARCHAR2(100), /* 휴대폰 */
   address VARCHAR2(100), /* 주소 */
   gender VARCHAR2(100), /* 성별 */
   birth VARCHAR2(100), /* 생년월일 */
   licenseNo VARCHAR2(100), /* 면허등록번호 */
   licenseType VARCHAR2(100) /* 면허종류 */
);

-- 시퀀스 생성
create sequence seq_users_no
increment by 1 
start with 1
nocache;

-- comment
COMMENT ON TABLE users IS '회원';

COMMENT ON COLUMN users.no IS '회원번호';

COMMENT ON COLUMN users.id IS '아이디';

COMMENT ON COLUMN users.pw IS '패스워드';

COMMENT ON COLUMN users.name IS '이름';

COMMENT ON COLUMN users.email IS '이메일';

COMMENT ON COLUMN users.phone IS '휴대폰';

COMMENT ON COLUMN users.address IS '주소';

COMMENT ON COLUMN users.gender IS '성별';

COMMENT ON COLUMN users.birth IS '생년월일';

COMMENT ON COLUMN users.licenseNo IS '면허등록번호';

COMMENT ON COLUMN users.licenseType IS '면허종류';


CREATE UNIQUE INDEX PK_users
   ON users (
      no ASC
   );

ALTER TABLE users
   ADD
      CONSTRAINT PK_users
      PRIMARY KEY (
         no
      );
        
-- insert 생성
insert into users
values(seq_users_no.nextval, 
        'aa11', 
        'aaaa1111',
        '이정화',
        'aa11@naver.com',
        '010-1111-1111',
        '서울특별시 관악구 신림동',
        'female',
        '1992-07-16',
        '66두 5793',
        '2종'
);

insert into users
values(seq_users_no.nextval, 
        'bb22', 
        'bbbb2222',
        '양지훈',
        'bb22@naver.com',
        '010-2222-2222',
        '서울특별시 동작구 사당동',
        'male',
        '1996-11-28',
        '77라 1328',
        '1종'
);

insert into users
values(seq_users_no.nextval, 
        'cc33', 
        'cccc3333',
        '유지은',
        'cc33@naver.com',
        '010-3333-3333',
        '서울특별시 관악구 봉천동',
        'female',
        '1993-07-11',
        '',
        ''
);

insert into users
values(seq_users_no.nextval, 
        'dd44', 
        'dddd4444',
        '이준규',
        'dd44@naver.com',
        '010-4444-4444',
        '서울특별시 서초구 방배동',
        'male',
        '1996-04-14',
        '',
        ''
);

insert into users
values(seq_users_no.nextval, 
        'ee55', 
        'eeee5555',
        '김려경',
        'ee55@naver.com',
        '010-5555-5555',
        '서울특별시 관악구 봉천동',
        'female',
        '1992-05-15',
        '',
        ''
);

insert into users
values(seq_users_no.nextval, 
        'ff66', 
        'ffff6666',
        '조윤주',
        'ff66@naver.com',
        '010-6666-6666',
        '서울특별시 관악구 신림동',
        'female',
        '1994-06-16',
        '',
        ''
);

-- select
SELECT
    *
FROM
    users;
-- 
SELECT
    no,
    name
FROM
    users
WHERE
        id = 'aa11'
    AND pw = 'aaaa1111';

-- delete
DELETE FROM users
WHERE no = 9;

commit;
    
------------------ 카테고리 --------------------
DROP INDEX PK_category;

-- 테이블 삭제
DROP TABLE category 
   CASCADE CONSTRAINTS;

-- 시퀀스 삭제
drop sequence seq_category_no;

-- 테이블 생성 : 카테고리
CREATE TABLE category (
   no NUMBER NOT NULL, /* 카테고리번호 */
   name VARCHAR2(100) /* 카테고리명(주유,음료,음식) */
);

-- 시퀀스 생성
create sequence seq_category_no
increment by 1 
start with 1
nocache;


-- comment 
COMMENT ON TABLE category IS '카테고리';

COMMENT ON COLUMN category.no IS '카테고리번호';

COMMENT ON COLUMN category.name IS '카테고리명(주유,음료,음식)';

CREATE UNIQUE INDEX PK_category
   ON category (
      no ASC
   );

ALTER TABLE category
   ADD
      CONSTRAINT PK_category
      PRIMARY KEY (
         no
      );

-- insert 생성
insert into category
values(seq_category_no.nextval, 
        '주유'
);    

insert into category
values(seq_category_no.nextval, 
        '음료'
);   

insert into category
values(seq_category_no.nextval, 
        '음식'
);    

-- 테이블 확인
SELECT
    *
FROM
    category;
    
-- 테이블 
select  no
        ,name
from category;

------------------- 브랜드 ----------------------
DROP INDEX PK_brand;

-- 테이블 삭제 : 브랜드
DROP TABLE brand 
	CASCADE CONSTRAINTS;
    
-- 시퀀스 삭제
drop sequence seq_brand_no;

-- 테이블 생성
CREATE TABLE brand (
	no NUMBER NOT NULL, /* 브랜드번호 */
	cateNo NUMBER, /* 카테고리번호 */
	name VARCHAR2(100) /* 브랜드명 */
);

-- 시퀀스 생성
create sequence seq_brand_no
increment by 1 
start with 1
nocache;

-- comment
COMMENT ON TABLE brand IS '브랜드';

COMMENT ON COLUMN brand.no IS '브랜드번호';

COMMENT ON COLUMN brand.cateNo IS '카테고리번호';

COMMENT ON COLUMN brand.name IS '브랜드명';

CREATE UNIQUE INDEX PK_brand
   ON brand (
      no ASC
   );

ALTER TABLE brand
   ADD
      CONSTRAINT PK_brand
      PRIMARY KEY (
         no
      );

ALTER TABLE brand
   ADD
      CONSTRAINT FK_category_TO_brand
      FOREIGN KEY (
         cateNo
      )
      REFERENCES category (
         no
      );

-- insert 생성
insert into brand
values(seq_brand_no.nextval, 
        1, 'S-OIL'
);       

insert into brand
values(seq_brand_no.nextval, 
        1, 'GS-칼텍스'
);  

-- select
select *
from brand;

-- select
select  no
        ,cateNo
        ,name
from brand;

------------------ 쿠폰 테이블 -------------------------
DROP INDEX PK_coupon;

-- 테이블 삭제 : 쿠폰
DROP TABLE coupon 
	CASCADE CONSTRAINTS;
    
-- 시퀀스 삭제
drop sequence seq_coupon_no;

-- 테이블 생성 : 쿠폰
CREATE TABLE coupon (
   no NUMBER NOT NULL, /* 쿠폰번호 */
   brandNo NUMBER, /* 브랜드번호 */
   point NUMBER, /* 포인트 */
   regDate DATE, /* 등록일 */
   imgSrc VARCHAR2(1000) /* 이미지경로 */
);
-- 시퀀스 생성
create sequence seq_coupon_no
increment by 1 
start with 1
nocache;

-- comment
COMMENT ON TABLE coupon IS '쿠폰';

COMMENT ON COLUMN coupon.no IS '쿠폰번호';

COMMENT ON COLUMN coupon.brandNo IS '브랜드번호';

COMMENT ON COLUMN coupon.point IS '포인트';

COMMENT ON COLUMN coupon.regDate IS '등록일';

COMMENT ON COLUMN coupon.imgSrc IS '이미지경로';

CREATE UNIQUE INDEX PK_coupon
   ON coupon (
      no ASC
   );

ALTER TABLE coupon
   ADD
      CONSTRAINT PK_coupon
      PRIMARY KEY (
         no
      );

ALTER TABLE coupon
   ADD
      CONSTRAINT FK_brand_TO_coupon
      FOREIGN KEY (
         brandNo
      )
      REFERENCES brand (
         no
      );

-- insert 생성
-- S-OIL
insert into coupon
values(seq_coupon_no.nextval, 
        1, 3000, sysdate, ''
);

insert into coupon
values(seq_coupon_no.nextval, 
        1, 5000, sysdate, ''
);

insert into coupon
values(seq_coupon_no.nextval, 
        1, 10000, sysdate, ''
);

insert into coupon
values(seq_coupon_no.nextval, 
        1, 30000, sysdate, ''
);

insert into coupon
values(seq_coupon_no.nextval, 
        1, 50000, sysdate, ''
);

insert into coupon
values(seq_coupon_no.nextval, 
        1, 100000, sysdate, ''
);


--GS-칼텍스
insert into coupon
values(seq_coupon_no.nextval, 
        2, 3000, sysdate, ''
);

insert into coupon
values(seq_coupon_no.nextval, 
        2, 5000, sysdate, ''
);

insert into coupon
values(seq_coupon_no.nextval, 
        2, 10000, sysdate, ''
);

insert into coupon
values(seq_coupon_no.nextval, 
        2, 30000, sysdate, ''
);

insert into coupon
values(seq_coupon_no.nextval, 
        2, 50000, sysdate, ''
);

insert into coupon
values(seq_coupon_no.nextval, 
        2, 100000, sysdate, ''
);

-- select문
select *
from coupon;


------------------ 쿠폰구매내역 테이블 -------------------------
DROP INDEX PK_couponUsage;

-- 테이블 삭제
DROP TABLE couponUsage 
	CASCADE CONSTRAINTS;
    
-- 시퀀스 삭제
drop sequence seq_couponUsage_no;


-- 테이블 생성
CREATE TABLE couponUsage (
   no NUMBER NOT NULL, /* 쿠폰구매내역번호 */
   userNo NUMBER, /* 회원번호 */
   couponNo NUMBER, /* 쿠폰번호 */
   point NUMBER, /* 사용포인트 */
   buyDate DATE, /* 구매날짜 */
   useDate DATE, /* 사용날짜 */
   usePlace VARCHAR2(1000), /* 사용장소 */
   status VARCHAR2(1000) /* 상태(미사용, 사용완료) */
);

-- 시퀀스 생성
create sequence seq_couponUsage_no
increment by 1 
start with 1
nocache;

-- comment
COMMENT ON TABLE couponUsage IS '쿠폰구매내역';

COMMENT ON COLUMN couponUsage.no IS '쿠폰구매내역번호';

COMMENT ON COLUMN couponUsage.userNo IS '회원번호';

COMMENT ON COLUMN couponUsage.couponNo IS '쿠폰번호';

COMMENT ON COLUMN couponUsage.point IS '사용포인트';

COMMENT ON COLUMN couponUsage.buyDate IS '구매날짜';

COMMENT ON COLUMN couponUsage.useDate IS '사용날짜';

COMMENT ON COLUMN couponUsage.usePlace IS '사용장소';

COMMENT ON COLUMN couponUsage.status IS '상태(미사용, 사용완료)';

CREATE UNIQUE INDEX PK_couponUsage
   ON couponUsage (
      no ASC
   );

ALTER TABLE couponUsage
   ADD
      CONSTRAINT PK_couponUsage
      PRIMARY KEY (
         no
      );

ALTER TABLE couponUsage
   ADD
      CONSTRAINT FK_users_TO_couponUsage
      FOREIGN KEY (
         userNo
      )
      REFERENCES users (
         no
      );

ALTER TABLE couponUsage
   ADD
      CONSTRAINT FK_coupon_TO_couponUsage
      FOREIGN KEY (
         couponNo
      )
      REFERENCES coupon (
         no
      );

-- insert 생성
insert into couponUsage
values(seq_couponUsage_no.nextval, 
       1, 1, '3000', sysdate, '2022-08-14', 'S-OIL 관악시몬주유소 서울특별시 관악구 남부순환로 1753', '사용완료'
);

insert into couponUsage
values(seq_couponUsage_no.nextval, 
       2, 2, '5000', sysdate, '2022-08-14', 'S-OIL 명륜주유소 원주시 명륜동 1753', '미사용'
);

insert into couponUsage
values(seq_couponUsage_no.nextval, 
       2, 8, '5000', sysdate, '2022-08-14', 'GS-칼텍스 여주주유소 여주시 오학동 1753', '사용완료'
);

insert into couponUsage
values(seq_couponUsage_no.nextval, 
       6, 12, '100000', sysdate, '2022-08-14', 'GS-칼텍스 구미주유소 구미시 ', '미사용'
);

-- select문
select *
from couponUsage;


------------------ 상세조건 -------------------------
DROP INDEX PK_detailOpt;

-- 테이블 삭제
DROP TABLE detailOpt 
   CASCADE CONSTRAINTS;
    
-- 시퀀스 삭제
drop sequence seq_detailOpt_no;

-- 테이블 생성
CREATE TABLE detailOpt (
	no NUMBER NOT NULL, /* 상세조건번호 */
	name VARCHAR2(100) /* 조건명 */
);

-- 시퀀스 생성
create sequence seq_detailOpt_no
increment by 1 
start with 1
nocache;

-- comment
COMMENT ON TABLE detailOpt IS '상세조건';

COMMENT ON COLUMN detailOpt.no IS '상세조건번호';

COMMENT ON COLUMN detailOpt.name IS '조건명';

CREATE UNIQUE INDEX PK_detailOpt
   ON detailOpt (
      no ASC
   );

ALTER TABLE detailOpt
   ADD
      CONSTRAINT PK_detailOpt
      PRIMARY KEY (
         no
      );

-- insert 생성
insert into detailOpt
values(1, '비흡연자');

insert into detailOpt
values(2, '여성드라이버');


insert into detailOpt
values(3, '반려동물');


insert into detailOpt
values(4, '충전기 사용 가능');


insert into detailOpt
values(5, '트렁크 사용 가능');

-- select
select *
from detailOpt;
        
---------------------- 차량 ------------------------
DROP INDEX PK_car;

-- 테이블 삭제
DROP TABLE car 
	CASCADE CONSTRAINTS;
    
-- 시퀀스 삭제
drop sequence seq_car_no;

-- 차량 테이블 생성
CREATE TABLE car (
   no NUMBER NOT NULL, /* 차량번호 */
   userNo NUMBER, /* 회원번호 */
   carName VARCHAR2(100), /* 차모델명 */
   carPicture VARCHAR2(100), /* 차사진 */
   carNo VARCHAR2(100), /* 차번호 */
   carColor VARCHAR2(100), /* 차량색상 */
   people NUMBER, /* 탑승가능수 */
   introduce VARCHAR2(1000) /* 소개글 */
);

-- 시퀀스 생성
create sequence seq_car_no
increment by 1 
start with 1
nocache;

-- comment
COMMENT ON TABLE car IS '차량';

COMMENT ON COLUMN car.no IS '차량번호';

COMMENT ON COLUMN car.userNo IS '회원번호';

COMMENT ON COLUMN car.carName IS '차모델명';

COMMENT ON COLUMN car.carPicture IS '차사진';

COMMENT ON COLUMN car.carNo IS '차번호';

COMMENT ON COLUMN car.carColor IS '차량색상';

COMMENT ON COLUMN car.people IS '탑승가능수';

COMMENT ON COLUMN car.introduce IS '소개글';

CREATE UNIQUE INDEX PK_car
   ON car (
      no ASC
   );

ALTER TABLE car
   ADD
      CONSTRAINT PK_car
      PRIMARY KEY (
         no
      );

ALTER TABLE car
   ADD
      CONSTRAINT FK_users_TO_car
      FOREIGN KEY (
         userNo
      )
      REFERENCES users (
         no
      );

-- insert 생성
insert into car
values(seq_car_no.nextval,
        1, 
        'Benz-glc220d',
        'image1',
        '66두 5793',
        'white',
        3,
        '안녕하세요. 저는 조용하고 안전하게 가는 걸 선호합니다. 약속 장소에는 출발 5분 전에 나와주시면
        감사하겠습니다. 차량 이용 후 내리실 때에는 본인이 소지한 물품 및 쓰레기는 꼭 챙겨 나가 주시길 바랍니다 :)'
        );        

insert into car
values(seq_car_no.nextval,
        2, 
        'Benz-eclass',
        'image2',
        '77라 1328',
        'black',
        2,
        '안녕하세요. 제 차에는 항상 반려동물(강아지)이 타고 있습니다. 그래서 이 부분 괜찮으신 분께서만 이용해 주셨으면 좋겠습니다. 
        그리고 어떤 사정이 있더라도 약속 시간 이후 5분까지만 기다렸다 출발할 것이니 꼭 시간 준수 부탁드립니다. '
        );

insert into car
values(seq_car_no.nextval,
        3, 
        'Benz-eclass',
        'image3',
        '99라 1328',
        'blue',
        2,
        '안녕하세요. 제 차에는 항상 반려동물(강아지)이 타고 있습니다. 그래서 이 부분 괜찮으신 분께서만 이용해 주셨으면 좋겠습니다. 
        그리고 어떤 사정이 있더라도 약속 시간 이후 5분까지만 기다렸다 출발할 것이니 꼭 시간 준수 부탁드립니다. '
        );

-- select
select *
from car;
        
---------------------- 상세 조건 차량 ------------------------
DROP INDEX PK_carDetail;

-- 테이블 삭제 : 상세조건차량
DROP TABLE carDetail 
	CASCADE CONSTRAINTS;
    
-- 시퀀스 삭제
drop sequence seq_carDetail_no;

-- 테이블 생성 : 상세조건차량
CREATE TABLE carDetail (
   no NUMBER NOT NULL, /* 상세조건차량번호 */
   carNo NUMBER, /* 차량번호 */
   detailNo NUMBER /* 상세조건번호 */
);

-- 시퀀스 생성
create sequence seq_carDetail_no
increment by 1 
start with 1
nocache;

-- comment
COMMENT ON TABLE carDetail IS '상세조건차량';

COMMENT ON COLUMN carDetail.no IS '상세조건차량번호';

COMMENT ON COLUMN carDetail.carNo IS '차량번호';

COMMENT ON COLUMN carDetail.detailNo IS '상세조건번호';

CREATE UNIQUE INDEX PK_carDetail
   ON carDetail (
      no ASC
   );

ALTER TABLE carDetail
   ADD
      CONSTRAINT PK_carDetail
      PRIMARY KEY (
         no
      );

ALTER TABLE carDetail
   ADD
      CONSTRAINT FK_detailOpt_TO_carDetail
      FOREIGN KEY (
         detailNo
      )
      REFERENCES detailOpt (
         no
      );

ALTER TABLE carDetail
   ADD
      CONSTRAINT FK_car_TO_carDetail
      FOREIGN KEY (
         carNo
      )
      REFERENCES car (
         no
      );
        
-- insert 생성
insert into carDetail
values(seq_carDetail_no.nextval, 1, 1);

insert into carDetail
values(seq_carDetail_no.nextval, 1, 2);

insert into carDetail
values(seq_carDetail_no.nextval, 1, 4);

insert into carDetail
values(seq_carDetail_no.nextval, 2, 1);

insert into carDetail
values(seq_carDetail_no.nextval, 2, 3);

insert into carDetail
values(seq_carDetail_no.nextval, 2, 4);

insert into carDetail
values(seq_carDetail_no.nextval, 2, 5);


-- select
 select *
 from carDetail;

---------------------- 스팟 메이트 ------------------------
DROP INDEX PK_spotmate;

-- 테이블 삭제 : spotmate
DROP TABLE spotmate 
	CASCADE CONSTRAINTS;

-- 시퀀스 삭제
drop sequence seq_spotmate_no;

-- 테이블 생성 : spotmate
CREATE TABLE spotmate (
	no NUMBER NOT NULL, /* 메이트번호 */
	carNo NUMBER, /* 차량번호 */
	startDate DATE, /* 출발날짜 */
	endDate DATE, /* 도착날짜 */
	people NUMBER, /* 인원수 */
	type VARCHAR2(100), /* 유형 */
	point NUMBER, /* 포인트 */
	duration VARCHAR2(1000), /* 총 소요시간 */
	distance VARCHAR2(1000), /* 총 거리 */
	comments VARCHAR2(1000) /* 코멘트 */
);

-- 시퀀스 생성
create sequence seq_spotmate_no
increment by 1 
start with 1
nocache;

-- comment
COMMENT ON TABLE spotmate IS '스팟메이트';

COMMENT ON COLUMN spotmate.no IS '메이트번호';

COMMENT ON COLUMN spotmate.carNo IS '차량번호';

COMMENT ON COLUMN spotmate.startDate IS '출발날짜';

COMMENT ON COLUMN spotmate.endDate IS '도착날짜';

COMMENT ON COLUMN spotmate.people IS '인원수';

COMMENT ON COLUMN spotmate.type IS '유형';

COMMENT ON COLUMN spotmate.point IS '포인트';

COMMENT ON COLUMN spotmate.duration IS '총 소요시간';

COMMENT ON COLUMN spotmate.distance IS '총 거리';

COMMENT ON COLUMN spotmate.comments IS '코멘트';

CREATE UNIQUE INDEX PK_spotmate
	ON spotmate (
		no ASC
	);

ALTER TABLE spotmate
	ADD
		CONSTRAINT PK_spotmate
		PRIMARY KEY (
			no
		);

ALTER TABLE spotmate
	ADD
		CONSTRAINT FK_car_TO_spotmate
		FOREIGN KEY (
			carNo
		)
		REFERENCES car (
			no
		);

-- nextval값을 받아와서 변수에 저장 편의상 no로 칭함
-- select seq_spotmate_no.nextval from dual;

-- insert 
INSERT INTO spotmate VALUES (
    seq_spotmate_no.nextval,
    1,
    SYSDATE,
    SYSDATE,
    1,
    '카풀',
    3000,
    '28분',
    '12.2km',
    '카풀 합니다'
);

INSERT INTO spotmate VALUES (
    seq_spotmate_no.nextval,
    2,
    SYSDATE,
    SYSDATE,
    2,
    '히치하이크',
    5000,
    '40분',
    '20.45km',
    '히치하이크 합니다'
);

INSERT INTO spotmate VALUES (
    seq_spotmate_no.nextval,
    3,
    SYSDATE,
    SYSDATE,
    5,
    '메이트',
    50000,
    null,
    null,
    '강릉 메이트구합니다'
);


-- select
select *
from spotmate;

---------------------- 예약 ------------------------
DROP INDEX PK_reservation;

/* 예약 */
DROP TABLE reservation 
	CASCADE CONSTRAINTS;

/* 예약 */
CREATE TABLE reservation (
	no NUMBER NOT NULL, /* 예약번호 */
	mateNo NUMBER, /* 메이트번호 */
	userNo NUMBER, /* 유저(손님) */
	driverNo NUMBER, /* 드라이버 */
	regDate DATE, /* 날짜 */
	point NUMBER, /* 사용포인트 */
	status VARCHAR2(100), /* 상태(대기, 완료, 취소)   */
	people NUMBER, /* 인원 */
	lat NUMBER, /* 탑승자 위도 */
	lng NUMBER /* 탑승자 경도 */
);

COMMENT ON TABLE reservation IS '예약';

COMMENT ON COLUMN reservation.no IS '예약번호';

COMMENT ON COLUMN reservation.mateNo IS '메이트번호';

COMMENT ON COLUMN reservation.userNo IS '유저(손님)';

COMMENT ON COLUMN reservation.driverNo IS '드라이버';

COMMENT ON COLUMN reservation.regDate IS '날짜';

COMMENT ON COLUMN reservation.point IS '사용포인트';

COMMENT ON COLUMN reservation.status IS '상태(대기, 완료, 취소)  ';

COMMENT ON COLUMN reservation.people IS '인원';

COMMENT ON COLUMN reservation.lat IS '탑승자 위도';

COMMENT ON COLUMN reservation.lng IS '탑승자 경도';

CREATE UNIQUE INDEX PK_reservation
	ON reservation (
		no ASC
	);

ALTER TABLE reservation
	ADD
		CONSTRAINT PK_reservation
		PRIMARY KEY (
			no
		);

ALTER TABLE reservation
	ADD
		CONSTRAINT FK_users_TO_reservation
		FOREIGN KEY (
			userNo
		)
		REFERENCES users (
			no
		);

--ALTER TABLE reservation
--	ADD
--		CONSTRAINT FK_spotmate_TO_reservation
--		FOREIGN KEY (
--			mateNo
--		)
--		REFERENCES spotmate (
--			no
--		);

ALTER TABLE reservation
	ADD
		CONSTRAINT FK_users_TO_reservation2
		FOREIGN KEY (
			driverNo
		)
		REFERENCES users (
			no
		);

-- insert 생성
INSERT INTO reservation values(
seq_reservation_no.nextval,
1,
1,
1,
sysdate,
3000,
'대기',
1,
''
);

INSERT INTO reservation values(
seq_reservation_no.nextval,
2,
2,
2,
sysdate,
3000,
'대기',
1
);

INSERT INTO reservation values(
seq_reservation_no.nextval,
3,
3,
3,
sysdate,
3000,
'대기',
1,
''
);


-- select문
select *
from reservation;


---------------------- 손님 리뷰 ------------------------
DROP INDEX PK_userReview;

-- 테이블 삭제
DROP TABLE userReview 
	CASCADE CONSTRAINTS;
    
-- 시퀀스 삭제
drop sequence seq_userReview_no;

-- 테이블 생성 : 손님리뷰
CREATE TABLE userReview (
	no NUMBER NOT NULL, /* 리뷰번호 */
	resvNo NUMBER, /* 예약번호 */
	star NUMBER, /* 별점 */
	content VARCHAR2(1000) /* 내용 */
);

-- 시퀀스 생성
create sequence seq_userReview_no
increment by 1 
start with 1
nocache;

-- comment
COMMENT ON TABLE userReview IS '손님리뷰';

COMMENT ON COLUMN userReview.no IS '리뷰번호';

COMMENT ON COLUMN userReview.resvNo IS '예약번호';

COMMENT ON COLUMN userReview.star IS '별점';

COMMENT ON COLUMN userReview.content IS '내용';

CREATE UNIQUE INDEX PK_userReview
	ON userReview (
		no ASC
	);

ALTER TABLE userReview
	ADD
		CONSTRAINT PK_userReview
		PRIMARY KEY (
			no
		);

ALTER TABLE userReview
	ADD
		CONSTRAINT FK_reservation_TO_userReview
		FOREIGN KEY (
			resvNo
		)
		REFERENCES reservation (
			no
		);

-- insert 생성
INSERT INTO userReview values(
seq_userReview_no.nextval,
1,
3,
'감사합니다'
);

INSERT INTO userReview values(
seq_userReview_no.nextval,
2,
4,
'덕분에 편안히 갑니다:)'
);

INSERT INTO userReview values(
seq_userReview_no.nextval,
3,
2,
'조용히 가고 싶었는데.....'
);

-- select
select *
from userReview;

---------------------- 드라이버 리뷰 ------------------------
DROP INDEX PK_driverReview;

-- 테이블 삭제
DROP TABLE driverReview 
   CASCADE CONSTRAINTS;

-- 시퀀스 삭제
drop sequence seq_driverReview_no;

-- 테이블 생성 : 드라이버리뷰
CREATE TABLE driverReview (
   no NUMBER NOT NULL, /* 리뷰번호 */
   resvNo NUMBER, /* 예약번호 */
   star NUMBER /* 별점 */
);

-- 시퀀스 생성
create sequence seq_driverReview_no
increment by 1 
start with 1
nocache;

-- comment
COMMENT ON TABLE driverReview IS '드라이버리뷰';

COMMENT ON COLUMN driverReview.no IS '리뷰번호';

COMMENT ON COLUMN driverReview.resvNo IS '예약번호';

COMMENT ON COLUMN driverReview.star IS '별점';

CREATE UNIQUE INDEX PK_driverReview
   ON driverReview (
      no ASC
   );

ALTER TABLE driverReview
   ADD
      CONSTRAINT PK_driverReview
      PRIMARY KEY (
         no
      );

ALTER TABLE driverReview
   ADD
      CONSTRAINT FK_reservation_TO_driverReview
      FOREIGN KEY (
         resvNo
      )
      REFERENCES reservation (
         no
      );

-- insert 생성
INSERT INTO driverReview values(
seq_driverReview_no.nextval,
1,
5
);

INSERT INTO driverReview values(
seq_driverReview_no.nextval,
2,
3
);

-- select
select *
from driverReview;

-- select
select  no
        ,resvNo
        ,star
from driverReview;

---------------------- 스팟메이트 상세조건 ------------------------
DROP INDEX PK_spotDetail;

-- 테이블 삭제 : 스팟메이트상세조건
DROP TABLE spotDetail 
	CASCADE CONSTRAINTS;

-- 시퀀스 삭제
drop sequence seq_spotDetail_no;

-- 테이블 생성 : 스팟메이트상세조건
CREATE TABLE spotDetail (
	no NUMBER NOT NULL, /* 메이트상세조건번호 */
	mateNo NUMBER, /* 메이트번호 */
	detailNo NUMBER /* 상세조건번호 */
);

-- 시퀀스 생성
create sequence seq_spotDetail_no
increment by 1 
start with 1
nocache;

-- comment
COMMENT ON TABLE spotDetail IS '스팟메이트상세조건';

COMMENT ON COLUMN spotDetail.no IS '메이트상세조건번호';

COMMENT ON COLUMN spotDetail.mateNo IS '메이트번호';

COMMENT ON COLUMN spotDetail.detailNo IS '상세조건번호';

--CREATE UNIQUE INDEX PK_spotDetail
--	ON spotDetail (
--		no ASC
--	);
--
--ALTER TABLE spotDetail
--	ADD
--		CONSTRAINT PK_spotDetail
--		PRIMARY KEY (
--			no
--		);

--ALTER TABLE spotDetail
--	ADD
--		CONSTRAINT FK_spotmate_TO_spotDetail
--		FOREIGN KEY (
--			mateNo
--		)
--		REFERENCES spotmate (
--			no
--		);

ALTER TABLE spotDetail
	ADD
		CONSTRAINT FK_detailOpt_TO_spotDetail
		FOREIGN KEY (
			detailNo
		)
		REFERENCES detailOpt (
			no
		);

-- insert 생성
INSERT INTO spotDetail VALUES (
    seq_spotDetail_no.NEXTVAL,
    1,
    1
);

INSERT INTO spotDetail VALUES (
    seq_spotDetail_no.NEXTVAL,
    1,
    2
);

INSERT INTO spotDetail VALUES (
    seq_spotDetail_no.NEXTVAL,
    1,
    4
);

INSERT INTO spotDetail VALUES (
    seq_spotDetail_no.NEXTVAL,
    3,
    1
);
INSERT INTO spotDetail VALUES (
    seq_spotDetail_no.NEXTVAL,
    3,
    2
);
INSERT INTO spotDetail VALUES (
    seq_spotDetail_no.NEXTVAL,
    3,
    3
);

-- select
select *
from spotDetail;

---------------------- 포인트 내역 ------------------------
DROP INDEX PK_pointUsage;

-- 테이블 삭제
DROP TABLE pointUsage 
	CASCADE CONSTRAINTS;

-- 시퀀스 삭제
drop sequence seq_pointUsage_no;

-- 테이블 생성 : 포인트내역
CREATE TABLE pointUsage (
	no NUMBER NOT NULL, /* 포인트번호 */
	userNo NUMBER, /* 회원번호 */
	type VARCHAR2(100), /* 유형(충전,예약,완료) */
	regDate DATE, /* 입금날짜,사용날짜,입금날짜 */
	agent NUMBER, /* 입금돈(현금,충전) */
	point NUMBER, /* 사용,입금 포인트 */
    reNo NUMBER /* 예약번호 */
);

-- 시퀀스 생성
create sequence seq_pointUsage_no
increment by 1 
start with 1
nocache;

-- comment
COMMENT ON TABLE pointUsage IS '포인트내역';

COMMENT ON COLUMN pointUsage.no IS '포인트번호';

COMMENT ON COLUMN pointUsage.userNo IS '회원번호';

COMMENT ON COLUMN pointUsage.type IS '유형(충전,예약,완료)';

COMMENT ON COLUMN pointUsage.regDate IS '입금날짜,사용날짜,입금날짜';

COMMENT ON COLUMN pointUsage.agent IS '입금돈(현금,충전)';

COMMENT ON COLUMN pointUsage.point IS '사용,입금 포인트';

COMMENT ON COLUMN pointUsage.reNo IS '예약번호';

CREATE UNIQUE INDEX PK_pointUsage
	ON pointUsage (
		no ASC
	);

ALTER TABLE pointUsage
	ADD
		CONSTRAINT PK_pointUsage
		PRIMARY KEY (
			no
		);

ALTER TABLE pointUsage
	ADD
		CONSTRAINT FK_users_TO_pointUsage
		FOREIGN KEY (
			userNo
		)
		REFERENCES users (
			no
		);
ALTER TABLE pointUsage
   ADD
      CONSTRAINT FK_reservation_TO_pointUsage
      FOREIGN KEY (
         reNo
      )
      REFERENCES reservation (
         no
      );

--insert
INSERT INTO pointUsage
VALUES (SEQ_POINTUSAGE_NO.nextval, 1, '충전', '2022-08-12', +5000, +5000, 1);

INSERT INTO pointUsage
VALUES (SEQ_POINTUSAGE_NO.nextval, 2, '예약', '2022-08-13', 0, -3000, 2);

INSERT INTO pointUsage
VALUES (SEQ_POINTUSAGE_NO.nextval, 3, '완료', '2022-08-14', 0, 0, 3);

INSERT INTO pointUsage
VALUES (SEQ_POINTUSAGE_NO.nextval, 4, '완료', '2022-08-15', 0, 0, 1);

INSERT INTO pointUsage
VALUES (SEQ_POINTUSAGE_NO.nextval, 5, '예약', '2022-08-16', 0, -4000, 2);

INSERT INTO pointUsage
VALUES (SEQ_POINTUSAGE_NO.nextval, 6, '충전', '2022-08-12', +7000, +7000, 3);

-- select
select *
from pointUsage;

---------------------- 공지사항 ------------------------
DROP INDEX PK_ notice;

-- 테이블 삭제 : 공지사항게시판
DROP TABLE  notice 
	CASCADE CONSTRAINTS;

-- 시퀀스 삭제
drop sequence seq_notice_no;

-- 테이블 생성 : 공지사항게시판
CREATE TABLE  notice (
	no NUMBER NOT NULL, /* 글번호 */
	type VARCHAR2(100), /* 유형 */
	title VARCHAR2(100), /* 제목 */
	hit NUMBER, /* 조회수 */
	regDate DATE, /* 작성날짜 */
	admin VARCHAR2(100), /* 작성자 */
	content VARCHAR2(1000) /* 내용 */
);

-- 시퀀스 생성
create sequence seq_notice_no
increment by 1 
start with 1
nocache;

-- comment
COMMENT ON TABLE  notice IS '공지사항게시판';

COMMENT ON COLUMN  notice.no IS '글번호';

COMMENT ON COLUMN  notice.type IS '유형';

COMMENT ON COLUMN  notice.title IS '제목';

COMMENT ON COLUMN  notice.hit IS '조회수';

COMMENT ON COLUMN  notice.regDate IS '작성날짜';

COMMENT ON COLUMN  notice.admin IS '작성자';

COMMENT ON COLUMN  notice.content IS '내용';

CREATE UNIQUE INDEX PK_notice
	ON  notice (
		no ASC
	);

ALTER TABLE  notice
	ADD
		CONSTRAINT PK_notice
		PRIMARY KEY (
			no
		);

-- insert 생성
INSERT INTO notice VALUES (
    seq_notice_no.NEXTVAL,
    '히치하이크',
    '히치하이크 이용시 현재 위치를 기준으로 어디까지 차 정보가 나오나요?',
    12345,
    sysdate,
    '운영자',
    '내용'
);

-- 확인
select * from notice;


---------------------- 장소 ------------------------
DROP INDEX PK_place;

-- 테이블 삭제 : 장소
DROP TABLE place 
   CASCADE CONSTRAINTS;

-- 시퀀스 삭제
drop sequence seq_place_no;

-- 테이블 생성 : 장소
CREATE TABLE place (
   no NUMBER NOT NULL, /* 장소번호 */
   mateNo NUMBER, /* 메이트번호 */
   day number, /* 일차(1일차) */
   wayNo NUMBER, /* 경유지순서 */
   sepPlace VARCHAR2(1000), /* 구분(출, 경, 도, 현) */
   -- ymd DATE, /* 년월일 */
   time date, /* 시간(도착일때없음) */
   place VARCHAR2(1000), /* 장소 */
   lat NUMBER, /* 위도 */
   lng NUMBER, /* 경도 */
    latlng LONG /* 경로 */
);

-- 시퀀스 생성
create sequence seq_place_no
increment by 1 
start with 1
nocache;

-- comment
COMMENT ON TABLE place IS '장소';

COMMENT ON COLUMN place.no IS '장소번호';

COMMENT ON COLUMN place.mateNo IS '메이트번호';

COMMENT ON COLUMN place.day IS '일차(1일차)';

COMMENT ON COLUMN place.wayNo IS '경유지순서';

COMMENT ON COLUMN place.sepPlace IS '구분(출, 경, 도, 현)';

-- COMMENT ON COLUMN place.ymd IS '년월일';

COMMENT ON COLUMN place.time IS '시간(도착일때없음)';

COMMENT ON COLUMN place.place IS '장소';

COMMENT ON COLUMN place.lat IS '위도';

COMMENT ON COLUMN place.lng IS '경도';

COMMENT ON COLUMN place.latlng  IS '경로';

--CREATE UNIQUE INDEX PK_place
--   ON place (
--      no ASC
--   );
--
--ALTER TABLE place
--   ADD
--      CONSTRAINT PK_place
--      PRIMARY KEY (
--         no
--      );

--ALTER TABLE place
--   ADD
--      CONSTRAINT FK_spotmate_TO_place
--      FOREIGN KEY (
--         mateNo
--      )
--      REFERENCES spotmate (
--         no
--      );

-- insert
INSERT INTO place VALUES (
    seq_place_no.NEXTVAL,
    1,
    NULL,
    -1,
    '출발지',
    to_date('오전 11:54', 'AM HH:MI'),
    '건대입구역',
    127.2341234234,
    36.342355436,
    ''
);

INSERT INTO place VALUES (
    seq_place_no.NEXTVAL,
    1,
    NULL,
    0,
    '도착지',
    null,
    '홍대입구역',
    127.2341234234,
    36.342355436,
    ''
);

INSERT INTO place VALUES (
    seq_place_no.NEXTVAL,
    2,
    NULL,
    -1,
    '출발지',
    to_date('오전 11:12', 'AM HH:MI'),
    '방배역',
    127.2341234234,
    36.342355436,
    ''
);

INSERT INTO place VALUES (
    seq_place_no.NEXTVAL,
    2,
    NULL,
    0,
    '도착지',
    null,
    '신림역',
    127.2341234234,
    36.342355436,
    ''
);

INSERT INTO place VALUES (
    seq_place_no.NEXTVAL,
    3,
    1,
    -1,
    '출발지',
    to_date('오전 08:30', 'AM HH:MI'),
    '서울역',
    127.2341234234,
    36.342355436,
    ''
);
INSERT INTO place VALUES (
    seq_place_no.NEXTVAL,
    3,
    1,
    1,
    '경유지',
    to_date('오전 11:30', 'AM HH:MI'),
    '문경',
    127.2341234234,
    36.342355436,
    ''
);

INSERT INTO place VALUES (
    seq_place_no.NEXTVAL,
    3,
    1,
    2,
    '경유지',
    to_date('오후 02:20', 'AM HH:MI'),
    '울산',
    127.2341234234,
    36.342355436,
    ''
);
INSERT INTO place VALUES (
    seq_place_no.NEXTVAL,
    3,
    1,
    0,
    '도착지',
    null,
    '부산',
    127.2341234234,
    36.342355436,
    ''
);

INSERT INTO place VALUES (
    seq_place_no.NEXTVAL,
    3,
    2,
    -1,
    '출발지',
    to_date('오전 10:00', 'AM HH:MI'),
    '부산',
    127.2341234234,
    36.342355436,
    ''
);
INSERT INTO place VALUES (
    seq_place_no.NEXTVAL,
    3,
    2,
    1,
    '경유지',
    to_date('오후 02:30', 'AM HH:MI'),
    '주문진',
    127.2341234234,
    36.342355436,
    ''
);
INSERT INTO place VALUES (
    seq_place_no.NEXTVAL,
    3,
    2,
    2,
    '경유지',
    to_date('오후 04:30', 'AM HH:MI'),
    '강릉',
    127.2341234234,
    36.342355436,
    ''
);
INSERT INTO place VALUES (
    seq_place_no.NEXTVAL,
    3,
    2,
    0,
    '도착지',
    null,
    '서울',
    127.2341234234,
    36.342355436,
    ''
);
INSERT INTO place VALUES (
    seq_place_no.NEXTVAL,
    4,
    1,
    -1,
    '출발지',
    to_date('오전 08:00', 'AM HH:MI'),
    '서울',
    127.2341234234,
    36.342355436,
    ''
);
INSERT INTO place VALUES (
    seq_place_no.NEXTVAL,
    4,
    1,
    1,
    '경유지',
    to_date('오전 09:30', 'AM HH:MI'),
    '춘천',
    127.2341234234,
    36.342355436,
    ''
);
INSERT INTO place VALUES (
    seq_place_no.NEXTVAL,
    4,
    1,
    0,
    '도착지',
    null,
    '강릉',
    127.2341234234,
    36.342355436,
    ''
);
INSERT INTO place VALUES (
    seq_place_no.NEXTVAL,
    4,
    2,
    -1,
    '출발지',
    to_date('오전 09:30', 'AM HH:MI'),
    '강릉',
    127.2341234234,
    36.342355436,
    ''
);
INSERT INTO place VALUES (
    seq_place_no.NEXTVAL,
    4,
    2,
    1,
    '경유지',
    to_date('오후 12:30', 'AM HH:MI'),
    '고양',
    127.2341234234,
    36.342355436,
    ''
);
INSERT INTO place VALUES (
    seq_place_no.NEXTVAL,
    4,
    2,
    0,
    '도착지',
    null,
    '서울',
    127.2341234234,
    36.342355436,
    ''
);
-- select
select *
from place;


-- 커밋
commit;