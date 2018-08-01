class Location < ActiveRecord::Base
	has_many :incidents
end
