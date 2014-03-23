require 'bcrypt'

class User < ActiveRecord::Base
  attr_accessible :email, :name, :password

  validates :email, presence: true
  validates :password_digest, presence: { message: "Password can't be blank."}

  before_save :ensure_defaults

  def is_mod?
    self.is_mod.nil? ? false : self.is_mod
  end

  def password=(pass)
    self.password_digest = BCrypt::Password.create(pass)
  end

  def is_password?(pass)
    BCrypt::Password.new(self.password_digest).is_password?(pass)
  end
  
end
  private
  def ensure_defaults
    self.is_mod ||= false
    self.name ||= 'Player'
  end
end
