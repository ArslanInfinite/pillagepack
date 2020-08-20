require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "session_secret"
  end

  get "/" do
    if logged_in?(session)
      redirect "/users/#{current_user.id}"
    else 
      erb :welcome
    end 
  end

  helpers do 

    # def logged_in?
    #   !!current_user
    # end 

    def logged_in?(session)
      !!session[:user_id]
    end

    def current_user #keeps track of the logged in user
      User.find_by(id: session[:user_id]) #the ID lives in the session hash, so we find the user by its user_id, find_by returns truthy or falsey, and not an error
    end

    #I created the following to ensure the user session is not disturbed by pressing the back arrow, so once you log out, you can't press back to go to a previous page where you were logged in and have it remain in session. 
    def logout_redirect(session)
      if !logged_in?(session)
      redirect '/login'
      end
    end

    def login_redirect(session)
      if logged_in?(session)
      redirect '/user/show'
      end 
    end

  end

end  

