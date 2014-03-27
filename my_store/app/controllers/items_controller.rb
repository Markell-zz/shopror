class ItemsController < ApplicationController


def index
 @items = Item.all 
end


# /items/1 GET
def show
	unless @item = Item.where(id: params[:id]).first
  
  	render "items/404", status: 404
  end
end


#/items/new GET
def new
end


#/items/1/edit GET
def edit
end


#/items POST
def create
     
    render text: "item create!"
    #@item = Item.create(name: params[:name], description: params[:description], price: params[:price], real: params[:real], weight: params[:weight])
 
end


#/items/1 PUT
def update	
end


#/items/1 DELETE
def destroy	
end

end
