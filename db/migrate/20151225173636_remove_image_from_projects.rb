class RemoveImageFromProjects < ActiveRecord::Migration[4.2]
  def change
    remove_column :projects, :image, :string
  end
end
