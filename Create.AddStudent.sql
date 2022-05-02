CREATE OR ALTER PROCEDURE AddStudent
	@FirstName varchar(30) = null,
	@LastName varchar(30) = null,
	@StateCode varchar(2) = 'OH',
	@SAT int = null,
	@GPA decimal(4,2) = 0,
	@MajorCode varchar(4) = null


	AS
	BEGIN
		IF @Firstname is null --IF IS A PROCEDURAL STATEMENT, IT CHECKS FOR A BOOLEAN STATEMENT IF IT IS TRUE OR FALSE
			BEGIN --THIS PROCEDURE BEGINS ONLY IF 'IF' STATEMENT IS TRUE
				PRINT 'FIRSTNAME IS REQUIRED';
				RETURN;
			END -- IF PREVIOUS BOOLEAN IS FALSE, THEN SKIP THIS AND PROCEED
		IF @LastName is null
			BEGIN
				PRINT 'LASTNAME IS REQUIRED';
				RETURN;
			END
		
		DECLARE @MAJORID INT = 0;
		SELECT @MAJORID = ID FROM Major WHERE Code = @MajorCode;

		IF @MAJORID = 0 
		BEGIN
			PRINT 'NO MAJOR FOUND'
			RETURN;
		END

		INSERT Student(Firstname, Lastname, StateCode, GPA, SAT, MajorId)
		VALUES (@FirstName, @LastName, @StateCode, @GPA, @SAT, @MAJORID);

		IF	@@ROWCOUNT != 1 --WHEN YOU DO INSERT, UPDATE, DELETE. IT WILL CONTAIN THE NUMBER OF ROWS AFFECTED 
		--					  BY  THE INSERT, UPDATE DELETE. WHEN YOU DO AN UPDATE, IT SHOULD BE 1 ROW AFFECTED.
		BEGIN
			PRINT 'Insert Failed';
			END
	
		PRINT 'Insert Successful';
	END
	GO
	EXEC AddStudent @FIRSTNAME = 'Noah', @lastname = 'Phence JR', @statecode = 'IN', @SAT = 1600, @GPA = 2.0, @MAJORCODE = 'MATH'
	GO
	SELECT * FROM STUDENT ORDER BY ID DESC