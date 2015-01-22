include_recipe 'postgresql'
include_recipe 'postgresql::client'
include_recipe 'postgresql::server'
include_recipe 'database::postgresql'

# Set up databases and users
db_connection_info = {
  host: node['midas']['database']['hostname'],
  username: 'postgres',
  password: node['postgresql']['password']['postgres'],
  port: 5432
}

postgresql_database node['midas']['database']['name'] do
  connection db_connection_info
  action :create
end

postgresql_database_user node['midas']['database']['username'] do
  connection db_connection_info
  password node['midas']['database']['password']
  action :create
end

postgresql_database node['midas']['database']['name']  do
  connection db_connection_info
  sql { ::File.open(node.midas.deploy_dir + '/node_modules/connect-pg-simple/table.sql').read }
  action :query
end

postgresql_database_user node['midas']['database']['username'] do
  connection db_connection_info
  database_name node['midas']['database']['name']
  privileges [:all]
  action :grant
end
