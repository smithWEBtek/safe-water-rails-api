class EnforcementActionsController < ApplicationController
  def index
    @enforcement_actions = EnforcementAction.all
    render json: @enforcement_actions
  end
end
