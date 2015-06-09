class AddAttachmentImageToSubpages < ActiveRecord::Migration
  def self.up
    change_table :subpages do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :subpages, :image
  end
end
