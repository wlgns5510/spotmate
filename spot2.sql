-- insert 없는 버전

-- 롤백
rollback;

-- 커밋
commit;

-- -- SYSTIMESTAMP 출력형식 변경
ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY-MM-DD HH24:MI';

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
   licenseType VARCHAR2(100), /* 면허종류 */
   kakaoEmail varchar2(100)
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
        1, 3000, sysdate, '/assets/images/soil_3.png'
);

insert into coupon
values(seq_coupon_no.nextval, 
        1, 5000, sysdate, '/assets/images/soil_5.png'
);

insert into coupon
values(seq_coupon_no.nextval, 
        1, 10000, sysdate, '/assets/images/soil_10.png'
);

insert into coupon
values(seq_coupon_no.nextval, 
        1, 30000, sysdate, '/assets/images/soil_30.png'
);

insert into coupon
values(seq_coupon_no.nextval, 
        1, 50000, sysdate, '/assets/images/soil_50.png'
);

insert into coupon
values(seq_coupon_no.nextval, 
        1, 100000, sysdate, '/assets/images/soil_100.png'
);


--GS-칼텍스
insert into coupon
values(seq_coupon_no.nextval, 
        2, 3000, sysdate, '/assets/images/gs_3.png'
);

insert into coupon
values(seq_coupon_no.nextval, 
        2, 5000, sysdate, '/assets/images/gs_5.png'
);

insert into coupon
values(seq_coupon_no.nextval, 
        2, 10000, sysdate, '/assets/images/gs_10.png'
);

insert into coupon
values(seq_coupon_no.nextval, 
        2, 30000, sysdate, '/assets/images/gs_30.png'
);

insert into coupon
values(seq_coupon_no.nextval, 
        2, 50000, sysdate, '/assets/images/gs_50.png'
);

insert into coupon
values(seq_coupon_no.nextval, 
        2, 100000, sysdate, '/assets/images/gs_100.png'
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



commit;
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


-- select
select *
from car;

commit;
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
   comments VARCHAR2(1000), /* 코멘트 */
   status varchar2(50)
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




-- select
select *
from spotmate;

---------------------- 예약 ------------------------
DROP INDEX PK_reservation;

-- 테이블 삭제
DROP TABLE reservation 
   CASCADE CONSTRAINTS;
   
-- 시퀀스 삭제
drop sequence seq_reservation_no;

-- 테이블 생성 :  예약
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

-- 시퀀스 생성
create sequence seq_reservation_no
increment by 1 
start with 1
nocache;

-- comment
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
--   ADD
--      CONSTRAINT FK_spotmate_TO_reservation
--      FOREIGN KEY (
--         mateNo
--      )
--      REFERENCES spotmate (
--         no
--      );

ALTER TABLE reservation
   ADD
      CONSTRAINT FK_users_TO_reservation2
      FOREIGN KEY (
         driverNo
      )
      REFERENCES users (
         no
      );
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
   userNo number,
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
--   ON spotDetail (
--      no ASC
--   );
--
--ALTER TABLE spotDetail
--   ADD
--      CONSTRAINT PK_spotDetail
--      PRIMARY KEY (
--         no
--      );

--ALTER TABLE spotDetail
--   ADD
--      CONSTRAINT FK_spotmate_TO_spotDetail
--      FOREIGN KEY (
--         mateNo
--      )
--      REFERENCES spotmate (
--         no
--      );

ALTER TABLE spotDetail
   ADD
      CONSTRAINT FK_detailOpt_TO_spotDetail
      FOREIGN KEY (
         detailNo
      )
      REFERENCES detailOpt (
         no
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


-- select
select *
from pointUsage;

---------------------- 포인트 환불 ------------------------
DROP INDEX PK_pointRefund;

-- 테이블 삭제
DROP TABLE pointRefund 
   CASCADE CONSTRAINTS;

-- 시퀀스 삭제
drop sequence seq_pointRefund_no;

-- 테이블 생성 : 포인트환불
CREATE TABLE pointRefund (
   no NUMBER NOT NULL, /* 포인트환불번호 */
   userNo NUMBER, /* 회원번호 */
   regDate DATE, /* 날짜 */
   accountNum VARCHAR2(100), /* 계좌번호 */
   name VARCHAR2(100), /* 예금주명 */
   status VARCHAR2(100), /* 상태(환불대기, 환불완료) */
   point NUMBER /* 포인트 */
);

-- 시퀀스 생성
create sequence seq_pointRefund_no
increment by 1 
start with 1
nocache;

-- comment
COMMENT ON TABLE pointRefund IS '포인트환불';

COMMENT ON COLUMN pointRefund.no IS '포인트환불번호';

COMMENT ON COLUMN pointRefund.userNo IS '회원번호';

COMMENT ON COLUMN pointRefund.regDate IS '날짜';

COMMENT ON COLUMN pointRefund.accountNum IS '계좌번호';

COMMENT ON COLUMN pointRefund.name IS '예금주명';

COMMENT ON COLUMN pointRefund.status IS '상태(환불대기, 환불완료)';

COMMENT ON COLUMN pointRefund.point IS '포인트';

CREATE UNIQUE INDEX PK_pointRefund
   ON pointRefund (
      no ASC
   );

ALTER TABLE pointRefund
   ADD
      CONSTRAINT PK_pointRefund
      PRIMARY KEY (
         no
      );

ALTER TABLE pointRefund
   ADD
      CONSTRAINT FK_users_TO_pointRefund
      FOREIGN KEY (
         userNo
      )
      REFERENCES users (
         no
      );



-- select
select *
from pointRefund;

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
    day VARCHAR2(1000), /* 일차(1일차) */
    wayNo NUMBER, /* 경유지순서 */
    sepPlace VARCHAR2(1000), /* 구분(출, 경, 도, 현) */
    -- ymd DATE, /* 년월일 */
    time varchar2(30), /* 시간(도착일때없음) */
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


---------------------- 문의 ------------------------
DROP INDEX PK_myQnA;

-- 테이블 삭제
DROP TABLE myQnA
   CASCADE CONSTRAINTS;

-- 시퀀스 삭제
drop sequence seq_myQnA_no;

-- 테이블 생성 
CREATE TABLE myQnA (
   no NUMBER NOT NULL, 
   userNo NUMBER, 
   type VARCHAR2(1000),
   title VARCHAR2(1000),
   regDate DATE,
   content VARCHAR2(1000),
   status VARCHAR2(100)  
);

-- 시퀀스 생성
create sequence seq_myQnA_no
increment by 1 
start with 1
nocache;

-- comment
COMMENT ON TABLE myQnA IS '문의내역';

COMMENT ON COLUMN myQnA.no IS '문의내역번호';

COMMENT ON COLUMN myQnA.type IS '유형';

COMMENT ON COLUMN myQnA.title IS '제목';

COMMENT ON COLUMN myQnA.regDate IS '날짜';

COMMENT ON COLUMN myQnA.content IS '내용';

COMMENT ON COLUMN myQnA.status IS '상태(답변대기, 답변완료)';

CREATE UNIQUE INDEX PK_myQnA
   ON myQnA (
      no ASC
   );

ALTER TABLE myQnA
   ADD
      CONSTRAINT PK_myQnA
      PRIMARY KEY (
         no
      );

ALTER TABLE myQnA
   ADD
      CONSTRAINT FK_users_TO_myQnA
      FOREIGN KEY (
         userNo
      )
      REFERENCES users (
         no
      );
      
-- select
select *
from myQna;
      
--commit
commit;