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

end
