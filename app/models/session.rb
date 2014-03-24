class Session < ActiveRecord::Base
  attr_accessible :token, :user_id

  validate :user_id, :token, presence: true

  def self.sign_in(user_id)
    session = Session.where(user_id: user_id).first
    session ||= Session.new(user_id: user_id)

    session.token = Session.generate_random_token

    session.save!
    
    session
  end

  def sign_out

  end

  def self.generate_random_token
    SecureRandom::urlsafe_base64(16)
  end
end
