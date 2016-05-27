class AddAttachmentScreenshotToTools < ActiveRecord::Migration
  def self.up
    change_table :tools do |t|
      t.attachment :screenshot
    end
  end

  def self.down
    remove_attachment :tools, :screenshot
  end
end
