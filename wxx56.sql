/*==============================================================*/
/* DBMS name:      Sybase SQL Anywhere 12                       */
/* Created on:     2017/9/20 9:19:11                            */
/*==============================================================*/




/*==============================================================*/
/* Table: wx_address                                            */
/*==============================================================*/
create table wx_address 
(
   id                   integer                        not null,
   addr_desc            varchar(100)                   not null,
   user_id              integer                        not null,
   constraint PK_WX_ADDRESS primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;;

/*==============================================================*/
/* Index: wx_address_PK                                         */
/*==============================================================*/
create unique index wx_address_PK on wx_address (
id ASC
);

/*==============================================================*/
/* Table: wx_basic_status                                       */
/*==============================================================*/
create table wx_basic_status 
(
   id                   integer                        not null,
   code                 integer                        not null,
   remark               varchar(20)                    not null,
   type                 integer                        not null,
   constraint PK_WX_BASIC_STATUS primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;;

/*==============================================================*/
/* Index: wx_basic_status_PK                                    */
/*==============================================================*/
create unique index wx_basic_status_PK on wx_basic_status (
id ASC
);

/*==============================================================*/
/* Table: wx_cart                                               */
/*==============================================================*/
create table wx_cart 
(
   id                   integer                        not null,
   goods_id             integer                        not null,
   user_id              integer                        not null,
   num                  integer                        not null,
   constraint PK_WX_CART primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;;

/*==============================================================*/
/* Index: wx_cart_PK                                            */
/*==============================================================*/
create unique index wx_cart_PK on wx_cart (
id ASC
);

/*==============================================================*/
/* Table: wx_delivery                                           */
/*==============================================================*/
create table wx_delivery 
(
   id                   integer                        not null,
   order_id             integer                        not null,
   code                 varchar(20)                    not null,
   status_code          integer                        not null,
   address_id           integer                        not null,
   remark               varchar(50)                    null,
   express_linkman      varchar(20)                    null,
   express_name         varchar(20)                    null,
   express_linkman_phone varchar(20)                    null,
   express_no           varchar(30)                    not null,
   user_id              integer                        null,
   constraint PK_WX_DELIVERY primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;;

/*==============================================================*/
/* Index: wx_delivery_PK                                        */
/*==============================================================*/
create unique index wx_delivery_PK on wx_delivery (
id ASC
);

/*==============================================================*/
/* Table: wx_goods                                              */
/*==============================================================*/
create table wx_goods 
(
   id                   integer                        not null,
   name                 varchar(20)                    not null,
   code                 varchar(20)                    not null,
   price                numeric(8,0)                   not null,
   status_code          integer                        null,
   remark               varchar(50)                    null,
   constraint PK_WX_GOODS primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;;

/*==============================================================*/
/* Index: wx_goods_PK                                           */
/*==============================================================*/
create unique index wx_goods_PK on wx_goods (
id ASC
);

/*==============================================================*/
/* Table: wx_menu                                               */
/*==============================================================*/
create table wx_menu 
(
   id                   integer                        not null,
   url                  varchar(50)                    not null,
   code                 varchar(20)                    not null,
   menu_name            varchar(20)                    not null,
   constraint PK_WX_MENU primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;;

/*==============================================================*/
/* Index: wx_menu_PK                                            */
/*==============================================================*/
create unique index wx_menu_PK on wx_menu (
id ASC
);

/*==============================================================*/
/* Table: wx_order                                              */
/*==============================================================*/
create table wx_order 
(
   id                   integer                        not null,
   total_price          numeric(10)                    not null,
   remark               varchar(50)                    null,
   address_id           integer                        not null,
   code                 varchar(20)                    not null,
   user_id              integer                        not null,
   status_code          integer                        null,
   constraint PK_WX_ORDER primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;;

/*==============================================================*/
/* Index: wx_order_PK                                           */
/*==============================================================*/
create unique index wx_order_PK on wx_order (
id ASC
);

/*==============================================================*/
/* Table: wx_order_item                                         */
/*==============================================================*/
create table wx_order_item 
(
   id                   integer                        not null,
   order_id             integer                        not null,
   price                numeric(10)                    not null,
   num                  numeric(10)                    not null,
   remark               varchar(50)                    null,
   constraint PK_WX_ORDER_ITEM primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;;

/*==============================================================*/
/* Index: wx_order_item_PK                                      */
/*==============================================================*/
create unique index wx_order_item_PK on wx_order_item (
id ASC
);

/*==============================================================*/
/* Table: wx_role                                               */
/*==============================================================*/
create table wx_role 
(
   id                   integer                        not null,
   name                 varchar(20)                    null,
   code                 varchar(20)                    null,
   constraint PK_WX_ROLE primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;;

/*==============================================================*/
/* Index: wx_role_PK                                            */
/*==============================================================*/
create unique index wx_role_PK on wx_role (
id ASC
);

/*==============================================================*/
/* Table: wx_role_menu                                          */
/*==============================================================*/
create table wx_role_menu 
(
   id                   integer                        not null,
   role_id              integer                        not null,
   menu_id              integer                        not null,
   constraint PK_WX_ROLE_MENU primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;;

/*==============================================================*/
/* Index: wx_role_menu_PK                                       */
/*==============================================================*/
create unique index wx_role_menu_PK on wx_role_menu (
id ASC
);

/*==============================================================*/
/* Table: wx_user                                               */
/*==============================================================*/
create table wx_user 
(
   id                   integer                        not null,
   code                 varchar(20)                    not null,
   name                 varchar(20)                    null,
   email                varchar(20)                    null,
   phone                varchar(20)                    not null,
   password             varchar(20)                    null,
   remark               varchar(50)                    null,
   constraint PK_WX_USER primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;;

/*==============================================================*/
/* Index: wx_user_PK                                            */
/*==============================================================*/
create unique index wx_user_PK on wx_user (
id ASC
);

/*==============================================================*/
/* Table: wx_user_role                                          */
/*==============================================================*/
create table wx_user_role 
(
   id                   integer                        not null,
   user_id              integer                        not null,
   role                 integer                        not null,
   constraint PK_WX_USER_ROLE primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;;

/*==============================================================*/
/* Index: wx_user_role_PK                                       */
/*==============================================================*/
create unique index wx_user_role_PK on wx_user_role (
id ASC
);

alter table wx_address modify id integer auto_increment ;  
alter table wx_basic_status modify id integer auto_increment ;  
alter table wx_cart modify id integer auto_increment ;  
alter table wx_delivery modify id integer auto_increment ;  
alter table wx_menu modify id integer auto_increment ;  
alter table wx_order modify id integer auto_increment ;  
alter table wx_order_item modify id integer auto_increment ;  
alter table wx_role modify id integer auto_increment ;  
alter table wx_role_menu modify id integer auto_increment ;  
alter table wx_user modify id integer auto_increment ;  
alter table wx_user_role modify id integer auto_increment ; 


