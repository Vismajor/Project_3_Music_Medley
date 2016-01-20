class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.column :title, :string
      t.column :duration, :integer
      t.column :user_id, :integer, :null => false
      t.column :genre_id, :integer, :null => false
      t.column :album_id, :integer

      t.timestamps null: false
    end
  end
end
