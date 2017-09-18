class User < ApplicationRecord
	before_save { self.email = email.downcase }
	validates :enterprise_id, presence: true, length: {maximum: 8}, uniqueness: true
	validates :name, presence: true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
	has_secure_password
	validates :password, presence: true, length: { minimum: 6 }
end
