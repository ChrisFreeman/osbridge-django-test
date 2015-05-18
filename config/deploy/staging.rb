set :deploy_to, '/var/www/osbridge-volunteer-staging'
set :linked_files, %w(osbridge_volunteer/staging_settings.py)

server '104.130.214.83', user: 'osbridge-volunteer', roles: %w{web app db}

