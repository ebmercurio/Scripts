-- CREATE A PROCEDURE THAT ADDS A ROW TO THE MAJOR TABLE
CREATE OR ALTER PROCEDURE ADDMAJOR
	@MAJORCODE varchar(4) = null,
	@MAJORDESCRIPTION varchar(50) = null,
	@MAJORMINSAT int = null

AS
BEGIN
	IF @MAJORCODE IS NULL
		BEGIN
			PRINT 'MAJOR.CODE IS REQUIRED';
			RETURN;
		END
	IF @MAJORDESCRIPTION IS NULL
		BEGIN
			PRINT 'MAJOR.DESCRIPTION IS REQUIRED';
			RETURN;
		END
	IF @MAJORMINSAT IS NULL
		BEGIN
			PRINT 'MAJOR.MIN.SAT IS REQUIRED';
			RETURN;
		END
		INSERT Major(code, Description, MinSAT)
		VALUES (@MAJORCODE, @MAJORDESCRIPTION, @MAJORMINSAT)
		
		IF @@ROWCOUNT != 1
		
	BEGIN
		PRINT 'INSERT FAILED'
	END
END
GO
EXEC ADDMAJOR @MAJORCODE = 'DUCK', @MAJORDESCRIPTION = 'DUCK WATCHING', @MAJORMINSAT = 1200;

SELECT * FROM Major M
