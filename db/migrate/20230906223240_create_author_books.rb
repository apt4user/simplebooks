class CreateAuthorBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :author_books do |t|
      t.references :book, null: true, foreign_key: true
      t.references :author, null: true, foreign_key: true
      t.timestamps
    end
  end
end
