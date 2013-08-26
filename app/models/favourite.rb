class Favourite < ActiveRecord::Base
  attr_accessible :item_id, :name, :quantity
end
