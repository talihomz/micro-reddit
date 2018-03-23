class RenameColumnFullnamesInUsers < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :full_names, :full_name
  end
end
