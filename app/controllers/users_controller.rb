class UsersController < ApplicationController

  before_action :set_params, only: [:show, :edit, :update]

  def show
    if @user.id == current_user.id
       @recruitments = current_user.recruitments
    end
  end

  def index
  end

  def edit
  end

  def update
    @user.update users_params
    redirect_to @user
  end

  private

  def set_params
    @user = User.find(params[:id])
  end

  def users_params
    params.required(:user).permit(:name, :self_introduction, :icon)
  end

end
