class AddColumnToPhotos < ActiveRecord::Migration
  def change
  	remove_column :photos, :photographer
    add_column :photos, :price, :string
    add_column :photos, :color, :string
    remove_column :photos, :size, :string
    add_column :photos, :size_id, :string
    add_column :photos, :artist_id, :integer    
  end
end
