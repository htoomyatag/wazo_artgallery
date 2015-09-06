class AddPublishedDateToPaints < ActiveRecord::Migration
  def change
  	    add_column :paints, :published_date, :string
  end
end
