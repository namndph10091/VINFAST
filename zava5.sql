create database zava5



-- USERS
IF OBJECT_ID('users') IS NOT NULL
DROP TABLE users
GO
CREATE TABLE users(
username NVARCHAR(255),
password NVARCHAR(255),
fullname nvarchar(255),
email	nvarchar(255),
photo	nvarchar(255),
activated bit,
admin bit,
CONSTRAINT PK_users PRIMARY KEY(username),
)
-- orders
IF OBJECT_ID('orders') IS NOT NULL
DROP TABLE orders
GO
CREATE TABLE orders(
id bigint IDENTITY,
username NVARCHAR(255),
cteateDate datetime,
status int,
address	nvarchar(255),
CONSTRAINT PK_orders PRIMARY KEY(id),
CONSTRAINT FK_orders_users FOREIGN KEY(username) REFERENCES users
)
-- orders
IF OBJECT_ID('orders_detail') IS NOT NULL
DROP TABLE orders_detail
GO
CREATE TABLE orders_detail(
id bigint IDENTITY,
orderid bigint,
productid int,
price float,
quantity int,
CONSTRAINT PK_orders_detail PRIMARY KEY(id),
CONSTRAINT FK_orders_detail_orders FOREIGN KEY(orderid) REFERENCES orders,
CONSTRAINT FK_orders_detail_products FOREIGN KEY(productid) REFERENCES products,
)
-- orders
IF OBJECT_ID('products') IS NOT NULL
DROP TABLE products
GO
CREATE TABLE products(
id INT IDENTITY,
name nvarchar(255) ,
images nvarchar(255) ,
price float ,
createDate datetime,
available bit ,
categoryid char(5) ,
CONSTRAINT PK_products PRIMARY KEY(id),
CONSTRAINT FK_products_categories FOREIGN KEY(categoryid) REFERENCES categories,
)
-- category
IF OBJECT_ID('categories') IS NOT NULL
DROP TABLE categories
GO
CREATE TABLE categories(
id char(5),
name NVARCHAR(255),
CONSTRAINT PK_categories PRIMARY KEY(id),
)
insert into users values('nam','nam123456','namnd','nam@gmail.com','1P.jpg',1,1)
insert into users values('phuong','nam123456','AnQuynhGiang','anquynhgiang@gmail.com','AQG.jpg',1,1)
insert into users values('nam123','nam123456','VuongPhuong','phuong@gmail.com','AnQuynh.jpg',1,1)
delete users
insert into categories values('1','Fadil')
insert into categories values('2','LuxA')
insert into categories values('3','LuxSA')
insert into categories values('4','VFE34')

insert into products values('VinFast Lux A','/images/vinfast.jpg',800000000,GETDATE(),1,'4')
insert into products values('VinFast Fadil','/images/vinfast.jpg',890000000,GETDATE(),1,'4')
insert into products values('VinFast VFE34','/images/vinfast.jpg',1200000000,GETDATE(),1,'4')
insert into products values('VinFast Lux SA','/images/vinfast.jpg',1300000000,GETDATE(),1,'4')
insert into products values('VinFast Fadil','/images/vinfast.jpg',4000000,GETDATE(),1,'4')
insert into products values('VinFast Fadil','/images/vinfast.jpg',5000000,GETDATE(),1,'4')
insert into products values('VinFast VFE34','/images/vinfast.jpg',900000000,GETDATE(),1,'4')
insert into products values('VinFast Lux SA','/images/vinfast.jpg',850000000,GETDATE(),1,'4')
insert into products values('VinFast Lux A','/images/vinfast.jpg',9300000000,GETDATE(),1,'4')
insert into products values('VinFast Lux SA','/images/vinfast.jpg',9800000000,GETDATE(),1,'4')

select * from users