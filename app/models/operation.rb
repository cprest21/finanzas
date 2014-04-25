class Operation < ActiveRecord::Base
	has_many :operation_items
	belongs_to :operation_type
	belongs_to :store
	belongs_to :account

  #accepts_nested_attributes_for :operation_items, :allow_destroy => true

	def total_amount
  	 amount = 0
  	 operation_items.each do | oi |
  		amount = amount + oi.amount
     end
     amount
  end

  def high_cost
  	 if total_amount > 41
  		true
  	 else
  		false
  	 end
  end
end
