class Menu < ActiveRecord::Base
  # attr_accessible :title, :body
   attr_accessible :name, :title, :description, :price,:itemtype
end
