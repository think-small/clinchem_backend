CREATE TABLE dbo.Normal_Results (
	Result_Id INT IDENTITY(1,1) PRIMARY KEY,
	Name NVARCHAR(100) NOT NULL,
	Lower_Bound DECIMAL(10, 2),
	Upper_Bound DECIMAL(10, 2),
	Units NVARCHAR(20),
	isInt BIT DEFAULT 0
);