CREATE DATABASE CAMI13;

CREATE TABLE CAMI13.REP(
    RepNo       VARCHAR(10),
    Rep_fname   VARCHAR(50),
    Rep_lname   VARCHAR(50),
    rep_SIN     VARCHAR(7),
    CONSTRAINT CAMI13.REP_PK PRIMARY KEY(RepNo),
    CONSTRAINT CAMI13.SIN_UNI UNIQUE(rep_SIN));

CREATE TABLE CAMI13.CUSTOMER(
    CustNo      VARCHAR(10),
    Cust_fname  VARCHAR(50),
    Cust_lname  VARCHAR(50),
    City        VARCHAR(30) DEFAULT 'Toronto',
    RepNo       VARCHAR(10),
    CONSTRAINT CAMI13.CUSTOMER_PK PRIMARY KEY(CustNo),
    CONSTRAINT CAMI13.CUSTOMER_REP_FK FOREIGN KEY(RepNo)
        REFERENCES CAMI13.REP(RepNo));

CREATE TABLE CAMI13.ORDER(
    OrderNo     VARCHAR(10),
    Order_date  Date,
    CustNo      VARCHAR(10) NOT NULL,
    CONSTRAINT CAMI13.ORDER_PK PRIMARY KEY(OrderNo),
    CONSTRAINT CAMI13.ORDER_CUST_FK FOREIGN KEY(CustNo)
        REFERENCES CAMI13.CUSTOMER(CustNo));

CREATE TABLE CAMI13.PART(
    PartNo      VARCHAR(10),
    Part_desc   VARCHAR(50),
    WH_name     VARCHAR(50),
    CONSTRAINT CAMI13.PART_PK PRIMARY KEY(PartNo),
    CONSTRAINT CAMI13.WH_CHECK CHECK (WH_name IN ('Niagara','Brantford'));)

CREATE TABLE CAMI13.ORDERDETAIL(
    OrderNo     VARCHAR(10),
    PartNo      VARCHAR(10),
    qty_sold    INTEGER,
    sold_price  DECIMAL(30),
    CONSTRAINT CAMI13.ORDERDETAIL_ORD_FK FOREIGN KEY(OrderNo)
        REFERENCES CAMI13.ORDER(OrderNo);
    CONSTRAINT CAMI13.ORDERDETAIL_PART_FK FOREIGN KEY(PartNo)
        REFERENCES CAMI13.PART(PartNo);
    CONSTRAINT CAMI13.ORDERDETAIL_PK PRIMARY KEY(OrderNo, PartNo));

INSERT INTO CAMI13.REP (RepNo, Rep_fname, Rep_lname, rep_SIN)
VALUES('452','Ana', 'Pena', '346753974'),
VALUES('593','Mariana', 'Leach', '389275037');

UPDATE CAMI13.REP
SET rep_SIN = '684369583'
WHERE Rep_fname = 'Ana';

INSERT INTO CAMI13.CUSTOMER(CustNo, Cust_fname, Cust_lname, city, RepNo)
VALUES('392','Rayne', 'Silva', 'London', '452'),
VALUES('123','Gilbert', 'Simon', 'Barrie', '593'),
VALUES('145','Viviana', 'Alvarado', 'Thornhill', '593');

DELETE FROM CAMI13.CUSTOMER
WHERE CustNo ='145';

INSERT INTO CAMI13.ORDER(OrderNo, Order_date, CustNo)
VALUES('111',03/14/2017, '392'),
VALUES('222',04/13/2018, '123');

UPDATE CAMI13.ORDER
SET Order_date = 05/18/2018
WHERE OrderNo = '111';

INSERT INTO CAMI13.PART(PartNo, Part_desc, warehouse_name)
VALUES('54','Voleyball','Niagara'),
VALUES('78','Basketball','Brantford'),
VALUES('90','Baseball','Brantford');

DELETE FROM CAMI13.PART
WHERE Part_desc='Baseball';

INSERT INTO CAMI13.ORDERDETAIL(OrderNo, PartNo, qty_sold, sold_price)
VALUES('111','54', 2, 6.50),
VALUES('222','78', 4, 9.90);

UPDATE CAMI13.ORDERDETAIL
SET sold_price = 11.90
WHERE PartNo = '78';

SELECT Cust_fname, Cust_lname
    FROM CAMI13.CUSTOMER
    WHERE City = 'Brantford';

SELECT od.*, p.Part_desc, o.Order_date, o.CustNo
FROM CAMI13.ORDERDETAIL AS od
INNER JOIN CAMI13.PART AS p ON (od.PartNo=p.PartNo)
INNER JOIN CAMI13.ORDER AS o ON (od.OrderNo=o.OrderNo);

ALTER TABLE CAMI13.CUSTOMER(
    ADD COLUMN Postal_code VARCHAR(10) SET DEFAULT 'UNKNOWN');

ALTER TABLE CAMI13.ORDER
	ALTER COLUMN CustNo DROP NOT NULL;

ALTER TABLE CAMI13.PART
	ADD CONSTRAINT CAMI13.PART_UNI UNIQUE(WH_name);	

CREATE VIEW CAMI13.ORDERSBYCUSTOMER AS
SELECT o.*, c.Cust_fname, c.Cust_lname
FROM CAMI13.ORDER as o 
JOIN CAMI13.CUSTOMER as c ON (o.CustNo=c.CustNo);

CREATE INDEX CAMI13.REP_FNAME_IDEX
    ON CAMI13.REP(Rep_fname DESC, Rep_lname);
