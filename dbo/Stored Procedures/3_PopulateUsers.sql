CREATE PROCEDURE [dbo].[Users_Populate] 
AS
BEGIN
	SET NOCOUNT ON;

	IF OBJECT_ID('dbo.Users', 'U') IS NULL
		BEGIN
		
		CREATE TABLE Users (
			UserId INT PRIMARY KEY,
			FirstName VARCHAR(MAX) NOT NULL,
			LastName VARCHAR(MAX) NOT NULL,
			Email VARCHAR(MAX) NOT NULL,
			Phone CHAR(12),
			AddressID INT NOT NULL,
			CONSTRAINT UserAddresses FOREIGN KEY (AddressId) REFERENCES dbo.Addresses (AddressId)
		);
	END;

	BULK INSERT [dbo].[Users] FROM '..\..\StaticValues\mock_users.csv' WITH (
		FIRSTROW = 1,
		FIELDTERMINATOR = ',',
		ROWTERMINATOR = '\n',
		-- ERRORFILE = '..\..\StaticValues\Users.Error.txt',
		DATAFILETYPE = 'char',
		TABLOCK
	);

END