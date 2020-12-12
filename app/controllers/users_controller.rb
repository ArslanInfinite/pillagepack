class UsersController < ApplicationController 

  get '/users/new' do
    if logged_in?(session)
      redirect '/users/show'
    end
    erb :'users/new'
  end

  post '/users' do
    if params[:name].empty? || params[:password].empty? || User.where(name: params[:name]).any?
      redirect '/users/new'
    else
      @user = User.create(params)
      session[:user_id] = @user.id
      redirect "/users/#{@user.id}"
    end
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
    @user = User.find_by(id: params[:id])
    erb :'users/show' 
  end 

  get '/users/:id/edit' do
    @user = User.find_by_id(params[:id])
    if logged_in?(session) && @user == current_user
      erb :'/users/edit'
    else
      redirect to '/login'
    end
  end

  patch '/users/:id' do
    @user = User.find_by(id: params[:id])
    @user.name = params[:name].strip
    @user.password = params[:password].strip
    if logged_in?(session) && @user == current_user
      @user.save
      redirect to "/users/#{@user.id}"
    else
      redirect to '/login'
    end
  end

  # post '/users' do 
  #   @user = User.create(params)
  #   session[:user_id] = @user.id 

  # end 

  get '/logout' do
    logout_redirect(session)
    session.clear
    redirect '/login'
  end

  delete '/users/:id' do
    if logged_in?(session)
      current_user.user_packs.each do |pack|
        pack.delete
      end
      current_user.pack_items.each do |item|
        item.delete
      end
      current_user.delete
      session.clear
      redirect to '/'
    else
      redirect to '/login'
    end
 end

end 