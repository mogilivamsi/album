class Photo < ApplicationRecord
  belongs_to :album
    has_attached_file :img, :styles => {:medium => "1024x1024>", :thumb => "245x245>"}
end
