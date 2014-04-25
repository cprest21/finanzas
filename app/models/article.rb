class Article < ActiveRecord::Base
  belongs_to :category
  belongs_to :brand
  has_many :operation_items

  
end
