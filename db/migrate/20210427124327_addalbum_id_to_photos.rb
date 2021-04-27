class AddalbumIdToPhotos < ActiveRecord::Migration[5.2]
  def self.up
    add_column :photos, :album_id, :integer
  end
  def self.down
    remove_column :photos, :album_id, :integer
  end
end
