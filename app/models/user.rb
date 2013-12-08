class User < ActiveRecord::Base
  has_many :submissions
  has_many :transactions

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def complete_challenge(challenge)
    # If this is the first submission for this challenge points are given
    submissions_for_challenge = self.submissions.where challenge: challenge
    if submissions_for_challenge.length == 1
      self.points = self.points + challenge.points
      self.save!
    end
  end

  def pay_for(prize)
    self.points = self.points - prize.cost
    self.save!
  end

  def refund(prize)
    self.points = self.points + prize.cost
    self.save!
  end

  def can_afford?(prize)
    self.points >= prize.cost
  end

  def is_admin?
    return admin
  end

end