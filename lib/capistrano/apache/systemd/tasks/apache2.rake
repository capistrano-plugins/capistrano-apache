command = '/bin/systemctl'
service_name = 'apache2'

namespace :apache do
  desc 'Reload apache (requires root access to apache reload)'
  task :reload do
    on release_roles(fetch(:apache_roles)) do
      fetch(:apache_with_sudo) ? execute(:sudo, command, "reload #{service_name}.service") : execute(command, "reload #{service_name}.service")
    end
  end

  desc 'Force reload apache (requires root access to apache reload)'
  task :force_reload do
    on release_roles(fetch(:apache_roles)) do
      fetch(:apache_with_sudo) ? execute(:sudo, command, "force-reload #{service_name}.service") : execute(command, "force-reload #{service_name}.service")
    end
  end

  desc 'Stop apache (requires root access to apache stop)'
  task :stop do
    on release_roles(fetch(:apache_roles)) do
      fetch(:apache_with_sudo) ? execute(:sudo, command, "stop #{service_name}.service") : execute(command, "stop #{service_name}.service")
    end
  end

  desc 'Start apache (requires root access to apache start)'
  task :start do
    on release_roles(fetch(:apache_roles)) do
      fetch(:apache_with_sudo) ? execute(:sudo, command, "start #{service_name}.service") : execute(command, "start #{service_name}.service")
    end
  end

  desc 'Restart apache (requires root access to apache restart)'
  task :restart do
    on release_roles(fetch(:apache_roles)) do
      fetch(:apache_with_sudo) ? execute(:sudo, command, "restart #{service_name}.service") : execute(command, "restart #{service_name}.service")
    end
  end
end


