class WinsController < ApplicationController
  
  load_and_authorize_resource
  
  def new
    @win = Win.new(brigade_id: params[:brigade_id])
    @location = Location.new
  end
  
  def create
    @win = Win.new(win_params)
    @win.save
    redirect_to @win
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
  
  private 
  
  def win_params
    params.require(:win).permit(:deployed, :deploy_url, :published, :publish_url, :open_sourced, :open_source_url, :open_policy, :open_policy_infos, :event_held, :event_infos, :municipal_partner, :municipal_partner_infos, :funds, :story, :deployed_application_id, :location_id, :brigade_id)
  end
end
