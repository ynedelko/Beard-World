class Review < ActiveRecord::Base
  belongs_to :beard

  validates :user, :presence => true
  validates :text, :presence => true
end
