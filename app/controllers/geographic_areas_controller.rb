class GeographicAreasController < ApplicationController

  def index
    @geographic_areas = GeographicArea.all
    render json: @geographic_areas
  end
end
