class Budget < ActiveRecord::Base
	has_many :budget_categories
end
