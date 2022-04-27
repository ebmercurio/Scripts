
SELECT *
	from Customers
	order by city, sales desc

Select *
	from Customers
	Where (City = 'Cincinnati' and Sales > 30000)
		   OR (city = 'columbus' and sales > 35000)
		   OR (city = 'Cleveland' and sales < 10000)

Select *
	from Customers
	where city != 'Cleveland'

select * 
	from Customers
	where not (city = 'cleveland');

select *
	from  Customers
	where NOT (city = 'cleveland' OR city = 'Columbus');

SELECT *
	from Customers
	where city != 'cleveland' AND city != 'columbus';

SELECT * 
	from Customers
	where city NOT in ('Cleveland', 'Columbus');