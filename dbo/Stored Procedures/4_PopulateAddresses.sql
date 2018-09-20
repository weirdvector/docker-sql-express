

CREATE PROCEDURE [dbo].[Addresses_Populate] 
AS
BEGIN
	SET NOCOUNT ON;

	BULK INSERT [dbo].[Addresses] FROM '..\..\StaticValues\mock_addresses.csv' WITH (
		FIRSTROW = 1,
		FIELDTERMINATOR = ',',
		ROWTERMINATOR = '\n',
		-- ERRORFILE = '..\..\StaticValues\Users.Error.txt',
		DATAFILETYPE = 'char',
		TABLOCK
	);

END