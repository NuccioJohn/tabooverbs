class AddEssayFileToUsers < ActiveRecord::Migration
  def change
    add_column :users, :EssayFile, :string
  end
end
