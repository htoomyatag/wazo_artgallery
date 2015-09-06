class RemoveColumnFromExhibitions < ActiveRecord::Migration
  def change
  	remove_column :exhibitions, :date
  	remove_column :exhibitions, :place
  	remove_column :exhibitions, :desc
  end
end
