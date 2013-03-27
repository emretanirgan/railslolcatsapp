class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      
      t.string :title
      t.string :body
      t.string :author

      t.timestamps
    end
    add_index :posts, :journal_id
  end
end
