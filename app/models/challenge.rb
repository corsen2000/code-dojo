class Challenge < ActiveRecord::Base
  has_many :submissions

  validates :title, :description, :points, presence: true
  validates :points, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 0
  }
end
