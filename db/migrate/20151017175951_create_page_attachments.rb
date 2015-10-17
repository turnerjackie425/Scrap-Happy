class CreatePageAttachments < ActiveRecord::Migration
  def change
    create_table :page_attachments do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
