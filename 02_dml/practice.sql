-- DDL 연습
-- P1
-- 다음 정보를 포함하여
-- 사원 정보를 담기 위한 테이블을 만드는 SQL을 작성하시오.
--
-- 사원 이름(name)
-- 입사 연도(year)
-- 직급(grade)
-- 현재 연봉(salary)

CREATE TABLE employee(
                         id INTEGER PRIMARY KEY,
                         name VARCHAR (64),
                         year INTEGER,
                         grade VARCHAR(64),
                         salary INTEGER
);

-- P2
-- 다음 정보를 포함하여
-- 쇼핑몰의 물품에 대한 정보를 담기 위한 테이블을 만드는 SQL을 작성하시오.
--
-- 상품 이름(name)
-- 가격(price)
-- 재고(stock)

CREATE TABLE shoppingMall (
                              id INTEGER PRIMARY KEY,
                              name VARCHAR(64),
                              price INTEGER,
                              stock INTEGER
);
--
-- P3
-- 다음 정보를 포함하여
-- 음식점 메뉴에 대한 정보를 담기 위한 테이블을 만드는 SQL을 작성하시오.
--
-- 메뉴 이름(name)
-- 분류(한식, 중식, 일식, 양식)(category)
-- 메뉴 설명(description)
-- 가격(price)
-- 채식 여부(vegetarian)
CREATE TABLE Menu(
                     id INTEGER PRIMARY KEY,
                     name VARCHAR(64),
                     category VARCHAR(64),
                     description VARCHAR(128),
                     price INTEGER,
                     vegetarian VARCHAR(64)
);

-- P4
-- 다음 정보를 포함하여
-- 음악 정보를 담기 위한 테이블을 만드는 SQL을 작성하시오.
--
-- 제목(title)
-- 가수(artist)
-- 작곡가(writer)
-- 작사가(lyrics)
-- 앨범이름(album_name)
-- 발매년도(year)
-- 재생시간(dur_in_secs)

CREATE TABLE musicInfo(
                          id INTEGER PRIMARY KEY,
                          title VARCHAR(64),
                          artist VARCHAR(64),
                          writer VARCHAR(64),
                          lyrics VARCHAR(64),
                          album_name VARCHAR(64),
                          year INTEGER,
                          dur_in_secs INTEGER
);

-- P5
-- P1에서 작성한 테이블에,
-- 전화번호(phone_number)
-- 이메일(email)
-- 정보를 담을 수 있도록 Column을 추가하시오.

ALTER TABLE employee ADD COLUMN phone_number VARCHAR(64);
ALTER TABLE employee ADD COLUMN email VARCHAR(64);
--
-- P6
-- P2에서 작성한 테이블에,
-- 제조사(company)
-- 정보를 담을 수 있도록 Column을 추가하시오.
ALTER TABLE shoppingMall ADD COLUMN cmpany VARCHAR(64);

-- P7
-- P3에서 작성한 테이블에서 앨범 이름을 담는 Column을 제거하시오.
ALTER TABLE musicInfo DROP COLUMN album_name;
--

-- DML 연습
-- P1
-- 수업 시간에 사용한 user 테이블에 자신의 데이터를 입력하세요.
INSERT INTO user (first_name, last_name, age, balance, phone, email, country)
VALUES ('subin','jang',24,1200000,'010-2342-2353','aaa@naver.com','South Korea');                                                                                ;
--
-- P2
-- 수업 시간에 사용한 user 테이블의 데이터 중 age가 30 이상인 사람만 조회하는 SQL을 작성하세요.
SELECT * FROM user WHERE age >=30;
-- P3
-- 수업 시간에 사용한 user 테이블의 데이터 중, balance가 100 이상인 사람의
-- balance를 100으로 설정하는 SQL을 작성하세요.
UPDATE user SET balance = 100 WHERE balance >= 100;
-- P4
-- 수업 시간에 사용한 user 테이블의 데이터 중, first_name이 Austin인
-- 데이터를 삭제하는 SQL을 작성하세요.
--
DELETE FROM user WHERE first_name = 'Austin';
-- P5
-- 수업 시간에 사용한 user 테이블의 데이터 중, 전화번호가 010-으로 시작하지 않는
-- 데이터를 조회하는 SQL을 작성하세요.
SELECT * FROM user WHERE phone NOT LIKE '010-%';
-- P6
-- 수업 시간에 사용한 user 테이블의 데이터 중, 성에 '이 포함된 이름을 조회하는
-- SQL을 작성하세요.
SELECT * FROM user WHERE last_name LIKE '%''%';
-- P7
-- DDL 연습에서 만든 P1의 테이블의 데이터 중 직급이 '차장'인 사원만 조회하는
-- SQL을 작성하시오.
SELECT * FROM employee WHERE grade = '차장';
-- P8
-- DDL 연습에서 만든 P2의 테이블의 데이터 중, 가격이 100000 이하면서 재고가 10개 이상인 물품만 조회하여,
-- 재고가 많이 남은 순으로 정렬해 조회하는 SQL을 작성하시오.
SELECT * FROM shoppingMall WHERE price <= 100000 AND stock >= 10 ORDER BY stock;
-- P9
-- DDL 연습에서 만든 P3의 테이블의 데이터 중, 한식 또는 양식 중 채식 메뉴를 가격 순으로 조회하는
-- SQL을 작성하시오.
SELECT vegetarian FROM Menu WHERE category = '한식' OR category = '양식' ORDER BY price;
-- P10
-- DDL 연습에서 만든 P4의 테이블의 데이터 중,
-- 재생시간이 5분 이상인 노래 중 작곡가와 작사가가 일치하는 노래만 조회하는
-- SQL을 작성하시오.
SELECT * FROM musicInfo WHERE dur_in_secs >= 5 AND writer = lyrics;
-- P11
-- DDL 연습에서 만든 P1의 테이블의 데이터 중, 직급이 '대리'인 사원 중 연봉이 5000만원 이상인
-- 사원의 직급을 '과장'으로 갱신하는 SQL을 작성하시오.
UPDATE employee SET grade = '과장' WHERE grade = '대리' AND salary >= 50000000
-- P12
-- DDL 연습에서 만든 P2의 테이블의 데이터 중, 재고가 '0'인 데이터를 삭제하는
-- SQL을 작성하시오.
-- DDL과 DML 연습입니다
DELETE FROM shoppingMall WHERE stock = 0;