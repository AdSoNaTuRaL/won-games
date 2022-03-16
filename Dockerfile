FROM postgres:12-alpine

WORKDIR "/database"

ENV POSTGRES_USER=wongames
ENV POSTGRES_PASSWORD=wongames123
ENV POSTGRES_DB=wongames


COPY ./database/dump.sql /docker-entrypoint.initdb.d/