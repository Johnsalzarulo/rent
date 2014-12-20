class SessionsController < ApplicationController

 def create
    landlord = Landlord.find_by_email(params[:email])
    if landlord && landlord.authenticate(params[:password])
      session[:landlord_id] = landlord.id
      redirect_to dashboard_path
    else
      redirect_to '/login'
    end
  end

  def destroy
    session[:landlord_id] = nil
    redirect_to '/loggedout'
  end

end