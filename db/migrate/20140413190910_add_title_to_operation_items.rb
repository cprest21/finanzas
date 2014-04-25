class AddTitleToOperationItems < ActiveRecord::Migration
  def change
    add_column :operation_items, :title, :string
  end
end
