CREATE VIEW [dbo].[View1]
	AS 

Select LastName as RespLastName, FirstName as RespFirstName, Email as RespEmail, FirstName,
		LastName, BirthDate,Email, ResponsableID
From Employee E join Employee  Emp on Id=Id