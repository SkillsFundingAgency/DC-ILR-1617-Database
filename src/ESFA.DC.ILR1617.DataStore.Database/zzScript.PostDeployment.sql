
/*
Post-Deployment Script 
--------------------------------------------------------------------------------------
*/

RAISERROR('		   Extended Property',10,1) WITH NOWAIT;
GO

RAISERROR('		         %s - %s',10,1,'BuildNumber','$(BUILD_BUILDNUMBER)') WITH NOWAIT;
IF NOT EXISTS (SELECT name, value FROM fn_listextendedproperty('BuildNumber', default, default, default, default, default, default))
	EXEC sp_addextendedproperty @name = N'BuildNumber', @value = '$(BUILD_BUILDNUMBER)';  
ELSE
	EXEC sp_updateextendedproperty @name = N'BuildNumber', @value = '$(BUILD_BUILDNUMBER)';  
	
GO
RAISERROR('		         %s - %s',10,1,'BuildBranch','$(BUILD_BRANCHNAME)') WITH NOWAIT;
IF NOT EXISTS (SELECT name, value FROM fn_listextendedproperty('BuildBranch', default, default, default, default, default, default))
	EXEC sp_addextendedproperty @name = N'BuildBranch', @value = '$(BUILD_BRANCHNAME)';  
ELSE
	EXEC sp_updateextendedproperty @name = N'BuildBranch', @value = '$(BUILD_BRANCHNAME)';  

GO
RAISERROR('		         %s - %s',10,1,'ReleaseName','$(RELEASE_RELEASENAME)') WITH NOWAIT;
IF NOT EXISTS (SELECT name, value FROM fn_listextendedproperty('ReleaseName', default, default, default, default, default, default))
	EXEC sp_addextendedproperty @name = N'ReleaseName', @value = '$(RELEASE_RELEASENAME)';  
ELSE
	EXEC sp_updateextendedproperty @name = N'ReleaseName', @value = '$(RELEASE_RELEASENAME)';  

GO
DECLARE @DeploymentTime VARCHAR(35) = CONVERT(VARCHAR(35),GETUTCDATE(),113);
RAISERROR('		         %s - %s',10,1,'DeploymentDatetime',@DeploymentTime) WITH NOWAIT;
IF NOT EXISTS (SELECT name, value FROM fn_listextendedproperty('DeploymentDatetime', default, default, default, default, default, default))
	EXEC sp_addextendedproperty @name = N'DeploymentDatetime', @value = @DeploymentTime;  
ELSE
	EXEC sp_updateextendedproperty @name = N'DeploymentDatetime', @value = @DeploymentTime;  
GO

DROP VIEW IF EXISTS [dbo].[DisplayDeploymentProperties_VW];
GO

RAISERROR('		   Update User Account Passwords',10,1) WITH NOWAIT;
GO
RAISERROR('			     RO User',10,1) WITH NOWAIT;
ALTER USER [ILR1617DataStore_RO_User] WITH PASSWORD = N'$(ROUserPassword)';
GO
RAISERROR('			     RW User',10,1) WITH NOWAIT;
ALTER USER [ILR1617DataStore_RW_User] WITH PASSWORD = N'$(RWUserPassword)';
GO
RAISERROR('			     DSCI User',10,1) WITH NOWAIT;
ALTER USER [User_DSCI] WITH PASSWORD = N'$(DSCIUserPassword)';
GO


-- Remove Incorrect users.
IF EXISTS ( SELECT [name] FROM sys.database_principals WHERE [name] = 'ILR1819DataStore_RW_User')
BEGIN
	RAISERROR('Drop User : %s',10,1,'ILR1819DataStore_RW_User') WITH NOWAIT;
    DROP USER [ILR1819DataStore_RW_User]
END
GO
IF EXISTS ( SELECT [name] FROM sys.database_principals WHERE [name] = 'ILR1819DataStore_RO_User')
BEGIN
	RAISERROR('Drop User : %s',10,1,'ILR1819DataStore_RO_User') WITH NOWAIT;
    DROP USER [ILR1819DataStore_RO_User]
END

RAISERROR('Completed',10,1) WITH NOWAIT;
GO

