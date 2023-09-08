class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      #t.string :comment_user
      t.string :comment_title
      t.string :comment_message
      t.references :commentable, polymorphic: true
      t.timestamps
    end
  end
end
