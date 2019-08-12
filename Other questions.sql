-- QUESTION 3
SELECT st.stud_number, st.stud_fname,st.stud_lname
FROM Student st,
(SELECT stud_lname
FROM student
GROUP BY stud_lname
HAVING COUNT(*) > 1) uni
WHERE st.stud_lname = uni.stud_lname;

-- QUESTION 4
SELECT st.stud_number,st.stud_fname,st.stud_lname, ha.hall_name
FROM Student st
JOIN Hall ha ON st.hall_number = ha.hall_number
WHERE PROG_NUMBER = 'BSC2'
AND st.stud_postal_code IN (SELECT postal_code
FROM address
WHERE place_name LIKE '%Toronto%');

-- QUESTION 5
SELECT prog_name
FROM program
MINUS
SELECT pp.prog_name
FROM program_structure ps
JOIN program pp ON ps.ps_prog_number = pp.prog_number
WHERE ps_course_code LIKE '%M200%'; -- EN101 is not a course added from the original data provided from Appendrix C;

-- QUESTION 6

SELECT pg.prog_name, co.crs_name, ps.ps_code_seq_number
FROM program_structure ps
JOIN course co ON co.crs_code = ps.ps_course_code
JOIN program pg ON pg.prog_number = ps.ps_prog_number
ORDER BY 1,3;

-- QUESTION 7

CREATE VIEW BSC4_Mathematics AS 
SELECT stu.*, pg.prog_name, ha.hall_name
FROM Student stu
JOIN Program pg ON stu.prog_number = pg.prog_number
JOIN Hall ha ON stu.hall_number = ha.hall_number
WHERE pg.prog_number = 'BSC4';


