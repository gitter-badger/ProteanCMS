if not Exists(select * from sys.columns where Name = N'cPosition' and Object_ID = Object_ID(N'tblContentLocation')) 
BEGIN
	ALTER TABLE tblContentLocation ADD cPosition nvarchar(50) NULL
END

