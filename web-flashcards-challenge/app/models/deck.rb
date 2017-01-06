class Deck < ActiveRecord::Base
  validates :title, presence: true
  #validates :author, presence: true

  has_many :cards
  belongs_to :round
  #belongs_to :author, class_name: 'User'

end
