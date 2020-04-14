class User < ApplicationRecord
  validates :first_name, :last_name, :email, :phone, :password_digest, presence: true
end