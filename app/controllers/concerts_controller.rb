class ConcertsController < ApplicationController
  def index
    @concerts = Concert.find(:all)
  end
  
  def show
    @concert = Concert.find(params[:id])
  end
  
  def new
    @concert = Concert.new
  end
  
  def create
    @concert = Concert.new(params[:concert])
    if @concert.save
      flash[:notice] = "Successfully created concert."
      redirect_to @concert
    else
      render :action => 'new'
    end
  end
  
  def edit
    @concert = Concert.find(params[:id])
  end
  
  def update
    @concert = Concert.find(params[:id])
    if @concert.update_attributes(params[:concert])
      flash[:notice] = "Successfully updated concert."
      redirect_to @concert
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @concert = Concert.find(params[:id])
    @concert.destroy
    flash[:notice] = "Successfully destroyed concert."
    redirect_to concerts_url
  end
end
