-- 롤백
rollback;

-- 커밋
commit;

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

