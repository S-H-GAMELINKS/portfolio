class CommentsController < ApplicationController

  before_action :set_recruitment

  def create
    @recruitment.comments.create! comments_params
    redirect_to @recruitment
  end

  def destroy
    @recruitment.comments.destroy params[:id]
    redirect_to @recruitment
  end

  private
  
  def set_recruitment
    @recruitment = Recruitment.find(params[:recruitment_id])
  end

  def comments_params
    params.required(:comment).permit(:user_id, :content)
  end

end
