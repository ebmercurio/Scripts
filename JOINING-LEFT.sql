select * -- OUTER JOIN
	from Student s left join Major m -- INCLUDE ALL DATA FROM TABLE ON THE LEFT, AND JOIN THE OTHER TABLE. SO WE WANT ALL THE STUDENTS LISTED, INCLUDING THE ONES WHO DONT HAVE A MAJOR
		on m.Id = s.MajorId;

		--JOIN THE INSTRUCTOR AND THE CLASS, WANT ALL THE INSTRUCTORS IF THE CLASS HAS ONE
SELECT *
	from Class c right join Instructor i
		on i.Id = c.InstructorId
	where c.instructorId is null;





select *
	from Major
	where MinSAT >= 1000
	order by MinSAT desc	
	;

select * 
	from Student
	where SAT < 1000
	order by sat;

select Firstname, Lastname, YearsExperience -- JOINING TABLES
	from Instructor
	order by Lastname;

	select s.Lastname as 'Name', m.Description as 'Major'
		from Student s
		join Major m
			on m.Id = s.MajorId;

SELECT m.Description as 'Major', c.Subject, c.Code
	from Major m
	join MajorClass mc
		on m.Id = mc.MajorId
	join Class c
		on c.Id = mc.ClassId
	where  m.Description like 'General%'
	;

SELECT s.Lastname, c.Code  -- WE WANT TO SEE STUDENTS WHO ARE ENROLLED IN ENG101
	from Class c
	join StudentClass sc
		on c.Id = sc.ClassId
	join Student s
		on s.Id = sc.StudentId
	where c.Code like 'ENG%'; --ALSO CAN DO 'ENG___'

select s.Lastname as 'Name', c.Subject, c.Code  -- JOINING MULTIPLE TABLES ON THIS. STUDENT CLASS IS BASICALLY ONLY USED TO LINK THE OTHER TABLES TOGETHER
	from Student s -- MIDDLE GROUND
	join StudentClass sc 
		on s.Id = sc.StudentId  -- s.Id is equal to StudentId on Student Class table
	join Class c
		on c.id = sc.ClassId -- c.Id is equal to ClassId on the Student Class table
	where s.Lastname = 'Ant';


