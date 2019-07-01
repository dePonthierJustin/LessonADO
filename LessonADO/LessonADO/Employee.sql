CREATE TABLE [dbo].[Employee]
(
	[Id] INT NOT NULL  IDENTITY(1,1),
	[FirstName] nVarChar(50) NOT NULL,
	[LastName] nVarCHar(50) NOT NULL,
	[BirthDate] DateTime2 NOT NULL,
	[Email] nVarChar(100) NOT NULL,
	[ResponsableID] Int NULL,
    CONSTRAINT [PK_Employee] PRIMARY KEY ([Id]),
	CONSTRAINT [AK_Employee_Column] UNIQUE ([Email]), 
    CONSTRAINT [CK_Employee_BirthDate] CHECK (Year(BirthDate)<2010), 
    CONSTRAINT [CK_Employee_Responsable] CHECK (ResponsableID<>Id) 
)
