class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
  end

  def new
    @user = User.new(user_params)
  end

  def edit
  end

  def show
    @user = User.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
