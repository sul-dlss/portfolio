server 'eportfolio-stage-a.stanford.edu', user: 'eportfolio', roles: %w(web db app)
server 'eportfolio-stage-b.stanford.edu', user: 'eportfolio', roles: %w(web app)
server 'eportfolio-worker-stage-a.stanford.edu', user: 'eportfolio', roles: %w(app background)

Capistrano::OneTimeKey.generate_one_time_key!
set :rails_env, 'production'

set :sidekiq_role, :background
set :sidekiq_processes, 2
