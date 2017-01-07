class Guess < ActiveRecord::Base
  validates :round, presence: true
  validates :card, presence: true
  validates :body, presence: true

  validates :correct, inclusion: { in: [true, false] }

  belongs_to :card
  belongs_to :round

end
