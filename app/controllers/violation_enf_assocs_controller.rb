class ViolationEnfAssocsController < ApplicationController
    
  def index
    @violation_enf_assocs = ViolationEnfAssocs.all
    render json: @violation_enf_assocs
  end
end
