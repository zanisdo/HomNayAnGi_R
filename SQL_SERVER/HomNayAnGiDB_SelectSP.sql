
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'selectFood'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.selectFood
GO


CREATE PROCEDURE dbo.selectFood
    @startPoint INT
AS
BEGIN
    SELECT TOP(10) * FROM [dbo].[Food] WHERE [food_id] > @startPoint
END
GO

IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'selectUsers'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.selectUsers
GO


CREATE PROCEDURE dbo.selectUsers
    @startPoint INT
AS
BEGIN
    SELECT TOP(10) * FROM [dbo].[users] WHERE [id] > @startPoint
END
GO

IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'selectFoodCate'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.selectFoodCate
GO


CREATE PROCEDURE dbo.selectFoodCate
    @startPoint INT
AS
BEGIN
    SELECT TOP(10) * FROM [dbo].[Food_Category] WHERE [category_id] > @startPoint
END
GO


IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'selectCustomerInfor'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.selectCustomerInfor
GO


CREATE PROCEDURE dbo.selectCustomerInfor
    @startPoint INT
AS
BEGIN
    SELECT TOP(10) * FROM [dbo].[Customer_Infor] WHERE [account_id] > @startPoint
END
GO


IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'selectCustomerHate'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.selectCustomerHate
GO


CREATE PROCEDURE dbo.selectCustomerHate
    @startPoint INT
AS
BEGIN
    SELECT TOP(10) * FROM [dbo].[Customer_Hate] WHERE [hate_id] > @startPoint
END
GO


IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'selectCustomerFoodREcommend'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.selectCustomerFoodREcommend
GO


CREATE PROCEDURE dbo.selectCustomerFoodREcommend
    @startPoint INT
AS
BEGIN
    SELECT TOP(10) * FROM [dbo].[Customer_Food_Recommend] WHERE [recommend_id] > @startPoint
END
GO


IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'selectCustomerFavFood'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.selectCustomerFavFood
GO


CREATE PROCEDURE dbo.selectCustomerFavFood
    @startPoint INT
AS
BEGIN
    SELECT TOP(10) * FROM [dbo].[Customer_Fav_Food] WHERE [fav_id] > @startPoint
END
GO


IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'selectCustomerEated'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.selectCustomerEated
GO


CREATE PROCEDURE dbo.selectCustomerEated
    @startPoint INT
AS
BEGIN
    SELECT TOP(10) * FROM [dbo].[Customer_Eated] WHERE [eated_id] > @startPoint
END
GO

IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'selectCustomerAddress'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.selectCustomerAddress
GO


CREATE PROCEDURE dbo.selectCustomerAddress
    @startPoint INT
AS
BEGIN
    SELECT TOP(10) * FROM [dbo].[Customer_Address] WHERE [address_id] > @startPoint
END
GO



