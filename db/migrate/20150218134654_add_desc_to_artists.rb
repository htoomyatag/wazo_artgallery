class AddDescToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :desc, :string
    add_column :artists, :painter_type, :string
  end
end
