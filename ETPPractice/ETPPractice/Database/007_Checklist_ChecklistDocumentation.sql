 IF NOT EXISTS (
 	SELECT * FROM INFORMATION_SCHEMA.TABLES
 	WHERE TABLE_NAME = 'Checklist_ChecklistDocumentation')
 BEGIN
 	CREATE TABLE dbo.Checklist_ChecklistDocumentation(
 		id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
 		checkList_id int NOT NULL FOREIGN KEY REFERENCES Checklist(CheckListId),
 		documentation_id int NOT NULL FOREIGN KEY REFERENCES ChecklistDocumentation(id),
 		reviewed_by varchar(50) NOT NULL Default(NULL),
 		access_date datetime NOT NULL DEFAULT (getdate())
 	)
 END
 GO