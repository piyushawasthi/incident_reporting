class Incident < ActiveRecord::Base
	belongs_to :school
	belongs_to :location, required: false
	belongs_to :incident_type, required: false
	belongs_to :user, required: false

	accepts_nested_attributes_for :user 

	before_create :set_default_values

  private

	def set_default_values
		self.school ||= School.first
		self.incident_type ||= IncidentType.find_by(name: 'Other')
		self.location ||= Location.find_by(place: 'More details')
	end

	def user
    super || build_user(name: 'anonymous', role: 'anonymous')
  end
end
