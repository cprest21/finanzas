class Account < ActiveRecord::Base
  belongs_to :owner, class_name: "User"
  has_many :account_users
  has_many :operations
end
