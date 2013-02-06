class CreateJournals < ActiveRecord::Migration
  def change
    create_table :journals do |t|
      t.belongs_to :user
      t.has_many :posts

      t.timestamps
    end
    add_index :journals, :user_id
  end
end
