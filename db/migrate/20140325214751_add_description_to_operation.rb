class AddDescriptionToOperation < ActiveRecord::Migration
  def change
    add_column :operations, :description, :string
  end
end
