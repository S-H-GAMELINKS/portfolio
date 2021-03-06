class UsersController < ApplicationController
  before_action :set_params, only: [:show, :edit, :update]

  def show
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
    params.required(:user).permit(:name, :self_introduction)
  end

end
