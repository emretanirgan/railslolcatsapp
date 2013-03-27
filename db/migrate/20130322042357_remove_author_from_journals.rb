class RemoveAuthorFromJournals < ActiveRecord::Migration
  def up
    remove_column :journals, :author_id
  end

  def down
    add_column :journals, :author_id, :integer
  end
end
