CREATE PROCEDURE [dbo].[InsertUser]
	-- Add the parameters for the stored procedure here
	@FirstName VARCHAR(MAX),
    @LastName VARCHAR(MAX),
    @Email VARCHAR(MAX),
    @Phone CHAR(12),
	@AddressId INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
    -- Insert statements for procedure here
	INSERT INTO dbo.Users
	(FirstName, LastName, Email, Phone, AddressId)
	VALUES
	(@FirstName, @LastName, @Email, @Phone, @AddressId);

	RETURN 0;
END