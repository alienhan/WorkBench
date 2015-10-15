/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2015/10/11 10:10:32                          */
/*==============================================================*/


drop table if exists DEV_MENU_ITEM_TB;

drop table if exists DEV_MENU_MODULE_TB;

drop table if exists DEV_MENU_TB;

drop table if exists DEV_USER_TB;

drop table if exists DEV_USER_TYPE_TB;

/*==============================================================*/
/* Table: DEV_MENU_ITEM_TB                                      */
/*==============================================================*/
create table DEV_MENU_ITEM_TB
(
   ITEM_ID              int not null,
   ITEM_NAME            varchar(200),
   ITEM_ADDRESS         varchar(200),
   ITEM_POSITION        varchar(200),
   ITEM_VALID           varchar(200),
   ITEM_IMAGE           varchar(400),
   ITEM_FUNC            varchar(200),
   ITEM_REAL_PATH       varchar(400),
   ITEM_RANK            varchar(50),
   ITEM_PARENT_ID       int,
   MENU_ID              int not null,
   ITEM_DESC            varchar(400),
   INSERT_TIME          timestamp,
   primary key (ITEM_ID)
);

/*==============================================================*/
/* Table: DEV_MENU_MODULE_TB                                    */
/*==============================================================*/
create table DEV_MENU_MODULE_TB
(
   MODULE_ID            int not null auto_increment,
   MODULE_NAME          varchar(200),
   MODULE_TAG           int,
   INSERT_TIME          timestamp,
   primary key (MODULE_ID)
);

/*==============================================================*/
/* Table: DEV_MENU_TB                                           */
/*==============================================================*/
create table DEV_MENU_TB
(
   MENU_ID              int not null auto_increment,
   MENU_NAME            varchar(200),
   MENU_LINK_PATH       varchar(200),
   MENU_POSIT           varchar(200),
   MENU_VALID           boolean,
   MENU_IMAGE           varchar(400),
   MENU_FUNC            varchar(200),
   MENU_REAL_PATH       varchar(400),
   MODULE_ID            int,
   MENU_DESC            varchar(400),
   TYPE_ID              int,
   INSERT_TIME          timestamp,
   primary key (MENU_ID)
);

/*==============================================================*/
/* Table: DEV_USER_TB                                           */
/*==============================================================*/
create table DEV_USER_TB
(
   USER_ID              int not null auto_increment,
   USER_NAME            varchar(200),
   USER_PWD             varchar(200),
   USER_INIT_PWD        varchar(200),
   USER_NICK_NAME       varchar(200),
   USER_EMAIL           varchar(200),
   USER_TEL             varchar(200),
   USER_VALID           varchar(50),
   USER_PREV_PWD        varchar(200),
   TYPE_ID              int,
   INSERT_TIME          timestamp,
   primary key (USER_ID)
);

/*==============================================================*/
/* Table: DEV_USER_TYPE_TB                                      */
/*==============================================================*/
create table DEV_USER_TYPE_TB
(
   TYPE_ID              int not null auto_increment,
   TYPE_NAME            varchar(200),
   TYPE_TAG             int,
   INSERT_TIME          timestamp,
   primary key (TYPE_ID)
);

