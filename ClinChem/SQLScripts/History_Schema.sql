use clinchem;

CREATE TABLE dbo.History (
	History_Id INT PRIMARY KEY IDENTITY(1, 1),
	Case_Id INT,
	Timestamp SMALLDATETIME,
	Diagnosis NVARCHAR(250),
	Notes NVARCHAR(MAX),
	Reference NVARCHAR(MAX),
	Reference_Name NVARCHAR(250),
	CONSTRAINT Case_Id FOREIGN KEY (Case_Id)
	REFERENCES dbo.Case_Mapper (Case_Id)
)