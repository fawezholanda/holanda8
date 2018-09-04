class LearningsController < ApplicationController

  def index
    @learnings = Learning.all
  end

  def new
    @learning = Learning.new
  end

  def create
    Learning.create(learning_params)
    redirect_to root_path
  end

  



  private

  def learning_params
    params.require(:learning).permit(:Topic, :Question)
  end


end
