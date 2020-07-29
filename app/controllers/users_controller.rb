class UsersController < ApplicationController 

  get '/signup' do
    if logged_in?(session)
      redirect '/'
    end
    erb :signup
  end

  post '/signup' do
    if params[:name].empty? || params[:password].empty?
      redirect '/signup'
    end
    user = User.create(params)
    session[:user_id] = user.id
    redirect '/'
  end

  get '/login' do 
    erb :login
  end 

  post '/login' do
    user = User.find_by(name: params[:name])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect "/users/#{user.id}"
    else
      redirect '/login'
    end
  end

  get '/users/:id' do 
    "users show page"
  end 

end 