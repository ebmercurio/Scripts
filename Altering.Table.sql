alter table customers
	alter column name varchar(50) not null;

ALTER TABLE CUSTOMERS
	ADD Updated DateTime default null;

CREATE TABLE SALESORDER(
	ID int not null PRIMARY KEY IDENTITY (1,1),
	Description varchar(80) not null,
	Date DateTime not null default GETDATE(),
	Total decimal(9,2) not null default 0,
	CustomerId int not null foreign key references Customers(Id),

	)
GO
insert SALESORDER (Description, Total, CustomerId)
	VALUES ('1st slsord', 1000, (Select id from Customers where code = 'TQL')
	);
GO
ALTER TABLE SALESORDER -- DELETING A COLUMN, BUT IT IS FOREIGN KEY COLMN
	DROP COLUMN CUSTOMERID;
GO
ALTER TABLE SALESORDER --GO TO KEYS FOLDER, DELETE THE FK
	ALTER COLUMN CustomerId int null --(MUST BE NULLABLE)
GO

UPDATE SALESORDER SET CustomerId = 1;
SELECT * FROM SALESORDER