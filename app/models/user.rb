class User < ActiveRecord::Base
  attr_accessible :email, :name

  validates :email, presence: true

  before_save :defaults

  def is_mod?
    self.is_mod.nil? ? false : self.is_mod
  end

  private
  def ensure_defaults
    self.is_mod ||= false
    self.name ||= 'Player'
  end
end
