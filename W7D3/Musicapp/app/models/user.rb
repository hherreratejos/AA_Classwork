class User < ApplicationRecord
  validates :session_token, uniqueness: true
  validates :password, length: {minimum: 6, allow_nil: true}
  validates :username, :password_digest, :session_token, presence: true
  after_initialize :ensure_session_token


  def reset_session_token!
    self.session_token = SecureRandom.urlsafe_base64(16)
    self.save!
    self.session_token
  end

  attr_reader :password

  def password=(password)
    self.password_digest = BCrypt::Password.create(password)
    @password = password
  end

  def is_password?(password)
    passw_obj = BCrypt::Password.new(password_digest)
    passw_obj.is_password?(password)
  end

  def self.find_by_credentials(username, password)
    user = User.find_by(username: username)
    if user
      if user.is_password?(password)
        return user
      end
    end
    nil
  end

  def ensure_session_token
    self.session_token ||= SecureRandom.urlsafe_base64(16)
  end
end
