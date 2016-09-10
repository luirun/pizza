class AddAttachmentIconToDishes < ActiveRecord::Migration
  def self.up
    change_table :dishes do |t|
      t.attachment :icon
    end
  end

  def self.down
    remove_attachment :dishes, :icon
  end
end
