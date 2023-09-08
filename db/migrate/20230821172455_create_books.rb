class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.text :book_title
      t.text :book_isbn
      t.text :book_description
      t.float :book_price

      t.references :subcategory, null: true, foreign_key: true

      t.timestamps
    end
  end
end
