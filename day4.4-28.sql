insert Student --COLUMN CANNOT BE NULL. IT MUST HAVE A VALUE. OR COLUMN DOESNT HAVE A DEFAULT VALUE
	(Firstname, Lastname, StateCode, GPA)  --DONT NEED TO PUT '''S AROUND COLUMN NAMES
	VALUES 
	('Jordan', 'Mercurio', 'FL', 2.0),
	('Amber', 'Mercurio', 'NE', 2.5),
	('Mom', 'Thacker', 'NY', 3.0)
	; --strings in single quotes

SELECT * FROM Major

UPDATE Student set
	MajorId = (select Id from Major where Description = 'Education') --(select Id from Major where Description = 'Education') IS THE SAME MAJORID = 6
	where Lastname = 'Mercurio' or Lastname = 'Thacker';


SELECT *
	from Student
	where firstname in ('Evan', 'jordan', 'amber', 'mom')
		and Lastname != 'Rodgers'

	where Lastname = 'Mercurio' or Lastname = 'Thacker'

update Student set
	SAT = 800
	where Id >= 61;
select *
	from Student
	where Id >= 61;

insert Major
	(Code, Description, MinSAT)
	VALUES
		('UWBW', 'UnderWaterBasketWeaving', 1349);


-- find all students who are taking GenStudy, switch them to UWBW. next query, delete GenStudy major

select *
	from Student
	where Majorid = (select id from Major where Description = 'General Studies')
	 
update Student set
	MajorId =(select id from major where code = 'UWBW')
	where Majorid = (select id from Major where Description = 'General Studies')

delete Major
	where Id = (select id from Major where Description = 'General Studies')	


select *
	from Student
