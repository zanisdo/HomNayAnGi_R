
USE master
--DROP Database HomNayAnGiDB
CREATE DATABASE HomNayAnGiDB
USE HomNayAnGiDB

-- ************************************** [Customer_Account]
CREATE TABLE [Customer_Account]
(
 [account_id] int NOT NULL IDENTITY(1,1),
 [Username]   varchar(15) NOT NULL ,
 [Password]   varchar(64) NOT NULL ,
 [Mobile]     varchar(10) NOT NULL ,
 [Email]      varchar(30) NOT NULL ,


 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED ([account_id] ASC)
);
GO

-- ************************************** [Food_Category]
CREATE TABLE [Food_Category]
(
 [category_id]   int NOT NULL  IDENTITY(1,1),
 [Categoty_Name] nvarchar(50) NOT NULL ,
 [Category_Decs] nvarchar(max) NOT NULL ,


 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED ([category_id] ASC)
);
GO

-- ************************************** [Food]
CREATE TABLE [Food]
(
 [food_id]       int NOT NULL  IDENTITY(1,1),
 [Food_Name]     nvarchar(50) NOT NULL ,
 [category_id]   int NOT NULL ,
 [Food_Descript] nvarchar(max) NOT NULL ,
 [Food_Image]    varchar(50) NOT NULL ,


 CONSTRAINT [PK_Food] PRIMARY KEY CLUSTERED ([food_id] ASC),
 CONSTRAINT [FK_Cate_Food] FOREIGN KEY ([category_id])  REFERENCES [Food_Category]([category_id])
);
GO


CREATE NONCLUSTERED INDEX [FK_Cate_Food_Index] ON [Food] 
 (
  [category_id] ASC
 )

GO

-- ************************************** [Customer_Infor]
CREATE TABLE [Customer_Infor]
(
 [account_id]  int NOT NULL ,
 [First_Name]  nvarchar(20) NOT NULL ,
 [Middle_Name] nvarchar(20) NOT NULL ,
 [Last_Name]   nvarchar(20) NOT NULL ,
 [BirthD]      date NOT NULL ,


 CONSTRAINT [PK_Infor] PRIMARY KEY CLUSTERED ([account_id] ASC),
 CONSTRAINT [FK_Acc_Inf] FOREIGN KEY ([account_id])  REFERENCES [Customer_Account]([account_id])
);
GO


CREATE NONCLUSTERED INDEX [FK_Acc_Inf_Index] ON [Customer_Infor] 
 (
  [account_id] ASC
 )

GO

-- ************************************** [Customer_Hate]
CREATE TABLE [Customer_Hate]
(
 [hate_id]    int NOT NULL  IDENTITY(1,1),
 [account_id] int NOT NULL ,
 [food_id]    int NOT NULL ,


 CONSTRAINT [PK_Hate] PRIMARY KEY CLUSTERED ([hate_id] ASC),
 CONSTRAINT [FK_Acc_Hate] FOREIGN KEY ([account_id])  REFERENCES [Customer_Account]([account_id]),
 CONSTRAINT [FK_Food_Hate] FOREIGN KEY ([food_id])  REFERENCES [Food]([food_id])
);
GO


CREATE NONCLUSTERED INDEX [FK_Acc_Hate_Index] ON [Customer_Hate] 
 (
  [account_id] ASC
 )

GO

CREATE NONCLUSTERED INDEX [FK_Food_Hate_Index] ON [Customer_Hate] 
 (
  [food_id] ASC
 )

GO

-- ************************************** [Customer_Food_Recommend]
CREATE TABLE [Customer_Food_Recommend]
(
 [recommend_id] int NOT NULL  IDENTITY(1,1),
 [account_id]   int NOT NULL ,
 [food_id]      int NOT NULL ,
 [TimeRec]      datetime NOT NULL ,


 CONSTRAINT [PK_Food_Rec] PRIMARY KEY CLUSTERED ([recommend_id] ASC),
 CONSTRAINT [FK_Acc_Rec] FOREIGN KEY ([account_id])  REFERENCES [Customer_Account]([account_id]),
 CONSTRAINT [FK_Food_Rec] FOREIGN KEY ([food_id])  REFERENCES [Food]([food_id])
);
GO


CREATE NONCLUSTERED INDEX [FK_Acc_Rec_Index] ON [Customer_Food_Recommend] 
 (
  [account_id] ASC
 )

GO

CREATE NONCLUSTERED INDEX [FK_Food_Rec_Index] ON [Customer_Food_Recommend] 
 (
  [food_id] ASC
 )

GO

-- ************************************** [Customer_Fav_Food]
CREATE TABLE [Customer_Fav_Food]
(
 [fav_id]     int NOT NULL  IDENTITY(1,1),
 [account_id] int NOT NULL ,
 [food_id]    int NOT NULL ,


 CONSTRAINT [PK_Fav_Food] PRIMARY KEY CLUSTERED ([fav_id] ASC),
 CONSTRAINT [FK_Acc_Fav] FOREIGN KEY ([account_id])  REFERENCES [Customer_Account]([account_id]),
 CONSTRAINT [FK_Food_Fav] FOREIGN KEY ([food_id])  REFERENCES [Food]([food_id])
);
GO


CREATE NONCLUSTERED INDEX [FK_Acc_Fav_Index] ON [Customer_Fav_Food] 
 (
  [account_id] ASC
 )

GO

CREATE NONCLUSTERED INDEX [FK_Food_Fav_Index] ON [Customer_Fav_Food] 
 (
  [food_id] ASC
 )

GO

-- ************************************** [Customer_Eated]
CREATE TABLE [Customer_Eated]
(
 [eated_id]   int NOT NULL  IDENTITY(1,1),
 [account_id] int NOT NULL ,
 [food_id]    int NOT NULL ,
 [TimeEat]    datetime NOT NULL ,


 CONSTRAINT [PK_Eated] PRIMARY KEY CLUSTERED ([eated_id] ASC),
 CONSTRAINT [FK_Food_Eated] FOREIGN KEY ([food_id])  REFERENCES [Food]([food_id]),
 CONSTRAINT [FK_Acc_Eated] FOREIGN KEY ([account_id])  REFERENCES [Customer_Account]([account_id])
);
GO


CREATE NONCLUSTERED INDEX [FK_Acc_Eated_Index] ON [Customer_Eated] 
 (
  [account_id] ASC
 )

GO

CREATE NONCLUSTERED INDEX [FK_Food_Eated_Index] ON [Customer_Eated] 
 (
  [food_id] ASC
 )

GO


-- ************************************** [Customer_Address]
CREATE TABLE [Customer_Address]
(
 [address_id]     int NOT NULL ,
 [account_id]     int NOT NULL ,
 [Province]       nvarchar(30) NOT NULL ,
 [City]           nvarchar(30) NOT NULL ,
 [Ward]           nvarchar(30) NOT NULL ,
 [District]       nvarchar(30) NOT NULL ,
 [Address_Line_1] nvarchar(30) NOT NULL ,


 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED ([address_id] ASC),
 CONSTRAINT [FK_Acc_Add] FOREIGN KEY ([account_id])  REFERENCES [Customer_Account]([account_id])
);
GO


CREATE NONCLUSTERED INDEX [FK_Acc_Add_Index] ON [Customer_Address] 
 (
  [account_id] ASC
 )

GO

