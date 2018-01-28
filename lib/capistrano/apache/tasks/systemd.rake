systemctl_location = fetch(:systemctl_location)
service_name = fetch(:apache_service_name)

namespace :apache do
  desc 'Reload apache (requires root access to apache reload)'
  task :reload do
    on release_roles(fetch(:apache_roles)) do
      fetch(:apache_with_sudo) ? execute(:sudo, systemctl_location, "reload #{service_name}.service"): execute(systemctl_location, "reload #{service_name}.service")
    end
  end

  desc 'Force reload apache (requires root access to apache reload)'
  task :force_reload do
    on release_roles(fetch(:apache_roles)) do
      fetch(:apache_with_sudo) ? execute(:sudo, systemctl_location, "force-reload #{service_name}.service") : execute(systemctl_location, "force-reload #{service_name}.service")
    end
  end

  desc 'Stop apache (requires root access to apache stop)'
  task :stop do
    on release_roles(fetch(:apache_roles)) do
      fetch(:apache_with_sudo) ? execute(:sudo, systemctl_location, "stop #{service_name}.service") : execute(systemctl_location, "stop #{service_name}.service")
    end
  end

  desc 'Start apache (requires root access to apache start)'
  task :start do
    on release_roles(fetch(:apache_roles)) do
      fetch(:apache_with_sudo) ? execute(:sudo, systemctl_location, "start #{service_name}.service") : execute(systemctl_location, "start #{service_name}.service")
    end
  end

  desc 'Restart apache (requires root access to apache restart)'
  task :restart do
    on release_roles(fetch(:apache_roles)) do
      fetch(:apache_with_sudo) ? execute(:sudo, systemctl_location, "restart #{service_name}.service") : execute(systemctl_location, "restart #{service_name}.service")
    end
  end
end


