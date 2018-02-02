use master
go
drop database if exists purchaserequestsystem
go
create database purchaserequestsystem
go
use purchaserequestsystem
go
create table 'User' (
	id int primary key identity (1,1),
	username nvarchar(30) not null unique,
	password nvarchar(30) not null,
	FirstName nvarchar(30) not null,
	LastName nvarchar(30) not null,
	Phone nvarchar(12),
	Email nvarchar(80),
	isReviewer bit not null default 0,
	isAdmin bit not null default 0,
)
7 
--first pass mistakes
--1. nvarchar (not varchar)
--2. forgetting "," (not commas)
--3. entering incorrect string lengths

create table Vendor (
	id int primary key identity (1,1),
	code nvarchar(10) not null unique,
	name nvarchar(30) not null,
	Address nvarchar(30) not null,
	City nvarchar(30) not null,
	State nvarchar(2) not null
		check (state = 'IN' or state = 'OH' or state = 'KY'), --state code
	Zip nvarchar(10) not null,
	Phone nvarchar (12),
	Email nvarchar(80),
	isRecommended bit not null default 0,
	Active bit not null default 1,
)

create table Product (
	id int primary key identity (1,1),
	Name nvarchar(130) not null,
	vendorpartnumber nvarchar(50) not null,
	Price money not null,
	Unit nvarchar(10) not null,
	PhotoPath nvarchar(255),
	VendorID int not null foreign key references Vendor(id),
	Active bit not null default 1,
)

create table PurchaseRequest (
	id int primary key identity(1,1),
	Description nvarchar(80) not null,
	Justification nvarchar(255),
	DateNeed datetime not null default (dateadd(week, +1,getdate())),
	DeliveryMode nvarchar(25),
	Status nvarchar(10) default 'NEW',
	Total money not null default 0.0,
	UserId int not null foreign key references User(id),
)

create table PurchaseRequestLineItems (
	id int primary key identity (1,1),
	PurchaseRequestId int not null foreign key references PurchaseRequest(id),
	ProductId int not null foreign key references Product(ID),
	Quantity bit not null default 1
)
