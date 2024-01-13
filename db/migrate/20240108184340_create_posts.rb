class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :text
      t.integer :likes_counter
      t.integer :comments_counter
      t.references :author, foreign_key: true
      t.timestamps
    end
  end
end
