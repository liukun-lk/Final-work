class AddAttachmentZipToProjects < ActiveRecord::Migration[4.2]
  def self.up
    change_table :projects do |t|
      t.attachment :zip
    end
  end

  def self.down
    remove_attachment :projects, :zip
  end
end
