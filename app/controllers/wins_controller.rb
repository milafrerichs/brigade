class WinsController < ApplicationController
  
  load_and_authorize_resource
  
  def new
    
  end
  
  def edit
    @win = Win.find(params[:id])
    @location = Location.new
  end

end
