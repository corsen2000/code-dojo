class Submission < ActiveRecord::Base
  belongs_to :user
  belongs_to :challenge

  validates :title, :description, :user, :challenge, presence: true
end
