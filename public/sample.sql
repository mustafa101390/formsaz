INSERT INTO ImportUsers (UserName, PassWord, Email, PasswordQuestion, PasswordAnswer, Name, Gender, Tel, Mobile, Lang,
                         sub, RoleName, Family, identifierID, job, isPersonalizeEtools, IsDeleted, IsActive)
VALUES ('tarh_alborz', 'alborz@t123', 'tarh_alborz@maj.ir', 'pq', 'pa', N'سازمان جهاد کشاورزی استان البرز', '1', '', '',
        '1', '0', '', N'کاربرطرح سازمان جهاد کشاورزی استان البرز', '', '', NULL, '', '1');



INSERT INTO ImportUsers (UserName, PassWord, Email, PasswordQuestion, PasswordAnswer, Name, Gender, Tel, Mobile, Lang,
                       sub, RoleName, Family, identifierID, job, isPersonalizeEtools, IsDeleted, IsActive)
VALUES ('tarh_ardebil', 'pRzm75P2', 'tarh_ardebil@maj.ir', 'pq', 'pa', N'سازمان جهاد کشاورزی استان اردبیل', '1', '', '',
        '1', '0', '', N'کاربرطرح سازمان جهاد کشاورزی استان اردبیل', '', '', NULL, '', '1');

/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP(1000)[UserName]
     , [PassWord]
     , [Email]
     , [PasswordQuestion]
     , [PasswordAnswer]
     , [Name]
     , [Gender]
     , [Tel]
     , [Mobile]
     , [Lang]
     , [sub]
     , [RoleName]
     , [identifierID]
     , [job]
     , [isPersonalizeEtools]
     , [Family]
     , [IsActive]
     , [IsDeleted]
FROM [MajDB].[dbo].[ImportUsers]
