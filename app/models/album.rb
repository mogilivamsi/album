class Album < ApplicationRecord
  has_many :photos,:order => :created_at,dependent: :destroy
    belongs_to :user


  validates_presence_of :name

end
