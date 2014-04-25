class CreateLocalities < ActiveRecord::Migration
  def change
    create_table :localities do |t|
      t.references :province, index: true
      t.string :name

      t.timestamps
    end
  end
end
