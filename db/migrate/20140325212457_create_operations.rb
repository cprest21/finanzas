class CreateOperations < ActiveRecord::Migration
  def change
    create_table :operations do |t|
      t.integer :operation_type_id
      t.integer :store_id
      t.string :title
      t.integer :account_id
      t.float :amount

      t.timestamps
    end
  end
end
