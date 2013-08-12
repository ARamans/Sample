class AddItemTypeToMenus < ActiveRecord::Migration
  def change
    add_column :menus, :item_type, :string
  end
end
