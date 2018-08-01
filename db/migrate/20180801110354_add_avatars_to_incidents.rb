class AddAvatarsToIncidents < ActiveRecord::Migration
  def change
    add_column :incidents, :avatars, :json
  end
end
