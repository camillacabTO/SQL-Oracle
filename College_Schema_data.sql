
Insert into STUDENT (STUD_NUMBER,STUD_LNAME,STUD_FNAME,PROG_NUMBER, HALL_NUMBER,STUD_DOB_YEAR) 
    values (100,'Foster','Bruce','BSC1','Chan',1978);
Insert into STUDENT (STUD_NUMBER,STUD_LNAME,STUD_FNAME,PROG_NUMBER, HALL_NUMBER,STUD_DOB_YEAR) 
    values (105,'Jones','Bruce','BSC2','Chan',1970);
Insert into STUDENT (STUD_NUMBER,STUD_LNAME,STUD_FNAME,PROG_NUMBER, HALL_NUMBER,STUD_DOB_YEAR) 
    values (110,'James','Enos','BSC1','Urv',1966);
Insert into STUDENT (STUD_NUMBER,STUD_LNAME,STUD_FNAME,PROG_NUMBER, HALL_NUMBER,STUD_DOB_YEAR) 
    values (115,'James','Yvonne','BSC1','Mars',1970);
Insert into STUDENT (STUD_NUMBER,STUD_LNAME,STUD_FNAME,PROG_NUMBER, HALL_NUMBER,STUD_DOB_YEAR) 
    values (120,'Douglas','Henry','BSC2','Urv',1970);
Insert into STUDENT (STUD_NUMBER,STUD_LNAME,STUD_FNAME,PROG_NUMBER, HALL_NUMBER,STUD_DOB_YEAR) 
    values (125,'Henry','Suzanne','BSC2','Urv',1968);
Insert into STUDENT (STUD_NUMBER,STUD_LNAME,STUD_FNAME,PROG_NUMBER, HALL_NUMBER,STUD_DOB_YEAR) 
    values (130,'Lambert','Cecille','BSC5','Mars',1978);

Insert into PROGRAM (PROG_NUMBER,PROG_NAME) values ('BSC1','Bachelor of Science in MIS');
Insert into PROGRAM (PROG_NUMBER,PROG_NAME) values ('BSC2','Bachelor of Science in Computer Science');
Insert into PROGRAM (PROG_NUMBER,PROG_NAME) values ('BSC3','Bachelor of Science in Eletronic Engineering');
Insert into PROGRAM (PROG_NUMBER,PROG_NAME) values ('BSC4','Bachelor of Science in Mathematics');
Insert into PROGRAM (PROG_NUMBER,PROG_NAME) values ('BSC5','Bachelor of Science in Computer Science and Mathematics');
Insert into PROGRAM (PROG_NUMBER,PROG_NAME) values ('BSC6','Bachelor of Science in Computer Science and Eletronics');
Insert into PROGRAM (PROG_NUMBER,PROG_NAME) values ('BSC7','Bachelor of Science in Chemistry');
Insert into PROGRAM( PROG_NUMBER,PROG_NAME) values ('BSC8','Bachelor of Science in Physics');

Insert into DEPARTMENT (DEPT_NUMBER,DEPT_NAME,DEPT_HEAD,DEPT_DIV_NUMBER) values ('MTH','Department of Mathematics','S10','D01');
Insert into DEPARTMENT (DEPT_NUMBER,DEPT_NAME,DEPT_HEAD,DEPT_DIV_NUMBER) values ('CSC','Department of Computer Science','S15','D01');
Insert into DEPARTMENT (DEPT_NUMBER,DEPT_NAME,DEPT_HEAD,DEPT_DIV_NUMBER) values ('PHY','Department of Physics','S05','D01');
Insert into DEPARTMENT (DEPT_NUMBER,DEPT_NAME,DEPT_HEAD,DEPT_DIV_NUMBER) values ('MGT','Department of Management Studies','S20','D01');
Insert into DEPARTMENT (DEPT_NUMBER,DEPT_NAME,DEPT_HEAD,DEPT_DIV_NUMBER) values ('MSC','Department of Music','S30','D02');

Insert into COURSE (CRS_CODE,CRS_NAME) values ('CS100','Introduction to Computer Science');
Insert into COURSE (CRS_CODE,CRS_NAME) values ('CS210','Data Structures');
Insert into COURSE (CRS_CODE,CRS_NAME) values ('CS220','Visual Programming');
Insert into COURSE (CRS_CODE,CRS_NAME) values ('CS330','Software Engineering');
Insert into COURSE (CRS_CODE,CRS_NAME) values ('CS360','Database Systems');
Insert into COURSE (CRS_CODE,CRS_NAME) values ('M100','Calculus I');
Insert into COURSE (CRS_CODE,CRS_NAME) values ('M110','Mechanics');
Insert into COURSE (CRS_CODE,CRS_NAME) values ('M200','Calculus II');
Insert into COURSE (CRS_CODE,CRS_NAME) values ('M210','Linear Algebra');

Insert into HALL (HALL_NUMBER, HALL_NAME) values ('Chan','Chancellor Hall');
Insert into HALL (HALL_NUMBER, HALL_NAME) values ('Len','Lenheim Hall');
Insert into HALL (HALL_NUMBER, HALL_NAME) values ('Mars','Mary Seacole Hall');
Insert into HALL (HALL_NUMBER, HALL_NAME) values ('Urv','Urvine Hall');

Insert into STAFF (STAFF_NUMBER,STAFF_SALUTATION,STAFF_FNAME,STAFF_LNAME)
    values ('S05','Prof.','Christine', 'Farr');
Insert into STAFF (STAFF_NUMBER,STAFF_SALUTATION,STAFF_FNAME,STAFF_LNAME)
    values ('S10','Dr.','Paul', 'Phillips');
Insert into STAFF (STAFF_NUMBER,STAFF_SALUTATION,STAFF_FNAME,STAFF_LNAME)
    values ('S15','Dr.','Scott', 'Foster');
Insert into STAFF (STAFF_NUMBER,STAFF_SALUTATION,STAFF_FNAME,STAFF_LNAME)
    values ('S20','Prof.','Hans', 'Gaur');
Insert into STAFF (STAFF_NUMBER,STAFF_SALUTATION,STAFF_FNAME,STAFF_LNAME)
    values ('S25','Dr.','Bruce', 'Lambert');
Insert into STAFF (STAFF_NUMBER,STAFF_SALUTATION,STAFF_FNAME,STAFF_LNAME)
    values ('S30','Dr.','Carolyn', 'Henry');
Insert into STAFF (STAFF_NUMBER,STAFF_SALUTATION,STAFF_FNAME,STAFF_LNAME)
    values ('S35','Dr.','Enid', 'Armstrong');
Insert into STAFF (STAFF_NUMBER,STAFF_SALUTATION,STAFF_FNAME,STAFF_LNAME)
    values ('S40','Dr.','Calvin', 'Golding');

Insert into PROGRAM_STRUCTURE (PS_PROG_NUMBER,PS_COURSE_CODE,PS_CODE_SEQ_NUMBER)
    values ('BSC1','M100',01);
Insert into PROGRAM_STRUCTURE (PS_PROG_NUMBER,PS_COURSE_CODE,PS_CODE_SEQ_NUMBER)
    values ('BSC1','M200',02);
Insert into PROGRAM_STRUCTURE (PS_PROG_NUMBER,PS_COURSE_CODE,PS_CODE_SEQ_NUMBER)
    values ('BSC1','CS100',03);
Insert into PROGRAM_STRUCTURE (PS_PROG_NUMBER,PS_COURSE_CODE,PS_CODE_SEQ_NUMBER)
    values ('BSC1','CS210',04);
Insert into PROGRAM_STRUCTURE (PS_PROG_NUMBER,PS_COURSE_CODE,PS_CODE_SEQ_NUMBER)
    values ('BSC1','CS220',05);
Insert into PROGRAM_STRUCTURE (PS_PROG_NUMBER,PS_COURSE_CODE,PS_CODE_SEQ_NUMBER)
    values ('BSC2','CS100',01);
Insert into PROGRAM_STRUCTURE (PS_PROG_NUMBER,PS_COURSE_CODE,PS_CODE_SEQ_NUMBER)
    values ('BSC2','CS210',02);
Insert into PROGRAM_STRUCTURE (PS_PROG_NUMBER,PS_COURSE_CODE,PS_CODE_SEQ_NUMBER)
    values ('BSC2','CS220',03);
Insert into PROGRAM_STRUCTURE (PS_PROG_NUMBER,PS_COURSE_CODE,PS_CODE_SEQ_NUMBER)
    values ('BSC2','M100',16);

Insert into DIVISION (DIV_NUMBER,DIV_NAME,DIV_HEAD)
    values ('D01','Division of Pure and Applied Sciences','S25');
Insert into DIVISION (DIV_NUMBER,DIV_NAME,DIV_HEAD)
    values ('D02','Division of Arts and Humanities','S30');
Insert into DIVISION (DIV_NUMBER,DIV_NAME,DIV_HEAD)
    values ('D03','Division of Education and Psychology','S35');

UPDATE STUDENT
SET STUD_POSTAL_CODE = 'M4E'
WHERE STUD_LNAME = 'Foster';
UPDATE STUDENT
SET STUD_POSTAL_CODE = 'M3K'
WHERE STUD_LNAME = 'Jones';
UPDATE STUDENT
SET STUD_POSTAL_CODE = 'S4S'
WHERE STUD_LNAME = 'Douglas';
UPDATE STUDENT
SET STUD_POSTAL_CODE = 'G2K'
WHERE STUD_LNAME = 'Henry';
UPDATE STUDENT
SET STUD_POSTAL_CODE = 'V9R'
WHERE STUD_LNAME = 'Lambert';
UPDATE STUDENT
SET STUD_POSTAL_CODE = 'N8S'
WHERE STUD_FNAME = 'Enos';
UPDATE STUDENT
SET STUD_POSTAL_CODE = 'M6P'
WHERE STUD_FNAME = 'Yvonne';

Insert into STUDENT (STUD_NUMBER,STUD_LNAME,STUD_FNAME,PROG_NUMBER, HALL_NUMBER,STUD_DOB_YEAR) 
    values (135,'Barros','Camila','BSC4','Mars',1988);