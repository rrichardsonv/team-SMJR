class Card < ActiveRecord::Base
  validates :question, :answer, presence: true
  validates :deck, presence: true

  belongs_to :deck
  has_many :guesses
  # Remember to create a migration!
end
