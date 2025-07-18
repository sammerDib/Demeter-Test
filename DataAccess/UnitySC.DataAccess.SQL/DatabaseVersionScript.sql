USE [UnityControlv7]
GO

/****** Object:  Update DatabaseVersion Script Date: 05/07/2022 13:56:23 ******/
declare @DbVersion varchar(50)
declare @DbDateVersion varchar(50)
declare @InsertVersionQuery nvarchar(500)

set @DbVersion =CONCAT('''', N'7.0.0','''')
set @DbDateVersion =CONCAT('''', N'2022-07-05 14:00:00','''')
set @InsertVersionQuery = 'INSERT INTO [dbo].[DatabaseVersion] (Version, Date) VALUES ( ' + @DbVersion + ' , ' +  @DbDateVersion + ' )'

EXEC sp_executesql @InsertVersionQuery
GO

/****** Script de la commande SelectTopNRows à partir de SSMS  ******/
SELECT TOP 10 [Id]
      ,[Version]
      ,[Date]
  FROM [dbo].[DatabaseVersion]