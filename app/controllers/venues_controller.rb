class VenuesController < ApplicationController
  def index
    @venues = Venue.find(:all)
  end
  
  def show
    @venue = Venue.find(params[:id])
  end
  
  def new
    @venue = Venue.new
  end
  
  def create
    @venue = Venue.new(params[:venue])
    if @venue.save
      flash[:notice] = "Successfully added " + @venue.name.to_s
      redirect_to new_venue_path
    else
      render :action => 'new'
    end
  end
  
  def edit
    @venue = Venue.find(params[:id])
  end
  
  def update
    @venue = Venue.find(params[:id])
    if @venue.update_attributes(params[:venue])
      flash[:notice] = "Successfully updated venue."
      redirect_to @venue
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @venue = Venue.find(params[:id])
    @venue.destroy
    flash[:notice] = "Successfully destroyed venue."
    redirect_to venues_url
  end
end
