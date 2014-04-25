class CreateOperationItems < ActiveRecord::Migration
  def change
    create_table :operation_items do |t|
      t.integer :budget_category_id
      t.integer :article_id
      t.integer :operation_id
      t.float :amount

      t.timestamps
    end
  end
end
