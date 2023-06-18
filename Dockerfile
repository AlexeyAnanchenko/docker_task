FROM postgres:latest
ENV POSTGRES_PASSWORD=password
ENV POSTGRES_USER=username
ENV POSTGRES_DB=testdb
COPY init_scripts/init.sql /docker-entrypoint-initdb.d/init.sql
VOLUME [ "/data_pg" ]