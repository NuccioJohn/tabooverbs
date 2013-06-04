class AddUserIdToEssays < ActiveRecord::Migration
  def change
    add_column :essays, :user_id, :integer
    add_index :essays, :user_id
  end
end
