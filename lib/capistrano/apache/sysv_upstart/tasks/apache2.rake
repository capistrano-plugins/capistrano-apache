service_name = 'apache2'
command = "/etc/init.d/#{service_name}"

namespace :apache do
  desc 'Reload apache (requires root access to apache reload)'
  task :reload do
    on release_roles(fetch(:apache_roles)) do
      fetch(:apache_with_sudo) ? execute(:sudo, command, 'reload') : execute(command, 'reload')
    end
  end

  desc 'Force reload apache (requires root access to apache reload)'
  task :force_reload do
    on release_roles(fetch(:apache_roles)) do
      fetch(:apache_with_sudo) ? execute(:sudo, command, 'force-reload') : execute(command, 'force-reload')
    end
  end

  desc 'Stop apache (requires root access to apache stop)'
  task :stop do
    on release_roles(fetch(:apache_roles)) do
      fetch(:apache_with_sudo) ? execute(:sudo, command, 'stop') : execute(command, 'stop')
    end
  end

  desc 'Start apache (requires root access to apache start)'
  task :start do
    on release_roles(fetch(:apache_roles)) do
      fetch(:apache_with_sudo) ? execute(:sudo, command, 'start') : execute(command, 'start')
    end
  end

  desc 'Restart apache (requires root access to apache restart)'
  task :restart do
    on release_roles(fetch(:apache_roles)) do
      fetch(:apache_with_sudo) ? execute(:sudo, command, 'restart') : execute(command, 'restart')
    end
  end
end