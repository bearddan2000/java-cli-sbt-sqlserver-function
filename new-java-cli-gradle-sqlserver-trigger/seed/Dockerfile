FROM mcr.microsoft.com/mssql-tools

ENV MSSQL_SA_PASSWORD z!oBx1ab

WORKDIR /workspace

COPY init.sh .

COPY sql .

ENV WAIT_VERSION 2.7.2

ADD https://github.com/ufoscout/docker-compose-wait/releases/download/$WAIT_VERSION/wait /wait

RUN chmod +x /wait

CMD "./init.sh"