class AddFieldsToMenus < ActiveRecord::Migration
  def change
    add_column :menus, :name, :string
    add_column :menus, :title, :string
    add_column :menus, :description, :text
    add_column :menus, :price, :integer
  end
end
