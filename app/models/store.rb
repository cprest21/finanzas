class Store < ActiveRecord::Base
  belongs_to :address
  has_many :operations
end
