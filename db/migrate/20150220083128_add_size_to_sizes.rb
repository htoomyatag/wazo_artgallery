class AddSizeToSizes < ActiveRecord::Migration
  def change
  	remove_column :sizes, :width
  	remove_column :sizes, :height
  	remove_column :sizes, :unit
  	add_column :sizes, :size, :string
  end
end
