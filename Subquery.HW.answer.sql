SELECT avg(sales)
	from customers

select *
	from Customers c	
	where Sales < (select avg(sales) from Customers);

select *
	from customers c
		where Sales < (select AVG(sales) from Customers)
		order by Sales desc;
