class LearningsController < ApplicationController

  def index
    @learnings = Learning.all
  end

  def new
    @learning = Learning.new
  end

  def create
    Place.create(place_params)
    redirect_to root_path
  end

  



  private

  def place_params
    params.require(:learnings).permit(:Topic, :Question)
  end


end
