class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.text :category_name
      t.text :category_description
      
      t.timestamps
    end
  end
end
