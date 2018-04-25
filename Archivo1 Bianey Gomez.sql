--------------------------------------------------------
-- Archivo creado  - miércoles-abril-25-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CUSTOMERS
--------------------------------------------------------

  CREATE TABLE "EJERCICIOS"."CUSTOMERS" 
   (	"ID" NUMBER, 
	"NAME" VARCHAR2(255 BYTE), 
	"COUNTRY" VARCHAR2(255 BYTE), 
	"GRADE" NUMBER, 
	"SALESMAN_ID" NUMBER
   )
--------------------------------------------------------
--  DDL for Table ORDERS
--------------------------------------------------------

  CREATE TABLE "EJERCICIOS"."ORDERS" 
   (	"ID" NUMBER, 
	"AMOUNT" VARCHAR2(255 BYTE), 
	"ORDER_DATE" VARCHAR2(255 BYTE), 
	"CUSTOMER_ID" NUMBER, 
	"SALESMAN_ID" NUMBER
   )
--------------------------------------------------------
--  DDL for Table SALESMAN
--------------------------------------------------------

  CREATE TABLE "EJERCICIOS"."SALESMAN" 
   (	"ID" NUMBER, 
	"NAME" VARCHAR2(255 BYTE), 
	"COUNTRY" VARCHAR2(255 BYTE), 
	"COMMISSION" NUMBER(5,2)
   )
--------------------------------------------------------
--  DDL for Index PK_CUST
--------------------------------------------------------

  CREATE UNIQUE INDEX "EJERCICIOS"."PK_CUST" ON "EJERCICIOS"."CUSTOMERS" ("ID")
--------------------------------------------------------
--  DDL for Index PK_ORD
--------------------------------------------------------

  CREATE UNIQUE INDEX "EJERCICIOS"."PK_ORD" ON "EJERCICIOS"."ORDERS" ("ID")
--------------------------------------------------------
--  DDL for Index PK_SALES
--------------------------------------------------------

  CREATE UNIQUE INDEX "EJERCICIOS"."PK_SALES" ON "EJERCICIOS"."SALESMAN" ("ID")
--------------------------------------------------------
--  Constraints for Table CUSTOMERS
--------------------------------------------------------

  ALTER TABLE "EJERCICIOS"."CUSTOMERS" MODIFY ("ID" NOT NULL ENABLE)
  ALTER TABLE "EJERCICIOS"."CUSTOMERS" MODIFY ("NAME" NOT NULL ENABLE)
  ALTER TABLE "EJERCICIOS"."CUSTOMERS" MODIFY ("COUNTRY" NOT NULL ENABLE)
  ALTER TABLE "EJERCICIOS"."CUSTOMERS" MODIFY ("GRADE" NOT NULL ENABLE)
  ALTER TABLE "EJERCICIOS"."CUSTOMERS" MODIFY ("SALESMAN_ID" NOT NULL ENABLE)
  ALTER TABLE "EJERCICIOS"."CUSTOMERS" ADD CONSTRAINT "PK_CUST" PRIMARY KEY ("ID")
  USING INDEX  ENABLE
--------------------------------------------------------
--  Constraints for Table ORDERS
--------------------------------------------------------

  ALTER TABLE "EJERCICIOS"."ORDERS" MODIFY ("ID" NOT NULL ENABLE)
  ALTER TABLE "EJERCICIOS"."ORDERS" MODIFY ("AMOUNT" NOT NULL ENABLE)
  ALTER TABLE "EJERCICIOS"."ORDERS" MODIFY ("ORDER_DATE" NOT NULL ENABLE)
  ALTER TABLE "EJERCICIOS"."ORDERS" MODIFY ("CUSTOMER_ID" NOT NULL ENABLE)
  ALTER TABLE "EJERCICIOS"."ORDERS" MODIFY ("SALESMAN_ID" NOT NULL ENABLE)
  ALTER TABLE "EJERCICIOS"."ORDERS" ADD CONSTRAINT "PK_ORD" PRIMARY KEY ("ID")
  USING INDEX  ENABLE
--------------------------------------------------------
--  Constraints for Table SALESMAN
--------------------------------------------------------

  ALTER TABLE "EJERCICIOS"."SALESMAN" MODIFY ("ID" NOT NULL ENABLE)
  ALTER TABLE "EJERCICIOS"."SALESMAN" MODIFY ("NAME" NOT NULL ENABLE)
  ALTER TABLE "EJERCICIOS"."SALESMAN" MODIFY ("COUNTRY" NOT NULL ENABLE)
  ALTER TABLE "EJERCICIOS"."SALESMAN" MODIFY ("COMMISSION" NOT NULL ENABLE)
  ALTER TABLE "EJERCICIOS"."SALESMAN" ADD CONSTRAINT "PK_SALES" PRIMARY KEY ("ID")
  USING INDEX  ENABLE
--------------------------------------------------------
--  Ref Constraints for Table CUSTOMERS
--------------------------------------------------------

  ALTER TABLE "EJERCICIOS"."CUSTOMERS" ADD CONSTRAINT "FK_SALES" FOREIGN KEY ("SALESMAN_ID")
	  REFERENCES "EJERCICIOS"."SALESMAN" ("ID") ENABLE
--------------------------------------------------------
--  Ref Constraints for Table ORDERS
--------------------------------------------------------

  ALTER TABLE "EJERCICIOS"."ORDERS" ADD CONSTRAINT "FK_SALES_ORD" FOREIGN KEY ("SALESMAN_ID")
	  REFERENCES "EJERCICIOS"."SALESMAN" ("ID") ENABLE
  ALTER TABLE "EJERCICIOS"."ORDERS" ADD CONSTRAINT "FK_CUST" FOREIGN KEY ("CUSTOMER_ID")
	  REFERENCES "EJERCICIOS"."CUSTOMERS" ("ID") ENABLE
