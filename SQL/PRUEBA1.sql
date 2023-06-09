--------------------------------------------------------
-- Archivo creado  - lunes-mayo-01-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CATEGORIES
--------------------------------------------------------

  CREATE TABLE "COFFEE_COMPANY"."CATEGORIES" 
   (	"CATEGORY_ID" NUMBER(*,0), 
	"CATEGORY_NAME" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table EMPLOYEES
--------------------------------------------------------

  CREATE TABLE "COFFEE_COMPANY"."EMPLOYEES" 
   (	"EMPLOYEE_ID" NUMBER(6,0), 
	"FIRST_NAME" VARCHAR2(100 BYTE), 
	"LAST_NAME" VARCHAR2(100 BYTE), 
	"SALARY" NUMBER(8,2), 
	"SOCIAL" NUMBER(9,0), 
	"EMAIL" VARCHAR2(50 BYTE), 
	"HIRE_DATE" DATE, 
	"MANAGER_ID" NUMBER(*,0), 
	"JOB_ID" VARCHAR2(20 BYTE), 
	"PHONE_NUMBER" VARCHAR2(15 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PRODUCTS
--------------------------------------------------------

  CREATE TABLE "COFFEE_COMPANY"."PRODUCTS" 
   (	"PRODUCT_ID" NUMBER(*,0), 
	"CATEGORY_ID" NUMBER(*,0), 
	"PRODUCT_NAME" VARCHAR2(50 BYTE), 
	"PRICE" NUMBER(5,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into COFFEE_COMPANY.CATEGORIES
SET DEFINE OFF;
Insert into COFFEE_COMPANY.CATEGORIES (CATEGORY_ID,CATEGORY_NAME) values ('100','COFFEE');
Insert into COFFEE_COMPANY.CATEGORIES (CATEGORY_ID,CATEGORY_NAME) values ('200','DRINK');
Insert into COFFEE_COMPANY.CATEGORIES (CATEGORY_ID,CATEGORY_NAME) values ('300','FOOD');
REM INSERTING into COFFEE_COMPANY.EMPLOYEES
SET DEFINE OFF;
Insert into COFFEE_COMPANY.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY,SOCIAL,EMAIL,HIRE_DATE,MANAGER_ID,JOB_ID,PHONE_NUMBER) values ('1','John','Doe','50000','123456789','johndoe@example.com',to_date('01/01/22','DD/MM/RR'),null,'IT_PROG','5551234');
Insert into COFFEE_COMPANY.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY,SOCIAL,EMAIL,HIRE_DATE,MANAGER_ID,JOB_ID,PHONE_NUMBER) values ('2','Jane','Smith','60000','234567890','janesmith@example.com',to_date('01/01/22','DD/MM/RR'),'1','SALES_REP','5552345');
Insert into COFFEE_COMPANY.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY,SOCIAL,EMAIL,HIRE_DATE,MANAGER_ID,JOB_ID,PHONE_NUMBER) values ('3','Bob','Johnson','70000','345678901','bobjohnson@example.com',to_date('01/01/22','DD/MM/RR'),'1','ACCOUNTANT','5553456');
Insert into COFFEE_COMPANY.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY,SOCIAL,EMAIL,HIRE_DATE,MANAGER_ID,JOB_ID,PHONE_NUMBER) values ('4','Mary','Williams','80000','456789012','marywilliams@example.com',to_date('01/01/22','DD/MM/RR'),'2','MARKETING_REP','5554567');
Insert into COFFEE_COMPANY.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY,SOCIAL,EMAIL,HIRE_DATE,MANAGER_ID,JOB_ID,PHONE_NUMBER) values ('5','Tom','Brown','90000','567890123','tombrown@example.com',to_date('01/01/22','DD/MM/RR'),'2','IT_ADMIN','5556878');
Insert into COFFEE_COMPANY.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY,SOCIAL,EMAIL,HIRE_DATE,MANAGER_ID,JOB_ID,PHONE_NUMBER) values ('6','Sarah','Jones','100000','678901234','sarahjones@example.com',to_date('01/01/22','DD/MM/RR'),'3','FINANCE_ADMIN','5556789');
Insert into COFFEE_COMPANY.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY,SOCIAL,EMAIL,HIRE_DATE,MANAGER_ID,JOB_ID,PHONE_NUMBER) values ('7','David','Lee','110000','789012345','davidlee@example.com',to_date('01/01/22','DD/MM/RR'),'3','SALES_ADMIN','5557890');
Insert into COFFEE_COMPANY.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY,SOCIAL,EMAIL,HIRE_DATE,MANAGER_ID,JOB_ID,PHONE_NUMBER) values ('8','Karen','Kim','120000','890123456','karenkim@example.com',to_date('01/01/22','DD/MM/RR'),'4','HR_REP','5558901');
Insert into COFFEE_COMPANY.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY,SOCIAL,EMAIL,HIRE_DATE,MANAGER_ID,JOB_ID,PHONE_NUMBER) values ('9','Alex','Garcia','90000','123456789','alexgarcia@example.com',to_date('01/01/22','DD/MM/RR'),'5','SA_MAN','-5123');
Insert into COFFEE_COMPANY.EMPLOYEES (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY,SOCIAL,EMAIL,HIRE_DATE,MANAGER_ID,JOB_ID,PHONE_NUMBER) values ('10','Maria','Lopez','75000','987654321','marialopez@example.com',to_date('01/01/22','DD/MM/RR'),'5','SA_REP','5554321');
REM INSERTING into COFFEE_COMPANY.PRODUCTS
SET DEFINE OFF;
Insert into COFFEE_COMPANY.PRODUCTS (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRICE) values ('101','100','COFFEE1','1,99');
Insert into COFFEE_COMPANY.PRODUCTS (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRICE) values ('102','100','COFFEE2','0,99');
Insert into COFFEE_COMPANY.PRODUCTS (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRICE) values ('103','100','COFFEE3','1,5');
Insert into COFFEE_COMPANY.PRODUCTS (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRICE) values ('201','200','DRINK1','1,99');
Insert into COFFEE_COMPANY.PRODUCTS (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRICE) values ('202','200','DRINK2','1,5');
Insert into COFFEE_COMPANY.PRODUCTS (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRICE) values ('203','200','DRINK3','1');
Insert into COFFEE_COMPANY.PRODUCTS (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRICE) values ('301','300','FOOD1','2,99');
Insert into COFFEE_COMPANY.PRODUCTS (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRICE) values ('302','300','FOOD2','3,99');
Insert into COFFEE_COMPANY.PRODUCTS (PRODUCT_ID,CATEGORY_ID,PRODUCT_NAME,PRICE) values ('303','300','FOOD3','4,99');
--------------------------------------------------------
--  Constraints for Table EMPLOYEES
--------------------------------------------------------

  ALTER TABLE "COFFEE_COMPANY"."EMPLOYEES" ADD PRIMARY KEY ("EMPLOYEE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "COFFEE_COMPANY"."EMPLOYEES" MODIFY ("JOB_ID" NOT NULL ENABLE);
  ALTER TABLE "COFFEE_COMPANY"."EMPLOYEES" MODIFY ("HIRE_DATE" NOT NULL ENABLE);
  ALTER TABLE "COFFEE_COMPANY"."EMPLOYEES" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "COFFEE_COMPANY"."EMPLOYEES" MODIFY ("FIRST_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CATEGORIES
--------------------------------------------------------

  ALTER TABLE "COFFEE_COMPANY"."CATEGORIES" ADD PRIMARY KEY ("CATEGORY_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PRODUCTS
--------------------------------------------------------

  ALTER TABLE "COFFEE_COMPANY"."PRODUCTS" ADD PRIMARY KEY ("PRODUCT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "COFFEE_COMPANY"."PRODUCTS" MODIFY ("CATEGORY_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table PRODUCTS
--------------------------------------------------------

  ALTER TABLE "COFFEE_COMPANY"."PRODUCTS" ADD CONSTRAINT "FK_PRODUCTS_CATEGORY_ID" FOREIGN KEY ("CATEGORY_ID")
	  REFERENCES "COFFEE_COMPANY"."CATEGORIES" ("CATEGORY_ID") ENABLE;
