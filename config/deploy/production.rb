set :linked_files, %w(osbridge_volunteer/production_settings.py)

server '104.130.214.83', user: 'osbridge-volunteer', roles: %w{web app db}

