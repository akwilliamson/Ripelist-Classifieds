class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_url
      session[:user_id] = @user.id
    else
      render 'new'
    end
  end

  def show
    @user = User.find_by_id(params[:id])
  end

private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :username)
  end

end

