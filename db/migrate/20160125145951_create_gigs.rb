class CreateGigs < ActiveRecord::Migration
  def change
    create_table :gigs do |t|
      t.string :name
      t.datetime :starting_time
      t.text :address
      t.string :status

      t.timestamps null: false
    end
  end
end
