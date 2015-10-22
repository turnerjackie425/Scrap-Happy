class AddUserIdToPageAttachments < ActiveRecord::Migration
  def change
    add_column :page_attachments, :user_id, :integer
    add_index :page_attachments, :user_id
  end
end
