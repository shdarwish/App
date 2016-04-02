class SessionsController < ApplicationController
  skip_before_action :authenticate

  def new
  end

  def create
  	user = User.find_by(name: params[:name])
  	if user and user.authenticate(params[:password])
  		#session[:user_id] = user.id
      log_in user
      flash[:notice] = 'Logged in'
      if user.admin == true 
        redirect_to admin_url
      else
        redirect_to nutritionist_url
      end
  	else
  		#redirect_to login_url, alert: "Invalid user/password combination" 
      flash.now[:alert] = 'Invalid name/password'
      render 'new'
  	end
  end

  def destroy
    log_out
    flash[:notice] = 'Logged out'
    redirect_to login_url
  	#session[:user_id] = nil
  	#redirect_to login_url, notice: "Logged out"
  end
end
