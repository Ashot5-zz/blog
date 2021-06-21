class User < ActiveRecord::Base
  has_secure_password

  validate :name, presence: true
  validate :email, presence: true, uniqueness: true
end
