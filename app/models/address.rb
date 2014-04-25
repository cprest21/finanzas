class Address < ActiveRecord::Base
  belongs_to :locality
  has_many :stores
  has_many :companies
end
