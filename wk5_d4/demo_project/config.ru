# This file is used by Rack-based servers to start the application.

require_relative "config/environment"

run Rails.application
Rails.application.load_server

default: &default
  adapter: postgresql
  pool: 5
  timeout: 5000

development:
  <<: *default
  database: <project_name>_development

production:
  <<: *default
  database: <project_name>_production
  username: <project_name>
  password: <%= ENV["<PROJECT_NAME>_DATABASE_PASSWORD"] %>
