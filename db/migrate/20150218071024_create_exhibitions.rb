class CreateExhibitions < ActiveRecord::Migration
  def change
    create_table :exhibitions do |t|
      t.string :title
      t.datetime :date
      t.string :place
      t.string :desc

      t.timestamps
    end
  end
end
