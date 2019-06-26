class WaterSystemsController < ApplicationController
 
  def index
    @water_systems = WaterSystem.all
    render json: @water_systems
  end
end
