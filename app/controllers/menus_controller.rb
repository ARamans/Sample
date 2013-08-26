class MenusController < ApplicationController

	def new
		@menu = Menu.new	
	end

	def create 
		@menu = Menu.new(params[:menu])
		if @menu.save
			redirect_to menus_url, :notice => "new menu created"
		else
			render "new"
		end
	end

	def index
		@menus = Menu.all
	end

	def show
		@menu = Menu.find_by_id(params[:id])
	end

	def edit
		@menu = Menu.find(params[:id])
	end

	def update
		@menu = Menu.find(params[:id])
		if @menu.update_attributes(params[:menu])
			redirect_to menus_url, :notice => "Menu item updated successfully"
		else
			render "new"
		end
	end

	def destroy
		@menu = Menu.find(params[:id])
		@menu.destroy
		redirect_to menus_url, :notice => "Item deleted"
	end
   
   def display
   	   @menus = Menu.all(:select => "item_type").uniq
   end

    def list
   	 	@menus = Menu.where(:item_type => params[:item_type])
   	end

   	def selected_list
   		if request.get?
   			@item_ids = params[:item_ids]
   			@quantitys = params[:quantitys]
   		else
   			@item_ids = params[:item_ids]
   			@quantitys = params[:quantitys]
   			@menu = Menu.find(@item_ids[0])
   		end
   	end

end


