require "bcrypt"
class User < ActiveRecord::Base
  include BCrypt

  validates :name, :email, :presence => true
  validates :email, :uniqueness => true

  has_many :rounds, foreign_key: :player_id
  has_many :decks


  def password
    @password ||= Password.new(self.password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(params_hash)
    user = User.find_by(email: params_hash[:email])
    if user && user.password == params_hash[:password]
      user.id
    else
      'Not a valid user'
      # This is an error message that is being returned
    end
  end

end

