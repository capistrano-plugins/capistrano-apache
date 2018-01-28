command = "/etc/init.d/#{fetch(:apache_service_name)}"
namespace :apache do
  desc 'Reload apache'
  task :reload do
    on release_roles(fetch(:apache_roles)) do
      fetch(:apache_with_sudo) ? execute(:sudo, command, 'reload') : execute(command, 'reload')
    end
  end

  desc 'Force reload apache'
  task :force_reload do
    on release_roles(fetch(:apache_roles)) do
      fetch(:apache_with_sudo) ? execute(:sudo, command, 'force-reload') : execute(command, 'force-reload')
    end
  end

  desc 'Stop apache'
  task :stop do
    on release_roles(fetch(:apache_roles)) do
      fetch(:apache_with_sudo) ? execute(:sudo, command, 'stop') : execute(command, 'stop')
    end
  end

  desc 'Start apache'
  task :start do
    on release_roles(fetch(:apache_roles)) do
      fetch(:apache_with_sudo) ? execute(:sudo, command, 'start') : execute(command, 'start')
    end
  end

  desc 'Restart apache'
  task :restart do
    on release_roles(fetch(:apache_roles)) do
      fetch(:apache_with_sudo) ? execute(:sudo, command, 'restart') : execute(command, 'restart')
    end
  end
end