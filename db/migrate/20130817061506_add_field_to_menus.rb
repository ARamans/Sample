class AddFieldToMenus < ActiveRecord::Migration
  def change
    add_column :menus, :image_file_name, :string
    add_column :menus, :image_content_type, :string
    add_column :menus, :image_file_size, :integer
  end
end
