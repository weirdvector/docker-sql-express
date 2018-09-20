# Dockerized SQL Server

A SQL server running in Docker. Files include:
- ```entrypoint.sh```: The first script run, which starts the SQL server and runs the next script...
- ```sqlcmdstartup.sh```: Calls ```sqlcmd``` a bunch of times to create the tables and stored procedures. 
- ```dbo\Tables``` and ```dbo\Stored Procedures```: self explanatory, creation scripts.
- ```StaticValues```: Contains .csv files used for scripts in populate.sql.
- ```populate.sql```: Populates the database with static values from above.
- ```Dockerfile```: Edit the DATABASE_NAME env variable if you're so inclined.

To run:
```
docker build -t hackathon_db_image .
docker run --name hackathon_db_container --rm -p 1433:1433 hackathon_db_image
```