class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.text :content
      t.integer :upvotes
      t.integer :downvotes

      t.timestamps

      t.belongs_to :user
    end
  end
end
