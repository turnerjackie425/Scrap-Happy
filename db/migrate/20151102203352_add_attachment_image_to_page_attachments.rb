class AddAttachmentImageToPageAttachments < ActiveRecord::Migration
  def self.up
    change_table :page_attachments do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :page_attachments, :image
  end
end
