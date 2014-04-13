class SessionsController < ApplicationController

  def index
  end

  def new
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root_url
    else
      flash[:notice] = 'Email or password is invalid'
      redirect_to sessions_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to listings_path
  end
end
