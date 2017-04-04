server 'eportfolio-stage-a.stanford.edu', user: 'eportfolio', roles: %w(web db app)
server 'eportfolio-stage-b.stanford.edu', user: 'eportfolio', roles: %w(web app)

Capistrano::OneTimeKey.generate_one_time_key!
set :rails_env, 'production'
set :bundle_without, 'test development'

set :delayed_job_workers, 8
