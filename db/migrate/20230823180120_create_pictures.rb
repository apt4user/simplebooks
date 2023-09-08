class CreatePictures < ActiveRecord::Migration[7.0]
  def change
    create_table :pictures do |t|
      t.text :path
      t.references :book, null: true, foreign_key: true
      t.timestamps
    end
  end
end
