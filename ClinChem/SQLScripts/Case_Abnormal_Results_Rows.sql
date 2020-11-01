USE clinchem;

INSERT INTO dbo.Case_Abnormal_Results (Name, Lower_Bound, Upper_Bound, Units, IsInt, CaseId)
VALUES ('Sodium', 110, 125, 'mEq/L', 1, 1);

INSERT INTO dbo.Case_Abnormal_Results (Name, Lower_Bound, Upper_Bound, Units, IsInt, CaseId)
VALUES ('Osmolality', 245, 265, 'mOsm/kg', 1, 1);

INSERT INTO dbo.Case_Abnormal_Results (Name, Lower_Bound, Upper_Bound, Units, IsInt, CaseId)
VALUES ('Urine_Osmolality', 315, 335, 'mOsm/kg', 1, 1);

INSERT INTO dbo.Case_Abnormal_Results (Name, Lower_Bound, Upper_Bound, Units, IsInt, CaseId)
VALUES ('Urine_Sodium', 80, 120, 'mEq/L', 1, 1);

INSERT INTO dbo.Case_Abnormal_Results (Name, Lower_Bound, Upper_Bound, Units, IsInt, CaseId)
VALUES ('Glucose', 120, 160, 'mg/dL', 1, 1);

INSERT INTO dbo.Case_Abnormal_Results (Name, Lower_Bound, Upper_Bound, Units, IsInt, CaseId)
VALUES ('CO2', 20, 24, 'mEq/L', 0, 1);

INSERT INTO dbo.Case_Abnormal_Results (Name, Lower_Bound, Upper_Bound, Units, IsInt, CaseId)
VALUES('Chloride', 90, 95, 'mEq/L', 1, 1);