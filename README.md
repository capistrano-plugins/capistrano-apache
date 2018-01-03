# Capistrano Apache

Official Capistrano extension for Apache tasks.

### Environments Supported
|  | systemd | sysv & upstart |
| ---- | ------- | -------------- |
| HTTPD | ```capistrano/apache/systemd/httpd``` | ```capistrano/apache/sysv_upstart/httpd``` |
| APACHE2 | ```capistrano/apache/systemd/apache2``` | ```capistrano/apache/systemd/apache2``` |

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capistrano', '~> 3.2'
gem 'capistrano-apache'
```

## Usage

Require one of the above modules (Environments Supported) in your `Capfile`:

```ruby
require 'capistrano/apache/systemd/httpd'
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
