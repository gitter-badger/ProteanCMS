
ALTER PROCEDURE [dbo].[spGetAllUsersActive]
AS
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
			ON users.nAuditId = audit.nAuditKey AND users.cDirSchema = 'User' AND (audit.nStatus = 1 or audit.nStatus = -1)
	ORDER BY users.cDirName 
END