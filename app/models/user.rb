class User < ApplicationRecord
  has_secure_password

  validates :email, uniqueness: { case_sensitive: false }
  validates :username, uniqueness:
  validates :password, length: { minimum: 5 }, confirmation: true
  validates :password_confirmation, presence: true
  before_save :format_email

  def format_email
    self.email.downcase!
    self.email.strip!
  end

  def self.authenticate_with_credentials(email, password)
    user = User.find_by_email(email.downcase.strip)

    if user && user.authenticate(password)
      return user
    else
      return nil
    end
  end
end
