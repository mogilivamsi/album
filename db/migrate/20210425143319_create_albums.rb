class CreateAlbums < ActiveRecord::Migration[5.2]
  def self.up
    create_table :albums do |t|
      t.string :name
      t.string :owner

      t.timestamps

    end
      
  end
  def self.down
    drop_table :albums
  end
end
