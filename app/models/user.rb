class User < ApplicationRecord
  has_secure_password


  has_many :pets

  validates :first_name, :last_name, :email, :phone, :password_digest, presence: true
end
