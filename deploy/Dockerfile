FROM alpine:latest
ARG TZ PORT ADMIN_PASSWORD ADMIN_USERNAME PGDATABASE PGHOST PGPASSWORD PGPORT PGUSER SSL_MODE PG_MAX_OPEN PG_MAX_IDLE
EXPOSE 9000
RUN apk --no-cache add ca-certificates tzdata
WORKDIR /listmonk
COPY listmonk .
COPY ./deploy/set-config.sh ./config.sh
RUN chmod +x ./config.sh
CMD ["/bin/sh", "-c", "./config.sh && ./listmonk --idempotent --yes || ./listmonk --install --yes"]
