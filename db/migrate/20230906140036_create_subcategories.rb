class CreateSubcategories < ActiveRecord::Migration[7.0]
  def change
    create_table :subcategories do |t|
      t.string :subcategory_topic
      t.string :subcategory_description

      t.references :category, null: true, foreign_key: true

      t.timestamps
    end
  end
end
