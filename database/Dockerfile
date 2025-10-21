FROM mariadb:latest

COPY datasets/ /datasets/
COPY docker-entrypoint.sh /usr/local/bin/
COPY init.sql /docker-entrypoint-initdb.d/1.sql
COPY metabase.sql /docker-entrypoint-initdb.d/2.sql

RUN chmod +x /usr/local/bin/docker-entrypoint.sh