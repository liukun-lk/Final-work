class AddRandomPassToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :randomPass, :string
  end

  def self.down
    remove_column :users, :randomPass, :string
  end
end
