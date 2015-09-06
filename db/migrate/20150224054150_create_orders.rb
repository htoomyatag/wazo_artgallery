class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :customer_name
      t.string :contact_email
      t.string :contact_number
      t.string :contact_address
      t.text :message

      t.timestamps
    end
  end
end
