class Beard < ActiveRecord::Base
  validates :name, :presence => true
  validates :rating, :presence => true
  validates :image_url, :presence => true

  has_many :reviews
end
