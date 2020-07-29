require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "session_secret"
  end

  get "/" do
    erb :welcome
  end

  def logged_in?(session)
    !!session[:user_id]
  end

end
