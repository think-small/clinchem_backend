INSERT INTO dbo.History (
	Case_Id, 
	Timestamp, 
	Diagnosis, 
	Notes, 
	Reference, 
	Reference_Name)
VALUES(
	1, 
	'2015-04-23 12:05:19', 
	'Small cell lung cancer', 
	'Remission achieved with cisplatin and etoposide. Atezolizumab maintenance therapy.', 
	'https://my.clevelandclinic.org/health/articles/6202-small-cell-lung-cancer', 
	'Cleveland Clinic - SCLC');

INSERT INTO dbo.History (
	Case_Id,
	Timestamp,
	Diagnosis,
	Notes,
	Reference,
	Reference_Name
) 
VALUES (
	1,
	'2012-07-12 17:21:48',
	'Diabetes Mellitus - Type II',
	'',
	'https://www.mayoclinic.org/diseases-conditions/type-2-diabetes/symptoms-causes/syc-20351193',
	'Mayo Clinic - DM II'
);

INSERT INTO dbo.History (
	Case_Id,
	Timestamp,
	Diagnosis,
	Notes,
	Reference,
	Reference_Name
) 
VALUES (
	1,
	'2009-11-06 09:22:00',
	'Cholecystectomy due to cholelithiasis',
	'Indication: abdominal pain. Laparoscopic cholecystectomy performed with no complications.',
	'https://www.hopkinsmedicine.org/health/treatment-tests-and-therapies/cholecystectomy',
	'Johns Hopkins - Cholecystectomy'
);
