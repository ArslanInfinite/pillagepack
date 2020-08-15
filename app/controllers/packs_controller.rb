class PacksController < ApplicationController 

  get '/packs' do
    logout_redirect(session)
    @user = current_user
    @packs = Pack.all
    @items_in_pack = Pack.where(user_id: @user.id)
    erb :'packs/index'
  end

  get '/packs/new' do
    erb :'packs/new' #show new packs view
  end

  post '/packs' do
    #below works with properly formatted params in HTML form
    @pack = Pack.new(params[:pack]) #create new pack
    if @pack.save #saves new pack or returns false if unsuccessful
      redirect '/packs' #redirect back to packs index page
    else
      erb :'packs/new' # show new packs view again(potentially displaying errors)
    end
  end

end 

 