class CreatePaintTypes < ActiveRecord::Migration
  def change
    create_table :paint_types do |t|
      t.string :type_name

      t.timestamps
    end
  end
end
