class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :title
      t.string :details
      t.references :owner, index: true

      t.timestamps
    end
  end
end
