class LearningsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @learnings = Learning.all
    @comment = Comment.new
  end

  def new
    @learning = Learning.new
  end

  def create
    current_user.learnings.create(learning_params)
    redirect_to root_path
  end



  private

  def learning_params
    params.require(:learning).permit(:Topic, :Question)
  end


end
