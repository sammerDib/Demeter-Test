/****** Script de la commande SelectTopNRows à partir de SSMS  ******/

USE [UnityControlv7Test]
GO

SELECT TOP 1000 [Id]
      ,[JobName]
      ,[LotName]
      ,[Date]
      ,[RecipeName]
      ,[RunIter]
      ,[ToolId]
  FROM [dbo].[Job] ORDER by Date DESC
  /*                              1    ,      2    ,     3    ,   4       ,    5   ,      6      ,     7     ,     8      ,     9    ,     10*/
  /*EXEC dbo.sp_GetJobResults @pToolId,@pStartDate,@pEndDate,@pProductId,@pLotName,@pRecipeName,@pActorType,@pResultState,@pWaferName,@pTag */
  EXEC [dbo].sp_GetJobResults NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL

  EXEC [dbo].sp_GetJobResults NULL, NULL, NULL, NULL, NULL, NULL, 33, NULL, NULL

  Declare @intid int = 185;
  SET @intid = (SELECT TOP 1 [Id] FROM [dbo].[Tool] ORDER by Id);
  SELECT(@intid) as 'Fisrt tool ID';


  EXEC [dbo].sp_GetJobResults @intid, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
  SET  @intid = @intid +1;
  EXEC [dbo].sp_GetJobResults @intid, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
  SET  @intid =@intid +1;
  EXEC [dbo].sp_GetJobResults @intid, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL

    EXEC [dbo].sp_GetJobResults @intid, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1
