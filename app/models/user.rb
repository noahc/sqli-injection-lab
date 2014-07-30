class User < ActiveRecord::Base
  has_many :accounts
  has_secure_password
  has_many :support_requests
end
