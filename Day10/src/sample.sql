CREATE TABLE test

(
    id INT,
    name VARCHAR(30),
    reserveDate DATE,
    roomNum INT
);

테이블 행 전체 조회
SELECT * FROM 테이블명;
SELECT * FROM test;

테이블에 값 넣기
INSERT INTO test VALUES (1, '홍길동', '2016-01-05', 2014);
INSERT INTO test VALUES (2, '임꺽정', '2016-02-12', 918);
INSERT INTO test VALUES (3, '장길산', '2016-01-16', 1208);
INSERT INTO test VALUES (4, '홍길동', '2016-03-17', 504);
INSERT INTO test VALUES (5, '이순신', '2016-02-16', 1108);

테이블에 값을 넣을 때 여러개를 한번에 넣지 않는다.
넣을수는 있지만...
INSERT INTO test VALUES 
(6, 'tester6' , '2020-10-06', 102),
(7, 'tester7' , '2020-10-06', 103);

CREATE TABLE room
(
	roomNum INT,
	personnel INT,
	season VARCHAR(30)
);

INSERT INTO room VALUES (101, 2, 'Spring');
INSERT INTO room VALUES (102, 2, 'Spring');
INSERT INTO room VALUES (201, 4, 'Summer');
INSERT INTO room VALUES (202, 4, 'Fall');
INSERT INTO room VALUES (301, 8, 'Winter');

SELECT season FROM room WHERE roomNum = '102';

SELECT roomNum FROM room WHERE season = 'fall';

SELECT personnel FROM room WHERE season = 'winter';

SELECT roomNum, personnel FROM room WHERE season = 'spring';

DELETE FROM Room WHERE Season ='fall';

INSERT INTO room VALUES (302, 8, 'fall');

SELECT * FROM test;

DELETE FROM test WHERE name = 'tester6';
DELETE FROM test WHERE name = 'tester7';

RENAME TABLE test TO Reservation;

CREATE TABLE customer
(
 id INT,
 name VARCHAR(30),
 age INT,
 address VARCHAR(30)
);

INSERT INTO customer VALUES (1, '홍길동', 17, '서울');
INSERT INTO customer VALUES (2, '임꺽정', 11, '인천');
INSERT INTO customer VALUES (3, '장길산', 13, '서울');
INSERT INTO customer VALUES (4, '전우치', 17, '수원');
INSERT INTO customer VALUES (5, '이순신', 20, '목포');

SELECT * FROM customer;

//오토커밋 상태확인(무조건 켜두기)
SHOW VARIABLES LIKE 'autocommit';
//오토커밋 끄기
SET AUTOCOMMIT = FALSE;
//오토커밋 키기
SET AUTOCOMMIT = TRUE;
//파일저장하기
COMMIT;

INSERT INTO customer (id, name, address)
VALUES (6, '김송아', '부산');

INSERT INTO customer (id, name, age)
VALUES (7, '박은빈', 25);

INSERT INTO customer (id)
VALUES (8);

CREATE TABLE mbti
(
 idx INT UNIQUE,
 pId INT NOT NULL,
 name VARCHAR(30),
 result VARCHAR(30)
);
//그냥 값 넣기
INSERT INTO mbti 
VALUES (1, 221007, '김철수', 'INFP');
INSERT INTO mbti 
VALUES (1, 221006, '김영희', 'ESTJ');
//명시해서 값 넣기
INSERT INTO mbti (idx, name, result)
VALUES (2, '김영희', 'ESTJ');
//명시해서 값 넣기 (값 순서만 같다면 들어감)
INSERT INTO mbti (idx, name, result, pId)
VALUES (2, '김영희', 'ESTJ', 2222222);
//컬럼을 생성 (+ 제약조건)
ALTER TABLE mbti
ADD idx INT PRIMARY KEY;
//기존에 있던 컬럼의 제약조건을 변경
ALTER TABLE mbti
MODIFY COLUMN idx INT PRIMARY KEY;
//제약조건을 없앨 때
ALTER TABLE mbti
DROP PRIMARY KEY;
-- 컬럼 제약조건 초기화
ALTER TABLE mbti CHANGE COLUMN NAME 컬럼명 데이터타입(크기) NULL;
--제약조건 변경
ALTER TABLE 테이블명 MODIFY 컬럼조건; 
--제약조건 삭제
ALTER TABLE 테이블명 DROP CONSTRAINT 제약이름;


