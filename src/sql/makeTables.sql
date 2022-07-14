CREATE TABLE `USERS_TB` (
	`USER_ID`	VARCHAR(20)	NOT NULL,
	`USER_PASSWORD`	VARCHAR(20)	NOT NULL,
	`USER_NAME`	VARCHAR(20)	NOT NULL,
	`USER_TELLNUMBER`	VARCHAR(20)	NOT NULL,
	`USER_ADDRESS`	VARCHAR(100)	NOT NULL
);

CREATE TABLE `PRODUCT_TB` (
	`PRODUCT_ID`	VARCHAR(4)	NOT NULL,
	`USER_ID`	VARCHAR(20)	NOT NULL,
	`CATEGORI_ID`	VARCHAR(20)	NOT NULL,
	`MENU_ID`	VARCHAR(20)	NOT NULL,
	`MENU_DESCRIPTION`	VARCHAR(1000)	NOT NULL,
	`MENU_PRICE`	DECIMAL(18,2)	NOT NULL,
	`MENU_IMAGE`	BLOB	NOT NULL,
	`MENU_STATE`	INT(1)	NOT NULL
);

CREATE TABLE `CATEGORI_TB` (
	`CATEGORI_ID`	VARCHAR(20)	NOT NULL,
	`USER_ID`	VARCHAR(20)	NOT NULL,
	`CATEGORI_NAME`	VARCHAR(20)	NOT NULL	DEFAULT 0,
	`CATEGORI_STATE`	INT(1)	NOT NULL
);

CREATE TABLE `ORDER_TB` (
	`ORDER_DATE`	DATE	NOT NULL,
	`ORDER_NO`	INT(4)	NOT NULL,
	`USER_ID`	VARCHAR(20)	NOT NULL,
	`TABLE_NO`	INT(3)	NOT NULL,
	`ORDER_TIME`	DATETIME	NOT NULL,
	`ORDER_TYPE`	VARCHAR(2)	NOT NULL,
	`ORDER_TOTALPRICE`	DECIMAL(18,2)	NOT NULL
);

CREATE TABLE `ODER_DETAIL_TB` (
	`ORDER_NO`	INT(4)	NOT NULL,
	`PRODUCT_ID`	VARCHAR(4)	NOT NULL,
	`USER_ID`	VARCHAR(20)	NOT NULL,
	`CATEGORI_ID`	VARCHAR(20)	NOT NULL,
	`TABLE_NO`	INT(3)	NOT NULL,
	`ORDER_DATE`	DATE	NOT NULL,
	`MENU_PRICE`	DECIMAL(18,2)	NOT NULL
);

CREATE TABLE `QR_TB` (
	`QR_SEQUENCE`	INT(4)	NOT NULL,
	`QR_SERIALNUMBER`	INT(10)	NOT NULL,
	`TABLE_NO`	INT(3)	NOT NULL,
	`USER_ID`	VARCHAR(20)	NOT NULL,
	`QR_CREATE_TIME`	DATETIME	NOT NULL
);

CREATE TABLE `TBABLE_TB` (
	`TABLE_NO`	INT(3)	NOT NULL,
	`USER_ID`	VARCHAR(20)	NOT NULL,
	`TABLE_STATE`	INT(1)	NOT NULL	DEFAULT 11
);

ALTER TABLE `USERS_TB` ADD CONSTRAINT `PK_USERS_TB` PRIMARY KEY (
	`USER_ID`
);

ALTER TABLE `PRODUCT_TB` ADD CONSTRAINT `PK_PRODUCT_TB` PRIMARY KEY (
	`PRODUCT_ID`,
	`USER_ID`,
	`CATEGORI_ID`
);

ALTER TABLE `CATEGORI_TB` ADD CONSTRAINT `PK_CATEGORI_TB` PRIMARY KEY (
	`CATEGORI_ID`,
	`USER_ID`
);

ALTER TABLE `ORDER_TB` ADD CONSTRAINT `PK_ORDER_TB` PRIMARY KEY (
	`ORDER_DATE`,
	`ORDER_NO`,
	`USER_ID`,
	`TABLE_NO`
);

ALTER TABLE `ODER_DETAIL_TB` ADD CONSTRAINT `PK_ODER_DETAIL_TB` PRIMARY KEY (
	`ORDER_NO`,
	`PRODUCT_ID`,
	`USER_ID`,
	`CATEGORI_ID`,
	`TABLE_NO`,
	`ORDER_DATE`
);

ALTER TABLE `QR_TB` ADD CONSTRAINT `PK_QR_TB` PRIMARY KEY (
	`QR_SEQUENCE`,
	`QR_SERIALNUMBER`,
	`TABLE_NO`,
	`USER_ID`
);

ALTER TABLE `TBABLE_TB` ADD CONSTRAINT `PK_TBABLE_TB` PRIMARY KEY (
	`TABLE_NO`,
	`USER_ID`
);

ALTER TABLE `PRODUCT_TB` ADD CONSTRAINT `FK_USERS_TB_TO_PRODUCT_TB_1` FOREIGN KEY (
	`USER_ID`
)
REFERENCES `USERS_TB` (
	`USER_ID`
);

ALTER TABLE `PRODUCT_TB` ADD CONSTRAINT `FK_CATEGORI_TB_TO_PRODUCT_TB_1` FOREIGN KEY (
	`CATEGORI_ID`
)
REFERENCES `CATEGORI_TB` (
	`CATEGORI_ID`
);

ALTER TABLE `CATEGORI_TB` ADD CONSTRAINT `FK_USERS_TB_TO_CATEGORI_TB_1` FOREIGN KEY (
	`USER_ID`
)
REFERENCES `USERS_TB` (
	`USER_ID`
);

ALTER TABLE `ORDER_TB` ADD CONSTRAINT `FK_USERS_TB_TO_ORDER_TB_1` FOREIGN KEY (
	`USER_ID`
)
REFERENCES `USERS_TB` (
	`USER_ID`
);

ALTER TABLE `ORDER_TB` ADD CONSTRAINT `FK_TBABLE_TB_TO_ORDER_TB_1` FOREIGN KEY (
	`TABLE_NO`
)
REFERENCES `TBABLE_TB` (
	`TABLE_NO`
);

ALTER TABLE `ODER_DETAIL_TB` ADD CONSTRAINT `FK_ORDER_TB_TO_ODER_DETAIL_TB_1` FOREIGN KEY (
	`ORDER_NO`
)
REFERENCES `ORDER_TB` (
	`ORDER_NO`
);

ALTER TABLE `ODER_DETAIL_TB` ADD CONSTRAINT `FK_ORDER_TB_TO_ODER_DETAIL_TB_2` FOREIGN KEY (
	`TABLE_NO`
)
REFERENCES `ORDER_TB` (
	`TABLE_NO`
);

ALTER TABLE `ODER_DETAIL_TB` ADD CONSTRAINT `FK_ORDER_TB_TO_ODER_DETAIL_TB_3` FOREIGN KEY (
	`ORDER_DATE`
)
REFERENCES `ORDER_TB` (
	`ORDER_DATE`
);

ALTER TABLE `ODER_DETAIL_TB` ADD CONSTRAINT `FK_PRODUCT_TB_TO_ODER_DETAIL_TB_1` FOREIGN KEY (
	`PRODUCT_ID`
)
REFERENCES `PRODUCT_TB` (
	`PRODUCT_ID`
);

ALTER TABLE `ODER_DETAIL_TB` ADD CONSTRAINT `FK_PRODUCT_TB_TO_ODER_DETAIL_TB_2` FOREIGN KEY (
	`USER_ID`
)
REFERENCES `PRODUCT_TB` (
	`USER_ID`
);

ALTER TABLE `ODER_DETAIL_TB` ADD CONSTRAINT `FK_PRODUCT_TB_TO_ODER_DETAIL_TB_3` FOREIGN KEY (
	`CATEGORI_ID`
)
REFERENCES `PRODUCT_TB` (
	`CATEGORI_ID`
);

ALTER TABLE `QR_TB` ADD CONSTRAINT `FK_TBABLE_TB_TO_QR_TB_1` FOREIGN KEY (
	`TABLE_NO`
)
REFERENCES `TBABLE_TB` (
	`TABLE_NO`
);

ALTER TABLE `QR_TB` ADD CONSTRAINT `FK_TBABLE_TB_TO_QR_TB_2` FOREIGN KEY (
	`USER_ID`
)
REFERENCES `TBABLE_TB` (
	`USER_ID`
);

ALTER TABLE `TBABLE_TB` ADD CONSTRAINT `FK_USERS_TB_TO_TBABLE_TB_1` FOREIGN KEY (
	`USER_ID`
)
REFERENCES `USERS_TB` (
	`USER_ID`
);

