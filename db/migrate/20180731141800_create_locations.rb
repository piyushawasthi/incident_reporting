class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :place

      t.timestamps null: false
    end
    add_index :locations, :place
  end
end
