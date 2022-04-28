declare @lowgpa decimal(7,2) = 2.25;
declare @highgpa decimal(7,2) = 3.59;

--want query with all students with GPA >=2, <=3.5
SELECT *
	from Student
	where GPA >= @lowgpa AND GPA <= @highgpa
	;

select *	
	from Student	
	where MajorId = 1

