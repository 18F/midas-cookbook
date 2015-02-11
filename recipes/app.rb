include_recipe 'midas::ec2_vars'
include_recipe 'postgresql::client'

directory node.midas.deploy_dir do
  owner node.midas.user
  group node.midas.group
  recursive true
  mode 0770
  action :create
end

git node.midas.deploy_dir do
  repository node.midas.git_repo
  checkout_branch node.midas.git_branch
  revision node.midas.git_revision
  enable_submodules true
  user node.midas.user
  group node.midas.group
  action :sync
end

include_recipe 'midas::node_modules'

template  "#{node.midas.deploy_dir}/config/local.js" do
  source "local.js.erb"
  variables(
    app_id: node.midas.app_id,
    app_host: node.midas.app_host,
    db_host: node.midas.database.hostname,
    db_user: node.midas.database.username,
    db_password: node.midas.database.password,
    db_name: node.midas.database.name,
    app_system_email: node.midas.system_email,
    email_host: node.midas.email.hostname,
    email_user: node.midas.email.username,
    email_password: node.midas.email.password,
    email_port: node.midas.email.port,
    email_secure: node.midas.email.secure,
    email_cc: node.midas.email.cc,
    email_bcc: node.midas.email.bcc,
    task_state: node.midas.task_state,
    draft_admin_only: node.midas.draft_admin_only,
    app_host: node.midas.app_host,
    linkedin_client_id: node.midas.linkedin.client_id,
    linkedin_client_secret: node.midas.linkedin.secret,
    myusa_client_id: node.midas.myusa.client_id,
    myusa_client_secret: node.midas.myusa.secret
  )
end

file "#{node.midas.nginx_conf_dir}/#{node.midas.nginx_default}" do
  action :delete
end

file "/etc/ssl/server.key" do
  action :create
  owner  "root"
  group  "root"
  mode   "0644"
  content node['midas']['ssl']['key']
  notifies :reload, 'service[nginx]', :delayed
end

file "/etc/ssl/server.crt" do
  action :create
  owner  "root"
  group  "root"
  mode   "0644"
  content node['midas']['ssl']['cert']
  notifies :reload, 'service[nginx]', :delayed
end

template "#{node.midas.nginx_conf_dir}/midas.conf" do
  source "midas.conf.erb"
  variables(
    cert_path: "/etc/ssl/server.crt",
    cert_key_path: "/etc/ssl/server.key"
  )
  notifies :reload, 'service[nginx]', :delayed
end

unless node.midas.config_repo.nil?
  git "#{node.midas.config_dir}/#{node.midas.config_name}" do
    repository node.midas.config_repo
    checkout_branch node.midas.git_branch
    name node.midas.config_name
    revision node.midas.config_revision
    enable_submodules true
    user node.midas.user
    group node.midas.group
    action :sync
  end

  log "make import #{node.midas.config_dir}/#{node.midas.config_name}"

  execute 'run make import' do
    command  "make import DIR=#{node.midas.config_dir}/#{node.midas.config_name}"
    cwd node.midas.deploy_dir
    user node.midas.user
  end

end

execute 'build assets' do
  command "make build"
  cwd node.midas.deploy_dir
  user node.midas.user
end

execute 'run make init' do
  command "make init && touch /tmp/midas_init"
  cwd node.midas.deploy_dir
  creates "/tmp/midas_init"
  user node.midas.user
  environment(
    'PGHOST' => node.midas.database.hostname,
    'PGUSER' => node.midas.database.username,
    'PGPASSWORD' => node.midas.database.password,
    'PGDATABASE' => node.midas.database.name
  )
  only_if "psql -U #{node.midas.database.username} -c \"select * from pg_tables where schemaname='midas'\" | grep -c \"(0 rows)\""
end

execute 'migrate database' do
  command "make migrate"
  cwd node.midas.deploy_dir
  user node.midas.user
  environment(
    'PGHOST' => node.midas.database.hostname,
    'PGUSER' => node.midas.database.username,
    'PGPASSWORD' => node.midas.database.password,
    'PGDATABASE' => node.midas.database.name
  )
end

template "/etc/init/midas.conf" do
  source "midas.upstart.erb"
  variables(
    working_dir: node.midas.deploy_dir,
    app_user: node.midas.user,
    app_environment: node.midas.environment,
    newrelic_appname: node.midas.newrelic.appname,
    newrelic_licensekey: node.midas.newrelic.licensekey
  )
end

service "midas" do
  provider Chef::Provider::Service::Upstart
  action   [:enable, :start]
end

service "nginx" do
  action :restart
end
