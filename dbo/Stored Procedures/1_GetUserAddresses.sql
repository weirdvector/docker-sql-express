CREATE PROCEDURE [dbo].[GetUserAddresses]
AS
BEGIN
	SET NOCOUNT ON;

    SELECT * FROM dbo.Users u
    INNER JOIN dbo.Addresses a 
    ON a.AddressId = u.AddressId;
	
END