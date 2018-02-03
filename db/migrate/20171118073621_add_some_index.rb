class AddSomeIndex < ActiveRecord::Migration[4.2]
  def change
    add_index(:users, :stu_id)
  end
end
