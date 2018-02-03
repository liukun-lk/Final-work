class AddImageToProjects < ActiveRecord::Migration[4.2]
  def change
    add_column :projects, :image, :string
  end
end
