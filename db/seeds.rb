# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Generate School
School.find_or_create_by(name: "Lincoln High School")

# Generate Incident Types
IncidentType.find_or_create_by(name: "Alcohol")
IncidentType.find_or_create_by(name: "Assault")
IncidentType.find_or_create_by(name: "Bullying")
IncidentType.find_or_create_by(name: "Hazing")
IncidentType.find_or_create_by(name: "Drugs")
IncidentType.find_or_create_by(name: "Graffiti")
IncidentType.find_or_create_by(name: "Injury")
IncidentType.find_or_create_by(name: "Suspicious activity")
IncidentType.find_or_create_by(name: "Trespassing")
IncidentType.find_or_create_by(name: "Vandalism")
IncidentType.find_or_create_by(name: "Weapons violation")
IncidentType.find_or_create_by(name: "Technology misuse")
IncidentType.find_or_create_by(name: "Other")

# Generate locations
Location.find_or_create_by(place: "On school campuses and grounds")
Location.find_or_create_by(place: "During transportation to and from school")
Location.find_or_create_by(place: "At school-sponsored events")
Location.find_or_create_by(place: "More details")

# Genrate users
User.find_or_create_by(name: "Student", contact: "999999999", role: "student")
User.find_or_create_by(name: "teacher", contact: "teacher@gmail.com", role: "teacher")
User.find_or_create_by(name: "other staff", contact: "999999999", role: "other staff")
User.find_or_create_by(name: "parent", contact: "parent@gmail.com", role: "parent")
User.find_or_create_by(name: "parent", contact: "parent@gmail.com", role: "parent")
User.find_or_create_by(name: "community member", contact: "community_member@gmail.com", role: "community member")
User.find_or_create_by(name: "anonymous", role: "anonymous")

