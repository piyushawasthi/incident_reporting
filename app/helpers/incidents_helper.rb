module IncidentsHelper
	def user_roles
		User.pluck(:role)
	end

	def incident_types
		IncidentType.order(:name)
	end

	def locations
		Location.order(:place)
	end
end
