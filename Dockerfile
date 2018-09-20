FROM microsoft/mssql-server-linux
ENV SA_PASSWORD=Welcome1234
ENV ACCEPT_EULA=Y
COPY . .

ENV DATABASE_NAME MyDatabase
#COPY ./dbo/ ./dbo/
#COPY ./StaticValues/ ./StaticValues/

RUN chmod +x ./sqlcmdstartup.sh
CMD /bin/bash ./entrypoint.sh
EXPOSE 1433