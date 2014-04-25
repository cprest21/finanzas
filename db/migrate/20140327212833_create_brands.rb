class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.references :company, index: true
      t.string :name

      t.timestamps
    end
  end
end
