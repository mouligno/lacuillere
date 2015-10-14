class Review < ActiveRecord::Base
  belongs_to :restaurant

  validates_presence_of :restaurant, :content, :rating

  validates :rating, inclusion: { in: (0..5).to_a }, numericality: true
end
