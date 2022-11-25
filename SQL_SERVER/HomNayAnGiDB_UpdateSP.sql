USE HomNayAnGi_Test
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'updateUsers'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.updateUsers
GO

CREATE PROCEDURE dbo.updateUsers
    @id INT,
    @name NVARCHAR(50),
    @email NVARCHAR(30),
    @password NVARCHAR(64),
    @mobile NVARCHAR(11)
AS
BEGIN
    UPDATE [dbo].[users]
    SET
        [name] = @name,
        [email] = @email,
        [password] = @password,
        [mobile] = @mobile
    WHERE [id] = @id
    RETURN 1
END
GO

IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'updateFoodCategory'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.updateFoodCategory
GO

CREATE PROCEDURE dbo.updateFoodCategory
    @id INT,
    @cateName NVARCHAR(50),
    @cateDesc NVARCHAR(MAX)
AS
BEGIN
    UPDATE [dbo].[Food_Category]
    SET
        [Categoty_Name] = @cateName,
        [Category_Decs] = @cateDesc
    WHERE [category_id] = @id
    RETURN 1
END
GO


IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'updateFood'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.updateFood
GO

CREATE PROCEDURE dbo.updateFood
    @food_id INT,
    @foodName NVARCHAR(50),
    @cateID INT,
    @foodDesc NVARCHAR(MAX),
    @foodImage VARCHAR(50)
AS
BEGIN
    -- Update rows in table '[Food]' in schema '[dbo]'
    UPDATE [dbo].[Food]
    SET
        [Food_Name] = @foodName,
        [category_id] = @cateID,
        [Food_Descript] = @foodDesc,
        [Food_Image] = @foodImage
    WHERE [food_id] = @food_id
    RETURN 1
END
GO

IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'updateCustomerInfor'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.updateCustomerInfor
GO

CREATE PROCEDURE dbo.updateCustomerInfor
    @acc_id int,
    @firstName NVARCHAR(20),
    @middleName NVARCHAR(20),
    @lastName NVARCHAR(20),
    @birthD DATE
AS
BEGIN
    -- Update rows in table '[Customer_Infor]' in schema '[dbo]'
    UPDATE [dbo].[Customer_Infor]
    SET
        [First_Name] = @firstName,
        [Middle_Name] = @middleName,
        [Last_Name] = @lastName,
        [BirthD] = @birthD
        -- Add more columns and values here
    WHERE [account_id] = @acc_id
    RETURN 1
END
GO


IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'updateCustomerHate'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.updateCustomerHate
GO

CREATE PROCEDURE dbo.updateCustomerHate
    @hate_id INT,
    @acc_id INT,
    @food_id INT
AS
BEGIN
    -- Update rows in table '[Customer_Hate]' in schema '[dbo]'
    UPDATE [dbo].[Customer_Hate]
    SET
        [account_id] = @acc_id,
        [food_id] = @food_id
    WHERE [hate_id] = @hate_id
    RETURN 1
END
GO


-- CFR: Customer_Food_Recommend
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'updateCFR'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.updateCFR
GO


CREATE PROCEDURE dbo.updateCFR
    @rec_id INT,
    @acc_id INT,
    @food_id INT
AS
BEGIN
    UPDATE [dbo].[Customer_Food_Recommend]
    SET
        [account_id] = @acc_id,
        [food_id] = @food_id
    WHERE [recommend_id] = @rec_id
    RETURN 1
END
GO


--CFR: Customer_Food_Recommend
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'updateCFF'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.updateCFF
GO


CREATE PROCEDURE dbo.updateCFF
    @fav_id INT,
    @acc_id INT,
    @food_id INT
AS
BEGIN
    UPDATE [dbo].[Customer_Fav_Food]
    SET
        [account_id] = @acc_id,
        [food_id] = @food_id
    WHERE [fav_id] = @fav_id
    RETURN 1
END
GO



IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'updateCustomerEated'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.updateCustomerEated
GO




CREATE PROCEDURE dbo.updateCustomerEated
    @eated_id INT,
    @acc_id INT,
    @food_id INT,
    @timeEat TIME
AS
BEGIN
    -- Update rows in table '[Customer_Eated]' in schema '[dbo]'
    UPDATE [dbo].[Customer_Eated]
    SET
        [account_id] = @acc_id,
        [food_id] = @food_id,
        [TimeEat] = @timeEat
    WHERE [eated_id] = @eated_id
    RETURN 1
END
GO


IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'updateCustomerAddress'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.updateCustomerAddress
GO



CREATE PROCEDURE dbo.updateCustomerAddress
    @address_id INT,
    @acc_id INT,
    @province NVARCHAR(30),
    @city NVARCHAR(30),
    @ward NVARCHAR(30),
    @district NVARCHAR(30),
    @Address NVARCHAR(30)
AS
BEGIN
    -- Update rows in table '[Customer_Address]' in schema '[dbo]'
    UPDATE [dbo].[Customer_Address]
    SET
        [account_id] = @acc_id,
        [Province] = @province,
        [City] = @city,
        [Ward] = @ward,
        [District] = @district,
        [Address_Line_1] = @Address
    WHERE [address_id] = @address_id
    RETURN 1
END
GO
