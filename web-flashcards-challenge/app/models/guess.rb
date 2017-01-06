class Guess < ActiveRecord::Base
  validates :round, presence: true
  validates :card, presence: true
  validates :body, :correct, presence: true

  belongs_to :card
  belongs_to :round

end
