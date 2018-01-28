# Capistrano Apache

Official Capistrano extension for Apache tasks.
Supports httpd and apache2 (see Configuration below)
This replaces 1.0.0 of https://rubygems.org/gems/capistrano-apache. *It differs greatly in configuration.*

### Environments Supported
| systemd | sysv & upstart |
| ------- | -------------- |
| ```capistrano/apache/systemd``` | ```capistrano/apache/sysv_upstart``` |

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capistrano', '~> 3.2'
gem 'capistrano-apache'
```

## Usage

Require one of the above 'Environments Supported' in your `Capfile`:

```ruby
require 'capistrano/apache/systemd'
```

`capistrano/apache` comes with 5 tasks:

* apache:reload
* apache:force_reload
* apache:restart
* apache:stop
* apache:zap

You can execute the task on command line:
 
```bash
cap production apache:reload
```

And configure it on your `deploy.rb` file:

```ruby
namespace :deploy do
  after :finishing, 'apache:reload'
  after :rollback, 'apache:reload'
end
```

### Configuration

Configurable options shown here are also the defaults:

```ruby
set :apache_with_sudo, true
set :apache_roles, :web
set :apache_service_name, 'httpd' # Specify apache2 here if needed
set :systemctl_location, '/bin/systemctl' # May already exist if you use other plugins. Be sure to check your config/deploy/{env} file
```

### More Capistrano automation?

Check out [capistrano-plugins](https://github.com/capistrano-plugins) github org.

### Contributing and bug reports

Contributions and improvements are very welcome.

If something is not working for you, or you find a bug please report it.

### Thanks

* [Sullivan Senechal](https://github.com/Soullivaneuh) @ [NexyLan](https://www.nexylan.com) - Original creator of sysv & upstart code plugin this is heavily based on

### License

[MIT](LICENSE.md)
