class LcrSamplesController < ApplicationController


  def index
    @lcr_samples = LcrSample.all
    render json: @lcr_samples
  end
end
