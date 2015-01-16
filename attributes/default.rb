default.midas.app_id = "midas"
default.midas.user = "midas"
default.midas.group = "midas"
default.midas.user_home = "/home/midas"
default.midas.deploy_dir = "/var/www/midas"
default.midas.git_repo = "https://github.com/18F/midas.git"
default.midas.git_branch = "deploy"  # create a branch on server with this name
default.midas.git_revision = "master" # branch, tag, sha to deploy
default.midas.nginx_conf_dir = "/etc/nginx/vhosts"
default.midas.nginx_default = "default.conf"
default.midas.nginx_conf_source = "tools/nginx/test-server.conf"
default.midas.app_host = "localhost:1337"
default.midas.environment = "production"
default.midas.system_email = "midas@midas.midas"

default.sails.postgresql_repo = "https://github.com/18F/sails-postgresql.git"
default.sails.postgresql_git_revision = "softdelete" # branch, tag, sha to deploy

default.midas.config_repo = nil
default.midas.config_revision = "master"
default.midas.config_name = "midas-config"
default.midas.config_dir = node.midas.user_home

default.midas.database.username = 'midas'
default.midas.database.password = 'midas'
default.midas.database.hostname = 'localhost'
default.midas.database.name = 'midas'

default.midas.email.username = ''
default.midas.email.password = ''
default.midas.email.hostname = 'smtp.mandrillapp.com'
default.midas.email.port = 587
default.midas.email.secure = false
default.midas.email.cc = ''
default.midas.email.bcc = ''

default.midas.linkedin.client_id = 'NOTSET'
default.midas.linkedin.secret = 'NOTSET'

default.midas.myusa.client_id = 'NOTSET'
default.midas.myusa.secret = 'NOTSET'
