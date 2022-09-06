--------------------------------------------------------
--  파일이 생성됨 - 화요일-9월-06-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence SEQ_BRAND_NO
--------------------------------------------------------

   CREATE SEQUENCE  "SPOT"."SEQ_BRAND_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 3 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_CARDETAIL_NO
--------------------------------------------------------

   CREATE SEQUENCE  "SPOT"."SEQ_CARDETAIL_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_CAR_NO
--------------------------------------------------------

   CREATE SEQUENCE  "SPOT"."SEQ_CAR_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 53 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_CATEGORY_NO
--------------------------------------------------------

   CREATE SEQUENCE  "SPOT"."SEQ_CATEGORY_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 4 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_COUPONUSAGE_NO
--------------------------------------------------------

   CREATE SEQUENCE  "SPOT"."SEQ_COUPONUSAGE_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_COUPON_NO
--------------------------------------------------------

   CREATE SEQUENCE  "SPOT"."SEQ_COUPON_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 13 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_DETAILOPTION_NO
--------------------------------------------------------

   CREATE SEQUENCE  "SPOT"."SEQ_DETAILOPTION_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_DETAILOPT_NO
--------------------------------------------------------

   CREATE SEQUENCE  "SPOT"."SEQ_DETAILOPT_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_DETAIL_NO
--------------------------------------------------------

   CREATE SEQUENCE  "SPOT"."SEQ_DETAIL_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_DRIVERREIVEW_NO
--------------------------------------------------------

   CREATE SEQUENCE  "SPOT"."SEQ_DRIVERREIVEW_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_DRIVERREVIEW_NO
--------------------------------------------------------

   CREATE SEQUENCE  "SPOT"."SEQ_DRIVERREVIEW_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 6 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_MYQNA_NO
--------------------------------------------------------

   CREATE SEQUENCE  "SPOT"."SEQ_MYQNA_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_NOTICE_NO
--------------------------------------------------------

   CREATE SEQUENCE  "SPOT"."SEQ_NOTICE_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 13 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_PLACE_NO
--------------------------------------------------------

   CREATE SEQUENCE  "SPOT"."SEQ_PLACE_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 12 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_POINTREFUND_NO
--------------------------------------------------------

   CREATE SEQUENCE  "SPOT"."SEQ_POINTREFUND_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_POINTUSAGE_NO
--------------------------------------------------------

   CREATE SEQUENCE  "SPOT"."SEQ_POINTUSAGE_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_RESERVATION_NO
--------------------------------------------------------

   CREATE SEQUENCE  "SPOT"."SEQ_RESERVATION_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 98 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_SPOTDETAIL_NO
--------------------------------------------------------

   CREATE SEQUENCE  "SPOT"."SEQ_SPOTDETAIL_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 12 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_SPOTMATEDETAIL_NO
--------------------------------------------------------

   CREATE SEQUENCE  "SPOT"."SEQ_SPOTMATEDETAIL_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 38 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_SPOTMATE_NO
--------------------------------------------------------

   CREATE SEQUENCE  "SPOT"."SEQ_SPOTMATE_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 82 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_USERREVIEW_NO
--------------------------------------------------------

   CREATE SEQUENCE  "SPOT"."SEQ_USERREVIEW_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_USERS_NO
--------------------------------------------------------

   CREATE SEQUENCE  "SPOT"."SEQ_USERS_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 53 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table BRAND
--------------------------------------------------------

  CREATE TABLE "SPOT"."BRAND" 
   (	"NO" NUMBER, 
	"CATENO" NUMBER, 
	"NAME" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "SPOT"."BRAND"."NO" IS '브랜드번호';
   COMMENT ON COLUMN "SPOT"."BRAND"."CATENO" IS '카테고리번호';
   COMMENT ON COLUMN "SPOT"."BRAND"."NAME" IS '브랜드명';
   COMMENT ON TABLE "SPOT"."BRAND"  IS '브랜드';
--------------------------------------------------------
--  DDL for Table CAR
--------------------------------------------------------

  CREATE TABLE "SPOT"."CAR" 
   (	"NO" NUMBER, 
	"USERNO" NUMBER, 
	"CARNAME" VARCHAR2(100 BYTE), 
	"CARPICTURE" VARCHAR2(100 BYTE), 
	"CARNO" VARCHAR2(100 BYTE), 
	"CARCOLOR" VARCHAR2(100 BYTE), 
	"PEOPLE" NUMBER, 
	"INTRODUCE" VARCHAR2(1000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CARDETAIL
--------------------------------------------------------

  CREATE TABLE "SPOT"."CARDETAIL" 
   (	"NO" NUMBER, 
	"CARNO" NUMBER, 
	"DETAILNO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "SPOT"."CARDETAIL"."NO" IS '상세조건차량번호';
   COMMENT ON COLUMN "SPOT"."CARDETAIL"."CARNO" IS '차량번호';
   COMMENT ON COLUMN "SPOT"."CARDETAIL"."DETAILNO" IS '상세조건번호';
   COMMENT ON TABLE "SPOT"."CARDETAIL"  IS '상세조건차량';
--------------------------------------------------------
--  DDL for Table CATEGORY
--------------------------------------------------------

  CREATE TABLE "SPOT"."CATEGORY" 
   (	"NO" NUMBER, 
	"NAME" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "SPOT"."CATEGORY"."NO" IS '카테고리번호';
   COMMENT ON COLUMN "SPOT"."CATEGORY"."NAME" IS '카테고리명(주유,음료,음식)';
   COMMENT ON TABLE "SPOT"."CATEGORY"  IS '카테고리';
--------------------------------------------------------
--  DDL for Table COUPON
--------------------------------------------------------

  CREATE TABLE "SPOT"."COUPON" 
   (	"NO" NUMBER, 
	"BRANDNO" NUMBER, 
	"POINT" NUMBER, 
	"REGDATE" DATE, 
	"IMGSRC" VARCHAR2(1000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "SPOT"."COUPON"."NO" IS '쿠폰번호';
   COMMENT ON COLUMN "SPOT"."COUPON"."BRANDNO" IS '브랜드번호';
   COMMENT ON COLUMN "SPOT"."COUPON"."POINT" IS '포인트';
   COMMENT ON COLUMN "SPOT"."COUPON"."REGDATE" IS '등록일';
   COMMENT ON COLUMN "SPOT"."COUPON"."IMGSRC" IS '이미지경로';
   COMMENT ON TABLE "SPOT"."COUPON"  IS '쿠폰';
--------------------------------------------------------
--  DDL for Table COUPONUSAGE
--------------------------------------------------------

  CREATE TABLE "SPOT"."COUPONUSAGE" 
   (	"NO" NUMBER, 
	"USERNO" NUMBER, 
	"COUPONNO" NUMBER, 
	"POINT" NUMBER, 
	"BUYDATE" DATE, 
	"USEDATE" DATE, 
	"USEPLACE" VARCHAR2(1000 BYTE), 
	"STATUS" VARCHAR2(1000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "SPOT"."COUPONUSAGE"."NO" IS '쿠폰구매내역번호';
   COMMENT ON COLUMN "SPOT"."COUPONUSAGE"."USERNO" IS '회원번호';
   COMMENT ON COLUMN "SPOT"."COUPONUSAGE"."COUPONNO" IS '쿠폰번호';
   COMMENT ON COLUMN "SPOT"."COUPONUSAGE"."POINT" IS '사용포인트';
   COMMENT ON COLUMN "SPOT"."COUPONUSAGE"."BUYDATE" IS '구매날짜';
   COMMENT ON COLUMN "SPOT"."COUPONUSAGE"."USEDATE" IS '사용날짜';
   COMMENT ON COLUMN "SPOT"."COUPONUSAGE"."USEPLACE" IS '사용장소';
   COMMENT ON COLUMN "SPOT"."COUPONUSAGE"."STATUS" IS '상태(미사용, 사용완료)';
   COMMENT ON TABLE "SPOT"."COUPONUSAGE"  IS '쿠폰구매내역';
--------------------------------------------------------
--  DDL for Table DETAILOPT
--------------------------------------------------------

  CREATE TABLE "SPOT"."DETAILOPT" 
   (	"NO" NUMBER, 
	"NAME" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "SPOT"."DETAILOPT"."NO" IS '상세조건번호';
   COMMENT ON COLUMN "SPOT"."DETAILOPT"."NAME" IS '조건명';
   COMMENT ON TABLE "SPOT"."DETAILOPT"  IS '상세조건';
--------------------------------------------------------
--  DDL for Table DRIVERREVIEW
--------------------------------------------------------

  CREATE TABLE "SPOT"."DRIVERREVIEW" 
   (	"NO" NUMBER, 
	"RESVNO" NUMBER, 
	"USERNO" NUMBER, 
	"STAR" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "SPOT"."DRIVERREVIEW"."NO" IS '리뷰번호';
   COMMENT ON COLUMN "SPOT"."DRIVERREVIEW"."RESVNO" IS '예약번호';
   COMMENT ON COLUMN "SPOT"."DRIVERREVIEW"."STAR" IS '별점';
   COMMENT ON TABLE "SPOT"."DRIVERREVIEW"  IS '드라이버리뷰';
--------------------------------------------------------
--  DDL for Table MYQNA
--------------------------------------------------------

  CREATE TABLE "SPOT"."MYQNA" 
   (	"NO" NUMBER, 
	"USERNO" NUMBER, 
	"TYPE" VARCHAR2(1000 BYTE), 
	"TITLE" VARCHAR2(1000 BYTE), 
	"REGDATE" DATE, 
	"CONTENT" VARCHAR2(1000 BYTE), 
	"STATUS" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "SPOT"."MYQNA"."NO" IS '문의내역번호';
   COMMENT ON COLUMN "SPOT"."MYQNA"."TYPE" IS '유형';
   COMMENT ON COLUMN "SPOT"."MYQNA"."TITLE" IS '제목';
   COMMENT ON COLUMN "SPOT"."MYQNA"."REGDATE" IS '날짜';
   COMMENT ON COLUMN "SPOT"."MYQNA"."CONTENT" IS '내용';
   COMMENT ON COLUMN "SPOT"."MYQNA"."STATUS" IS '상태(답변대기, 답변완료)';
   COMMENT ON TABLE "SPOT"."MYQNA"  IS '문의내역';
--------------------------------------------------------
--  DDL for Table NOTICE
--------------------------------------------------------

  CREATE TABLE "SPOT"."NOTICE" 
   (	"NO" NUMBER, 
	"TYPE" VARCHAR2(100 BYTE), 
	"TITLE" VARCHAR2(100 BYTE), 
	"HIT" NUMBER, 
	"REGDATE" DATE, 
	"ADMIN" VARCHAR2(100 BYTE), 
	"CONTENT" VARCHAR2(1000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "SPOT"."NOTICE"."NO" IS '글번호';
   COMMENT ON COLUMN "SPOT"."NOTICE"."TYPE" IS '유형';
   COMMENT ON COLUMN "SPOT"."NOTICE"."TITLE" IS '제목';
   COMMENT ON COLUMN "SPOT"."NOTICE"."HIT" IS '조회수';
   COMMENT ON COLUMN "SPOT"."NOTICE"."REGDATE" IS '작성날짜';
   COMMENT ON COLUMN "SPOT"."NOTICE"."ADMIN" IS '작성자';
   COMMENT ON COLUMN "SPOT"."NOTICE"."CONTENT" IS '내용';
   COMMENT ON TABLE "SPOT"."NOTICE"  IS '공지사항게시판';
--------------------------------------------------------
--  DDL for Table PLACE
--------------------------------------------------------

  CREATE TABLE "SPOT"."PLACE" 
   (	"NO" NUMBER, 
	"MATENO" NUMBER, 
	"DAY" VARCHAR2(1000 BYTE), 
	"WAYNO" NUMBER, 
	"SEPPLACE" VARCHAR2(1000 BYTE), 
	"TIME" VARCHAR2(30 BYTE), 
	"PLACE" VARCHAR2(1000 BYTE), 
	"LAT" NUMBER, 
	"LNG" NUMBER, 
	"LATLNG" LONG
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "SPOT"."PLACE"."NO" IS '장소번호';
   COMMENT ON COLUMN "SPOT"."PLACE"."MATENO" IS '메이트번호';
   COMMENT ON COLUMN "SPOT"."PLACE"."DAY" IS '일차(1일차)';
   COMMENT ON COLUMN "SPOT"."PLACE"."WAYNO" IS '경유지순서';
   COMMENT ON COLUMN "SPOT"."PLACE"."SEPPLACE" IS '구분(출, 경, 도, 현)';
   COMMENT ON COLUMN "SPOT"."PLACE"."TIME" IS '시간(도착일때없음)';
   COMMENT ON COLUMN "SPOT"."PLACE"."PLACE" IS '장소';
   COMMENT ON COLUMN "SPOT"."PLACE"."LAT" IS '위도';
   COMMENT ON COLUMN "SPOT"."PLACE"."LNG" IS '경도';
   COMMENT ON COLUMN "SPOT"."PLACE"."LATLNG" IS '경로';
   COMMENT ON TABLE "SPOT"."PLACE"  IS '장소';
--------------------------------------------------------
--  DDL for Table POINTREFUND
--------------------------------------------------------

  CREATE TABLE "SPOT"."POINTREFUND" 
   (	"NO" NUMBER, 
	"USERNO" NUMBER, 
	"REGDATE" DATE, 
	"ACCOUNTNUM" VARCHAR2(100 BYTE), 
	"NAME" VARCHAR2(100 BYTE), 
	"STATUS" VARCHAR2(100 BYTE), 
	"POINT" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "SPOT"."POINTREFUND"."NO" IS '포인트환불번호';
   COMMENT ON COLUMN "SPOT"."POINTREFUND"."USERNO" IS '회원번호';
   COMMENT ON COLUMN "SPOT"."POINTREFUND"."REGDATE" IS '날짜';
   COMMENT ON COLUMN "SPOT"."POINTREFUND"."ACCOUNTNUM" IS '계좌번호';
   COMMENT ON COLUMN "SPOT"."POINTREFUND"."NAME" IS '예금주명';
   COMMENT ON COLUMN "SPOT"."POINTREFUND"."STATUS" IS '상태(환불대기, 환불완료)';
   COMMENT ON COLUMN "SPOT"."POINTREFUND"."POINT" IS '포인트';
   COMMENT ON TABLE "SPOT"."POINTREFUND"  IS '포인트환불';
--------------------------------------------------------
--  DDL for Table POINTUSAGE
--------------------------------------------------------

  CREATE TABLE "SPOT"."POINTUSAGE" 
   (	"NO" NUMBER, 
	"USERNO" NUMBER, 
	"TYPE" VARCHAR2(100 BYTE), 
	"REGDATE" DATE, 
	"AGENT" NUMBER, 
	"POINT" NUMBER, 
	"RENO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "SPOT"."POINTUSAGE"."NO" IS '포인트번호';
   COMMENT ON COLUMN "SPOT"."POINTUSAGE"."USERNO" IS '회원번호';
   COMMENT ON COLUMN "SPOT"."POINTUSAGE"."TYPE" IS '유형(충전,예약,완료)';
   COMMENT ON COLUMN "SPOT"."POINTUSAGE"."REGDATE" IS '입금날짜,사용날짜,입금날짜';
   COMMENT ON COLUMN "SPOT"."POINTUSAGE"."AGENT" IS '입금돈(현금,충전)';
   COMMENT ON COLUMN "SPOT"."POINTUSAGE"."POINT" IS '사용,입금 포인트';
   COMMENT ON COLUMN "SPOT"."POINTUSAGE"."RENO" IS '예약번호';
   COMMENT ON TABLE "SPOT"."POINTUSAGE"  IS '포인트내역';
--------------------------------------------------------
--  DDL for Table RESERVATION
--------------------------------------------------------

  CREATE TABLE "SPOT"."RESERVATION" 
   (	"NO" NUMBER, 
	"MATENO" NUMBER, 
	"USERNO" NUMBER, 
	"DRIVERNO" NUMBER, 
	"REGDATE" DATE, 
	"POINT" NUMBER, 
	"STATUS" VARCHAR2(100 BYTE), 
	"PEOPLE" NUMBER, 
	"LAT" NUMBER, 
	"LNG" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "SPOT"."RESERVATION"."NO" IS '예약번호';
   COMMENT ON COLUMN "SPOT"."RESERVATION"."MATENO" IS '메이트번호';
   COMMENT ON COLUMN "SPOT"."RESERVATION"."USERNO" IS '유저(손님)';
   COMMENT ON COLUMN "SPOT"."RESERVATION"."DRIVERNO" IS '드라이버';
   COMMENT ON COLUMN "SPOT"."RESERVATION"."REGDATE" IS '날짜';
   COMMENT ON COLUMN "SPOT"."RESERVATION"."POINT" IS '사용포인트';
   COMMENT ON COLUMN "SPOT"."RESERVATION"."STATUS" IS '상태(대기, 완료, 취소)  ';
   COMMENT ON COLUMN "SPOT"."RESERVATION"."PEOPLE" IS '인원';
   COMMENT ON COLUMN "SPOT"."RESERVATION"."LAT" IS '탑승자 위도';
   COMMENT ON COLUMN "SPOT"."RESERVATION"."LNG" IS '탑승자 경도';
   COMMENT ON TABLE "SPOT"."RESERVATION"  IS '예약';
--------------------------------------------------------
--  DDL for Table SPOTDETAIL
--------------------------------------------------------

  CREATE TABLE "SPOT"."SPOTDETAIL" 
   (	"NO" NUMBER, 
	"MATENO" NUMBER, 
	"DETAILNO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "SPOT"."SPOTDETAIL"."NO" IS '메이트상세조건번호';
   COMMENT ON COLUMN "SPOT"."SPOTDETAIL"."MATENO" IS '메이트번호';
   COMMENT ON COLUMN "SPOT"."SPOTDETAIL"."DETAILNO" IS '상세조건번호';
   COMMENT ON TABLE "SPOT"."SPOTDETAIL"  IS '스팟메이트상세조건';
--------------------------------------------------------
--  DDL for Table SPOTMATE
--------------------------------------------------------

  CREATE TABLE "SPOT"."SPOTMATE" 
   (	"NO" NUMBER, 
	"CARNO" NUMBER, 
	"STARTDATE" DATE, 
	"ENDDATE" DATE, 
	"PEOPLE" NUMBER, 
	"TYPE" VARCHAR2(100 BYTE), 
	"POINT" NUMBER, 
	"DURATION" VARCHAR2(1000 BYTE), 
	"DISTANCE" VARCHAR2(1000 BYTE), 
	"COMMENTS" VARCHAR2(1000 BYTE), 
	"STATUS" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "SPOT"."SPOTMATE"."NO" IS '메이트번호';
   COMMENT ON COLUMN "SPOT"."SPOTMATE"."CARNO" IS '차량번호';
   COMMENT ON COLUMN "SPOT"."SPOTMATE"."STARTDATE" IS '출발날짜';
   COMMENT ON COLUMN "SPOT"."SPOTMATE"."ENDDATE" IS '도착날짜';
   COMMENT ON COLUMN "SPOT"."SPOTMATE"."PEOPLE" IS '인원수';
   COMMENT ON COLUMN "SPOT"."SPOTMATE"."TYPE" IS '유형';
   COMMENT ON COLUMN "SPOT"."SPOTMATE"."POINT" IS '포인트';
   COMMENT ON COLUMN "SPOT"."SPOTMATE"."DURATION" IS '총 소요시간';
   COMMENT ON COLUMN "SPOT"."SPOTMATE"."DISTANCE" IS '총 거리';
   COMMENT ON COLUMN "SPOT"."SPOTMATE"."COMMENTS" IS '코멘트';
   COMMENT ON TABLE "SPOT"."SPOTMATE"  IS '스팟메이트';
--------------------------------------------------------
--  DDL for Table USERREVIEW
--------------------------------------------------------

  CREATE TABLE "SPOT"."USERREVIEW" 
   (	"NO" NUMBER, 
	"RESVNO" NUMBER, 
	"STAR" NUMBER, 
	"CONTENT" VARCHAR2(1000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "SPOT"."USERREVIEW"."NO" IS '리뷰번호';
   COMMENT ON COLUMN "SPOT"."USERREVIEW"."RESVNO" IS '예약번호';
   COMMENT ON COLUMN "SPOT"."USERREVIEW"."STAR" IS '별점';
   COMMENT ON COLUMN "SPOT"."USERREVIEW"."CONTENT" IS '내용';
   COMMENT ON TABLE "SPOT"."USERREVIEW"  IS '손님리뷰';
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "SPOT"."USERS" 
   (	"NO" NUMBER, 
	"ID" VARCHAR2(100 BYTE), 
	"PW" VARCHAR2(100 BYTE), 
	"NAME" VARCHAR2(100 BYTE), 
	"EMAIL" VARCHAR2(100 BYTE), 
	"PHONE" VARCHAR2(100 BYTE), 
	"ADDRESS" VARCHAR2(100 BYTE), 
	"GENDER" VARCHAR2(100 BYTE), 
	"BIRTH" VARCHAR2(100 BYTE), 
	"LICENSENO" VARCHAR2(100 BYTE), 
	"LICENSETYPE" VARCHAR2(100 BYTE), 
	"KAKAOEMAIL" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "SPOT"."USERS"."NO" IS '회원번호';
   COMMENT ON COLUMN "SPOT"."USERS"."ID" IS '아이디';
   COMMENT ON COLUMN "SPOT"."USERS"."PW" IS '패스워드';
   COMMENT ON COLUMN "SPOT"."USERS"."NAME" IS '이름';
   COMMENT ON COLUMN "SPOT"."USERS"."EMAIL" IS '이메일';
   COMMENT ON COLUMN "SPOT"."USERS"."PHONE" IS '휴대폰';
   COMMENT ON COLUMN "SPOT"."USERS"."ADDRESS" IS '주소';
   COMMENT ON COLUMN "SPOT"."USERS"."GENDER" IS '성별';
   COMMENT ON COLUMN "SPOT"."USERS"."BIRTH" IS '생년월일';
   COMMENT ON COLUMN "SPOT"."USERS"."LICENSENO" IS '면허등록번호';
   COMMENT ON COLUMN "SPOT"."USERS"."LICENSETYPE" IS '면허종류';
   COMMENT ON TABLE "SPOT"."USERS"  IS '회원';
REM INSERTING into SPOT.BRAND
SET DEFINE OFF;
Insert into SPOT.BRAND (NO,CATENO,NAME) values (1,1,'S-OIL');
Insert into SPOT.BRAND (NO,CATENO,NAME) values (2,1,'GS-칼텍스');
REM INSERTING into SPOT.CAR
SET DEFINE OFF;
Insert into SPOT.CAR (NO,USERNO,CARNAME,CARPICTURE,CARNO,CARCOLOR,PEOPLE,INTRODUCE) values (1,1,'benz s600','carpic1.jpg','23부 9812','화이트',4,'안녕하세요 저는 30대 직장인 드라이버입니다. 조용하게 가는 것을 선호하며, 위생에 민감한 편이기 때문에 제 차에 타실 때 비치되어 있는 손 소독제 꼭 사용해주셨으면 좋겠습니다. 또, 내릴 때는 본인 소지품 및 쓰레기는 꼭 챙겨 나가주시길 바랍니다.');
Insert into SPOT.CAR (NO,USERNO,CARNAME,CARPICTURE,CARNO,CARCOLOR,PEOPLE,INTRODUCE) values (2,2,'hyundai avante','carpic2.jpg','223바 3142','화이트',4,'안녕하세요 제 차는 항상 반려동물(강아지) 이 타고 있기 때문에 이 점 고려하셔서 예약 부탁드립니다. 그리고 유저님들도 제 차에 반려동물 탑승이 가능한데 너무 공격적이지 않은 성향이었으면 좋겠습니다. 그리고 내리실 때 개인 물품 꼭 챙겨주세요.');
Insert into SPOT.CAR (NO,USERNO,CARNAME,CARPICTURE,CARNO,CARCOLOR,PEOPLE,INTRODUCE) values (3,3,'kia k3','carpic3.jpg','234부 9812','화이트',4,'안녕하세요 저는 지금까지 메이트 이용 경험이 15회 이상이고, 자유롭고 편하게 여행 다니는 것을 굉장히 좋아합니다. 최대한 일정 조율해서 잘 다니는 편입니다. 많은 이용 부탁드립니다. ');
Insert into SPOT.CAR (NO,USERNO,CARNAME,CARPICTURE,CARNO,CARCOLOR,PEOPLE,INTRODUCE) values (4,4,'kia k5','carpic4.jpg','273바 3142','화이트',4,'안녕하세요 20대 회사원 여자입니다. 여성분만 이용 부탁드립니다.');
Insert into SPOT.CAR (NO,USERNO,CARNAME,CARPICTURE,CARNO,CARCOLOR,PEOPLE,INTRODUCE) values (5,5,'kia k7','carpic5.jpg','267부 9812','화이트',4,'안녕하세요 40대 회사원 남자입니다. 감사합니다');
Insert into SPOT.CAR (NO,USERNO,CARNAME,CARPICTURE,CARNO,CARCOLOR,PEOPLE,INTRODUCE) values (6,6,'kia k8','carpic6.jpg','952바 3142','화이트',4,'안녕하세요 30대 회사원 여자입니다. 여성분만 이용 부탁드립니다.');
Insert into SPOT.CAR (NO,USERNO,CARNAME,CARPICTURE,CARNO,CARCOLOR,PEOPLE,INTRODUCE) values (7,7,'kia k9','carpic7.jpg','594부 9812','화이트',4,'안녕하세요 50대 회사원 남자입니다. 감사합니다');
Insert into SPOT.CAR (NO,USERNO,CARNAME,CARPICTURE,CARNO,CARCOLOR,PEOPLE,INTRODUCE) values (8,8,'renaultSamsung sm3','carpic8.jpg','235바 3142','화이트',4,'안녕하세요 40대 회사원 여자입니다. 여성분만 이용 부탁드립니다.');
Insert into SPOT.CAR (NO,USERNO,CARNAME,CARPICTURE,CARNO,CARCOLOR,PEOPLE,INTRODUCE) values (9,9,'renaultSamsung sm5','carpic9.jpg','54부 9812','화이트',4,'안녕하세요 60대 회사원 남자입니다. 감사합니다');
Insert into SPOT.CAR (NO,USERNO,CARNAME,CARPICTURE,CARNO,CARCOLOR,PEOPLE,INTRODUCE) values (10,10,'renaultSamsung sm7','carpic10.jpg','91바 3142','화이트',4,'안녕하세요 50대 회사원 여자입니다.');
Insert into SPOT.CAR (NO,USERNO,CARNAME,CARPICTURE,CARNO,CARCOLOR,PEOPLE,INTRODUCE) values (11,11,'kia korando','carpic11.jpg','20부 9812','화이트',4,'안녕하세요 70대 회사원 남자입니다. 감사합니다');
Insert into SPOT.CAR (NO,USERNO,CARNAME,CARPICTURE,CARNO,CARCOLOR,PEOPLE,INTRODUCE) values (12,12,'kia sportage','carpic12.jpg','95바 3142','화이트',4,'안녕하세요 저는 30대 직장인 드라이버입니다. 조용하게 가는 것을 선호하며, 위생에 민감한 편이기 때문에 제 차에 타실 때 비치되어 있는 손 소독제 꼭 사용해주셨으면 좋겠습니다. 또, 내릴 때는 본인 소지품 및 쓰레기는 꼭 챙겨 나가주시길 바랍니다.');
Insert into SPOT.CAR (NO,USERNO,CARNAME,CARPICTURE,CARNO,CARCOLOR,PEOPLE,INTRODUCE) values (13,13,'kia sorento','carpic13.jpg','85부 9812','화이트',4,'안녕하세요 제 차는 항상 반려동물(강아지) 이 타고 있기 때문에 이 점 고려하셔서 예약 부탁드립니다. 그리고 유저님들도 제 차에 반려동물 탑승이 가능한데 너무 공격적이지 않은 성향이었으면 좋겠습니다. 그리고 내리실 때 개인 물품 꼭 챙겨주세요.');
Insert into SPOT.CAR (NO,USERNO,CARNAME,CARPICTURE,CARNO,CARCOLOR,PEOPLE,INTRODUCE) values (14,14,'kia carnival','carpic14.jpg','75바 3142','화이트',4,'안녕하세요 저는 지금까지 메이트 이용 경험이 15회 이상이고, 자유롭고 편하게 여행 다니는 것을 굉장히 좋아합니다. 최대한 일정 조율해서 잘 다니는 편입니다. 많은 이용 부탁드립니다. ');
Insert into SPOT.CAR (NO,USERNO,CARNAME,CARPICTURE,CARNO,CARCOLOR,PEOPLE,INTRODUCE) values (15,15,'volkswagen cc','carpic15.jpg','72부 9812','화이트',4,'안녕하세요 20대 회사원 여자입니다. 여성분만 이용 부탁드립니다.');
Insert into SPOT.CAR (NO,USERNO,CARNAME,CARPICTURE,CARNO,CARCOLOR,PEOPLE,INTRODUCE) values (16,16,'vlokswagen tiguan','carpic16.jpg','172바 3142','화이트',4,'안녕하세요 40대 회사원 남자입니다. 감사합니다');
Insert into SPOT.CAR (NO,USERNO,CARNAME,CARPICTURE,CARNO,CARCOLOR,PEOPLE,INTRODUCE) values (17,17,'volvo xc90','carpic17.jpg','921부 9812','화이트',4,'안녕하세요 30대 회사원 여자입니다. 여성분만 이용 부탁드립니다.');
Insert into SPOT.CAR (NO,USERNO,CARNAME,CARPICTURE,CARNO,CARCOLOR,PEOPLE,INTRODUCE) values (18,18,'genesis g80','carpic18.jpg','952바 3142','화이트',4,'안녕하세요 50대 회사원 남자입니다. 감사합니다');
Insert into SPOT.CAR (NO,USERNO,CARNAME,CARPICTURE,CARNO,CARCOLOR,PEOPLE,INTRODUCE) values (19,19,'genesis gv80','carpic19.jpg','34부 9812','화이트',4,'안녕하세요 40대 회사원 여자입니다. 여성분만 이용 부탁드립니다.');
Insert into SPOT.CAR (NO,USERNO,CARNAME,CARPICTURE,CARNO,CARCOLOR,PEOPLE,INTRODUCE) values (20,20,'genesis g90','carpic20.jpg','465바 3142','화이트',4,'안녕하세요 60대 회사원 남자입니다. 감사합니다');
Insert into SPOT.CAR (NO,USERNO,CARNAME,CARPICTURE,CARNO,CARCOLOR,PEOPLE,INTRODUCE) values (21,21,'genesis gv90','carpic21.jpg','854부 9812','화이트',4,'안녕하세요 50대 회사원 여자입니다.');
Insert into SPOT.CAR (NO,USERNO,CARNAME,CARPICTURE,CARNO,CARCOLOR,PEOPLE,INTRODUCE) values (22,22,'benz glc-220d','carpic22.jpg','953바 3142','화이트',4,'안녕하세요 70대 회사원 남자입니다. 감사합니다');
Insert into SPOT.CAR (NO,USERNO,CARNAME,CARPICTURE,CARNO,CARCOLOR,PEOPLE,INTRODUCE) values (23,23,'hyundai ionic5','carpic23.jpg','91부 9812','화이트',4,'안녕하세요 저는 30대 직장인 드라이버입니다. 조용하게 가는 것을 선호하며, 위생에 민감한 편이기 때문에 제 차에 타실 때 비치되어 있는 손 소독제 꼭 사용해주셨으면 좋겠습니다. 또, 내릴 때는 본인 소지품 및 쓰레기는 꼭 챙겨 나가주시길 바랍니다.');
Insert into SPOT.CAR (NO,USERNO,CARNAME,CARPICTURE,CARNO,CARCOLOR,PEOPLE,INTRODUCE) values (24,24,'tesla modelS','carpic24.jpg','942바 3142','화이트',4,'안녕하세요 제 차는 항상 반려동물(강아지) 이 타고 있기 때문에 이 점 고려하셔서 예약 부탁드립니다. 그리고 유저님들도 제 차에 반려동물 탑승이 가능한데 너무 공격적이지 않은 성향이었으면 좋겠습니다. 그리고 내리실 때 개인 물품 꼭 챙겨주세요.');
Insert into SPOT.CAR (NO,USERNO,CARNAME,CARPICTURE,CARNO,CARCOLOR,PEOPLE,INTRODUCE) values (25,25,'tesla modelE','carpic25.jpg','723부 9812','화이트',4,'안녕하세요 저는 지금까지 메이트 이용 경험이 15회 이상이고, 자유롭고 편하게 여행 다니는 것을 굉장히 좋아합니다. 최대한 일정 조율해서 잘 다니는 편입니다. 많은 이용 부탁드립니다. ');
Insert into SPOT.CAR (NO,USERNO,CARNAME,CARPICTURE,CARNO,CARCOLOR,PEOPLE,INTRODUCE) values (26,26,'tesla model3','carpic26.jpg','952바 3142','화이트',4,'안녕하세요 20대 회사원 여자입니다. 여성분만 이용 부탁드립니다.');
Insert into SPOT.CAR (NO,USERNO,CARNAME,CARPICTURE,CARNO,CARCOLOR,PEOPLE,INTRODUCE) values (27,27,'tesla modelY','carpic27.jpg','845부 9812','화이트',4,'안녕하세요 40대 회사원 남자입니다. 감사합니다');
Insert into SPOT.CAR (NO,USERNO,CARNAME,CARPICTURE,CARNO,CARCOLOR,PEOPLE,INTRODUCE) values (28,28,'tesla CyberTruck','carpic28.jpg','212바 3142','화이트',4,'안녕하세요 30대 회사원 여자입니다. 여성분만 이용 부탁드립니다.');
Insert into SPOT.CAR (NO,USERNO,CARNAME,CARPICTURE,CARNO,CARCOLOR,PEOPLE,INTRODUCE) values (29,29,'ssangyong tivoli','carpic29.jpg','943부 9812','화이트',4,'안녕하세요 50대 회사원 남자입니다. 감사합니다');
Insert into SPOT.CAR (NO,USERNO,CARNAME,CARPICTURE,CARNO,CARCOLOR,PEOPLE,INTRODUCE) values (30,30,'hyundai tucson','carpic30.jpg','384바 3142','화이트',4,'안녕하세요 40대 회사원 여자입니다. 여성분만 이용 부탁드립니다.');
Insert into SPOT.CAR (NO,USERNO,CARNAME,CARPICTURE,CARNO,CARCOLOR,PEOPLE,INTRODUCE) values (31,31,'genesis gv60','carpic31.jpg','964부 9812','화이트',4,'안녕하세요 60대 회사원 남자입니다. 감사합니다');
Insert into SPOT.CAR (NO,USERNO,CARNAME,CARPICTURE,CARNO,CARCOLOR,PEOPLE,INTRODUCE) values (32,32,'bmw 530i','carpic32.jpg','965바 3142','화이트',4,'안녕하세요 50대 회사원 여자입니다.');
Insert into SPOT.CAR (NO,USERNO,CARNAME,CARPICTURE,CARNO,CARCOLOR,PEOPLE,INTRODUCE) values (33,33,'audi a6','carpic33.jpg','241부 9812','화이트',4,'안녕하세요 70대 회사원 남자입니다. 감사합니다');
Insert into SPOT.CAR (NO,USERNO,CARNAME,CARPICTURE,CARNO,CARCOLOR,PEOPLE,INTRODUCE) values (34,34,'audi a8','carpic34.jpg','734바 3142','화이트',4,'안녕하세요 저는 30대 직장인 드라이버입니다. 조용하게 가는 것을 선호하며, 위생에 민감한 편이기 때문에 제 차에 타실 때 비치되어 있는 손 소독제 꼭 사용해주셨으면 좋겠습니다. 또, 내릴 때는 본인 소지품 및 쓰레기는 꼭 챙겨 나가주시길 바랍니다.');
Insert into SPOT.CAR (NO,USERNO,CARNAME,CARPICTURE,CARNO,CARCOLOR,PEOPLE,INTRODUCE) values (35,35,'audi i8','carpic35.jpg','951카 9812','화이트',4,'안녕하세요 제 차는 항상 반려동물(강아지) 이 타고 있기 때문에 이 점 고려하셔서 예약 부탁드립니다. 그리고 유저님들도 제 차에 반려동물 탑승이 가능한데 너무 공격적이지 않은 성향이었으면 좋겠습니다. 그리고 내리실 때 개인 물품 꼭 챙겨주세요.');
Insert into SPOT.CAR (NO,USERNO,CARNAME,CARPICTURE,CARNO,CARCOLOR,PEOPLE,INTRODUCE) values (36,36,'bmw 730i','carpic36.jpg','964바 3142','화이트',4,'안녕하세요 저는 지금까지 메이트 이용 경험이 15회 이상이고, 자유롭고 편하게 여행 다니는 것을 굉장히 좋아합니다. 최대한 일정 조율해서 잘 다니는 편입니다. 많은 이용 부탁드립니다. ');
Insert into SPOT.CAR (NO,USERNO,CARNAME,CARPICTURE,CARNO,CARCOLOR,PEOPLE,INTRODUCE) values (37,37,'kia ray','carpic37.jpg','758부 9812','화이트',4,'안녕하세요 20대 회사원 여자입니다. 여성분만 이용 부탁드립니다.');
Insert into SPOT.CAR (NO,USERNO,CARNAME,CARPICTURE,CARNO,CARCOLOR,PEOPLE,INTRODUCE) values (38,38,'chevorlet spark','carpic38.jpg','964바 3142','화이트',4,'안녕하세요 40대 회사원 남자입니다. 감사합니다');
Insert into SPOT.CAR (NO,USERNO,CARNAME,CARPICTURE,CARNO,CARCOLOR,PEOPLE,INTRODUCE) values (39,39,'kia morning','carpic39.jpg','803부 9812','화이트',4,'안녕하세요 30대 회사원 여자입니다. 여성분만 이용 부탁드립니다.');
Insert into SPOT.CAR (NO,USERNO,CARNAME,CARPICTURE,CARNO,CARCOLOR,PEOPLE,INTRODUCE) values (40,40,'chevorlet forte','carpic40.jpg','734바 3142','화이트',4,'안녕하세요 50대 회사원 남자입니다. 감사합니다');
Insert into SPOT.CAR (NO,USERNO,CARNAME,CARPICTURE,CARNO,CARCOLOR,PEOPLE,INTRODUCE) values (41,41,'kia soul','carpic41.jpg','943부 9812','화이트',4,'안녕하세요 40대 회사원 여자입니다. 여성분만 이용 부탁드립니다.');
Insert into SPOT.CAR (NO,USERNO,CARNAME,CARPICTURE,CARNO,CARCOLOR,PEOPLE,INTRODUCE) values (42,42,'gm matiz','carpic42.jpg','057바 3142','화이트',4,'안녕하세요 60대 회사원 남자입니다. 감사합니다');
Insert into SPOT.CAR (NO,USERNO,CARNAME,CARPICTURE,CARNO,CARCOLOR,PEOPLE,INTRODUCE) values (43,43,'kia celtos','carpic43.jpg','71부 9812','화이트',4,'안녕하세요 50대 회사원 여자입니다.');
Insert into SPOT.CAR (NO,USERNO,CARNAME,CARPICTURE,CARNO,CARCOLOR,PEOPLE,INTRODUCE) values (44,44,'hyundai kona','carpic44.jpg','893바 3142','화이트',4,'안녕하세요 70대 회사원 남자입니다. 감사합니다');
Insert into SPOT.CAR (NO,USERNO,CARNAME,CARPICTURE,CARNO,CARCOLOR,PEOPLE,INTRODUCE) values (45,45,'hyundai dynasty','carpic45.jpg','23히 9812','화이트',4,'안녕하세요 저는 30대 직장인 드라이버입니다. 조용하게 가는 것을 선호하며, 위생에 민감한 편이기 때문에 제 차에 타실 때 비치되어 있는 손 소독제 꼭 사용해주셨으면 좋겠습니다. 또, 내릴 때는 본인 소지품 및 쓰레기는 꼭 챙겨 나가주시길 바랍니다.');
Insert into SPOT.CAR (NO,USERNO,CARNAME,CARPICTURE,CARNO,CARCOLOR,PEOPLE,INTRODUCE) values (46,46,'hyundai venue','carpic46.jpg','223파 3142','화이트',4,'안녕하세요 제 차는 항상 반려동물(강아지) 이 타고 있기 때문에 이 점 고려하셔서 예약 부탁드립니다. 그리고 유저님들도 제 차에 반려동물 탑승이 가능한데 너무 공격적이지 않은 성향이었으면 좋겠습니다. 그리고 내리실 때 개인 물품 꼭 챙겨주세요.');
Insert into SPOT.CAR (NO,USERNO,CARNAME,CARPICTURE,CARNO,CARCOLOR,PEOPLE,INTRODUCE) values (47,47,'ssangyoun chairman','carpic47.jpg','23차 9812','화이트',4,'안녕하세요 저는 지금까지 메이트 이용 경험이 15회 이상이고, 자유롭고 편하게 여행 다니는 것을 굉장히 좋아합니다. 최대한 일정 조율해서 잘 다니는 편입니다. 많은 이용 부탁드립니다. ');
Insert into SPOT.CAR (NO,USERNO,CARNAME,CARPICTURE,CARNO,CARCOLOR,PEOPLE,INTRODUCE) values (48,48,'hyundai palisade','carpic48.jpg','223사 3142','화이트',4,'안녕하세요 20대 회사원 여자입니다. 여성분만 이용 부탁드립니다.');
Insert into SPOT.CAR (NO,USERNO,CARNAME,CARPICTURE,CARNO,CARCOLOR,PEOPLE,INTRODUCE) values (49,49,'hyundai staria','carpic49.jpg','23라 9812','화이트',4,'안녕하세요 40대 회사원 남자입니다. 감사합니다');
Insert into SPOT.CAR (NO,USERNO,CARNAME,CARPICTURE,CARNO,CARCOLOR,PEOPLE,INTRODUCE) values (50,50,'renaultSamsung xm3','carpic50.jpg','223마 3142','화이트',4,'안녕하세요 30대 회사원 여자입니다. 여성분만 이용 부탁드립니다.');
Insert into SPOT.CAR (NO,USERNO,CARNAME,CARPICTURE,CARNO,CARCOLOR,PEOPLE,INTRODUCE) values (52,52,null,null,null,null,null,null);
REM INSERTING into SPOT.CARDETAIL
SET DEFINE OFF;
Insert into SPOT.CARDETAIL (NO,CARNO,DETAILNO) values (3,3,1);
Insert into SPOT.CARDETAIL (NO,CARNO,DETAILNO) values (4,4,1);
Insert into SPOT.CARDETAIL (NO,CARNO,DETAILNO) values (5,5,1);
Insert into SPOT.CARDETAIL (NO,CARNO,DETAILNO) values (6,6,1);
Insert into SPOT.CARDETAIL (NO,CARNO,DETAILNO) values (7,7,1);
Insert into SPOT.CARDETAIL (NO,CARNO,DETAILNO) values (8,8,1);
Insert into SPOT.CARDETAIL (NO,CARNO,DETAILNO) values (9,9,1);
Insert into SPOT.CARDETAIL (NO,CARNO,DETAILNO) values (10,10,1);
Insert into SPOT.CARDETAIL (NO,CARNO,DETAILNO) values (11,11,1);
Insert into SPOT.CARDETAIL (NO,CARNO,DETAILNO) values (12,12,1);
Insert into SPOT.CARDETAIL (NO,CARNO,DETAILNO) values (13,13,1);
Insert into SPOT.CARDETAIL (NO,CARNO,DETAILNO) values (14,14,1);
Insert into SPOT.CARDETAIL (NO,CARNO,DETAILNO) values (15,15,1);
Insert into SPOT.CARDETAIL (NO,CARNO,DETAILNO) values (16,16,1);
Insert into SPOT.CARDETAIL (NO,CARNO,DETAILNO) values (51,51,1);
Insert into SPOT.CARDETAIL (NO,CARNO,DETAILNO) values (52,51,5);
Insert into SPOT.CARDETAIL (NO,CARNO,DETAILNO) values (20,20,1);
Insert into SPOT.CARDETAIL (NO,CARNO,DETAILNO) values (21,21,1);
Insert into SPOT.CARDETAIL (NO,CARNO,DETAILNO) values (22,22,1);
Insert into SPOT.CARDETAIL (NO,CARNO,DETAILNO) values (23,23,1);
Insert into SPOT.CARDETAIL (NO,CARNO,DETAILNO) values (24,24,1);
Insert into SPOT.CARDETAIL (NO,CARNO,DETAILNO) values (25,25,1);
Insert into SPOT.CARDETAIL (NO,CARNO,DETAILNO) values (26,26,1);
Insert into SPOT.CARDETAIL (NO,CARNO,DETAILNO) values (27,27,1);
Insert into SPOT.CARDETAIL (NO,CARNO,DETAILNO) values (28,28,1);
Insert into SPOT.CARDETAIL (NO,CARNO,DETAILNO) values (29,29,1);
Insert into SPOT.CARDETAIL (NO,CARNO,DETAILNO) values (30,30,1);
Insert into SPOT.CARDETAIL (NO,CARNO,DETAILNO) values (31,31,1);
Insert into SPOT.CARDETAIL (NO,CARNO,DETAILNO) values (32,32,1);
Insert into SPOT.CARDETAIL (NO,CARNO,DETAILNO) values (33,33,1);
Insert into SPOT.CARDETAIL (NO,CARNO,DETAILNO) values (34,34,1);
Insert into SPOT.CARDETAIL (NO,CARNO,DETAILNO) values (35,35,1);
Insert into SPOT.CARDETAIL (NO,CARNO,DETAILNO) values (36,36,1);
Insert into SPOT.CARDETAIL (NO,CARNO,DETAILNO) values (37,37,1);
Insert into SPOT.CARDETAIL (NO,CARNO,DETAILNO) values (38,38,1);
Insert into SPOT.CARDETAIL (NO,CARNO,DETAILNO) values (39,39,1);
Insert into SPOT.CARDETAIL (NO,CARNO,DETAILNO) values (40,40,1);
Insert into SPOT.CARDETAIL (NO,CARNO,DETAILNO) values (41,41,1);
Insert into SPOT.CARDETAIL (NO,CARNO,DETAILNO) values (42,42,1);
Insert into SPOT.CARDETAIL (NO,CARNO,DETAILNO) values (43,43,1);
Insert into SPOT.CARDETAIL (NO,CARNO,DETAILNO) values (44,44,1);
Insert into SPOT.CARDETAIL (NO,CARNO,DETAILNO) values (45,45,1);
Insert into SPOT.CARDETAIL (NO,CARNO,DETAILNO) values (46,46,1);
Insert into SPOT.CARDETAIL (NO,CARNO,DETAILNO) values (47,47,1);
Insert into SPOT.CARDETAIL (NO,CARNO,DETAILNO) values (48,48,1);
Insert into SPOT.CARDETAIL (NO,CARNO,DETAILNO) values (49,49,1);
Insert into SPOT.CARDETAIL (NO,CARNO,DETAILNO) values (50,50,1);
Insert into SPOT.CARDETAIL (NO,CARNO,DETAILNO) values (1,1,1);
Insert into SPOT.CARDETAIL (NO,CARNO,DETAILNO) values (2,2,1);
REM INSERTING into SPOT.CATEGORY
SET DEFINE OFF;
Insert into SPOT.CATEGORY (NO,NAME) values (1,'주유');
Insert into SPOT.CATEGORY (NO,NAME) values (2,'음료');
Insert into SPOT.CATEGORY (NO,NAME) values (3,'음식');
REM INSERTING into SPOT.COUPON
SET DEFINE OFF;
Insert into SPOT.COUPON (NO,BRANDNO,POINT,REGDATE,IMGSRC) values (1,1,3000,to_date('22/09/03','RR/MM/DD'),'/assets/images/soil_3.png');
Insert into SPOT.COUPON (NO,BRANDNO,POINT,REGDATE,IMGSRC) values (2,1,5000,to_date('22/09/03','RR/MM/DD'),'/assets/images/soil_5.png');
Insert into SPOT.COUPON (NO,BRANDNO,POINT,REGDATE,IMGSRC) values (3,1,10000,to_date('22/09/03','RR/MM/DD'),'/assets/images/soil_10.png');
Insert into SPOT.COUPON (NO,BRANDNO,POINT,REGDATE,IMGSRC) values (4,1,30000,to_date('22/09/03','RR/MM/DD'),'/assets/images/soil_30.png');
Insert into SPOT.COUPON (NO,BRANDNO,POINT,REGDATE,IMGSRC) values (5,1,50000,to_date('22/09/03','RR/MM/DD'),'/assets/images/soil_50.png');
Insert into SPOT.COUPON (NO,BRANDNO,POINT,REGDATE,IMGSRC) values (6,1,100000,to_date('22/09/03','RR/MM/DD'),'/assets/images/soil_100.png');
Insert into SPOT.COUPON (NO,BRANDNO,POINT,REGDATE,IMGSRC) values (7,2,3000,to_date('22/09/03','RR/MM/DD'),'/assets/images/gs_3.png');
Insert into SPOT.COUPON (NO,BRANDNO,POINT,REGDATE,IMGSRC) values (8,2,5000,to_date('22/09/03','RR/MM/DD'),'/assets/images/gs_5.png');
Insert into SPOT.COUPON (NO,BRANDNO,POINT,REGDATE,IMGSRC) values (9,2,10000,to_date('22/09/03','RR/MM/DD'),'/assets/images/gs_10.png');
Insert into SPOT.COUPON (NO,BRANDNO,POINT,REGDATE,IMGSRC) values (10,2,30000,to_date('22/09/03','RR/MM/DD'),'/assets/images/gs_30.png');
Insert into SPOT.COUPON (NO,BRANDNO,POINT,REGDATE,IMGSRC) values (11,2,50000,to_date('22/09/03','RR/MM/DD'),'/assets/images/gs_50.png');
Insert into SPOT.COUPON (NO,BRANDNO,POINT,REGDATE,IMGSRC) values (12,2,100000,to_date('22/09/03','RR/MM/DD'),'/assets/images/gs_100.png');
REM INSERTING into SPOT.COUPONUSAGE
SET DEFINE OFF;
REM INSERTING into SPOT.DETAILOPT
SET DEFINE OFF;
Insert into SPOT.DETAILOPT (NO,NAME) values (1,'비흡연자');
Insert into SPOT.DETAILOPT (NO,NAME) values (2,'여성드라이버');
Insert into SPOT.DETAILOPT (NO,NAME) values (3,'반려동물');
Insert into SPOT.DETAILOPT (NO,NAME) values (4,'충전기 사용 가능');
Insert into SPOT.DETAILOPT (NO,NAME) values (5,'트렁크 사용 가능');
REM INSERTING into SPOT.DRIVERREVIEW
SET DEFINE OFF;
Insert into SPOT.DRIVERREVIEW (NO,RESVNO,USERNO,STAR) values (1,1,2,5);
Insert into SPOT.DRIVERREVIEW (NO,RESVNO,USERNO,STAR) values (2,1,3,4.5);
Insert into SPOT.DRIVERREVIEW (NO,RESVNO,USERNO,STAR) values (3,1,4,4.5);
Insert into SPOT.DRIVERREVIEW (NO,RESVNO,USERNO,STAR) values (4,1,5,4.5);
Insert into SPOT.DRIVERREVIEW (NO,RESVNO,USERNO,STAR) values (5,1,6,5);
REM INSERTING into SPOT.MYQNA
SET DEFINE OFF;
REM INSERTING into SPOT.NOTICE
SET DEFINE OFF;
Insert into SPOT.NOTICE (NO,TYPE,TITLE,HIT,REGDATE,ADMIN,CONTENT) values (1,'히치하이크','히치하이크 이용시 현재 위치를 기준으로 어디까지 차 정보가 나오나요?',12345,to_date('22/09/03','RR/MM/DD'),'운영자','내용');
REM INSERTING into SPOT.PLACE
SET DEFINE OFF;
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (1,1,'1',0,'end',null,'강원 강릉시 저동 94',37.7950741626953,128.896636344738,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (1,1,'2',0,'end',null,'서울 관악구 봉천동 50-117',37.4845096806836,126.95163025172825,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (3,3,'1',0,'end',null,'경기 평택시 비전동 1104',36.9991811281677,127.112541317207,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (3,3,'2',0,'end',null,'서울 강북구 우이동 산 40-1',37.65888882945633,127.00902108350806,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (4,4,'1',-1,'start','14:16','서울 강남구 신사동 613-8',37.52700705378016,127.03048863680756,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (4,4,'1',0,'end',null,'경기 광주시 송정동 339-7',37.426316124008416,127.25606599488702,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (4,4,'2',0,'end',null,'서울 관악구 봉천동 56-2',37.48358208156306,126.95271627238819,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (5,5,'1',0,'end',null,'인천 연수구 송도동 300',37.419826700538124,126.61104869894751,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (5,5,'2',0,'end',null,'서울 관악구 봉천동 862-1',37.481059011807,126.95210733258887,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (6,6,'1',0,'end',null,'강원 홍천군 홍천읍 희망리 105',37.69450163327655,127.88709899325522,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (6,6,'2',0,'end',null,'서울 관악구 봉천동 861-8',37.481797994095395,126.95249127231104,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (7,7,'1',0,'end',null,'강원 원주시 무실동 1749',37.341941842154114,127.92349256626395,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (7,7,'2',0,'end',null,'서울 동작구 사당동',37.49492894213356,126.97481438285563,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (8,8,'1',0,'end',null,'전남 화순군 화순읍 수만리 산 34',35.09533858648773,127.01596803583945,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (9,9,'1',0,'end',null,'경기 의정부시 의정부동 404-18',37.74522270300485,127.04040371419462,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (9,9,'2',0,'end',null,'경기 부천시 심곡본동 549',37.483389171505,126.782296549348,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (10,10,'1',0,'end',null,'경기 용인시 기흥구 마북동 산 2-12',37.316587373945296,127.13048094633683,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (10,10,'2',0,'end',null,'서울 관악구 봉천동 860-13',37.482924090365245,126.95208352937476,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (12,12,'1',0,'end',null,'경기 포천시 군내면 구읍리 699',37.89179687467128,127.20104272629274,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (12,12,'2',0,'end',null,'서울 관악구 봉천동 976-1',37.482185568193735,126.95284152146128,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (13,13,'1',0,'end',null,'경기 이천시 진리동 377-1',37.26777046341175,127.44743554816938,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (13,13,'2',0,'end',null,'경기 성남시 분당구 정자동 97-3',37.370150892237,127.10613880132,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (14,14,'1',-1,'start','22:33','서울 영등포구 여의도동 15-24',37.52738007729457,126.91962047223264,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (14,14,'1',0,'end',null,'경북 울진군 근남면 수곡리 산 98-1',36.961468882021116,129.3346949744699,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (15,15,'1',0,'end',null,'경기 남양주시 진접읍 부평리 681-5',37.737846693395134,127.20322368696434,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (15,15,'2',0,'end',null,'서울 관악구 봉천동 861-7',37.48194204604877,126.95221983136975,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (16,16,'1',0,'end',null,'강원 홍천군 서면 대곡리 산 3',37.64976270255371,127.66963891789267,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (16,16,'2',0,'end',null,'서울 강남구 도곡동',37.4818037639471,127.046595188917,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (17,17,'1',2,'waypoint','18:00','전남 여수시 종화동 458',34.737691637257065,127.74701258136004,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (17,17,'1',0,'end',null,'전남 여수시 학동 100',34.76018445362133,127.66238194862518,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (18,18,null,0,'end',null,'서울 동작구 사당동 181-20',37.490667170637664,126.96142993085553,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (19,19,null,-1,'start','22:10','서울 관악구 봉천동 1519-6',37.48402332970487,126.95210544047575,'126.9522858266789,37.483943467562824,126.95235240273398,37.484034163125614,126.95238594242501,37.48406149208838,126.95243078784762,37.484088921288425,126.95243078784762,37.484088921288425,126.95302195355448,37.483859888102664,126.95302195355448,37.483859888102664,126.95339755443818,37.48368300563124,126.95339755443818,37.48368300563124,126.95369300906118,37.4835774963498,126.95369300906118,37.4835774963498,126.95380669355586,37.48353345049966,126.95380669355586,37.48353345049966,126.95399876364225,37.48354416167389,126.95399876364225,37.48354416167389,126.9542952214612,37.483366575593344,126.9542952214612,37.483366575593344,126.95425075248934,37.48331211886701,126.95425075248934,37.48331211886701,126.95358259473325,37.48257635069537,126.95358259473325,37.48257635069537,126.95338110684605,37.48243039761361,126.95314733755862,37.482167021383376,126.95314733755862,37.482167021383376,126.95331742159357,37.482132486225616,126.95331742159357,37.482132486225616,126.95349541806715,37.48234130499018,126.95351740067159,37.48238655231014,126.95358259473325,37.48257635069537,126.95358259473325,37.48257635069537,126.95425075248934,37.48331211886701,126.95425075248934,37.48331211886701,126.9542952214612,37.483366575593344,126.9542952214612,37.483366575593344,126.95439546521878,37.483475589054386,126.95439546521878,37.483475589054386,126.95500785114484,37.48334584936995,126.95540555431144,37.483205198030305,126.95540555431144,37.483205198030305,126.95550868422826,37.48310699407932,126.95557651765147,37.48310759375553,126.95586996099163,37.48314622955831');
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (19,19,null,0,'end',null,'서울 관악구 봉천동 64-7',37.48297063304206,126.95591636721736,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (20,20,'1',0,'end',null,'전남 여수시 학동 100',34.7604010648756,127.662331251576,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (21,21,'1',2,'waypoint','18:30','전남 여수시 종화동 300-3',34.73648684742071,127.74915280163137,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (21,21,'1',0,'end',null,'전남 여수시 학동 100',34.7604010648756,127.662331251576,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (22,22,'1',1,'waypoint','13:30','강원 원주시 단계동 814',37.35030866973348,127.93082942406257,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (22,22,'1',0,'end',null,'충북 단양군 단양읍 고수리 185',36.9888245349883,128.381696108875,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (22,22,'2',0,'end',null,'서울 관악구 봉천동 862-1',37.48100492835666,126.95205083661891,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (76,76,null,0,'end',null,'경기 성남시 분당구 삼평동 698',37.4046062691745,127.105848545325,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (24,24,'1',0,'end',null,'전남 여수시 학동 100',34.7604010648756,127.662331251576,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (28,28,null,0,'end',null,'경기 성남시 분당구 삼평동 698',37.4046062691745,127.105848545325,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (29,29,null,0,'end',null,'경기 성남시 분당구 판교동 512-4',37.39967082958097,127.09481540399804,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (30,30,null,-1,'start','17:00','서울 관악구 봉천동 860-21',37.4826900288762,126.95258115832021,'126.95259675402441,37.48272980438116,126.95286946922648,37.48263310605275,126.95286946922648,37.48263310605275,126.95265868932667,37.48234290106183,126.95265868932667,37.48234290106183,126.9526274140519,37.48215340287102,126.9526274140519,37.48215340287102,126.95195901029852,37.482246591288664,126.95195901029852,37.482246591288664,126.95184570430531,37.48226360717233,126.95184570430531,37.48226360717233,126.95071339765485,37.482379703585146,126.95071339765485,37.482379703585146,126.95184570430531,37.48226360717233,126.95184570430531,37.48226360717233,126.95195901029852,37.482246591288664,126.95195901029852,37.482246591288664,126.9526274140519,37.48215340287102,126.9526274140519,37.48215340287102,126.95285389959972,37.48212837889045,126.95285389959972,37.48212837889045,126.95309194183326,37.48208543583699,126.95309194183326,37.48208543583699,126.95325072030286,37.48205080059372,126.95325072030286,37.48205080059372,126.95331742159357,37.482132486225616,126.95331742159357,37.482132486225616,126.95349541806715,37.48234130499018,126.95351740067159,37.48238655231014,126.95358259473325,37.48257635069537,126.95358259473325,37.48257635069537,126.95425075248934,37.48331211886701,126.95425075248934,37.48331211886701,126.9542952214612,37.483366575593344,126.9542952214612,37.483366575593344,126.95439546521878,37.483475589054386,126.95439546521878,37.483475589054386,126.95457309121682,37.48371143446912,126.95457309121682,37.48371143446912,126.95536299777943,37.48463749450606,126.95536299777943,37.48463749450606,126.95581876127484,37.48520017571619,126.95581876127484,37.48520017571619,126.95589664862861,37.485290969267744,126.95589664862861,37.485290969267744,126.95594099456808,37.485354434802915,126.95594099456808,37.485354434802915,126.95616310144442,37.48564473400318,126.95616310144442,37.48564473400318,126.95646422670134,37.485944741284996,126.95685342250499,37.48641672529999,126.95685342250499,37.48641672529999,126.95710278237515,37.486373874193596,126.95712539451198,37.486374073799674,126.95712539451198,37.486374073799674,126.95806367325697,37.486391363051574,126.95806367325697,37.486391363051574,126.95816542792937,37.486392260417695,126.95816542792937,37.486392260417695,126.95870836969809,37.48637902605642,126.95870836969809,37.48637902605642,126.95891225414154,37.486353791336995,126.95891225414154,37.486353791336995,126.9591729187948,37.4863110354698,126.95987926621864,37.4859298038601,126.95987926621864,37.4859298038601,126.9600045066155,37.48586783275573,126.9600045066155,37.48586783275573,126.96082440436315,37.485451552835606,126.96102890950361,37.48538126728542,126.96102890950361,37.48538126728542,126.96113116193271,37.4853461243751,126.96113116193271,37.4853461243751,126.9612398551417,37.48566244838369,126.96123773445282,37.485815608614196,126.9612127522025,37.48598658887273,126.9612127522025,37.48598658887273,126.96110937605988,37.4861028166575,126.96109769572293,37.48612974550985,126.96106015925585,37.4863907205376,126.96106015925585,37.4863907205376,126.9610561665622,37.48667902209231,126.9610561665622,37.48667902209231,126.96123669037351,37.48670764104961,126.96123669037351,37.48670764104961,126.9613383208386,37.48671754511364');
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (30,30,null,0,'end',null,'서울 관악구 봉천동 1717',37.48712616632446,126.96129606719593,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (31,31,null,0,'end',null,'서울 관악구 봉천동 634-112',37.486991229494684,126.94019727526997,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (32,32,null,0,'end',null,'서울 관악구 봉천동 1536-17',37.47888209230712,126.94007937455584,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (33,33,null,0,'end',null,'서울 관악구 봉천동 982-1',37.48698482111235,126.94557941162941,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (34,34,null,0,'end',null,'서울 구로구 구로동 584-34',37.50116423225744,126.88091480214636,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (35,35,null,0,'end',null,'서울 동작구 사당동 1147',37.486885043168435,126.96853266154673,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (36,36,null,0,'end',null,'서울 관악구 신림동 110-72',37.47259899939454,126.93433023186441,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (37,37,null,-1,'start','12:00','서울 관악구 봉천동 1560-61',37.47878536252518,126.94497484711108,'126.94496337113262,37.478796373338966,126.94546167229127,37.47873774828924,126.9455184498747,37.478720233997244,126.94554131281986,37.478702417003575,126.94556430235049,37.47867559061426,126.9455667076698,37.47850441218221,126.9455667076698,37.47850441218221,126.9457480914259,37.47846998871714,126.9457480914259,37.47846998871714,126.94564516983235,37.47774822856761,126.94564516983235,37.47774822856761,126.94556194773615,37.477233886095284,126.94556194773615,37.477233886095284,126.94548939828736,37.476764691400106,126.94548939828736,37.476764691400106,126.94482128815493,37.47683982132894,126.94482128815493,37.47683982132894,126.94445903450104,37.47687262769578,126.94445903450104,37.47687262769578,126.94407404460024,37.47691424028003,126.94407404460024,37.47691424028003,126.9437117903147,37.476947044344726,126.9437117903147,37.476947044344726,126.94351935846166,37.476963344876765,126.94171913245277,37.477145465519804,126.94167391396431,37.47714506049101,126.94092248027273,37.47671483281731,126.94092248027273,37.47671483281731,126.94105966046517,37.476607936130456,126.94105966046517,37.476607936130456,126.94098141865267,37.47654416121923,126.94075596390307,37.47649708761652,126.94075596390307,37.47649708761652,126.94084894311523,37.47631771073168');
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (37,37,null,0,'end',null,'서울 관악구 신림동 1564-17',37.47634166239916,126.94090669671517,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (38,38,null,0,'end',null,'서울 영등포구 신길동 151-6',37.5107184910768,126.91667497166111,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (39,39,null,0,'end',null,'서울 동작구 사당동 240-15',37.48315517329341,126.96969878737035,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (40,40,null,-1,'start','19:05','서울 관악구 봉천동 871-6',37.483464432266985,126.95143871560867,'126.95144369251433,37.48352151264309,126.9515229577456,37.48351320558988,126.9515229577456,37.48351320558988,126.95166980488813,37.483523519210024,126.95166980488813,37.483523519210024,126.95205331509914,37.483589995197065,126.95205331509914,37.483589995197065,126.9519882499534,37.483391186643026,126.9519882499534,37.483391186643026,126.95200182075787,37.48322911768377,126.95200182075787,37.48322911768377,126.95198134899462,37.483075757265325,126.95198134899462,37.483075757265325,126.95194919423056,37.48294932476066,126.95194919423056,37.48294932476066,126.9519388954996,37.48287714924696,126.9519388954996,37.48287714924696,126.95191829809217,37.48273279821515,126.95191829809217,37.48273279821515,126.95187647421699,37.4824891431512,126.95187647421699,37.4824891431512,126.95186604975194,37.48242597703112,126.95186604975194,37.48242597703112,126.95184570430531,37.48226360717233,126.95184570430531,37.48226360717233,126.95071339765485,37.482379703585146,126.95071339765485,37.482379703585146,126.95184570430531,37.48226360717233,126.95184570430531,37.48226360717233,126.95195901029852,37.482246591288664,126.95195901029852,37.482246591288664,126.9526274140519,37.48215340287102,126.9526274140519,37.48215340287102,126.95285389959972,37.48212837889045,126.95285389959972,37.48212837889045,126.95292273790871,37.48205690482101,126.95294597734154,37.48201205817144,126.9529473603162,37.481912954690856,126.95293706074138,37.48184077923926,126.95293706074138,37.48184077923926,126.95287073732106,37.48173206517647,126.95287073732106,37.48173206517647,126.95270618711297,37.481370185786,126.95270618711297,37.481370185786,126.95265217576835,37.48118949655458,126.95265217576835,37.48118949655458,126.95256714155907,37.48080129024244,126.95256714155907,37.48080129024244,126.95245146292626,37.480178538534226,126.95245146292626,37.480178538534226,126.95244745281961,37.4796558925755,126.95244745281961,37.4796558925755,126.95240764114483,37.47926808701637,126.95240764114483,37.47926808701637,126.95230251606263,37.47869949175725,126.95230251606263,37.47869949175725,126.95140817059946,37.47878166302228,126.95140817059946,37.47878166302228,126.95057022190677,37.478873338965506,126.95057022190677,37.478873338965506,126.95015156196152,37.47889665118624,126.95015156196152,37.47889665118624,126.94989117065857,37.47892136870697,126.94989117065857,37.47892136870697,126.94956257131234,37.478972510824704,126.94956257131234,37.478972510824704,126.94929087465384,37.47899712650565,126.94929087465384,37.47899712650565,126.9487249971966,37.47903714540881,126.9487249971966,37.47903714540881,126.94810208934342,37.479112695952765,126.94810208934342,37.479112695952765,126.94730947966603,37.47919574183641,126.94730947966603,37.47919574183641,126.94587159973479,37.47933610070275,126.94587159973479,37.47933610070275,126.94519228864301,37.47940212210109,126.94519228864301,37.47940212210109,126.9444676297879,37.479476744980076,126.9444676297879,37.479476744980076,126.94443485545669,37.47939535750377,126.94437323598586,37.478953291529315,126.94437323598586,37.478953291529315,126.9443107299565,37.47857429121415,126.9443107299565,37.47857429121415,126.94422979781189,37.477897779010696,126.94422979781189,37.477897779010696,126.94415738292989,37.477419574278144,126.94415738292989,37.477419574278144,126.94407404460024,37.47691424028003,126.94407404460024,37.47691424028003,126.9437117903147,37.476947044344726,126.9437117903147,37.476947044344726,126.94364561135905,37.476829315895,126.94358095451034,37.47660347474873,126.94337160754976,37.47541221370637,126.94337160754976,37.47541221370637,126.94333947032388,37.47528577896716,126.9432952677566,37.47521329945784,126.94323925351044,37.47517675638667,126.94318323931904,37.47514021328956,126.94318323931904,37.47514021328956,126.94325195327662,37.47507775420395,126.94325195327662,37.47507775420395,126.9435136013046,37.47496295722356');
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (40,40,null,0,'end',null,'서울 관악구 봉천동 산 174-650',37.474695099570454,126.94566745991384,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (41,41,null,0,'end',null,'서울 관악구 봉천동 1519-4',37.483896981203415,126.95159672712175,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (42,42,null,0,'end',null,'서울 관악구 신림동 98-221',37.4749809510928,126.94053469681954,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (43,43,null,-1,'start','19:03','서울 관악구 신림동 산 78-1',37.46033994164351,126.9253889902248,'126.92579478209903,37.46093600116508,126.92697779912609,37.46041512787731,126.92697779912609,37.46041512787731,126.92711458225432,37.460335275031255,126.92737736040301,37.46013942879516,126.92737736040301,37.46013942879516,126.92753816201336,37.45996067757878,126.92760880453119,37.4597630869083,126.92766981726352,37.45944827184009,126.92766981726352,37.45944827184009,126.92770809708576,37.459142260979434,126.92777848105669,37.458962688899916,126.92777848105669,37.458962688899916,126.92796316891874,37.45869404840644,126.92810059084452,37.45856914747787,126.92824854258228,37.458498405109005,126.92850951159939,37.458428687357824,126.92873567524954,37.45842172727688,126.92914176764471,37.45847947115642,126.92970492990455,37.45861973119231,126.92970492990455,37.45861973119231,126.92980600403209,37.45866569928096,126.92980600403209,37.45866569928096,126.92994085531645,37.45872098368309,126.93017639631803,37.45884926384047,126.9304784660425,37.45906825105829,126.93064542800502,37.45924997281377,126.93097871304455,37.45965846252615,126.93097871304455,37.45965846252615,126.93126743476077,37.46002149558381,126.93126743476077,37.46002149558381,126.93141166844651,37.460212021234035,126.93141166844651,37.460212021234035,126.93147845504183,37.460284709452026,126.93161100312201,37.46050216080399,126.93166610353087,37.46060177486946,126.93174278292328,37.460773668280375,126.93181920632976,37.4609635803982,126.93191618400789,37.461297846827655,126.93194752759274,37.4614783408478,126.93194624607618,37.46156843462378,126.93194624607618,37.46156843462378,126.93187228088195,37.462000271775665,126.93187228088195,37.462000271775665,126.93170637958332,37.46333233110165,126.93170637958332,37.46333233110165,126.93161726239913,37.4640343469275,126.93161726239913,37.4640343469275,126.93158978532593,37.46437649869557,126.93158978532593,37.46437649869557,126.93155126167855,37.46470052949215,126.93155126167855,37.46470052949215,126.9314504536072,37.465429470893284,126.9314504536072,37.465429470893284,126.9313820133048,37.46626683117414,126.9313820133048,37.46626683117414,126.93139216208847,37.466348017710004,126.93139216208847,37.466348017710004,126.93144316277682,37.466735931628634,126.93144316277682,37.466735931628634,126.93152897076443,37.46706108655888,126.93189210174667,37.46775818015587,126.93189210174667,37.46775818015587,126.93203532605665,37.46802077999433,126.93203532605665,37.46802077999433,126.93215671379144,37.46822911915908,126.93215671379144,37.46822911915908,126.9326967386699,37.469207135002314,126.9326967386699,37.469207135002314,126.93322547382913,37.470185046383165,126.93322547382913,37.470185046383165,126.93332810189825,37.47012289922456');
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (43,43,null,0,'end',null,'서울 관악구 신림동 1527',37.4700845991985,126.9332924219833,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (44,44,null,0,'end',null,'서울 관악구 신림동 409-400',37.47736438415377,126.93263022993912,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (45,45,null,0,'end',null,'서울 동작구 본동 산 6-13',37.50945903369177,126.95282436874433,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (46,46,null,0,'end',null,'서울 용산구 이촌동 403',37.51974725343226,126.98022672589791,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (47,47,null,0,'end',null,'서울 강남구 역삼동 693-15',37.50797367423736,127.04380426762329,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (48,48,null,-1,'start','17:09','서울 관악구 봉천동 1518-3',37.4838067642383,126.95131412232527,'126.95132496960571,37.48392593219518,126.95172129779709,37.48388439682909,126.95172129779709,37.48388439682909,126.9517725394079,37.48426329321222,126.9517725394079,37.48426329321222,126.95205543438738,37.484247781806246,126.95205543438738,37.484247781806246,126.95181675536318,37.484335769644915,126.95181675536318,37.484335769644915,126.95148649654925,37.484504038923625,126.95148649654925,37.484504038923625,126.95102935322004,37.48485139107436,126.9509833741091,37.48490504592151,126.95099392409678,37.48495920269009,126.95113812889976,37.485158714351456,126.95113812889976,37.485158714351456,126.95070560791565,37.48536211553373,126.95062571055253,37.48541546898174,126.95062571055253,37.48541546898174,126.95048865335485,37.48551336718657,126.95048865335485,37.48551336718657,126.95040862963114,37.48557572987615,126.95040862963114,37.48557572987615,126.9506677482421,37.486452051463935,126.95071196435978,37.486524528286914,126.95071196435978,37.486524528286914,126.94968159875184,37.48662349864344,126.94968159875184,37.48662349864344,126.94886617259974,37.48671536204528,126.94886617259974,37.48671536204528,126.94824370617596,37.48675487472404,126.94824370617596,37.48675487472404,126.94771130882879,37.486822217931014,126.94771130882879,37.486822217931014,126.94762073362843,37.486830421650524,126.94762073362843,37.486830421650524,126.94729222453871,37.4868725474512,126.94729222453871,37.4868725474512,126.94695240898821,37.486914571556326,126.94695240898821,37.486914571556326,126.94689322245618,37.48710326468343,126.9467546394448,37.487309270984646,126.9467546394448,37.487309270984646,126.9466735987022,37.487443706096236,126.9466735987022,37.487443706096236,126.94663892108265,37.487497459961645,126.94654606762596,37.48766783168716,126.94648675290934,37.48786553394181,126.94648675290934,37.48786553394181,126.94626193619334,37.48857535899679,126.94626193619334,37.48857535899679,126.9461303514927,37.4890877841135,126.94602580860432,37.48928508260447,126.94602580860432,37.48928508260447,126.94569184284238,37.489714606888974,126.94569184284238,37.489714606888974,126.94548465225908,37.489974062284105,126.94514013384438,37.49034942770664,126.94514013384438,37.49034942770664,126.94474899099912,37.49082349114356,126.94474899099912,37.49082349114356,126.94433484923489,37.49132437920439,126.94433484923489,37.49132437920439,126.94426561371452,37.49142287600723,126.94397381121539,37.49206902394559,126.94315452782274,37.494034996431054,126.94315452782274,37.494034996431054,126.94290018261208,37.494429182543904,126.94290018261208,37.494429182543904,126.94285342975999,37.494536890115455,126.94285342975999,37.494536890115455,126.94280680377076,37.494635588306004,126.94280680377076,37.494635588306004,126.94274696525547,37.49486932564949,126.94274696525547,37.49486932564949,126.94271075712616,37.495031190492185,126.94269716352318,37.49519325772462,126.9427385825575,37.495463943243934,126.9427385825575,37.495463943243934,126.94291962773737,37.49545655293798,126.9432009158757,37.49555818509208,126.9432460185333,37.49556759906314,126.94330280944348,37.49555008608783,126.94340521072203,37.4955059495599,126.94340521072203,37.4955059495599,126.94379169236447,37.49536523778548,126.94379169236447,37.49536523778548,126.94382434567375,37.495455634678336,126.94413308815587,37.49601704528812,126.94413308815587,37.49601704528812,126.94425797771228,37.495982119519155');
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (48,48,null,0,'end',null,'서울 동작구 상도동 214-1',37.49595823408914,126.94424982376188,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (49,49,null,0,'end',null,'인천 계양구 효성동 655-175',37.5287202218867,126.68951828279182,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (50,50,null,0,'end',null,'서울 서대문구 대신동 143-9',37.567147124059815,126.94593995297541,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (52,52,null,0,'end',null,'서울 금천구 시흥동 산 116',37.454455266770964,126.91084903600927,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (53,53,null,-1,'start','18:15','서울 관악구 봉천동 49-44',37.48450991534832,126.95220688949627,'126.95233266783517,37.48463769280042,126.95246959525622,37.48454880178306,126.95246959525622,37.48454880178306,126.95267611769799,37.48433438032221,126.95267611769799,37.48433438032221,126.95243078784762,37.484088921288425,126.95243078784762,37.484088921288425,126.95302195355448,37.483859888102664,126.95302195355448,37.483859888102664,126.95339755443818,37.48368300563124,126.95339755443818,37.48368300563124,126.95369300906118,37.4835774963498,126.95369300906118,37.4835774963498,126.95380669355586,37.48353345049966,126.95380669355586,37.48353345049966,126.95399876364225,37.48354416167389,126.95399876364225,37.48354416167389,126.9542952214612,37.483366575593344,126.9542952214612,37.483366575593344,126.95425075248934,37.48331211886701,126.95425075248934,37.48331211886701,126.95358259473325,37.48257635069537,126.95358259473325,37.48257635069537,126.95338110684605,37.48243039761361,126.95314733755862,37.482167021383376,126.95314733755862,37.482167021383376,126.95331742159357,37.482132486225616,126.95331742159357,37.482132486225616,126.95349541806715,37.48234130499018,126.95351740067159,37.48238655231014,126.95358259473325,37.48257635069537,126.95358259473325,37.48257635069537,126.95425075248934,37.48331211886701,126.95425075248934,37.48331211886701,126.9542952214612,37.483366575593344,126.9542952214612,37.483366575593344,126.95439546521878,37.483475589054386,126.95439546521878,37.483475589054386,126.95500785114484,37.48334584936995,126.95540555431144,37.483205198030305,126.95540555431144,37.483205198030305,126.95565064040669,37.483468669851646');
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (53,53,null,0,'end',null,'서울 관악구 봉천동 29-39',37.48347510468779,126.95566732848026,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (54,54,null,0,'end',null,'서울 관악구 남현동 538-12',37.474273413966614,126.98000130530998,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (55,55,null,0,'end',null,'경기 구리시 사노동 578-5',37.63047820677629,127.13305559669071,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (56,56,null,0,'end',null,'서울 종로구 부암동 48-5',37.59327473909066,126.96714047488867,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (57,57,null,0,'end',null,'경기 광명시 하안동 557-1',37.459019013244145,126.86770089853637,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (58,58,null,0,'end',null,'서울 관악구 신림동 118-20',37.47216810564051,126.93725854316845,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (59,59,null,0,'end',null,'서울 용산구 용산동6가 1-1',37.5268753641362,126.98941101514117,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (60,60,null,0,'end',null,'서울 강남구 역삼동 730',37.498873745153226,127.04318827668257,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (61,61,null,0,'end',null,'서울 관악구 신림동 산 68-3',37.46308424731366,126.93419161009578,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (62,62,null,0,'end',null,'경기 광명시 옥길동 산 21-2',37.4723812809491,126.8324177120203,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (63,63,null,0,'end',null,'서울 관악구 신림동 412-482',37.476155907344136,126.93068679177523,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (64,64,null,0,'end',null,'서울 서초구 서초동 1685-1',37.500547392613136,127.01618324290273,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (65,65,null,0,'end',null,'서울 영등포구 신길동 4898-1',37.51504025543177,126.92559472616475,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (66,66,null,0,'end',null,'서울 종로구 창신동 197-38',37.572943158931075,127.01315382012878,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (67,67,null,0,'end',null,'서울 동작구 흑석동 221',37.50637968905069,126.95839078894248,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (68,68,null,0,'end',null,'서울 관악구 신림동 98-319',37.474115867941656,126.94030928102286,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (69,69,null,0,'end',null,'서울 용산구 용산동6가 168-6',37.52468437075275,126.97808732508567,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (70,70,null,0,'end',null,'서울 서초구 서초동 1682',37.49944781953194,127.0185352523737,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (71,71,null,0,'end',null,'서울 동작구 대방동 501',37.50846211750857,126.92432319917485,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (72,72,null,0,'end',null,'서울 중구 장충동2가 산 7-22',37.55497802244918,127.00072430495484,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (73,73,null,0,'end',null,'서울 용산구 효창동 252-5',37.539366338645856,126.96116724701461,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (77,77,null,0,'end',null,'경기 성남시 분당구 삼평동 698',37.4046062691745,127.105848545325,null);
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (10,80,null,-1,'start','23:51','서울 관악구 봉천동 41-877',37.48451936398668,126.9533036263283,'126.95347668930908,37.48449465332136,126.95349678744016,37.48467504171058,126.95349678744016,37.48467504171058,126.95329328306062,37.48467323891947,126.95323650266454,37.48469075688993,126.95307721568476,37.48476142962785,126.95307721568476,37.48476142962785,126.95302156673124,37.48469786286295,126.95267611769799,37.48433438032221,126.95267611769799,37.48433438032221,126.95243078784762,37.484088921288425,126.95243078784762,37.484088921288425,126.95302195355448,37.483859888102664,126.95302195355448,37.483859888102664,126.95339755443818,37.48368300563124,126.95339755443818,37.48368300563124,126.95369300906118,37.4835774963498,126.95369300906118,37.4835774963498,126.95380669355586,37.48353345049966,126.95380669355586,37.48353345049966,126.95399876364225,37.48354416167389,126.95399876364225,37.48354416167389,126.9542952214612,37.483366575593344,126.9542952214612,37.483366575593344,126.95425075248934,37.48331211886701,126.95425075248934,37.48331211886701,126.95358259473325,37.48257635069537,126.95358259473325,37.48257635069537,126.95338110684605,37.48243039761361,126.95314733755862,37.482167021383376,126.95314733755862,37.482167021383376,126.95312510383158,37.4821397928124,126.95312510383158,37.4821397928124,126.95309194183326,37.48208543583699,126.95309194183326,37.48208543583699,126.95278557568759,37.481352868438385,126.95278557568759,37.481352868438385,126.95281095252092,37.481154861871524,126.95281095252092,37.481154861871524,126.95322020454023,37.48099629910764,126.95322020454023,37.48099629910764,126.95339078854549,37.480925726156855,126.95339078854549,37.480925726156855,126.95419810638136,37.48059948559502,126.95419810638136,37.48059948559502,126.95543689398853,37.48014189701284,126.95543689398853,37.48014189701284,126.95569829109007,37.48004509196497,126.95569829109007,37.48004509196497,126.95585744019932,37.479983424867285,126.95585744019932,37.479983424867285,126.95590291132604,37.47996580565629,126.95590291132604,37.47996580565629,126.95752880319371,37.479313383559266,126.95752880319371,37.479313383559266,126.95775340169467,37.479423491393376,126.95775340169467,37.479423491393376,126.9579840512928,37.47991209437348,126.95805050574768,37.4800117962612,126.95805050574768,37.4800117962612,126.95808404578938,37.48003912362886,126.95839871317125,37.48017705607933,126.95839871317125,37.48017705607933,126.95874692214443,37.48034231488961,126.95874692214443,37.48034231488961,126.95887040392263,37.48040647677707,126.95887040392263,37.48040647677707,126.95894904016394,37.48044321180915,126.95894904016394,37.48044321180915,126.95946558036589,37.48070005690319,126.95946558036589,37.48070005690319,126.95995639163317,37.481181936466676');
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (10,80,null,0,'end',null,'서울 관악구 봉천동 100-324',37.48117907057208,126.95997631835263,'126.986331,37.4895246,서울 서초구 방배동 827-11');
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (11,81,null,-1,'start','00:05','서울 관악구 봉천동 49-44',37.48451892543012,126.95220688375682,'126.95232123623343,37.48464660194464,126.95246959525622,37.48454880178306,126.95246959525622,37.48454880178306,126.95267611769799,37.48433438032221,126.95267611769799,37.48433438032221,126.95243078784762,37.484088921288425,126.95243078784762,37.484088921288425,126.95302195355448,37.483859888102664,126.95302195355448,37.483859888102664,126.95339755443818,37.48368300563124,126.95339755443818,37.48368300563124,126.95369300906118,37.4835774963498,126.95369300906118,37.4835774963498,126.95380669355586,37.48353345049966,126.95380669355586,37.48353345049966,126.95399876364225,37.48354416167389,126.95399876364225,37.48354416167389,126.9542952214612,37.483366575593344,126.9542952214612,37.483366575593344,126.95425075248934,37.48331211886701,126.95425075248934,37.48331211886701,126.95358259473325,37.48257635069537,126.95358259473325,37.48257635069537,126.95338110684605,37.48243039761361,126.95314733755862,37.482167021383376,126.95314733755862,37.482167021383376,126.95331742159357,37.482132486225616,126.95331742159357,37.482132486225616,126.95349541806715,37.48234130499018,126.95351740067159,37.48238655231014,126.95358259473325,37.48257635069537,126.95358259473325,37.48257635069537,126.95425075248934,37.48331211886701,126.95425075248934,37.48331211886701,126.9542952214612,37.483366575593344,126.9542952214612,37.483366575593344,126.95439546521878,37.483475589054386,126.95439546521878,37.483475589054386,126.95500785114484,37.48334584936995,126.95540555431144,37.483205198030305,126.95540555431144,37.483205198030305,126.95609634704189,37.48394115596025,126.95609634704189,37.48394115596025,126.95612134013625,37.48377017689056,126.9562266006829,37.483518812279335,126.9562266006829,37.483518812279335,126.95633148453284,37.483294475798196,126.95633148453284,37.483294475798196,126.9563101266002,37.48320418190385,126.9563101266002,37.48320418190385,126.95619403756669,37.48260846183375,126.95619403756669,37.48260846183375,126.95617280531589,37.482509158493855,126.95617280531589,37.482509158493855,126.95632102981745,37.482420362736896,126.95632102981745,37.482420362736896,126.95654914393468,37.48227820924724,126.95654914393468,37.48227820924724,126.95670867297571,37.48218951283397,126.95670867297571,37.48218951283397,126.95675427052842,37.482162883901054,126.95675427052842,37.482162883901054,126.95698250829084,37.482011720125634,126.95698250829084,37.482011720125634,126.95724491172001,37.48184283639784,126.95724491172001,37.48184283639784,126.95733610599521,37.481789578084644');
Insert into SPOT.PLACE (NO,MATENO,DAY,WAYNO,SEPPLACE,TIME,PLACE,LAT,LNG,LATLNG) values (11,81,null,0,'end',null,'서울 관악구 봉천동 66-28',37.48177281050842,126.95733034765281,'126.986331,37.4895246,서울 서초구 방배동 827-11');
REM INSERTING into SPOT.POINTREFUND
SET DEFINE OFF;
REM INSERTING into SPOT.POINTUSAGE
SET DEFINE OFF;
Insert into SPOT.POINTUSAGE (NO,USERNO,TYPE,REGDATE,AGENT,POINT,RENO) values (1,1,'충전',to_date('22/09/03','RR/MM/DD'),1000000,1000000,null);
Insert into SPOT.POINTUSAGE (NO,USERNO,TYPE,REGDATE,AGENT,POINT,RENO) values (2,2,'충전',to_date('22/09/03','RR/MM/DD'),1000000,1000000,null);
Insert into SPOT.POINTUSAGE (NO,USERNO,TYPE,REGDATE,AGENT,POINT,RENO) values (3,1,'완료',to_date('22/09/03','RR/MM/DD'),null,-230340,20);
Insert into SPOT.POINTUSAGE (NO,USERNO,TYPE,REGDATE,AGENT,POINT,RENO) values (18,1,'완료',to_date('22/09/05','RR/MM/DD'),null,123540,1);
Insert into SPOT.POINTUSAGE (NO,USERNO,TYPE,REGDATE,AGENT,POINT,RENO) values (19,1,'완료',to_date('22/09/05','RR/MM/DD'),null,123540,1);
Insert into SPOT.POINTUSAGE (NO,USERNO,TYPE,REGDATE,AGENT,POINT,RENO) values (20,1,'완료',to_date('22/09/05','RR/MM/DD'),null,123540,1);
REM INSERTING into SPOT.RESERVATION
SET DEFINE OFF;
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (1,1,1,1,to_date('22/09/03','RR/MM/DD'),123540,'close',4,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (2,2,2,2,to_date('22/09/03','RR/MM/DD'),254040,'open',3,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (3,3,3,3,to_date('22/09/03','RR/MM/DD'),53340,'open',3,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (4,4,4,4,to_date('22/09/03','RR/MM/DD'),12900,'open',2,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (5,5,5,5,to_date('22/09/03','RR/MM/DD'),24960,'open',5,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (6,6,6,6,to_date('22/09/03','RR/MM/DD'),56760,'open',2,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (7,7,7,7,to_date('22/09/03','RR/MM/DD'),58710,'open',5,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (8,8,8,8,to_date('22/09/03','RR/MM/DD'),245490,'open',1,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (9,9,9,9,to_date('22/09/03','RR/MM/DD'),32340,'open',2,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (10,10,10,10,to_date('22/09/03','RR/MM/DD'),23490,'open',2,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (11,11,11,11,to_date('22/09/03','RR/MM/DD'),241470,'open',1,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (12,12,12,12,to_date('22/09/03','RR/MM/DD'),59160,'open',2,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (13,13,13,13,to_date('22/09/03','RR/MM/DD'),33570,'open',3,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (14,14,14,14,to_date('22/09/03','RR/MM/DD'),87240,'open',5,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (15,15,15,15,to_date('22/09/03','RR/MM/DD'),38760,'open',1,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (16,16,16,16,to_date('22/09/03','RR/MM/DD'),54960,'open',2,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (17,17,17,17,to_date('22/09/03','RR/MM/DD'),230340,'open',1,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (18,18,17,17,to_date('22/09/03','RR/MM/DD'),1470,'open',1,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (19,19,17,17,to_date('22/09/03','RR/MM/DD'),1140,'open',1,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (20,17,1,17,to_date('22/09/03','RR/MM/DD'),-230340,'open',1,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (21,20,18,18,to_date('22/09/03','RR/MM/DD'),231930,'open',2,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (22,21,19,19,to_date('22/09/03','RR/MM/DD'),234390,'open',2,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (23,22,19,19,to_date('22/09/03','RR/MM/DD'),119880,'open',2,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (24,20,3,18,to_date('22/09/03','RR/MM/DD'),-230340,'open',1,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (25,20,4,18,to_date('22/09/03','RR/MM/DD'),-230340,'open',1,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (26,20,5,18,to_date('22/09/03','RR/MM/DD'),-230340,'open',1,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (27,1,1,17,null,null,null,null,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (28,1,2,17,null,null,null,null,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (29,1,3,17,null,null,null,null,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (30,1,4,17,null,null,null,null,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (31,1,5,17,null,null,null,null,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (32,1,6,17,null,null,null,null,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (42,24,16,16,to_date('22/09/03','RR/MM/DD'),244650,'open',3,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (46,28,2,2,to_date('22/09/04','RR/MM/DD'),114030,'open',4,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (35,2,1,19,null,null,null,null,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (36,2,2,19,null,null,null,null,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (37,2,3,19,null,null,null,null,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (38,2,4,19,null,null,null,null,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (39,2,5,19,null,null,null,null,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (40,2,6,19,null,null,null,null,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (93,75,19,19,to_date('22/09/04','RR/MM/DD'),103950,'open',1,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (96,80,52,52,to_date('22/09/05','RR/MM/DD'),1140,'open',3,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (47,29,3,3,to_date('22/09/04','RR/MM/DD'),107100,'open',1,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (48,30,4,4,to_date('22/09/04','RR/MM/DD'),1140,'open',2,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (49,31,5,5,to_date('22/09/04','RR/MM/DD'),2040,'open',2,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (50,32,6,6,to_date('22/09/04','RR/MM/DD'),2370,'open',1,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (51,33,7,7,to_date('22/09/04','RR/MM/DD'),91350,'open',3,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (52,34,8,8,to_date('22/09/04','RR/MM/DD'),2400,'open',1,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (53,35,9,9,to_date('22/09/04','RR/MM/DD'),1470,'open',2,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (54,36,10,10,to_date('22/09/04','RR/MM/DD'),30870,'open',1,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (55,37,11,11,to_date('22/09/04','RR/MM/DD'),1140,'open',1,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (56,38,12,12,to_date('22/09/04','RR/MM/DD'),1710,'open',1,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (57,39,13,13,to_date('22/09/04','RR/MM/DD'),2730,'open',2,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (58,40,14,14,to_date('22/09/04','RR/MM/DD'),1230,'open',1,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (59,41,15,15,to_date('22/09/04','RR/MM/DD'),1380,'open',2,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (60,42,16,16,to_date('22/09/04','RR/MM/DD'),1680,'open',1,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (61,43,20,20,to_date('22/09/04','RR/MM/DD'),1140,'open',2,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (62,44,21,21,to_date('22/09/04','RR/MM/DD'),1230,'open',2,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (63,45,22,22,to_date('22/09/04','RR/MM/DD'),1350,'open',1,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (64,46,23,23,to_date('22/09/04','RR/MM/DD'),2130,'open',2,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (65,47,24,24,to_date('22/09/04','RR/MM/DD'),1980,'open',1,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (66,48,25,25,to_date('22/09/04','RR/MM/DD'),1230,'open',1,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (67,49,26,26,to_date('22/09/04','RR/MM/DD'),6150,'open',1,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (68,50,27,27,to_date('22/09/04','RR/MM/DD'),84420,'open',2,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (97,81,7,7,to_date('22/09/06','RR/MM/DD'),1350,'open',4,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (70,52,2,2,to_date('22/09/04','RR/MM/DD'),2130,'open',1,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (71,53,3,3,to_date('22/09/04','RR/MM/DD'),1140,'open',1,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (72,54,4,4,to_date('22/09/04','RR/MM/DD'),2790,'open',1,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (73,55,5,5,to_date('22/09/04','RR/MM/DD'),11670,'open',1,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (74,56,6,6,to_date('22/09/04','RR/MM/DD'),101430,'open',2,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (75,57,7,7,to_date('22/09/04','RR/MM/DD'),3360,'open',1,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (76,58,8,8,to_date('22/09/04','RR/MM/DD'),1470,'open',1,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (77,59,9,9,to_date('22/09/04','RR/MM/DD'),2670,'open',1,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (78,60,10,10,to_date('22/09/04','RR/MM/DD'),3300,'open',1,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (79,61,11,11,to_date('22/09/04','RR/MM/DD'),1650,'open',1,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (80,62,12,12,to_date('22/09/04','RR/MM/DD'),88200,'open',2,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (81,63,13,13,to_date('22/09/04','RR/MM/DD'),1620,'open',1,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (82,64,14,14,to_date('22/09/04','RR/MM/DD'),7890,'open',1,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (83,65,15,15,to_date('22/09/04','RR/MM/DD'),2580,'open',1,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (84,66,20,20,to_date('22/09/04','RR/MM/DD'),102060,'open',2,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (85,67,21,21,to_date('22/09/04','RR/MM/DD'),1560,'open',1,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (86,68,22,22,to_date('22/09/04','RR/MM/DD'),1230,'open',2,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (87,69,23,23,to_date('22/09/04','RR/MM/DD'),2040,'open',1,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (88,70,24,24,to_date('22/09/04','RR/MM/DD'),2280,'open',1,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (89,71,25,25,to_date('22/09/04','RR/MM/DD'),3870,'open',1,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (90,72,26,26,to_date('22/09/04','RR/MM/DD'),57960,'open',1,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (91,73,27,27,to_date('22/09/04','RR/MM/DD'),2820,'open',1,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (95,77,19,19,to_date('22/09/04','RR/MM/DD'),114660,'open',1,null,null);
Insert into SPOT.RESERVATION (NO,MATENO,USERNO,DRIVERNO,REGDATE,POINT,STATUS,PEOPLE,LAT,LNG) values (94,76,19,19,to_date('22/09/04','RR/MM/DD'),121590,'open',1,null,null);
REM INSERTING into SPOT.SPOTDETAIL
SET DEFINE OFF;
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (1,1,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (1,1,4);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (2,2,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (2,2,2);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (2,2,3);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (2,2,4);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (2,2,5);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (3,3,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (3,3,2);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (3,3,5);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (4,4,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (5,5,5);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (6,6,3);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (7,7,4);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (8,8,3);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (8,8,4);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (9,9,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (9,9,2);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (9,9,3);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (9,9,4);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (9,9,5);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (10,10,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (10,10,3);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (11,11,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (11,11,2);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (12,12,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (12,12,2);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (12,12,4);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (13,13,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (13,13,5);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (14,14,4);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (14,14,5);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (15,15,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (15,15,4);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (16,16,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (17,17,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (17,17,5);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (18,18,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (19,19,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (19,19,2);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (20,20,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (20,20,5);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (21,21,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (21,21,5);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (22,22,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (22,22,5);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (23,23,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (23,23,5);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (24,24,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (24,24,5);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (25,25,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (25,25,5);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (67,75,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (67,75,5);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (27,30,2);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (27,30,4);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (28,31,3);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (29,32,2);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (30,33,4);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (31,39,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (31,39,4);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (32,40,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (32,40,3);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (33,41,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (33,41,2);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (34,42,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (34,42,3);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (35,43,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (35,43,4);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (36,44,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (36,44,3);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (36,44,4);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (37,45,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (37,45,4);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (38,46,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (38,46,4);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (39,47,3);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (40,48,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (40,48,2);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (41,49,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (41,49,2);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (42,50,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (42,50,2);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (43,51,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (43,51,4);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (44,52,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (44,52,4);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (45,53,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (45,53,2);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (46,54,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (47,55,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (47,55,2);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (48,56,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (48,56,3);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (49,57,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (50,58,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (51,59,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (51,59,4);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (52,60,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (53,61,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (53,61,4);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (54,62,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (54,62,3);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (55,63,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (56,64,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (56,64,2);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (57,65,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (57,65,2);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (58,66,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (59,67,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (59,67,2);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (60,68,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (61,69,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (61,69,3);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (62,70,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (62,70,3);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (63,71,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (64,72,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (64,72,2);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (65,73,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (69,77,1);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (69,77,5);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (10,80,3);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (10,80,5);
Insert into SPOT.SPOTDETAIL (NO,MATENO,DETAILNO) values (11,81,1);
REM INSERTING into SPOT.SPOTMATE
SET DEFINE OFF;
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (1,1,to_date('22/09/03','RR/MM/DD'),to_date('22/09/03','RR/MM/DD'),4,'mate',123540,null,null,'잘 부탁드려요','close');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (2,19,to_date('22/09/04','RR/MM/DD'),to_date('22/09/05','RR/MM/DD'),3,'mate',254040,null,null,'ㅋㅋ','open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (3,3,to_date('22/09/16','RR/MM/DD'),to_date('22/09/17','RR/MM/DD'),3,'mate',53340,null,null,'같이 평택가실래요?','open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (4,4,to_date('22/09/14','RR/MM/DD'),to_date('22/09/15','RR/MM/DD'),2,'mate',12900,null,null,'안녕하세요!','open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (5,5,to_date('22/09/03','RR/MM/DD'),to_date('22/09/04','RR/MM/DD'),5,'mate',24960,null,null,'송도가자!','open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (6,6,to_date('22/09/08','RR/MM/DD'),to_date('22/09/09','RR/MM/DD'),2,'mate',56760,null,null,'가자~','open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (7,7,to_date('22/09/22','RR/MM/DD'),to_date('22/09/23','RR/MM/DD'),5,'mate',58710,null,null,'함께갑시다~','open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (8,8,to_date('22/09/24','RR/MM/DD'),to_date('22/09/25','RR/MM/DD'),1,'mate',245490,null,null,'ㄱㄱ','open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (9,9,to_date('22/09/21','RR/MM/DD'),to_date('22/09/22','RR/MM/DD'),2,'mate',32340,null,null,'ㄱㄱ','open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (10,10,to_date('22/09/18','RR/MM/DD'),to_date('22/09/19','RR/MM/DD'),2,'mate',23490,null,null,'ㄱㄱ','open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (11,11,to_date('22/10/12','RR/MM/DD'),to_date('22/10/14','RR/MM/DD'),1,'mate',241470,null,null,'ㄱㄱ','open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (12,12,to_date('22/10/07','RR/MM/DD'),to_date('22/10/08','RR/MM/DD'),2,'mate',59160,null,null,'ㄱㄱ','open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (13,13,to_date('22/09/03','RR/MM/DD'),to_date('22/09/04','RR/MM/DD'),3,'mate',33570,null,null,'ㄱㄱ','open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (14,14,to_date('22/10/20','RR/MM/DD'),to_date('22/10/21','RR/MM/DD'),5,'mate',87240,null,null,'ㄱㄱ','open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (15,15,to_date('22/09/23','RR/MM/DD'),to_date('22/09/24','RR/MM/DD'),1,'mate',38760,null,null,'ㄱㄱ','open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (16,16,to_date('22/09/23','RR/MM/DD'),to_date('22/09/24','RR/MM/DD'),2,'mate',54960,null,null,null,'open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (17,17,to_date('22/10/07','RR/MM/DD'),to_date('22/10/08','RR/MM/DD'),1,'mate',230340,null,null,'내릴 때는 본인 소지품 및 쓰레기는 꼭 챙겨 나가주시길 바랍니다. ','open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (18,17,to_date('22/09/03','RR/MM/DD'),to_date('22/09/03','RR/MM/DD'),1,'carpool',1470,'12분25초','3.495km','rr','open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (19,17,to_date('22/09/08','RR/MM/DD'),to_date('22/09/08','RR/MM/DD'),1,'carpool',1140,'3분6초','0.711km',null,'open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (20,18,to_date('22/10/07','RR/MM/DD'),to_date('22/10/08','RR/MM/DD'),2,'mate',231930,null,null,' 안녕하세요 저는 조용하게 가는 것을 선호하며, 위생에 민감한 편이기 때문에 제 차에 타실 때 비치되어 있는 손 소독제 꼭 사용해주셨으면 좋겠습니다. 또, 내릴 때는 본인 소지품 및 쓰레기는 꼭 챙겨 나가주시길 바랍니다. ','open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (21,19,to_date('22/10/07','RR/MM/DD'),to_date('22/10/08','RR/MM/DD'),2,'mate',234390,null,null,'안녕하세요 저는 지금까지 메이트 이용 경험이 15회 이상이고, 자유롭고 편하게 여행 다니는 것을 굉장히 좋아합니다. 최대한 일정 조율해서 잘 다니는 편입니다. 많은 이용 부탁드립니다. ','open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (22,19,to_date('22/10/15','RR/MM/DD'),to_date('22/10/16','RR/MM/DD'),2,'mate',119880,null,null,'안녕하세요 저는 지금까지 메이트 이용 경험이 15회 이상이고, 자유롭고 편하게 여행 다니는 것을 굉장히 좋아합니다. 최대한 일정 조율해서 잘 다니는 편입니다. 많은 이용 부탁드립니다. ','open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (75,19,to_date('22/10/04','RR/MM/DD'),to_date('22/10/25','RR/MM/DD'),1,'seasonTicket',103950,'24분43초','16.12km','출근 카풀 구합니다 ','open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (24,16,to_date('22/10/07','RR/MM/DD'),to_date('22/10/08','RR/MM/DD'),3,'mate',244650,null,null,null,'open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (28,2,to_date('22/10/04','RR/MM/DD'),to_date('22/10/25','RR/MM/DD'),4,'seasonTicket',114030,'32분22초','17.629km',null,'open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (27,1,to_date('22/10/04','RR/MM/DD'),to_date('22/10/25','RR/MM/DD'),2,'seasonTicket',115290,'30분47초','19.422km',null,'open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (29,3,to_date('22/10/04','RR/MM/DD'),to_date('22/10/25','RR/MM/DD'),1,'seasonTicket',107100,'27분25초','16.396km',null,'open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (30,4,to_date('22/09/04','RR/MM/DD'),to_date('22/09/04','RR/MM/DD'),2,'carpool',1140,'6분31초','1.656km',null,'open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (31,5,to_date('22/09/07','RR/MM/DD'),to_date('22/09/07','RR/MM/DD'),2,'carpool',2040,'17분40초','5.626km',null,'open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (32,6,to_date('22/09/17','RR/MM/DD'),to_date('22/09/17','RR/MM/DD'),1,'carpool',2370,'23분3초','5.499km',null,'open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (33,7,to_date('22/10/07','RR/MM/DD'),to_date('22/10/28','RR/MM/DD'),3,'seasonTicket',91350,'26분13초','12.711km',null,'open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (34,8,to_date('22/09/04','RR/MM/DD'),to_date('22/09/04','RR/MM/DD'),1,'carpool',2400,'19분26초','6.722km',null,'open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (35,9,to_date('22/09/08','RR/MM/DD'),to_date('22/09/08','RR/MM/DD'),2,'carpool',1470,'12분8초','2.667km',null,'open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (36,10,to_date('22/10/04','RR/MM/DD'),to_date('22/10/25','RR/MM/DD'),1,'seasonTicket',30870,'11분53초','3.93km',null,'open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (37,11,to_date('22/09/17','RR/MM/DD'),to_date('22/09/17','RR/MM/DD'),1,'carpool',1140,'2분47초','0.773km',null,'open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (38,12,to_date('22/10/07','RR/MM/DD'),to_date('22/10/07','RR/MM/DD'),1,'carpool',1710,'13분55초','3.525km',null,'open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (39,13,to_date('22/09/24','RR/MM/DD'),to_date('22/09/24','RR/MM/DD'),2,'carpool',2730,'25분55초','7.819km',null,'open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (40,14,to_date('22/09/08','RR/MM/DD'),to_date('22/09/08','RR/MM/DD'),1,'carpool',1230,'9분0초','2.150km',null,'open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (41,15,to_date('22/09/06','RR/MM/DD'),to_date('22/09/06','RR/MM/DD'),2,'carpool',1380,'11분5초','2.833km',null,'open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (42,16,to_date('22/09/24','RR/MM/DD'),to_date('22/09/24','RR/MM/DD'),1,'carpool',1680,'15분33초','3.868km',null,'open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (43,20,to_date('22/09/04','RR/MM/DD'),to_date('22/09/04','RR/MM/DD'),2,'carpool',1140,'4분39초','1.906km',null,'open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (44,21,to_date('22/09/04','RR/MM/DD'),to_date('22/09/04','RR/MM/DD'),2,'carpool',1230,'9분43초','2.313km',null,'open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (45,22,to_date('22/10/13','RR/MM/DD'),to_date('22/10/13','RR/MM/DD'),1,'carpool',1350,'9분33초','2.980km',null,'open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (46,23,to_date('22/10/01','RR/MM/DD'),to_date('22/10/01','RR/MM/DD'),2,'carpool',2130,'16분50초','5.719km',null,'open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (47,24,to_date('22/09/24','RR/MM/DD'),to_date('22/09/24','RR/MM/DD'),1,'carpool',1980,'16분7초','5.335km',null,'open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (48,25,to_date('22/09/04','RR/MM/DD'),to_date('22/09/04','RR/MM/DD'),1,'carpool',1230,'7분3초','2.2km',null,'open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (49,26,to_date('22/09/04','RR/MM/DD'),to_date('22/09/04','RR/MM/DD'),1,'carpool',6150,'29분50초','19.364km',null,'open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (50,27,to_date('22/09/08','RR/MM/DD'),to_date('22/09/29','RR/MM/DD'),2,'seasonTicket',84420,'37분39초','13.358km',null,'open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (51,1,to_date('22/09/09','RR/MM/DD'),to_date('22/09/30','RR/MM/DD'),1,'seasonTicket',70560,'32분59초','9.421km',null,'open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (52,2,to_date('22/09/17','RR/MM/DD'),to_date('22/09/17','RR/MM/DD'),1,'carpool',2130,'19분3초','6.123km',null,'open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (53,3,to_date('22/09/04','RR/MM/DD'),to_date('22/09/04','RR/MM/DD'),1,'carpool',1140,'3분52초','0.761km',null,'open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (54,4,to_date('22/09/04','RR/MM/DD'),to_date('22/09/04','RR/MM/DD'),1,'carpool',2790,'26분26초','7.272km',null,'open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (55,5,to_date('22/09/10','RR/MM/DD'),to_date('22/09/10','RR/MM/DD'),1,'carpool',11670,'61분34초','40.13km',null,'open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (56,6,to_date('22/09/09','RR/MM/DD'),to_date('22/09/30','RR/MM/DD'),2,'seasonTicket',101430,'49분10초','14.804km',null,'open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (57,7,to_date('22/09/08','RR/MM/DD'),to_date('22/09/08','RR/MM/DD'),1,'carpool',3360,'32분11초','9.136km',null,'open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (58,8,to_date('22/09/21','RR/MM/DD'),to_date('22/09/21','RR/MM/DD'),1,'carpool',1470,'14분6초','3.248km',null,'open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (59,9,to_date('22/09/06','RR/MM/DD'),to_date('22/09/06','RR/MM/DD'),1,'carpool',2670,'23분42초','7.853km',null,'open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (60,10,to_date('22/09/04','RR/MM/DD'),to_date('22/09/04','RR/MM/DD'),1,'carpool',3300,'28분9초','8.36km',null,'open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (61,11,to_date('22/09/04','RR/MM/DD'),to_date('22/09/04','RR/MM/DD'),1,'carpool',1650,'12분34초','4.178km',null,'open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (62,12,to_date('22/09/09','RR/MM/DD'),to_date('22/09/30','RR/MM/DD'),2,'seasonTicket',88200,'35분39초','12.667km',null,'open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (63,13,to_date('22/09/04','RR/MM/DD'),to_date('22/09/04','RR/MM/DD'),1,'carpool',1620,'15분37초','3.598km',null,'open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (64,14,to_date('22/09/06','RR/MM/DD'),to_date('22/09/06','RR/MM/DD'),1,'carpool',7890,'49분52초','20.754km',null,'open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (65,15,to_date('22/09/22','RR/MM/DD'),to_date('22/09/22','RR/MM/DD'),1,'carpool',2580,'23분49초','6.663km',null,'open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (66,20,to_date('22/09/05','RR/MM/DD'),to_date('22/09/26','RR/MM/DD'),2,'seasonTicket',102060,'45분9초','14.720km',null,'open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (67,21,to_date('22/09/04','RR/MM/DD'),to_date('22/09/04','RR/MM/DD'),1,'carpool',1560,'11분53초','3.291km',null,'open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (68,22,to_date('22/09/04','RR/MM/DD'),to_date('22/09/04','RR/MM/DD'),2,'carpool',1230,'10분12초','2.483km',null,'open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (69,23,to_date('22/09/04','RR/MM/DD'),to_date('22/09/04','RR/MM/DD'),1,'carpool',2040,'17분25초','5.927km',null,'open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (70,24,to_date('22/09/23','RR/MM/DD'),to_date('22/09/23','RR/MM/DD'),1,'carpool',2280,'19분5초','4.828km',null,'open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (71,25,to_date('22/09/15','RR/MM/DD'),to_date('22/09/15','RR/MM/DD'),1,'carpool',3870,'33분52초','9.190km',null,'open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (72,26,to_date('22/09/09','RR/MM/DD'),to_date('22/09/30','RR/MM/DD'),1,'seasonTicket',57960,'22분32초','8.954km',null,'open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (73,27,to_date('22/09/14','RR/MM/DD'),to_date('22/09/14','RR/MM/DD'),1,'carpool',2820,'21분21초','7.960km',null,'open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (77,19,to_date('22/10/04','RR/MM/DD'),to_date('22/10/25','RR/MM/DD'),1,'seasonTicket',114660,'27분56초','19.497km','출근 카풀 구합니다','open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (80,52,to_date('22/09/05','RR/MM/DD'),to_date('22/09/05','RR/MM/DD'),3,'hitchhike',1140,'5분27초','1.404km','zxczxc','open');
Insert into SPOT.SPOTMATE (NO,CARNO,STARTDATE,ENDDATE,PEOPLE,TYPE,POINT,DURATION,DISTANCE,COMMENTS,STATUS) values (81,7,to_date('22/09/06','RR/MM/DD'),to_date('22/09/06','RR/MM/DD'),4,'hitchhike',1350,'4분28초','1.121km','asdad','open');
REM INSERTING into SPOT.USERREVIEW
SET DEFINE OFF;
Insert into SPOT.USERREVIEW (NO,RESVNO,STAR,CONTENT) values (1,25,1,'예민해도 너무 예민함. 누가보면 내키지도 않는데 억지로 운전하는 느낌. 눈치 엄청 줌. 그럴거면 뭐하러 메이트 등록해서 돈 받아가는 지 1도 모르겠음.');
Insert into SPOT.USERREVIEW (NO,RESVNO,STAR,CONTENT) values (2,24,3,'그냥 저냥 싼 값에 다녀오기 좋아요.');
Insert into SPOT.USERREVIEW (NO,RESVNO,STAR,CONTENT) values (3,26,2,'여행 시작 전에 본인 차량 이용시 주의 사항에 대해서만 연설 30분....뭐 그래도 안전하게 운전 잘하시고, 그만큼 차 컨디션도 좋긴 했는데....2박 3일 다니는 내내 좀 불편하긴 했네요');
Insert into SPOT.USERREVIEW (NO,RESVNO,STAR,CONTENT) values (4,27,5,'메이트 처음 이용해봤는데 정말 너무 좋은 드라이버분 만나서 너무 만족스럽게 잘 다녀왔어요ㅠㅠ급하게 일정 변경을 했어야 했는데도 너그럽게 다 이해해주시고...정말 너무 감사합니다 다음에 또 꼭!! 이용하고 싶어요');
Insert into SPOT.USERREVIEW (NO,RESVNO,STAR,CONTENT) values (5,28,5,'정말 같이 다니는 내내 너무 유쾌하고 즐거웠습니다. 차도 컨디션 정말 좋았고, 쾌적했습니다. 덕분에 잘 놀다 갑니다!!');
Insert into SPOT.USERREVIEW (NO,RESVNO,STAR,CONTENT) values (6,29,4,'안전 운전, 매너 다 갖추심 근데 차 트렁크에 이미 짐이 한가득이라 제 짐 실을 공간이 부족해서 조금 그게 아쉬웠어요');
Insert into SPOT.USERREVIEW (NO,RESVNO,STAR,CONTENT) values (7,30,4,'아이가 힘들어서 엄청 칭얼거려서 힘드셨을텐데 내색 안하시고 잘 다녀주셔서 감사해요');
Insert into SPOT.USERREVIEW (NO,RESVNO,STAR,CONTENT) values (8,31,5,'드라이버님 정말 짱짱 최고에요 운전도 정말 잘하시고, 여행 가이드까지 해주셔서 진짜 너무 재밌게 잘 다녀온 거 같아여');
Insert into SPOT.USERREVIEW (NO,RESVNO,STAR,CONTENT) values (9,32,4,'덕분에 여자친구랑 좋은 여행했습니다. 감사합니다.');
Insert into SPOT.USERREVIEW (NO,RESVNO,STAR,CONTENT) values (10,35,4,'덕분에 여자친구랑 좋은 여행했습니다. 감사합니다.');
Insert into SPOT.USERREVIEW (NO,RESVNO,STAR,CONTENT) values (11,36,5,'드라이버님 정말 짱짱 최고에요 운전도 정말 잘하시고, 여행 가이드까지 해주셔서 진짜 너무 재밌게 잘 다녀온 거 같아여');
Insert into SPOT.USERREVIEW (NO,RESVNO,STAR,CONTENT) values (12,37,4,'아이가 힘들어서 엄청 칭얼거려서 힘드셨을텐데 내색 안하시고 잘 다녀주셔서 감사해요');
Insert into SPOT.USERREVIEW (NO,RESVNO,STAR,CONTENT) values (13,38,4,'안전 운전, 매너 다 갖추심 근데 차 트렁크에 이미 짐이 한가득이라 제 짐 실을 공간이 부족해서 조금 그게 아쉬웠어요 ');
Insert into SPOT.USERREVIEW (NO,RESVNO,STAR,CONTENT) values (14,39,5,'정말 같이 다니는 내내 너무 유쾌하고 즐거웠습니다. 차도 컨디션 정말 좋았고, 쾌적했습니다. 덕분에 잘 놀다 갑니다!!');
Insert into SPOT.USERREVIEW (NO,RESVNO,STAR,CONTENT) values (15,40,5,'메이트 처음 이용해봤는데 정말 너무 좋은 드라이버분 만나서 너무 만족스럽게 잘 다녀왔어요ㅠㅠ급하게 일정 변경을 했어야 했는데도 너그럽게 다 이해해주시고...정말 너무 감사합니다 다음에 또 꼭!! 이용하고 싶어요');
REM INSERTING into SPOT.USERS
SET DEFINE OFF;
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (3,'cccc','cccc','김가은','ssobbs13@naver.com','01064862467','서울시 서초구 방배동','female','1997/01/07',null,null,null);
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (4,'dddd','dddd','이준규','ssobbs13@naver.com','01064862467','서울시 서초구 방배동','male','1997/01/07',null,null,null);
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (5,'eeee','eeee','김경애','ssobbs13@naver.com','01064862467','서울시 서초구 방배동','female','1997/01/07',null,null,null);
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (6,'ffff','ffff','김려경','ssobbs13@naver.com','01064862467','서울시 서초구 방배동','male','1997/01/07',null,null,null);
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (7,'gggg','gggg','김민규','ssobbs13@naver.com','01064862467','서울시 서초구 방배동','female','1997/01/07',null,null,null);
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (8,'hhhh','hhhh','김범준','ssobbs13@naver.com','01064862467','서울시 서초구 방배동','male','1997/01/07',null,null,null);
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (9,'iiii','iiii','김수빈','ssobbs13@naver.com','01064862467','서울시 서초구 방배동','female','1997/01/07',null,null,null);
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (10,'jjjj','jjjj','김재환','ssobbs13@naver.com','01064862467','서울시 서초구 방배동','male','1997/01/07',null,null,null);
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (11,'kkkk','kkkk','김지수','ssobbs13@naver.com','01064862467','서울시 서초구 방배동','female','1997/01/07',null,null,null);
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (12,'llll','llll','박찬희','ssobbs13@naver.com','01064862467','서울시 서초구 방배동','male','1997/01/07',null,null,null);
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (13,'mmmm','mmmm','박희지','ssobbs13@naver.com','01064862467','서울시 서초구 방배동','female','1997/01/07',null,null,null);
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (14,'nnnn','nnnn','석정원','ssobbs13@naver.com','01064862467','서울시 서초구 방배동','male','1997/01/07',null,null,null);
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (15,'oooo','oooo','소준호','ssobbs13@naver.com','01064862467','서울시 서초구 방배동','female','1997/01/07',null,null,null);
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (16,'pppp','pppp','유지은','ssobbs13@naver.com','01064862467','서울시 서초구 방배동','male','1997/01/07',null,null,null);
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (17,'qqqq','qqqq','양지훈','ssobbs13@naver.com','01064862467','서울시 서초구 방배동','male','1997/01/07',null,null,null);
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (18,'rrrr','rrrr','이준규','ssobbs13@naver.com','01064862467','서울시 서초구 방배동','male','1997/01/07',null,null,null);
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (19,'ssss','ssss','이정화','ssobbs13@naver.com','01064862467','서울시 서초구 방배동','female','1997/01/07',null,null,null);
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (20,'tttt','tttt','이재훈','ssobbs13@naver.com','01064862467','서울시 서초구 방배동','male','1997/01/07',null,null,null);
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (21,'uuuu','uuuu','장성찬','ssobbs13@naver.com','01064862467','서울시 서초구 방배동','female','1997/01/07',null,null,null);
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (22,'vvvv','vvvv','장희만','ssobbs13@naver.com','01064862467','서울시 서초구 방배동','male','1997/01/07',null,null,null);
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (23,'wwww','wwww','정지웅','ssobbs13@naver.com','01064862467','서울시 서초구 방배동','female','1997/01/07',null,null,null);
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (24,'xxxx','xxxx','조윤주','ssobbs13@naver.com','01064862467','서울시 서초구 방배동','male','1997/01/07',null,null,null);
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (25,'yyyy','yyyy','최종빈','ssobbs13@naver.com','01064862467','서울시 서초구 방배동','female','1997/01/07',null,null,null);
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (26,'zzzz','zzzz','김준호','ssobbs13@naver.com','01064862467','서울시 서초구 방배동','male','1997/01/07',null,null,null);
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (27,'aaaa1','aaaa1','이지희','ssobbs13@naver.com','01064862467','서울시 서초구 방배동','female','1997/01/07',null,null,null);
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (28,'bbbb2','bbbb2','최보승','ssobbs13@naver.com','01064862467','서울시 서초구 방배동','male','1997/01/07',null,null,null);
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (29,'cccc3','cccc3','최정필','ssobbs13@naver.com','01064862467','서울시 서초구 방배동','female','1997/01/07',null,null,null);
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (30,'dddd4','dddd4','황일영','ssobbs13@naver.com','01064862467','서울시 서초구 방배동','male','1997/01/07',null,null,null);
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (31,'eeee5','eeee5','권정흠','ssobbs13@naver.com','01064862467','서울시 서초구 방배동','female','1997/01/07',null,null,null);
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (32,'ffff6','ffff6','김건희','ssobbs13@naver.com','01064862467','서울시 서초구 방배동','male','1997/01/07',null,null,null);
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (33,'gggg7','gggg7','김상훈','ssobbs13@naver.com','01064862467','서울시 서초구 방배동','female','1997/01/07',null,null,null);
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (34,'hhhh8','hhhh8','김재형','ssobbs13@naver.com','01064862467','서울시 서초구 방배동','male','1997/01/07',null,null,null);
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (35,'iiii9','iiii9','김준하','ssobbs13@naver.com','01064862467','서울시 서초구 방배동','female','1997/01/07',null,null,null);
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (36,'jjjj10','jjjj10','배찬우','ssobbs13@naver.com','01064862467','서울시 서초구 방배동','male','1997/01/07',null,null,null);
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (37,'kkkk11','kkkk11','신정수','ssobbs13@naver.com','01064862467','서울시 서초구 방배동','female','1997/01/07',null,null,null);
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (38,'llll12','llll12','이건희','ssobbs13@naver.com','01064862467','서울시 서초구 방배동','male','1997/01/07',null,null,null);
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (39,'mmmm13','mmmm13','이상엽','ssobbs13@naver.com','01064862467','서울시 서초구 방배동','female','1997/01/07',null,null,null);
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (40,'nnnn14','nnnn14','손민수','ssobbs13@naver.com','01064862467','서울시 서초구 방배동','male','1997/01/07',null,null,null);
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (41,'oooo15','oooo15','황승민','ssobbs13@naver.com','01064862467','서울시 서초구 방배동','female','1997/01/07',null,null,null);
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (42,'pppp16','pppp16','채종원','ssobbs13@naver.com','01064862467','서울시 서초구 방배동','male','1997/01/07',null,null,null);
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (43,'qqqq17','qqqq17','차수민','ssobbs13@naver.com','01064862467','서울시 서초구 방배동','female','1997/01/07',null,null,null);
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (44,'rrrr18','rrrr18','전재훈','ssobbs13@naver.com','01064862467','서울시 서초구 방배동','male','1997/01/07',null,null,null);
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (45,'ssss19','ssss19','장원재','ssobbs13@naver.com','01064862467','서울시 서초구 방배동','female','1997/01/07',null,null,null);
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (46,'tttt20','tttt20','임형찬','ssobbs13@naver.com','01064862467','서울시 서초구 방배동','male','1997/01/07',null,null,null);
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (47,'uuuu21','uuuu21','임초롱','ssobbs13@naver.com','01064862467','서울시 서초구 방배동','female','1997/01/07',null,null,null);
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (48,'vvvv22','vvvv22','권소라','ssobbs13@naver.com','01064862467','서울시 서초구 방배동','male','1997/01/07',null,null,null);
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (49,'wwww23','wwww23','주민영','ssobbs13@naver.com','01064862467','서울시 서초구 방배동','female','1997/01/07',null,null,null);
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (50,'xxxx24','xxxx24','장슬기','ssobbs13@naver.com','01064862467','서울시 서초구 방배동','male','1997/01/07',null,null,null);
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (51,'sssss','zzzz1!zz','이인구','ssobbs13@naver.com','01096618922','서울 서초구 과천대로 786,101호','female','650216','17-92-051341-00-685T7J','2종 보통',null);
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (1,'aaaa','aaaa','이정화','ssobbs13@naver.com','01064862467','서울시 서초구 방배동','female','1997/01/07',null,null,null);
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (2,'bbbb','bbbb','양지훈','ssobbs13@naver.com','01064862467','서울시 서초구 방배동','male','1997/01/07',null,null,null);
Insert into SPOT.USERS (NO,ID,PW,NAME,EMAIL,PHONE,ADDRESS,GENDER,BIRTH,LICENSENO,LICENSETYPE,KAKAOEMAIL) values (52,'ssobbs13','zmffp1@1','이준규','ssobbs13@naver.com','01064862467','서울 서초구 방배로15길 3,101호','male','1997/1/7',null,null,'ssobbs13@kakao.com');
--------------------------------------------------------
--  DDL for Index PK_USERS
--------------------------------------------------------

  CREATE UNIQUE INDEX "SPOT"."PK_USERS" ON "SPOT"."USERS" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_SPOTMATE
--------------------------------------------------------

  CREATE UNIQUE INDEX "SPOT"."PK_SPOTMATE" ON "SPOT"."SPOTMATE" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_COUPON
--------------------------------------------------------

  CREATE UNIQUE INDEX "SPOT"."PK_COUPON" ON "SPOT"."COUPON" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_DETAILOPT
--------------------------------------------------------

  CREATE UNIQUE INDEX "SPOT"."PK_DETAILOPT" ON "SPOT"."DETAILOPT" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_COUPONUSAGE
--------------------------------------------------------

  CREATE UNIQUE INDEX "SPOT"."PK_COUPONUSAGE" ON "SPOT"."COUPONUSAGE" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_MYQNA
--------------------------------------------------------

  CREATE UNIQUE INDEX "SPOT"."PK_MYQNA" ON "SPOT"."MYQNA" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_RESERVATION
--------------------------------------------------------

  CREATE UNIQUE INDEX "SPOT"."PK_RESERVATION" ON "SPOT"."RESERVATION" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_DRIVERREVIEW
--------------------------------------------------------

  CREATE UNIQUE INDEX "SPOT"."PK_DRIVERREVIEW" ON "SPOT"."DRIVERREVIEW" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_BRAND
--------------------------------------------------------

  CREATE UNIQUE INDEX "SPOT"."PK_BRAND" ON "SPOT"."BRAND" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_POINTUSAGE
--------------------------------------------------------

  CREATE UNIQUE INDEX "SPOT"."PK_POINTUSAGE" ON "SPOT"."POINTUSAGE" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_USERREVIEW
--------------------------------------------------------

  CREATE UNIQUE INDEX "SPOT"."PK_USERREVIEW" ON "SPOT"."USERREVIEW" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_CATEGORY
--------------------------------------------------------

  CREATE UNIQUE INDEX "SPOT"."PK_CATEGORY" ON "SPOT"."CATEGORY" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_POINTREFUND
--------------------------------------------------------

  CREATE UNIQUE INDEX "SPOT"."PK_POINTREFUND" ON "SPOT"."POINTREFUND" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_NOTICE
--------------------------------------------------------

  CREATE UNIQUE INDEX "SPOT"."PK_NOTICE" ON "SPOT"."NOTICE" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_CARDETAIL
--------------------------------------------------------

  CREATE UNIQUE INDEX "SPOT"."PK_CARDETAIL" ON "SPOT"."CARDETAIL" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table BRAND
--------------------------------------------------------

  ALTER TABLE "SPOT"."BRAND" MODIFY ("NO" NOT NULL ENABLE);
  ALTER TABLE "SPOT"."BRAND" ADD CONSTRAINT "PK_BRAND" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NOTICE
--------------------------------------------------------

  ALTER TABLE "SPOT"."NOTICE" MODIFY ("NO" NOT NULL ENABLE);
  ALTER TABLE "SPOT"."NOTICE" ADD CONSTRAINT "PK_NOTICE" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DRIVERREVIEW
--------------------------------------------------------

  ALTER TABLE "SPOT"."DRIVERREVIEW" MODIFY ("NO" NOT NULL ENABLE);
  ALTER TABLE "SPOT"."DRIVERREVIEW" ADD CONSTRAINT "PK_DRIVERREVIEW" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MYQNA
--------------------------------------------------------

  ALTER TABLE "SPOT"."MYQNA" MODIFY ("NO" NOT NULL ENABLE);
  ALTER TABLE "SPOT"."MYQNA" ADD CONSTRAINT "PK_MYQNA" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table POINTUSAGE
--------------------------------------------------------

  ALTER TABLE "SPOT"."POINTUSAGE" MODIFY ("NO" NOT NULL ENABLE);
  ALTER TABLE "SPOT"."POINTUSAGE" ADD CONSTRAINT "PK_POINTUSAGE" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table COUPONUSAGE
--------------------------------------------------------

  ALTER TABLE "SPOT"."COUPONUSAGE" MODIFY ("NO" NOT NULL ENABLE);
  ALTER TABLE "SPOT"."COUPONUSAGE" ADD CONSTRAINT "PK_COUPONUSAGE" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table COUPON
--------------------------------------------------------

  ALTER TABLE "SPOT"."COUPON" MODIFY ("NO" NOT NULL ENABLE);
  ALTER TABLE "SPOT"."COUPON" ADD CONSTRAINT "PK_COUPON" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PLACE
--------------------------------------------------------

  ALTER TABLE "SPOT"."PLACE" MODIFY ("NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SPOTDETAIL
--------------------------------------------------------

  ALTER TABLE "SPOT"."SPOTDETAIL" MODIFY ("NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table POINTREFUND
--------------------------------------------------------

  ALTER TABLE "SPOT"."POINTREFUND" MODIFY ("NO" NOT NULL ENABLE);
  ALTER TABLE "SPOT"."POINTREFUND" ADD CONSTRAINT "PK_POINTREFUND" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CATEGORY
--------------------------------------------------------

  ALTER TABLE "SPOT"."CATEGORY" MODIFY ("NO" NOT NULL ENABLE);
  ALTER TABLE "SPOT"."CATEGORY" ADD CONSTRAINT "PK_CATEGORY" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table RESERVATION
--------------------------------------------------------

  ALTER TABLE "SPOT"."RESERVATION" MODIFY ("NO" NOT NULL ENABLE);
  ALTER TABLE "SPOT"."RESERVATION" ADD CONSTRAINT "PK_RESERVATION" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CAR
--------------------------------------------------------

  ALTER TABLE "SPOT"."CAR" MODIFY ("NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "SPOT"."USERS" MODIFY ("NO" NOT NULL ENABLE);
  ALTER TABLE "SPOT"."USERS" ADD CONSTRAINT "PK_USERS" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DETAILOPT
--------------------------------------------------------

  ALTER TABLE "SPOT"."DETAILOPT" MODIFY ("NO" NOT NULL ENABLE);
  ALTER TABLE "SPOT"."DETAILOPT" ADD CONSTRAINT "PK_DETAILOPT" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CARDETAIL
--------------------------------------------------------

  ALTER TABLE "SPOT"."CARDETAIL" MODIFY ("NO" NOT NULL ENABLE);
  ALTER TABLE "SPOT"."CARDETAIL" ADD CONSTRAINT "PK_CARDETAIL" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table USERREVIEW
--------------------------------------------------------

  ALTER TABLE "SPOT"."USERREVIEW" MODIFY ("NO" NOT NULL ENABLE);
  ALTER TABLE "SPOT"."USERREVIEW" ADD CONSTRAINT "PK_USERREVIEW" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SPOTMATE
--------------------------------------------------------

  ALTER TABLE "SPOT"."SPOTMATE" MODIFY ("NO" NOT NULL ENABLE);
  ALTER TABLE "SPOT"."SPOTMATE" ADD CONSTRAINT "PK_SPOTMATE" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BRAND
--------------------------------------------------------

  ALTER TABLE "SPOT"."BRAND" ADD CONSTRAINT "FK_CATEGORY_TO_BRAND" FOREIGN KEY ("CATENO")
	  REFERENCES "SPOT"."CATEGORY" ("NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CARDETAIL
--------------------------------------------------------

  ALTER TABLE "SPOT"."CARDETAIL" ADD CONSTRAINT "FK_DETAILOPT_TO_CARDETAIL" FOREIGN KEY ("DETAILNO")
	  REFERENCES "SPOT"."DETAILOPT" ("NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COUPON
--------------------------------------------------------

  ALTER TABLE "SPOT"."COUPON" ADD CONSTRAINT "FK_BRAND_TO_COUPON" FOREIGN KEY ("BRANDNO")
	  REFERENCES "SPOT"."BRAND" ("NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COUPONUSAGE
--------------------------------------------------------

  ALTER TABLE "SPOT"."COUPONUSAGE" ADD CONSTRAINT "FK_COUPON_TO_COUPONUSAGE" FOREIGN KEY ("COUPONNO")
	  REFERENCES "SPOT"."COUPON" ("NO") ENABLE;
  ALTER TABLE "SPOT"."COUPONUSAGE" ADD CONSTRAINT "FK_USERS_TO_COUPONUSAGE" FOREIGN KEY ("USERNO")
	  REFERENCES "SPOT"."USERS" ("NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DRIVERREVIEW
--------------------------------------------------------

  ALTER TABLE "SPOT"."DRIVERREVIEW" ADD CONSTRAINT "FK_RESERVATION_TO_DRIVERREVIEW" FOREIGN KEY ("RESVNO")
	  REFERENCES "SPOT"."RESERVATION" ("NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MYQNA
--------------------------------------------------------

  ALTER TABLE "SPOT"."MYQNA" ADD CONSTRAINT "FK_USERS_TO_MYQNA" FOREIGN KEY ("USERNO")
	  REFERENCES "SPOT"."USERS" ("NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table POINTREFUND
--------------------------------------------------------

  ALTER TABLE "SPOT"."POINTREFUND" ADD CONSTRAINT "FK_USERS_TO_POINTREFUND" FOREIGN KEY ("USERNO")
	  REFERENCES "SPOT"."USERS" ("NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table POINTUSAGE
--------------------------------------------------------

  ALTER TABLE "SPOT"."POINTUSAGE" ADD CONSTRAINT "FK_RESERVATION_TO_POINTUSAGE" FOREIGN KEY ("RENO")
	  REFERENCES "SPOT"."RESERVATION" ("NO") ENABLE;
  ALTER TABLE "SPOT"."POINTUSAGE" ADD CONSTRAINT "FK_USERS_TO_POINTUSAGE" FOREIGN KEY ("USERNO")
	  REFERENCES "SPOT"."USERS" ("NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RESERVATION
--------------------------------------------------------

  ALTER TABLE "SPOT"."RESERVATION" ADD CONSTRAINT "FK_USERS_TO_RESERVATION" FOREIGN KEY ("USERNO")
	  REFERENCES "SPOT"."USERS" ("NO") ENABLE;
  ALTER TABLE "SPOT"."RESERVATION" ADD CONSTRAINT "FK_USERS_TO_RESERVATION2" FOREIGN KEY ("DRIVERNO")
	  REFERENCES "SPOT"."USERS" ("NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SPOTDETAIL
--------------------------------------------------------

  ALTER TABLE "SPOT"."SPOTDETAIL" ADD CONSTRAINT "FK_DETAILOPT_TO_SPOTDETAIL" FOREIGN KEY ("DETAILNO")
	  REFERENCES "SPOT"."DETAILOPT" ("NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table USERREVIEW
--------------------------------------------------------

  ALTER TABLE "SPOT"."USERREVIEW" ADD CONSTRAINT "FK_RESERVATION_TO_USERREVIEW" FOREIGN KEY ("RESVNO")
	  REFERENCES "SPOT"."RESERVATION" ("NO") ENABLE;
