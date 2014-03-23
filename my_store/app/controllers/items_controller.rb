class ItemsController < ApplicationController


def index
 @items = Item.all 
 render text: @items.map { |i| "#{i.name}: #{i.price}"}.join("<br/>")
end


# /items/1 GET
def show
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
