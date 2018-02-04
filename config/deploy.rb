# config valid only for current version of Capistrano
lock '3.10.1'

set :application, 'final-work'
set :repo_url, 'https://github.com/liukun-lk/Final-work'

set :rvm_ruby_version, '2.5.0'

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, '/var/www/final-work'

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml')

# Default value for linked_dirs is []
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets',
                                               'vendor/bundle', 'public/system', 'public/demo')
# set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
set :keep_releases, 2

namespace :deploy do
  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end
end

task :get_passenger_instance_name do
  on roles(:app) do
    set :passenger_instance_name, capture(:"/usr/sbin/passenger-status || true").scan(/(\w{8})\s+\d{4}/).flatten[0]
  end
end

set :passenger_restart_command, -> { "passenger-config restart-app --instance #{fetch(:passenger_instance_name)}" }

before :deploy, :get_passenger_instance_name

set :passenger_restart_with_sudo, false
set :passenger_stat_throttle_rate, 0 # for v5.x
