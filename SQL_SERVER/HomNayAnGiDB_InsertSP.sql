USE HomNayAnGi_Test
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'insertUsers'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.insertUsers
GO

CREATE PROCEDURE dbo.insertUsers
    @name NVARCHAR(50),
    @email NVARCHAR(30),
    @password NVARCHAR(64),
    @mobile NVARCHAR(11)
AS
BEGIN
    INSERT INTO [dbo].[users](
    [name], [email], [password], [mobile]
    )
    VALUES(
     @name, @email, @password, @mobile
    )
    RETURN 1
END
GO

IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'insertFoodCategory'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.insertFoodCategory
GO

CREATE PROCEDURE dbo.insertFoodCategory
    @cateName NVARCHAR(50),
    @cateDesc NVARCHAR(MAX)
AS
BEGIN
    INSERT INTO [dbo].[Food_Category]
    (
        [Categoty_Name], [Category_Decs]
    )
    VALUES
    (
        @cateName, @cateDesc
    )
    RETURN 1
END
GO


IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'insertFood'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.insertFood
GO

CREATE PROCEDURE dbo.insertFood
    @foodName NVARCHAR(50),
    @cateID INT,
    @foodDesc NVARCHAR(MAX),
    @foodImage VARCHAR(50)
AS
BEGIN
    INSERT INTO [dbo].[Food]
    (
        [Food_Name], [category_id], [Food_Descript], [Food_Image]
    )
    VALUES
    (
        @foodName, @cateID, @foodDesc, @foodImage
    )
    RETURN 1
END
GO

IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'insertCustomerInfor'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.insertCustomerInfor
GO

CREATE PROCEDURE dbo.insertCustomerInfor
    @acc_id int,
    @firstName NVARCHAR(20),
    @middleName NVARCHAR(20),
    @lastName NVARCHAR(20),
    @birthD DATE
AS
BEGIN
    INSERT INTO [dbo].[Customer_Infor]
    (
        [account_id], [First_Name], [Middle_Name], [Last_Name], [BirthD])
    VALUES
    (
        @acc_id, @firstName, @middleName, @lastName, @birthD
    )
    RETURN 1
END
GO


IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'insertCustomerHate'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.insertCustomerHate
GO

CREATE PROCEDURE dbo.insertCustomerHate
    @acc_id INT,
    @food_id INT
AS
BEGIN
    INSERT INTO [dbo].[Customer_Hate]
    ( -- Columns to insert data into
     [account_id], [food_id]
    )
    VALUES
    (
        @acc_id, @food_id
    )
    RETURN 1
END
GO


-- CFR: Customer_Food_Recommend
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'insertCFR'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.insertCFR
GO


CREATE PROCEDURE dbo.insertCFR
    @acc_id INT,
    @food_id INT
AS
BEGIN
    INSERT INTO [dbo].[Customer_Food_Recommend]
    (
        [account_id], [food_id]
    )
    VALUES 
    (
        @acc_id, @food_id
    )
    RETURN 1
END
GO


-- CFF: Customer_Food_Recommend
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'insertCFF'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.insertCFF
GO


CREATE PROCEDURE dbo.insertCFF
    @acc_id INT,
    @food_id INT
AS
BEGIN
    INSERT INTO [dbo].[Customer_Fav_Food]
    (
        [account_id], [food_id]
    )
    VALUES 
    (
        @acc_id, @food_id
    )
    RETURN 1
END
GO


IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'insertCustomerEated'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.insertCustomerEated
GO



CREATE PROCEDURE dbo.insertCustomerEated
    @acc_id INT,
    @food_id INT,
    @timeEat TIME
AS
BEGIN
    INSERT INTO [dbo].[Customer_Eated]
    (
        [account_id], [food_id], [TimeEat]
    )
    VALUES
    (
        @acc_id, @food_id, @timeEat
    )
    RETURN 1
END
GO



IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'insertCustomerAddress'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.insertCustomerAddress
GO



CREATE PROCEDURE dbo.insertCustomerAddress
    @acc_id INT,
    @province NVARCHAR(30),
    @city NVARCHAR(30),
    @ward NVARCHAR(30),
    @district NVARCHAR(30),
    @Address NVARCHAR(30)
AS
BEGIN
    INSERT INTO [dbo].[Customer_Address]
    (
        [account_id], [Province], [City], [Ward], [District], [Address_Line_1]
    )
    VALUES
    (
        @acc_id, @province, @city, @ward, @district, @Address
    )
    RETURN 1
END
GO