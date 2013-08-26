class CreateFavourites < ActiveRecord::Migration
  def change
    create_table :favourites do |t|
      t.string :name
      t.integer :item_id
      t.integer :quantity

      t.timestamps
    end
  end
end
