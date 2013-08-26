module MenusHelper

	def item_name(item_id)
		if item_id
			@menu = Menu.find(item_id)
			return @menu.name
		else
			return ""
		end
	end
	
end
