CREATE TABLE EMPLOYEE(
CODE VARCHAR(10),
NAME CHAR(20),
DOB  DATE ,
Designation VARCHAR(20),
Salary int(10) ) ;

INSERT INTO EMPLOYEE VALUES
('01','SAMUEL','1993-12-02','CEO',20000),
('02','JAISON','2000-02-04','CLERK',4000),
('03','MANISHA','2001-10-31','MANAGER',15000),
('04','LATHA','1995-12-25','CLERK',1800);
SELECT CODE,NAME,DESIGNATION FROM EMPLOYEE
ORDER BY NAME DESC;

CREATE TABLE DEPOSIT(
ACCNT_NO VARCHAR(10),
BRANCH_NAME VARCHAR(10),
AMOUNT INT(20)
);
INSERT INTO DEPOSIT VALUES
(0000001,'Kannur',200000),
(0000002,'Kochi',2992911),
(0000003,'Kannur',2000101),
(0000004,'Alappuzha',3000000),
(0000005,'Trissur',11001010),
(0000006,'Kannur',11001010);

SELECT BRANCH_NAME,COUNT(ACCNT_NO),SUM(AMOUNT) FROM DEPOSIT
GROUP BY BRANCH_NAME;
DROP TABLE DEPOSIT