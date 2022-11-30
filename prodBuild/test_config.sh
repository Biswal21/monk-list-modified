echo "
[app]
address = \"0.0.0.0:9000\"
admin_username = \"\"
admin_password = \"\"
# Database.
[db]
# host = \"container_IP\"
host = \"172.17.0.2\"
port = 5432
user = \"listmonk\"
password = \"listmonk\"
database = \"listmonk\"
ssl_mode = \"disable\"
max_open = 25
max_idle = 25
max_lifetime = \"300s\"
" > config.toml
