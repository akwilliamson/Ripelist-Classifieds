class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

private
  def require_login
    unless current_user
      flash[:notice] = 'You must be logged in'
      redirect_to sessions_path
    end
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

  def authorize
    redirect_to sessions_path, alert: "Not authorized" if current_user.nil?
  end

end
