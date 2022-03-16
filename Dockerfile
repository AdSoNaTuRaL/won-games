FROM postgres:12-alpine

ENV POSTGRES_USER=wongames
ENV POSTGRES_PASSWORD=wongames123
ENV POSTGRES_DB=wongames

WORKDIR "/database"

COPY ./dump.sql /docker-entrypoint.initdb.d/