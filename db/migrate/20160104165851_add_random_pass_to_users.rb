class AddRandomPassToUsers < ActiveRecord::Migration[4.2]
  def self.up
    add_column :users, :randomPass, :string
  end

  def self.down
    remove_column :users, :randomPass, :string
  end
end
