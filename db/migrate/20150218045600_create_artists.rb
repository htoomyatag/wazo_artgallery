class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.string :date_of_birth

      t.timestamps
    end
  end
end
