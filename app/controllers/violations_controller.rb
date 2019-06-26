class ViolationsController < ApplicationController
      
  def index
    @violations = Violation.all
    render json: @violations
  end
end
