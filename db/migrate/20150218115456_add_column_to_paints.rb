class AddColumnToPaints < ActiveRecord::Migration
  def change
  	remove_column :paints, :artist
    add_column :paints, :paint_type_id, :integer
    add_column :paints, :color, :string
    add_column :paints, :size, :string
    remove_column :paints, :paints, :string
    add_column :paints, :artist_id, :integer
    add_column :paints, :size_id, :integer
  end
end
