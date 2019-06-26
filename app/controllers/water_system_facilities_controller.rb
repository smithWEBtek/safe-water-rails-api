class WaterSystemFacilitiesController < ApplicationController
        
  def index
    @water_system_facilities = WaterSystemFacility.all
    render json: @water_system_facilities
  end
end
