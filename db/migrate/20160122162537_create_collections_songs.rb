class CreateCollectionsSongs < ActiveRecord::Migration
  def self.up
      create_table :collections_songs, :id => false do |t|
          t.references :collection
          t.references :song
      end
      add_index :collections_songs, [:collection_id, :song_id]
      add_index :collections_songs, :song_id
  end

    def self.down
      drop_table :collections_songs
    end
end
