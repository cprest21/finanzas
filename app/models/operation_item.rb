class OperationItem < ActiveRecord::Base
	belongs_to :operation
	belongs_to :article
	belongs_to :budget_category
  
	def amount_with_format
      if income == true 
   		"$" + amount.to_s 
  	  else 
  		"($" + amount.to_s + ")" 
  	  end   
	end

	def total_bc_amount
  	 amount = 0
  	 budget_categories.each do | oi |
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
