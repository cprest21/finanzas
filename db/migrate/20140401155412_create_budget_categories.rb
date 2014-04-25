class CreateBudgetCategories < ActiveRecord::Migration
  def change
    create_table :budget_categories do |t|
      t.references :budget, index: true
      t.string :name

      t.timestamps
    end
  end
end
