class AddIncomeToOperationItems < ActiveRecord::Migration
  def change
    add_column :operation_items, :income, :boolean
  end
end
