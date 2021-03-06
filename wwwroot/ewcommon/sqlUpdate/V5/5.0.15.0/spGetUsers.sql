
ALTER PROCEDURE [dbo].[spGetUsers] (
	@nParDirId int = 0,
	@nStatus int = 99
)
AS
BEGIN
	IF @nParDirId = 0
	BEGIN
			IF @nStatus = 99 
			BEGIN
				EXEC dbo.spGetAllUsers 
			END 
			ELSE IF @nStatus = -1 or @nStatus = 1 
			BEGIN
				EXEC dbo.spGetAllUsersActive 
			END
			ELSE IF @nStatus = 0
			BEGIN
				EXEC dbo.spGetAllUsersInactive 
			END
			ELSE
			BEGIN
				SELECT
					users.nDirKey as id, 
					dbo.fxn_getStatus(audit.nAuditKey,getdate()) as Status,  
					users.cDirName as Username, 
					users.cDirXml as UserXml,
					dbo.fxn_getUserCompanies(users.nDirKey) as Companies,
					dbo.fxn_getUserDepts(users.nDirKey,0) as Departments
				FROM dbo.tblDirectory users
					INNER JOIN dbo.tblAudit audit
						ON users.nAuditId = audit.nAuditKey AND users.cDirSchema = 'User' AND (audit.nStatus = @nStatus)
				ORDER BY users.cDirName 
			END
	END
	ELSE
	BEGIN
		IF @nStatus = 99 
			BEGIN
				EXEC dbo.spGetCompanyUsers @nDirId = @nParDirId 
			END 
			ELSE IF @nStatus = -1 or @nStatus = 1 
			BEGIN
				EXEC dbo.spGetCompanyUsersActive @nDirId = @nParDirId
			END
			ELSE IF @nStatus = 0
			BEGIN
				EXEC dbo.spGetCompanyUsersInActive @nDirId = @nParDirId 
			END
	END
END