USE Zadanie43;
GO
CREATE PROCEDURE AddProductGroup
    @ID INT,
    @Group_Name NVARCHAR(50)
AS
INSERT INTO _ProductGroup(id, GroupName) 
VALUES(@ID, @Group_Name)

USE Zadanie43;
GO
CREATE PROCEDURE Delete_ProductGroup
@ID int
AS delete _ProductGroup
WHERE id = @ID

USE Zadanie43;
GO
CREATE PROCEDURE Uppdate_ProductGroup
@ID INT,
@Group_Name NVARCHAR(50)
AS UPDATE _ProductGroup
SET
id = @ID,
GroupName = @Group_Name
WHERE id = @ID

