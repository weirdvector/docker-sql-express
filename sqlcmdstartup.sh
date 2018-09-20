echo "Setting up database after timeout..."
sleep 20

echo "Creating database $DATABASE_NAME"
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P $SA_PASSWORD -i ./sqlcmdscript.sql

sleep 5

echo "Creating tables"
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P $SA_PASSWORD -d $DATABASE_NAME -i './dbo/Tables/1_Addresses.sql'
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P $SA_PASSWORD -d $DATABASE_NAME -i './dbo/Tables/2_Users.sql'

echo "Creating stored procedures"
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P $SA_PASSWORD -d $DATABASE_NAME -i './dbo/Stored Procedures/1_GetUserAddresses.sql'
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P $SA_PASSWORD -d $DATABASE_NAME -i './dbo/Stored Procedures/2_InsertUser.sql'
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P $SA_PASSWORD -d $DATABASE_NAME -i './dbo/Stored Procedures/3_PopulateUsers.sql'
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P $SA_PASSWORD -d $DATABASE_NAME -i './dbo/Stored Procedures/4_PopulateAddresses.sql'

sleep 5
echo "Populating data"
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P $SA_PASSWORD -d $DATABASE_NAME -i './populate.sql'
