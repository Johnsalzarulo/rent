class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def current_landlord
    @current_landlord ||= Landlord.find(session[:landlord_id]) if session[:landlord_id]
  end
  helper_method :current_landlord

  def authorize
    redirect_to '/login' unless current_landlord
  end


end
