
DROP VIEW FARA54.CUSTOMER_VW;

CREATE VIEW FARA54.CUSTOMER_VW AS
SELECT CUS_FNAME AS "FIRST NAME", CUS_LNAME LASTNAME, CUS_INITIAL
	FROM FARA54.CUSTOMER;

CREATE VIEW FARA54.CUSTOMER_VW (FNAME, LNAME, CUS_INITIAL)
AS
SELECT CUS_FNAME, CUS_LNAME, CUS_INITIAL
	FROM FARA54.CUSTOMER;

SELECT * 
	FROM FARA54.SYSVIEWS;
SELECT *
	FROM FARA54.CUSTOMER_VW
	ORDER BY "FIRST NAME" DESC, 2 ASC;

SELECT *
	FROM FARA54.CUSTOMER
	WHERE UPPER(CUS_LNAME) = 'SMITH';

SELECT *
	FROM FARA54.CUSTOMER
	WHERE LOWER(CUS_LNAME) = 'smith';

CREATE INDEX FARA54.CUST_LNAME_IDX
	ON FARA54.CUSTOMER(CUS_LNAME);


CREATE INDEX FARA54.CUST_LNAME_IDX2
	ON FARA54.CUSTOMER(CUS_LNAME DESC, CUS_FNAME);

SELECT EMP_FNAME, EMP_LNAME, CHAR_DESTINATION, CHAR_DATE,
	CUS_FNAME, CUS_LNAME
	FROM FARA54.EMPLOYEE E, FARA54.CREW C, FARA54.CHARTER CH, FARA54.CUSTOMER CU
	WHERE E.EMP_NUM = C.EMP_NUM AND
		CH.CHAR_TRIP = C.CHAR_TRIP AND
		CH.CUS_CODE = CU.CUS_CODE;

SELECT EMP_FNAME, EMP_LNAME, CHAR_DESTINATION, CHAR_DATE,
	CUS_FNAME, CUS_LNAME
	FROM FARA54.EMPLOYEE E 
	JOIN FARA54.CREW C ON (E.EMP_NUM = C.EMP_NUM)
	JOIN FARA54.CHARTER CH ON (CH.CHAR_TRIP = C.CHAR_TRIP) 
	JOIN FARA54.CUSTOMER CU ON (CH.CUS_CODE = CU.CUS_CODE);

SELECT E.EMP_NUM, EMP_FNAME || ' ' || EMP_LNAME AS "EMPLOYEE NAME", CHAR_DESTINATION, CHAR_DATE,
	CUS_FNAME, CUS_LNAME
	FROM FARA54.EMPLOYEE E 
	LEFT OUTER JOIN FARA54.CREW C ON (E.EMP_NUM = C.EMP_NUM)
	JOIN FARA54.CHARTER CH ON (CH.CHAR_TRIP = C.CHAR_TRIP) 
	JOIN FARA54.CUSTOMER CU ON (CH.CUS_CODE = CU.CUS_CODE);
	





