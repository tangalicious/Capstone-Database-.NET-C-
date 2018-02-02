insert into [User]
	values ('wileywonka', 'candyland', 'William', 'Wonka', '513-490-4949', 'billw@wonka.com', 1, 1) 
insert into [User]
	values ('chuckbucket', 'goldenticket', 'Charles', 'Bucket', '513-232-2323', 'charles@wonka.com', 1,0)
insert into [User]
	values ('teddyoompa', 'oompadeedoo', 'Theodore', 'Oompa', '513-141-4141', 'theoompa@wonka.com', 0,1)

select * from [user]

insert into Vendor
	values ('MarsBrands', 'Mars Incorporated', '1 Mars Way', 'Columbust', 'OH', '12345', '513-515-5135', 'bars@mars.com', 1,1)
insert into Vendor
	values ('Hershey', 'Hershey Incorporated', '100 Hershey Way', 'New Cincy', 'OH', '12345', '513-300-5000', 'bars@hershey.com', 1,1)
insert into Vendor
	values ('Nestle', 'Nestle Co.', '1000 Nestle Way', 'Leaveland', 'OH', '12345', '513-412-5666', 'bars@nestle.com', 1,1)

select * from [vendor] 

insert into product
	values ('M&Ms Milk Chocolate Caramel Pretzel Crunch', '101', 125,'1 case', null, 4, 1)
insert into product
	values ('Hershey Kisses Milk Chocolate Holiday Mint', '141', 160, '1 case', null, 5, 1)
insert into product
	values ('Nestle Milk Chocolate Rice Cracker Wafers', '151', 100, '1 case', null, 6, 1)


insert into PurchaseRequest
	values ('Pallet of latest M&M samples', 'For taste test', getdate(), 'Airport cargo', 'NEW', 500.00, 1)
insert into purchaserequest
	values ('12 cases of next weeks  M&M samples', 'For oral dissolution tests', getdate(), 'Truck and rail', 'NEW', 1920.00, 1)
insert into purchaserequest
	values ('8 cases of past months Nestle wafer samples', 'For internal digestion tests', getdate(), 'Direct delivery', 'OLD', 800.00, 1)


select * from [user]
select * from product 
select * from vendor
select * from purchaserequest
	select * from purchaserequestlineitems


insert into PurchaseRequestLineItems
	values (1, 1, 1)
insert into PurchaseRequestLineItems
	values (1, 1, 1)
insert into PurchaseRequestLineItems
	values (3, 1, 1)
