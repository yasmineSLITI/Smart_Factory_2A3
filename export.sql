--------------------------------------------------------
--  Fichier cr�� - dimanche-janvier-03-2021   
--------------------------------------------------------
DROP TABLE "MERIAM"."BILL";
DROP TABLE "MERIAM"."CLIENT";
DROP TABLE "MERIAM"."DEPOT";
DROP TABLE "MERIAM"."EMPLOYEE";
DROP TABLE "MERIAM"."FOURNISSEURS";
DROP TABLE "MERIAM"."MATERIAL";
DROP TABLE "MERIAM"."ORDERTAB";
DROP TABLE "MERIAM"."PRODUIT";
DROP TABLE "MERIAM"."PROFILE";
DROP TABLE "MERIAM"."PROJET";
DROP TABLE "MERIAM"."TOBEINVOLVEDIN";
DROP TABLE "MERIAM"."TOPROVIDE";
DROP TABLE "MERIAM"."TOSTOCK";
DROP TABLE "MERIAM"."TOSTORE";
--------------------------------------------------------
--  DDL for Sequence BILL_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "MERIAM"."BILL_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence CLIENT_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "MERIAM"."CLIENT_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence EMPLOYEE_SEQ1
--------------------------------------------------------

   CREATE SEQUENCE  "MERIAM"."EMPLOYEE_SEQ1"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ORDERTAB_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "MERIAM"."ORDERTAB_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PROFILE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "MERIAM"."PROFILE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PROJET_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "MERIAM"."PROJET_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table BILL
--------------------------------------------------------

  CREATE TABLE "MERIAM"."BILL" 
   (	"BILLNUMBER" NUMBER, 
	"ORDERID" NUMBER, 
	"PAYMENTMETHOD" VARCHAR2(20 BYTE), 
	"RELEASEDATE" DATE, 
	"TOTALAMOUNT" NUMBER, 
	"SHIPPERNAME" VARCHAR2(20 BYTE), 
	"SHIPPERPHONE" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CLIENT
--------------------------------------------------------

  CREATE TABLE "MERIAM"."CLIENT" 
   (	"ID" VARCHAR2(20 BYTE), 
	"FIRSTNAME" VARCHAR2(20 BYTE), 
	"LASTNAME" VARCHAR2(20 BYTE), 
	"COMPANYNAME" VARCHAR2(20 BYTE), 
	"PHONENUMBER" NUMBER, 
	"EMAIL" VARCHAR2(70 BYTE), 
	"WEBSITE" VARCHAR2(20 BYTE), 
	"STREET" VARCHAR2(20 BYTE), 
	"CITY" VARCHAR2(20 BYTE), 
	"ZIPCODE" NUMBER, 
	"COUNTRY" VARCHAR2(20 BYTE), 
	"BANKACCOUNTNUMBER" NUMBER, 
	"CREDITLIMIT" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table DEPOT
--------------------------------------------------------

  CREATE TABLE "MERIAM"."DEPOT" 
   (	"WAREHOUSEID" VARCHAR2(20 BYTE), 
	"TYPEOFPRODUCT" VARCHAR2(20 BYTE), 
	"NAMEOFDEPOTMANAGER" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table EMPLOYEE
--------------------------------------------------------

  CREATE TABLE "MERIAM"."EMPLOYEE" 
   (	"ID" VARCHAR2(20 BYTE), 
	"FIRSTNAME" VARCHAR2(20 BYTE), 
	"LASTNAME" VARCHAR2(20 BYTE), 
	"SEX" VARCHAR2(20 BYTE), 
	"BIRTHDATE" VARCHAR2(20 BYTE), 
	"HIREDATE" VARCHAR2(20 BYTE), 
	"ADRESSE" VARCHAR2(20 BYTE), 
	"PHONENUMBER" VARCHAR2(20 BYTE), 
	"SALARY" FLOAT(126), 
	"JOBTITLE" VARCHAR2(70 BYTE), 
	"EMAIL" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table FOURNISSEURS
--------------------------------------------------------

  CREATE TABLE "MERIAM"."FOURNISSEURS" 
   (	"ID" VARCHAR2(20 BYTE), 
	"CAMPNAME" VARCHAR2(20 BYTE), 
	"TITLE" VARCHAR2(20 BYTE), 
	"ADRESS" VARCHAR2(20 BYTE), 
	"VILLE" VARCHAR2(20 BYTE), 
	"PAYS" VARCHAR2(20 BYTE), 
	"TELEPHONE" VARCHAR2(20 BYTE), 
	"FAX" VARCHAR2(20 BYTE), 
	"PAGEACC" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MATERIAL
--------------------------------------------------------

  CREATE TABLE "MERIAM"."MATERIAL" 
   (	"ID" VARCHAR2(20 BYTE), 
	"NAME" VARCHAR2(20 BYTE), 
	"DESCRIPTION" VARCHAR2(20 BYTE), 
	"QUANTITY" VARCHAR2(20 BYTE), 
	"UNIT" VARCHAR2(20 BYTE), 
	"PRICE" VARCHAR2(20 BYTE), 
	"SUPPLIERID" VARCHAR2(20 BYTE), 
	"CURRENCY" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ORDERTAB
--------------------------------------------------------

  CREATE TABLE "MERIAM"."ORDERTAB" 
   (	"ORDERNUMBER" NUMBER, 
	"PRODUCTCODE" VARCHAR2(20 BYTE), 
	"QUANTITYORDERED" NUMBER, 
	"STATUS" VARCHAR2(20 BYTE), 
	"ORDERDATE" DATE, 
	"UNITPRICE" NUMBER, 
	"DISCOUNT" NUMBER, 
	"EXTENDEDPRICE" NUMBER, 
	"REQUIREDDATE" DATE, 
	"CUSTOMERID" VARCHAR2(20 BYTE), 
	"COMMENTS" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PRODUIT
--------------------------------------------------------

  CREATE TABLE "MERIAM"."PRODUIT" 
   (	"PRODUCTCODE" VARCHAR2(20 BYTE), 
	"PRODUCTNAME" VARCHAR2(20 BYTE), 
	"SELLPRICE" VARCHAR2(20 BYTE), 
	"QUANTITYINSTOCK" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PROFILE
--------------------------------------------------------

  CREATE TABLE "MERIAM"."PROFILE" 
   (	"ID" VARCHAR2(20 BYTE), 
	"PASSWORD" VARCHAR2(20 BYTE), 
	"JOBTITLE" VARCHAR2(70 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PROJET
--------------------------------------------------------

  CREATE TABLE "MERIAM"."PROJET" 
   (	"ID" VARCHAR2(20 BYTE), 
	"NAME" VARCHAR2(20 BYTE), 
	"DESCRIPTION" VARCHAR2(20 BYTE), 
	"STARTDATE" VARCHAR2(20 BYTE), 
	"ENDDATE" VARCHAR2(20 BYTE), 
	"BUDGET" FLOAT(126), 
	"CUSTOMERID" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TOBEINVOLVEDIN
--------------------------------------------------------

  CREATE TABLE "MERIAM"."TOBEINVOLVEDIN" 
   (	"ID" VARCHAR2(20 BYTE), 
	"PROJECTID" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TOPROVIDE
--------------------------------------------------------

  CREATE TABLE "MERIAM"."TOPROVIDE" 
   (	"MATERIALID" VARCHAR2(20 BYTE), 
	"SUPPLIERID" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TOSTOCK
--------------------------------------------------------

  CREATE TABLE "MERIAM"."TOSTOCK" 
   (	"WHAREHOUSEID" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TOSTORE
--------------------------------------------------------

  CREATE TABLE "MERIAM"."TOSTORE" 
   (	"PRODUCTCODE" VARCHAR2(20 BYTE), 
	"WHAREHOUSEID" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into MERIAM.BILL
SET DEFINE OFF;
REM INSERTING into MERIAM.CLIENT
SET DEFINE OFF;
Insert into MERIAM.CLIENT (ID,FIRSTNAME,LASTNAME,COMPANYNAME,PHONENUMBER,EMAIL,WEBSITE,STREET,CITY,ZIPCODE,COUNTRY,BANKACCOUNTNUMBER,CREDITLIMIT) values ('2','g','g','g','55','g@g.com','ggg','gg','g','5','gg','55','55');
Insert into MERIAM.CLIENT (ID,FIRSTNAME,LASTNAME,COMPANYNAME,PHONENUMBER,EMAIL,WEBSITE,STREET,CITY,ZIPCODE,COUNTRY,BANKACCOUNTNUMBER,CREDITLIMIT) values ('1','kkk','kk','k','5','kk@j.com','gg','gg','gg','99','ggg','99','99');
Insert into MERIAM.CLIENT (ID,FIRSTNAME,LASTNAME,COMPANYNAME,PHONENUMBER,EMAIL,WEBSITE,STREET,CITY,ZIPCODE,COUNTRY,BANKACCOUNTNUMBER,CREDITLIMIT) values ('22','FIRST','LAST','COMPANY','55','YAS.KL@GMAIL.COM','EZ','ADRESS','CITY','2083','COUNTRY','887','6635');
REM INSERTING into MERIAM.DEPOT
SET DEFINE OFF;
REM INSERTING into MERIAM.EMPLOYEE
SET DEFINE OFF;
Insert into MERIAM.EMPLOYEE (ID,FIRSTNAME,LASTNAME,SEX,BIRTHDATE,HIREDATE,ADRESSE,PHONENUMBER,SALARY,JOBTITLE,EMAIL) values ('10','salma','salma','female','2001-01-01','2010-01-01','mannouba','55652145','150','Laboratory Employee','khairi.slimani@esprit.tn');
Insert into MERIAM.EMPLOYEE (ID,FIRSTNAME,LASTNAME,SEX,BIRTHDATE,HIREDATE,ADRESSE,PHONENUMBER,SALARY,JOBTITLE,EMAIL) values ('8','ahmed','ahmed','male','2001-01-01','2010-01-01','ariana','77777777','100','HR Agent','khairi.slimani@esprit.tn');
Insert into MERIAM.EMPLOYEE (ID,FIRSTNAME,LASTNAME,SEX,BIRTHDATE,HIREDATE,ADRESSE,PHONENUMBER,SALARY,JOBTITLE,EMAIL) values ('9','iheb','iheb','male','2001-01-01','2010-01-01','sfax','22222223','200','Stock Employee','khairi.slimani@esprit.tn');
Insert into MERIAM.EMPLOYEE (ID,FIRSTNAME,LASTNAME,SEX,BIRTHDATE,HIREDATE,ADRESSE,PHONENUMBER,SALARY,JOBTITLE,EMAIL) values ('88','yasmine','sliti','female','1998-05-20','2010-01-01','ariana','88888888','300','Project & Services Employee','yasmin.hayder@gmail.com');
REM INSERTING into MERIAM.FOURNISSEURS
SET DEFINE OFF;
Insert into MERIAM.FOURNISSEURS (ID,CAMPNAME,TITLE,ADRESS,VILLE,PAYS,TELEPHONE,FAX,PAGEACC) values ('88','llll','jjj','jj','jj','jj','55','yy','jj');
Insert into MERIAM.FOURNISSEURS (ID,CAMPNAME,TITLE,ADRESS,VILLE,PAYS,TELEPHONE,FAX,PAGEACC) values ('99','ee','ee','ee','ee','ee','555','55','ee');
REM INSERTING into MERIAM.MATERIAL
SET DEFINE OFF;
Insert into MERIAM.MATERIAL (ID,NAME,DESCRIPTION,QUANTITY,UNIT,PRICE,SUPPLIERID,CURRENCY) values ('7','l','l','m','77','l','88','88');
Insert into MERIAM.MATERIAL (ID,NAME,DESCRIPTION,QUANTITY,UNIT,PRICE,SUPPLIERID,CURRENCY) values ('8','ff','ffff','ff','88','ff','88','88');
REM INSERTING into MERIAM.ORDERTAB
SET DEFINE OFF;
REM INSERTING into MERIAM.PRODUIT
SET DEFINE OFF;
Insert into MERIAM.PRODUIT (PRODUCTCODE,PRODUCTNAME,SELLPRICE,QUANTITYINSTOCK) values ('50','a','a',null);
Insert into MERIAM.PRODUIT (PRODUCTCODE,PRODUCTNAME,SELLPRICE,QUANTITYINSTOCK) values ('80','b','b',null);
Insert into MERIAM.PRODUIT (PRODUCTCODE,PRODUCTNAME,SELLPRICE,QUANTITYINSTOCK) values ('88','tt','77','99');
Insert into MERIAM.PRODUIT (PRODUCTCODE,PRODUCTNAME,SELLPRICE,QUANTITYINSTOCK) values ('55','jjj','888','999');
REM INSERTING into MERIAM.PROFILE
SET DEFINE OFF;
Insert into MERIAM.PROFILE (ID,PASSWORD,JOBTITLE) values ('1','77','HR Agent');
Insert into MERIAM.PROFILE (ID,PASSWORD,JOBTITLE) values ('khairi','khairi','CEO');
Insert into MERIAM.PROFILE (ID,PASSWORD,JOBTITLE) values ('88','88','Project & Services Employee');
REM INSERTING into MERIAM.PROJET
SET DEFINE OFF;
Insert into MERIAM.PROJET (ID,NAME,DESCRIPTION,STARTDATE,ENDDATE,BUDGET,CUSTOMERID) values ('21','yasmine','aziodj','09/01/2000','01/01/2000','6000','22');
Insert into MERIAM.PROJET (ID,NAME,DESCRIPTION,STARTDATE,ENDDATE,BUDGET,CUSTOMERID) values ('22','opazd','azdza','01/01/2000','01/01/2000','60000','2');
Insert into MERIAM.PROJET (ID,NAME,DESCRIPTION,STARTDATE,ENDDATE,BUDGET,CUSTOMERID) values ('23','name','description','05/01/2000','05/01/2000','5555','1');
REM INSERTING into MERIAM.TOBEINVOLVEDIN
SET DEFINE OFF;
REM INSERTING into MERIAM.TOPROVIDE
SET DEFINE OFF;
REM INSERTING into MERIAM.TOSTOCK
SET DEFINE OFF;
REM INSERTING into MERIAM.TOSTORE
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index BILLNUMBER
--------------------------------------------------------

  CREATE UNIQUE INDEX "MERIAM"."BILLNUMBER" ON "MERIAM"."BILL" ("BILLNUMBER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index CLIENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MERIAM"."CLIENT_PK" ON "MERIAM"."CLIENT" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index DEPOT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MERIAM"."DEPOT_PK" ON "MERIAM"."DEPOT" ("WAREHOUSEID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index EMPLOYEE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MERIAM"."EMPLOYEE_PK" ON "MERIAM"."EMPLOYEE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index FOURNISSEURS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MERIAM"."FOURNISSEURS_PK" ON "MERIAM"."FOURNISSEURS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index MATERIAL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MERIAM"."MATERIAL_PK" ON "MERIAM"."MATERIAL" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index TABLE1_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MERIAM"."TABLE1_PK" ON "MERIAM"."ORDERTAB" ("ORDERNUMBER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PRODUIT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MERIAM"."PRODUIT_PK" ON "MERIAM"."PRODUIT" ("PRODUCTCODE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PROFILE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MERIAM"."PROFILE_PK" ON "MERIAM"."PROFILE" ("ID", "JOBTITLE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PROFILE_PK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "MERIAM"."PROFILE_PK1" ON "MERIAM"."PROFILE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PROJET_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MERIAM"."PROJET_PK" ON "MERIAM"."PROJET" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index TOBEINVOLVEDIN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MERIAM"."TOBEINVOLVEDIN_PK" ON "MERIAM"."TOBEINVOLVEDIN" ("ID", "PROJECTID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index TOPROVIDE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MERIAM"."TOPROVIDE_PK" ON "MERIAM"."TOPROVIDE" ("MATERIALID", "SUPPLIERID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index TOSTOCK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MERIAM"."TOSTOCK_PK" ON "MERIAM"."TOSTOCK" ("WHAREHOUSEID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index TOSTORE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MERIAM"."TOSTORE_PK" ON "MERIAM"."TOSTORE" ("PRODUCTCODE", "WHAREHOUSEID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Trigger BILL_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "MERIAM"."BILL_TRG" 
BEFORE INSERT ON BILL 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.BILLNUMBER IS NULL THEN
      SELECT BILL_SEQ.NEXTVAL INTO :NEW.BILLNUMBER FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;




/
ALTER TRIGGER "MERIAM"."BILL_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CLIENT_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "MERIAM"."CLIENT_TRG" 
BEFORE INSERT ON CLIENT 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.ID IS NULL THEN
      SELECT CLIENT_SEQ.NEXTVAL INTO :NEW.ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;




/
ALTER TRIGGER "MERIAM"."CLIENT_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger EMPLOYEE_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "MERIAM"."EMPLOYEE_TRG" 
BEFORE INSERT ON EMPLOYEE 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;

/
ALTER TRIGGER "MERIAM"."EMPLOYEE_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger EMPLOYEE_TRG1
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "MERIAM"."EMPLOYEE_TRG1" 
BEFORE INSERT ON EMPLOYEE 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "MERIAM"."EMPLOYEE_TRG1" ENABLE;
--------------------------------------------------------
--  DDL for Trigger EMPLOYEE_TRG2
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "MERIAM"."EMPLOYEE_TRG2" 
BEFORE INSERT ON EMPLOYEE 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.ID IS NULL THEN
      SELECT EMPLOYEE_SEQ1.NEXTVAL INTO :NEW.ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "MERIAM"."EMPLOYEE_TRG2" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ORDERTAB_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "MERIAM"."ORDERTAB_TRG" 
BEFORE INSERT ON ORDERTAB 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.ORDERNUMBER IS NULL THEN
      SELECT ORDERTAB_SEQ.NEXTVAL INTO :NEW.ORDERNUMBER FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;




/
ALTER TRIGGER "MERIAM"."ORDERTAB_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PROFILE_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "MERIAM"."PROFILE_TRG" 
BEFORE INSERT ON PROFILE 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "MERIAM"."PROFILE_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PROFILE_TRG1
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "MERIAM"."PROFILE_TRG1" 
BEFORE INSERT ON PROFILE 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.ID IS NULL THEN
      SELECT PROFILE_SEQ.NEXTVAL INTO :NEW.ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "MERIAM"."PROFILE_TRG1" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PROJET_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "MERIAM"."PROJET_TRG" 
BEFORE INSERT ON PROJET 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.ID IS NULL THEN
      SELECT PROJET_SEQ.NEXTVAL INTO :NEW.ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;



/
ALTER TRIGGER "MERIAM"."PROJET_TRG" ENABLE;
--------------------------------------------------------
--  Constraints for Table BILL
--------------------------------------------------------

  ALTER TABLE "MERIAM"."BILL" ADD CONSTRAINT "BILLNUMBER" PRIMARY KEY ("BILLNUMBER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "MERIAM"."BILL" MODIFY ("BILLNUMBER" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CLIENT
--------------------------------------------------------

  ALTER TABLE "MERIAM"."CLIENT" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "MERIAM"."CLIENT" ADD CONSTRAINT "CLIENT_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DEPOT
--------------------------------------------------------

  ALTER TABLE "MERIAM"."DEPOT" MODIFY ("WAREHOUSEID" NOT NULL ENABLE);
  ALTER TABLE "MERIAM"."DEPOT" ADD CONSTRAINT "DEPOT_PK" PRIMARY KEY ("WAREHOUSEID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table EMPLOYEE
--------------------------------------------------------

  ALTER TABLE "MERIAM"."EMPLOYEE" ADD CONSTRAINT "EMPLOYEE_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "MERIAM"."EMPLOYEE" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FOURNISSEURS
--------------------------------------------------------

  ALTER TABLE "MERIAM"."FOURNISSEURS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "MERIAM"."FOURNISSEURS" ADD CONSTRAINT "FOURNISSEURS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MATERIAL
--------------------------------------------------------

  ALTER TABLE "MERIAM"."MATERIAL" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "MERIAM"."MATERIAL" ADD CONSTRAINT "MATERIAL_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ORDERTAB
--------------------------------------------------------

  ALTER TABLE "MERIAM"."ORDERTAB" ADD CONSTRAINT "TABLE1_PK" PRIMARY KEY ("ORDERNUMBER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "MERIAM"."ORDERTAB" MODIFY ("ORDERNUMBER" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PRODUIT
--------------------------------------------------------

  ALTER TABLE "MERIAM"."PRODUIT" MODIFY ("PRODUCTCODE" NOT NULL ENABLE);
  ALTER TABLE "MERIAM"."PRODUIT" ADD CONSTRAINT "PRODUIT_PK" PRIMARY KEY ("PRODUCTCODE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PROFILE
--------------------------------------------------------

  ALTER TABLE "MERIAM"."PROFILE" ADD CONSTRAINT "PROFILE_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "MERIAM"."PROFILE" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PROJET
--------------------------------------------------------

  ALTER TABLE "MERIAM"."PROJET" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "MERIAM"."PROJET" ADD CONSTRAINT "PROJET_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "MERIAM"."PROJET" MODIFY ("BUDGET" NOT NULL ENABLE);
  ALTER TABLE "MERIAM"."PROJET" MODIFY ("CUSTOMERID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TOBEINVOLVEDIN
--------------------------------------------------------

  ALTER TABLE "MERIAM"."TOBEINVOLVEDIN" ADD CONSTRAINT "TOBEINVOLVEDIN_PK" PRIMARY KEY ("ID", "PROJECTID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "MERIAM"."TOBEINVOLVEDIN" MODIFY ("PROJECTID" NOT NULL ENABLE);
  ALTER TABLE "MERIAM"."TOBEINVOLVEDIN" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TOPROVIDE
--------------------------------------------------------

  ALTER TABLE "MERIAM"."TOPROVIDE" ADD CONSTRAINT "TOPROVIDE_PK" PRIMARY KEY ("MATERIALID", "SUPPLIERID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "MERIAM"."TOPROVIDE" MODIFY ("SUPPLIERID" NOT NULL ENABLE);
  ALTER TABLE "MERIAM"."TOPROVIDE" MODIFY ("MATERIALID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TOSTOCK
--------------------------------------------------------

  ALTER TABLE "MERIAM"."TOSTOCK" ADD CONSTRAINT "TOSTOCK_PK" PRIMARY KEY ("WHAREHOUSEID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "MERIAM"."TOSTOCK" MODIFY ("WHAREHOUSEID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TOSTORE
--------------------------------------------------------

  ALTER TABLE "MERIAM"."TOSTORE" ADD CONSTRAINT "TOSTORE_PK" PRIMARY KEY ("PRODUCTCODE", "WHAREHOUSEID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "MERIAM"."TOSTORE" MODIFY ("WHAREHOUSEID" NOT NULL ENABLE);
  ALTER TABLE "MERIAM"."TOSTORE" MODIFY ("PRODUCTCODE" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table BILL
--------------------------------------------------------

  ALTER TABLE "MERIAM"."BILL" ADD CONSTRAINT "BILL_FK1" FOREIGN KEY ("ORDERID")
	  REFERENCES "MERIAM"."ORDERTAB" ("ORDERNUMBER") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ORDERTAB
--------------------------------------------------------

  ALTER TABLE "MERIAM"."ORDERTAB" ADD CONSTRAINT "ORDERTAB_FK1" FOREIGN KEY ("CUSTOMERID")
	  REFERENCES "MERIAM"."CLIENT" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "MERIAM"."ORDERTAB" ADD CONSTRAINT "ORDERTAB_FK2" FOREIGN KEY ("PRODUCTCODE")
	  REFERENCES "MERIAM"."PRODUIT" ("PRODUCTCODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PROJET
--------------------------------------------------------

  ALTER TABLE "MERIAM"."PROJET" ADD CONSTRAINT "PROJET_FK1" FOREIGN KEY ("CUSTOMERID")
	  REFERENCES "MERIAM"."CLIENT" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TOBEINVOLVEDIN
--------------------------------------------------------

  ALTER TABLE "MERIAM"."TOBEINVOLVEDIN" ADD CONSTRAINT "TOBEINVOLVEDIN_FK2" FOREIGN KEY ("ID")
	  REFERENCES "MERIAM"."PROJET" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TOPROVIDE
--------------------------------------------------------

  ALTER TABLE "MERIAM"."TOPROVIDE" ADD CONSTRAINT "TOPROVIDE_FK1" FOREIGN KEY ("MATERIALID")
	  REFERENCES "MERIAM"."MATERIAL" ("ID") ENABLE;
  ALTER TABLE "MERIAM"."TOPROVIDE" ADD CONSTRAINT "TOPROVIDE_FK2" FOREIGN KEY ("MATERIALID")
	  REFERENCES "MERIAM"."FOURNISSEURS" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TOSTOCK
--------------------------------------------------------

  ALTER TABLE "MERIAM"."TOSTOCK" ADD CONSTRAINT "TOSTOCK_FK1" FOREIGN KEY ("WHAREHOUSEID")
	  REFERENCES "MERIAM"."DEPOT" ("WAREHOUSEID") ENABLE;
  ALTER TABLE "MERIAM"."TOSTOCK" ADD CONSTRAINT "TOSTOCK_FK2" FOREIGN KEY ("WHAREHOUSEID")
	  REFERENCES "MERIAM"."MATERIAL" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TOSTORE
--------------------------------------------------------

  ALTER TABLE "MERIAM"."TOSTORE" ADD CONSTRAINT "TOSTORE_FK1" FOREIGN KEY ("PRODUCTCODE")
	  REFERENCES "MERIAM"."PRODUIT" ("PRODUCTCODE") ENABLE;
  ALTER TABLE "MERIAM"."TOSTORE" ADD CONSTRAINT "TOSTORE_FK2" FOREIGN KEY ("WHAREHOUSEID")
	  REFERENCES "MERIAM"."DEPOT" ("WAREHOUSEID") ENABLE;
