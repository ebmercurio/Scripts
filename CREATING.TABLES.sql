USE TQL;
  
CREATE TABLE Department
(
	Id int not null Primary Key Identity(1,1),
	Description varchar(60) not null,
	Location varchar(80) not null
)

CREATE TABLE Employees						--MAKE EVERY TABLE HAVE A PRIMARY KEY, THAT IS NOT LINKED TO THE TABLE IN ANY WAY
(											----[primary key [identity(seed,inc)]--primary keys cannot be null. (seed, incr) (# it starts at, increment it climbs by)
	Id int not null primary key identity(1,1),				-- [colName] [type] [not[null]]    
	Name varchar(50) not null,								-- [colName] [type] [not[null]],
	Phone varchar(12) not null,								-- [colName] [type] [not[null]],
	Salary decimal(9,2) not null default 0,					-- [colName] [type] [not[null]] [default n],
	Active bit not null	default 1,							-- [colName] [bit = boolean. 1 = true. 0 = false] [not[null]]
	DepartmentId int foreign key references Department(id)	-- IF NULL, YOU DONT HAVE TO MENTION IT. 
)

-- TABLES TO MAKE
-- ARTIST, ALBUM, SONG

--MOVIES, GENRE, ACTOR