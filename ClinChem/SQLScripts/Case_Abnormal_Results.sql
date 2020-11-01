USE clinchem;
CREATE TABLE dbo.Case_Abnormal_Results (
	Id INT IDENTITY(1, 1) PRIMARY KEY,
	Name NVARCHAR(100) NOT NULL,
	Lower_Bound DECIMAL(10, 2),
	Upper_Bound DECIMAL(10, 2),
	Units NVARCHAR(20),
	IsInt BIT DEFAULT 0,
	CaseId INT NOT NULL,
	CONSTRAINT CaseId FOREIGN KEY (CaseId)
	REFERENCES dbo.Case_Mapper (Case_Id)
);