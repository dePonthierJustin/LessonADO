CREATE PROCEDURE [dbo].[Employee_Procedure]
	@FirstName varCHar(50),
	@LastName varCHar(50),
	@Email varCHar(100),
	@BirthDate DateTime2,
	@ResponsableId int
AS
	SELECT @FirstName, @LastName,@Email, @BirthDate,@ResponsableId
	From Employee

BEGIN
INSERT INTO Employee (LastName, Firstname, Email, BirthDate, ResponsableID) 
VALUES (@FirstName, @LastName, @Email, @BirthDate, @ResponsableID)
END
