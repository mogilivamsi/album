class CreatePhotos < ActiveRecord::Migration[5.2]
  def self.up
    create_table :photos do |t|
      t.string :name
      t.string :owner
      t.string :img_file_name
      t.string :img_content_type
      t.integer :img_file_size
      t.datetime :img_updated_at

      t.timestamps
    end
  end
  def self.down
    drop_table :photos
  end
end
