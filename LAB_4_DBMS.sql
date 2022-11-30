create table supplier (
SUPP_ID	int  Primary key ,
SUPP_NAME	varchar(50) NOT NULL,
SUPP_CITY	varchar(50) NOT NULL,
SUPP_PHONE	varchar(50) NOT NULL
);


insert into Supplier  (SUPP_ID,SUPP_NAME	,SUPP_CITY	,SUPP_PHONE) values ('1',		'Rajesh Retails	',	'Delhi',		'1234567890');
insert into Supplier  (SUPP_ID,SUPP_NAME	,SUPP_CITY	,SUPP_PHONE) values ('2',		'Appario Ltd.',		'Mumbai',	'2589631470');
insert into Supplier  (SUPP_ID,SUPP_NAME	,SUPP_CITY	,SUPP_PHONE) values ('3',		'Knome products',	'Banglore',	'9785462315');
insert into Supplier  (SUPP_ID,SUPP_NAME	,SUPP_CITY	,SUPP_PHONE) values ('4',		'Bansal Retails',	'Kochi',		'8975463285');
insert into Supplier  (SUPP_ID,SUPP_NAME	,SUPP_CITY	,SUPP_PHONE) values ('5',		'Mittal Ltd.',		'Lucknow',	'7898456532');

select * from supplier;


-----------------------------------
create table customer (
CUS_ID	INT primary key,
CUS_NAME	VARCHAR(20) NOT NULL,
CUS_PHONE	VARCHAR(10) NOT NULL,
CUS_CITY	VARCHAR(30) NOT NULL,
CUS_GENDER	CHAR

);
insert into customer  (CUS_ID,	CUS_NAME,	CUS_PHONE	,CUS_CITY,	CUS_GENDER) values('1',		'AAKASH',	'9999999999',	'DELHI'		,	'M');
insert into customer  (CUS_ID,	CUS_NAME,	CUS_PHONE	,CUS_CITY,	CUS_GENDER) values('2',	    'AMAN'	,	'9785463215',	'NOIDA'		,	'M');
insert into customer  (CUS_ID,	CUS_NAME,	CUS_PHONE	,CUS_CITY,	CUS_GENDER) values('3',		'NEHA'	,	'9999999999',	'MUMBAI'	,	'F');
insert into customer  (CUS_ID,	CUS_NAME,	CUS_PHONE	,CUS_CITY,	CUS_GENDER) values('4',		'MEGHA'	,'9994562399',	'KOLKATA'	,	'F');
insert into customer  (CUS_ID,	CUS_NAME,	CUS_PHONE	,CUS_CITY,	CUS_GENDER) values('5',		'PULKIT',	'7895999999','LUCKNOW'	,	'M');


select * from customer;



----------------------------------
create table category (
CAT_ID	INT primary key,
CAT_NAME	VARCHAR(20) NOT NULL
);
select * from category;



insert into category  (CAT_ID,	CAT_NAME) values ('1',		'BOOKS');
insert into category  (CAT_ID,	CAT_NAME) values ('2',		'GAMES');
insert into category  (CAT_ID,	CAT_NAME) values ('3',		'GROCERIES');
insert into category  (CAT_ID,	CAT_NAME) values ('4',		'ELECTRONICS');
insert into category  (CAT_ID,	CAT_NAME) values ('5',		'CLOTHES');




----------------------------------------------------


create table product (
PRO_ID	INT primary key,
PRO_NAME	VARCHAR(20) NOT NULL DEFAULT "Dummy",
PRO_DESC	VARCHAR(60),
CAT_ID INT,
FOREIGN KEY (CAT_ID) REFERENCES category(CAT_ID)
);


insert into product  (PRO_ID,	PRO_NAME,PRO_DESC,CAT_ID) values ('1'	,	'GTA V'		,	'Windows 7 and above with i5 processor and 8GB RAM'	,	  '2'           );
insert into product  (PRO_ID,	PRO_NAME,PRO_DESC,CAT_ID) values ('2'	,	'TSHIRT'	,'SIZE-L with Black, Blue and White variations'		,	'5'                 );
insert into product  (PRO_ID,	PRO_NAME,PRO_DESC,CAT_ID) values ('3'  ,	'ROG LAPTOP'	,	'Windows 10 with 15inch screen, i7 processor, 1TB SSD'	,	'4'     );
insert into product  (PRO_ID,	PRO_NAME,PRO_DESC,CAT_ID) values ('4'	,	'OATS'		,	'Highly Nutritious from Nestle'					,	'3'                 );
insert into product  (PRO_ID,	PRO_NAME,PRO_DESC,CAT_ID) values ('5'	,	'HARRY POTTER',	'Best Collection of all time by J.K Rowling'		,		'1'         );
insert into product  (PRO_ID,	PRO_NAME,PRO_DESC,CAT_ID) values ('6'	,	'MILK'			,'1L Toned MIlk'								,'3'                    );
insert into product  (PRO_ID,	PRO_NAME,PRO_DESC,CAT_ID) values ('7'	,	'Boat Earphones',	'1.5Meter long Dolby Atmos'						,'4'                );
insert into product  (PRO_ID,	PRO_NAME,PRO_DESC,CAT_ID) values ('8'	,	'Jeans'			,'Stretchable Denim Jeans with various sizes and color'	,	'5'         );
insert into product  (PRO_ID,	PRO_NAME,PRO_DESC,CAT_ID) values ('9'	,	'Project IGI',		'compatible with windows 7 and above'		,		'2'             );
insert into product  (PRO_ID,	PRO_NAME,PRO_DESC,CAT_ID) values ('10'	,	'Hoodie'	,	'Black GUCCI for 13 yrs and above'				,	'5'                 );
insert into product  (PRO_ID,	PRO_NAME,PRO_DESC,CAT_ID) values ('11'	,	'Rich Dad Poor Dad'	,'Written by RObert Kiyosaki'			,		'1'                 );
insert into product  (PRO_ID,	PRO_NAME,PRO_DESC,CAT_ID) values ('12'	,	'Train Your Brain',	'By Shireen Stephen'						,	'1'                 );



-----------------------------------------
create table supplier_pricing (
PRICING_ID	INT primary key	,
PRO_ID	INT ,
FOREIGN KEY (PRO_ID) REFERENCES product(PRO_ID),
SUPP_ID	INT ,
FOREIGN KEY (SUPP_ID) REFERENCES supplier(SUPP_ID),
SUPP_PRICE	INT DEFAULT 0

);
insert into supplier_pricing  (PRICING_ID,	PRO_ID,	SUPP_ID	,SUPP_PRICE) values ('1',		'1',			'2',	'1500');
insert into supplier_pricing  (PRICING_ID,	PRO_ID,	SUPP_ID	,SUPP_PRICE) values ('2',		'3',			'5',	'30000');
insert into supplier_pricing  (PRICING_ID,	PRO_ID,	SUPP_ID	,SUPP_PRICE) values ('3',		'5',			'1',	'3000');
insert into supplier_pricing  (PRICING_ID,	PRO_ID,	SUPP_ID	,SUPP_PRICE) values ('4',		'2',			'3',	'2500');
insert into supplier_pricing  (PRICING_ID,	PRO_ID,	SUPP_ID	,SUPP_PRICE) values ('5',		'4',			'1',	'1000');


INSERT INTO SUPPLIER_PRICING VALUES(6,12,2,780);
INSERT INTO SUPPLIER_PRICING VALUES(7,12,4,789);
INSERT INTO SUPPLIER_PRICING VALUES(8,3,1,31000);
INSERT INTO SUPPLIER_PRICING VALUES(9,1,5,1450);
INSERT INTO SUPPLIER_PRICING VALUES(10,4,2,999);
INSERT INTO SUPPLIER_PRICING VALUES(11,7,3,549);
INSERT INTO SUPPLIER_PRICING VALUES(12,7,4,529);
INSERT INTO SUPPLIER_PRICING VALUES(13,6,2,105);
INSERT INTO SUPPLIER_PRICING VALUES(14,6,1,99);
INSERT INTO SUPPLIER_PRICING VALUES(15,2,5,2999);
INSERT INTO SUPPLIER_PRICING VALUES(16,5,2,2999);

------------------------------------------
create table orderss (
ORD_ID	INT primary key,
ORD_AMOUNT	INT NOT NULL,
ORD_DATE	DATE NOT NULL,
CUS_ID	INT ,
FOREIGN KEY (CUS_ID) REFERENCES customer(CUS_ID),
PRICING_ID	INT ,
FOREIGN KEY (PRICING_ID) REFERENCES supplier_pricing(PRICING_ID)
);

insert into orderss  (ORD_ID	,ORD_AMOUNT,	ORD_DATE,	CUS_ID	,PRICING_ID) values('101',		    '1500',		'2021-10-06',	'2',		'1');
insert into orderss  (ORD_ID	,ORD_AMOUNT,	ORD_DATE,	CUS_ID	,PRICING_ID) values('102',			'1000',		'2021-10-12',	'3',		'5');
insert into orderss  (ORD_ID	,ORD_AMOUNT,	ORD_DATE,	CUS_ID	,PRICING_ID) values('103',			'30000',		'2021-09-16',	'5',		'2');
insert into orderss  (ORD_ID	,ORD_AMOUNT,	ORD_DATE,	CUS_ID	,PRICING_ID) values('104',			'1500',		'2021-10-05',	'1',		'1');
insert into orderss  (ORD_ID	,ORD_AMOUNT,	ORD_DATE,	CUS_ID	,PRICING_ID) values('105',			'3000',		'2021-08-16',	'4',		'3');
insert into orderss  (ORD_ID	,ORD_AMOUNT,	ORD_DATE,	CUS_ID	,PRICING_ID) values('106',			'1450',		'2021-08-18',	'1',		'9');
insert into orderss  (ORD_ID	,ORD_AMOUNT,	ORD_DATE,	CUS_ID	,PRICING_ID) values('107',			'789',		    '2021-09-01',	'3',		'7');
insert into orderss  (ORD_ID	,ORD_AMOUNT,	ORD_DATE,	CUS_ID	,PRICING_ID) values('108',			'780',		    '2021-09-07',	'5',		'6');
insert into orderss  (ORD_ID	,ORD_AMOUNT,	ORD_DATE,	CUS_ID	,PRICING_ID) values('109',			'3000',		'2021-00-10',	'5',		'3');
insert into orderss  (ORD_ID	,ORD_AMOUNT,	ORD_DATE,	CUS_ID	,PRICING_ID) values('110',			'2500',		'2021-09-10',	'2',		'4');
insert into orderss  (ORD_ID	,ORD_AMOUNT,	ORD_DATE,	CUS_ID	,PRICING_ID) values('111',			'1000',		'2021-09-15',	'4',		'5');
insert into orderss  (ORD_ID	,ORD_AMOUNT,	ORD_DATE,	CUS_ID	,PRICING_ID) values('112',			'789',		    '2021-09-16',	'4',		'7');
insert into orderss  (ORD_ID	,ORD_AMOUNT,	ORD_DATE,	CUS_ID	,PRICING_ID) values('113',			'31000',		'2021-09-16',	'1',		'8');
insert into orderss  (ORD_ID	,ORD_AMOUNT,	ORD_DATE,	CUS_ID	,PRICING_ID) values('114',			'1000',		'2021-09-16',	'3',		'5');
insert into orderss  (ORD_ID	,ORD_AMOUNT,	ORD_DATE,	CUS_ID	,PRICING_ID) values('115',			'30000',		'2021-09-16',	'5',		'3');
insert into orderss  (ORD_ID	,ORD_AMOUNT,	ORD_DATE,	CUS_ID	,PRICING_ID) values('116',			'99',	   '2021-09-17',	    '2',		'14');

---------------------------------
create table rating (
RAT_ID	INT primary key ,
ORD_ID	INT ,
FOREIGN KEY (ORD_ID) REFERENCES orderss(ORD_ID),
RAT_RATSTARS	INT NOT NULL

);


insert into rating  (RAT_ID,	ORD_ID,	RAT_RATSTARS) values('1',		101 ,		4 );
insert into rating  (RAT_ID,	ORD_ID,	RAT_RATSTARS) values('2',		102	,	3     );
insert into rating  (RAT_ID,	ORD_ID,	RAT_RATSTARS) values('3',		103	,	1     );
insert into rating  (RAT_ID,	ORD_ID,	RAT_RATSTARS) values('4',		104	,	2     );
insert into rating  (RAT_ID,	ORD_ID,	RAT_RATSTARS) values('5',		105	,	4     );
insert into rating  (RAT_ID,	ORD_ID,	RAT_RATSTARS) values('6',		106	,	3     );
insert into rating  (RAT_ID,	ORD_ID,	RAT_RATSTARS) values('7',		107	,	4     );
insert into rating  (RAT_ID,	ORD_ID,	RAT_RATSTARS) values('8',		108	,	4     );
insert into rating  (RAT_ID,	ORD_ID,	RAT_RATSTARS) values('9',		109	,	3     );
insert into rating  (RAT_ID,	ORD_ID,	RAT_RATSTARS) values('10',		110	,	5     );
insert into rating  (RAT_ID,	ORD_ID,	RAT_RATSTARS) values('11',		111	,	3     );
insert into rating  (RAT_ID,	ORD_ID,	RAT_RATSTARS) values('12',		112	,	4     );
insert into rating  (RAT_ID,	ORD_ID,	RAT_RATSTARS) values('13',		113	,	2     );
insert into rating  (RAT_ID,	ORD_ID,	RAT_RATSTARS) values('14',		114	,	1     );
insert into rating  (RAT_ID,	ORD_ID,	RAT_RATSTARS) values('15',		115	,	1     );
insert into rating  (RAT_ID,	ORD_ID,	RAT_RATSTARS) values('16',	    116	,	0     );
-----------------
commit;
*****************  QUERIES *************

/* QUERY-3)Display the total number of customers based on gender who have placed orderss of worth at least Rs.3000*/


select Count(CUS_ID),CUS_GENDER from customer where Cus_id =any (select cus_Id from orders_ group by CUS_ID having sum(ORD_AMOUNT)>=3000) group by CUS_GENDER;

/* 4)	Display all the orderss along with product name ordersed by a customer having Customer_Id=2 ;*/

select PRO_ID ,Pro_Name from product where PRO_ID=any(select pro_id from supplier_pricing where PRICING_ID=any(select PRICING_ID from orders_ where CUS_ID=2));

/*5)	Display the Supplier details who can supply more than one product. */


 SELECT  s.SUPP_ID,s.SUPP_NAME,s.SUPP_CITY,s.SUPP_PHONE, count(sp.PRO_ID) distinct_product_count FROM rkn.supplier_pricing sp , rkn.supplier s
where s.SUPP_ID = sp.SUPP_ID group by sp.SUPP_ID 
having count(sp.PRO_ID)>1;

/*6)	Find the least expensive product from each category and print the table with category id, name, product name and price of the product.*/


select cat.CAT_ID, cat.CAT_NAME, p.PRO_NAME, sp.SUPP_PRICE from category as cat
inner join product as p on cat.CAT_ID=p.CAT_ID
inner join supplier_pricing as sp on sp.PRO_ID=p.PRO_ID
group by cat.CAT_NAME having min(sp.SUPP_PRICE);


/*7)	Display the Id and Name of the Product ordersed after “2021-10-05”.*/

select PRO_ID, PRO_NAME from product where PRO_ID in (select PRO_ID from supplier_pricing where 
PRICING_ID in (select PRICING_ID from `orders` where ORD_DATE > '2021-10-05'));



/* 8)	Display customer name and gender whose names start or end with character 'A'.*/

select CUS_NAME, CUS_GENDER from customer where CUS_NAME like "A%" or CUS_NAME like "%A";


/* 9)	Create a stored procedure to display supplier id, name, rating and Type_of_Service. For Type_of_Service, If rating =5, print “Excellent Service”,If rating >4 print “Good Service”, If rating >2 print “Average Service” else print “Poor Service”.*/
 
Delimiter $$

create procedure prac1() 
begin 
SELECT s.SUPP_ID, s.SUPP_NAME, r.RAT_RATSTARS ,
CASE WHEN r.RAT_RATSTARS = 5 THEN  'Excellent Service'
WHEN r.RAT_RATSTARS>4 THEN 'Good Service'
WHEN r.RAT_RATSTARS>2 THEN 'Average Service'
ELSE 'Poor Service' END AS Type_of_Service
FROM  rating r, orders o, supplier_pricing sp,
 supplier s
WHERE o.ORD_ID = r.ORD_ID
AND sp.PRICING_ID = o.PRICING_ID
AND s.SUPP_ID = sp.SUPP_ID;
end $$

Delimiter ;


call rkn.prac1();


