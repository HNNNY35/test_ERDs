-- 회원 가입 절차
INSERT INTO users (UNIQUE_ID, NAME, EMAIL, JOB)
VALUES ('U1', 'Paul', 'paul01@gmail.com', 'IT Billing')
;

INSERT INTO users (UNIQUE_ID, NAME, EMAIL, JOB)
VALUES ('U2', 'Allen', 'texas@imfblog.org', 'Engineering')
;

INSERT INTO users (UNIQUE_ID, NAME, EMAIL, JOB)
VALUES ('U3', 'Teddy', 'norway@iotm.com', 'IT Billing')
;

-- 회원 권한
INSERT INTO auths (UNIQUE_ID_USERS, UNIQUE_ID_AUTH_NAME)
VALUES ('U1', 'B1')
;
INSERT INTO auths (UNIQUE_ID_USERS, UNIQUE_ID_AUTH_NAME)
VALUES ('U2', 'B2')
;

INSERT INTO auths (UNIQUE_ID_USERS, UNIQUE_ID_AUTH_NAME)
VALUES ('U3', 'B1')
;

-- 회원 탈퇴
DELETE FROM auths 
WHERE UNIQUE_ID_USERS IN ('U1');

DELETE FROM users 
WHERE UNIQUE_ID IN ('U1');

DELETE FROM auths 
WHERE UNIQUE_ID_USERS IN ('U3');

DELETE FROM users 
WHERE UNIQUE_ID IN ('U3');


SELECT *
FROM users
;

SELECT *
FROM auths
;