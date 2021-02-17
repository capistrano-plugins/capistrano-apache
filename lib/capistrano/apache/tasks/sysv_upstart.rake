namespace :apache do
  desc 'Reload apache'
  task :reload do
    on release_roles(fetch(:apache_roles)) do
      fetch(:apache_with_sudo) ? execute(:sudo, "/etc/init.d/#{fetch(:apache_service_name)}", 'reload') : execute("/etc/init.d/#{fetch(:apache_service_name)}", 'reload')
    end
  end

  desc 'Force reload apache'
  task :force_reload do
    on release_roles(fetch(:apache_roles)) do
      fetch(:apache_with_sudo) ? execute(:sudo, "/etc/init.d/#{fetch(:apache_service_name)}", 'force-reload') : execute("/etc/init.d/#{fetch(:apache_service_name)}", 'force-reload')
    end
  end

  desc 'Stop apache'
  task :stop do
    on release_roles(fetch(:apache_roles)) do
      fetch(:apache_with_sudo) ? execute(:sudo, "/etc/init.d/#{fetch(:apache_service_name)}", 'stop') : execute("/etc/init.d/#{fetch(:apache_service_name)}", 'stop')
    end
  end

  desc 'Gracefuly stop apache'
  task :graceful_stop do
    on release_roles(fetch(:apache_roles)) do
      fetch(:apache_with_sudo) ? execute(:sudo, "/etc/init.d/#{fetch(:apache_service_name)}", 'graceful-stop') : execute("/etc/init.d/#{fetch(:apache_service_name)}", 'graceful-stop')
    end
  end

  desc 'Start apache'
  task :start do
    on release_roles(fetch(:apache_roles)) do
      fetch(:apache_with_sudo) ? execute(:sudo, "/etc/init.d/#{fetch(:apache_service_name)}", 'start') : execute("/etc/init.d/#{fetch(:apache_service_name)}", 'start')
    end
  end

  desc 'Restart apache'
  task :restart do
    on release_roles(fetch(:apache_roles)) do
      fetch(:apache_with_sudo) ? execute(:sudo, "/etc/init.d/#{fetch(:apache_service_name)}", 'restart') : execute("/etc/init.d/#{fetch(:apache_service_name)}", 'restart')
    end
  end

  desc 'Gracefuly restart apache'
  task :graceful do
    on release_roles(fetch(:apache_roles)) do
      fetch(:apache_with_sudo) ? execute(:sudo, "/etc/init.d/#{fetch(:apache_service_name)}", 'graceful') : execute("/etc/init.d/#{fetch(:apache_service_name)}", 'graceful')
    end
  end
end