class Prize < ActiveRecord::Base
  has_many :transactions

  validates :name, :description, presence: true
  validates :cost, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 0
  }
end
