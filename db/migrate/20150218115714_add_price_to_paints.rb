class AddPriceToPaints < ActiveRecord::Migration
  def change
    add_column :paints, :price, :string
    add_column :paints, :our_artwork, :string
    add_column :paints, :new_arrival, :string
    add_column :paints, :item_code, :string
    
  end
end
