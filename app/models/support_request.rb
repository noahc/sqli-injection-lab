class SupportRequest < ActiveRecord::Base
  has_one :account
  has_one :user
end
