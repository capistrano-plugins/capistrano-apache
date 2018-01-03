namespace :load do
  task :defaults do
    set :apache_with_sudo, true
    set :apache_roles, :web
  end
end