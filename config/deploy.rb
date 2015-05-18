# config valid only for current version of Capistrano
lock '3.3.3'

set :application, 'osbridge-volunteer'
set :repo_url, 'git@github.com:reidab/osbridge-django-test.git'

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, '/var/www/my_app_name'

namespace :deploy do

  before :updated, :install_requirements do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      within release_path do
        execute "#{shared_path}/venv/bin/pip", "install", "-r requirements.txt"
      end
    end
  end

  after :published, :restart do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      within shared_path do
        execute :touch, 'config/uwsgi_config.ini'
      end
    end
  end

end
