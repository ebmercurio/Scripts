SELECT i.Firstname, i.Lastname, i.YearsExperience
	from Instructor i
	order by Lastname;

	--Display the student lastname and the major description for only students that have a declared major.

SELECT s.Lastname, m.Description
	from Student s
	join  Major m
	on s.MajorId = m.Id

	--Create a list of classes enrolled for each student
	-- Hint: The StudentClass table provides the relationship needed to address this request

SELECT *
	From Student s
