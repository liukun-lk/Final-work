class RenameColumnsInUsers < ActiveRecord::Migration[4.2]
  def change
    rename_column :users, :stuId, :stu_id
    rename_column :users, :stuName, :stu_name
    rename_column :users, :randomPass, :random_pass
  end
end
