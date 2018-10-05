class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @learning = Learning.find(params[:learning_id])
    current_user.comments.create!(comment_params.merge(learning: @learning))
    redirect_to root_path
  end




private

  def comment_params
    params.require(:comment).permit(:message, :rating)
  end

end
