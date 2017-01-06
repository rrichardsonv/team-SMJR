class Round < ActiveRecord::Base
  validates :deck_id, :presence => true


  belongs_to :player, class_name: 'User'
  belongs_to :deck
  has_many :cards, through: :deck
  has_many :guesses
end
