class CreateSizes < ActiveRecord::Migration
  def change
    create_table :sizes do |t|
      t.string :width
      t.string :height
      t.string :unit

      t.timestamps
    end
  end
end
