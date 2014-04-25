class BudgetCategory < ActiveRecord::Base
  belongs_to :budget
  has_many :operation_items
end
