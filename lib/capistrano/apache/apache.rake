namespace :load do
  task :defaults do
    set :apache_with_sudo, true
    set :apache_roles, :web
    set :apache_service_name, 'httpd'
    set :systemctl_location, '/bin/systemctl'
  end
end