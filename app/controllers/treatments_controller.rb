class TreatmentsController < ApplicationController
  
  def index
    @treatments = Treatment.all
    render json: @treatments
  end
end
