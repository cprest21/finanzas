class Locality < ActiveRecord::Base
  belongs_to :province
  has_many :addresses
end
