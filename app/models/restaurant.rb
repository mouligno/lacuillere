class Restaurant < ActiveRecord::Base
  has_many :reviews, dependent: :destroy

  validates_presence_of :name, :address
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian) }
end

