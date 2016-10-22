set :application, 'eportfolios'
set :repo_url, 'https://github.com/sul-dlss/portfolios.git'

# Default branch is :master
set :branch, :master
# Default deploy_to directory is /var/www/my_app
set :deploy_to, "/opt/app/eportfolio/eportfolio"

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
set :log_level, :info

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
set :linked_files, %w(config/secrets.yml config/database.yml config/blacklight.yml config/initializers/squash.rb config/newrelic.yml)

# Default value for linked_dirs is []
set :linked_dirs, %w(log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system public/uploads config/settings)

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5

before 'deploy:publishing', 'squash:write_revision'
before 'deploy:publishing', 'deploy:sitemap:create'

namespace :deploy do
  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      within release_path do
        execute :rake, 'tmp:cache:clear'
      end
    end
  end
end
