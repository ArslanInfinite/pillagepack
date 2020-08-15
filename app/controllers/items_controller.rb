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

  get '/items/:category' do
    @items = Item.where(category: params[:category])
    erb :'items/index'
  end

  post '/items' do
  #below works with properly formatted params in HTML form
   @item = Item.new(name: params[:name], category: params[:category], description: params[:description], item_image_url: params[:item_image_url]) #create new item
    if @item.save #saves new item or returns false if unsuccessful
      redirect '/items' #redirect back to items index page
    else
      erb :'items/new' # show new items view again(potentially displaying errors)
    end
  end

    # /add_item_to_pack


end 