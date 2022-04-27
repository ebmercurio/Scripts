--group by
select c.Name as 'Customers', count (c.name) as 'Orders' -- can only put in columns that are group by. [as(optional) Gives the new column a name]
	from Customers c
	join orders o
		on o.CustomerId = c.Id
	group by c.Name		-- putting these all together in a bucket, grouping them together
	having count(*) > 1	
	order by Orders desc;

	-- functions are routines that will do something

-- this is using two seperate tables in a search
select c.name, o.Id, o.Date, o.Description -- this says to give me all the columns from Orders table, but only the Names column from Customers table 
	from Orders o
	join Customers c 
		on o.CustomerId = c.Id --this is linking the CustomerId from Orders table, it is equal to Id column from Customers table
		order by c.Name


