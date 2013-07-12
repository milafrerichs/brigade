class WinsController < ApplicationController
  
  load_and_authorize_resource
  
  def new
    
  end
  
  def show
    @win = Win.find(params[:id])
  end
  
  def edit
    @win = Win.find(params[:id])
    @location = Location.new
  end
  
  def update
    @win = Win.find(params[:id])
    @win.update_attributes(params[:win])
    if @win.save
      flash[:success] = ""
      redirect_to win_path(@win.id)
    else
      flash[:error] = ""
    end
  end

end
