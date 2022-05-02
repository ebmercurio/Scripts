DECLARE aCursor CURSOR for 
	SELECT * from Major;
	-- GET THE AVG MIN SAT FOR ALL MAJORS
--ADD ALL MINSAT, KEEP COUNT OF HOW MANY ROWS, THEN WHEN DONE WITH THAT, DIVIDE THE SUM OF MINSAT BY THE NUMBER OF ROWS TO GET THE AVG
declare @id int, @code varchar(4), @desc varchar(50), @minsat int;  --we need to create 2 more variables because we need to find sum and count them
declare @sum int =0, @count int = 0;

	OPEN aCursor;

		FETCH NEXT FROM aCursor INTO @id, @code, @desc, @minsat; --CHECK FIRST TO SEE IF ITS CORRECT BEFORE WE CREATE THE LOOP
		
		WHILE @@FETCH_STATUS = 0
		BEGIN
			PRINT 'MAJOR: ' + STR(@ID) + '|' + @CODE + '|' + @DESC + '|' + STR(@MINSAT);
		
			set @sum = @sum + @minsat;  --WHENEVER YOU ARE GOING TO CHANGE THE VALUE OF A VARIABLE, NEEDS TO BE "SET"
			set @count = @count + 1; --KEEP COUNT OF HOW MANY ROWS WE HAVE


		FETCH NEXT FROM aCursor INTO @id, @code, @desc, @minsat;
		-- CHECK AGAIN TO MAKE SURE IT HAS BEEN AFFECTED CORRECTLY



		END

		PRINT 'Done ...';

	CLOSE aCursor;

DEALLOCATE aCursor;

SELECT 'Average of MinSat', @sum / @count;

-- GET THE AVG MIN SAT FOR ALL MAJORS
--ADD ALL MINSAT, KEEP COUNT OF HOW MANY ROWS, THEN WHEN DONE WITH THAT, DIVIDE THE SUM OF MINSAT BY THE NUMBER OF ROWS TO GET THE AVG