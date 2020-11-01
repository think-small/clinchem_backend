use clinchem;

CREATE TABLE dbo.Notes (
	Note_Id INT PRIMARY KEY IDENTITY(1, 1),
	Case_Id INT,
	Type NVARCHAR(20),
	Location NVARCHAR(100),
	Timestamp SMALLDATETIME,
	Content NVARCHAR(MAX),
	CONSTRAINT Case_Id_Notes_fk FOREIGN KEY (Case_Id)
	REFERENCES dbo.Case_Mapper (Case_Id)
)