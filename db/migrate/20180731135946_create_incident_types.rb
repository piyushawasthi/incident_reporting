class CreateIncidentTypes < ActiveRecord::Migration
  def change
    create_table :incident_types do |t|
      t.string :name

      t.timestamps null: false
    end
    add_index :incident_types, :types
  end
end
