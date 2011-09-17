set :user, "hearmeror"

set :application, "myshotlog"
set :repository,  "git@git.joshrendek.com:myshotlog.git"

set :scm, :git

set :keep_releases, 2

#set :rails_env, "development"

set :domain, "hearmeror.org"
set :port, 66
role :app, domain                          # Your HTTP server, Apache/etc
role :web, domain
role :db,  domain, :primary => true


set :using_rvm, false
set :branch, "master"

set :use_sudo, false

set :deploy_to, "/home/myshotlog"
set :keep_releases, 2



namespace :deploy do
  task :start, :roles => :app do
    run "touch #{current_release}/tmp/restart.txt"
  end

  task :stop, :roles => :app do
    # Do nothing.
  end

  desc "Restart Application"
  task :restart, :roles => :app do
    run "touch #{current_release}/tmp/restart.txt"
  end
end

