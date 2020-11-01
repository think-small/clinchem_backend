use clinchem;

INSERT INTO dbo.Notes (Case_Id, Type, Location, Timestamp, Content) 
VALUES (1, 'history', 'ED', '2019-04-11 11:15:17', 'ED - April 11 2019\n 28 year old female presents to the ER complaining of progressively worsening headaches for 5 days. Patient has noticably slurred speech and difficulty walking. Denies tobacco and alcohol use. Denies illicit drug use. Eating and exercise habits are normal. Denies any missed insulin doses. No other medications besides insulin.');

INSERT INTO dbo.Notes (Case_Id, Type, Location, Timestamp, Content)
VALUES (1, 'vitals', 'ED', '2019-04-11 11:18:25', 'ED - April 11 2019\n Temperature: 37.1C, BP: 114 / 72, HR: 83, POC glucose: 105');

INSERT INTO dbo.Notes (Case_Id, Type, Location, Timestamp, Content)
VALUES (1, 'exam', 'ED', '2019-04-11 11:49:01', 'ED - April 11 2019\n Physical exam: normal findings. No masses or lesions, no organomegaly. No peripheral edema.\nNeurologic exam: impaired physical coordination - abnormal gait. No obvious signs of trauma, no pain with movement. Slurred speech with no signs of stroke or CNS injury.');