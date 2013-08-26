class Menu < ActiveRecord::Base
  # attr_accessible :title, :body
   attr_accessible :name, :title, :description, :price, :item_type, :image
   has_attached_file :image
end
