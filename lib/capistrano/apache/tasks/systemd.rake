namespace :apache do
  desc 'Reload apache (requires root access to apache reload)'
  task :reload do
    on release_roles(fetch(:apache_roles)) do
      fetch(:apache_with_sudo) ? execute(:sudo, fetch(:systemctl_location), "reload #{fetch(:apache_service_name)}.service"): execute(fetch(:systemctl_location), "reload #{fetch(:apache_service_name)}.service")
    end
  end

  desc 'Force reload apache (requires root access to apache reload)'
  task :force_reload do
    on release_roles(fetch(:apache_roles)) do
      fetch(:apache_with_sudo) ? execute(:sudo, fetch(:systemctl_location), "force-reload #{fetch(:apache_service_name)}.service") : execute(fetch(:systemctl_location), "force-reload #{fetch(:apache_service_name)}.service")
    end
  end

  desc 'Stop apache (requires root access to apache stop)'
  task :stop do
    on release_roles(fetch(:apache_roles)) do
      fetch(:apache_with_sudo) ? execute(:sudo, fetch(:systemctl_location), "stop #{fetch(:apache_service_name)}.service") : execute(fetch(:systemctl_location), "stop #{fetch(:apache_service_name)}.service")
    end
  end

  desc 'Start apache (requires root access to apache start)'
  task :start do
    on release_roles(fetch(:apache_roles)) do
      fetch(:apache_with_sudo) ? execute(:sudo, fetch(:systemctl_location), "start #{fetch(:apache_service_name)}.service") : execute(fetch(:systemctl_location), "start #{fetch(:apache_service_name)}.service")
    end
  end

  desc 'Restart apache (requires root access to apache restart)'
  task :restart do
    on release_roles(fetch(:apache_roles)) do
      fetch(:apache_with_sudo) ? execute(:sudo, fetch(:systemctl_location), "restart #{fetch(:apache_service_name)}.service") : execute(fetch(:systemctl_location), "restart #{fetch(:apache_service_name)}.service")
    end
  end
end


