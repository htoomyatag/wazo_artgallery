class AddAvatarToExhibitions < ActiveRecord::Migration
  def self.up
    add_attachment :exhibitions, :avatar
  end

  def self.down
    remove_attachment :exhibitions, :avatar
  end
end
