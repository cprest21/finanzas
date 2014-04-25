class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.references :category, index: true
      t.references :brand, index: true
      t.string :name
      t.string :details
      t.boolean :income

      t.timestamps
    end
  end
end
