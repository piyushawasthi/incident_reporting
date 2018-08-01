class IncidentsController < ApplicationController
  
  def new
  	@school = School.first
  	@incident = Incident.new
  end

  def create
    @incident = Incident.new(incident_params)
    if @incident.save
      	flash[:success] = "Thanks you for adding incident.!"
    else
    	flash[:danger] = "Sorry incident not reported!"
    end
    redirect_to :root
  end

  private

  	def incident_params
      params.require(:incident).permit(:school_id, :people_involved, :observers, :description, :observed_on, :incident_type_id, :location_id, user_attributes: [:name, :contact, :role])
    end
end
