class ServiceAreasController < ApplicationController

  def index
    @service_areas = ServiceArea.all
    render json: @service_areas
  end
end
