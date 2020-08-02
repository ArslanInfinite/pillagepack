class PacksController < ApplicationController 

  get '/packs' do
    @packs = Pack.all #define instance variable for view
    erb :'packs/index' #show all packs view (index)
  end

  get '/packs/new' do
    erb :'packs/new' #show new packs view
  end

  post '/packs' do
  #below works with properly formatted params in HTML form
    @pack = Pack.create(params[:pack]) #create new pack
      if @pack.save #saves new pack or returns false if unsuccessful
        redirect '/packs' #redirect back to packs index page
      else
      erb :'packs/new' # show new packs view again(potentially displaying errors)
    end
  end

  get '/packs/:id' do
  #gets params from url
    @pack = Pack.find(params[:id]) #define instance variable for view
    erb :'packs/show' #show single pack view
  end

  get '/packs/:id/edit' do
  #get params from url
    @pack = Pack.find(params[:id]) #define intstance variable for view
    erb :'packs/edit' #show edit pack view    
  end

  put '/packs/:id' do
  #get params from url
    @pack = Pack.find(params[:id]) #define variable to edit
    @pack.assign_attributes(params[:pack]) #assign new attributes
    if @pack.save #saves new pack or returns false if unsuccessful
      redirect '/packs' #redirect back to packs index page
    else
      erb :'packs/edit' #show edit pack view again(potentially displaying errors)
    end
  end

  delete '/packs/:id' do
  #get params from url
    @pack = Pack.find(params[:id]) #define pack to delete
    @pack.destroy #delete pack
    redirect '/packs' #redirect back to packs index page  
  end

end 