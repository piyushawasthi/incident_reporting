class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name

      t.timestamps null: false
    end
    add_index :schools, :name
  end
end
