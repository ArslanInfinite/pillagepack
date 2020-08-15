require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

use Rack::MethodOverride #sinatra middleware that allows for sending patch/delete requests 
use UsersController
use PacksController
use ItemsController
run ApplicationController
