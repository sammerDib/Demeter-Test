
USE [UnityControlv7]
GO

DECLARE @DELETEJOB AS INT;
SET @DELETEJOB = 0;

DECLARE @MYJOB_ID AS INT;
SET @MYJOB_ID = 0;

if(@MYJOB_ID != 0)
BEGIN
PRINT N'JOB ID SELECTED.'
	SELECT [Id] as 'JOB ID',[JobName] ,[LotName] ,[Date] ,[RecipeName] ,[RunIter] ,[ToolId] FROM [Job]
	where Id = @MYJOB_ID

	Select WaferResult.Id as 'W ID', WaferResult.Date, Job.Id, Job.JobName
	from  WaferResult 
	inner join Job on Job.Id = WaferResult.JobId
	where Job.Id = @MYJOB_ID

	Select Result.Id as 'RES ID', Result.Date, WaferResult.Id, WaferResult.Date, Job.Id, Job.JobName
	from Result
	inner join WaferResult on WaferResult.Id = Result.WaferResultId
	inner join Job on Job.Id = WaferResult.JobId
	where Job.Id = @MYJOB_ID

	Select ResultItem.Id as 'ITEM ID',  ResultItem.FileName, ResultItem.Name, Result.Id as 'RES ID', Result.ChamberId, WaferResult.Id as 'W ID', WaferResult.Date, Job.Id as 'JOBID', Job.JobName
	from ResultItem
	inner join Result on Result.Id = ResultItem.ResultId
	inner join WaferResult on WaferResult.Id = Result.WaferResultId
	inner join Job on Job.Id = WaferResult.JobId
	where Job.Id = @MYJOB_ID

	Select ResultItemValue.Id as 'ITEM VALUE ID',  ResultItemValue.Name, ResultItemValue.Value, ResultItem.Id as 'ITEM ID', ResultItem.Name, Result.Id as 'RES ID', Result.ChamberId, WaferResult.Id as 'W ID', Job.Id as 'JOBID'
	from ResultItemValue
	inner join ResultItem on ResultItem.Id = ResultItemValue.ResultItemId
	inner join Result on Result.Id = ResultItem.ResultId
	inner join WaferResult on WaferResult.Id = Result.WaferResultId
	inner join Job on Job.Id = WaferResult.JobId
	where Job.Id = @MYJOB_ID

    Select ResultAcq.Id as 'RES ACQ ID', ResultAcq.Date, WaferResult.Id, WaferResult.Date, Job.Id, Job.JobName
	from ResultAcq
	inner join WaferResult on WaferResult.Id = ResultAcq.WaferResultId
	inner join Job on Job.Id = WaferResult.JobId
	where Job.Id = @MYJOB_ID

	Select ResultAcqItem.Id as 'ITEM ACQ ID',  ResultAcqItem.FileName, ResultAcqItem.Name, ResultAcq.Id as 'RES ACQ ID', ResultAcq.ChamberId, WaferResult.Id as 'W ID', WaferResult.Date, Job.Id as 'JOBID', Job.JobName
	from ResultAcqItem
	inner join ResultAcq on ResultAcq.Id = ResultAcqItem.ResultAcqId
	inner join WaferResult on WaferResult.Id = ResultAcq.WaferResultId
	inner join Job on Job.Id = WaferResult.JobId
	where Job.Id = @MYJOB_ID

	if(@DELETEJOB != 0) 
	BEGIN
	PRINT N'DELETE JOB SELECT.'
        DELETE racqit from ResultAcqItem racqit
		inner join ResultAcq on ResultAcq.Id = racqit.ResultAcqId
		inner join WaferResult on WaferResult.Id = ResultAcq.WaferResultId
		inner join Job on Job.Id = WaferResult.JobId
		where Job.Id = @MYJOB_ID

		DELETE racq from ResultAcq racq
		inner join WaferResult on WaferResult.Id = racq.WaferResultId
		inner join Job on Job.Id = WaferResult.JobId
		where Job.Id = @MYJOB_ID

		DELETE rv from ResultItemValue rv
		inner join ResultItem on ResultItem.Id = rv.ResultItemId
		inner join Result on Result.Id = ResultItem.ResultId
		inner join WaferResult on WaferResult.Id = Result.WaferResultId
		inner join Job on Job.Id = WaferResult.JobId
		where Job.Id = @MYJOB_ID

		DELETE rit from ResultItem rit
		inner join Result on Result.Id = rit.ResultId
		inner join WaferResult on WaferResult.Id = Result.WaferResultId
		inner join Job on Job.Id = WaferResult.JobId
		where Job.Id = @MYJOB_ID

		DELETE rs from Result rs
		inner join WaferResult on WaferResult.Id = rs.WaferResultId
		inner join Job on Job.Id = WaferResult.JobId
		where Job.Id = @MYJOB_ID

		DELETE waf from  WaferResult waf
		inner join Job on Job.Id = waf.JobId
		where Job.Id = @MYJOB_ID

		DELETE j FROM Job j where j.Id = @MYJOB_ID
	END
END
ELSE
BEGIN
PRINT N'SELECT ALL JOBS.'
	SELECT [Id] as 'JOB ID',[JobName] ,[LotName] ,[Date] ,[RecipeName] ,[RunIter] ,[ToolId] FROM [Job]

	Select WaferResult.Id as 'W ID', WaferResult.Date, Job.Id, Job.JobName
	from  WaferResult 
	inner join Job on Job.Id = WaferResult.JobId
	
	Select Result.Id as 'RES ID', Result.Date, WaferResult.Id, WaferResult.Date, Job.Id, Job.JobName
	from Result
	inner join WaferResult on WaferResult.Id = Result.WaferResultId
	inner join Job on Job.Id = WaferResult.JobId

	Select ResultItem.Id as 'ITEM ID',  ResultItem.FileName, ResultItem.Name, Result.Id as 'RES ID', Result.ChamberId, WaferResult.Id as 'W ID', WaferResult.Date, Job.Id as 'JOBID', Job.JobName
	from ResultItem
	inner join Result on Result.Id = ResultItem.ResultId
	inner join WaferResult on WaferResult.Id = Result.WaferResultId
	inner join Job on Job.Id = WaferResult.JobId

	Select ResultItemValue.Id as 'ITEM VALUE ID',  ResultItemValue.Name, ResultItemValue.Value, ResultItem.Id as 'ITEM ID', ResultItem.Name, Result.Id as 'RES ID', Result.ChamberId, WaferResult.Id as 'W ID', Job.Id as 'JOBID'
	from ResultItemValue
	inner join ResultItem on ResultItem.Id = ResultItemValue.ResultItemId
	inner join Result on Result.Id = ResultItem.ResultId
	inner join WaferResult on WaferResult.Id = Result.WaferResultId
	inner join Job on Job.Id = WaferResult.JobId

    Select ResultAcq.Id as 'RES ACQ ID', ResultAcq.Date, WaferResult.Id, WaferResult.Date, Job.Id, Job.JobName
	from ResultAcq
	inner join WaferResult on WaferResult.Id = ResultAcq.WaferResultId
	inner join Job on Job.Id = WaferResult.JobId

	Select ResultAcqItem.Id as 'ITEM ACQ ID',  ResultAcqItem.FileName, ResultAcqItem.Name, ResultAcq.Id as 'RES ACQ ID', ResultAcq.ChamberId, WaferResult.Id as 'W ID', WaferResult.Date, Job.Id as 'JOBID', Job.JobName
	from ResultAcqItem
	inner join ResultAcq on ResultAcq.Id = ResultAcqItem.ResultAcqId
	inner join WaferResult on WaferResult.Id = ResultAcq.WaferResultId
	inner join Job on Job.Id = WaferResult.JobId

	if(@DELETEJOB != 0) 
	BEGIN
	PRINT N'DELETE ALL JOBS.'

      DELETE racqit from ResultAcqItem racqit
		inner join ResultAcq on ResultAcq.Id = racqit.ResultAcqId
		inner join WaferResult on WaferResult.Id = ResultAcq.WaferResultId
		inner join Job on Job.Id = WaferResult.JobId

		DELETE racq from ResultAcq racq
		inner join WaferResult on WaferResult.Id = racq.WaferResultId
		inner join Job on Job.Id = WaferResult.JobId

		DELETE rv from ResultItemValue rv
		inner join ResultItem on ResultItem.Id = rv.ResultItemId
		inner join Result on Result.Id = ResultItem.ResultId
		inner join WaferResult on WaferResult.Id = Result.WaferResultId
		inner join Job on Job.Id = WaferResult.JobId

		DELETE rit from ResultItem rit
		inner join Result on Result.Id = rit.ResultId
		inner join WaferResult on WaferResult.Id = Result.WaferResultId
		inner join Job on Job.Id = WaferResult.JobId

		DELETE rs from Result rs
		inner join WaferResult on WaferResult.Id = rs.WaferResultId
		inner join Job on Job.Id = WaferResult.JobId
	
		DELETE waf from  WaferResult waf
		inner join Job on Job.Id = waf.JobId
	
		DELETE j FROM Job j
	END
END

