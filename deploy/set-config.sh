echo "
[app]
address = \"0.0.0.0:${PORT}\"
admin_username = \"${ADMIN_USERNAME}\"
admin_password = \"${ADMIN_PASSWORD}\"
# Database.
[db]
host = \"${PGHOST}\"
port = ${PGPORT}
user = \"${PGUSER}\"
password = \"${PGPASSWORD}\"
database = \"${PGDATABASE}\"
ssl_mode = \"${SSL_MODE}\"
max_open = ${PG_MAX_OPEN}
max_idle = ${PG_MAX_IDLE}
max_lifetime = \"300s\"
" > config.toml
