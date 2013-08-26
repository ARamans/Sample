class FavouritesController < ApplicationController

	def create
		@item_ids = params[:item_ids].split(",")
		@quantitys = params[:quantitys].split(",")
		if @item_ids.present?
			i = 0
			@item_ids.each do |item_id|
				@favourite = Favourite.new
				@favourite.name = params[:name]
				@favourite.item_id = item_id
				@favourite.quantity = @quantitys[i]
				@favourite.save
				i = i+1
			end
		end
		redirect_to favourites_url
	end
	

	def index
		@favourite = Favourite.all
end	

end
