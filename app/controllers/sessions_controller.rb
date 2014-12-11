class SessionsController < ApplicationController

 def create
    landlord = Landlord.find_by_email(params[:email])
    if landlord && landlord.authenticate(params[:password])
      session[:landlord_id] = landlord.id
      redirect_to '/landlords', notice: 'You are logged in.'
    else
      redirect_to '/login', notice: 'Something is not right, please check your email / password and try again'
    end
  end

  def destroy
    session[:landlord_id] = nil
    redirect_to '/', notice: 'You have been logged out'
  end

end