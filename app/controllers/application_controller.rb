class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?
  
  def home
  end


  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) #memoization
  end

  def logged_in?
    !!current_user
  end
  end
