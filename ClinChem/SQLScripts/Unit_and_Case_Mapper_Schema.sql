USE clinchem;
CREATE TABLE dbo.Unit_Mapper (
	Unit_Id INT PRIMARY KEY IDENTITY (1, 1),
	Name VARCHAR(50) NOT NULL,
)

CREATE TABLE dbo.Case_Mapper (
	Case_Id INT PRIMARY KEY IDENTITY (1, 1),
	Unit_Id INT NOT NULL,
	CONSTRAINT Unit_Id FOREIGN KEY (Unit_Id)
	REFERENCES dbo.Unit_Mapper (Unit_Id)
)