class LcrSampleResultsController < ApplicationController

  def index
    @lcr_sample_results = LcrSampleResult.all
    render json: @lcr_sample_results
  end

end
