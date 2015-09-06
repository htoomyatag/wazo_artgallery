class AddOrderdetailsToOrder < ActiveRecord::Migration
  def change
  	 add_column :orders, :order_details, :string
  end
end
