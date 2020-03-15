class User < ApplicationRecord
  has_secure_password

  validates :email, uniqueness: { case_sensitive: false }
  validates :username, uniqueness:
  validates :name, presence: true
  # validates :password, length: { minimum: 5 }, confirmation: true
  # validates :password_confirmation, presence: true

end
