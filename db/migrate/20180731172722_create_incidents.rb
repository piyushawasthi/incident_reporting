class CreateIncidents < ActiveRecord::Migration
  def change
    create_table :incidents do |t|
      t.references  :school
      t.references 	:incident_type
      t.references 	:user
      t.text 		    :description
      t.string      :people_involved
      t.string 		  :observers
      t.string 		  :observed_on
      t.references 	:location

      t.timestamps null: false
    end
  end
end
