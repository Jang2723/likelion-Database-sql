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
