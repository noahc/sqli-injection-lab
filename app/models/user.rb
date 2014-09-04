class User < ActiveRecord::Base
  has_many :accounts
  has_many :support_requests, through: :accounts
  has_secure_password
end
