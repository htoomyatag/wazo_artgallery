class CreatePaints < ActiveRecord::Migration
  def change
    create_table :paints do |t|
      t.string :title
      t.string :artist

      t.timestamps
    end
  end
end
