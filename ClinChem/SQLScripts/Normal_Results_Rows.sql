INSERT INTO dbo.Normal_Results 
(
	Name, 
	Lower_Bound, 
	Upper_Bound, 
	Units,
	isInt
) 
VALUES 
	('Sodium', 138, 148, 'mEq/L', 1),
	('Potassium', 3.50, 5.30, 'mEq/L', 0),
	('Chloride', 92, 103, 'mEq/L', 1),
	('CO2', 22, 27, 'mEq/L', 1),
	('Magnesium', 1.6, 2.6, 'mEq/L', 0),
	('Phosphorus', 2.5, 4.5, 'mEq/L', 0),
	('Calcium', 8.6, 10.0, 'mEq/L', 0),
	('Glucose', 70, 100, 'mg/dL', 1),
	('Creatinine', 0.70, 1.25, 'mg/dL', 0),
	('BUN', 6, 20, 'mg/dL', 1),
	('Albumin', 3.4, 5.0, 'g/dL', 0),
	('Total_Protein', 6.4, 8.3, 'g/dL', 0),
	('AST', 5, 40, 'IU/L', 1),
	('ALT', 0, 41, 'IU/L', 1),
	('Alkaline Phosphatase', 40, 129, 'IU/L', 1),
	('Direct_Bilirubin', 0.0, 0.2, 'mg/dL', 0),
	('Total_Bilirubin', 0.0, 1.2, 'mg/dL', 0),
	('Iron', 59, 129, '\u03BCg/dL', 1),
	('Transferrin', 200, 360, 'mg/dL', 1),
	('Ferritin', 30, 400, 'ng/mL', 1),
	('CRP', 0, 5, 'mg/L', 0),
	('Triglycerides', 10, 150, 'mg/dL', 1),
	('HDL', 40, 75, 'mg/dL', 1),
	('LDL', 80, 200, 'mg/dL', 1),
	('Total_Cholesterol', 0, 250, 'mg/dL', 1),
	('TSH', 0.27, 4.20, 'IU/L', 0),
	('Total_T3', 80, 200, 'ng/dL', 1),
	('Free_T3', 2.0, 4.4, 'pg/mL', 0),
	('Total_T4', 5.1, 14.1, '\u03BCg/dL', 0),
	('Free_T4', 0.8, 1.6, 'ng/dL', 0),
	('Vitamin_D_25_OH', 20, 70, 'ng/mL', 1),
	('Vitamin_B12', 211, 946, 'pg/mL', 1),
	('Folate', 7.3, 26.1, 'ng/mL', 0),
	('Osmolality', 285, 305, 'mOsm/kg', 1),
	('Total_Testosterone', 249, 836, 'ng/dL', 1),
	('p_Amylase', 13, 53, 'IU/L', 1),
	('Lipase', 13, 60, 'IU/L', 1),
	('Ammonia', 16, 60, '\u03BCmol/L', 1),
	('Uric_Acid', 3.4, 7.0, 'mg/dL', 0),
	('Total_Creatine_Kinase', 39, 192, 'U/L', 1),
	('Troponin_I', 0.00, 0.03, '\u03BCg/L', 0),
	('ACTH', 7.2, 63.3, 'pg/mL', 0),
	('Pro_BNP', 0, 450, 'pg/mL', 1),
	('beta_HCG', 0, 2.6, 'mIU/mL', 0),
	('Urine_Sodium', 10, 20, 'mEq/L', 1),
	('Urine_Total_Protein', 0, 11, 'mg/dL', 1),
	('Urine_Creatinine', 30, 125, 'mg/dL', 1),
	('Urine_Osmolality', 285, 305, 'mOsm/kg', 1),
	('Microalbumin', 0, 19, 'mg/dL', 1),
	('Cortisol_AM', 6.0, 18.4, '\u03BCg/dL', 0),
	('Salicylate', 10, 30, 'mg/dL', 1),
	('Acetaminophen', 10, 20, '\u03BCg/mL', 1),
	('C_Peptide', 1.1, 4.4, 'ng/mL', 0),
	('C3', 90, 180, 'mg/dL', 1),
	('C4', 10, 40, 'mg/dL', 1),
	('GGT', 10, 71, 'U/L', 1),
	('IgA', 70, 400, 'mg/dL', 1),
	('IgG', 700, 1600, 'mg/dL', 1),
	('IgM', 40, 230, 'mg/dL', 1),
	('Insulin', 3, 19, '\u03BCU/mL', 1),
	('Prealbumin', 20, 40, 'mg/dL', 0),
	('Prolactin', 4.04, 15.2, 'ng/dL', 0),
	('PTH_Intact', 16, 65, 'pg/mL', 1),
	('Rheumatoid_Factor', 0, 14, 'U/mL', 1),
	('Total_PSA', 0, 4, 'ng/mL', 0),
	('beta_Hydoxybutyrate', 0.02, 0.27, 'mmol/L', 0),
	('PT_INR', 0.8, 1.2, '', 0),
	('APTT', 25, 37, 'seconds', 1),
	('Fibrinogen', 200, 400, 'mg/dL', 1),
	('Hemoglobin', 13.1, 17.5, 'g/dL', 0),
	('Platelet_Count', 150, 400, '10\u00b3/\u03BCL', 1),
	('WBC_Count', 4, 10, '10\u00b3/dL', 1)