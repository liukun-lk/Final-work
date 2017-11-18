class AddSomeIndex < ActiveRecord::Migration
  def change
    add_index(:users, :stu_id)
  end
end
