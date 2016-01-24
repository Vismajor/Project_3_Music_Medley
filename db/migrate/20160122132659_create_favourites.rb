class CreateFavourites < ActiveRecord::Migration
  def change
    create_table :favourites do |t|
      t.integer :favourited_id
      t.integer :user_id
      t.string :favourited_type

      t.timestamps null: false
    end
  end
end
