class ItemsController < ApplicationController 

  #create a new item
  #read all the items
  #update an existing item 
  #delete an item that you created

  get '/items' do 
    @items = Item.all 
    erb :'items/index'
  end 

  get '/items/new' do
    erb :'/items/new'
  end

  post '/items' do
  #below works with properly formatted params in HTML form
   @item = Item.new(name: params[:name], category: params[:category], description: params[:description], item_image_url: params[:item_image_url], user_id: current_user.id) #create new item
    if @item.save #saves new item or returns false if unsuccessful
      redirect '/items' #redirect back to items index page
    else
      erb :'items/new' # show new items view again(potentially displaying errors)
    end
  end

  get '/items/:id/edit' do
    #get params from url
    @item = Item.find(params[:id])
    if current_user.id == @item.user_id 
     #define intstance variable for view
      erb :'items/edit' #show edit item view
    else 
      redirect '/items'
    end 
  end

  patch '/items/:id' do
    #get params from url
    @item = Item.find(params[:id]) #define variable to edit
    # Ensure Item can be updated by it's creator
    if current_user.id == @item.user_id
    #if current_user.id == @item.id 
      @item.update(name: params[:name], description: params[:description], item_image_url: params[:item_image_url])
      #assign new attributes
      if @item.save #saves new item or returns false if unsuccessful
        redirect '/items' #redirect back to items index page
      else
         erb :'items/edit' #show edit item view again(potentially displaying errors)
      end
    else
     redirect '/items'
    end
  end

  get '/items/:id' do 
    #gets params from url
    @item = Item.find(params[:id]) #define instance variable for view
    erb :'items/show' #show single item view
  end

  get '/items/category/:category' do
    @items = Item.where(category: params[:category])
    erb :'items/index'
  end

  post '/add_item_to_pack/:id' do 
    @item = Item.find(params[:id])
    @pack = Pack.find(params[:pack_id])
    PackItem.create(item_id: @item.id, pack_id: @pack.id, user_id: current_user.id)
    redirect '/items'
  end 

  delete '/items/:id' do
    #get params from url
    @item = Item.find(params[:id]) #define item to delete
    if current_user.id == @item.user_id 
      @item.destroy #delete item
      redirect '/items' #redirect back to items index page
    else
      redirect '/items'
    end
  end

end 