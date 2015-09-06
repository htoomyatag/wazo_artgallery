class AddAvatarToGallery < ActiveRecord::Migration
  def self.up
    add_attachment :paints, :avatar
  end

  def self.down
    remove_attachment :paints, :avatar
  end
end
