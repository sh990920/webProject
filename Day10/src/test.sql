CREATE DATABASE (test);

SHOW DATABASES;

USE test;

CREATE TABLE information 
(
	id INT,
	name VARCHAR(30),
	age INT,
	address VARCHAR(30)
);

DESC information;

INSERT INTO information (id, name, age, address)
VALUES (1, '홍길동', 17, '서울');
INSERT INTO information (id, name, age, address)
VALUES (2, '이순신', 20, '부산');
INSERT INTO information (id, name, age, address)
VALUES (3, '임꺽정', 18, '인천');
INSERT INTO information (id, name, age, address)
VALUES (4, '전우치', 17, '서울');

SELECT * FROM information;
